;***************************************************************
;* TMS320C2000 C/C++ Codegen                   PC Version 3.07 *
;* Date/Time created: Mon Sep 26 09:18:27 2005                 *
;***************************************************************
FP	.set	XAR2
_cwd:	.usect	".ebss",20,1,0
_find:	.usect	".ebss",82,1,1
	.global	_stmp
_stmp:	.usect	".ebss",1024,1,0
	.global	_buffer
_buffer:	.usect	".ebss",32768,1,0
;	C:\ti\c2000\cgtools\bin\opt2000.exe -m -v28 -q -O1 C:\DOCUME~1\ANDREW~1\LOCALS~1\Temp\TI3980_2 C:\DOCUME~1\ANDREW~1\LOCALS~1\Temp\TI3980_5 -w C:/Dev/Amot/BearingWear/DSP/Debug 
;	C:\ti\c2000\cgtools\bin\ac2000.exe -@C:\DOCUME~1\ANDREW~1\LOCALS~1\Temp\TI3980_4 

	.sect	".text"
	.global	_f_nameconv

;***************************************************************
;* FNAME: _f_nameconv                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_f_nameconv:
        MOVL      XAR5,#_stmp           ; |55| 
L1:    
        MOV       AL,*XAR4++            ; |57| 
        CMPB      AL,#97                ; |57| 
        BF        L2,LT                 ; |57| 
        ; branch occurs ; |57| 
        CMPB      AL,#122               ; |57| 
        BF        L2,GT                 ; |57| 
        ; branch occurs ; |57| 
        ADDB      AL,#-32
L2:    
        CMPB      AL,#0                 ; |62| 
        MOV       *XAR5++,AL            ; |61| 
        BF        L1,NEQ                ; |62| 
        ; branch occurs ; |62| 
        MOVL      XAR4,#_stmp           ; |64| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_STRCMP

;***************************************************************
;* FNAME: _STRCMP                       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_STRCMP:
        MOV       AL,*+XAR4[0]          ; |84| 
        BF        L4,EQ                 ; |84| 
        ; branch occurs ; |84| 
L3:    
        MOV       AL,*+XAR5[0]          ; |86| 
        CMP       AL,*+XAR4[0]          ; |86| 
        BF        L5,NEQ                ; |86| 
        ; branch occurs ; |86| 
        ADDB      XAR4,#1               ; |88| 
        ADDB      XAR5,#1               ; |88| 
        MOV       AL,*+XAR4[0]          ; |88| 
        BF        L3,NEQ                ; |88| 
        ; branch occurs ; |88| 
L4:    
        MOV       AL,*+XAR5[0]          ; |90| 
        BF        L6,EQ                 ; |90| 
        ; branch occurs ; |90| 
L5:    
        MOVB      AL,#1                 ; |90| 
        BF        L7,UNC                ; |90| 
        ; branch occurs ; |90| 
L6:    
        MOVB      AL,#0
L7:    
        LRETR
        ; return occurs



	.sect	".text"
	.global	_f_formatting

;***************************************************************
;* FNAME: _f_formatting                 FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_f_formatting:
        ADDB      SP,#2
        MOVL      XAR4,#FSL1            ; |97| 
        LCR       #__f_dump             ; |97| 
        ; call occurs [#__f_dump] ; |97| 
        MOVB      XAR4,#0
        MOVB      ACC,#1
        LCR       #_fm_format           ; |100| 
        ; call occurs [#_fm_format] ; |100| 
        CMPB      AL,#0                 ; |100| 
        BF        L8,EQ                 ; |100| 
        ; branch occurs ; |100| 
        SETC      SXM
        MOV       ACC,AL                ; |101| 
        MOVL      *-SP[2],ACC           ; |101| 
        MOVB      ACC,#0
        BF        L10,UNC               ; |101| 
        ; branch occurs ; |101| 
L8:    
        LCR       #__f_poweron          ; |102| 
        ; call occurs [#__f_poweron] ; |102| 
        CMPB      AL,#0                 ; |102| 
        BF        L9,NEQ                ; |102| 
        ; branch occurs ; |102| 
        SETC      SXM
        MOV       ACC,AL                ; |103| 
        MOVL      *-SP[2],ACC           ; |103| 
        MOVB      ACC,#1
        BF        L10,UNC               ; |103| 
        ; branch occurs ; |103| 
L9:    
        MOVL      XAR5,#_find           ; |104| 
        MOVL      XAR4,#FSL2            ; |104| 
        LCR       #_fm_findfirst        ; |104| 
        ; call occurs [#_fm_findfirst] ; |104| 
        CMPB      AL,#5                 ; |104| 
        BF        L11,EQ                ; |104| 
        ; branch occurs ; |104| 
        SETC      SXM
        MOV       ACC,AL                ; |105| 
        MOVL      *-SP[2],ACC           ; |105| 
        MOVB      ACC,#2
L10:    
        LCR       #__f_result           ; |105| 
        ; call occurs [#__f_result] ; |105| 
        BF        L12,UNC               ; |105| 
        ; branch occurs ; |105| 
L11:    
        MOVL      XAR4,#FSL3            ; |107| 
        LCR       #__f_dump             ; |107| 
        ; call occurs [#__f_dump] ; |107| 
        MOVB      AL,#0
L12:    
        SUBB      SP,#2                 ; |108| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	__f_checkcwd

;***************************************************************
;* FNAME: __f_checkcwd                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

__f_checkcwd:
        MOVL      *SP++,XAR1
        MOVL      XAR1,XAR4             ; |111| 
        MOVB      AL,#20                ; |116| 
        MOVL      XAR4,#_cwd            ; |116| 
        LCR       #_fm_getcwd           ; |116| 
        ; call occurs [#_fm_getcwd] ; |116| 
        CMPB      AL,#0                 ; |116| 
        BF        L14,NEQ               ; |116| 
        ; branch occurs ; |116| 
        MOVL      XAR4,XAR1             ; |116| 
        MOVL      XAR5,#_cwd            ; |116| 
        LCR       #_STRCMP              ; |116| 
        ; call occurs [#_STRCMP] ; |116| 
        CMPB      AL,#0                 ; |116| 
        BF        L13,EQ                ; |116| 
        ; branch occurs ; |116| 
        MOV       AL,#-1                ; |116| 
        BF        L14,UNC               ; |116| 
        ; branch occurs ; |116| 
L13:    
        MOVB      AL,#0
L14:    
        MOVL      XAR1,*--SP            ; |116| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_f_dirtest

;***************************************************************
;* FNAME: _f_dirtest                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_f_dirtest:
        ADDB      SP,#2
        MOVL      XAR4,#FSL4            ; |132| 
        LCR       #__f_dump             ; |132| 
        ; call occurs [#__f_dump] ; |132| 
        MOVL      XAR4,#FSL5            ; |134| 
        LCR       #_fm_mkdir            ; |134| 
        ; call occurs [#_fm_mkdir] ; |134| 
        CMPB      AL,#0                 ; |134| 
        BF        L15,EQ                ; |134| 
        ; branch occurs ; |134| 
        SETC      SXM
        MOV       ACC,AL                ; |135| 
        MOVL      *-SP[2],ACC           ; |135| 
        MOVB      ACC,#1
        BF        L66,UNC               ; |135| 
        ; branch occurs ; |135| 
L15:    
        MOVL      XAR4,#FSL6            ; |136| 
        LCR       #_fm_mkdir            ; |136| 
        ; call occurs [#_fm_mkdir] ; |136| 
        CMPB      AL,#0                 ; |136| 
        BF        L16,EQ                ; |136| 
        ; branch occurs ; |136| 
        SETC      SXM
        MOV       ACC,AL                ; |137| 
        MOVL      *-SP[2],ACC           ; |137| 
        MOVB      ACC,#2
        BF        L66,UNC               ; |137| 
        ; branch occurs ; |137| 
L16:    
        MOVL      XAR4,#FSL7            ; |138| 
        LCR       #_fm_mkdir            ; |138| 
        ; call occurs [#_fm_mkdir] ; |138| 
        CMPB      AL,#0                 ; |138| 
        BF        L17,EQ                ; |138| 
        ; branch occurs ; |138| 
        SETC      SXM
        MOV       ACC,AL                ; |139| 
        MOVL      *-SP[2],ACC           ; |139| 
        MOVB      ACC,#3
        BF        L66,UNC               ; |139| 
        ; branch occurs ; |139| 
L17:    
        MOVL      XAR4,#FSL8            ; |140| 
        LCR       #_fm_mkdir            ; |140| 
        ; call occurs [#_fm_mkdir] ; |140| 
        CMPB      AL,#0                 ; |140| 
        BF        L18,EQ                ; |140| 
        ; branch occurs ; |140| 
        SETC      SXM
        MOV       ACC,AL                ; |141| 
        MOVL      *-SP[2],ACC           ; |141| 
        MOVB      ACC,#4
        BF        L66,UNC               ; |141| 
        ; branch occurs ; |141| 
L18:    
        MOVL      XAR4,#FSL9            ; |144| 
        LCR       #_fm_mkdir            ; |144| 
        ; call occurs [#_fm_mkdir] ; |144| 
        CMPB      AL,#0                 ; |144| 
        BF        L19,EQ                ; |144| 
        ; branch occurs ; |144| 
        SETC      SXM
        MOV       ACC,AL                ; |145| 
        MOVL      *-SP[2],ACC           ; |145| 
        MOVB      ACC,#5
        BF        L66,UNC               ; |145| 
        ; branch occurs ; |145| 
L19:    
        MOVL      XAR4,#FSL10           ; |146| 
        LCR       #_fm_mkdir            ; |146| 
        ; call occurs [#_fm_mkdir] ; |146| 
        CMPB      AL,#0                 ; |146| 
        BF        L20,EQ                ; |146| 
        ; branch occurs ; |146| 
        SETC      SXM
        MOV       ACC,AL                ; |147| 
        MOVL      *-SP[2],ACC           ; |147| 
        MOVB      ACC,#6
        BF        L66,UNC               ; |147| 
        ; branch occurs ; |147| 
L20:    
        MOVL      XAR4,#FSL11           ; |148| 
        LCR       #_fm_mkdir            ; |148| 
        ; call occurs [#_fm_mkdir] ; |148| 
        CMPB      AL,#0                 ; |148| 
        BF        L21,EQ                ; |148| 
        ; branch occurs ; |148| 
        SETC      SXM
        MOV       ACC,AL                ; |149| 
        MOVL      *-SP[2],ACC           ; |149| 
        MOVB      ACC,#7
        BF        L66,UNC               ; |149| 
        ; branch occurs ; |149| 
L21:    
        MOVL      XAR4,#FSL12           ; |150| 
        LCR       #_fm_mkdir            ; |150| 
        ; call occurs [#_fm_mkdir] ; |150| 
        CMPB      AL,#0                 ; |150| 
        BF        L22,EQ                ; |150| 
        ; branch occurs ; |150| 
        SETC      SXM
        MOV       ACC,AL                ; |151| 
        MOVL      *-SP[2],ACC           ; |151| 
        MOVB      ACC,#8
        BF        L66,UNC               ; |151| 
        ; branch occurs ; |151| 
L22:    
        MOVL      XAR4,#FSL12           ; |154| 
        LCR       #_fm_chdir            ; |154| 
        ; call occurs [#_fm_chdir] ; |154| 
        CMPB      AL,#0                 ; |154| 
        BF        L23,EQ                ; |154| 
        ; branch occurs ; |154| 
        SETC      SXM
        MOV       ACC,AL                ; |155| 
        MOVL      *-SP[2],ACC           ; |155| 
        MOVB      ACC,#9
        BF        L66,UNC               ; |155| 
        ; branch occurs ; |155| 
L23:    
        MOVL      XAR4,#FSL13           ; |156| 
        LCR       #_f_nameconv          ; |156| 
        ; call occurs [#_f_nameconv] ; |156| 
        LCR       #__f_checkcwd         ; |156| 
        ; call occurs [#__f_checkcwd] ; |156| 
        CMPB      AL,#0                 ; |156| 
        BF        L24,EQ                ; |156| 
        ; branch occurs ; |156| 
        SETC      SXM
        MOV       ACC,AL                ; |157| 
        MOVL      *-SP[2],ACC           ; |157| 
        MOVB      ACC,#10
        BF        L66,UNC               ; |157| 
        ; branch occurs ; |157| 
L24:    
        MOVL      XAR4,#FSL14           ; |160| 
        LCR       #_fm_mkdir            ; |160| 
        ; call occurs [#_fm_mkdir] ; |160| 
        CMPB      AL,#0                 ; |160| 
        BF        L25,EQ                ; |160| 
        ; branch occurs ; |160| 
        SETC      SXM
        MOV       ACC,AL                ; |161| 
        MOVL      *-SP[2],ACC           ; |161| 
        MOVB      ACC,#11
        BF        L66,UNC               ; |161| 
        ; branch occurs ; |161| 
L25:    
        MOVL      XAR4,#FSL14           ; |162| 
        LCR       #_fm_chdir            ; |162| 
        ; call occurs [#_fm_chdir] ; |162| 
        CMPB      AL,#0                 ; |162| 
        BF        L26,EQ                ; |162| 
        ; branch occurs ; |162| 
        SETC      SXM
        MOV       ACC,AL                ; |163| 
        MOVL      *-SP[2],ACC           ; |163| 
        MOVB      ACC,#12
        BF        L66,UNC               ; |163| 
        ; branch occurs ; |163| 
L26:    
        MOVL      XAR4,#FSL15           ; |164| 
        LCR       #_f_nameconv          ; |164| 
        ; call occurs [#_f_nameconv] ; |164| 
        LCR       #__f_checkcwd         ; |164| 
        ; call occurs [#__f_checkcwd] ; |164| 
        CMPB      AL,#0                 ; |164| 
        BF        L27,EQ                ; |164| 
        ; branch occurs ; |164| 
        SETC      SXM
        MOV       ACC,AL                ; |165| 
        MOVL      *-SP[2],ACC           ; |165| 
        MOVB      ACC,#13
        BF        L66,UNC               ; |165| 
        ; branch occurs ; |165| 
L27:    
        MOVL      XAR4,#FSL16           ; |166| 
        LCR       #_fm_chdir            ; |166| 
        ; call occurs [#_fm_chdir] ; |166| 
        CMPB      AL,#0                 ; |166| 
        BF        L28,EQ                ; |166| 
        ; branch occurs ; |166| 
        SETC      SXM
        MOV       ACC,AL                ; |167| 
        MOVL      *-SP[2],ACC           ; |167| 
        MOVB      ACC,#14
        BF        L66,UNC               ; |167| 
        ; branch occurs ; |167| 
L28:    
        MOVL      XAR4,#FSL15           ; |168| 
        LCR       #_f_nameconv          ; |168| 
        ; call occurs [#_f_nameconv] ; |168| 
        LCR       #__f_checkcwd         ; |168| 
        ; call occurs [#__f_checkcwd] ; |168| 
        CMPB      AL,#0                 ; |168| 
        BF        L29,EQ                ; |168| 
        ; branch occurs ; |168| 
        SETC      SXM
        MOV       ACC,AL                ; |169| 
        MOVL      *-SP[2],ACC           ; |169| 
        MOVB      ACC,#15
        BF        L66,UNC               ; |169| 
        ; branch occurs ; |169| 
L29:    
        MOVL      XAR4,#FSL17           ; |170| 
        LCR       #_fm_chdir            ; |170| 
        ; call occurs [#_fm_chdir] ; |170| 
        CMPB      AL,#0                 ; |170| 
        BF        L30,EQ                ; |170| 
        ; branch occurs ; |170| 
        SETC      SXM
        MOV       ACC,AL                ; |171| 
        MOVL      *-SP[2],ACC           ; |171| 
        MOVB      ACC,#16
        BF        L66,UNC               ; |171| 
        ; branch occurs ; |171| 
L30:    
        MOVL      XAR4,#FSL13           ; |172| 
        LCR       #_f_nameconv          ; |172| 
        ; call occurs [#_f_nameconv] ; |172| 
        LCR       #__f_checkcwd         ; |172| 
        ; call occurs [#__f_checkcwd] ; |172| 
        CMPB      AL,#0                 ; |172| 
        BF        L31,EQ                ; |172| 
        ; branch occurs ; |172| 
        SETC      SXM
        MOV       ACC,AL                ; |173| 
        MOVL      *-SP[2],ACC           ; |173| 
        MOVB      ACC,#17
        BF        L66,UNC               ; |173| 
        ; branch occurs ; |173| 
L31:    
        MOVL      XAR4,#FSL14           ; |176| 
        LCR       #_fm_rmdir            ; |176| 
        ; call occurs [#_fm_rmdir] ; |176| 
        CMPB      AL,#0                 ; |176| 
        BF        L32,EQ                ; |176| 
        ; branch occurs ; |176| 
        SETC      SXM
        MOV       ACC,AL                ; |177| 
        MOVL      *-SP[2],ACC           ; |177| 
        MOVB      ACC,#18
        BF        L66,UNC               ; |177| 
        ; branch occurs ; |177| 
L32:    
        MOVL      XAR4,#FSL14           ; |178| 
        LCR       #_fm_chdir            ; |178| 
        ; call occurs [#_fm_chdir] ; |178| 
        CMPB      AL,#5                 ; |178| 
        BF        L33,EQ                ; |178| 
        ; branch occurs ; |178| 
        SETC      SXM
        MOV       ACC,AL                ; |179| 
        MOVL      *-SP[2],ACC           ; |179| 
        MOVB      ACC,#19
        BF        L66,UNC               ; |179| 
        ; branch occurs ; |179| 
L33:    
        MOVL      XAR4,#FSL18           ; |182| 
        LCR       #_fm_rmdir            ; |182| 
        ; call occurs [#_fm_rmdir] ; |182| 
        CMPB      AL,#0                 ; |182| 
        BF        L34,EQ                ; |182| 
        ; branch occurs ; |182| 
        SETC      SXM
        MOV       ACC,AL                ; |183| 
        MOVL      *-SP[2],ACC           ; |183| 
        MOVB      ACC,#20
        BF        L66,UNC               ; |183| 
        ; branch occurs ; |183| 
L34:    
        MOVL      XAR4,#FSL18           ; |184| 
        LCR       #_fm_chdir            ; |184| 
        ; call occurs [#_fm_chdir] ; |184| 
        CMPB      AL,#5                 ; |184| 
        BF        L35,EQ                ; |184| 
        ; branch occurs ; |184| 
        SETC      SXM
        MOV       ACC,AL                ; |185| 
        MOVL      *-SP[2],ACC           ; |185| 
        MOVB      ACC,#21
        BF        L66,UNC               ; |185| 
        ; branch occurs ; |185| 
L35:    
        MOVL      XAR4,#FSL19           ; |188| 
        LCR       #_fm_rmdir            ; |188| 
        ; call occurs [#_fm_rmdir] ; |188| 
        CMPB      AL,#14                ; |188| 
        BF        L36,EQ                ; |188| 
        ; branch occurs ; |188| 
        SETC      SXM
        MOV       ACC,AL                ; |189| 
        MOVL      *-SP[2],ACC           ; |189| 
        MOVB      ACC,#22
        BF        L66,UNC               ; |189| 
        ; branch occurs ; |189| 
L36:    
        MOVL      XAR4,#FSL20           ; |192| 
        LCR       #_fm_rmdir            ; |192| 
        ; call occurs [#_fm_rmdir] ; |192| 
        CMPB      AL,#0                 ; |192| 
        BF        L37,EQ                ; |192| 
        ; branch occurs ; |192| 
        SETC      SXM
        MOV       ACC,AL                ; |193| 
        MOVL      *-SP[2],ACC           ; |193| 
        MOVB      ACC,#24
        BF        L66,UNC               ; |193| 
        ; branch occurs ; |193| 
L37:    
        MOVL      XAR4,#FSL21           ; |196| 
        LCR       #_fm_chdir            ; |196| 
        ; call occurs [#_fm_chdir] ; |196| 
        CMPB      AL,#4                 ; |196| 
        BF        L38,EQ                ; |196| 
        ; branch occurs ; |196| 
        SETC      SXM
        MOV       ACC,AL                ; |197| 
        MOVL      *-SP[2],ACC           ; |197| 
        MOVB      ACC,#25
        BF        L66,UNC               ; |197| 
        ; branch occurs ; |197| 
L38:    
        MOVL      XAR4,#FSL22           ; |198| 
        LCR       #_fm_chdir            ; |198| 
        ; call occurs [#_fm_chdir] ; |198| 
        CMPB      AL,#0                 ; |198| 
        BF        L39,EQ                ; |198| 
        ; branch occurs ; |198| 
        SETC      SXM
        MOV       ACC,AL                ; |199| 
        MOVL      *-SP[2],ACC           ; |199| 
        MOVB      ACC,#26
        BF        L66,UNC               ; |199| 
        ; branch occurs ; |199| 
L39:    
        MOVL      XAR4,#FSL13           ; |200| 
        LCR       #_f_nameconv          ; |200| 
        ; call occurs [#_f_nameconv] ; |200| 
        LCR       #__f_checkcwd         ; |200| 
        ; call occurs [#__f_checkcwd] ; |200| 
        CMPB      AL,#0                 ; |200| 
        BF        L40,EQ                ; |200| 
        ; branch occurs ; |200| 
        SETC      SXM
        MOV       ACC,AL                ; |201| 
        MOVL      *-SP[2],ACC           ; |201| 
        MOVB      ACC,#27
        BF        L66,UNC               ; |201| 
        ; branch occurs ; |201| 
L40:    
        MOVL      XAR4,#FSL23           ; |202| 
        LCR       #_fm_chdir            ; |202| 
        ; call occurs [#_fm_chdir] ; |202| 
        CMPB      AL,#4                 ; |202| 
        BF        L41,EQ                ; |202| 
        ; branch occurs ; |202| 
        SETC      SXM
        MOV       ACC,AL                ; |203| 
        MOVL      *-SP[2],ACC           ; |203| 
        MOVB      ACC,#28
        BF        L66,UNC               ; |203| 
        ; branch occurs ; |203| 
L41:    
        MOVL      XAR4,#FSL2            ; |204| 
        LCR       #_fm_chdir            ; |204| 
        ; call occurs [#_fm_chdir] ; |204| 
        CMPB      AL,#4                 ; |204| 
        BF        L42,EQ                ; |204| 
        ; branch occurs ; |204| 
        SETC      SXM
        MOV       ACC,AL                ; |205| 
        MOVL      *-SP[2],ACC           ; |205| 
        MOVB      ACC,#29
        BF        L66,UNC               ; |205| 
        ; branch occurs ; |205| 
L42:    
        MOVL      XAR4,#FSL13           ; |206| 
        LCR       #_f_nameconv          ; |206| 
        ; call occurs [#_f_nameconv] ; |206| 
        LCR       #__f_checkcwd         ; |206| 
        ; call occurs [#__f_checkcwd] ; |206| 
        CMPB      AL,#0                 ; |206| 
        BF        L43,EQ                ; |206| 
        ; branch occurs ; |206| 
        SETC      SXM
        MOV       ACC,AL                ; |207| 
        MOVL      *-SP[2],ACC           ; |207| 
        MOVB      ACC,#30
        BF        L66,UNC               ; |207| 
        ; branch occurs ; |207| 
L43:    
        MOVL      XAR4,#FSL24           ; |210| 
        LCR       #_fm_chdir            ; |210| 
        ; call occurs [#_fm_chdir] ; |210| 
        CMPB      AL,#0                 ; |210| 
        BF        L44,EQ                ; |210| 
        ; branch occurs ; |210| 
        SETC      SXM
        MOV       ACC,AL                ; |211| 
        MOVL      *-SP[2],ACC           ; |211| 
        MOVB      ACC,#31
        BF        L66,UNC               ; |211| 
        ; branch occurs ; |211| 
L44:    
        MOVL      XAR4,#FSL25           ; |212| 
        LCR       #_fm_rmdir            ; |212| 
        ; call occurs [#_fm_rmdir] ; |212| 
        CMPB      AL,#0                 ; |212| 
        BF        L45,EQ                ; |212| 
        ; branch occurs ; |212| 
        SETC      SXM
        MOV       ACC,AL                ; |213| 
        MOVL      *-SP[2],ACC           ; |213| 
        MOVB      ACC,#32
        BF        L66,UNC               ; |213| 
        ; branch occurs ; |213| 
L45:    
        MOVL      XAR4,#FSL26           ; |214| 
        LCR       #_fm_rmdir            ; |214| 
        ; call occurs [#_fm_rmdir] ; |214| 
        CMPB      AL,#0                 ; |214| 
        BF        L46,EQ                ; |214| 
        ; branch occurs ; |214| 
        SETC      SXM
        MOV       ACC,AL                ; |215| 
        MOVL      *-SP[2],ACC           ; |215| 
        MOVB      ACC,#33
        BF        L66,UNC               ; |215| 
        ; branch occurs ; |215| 
L46:    
        MOVL      XAR4,#FSL27           ; |216| 
        LCR       #_fm_rmdir            ; |216| 
        ; call occurs [#_fm_rmdir] ; |216| 
        CMPB      AL,#0                 ; |216| 
        BF        L47,EQ                ; |216| 
        ; branch occurs ; |216| 
        SETC      SXM
        MOV       ACC,AL                ; |217| 
        MOVL      *-SP[2],ACC           ; |217| 
        MOVB      ACC,#34
        BF        L66,UNC               ; |217| 
        ; branch occurs ; |217| 
L47:    
        MOVL      XAR4,#FSL28           ; |218| 
        LCR       #_fm_rmdir            ; |218| 
        ; call occurs [#_fm_rmdir] ; |218| 
        CMPB      AL,#0                 ; |218| 
        BF        L48,EQ                ; |218| 
        ; branch occurs ; |218| 
        SETC      SXM
        MOV       ACC,AL                ; |219| 
        MOVL      *-SP[2],ACC           ; |219| 
        MOVB      ACC,#35
        BF        L66,UNC               ; |219| 
        ; branch occurs ; |219| 
L48:    
        MOVL      XAR4,#FSL16           ; |222| 
        LCR       #_fm_rmdir            ; |222| 
        ; call occurs [#_fm_rmdir] ; |222| 
        CMPB      AL,#5                 ; |222| 
        BF        L49,EQ                ; |222| 
        ; branch occurs ; |222| 
        SETC      SXM
        MOV       ACC,AL                ; |223| 
        MOVL      *-SP[2],ACC           ; |223| 
        MOVB      ACC,#36
        BF        L66,UNC               ; |223| 
        ; branch occurs ; |223| 
L49:    
        MOVL      XAR4,#FSL29           ; |224| 
        LCR       #_fm_rmdir            ; |224| 
        ; call occurs [#_fm_rmdir] ; |224| 
        CMPB      AL,#5                 ; |224| 
        BF        L50,EQ                ; |224| 
        ; branch occurs ; |224| 
        SETC      SXM
        MOV       ACC,AL                ; |225| 
        MOVL      *-SP[2],ACC           ; |225| 
        MOVB      ACC,#37
        BF        L66,UNC               ; |225| 
        ; branch occurs ; |225| 
L50:    
        MOVL      XAR4,#FSL30           ; |228| 
        LCR       #_fm_mkdir            ; |228| 
        ; call occurs [#_fm_mkdir] ; |228| 
        CMPB      AL,#6                 ; |228| 
        BF        L51,EQ                ; |228| 
        ; branch occurs ; |228| 
        SETC      SXM
        MOV       ACC,AL                ; |229| 
        MOVL      *-SP[2],ACC           ; |229| 
        MOVB      ACC,#38
        BF        L66,UNC               ; |229| 
        ; branch occurs ; |229| 
L51:    
        MOVL      XAR4,#FSL31           ; |230| 
        LCR       #_fm_rmdir            ; |230| 
        ; call occurs [#_fm_rmdir] ; |230| 
        CMPB      AL,#0                 ; |230| 
        BF        L52,EQ                ; |230| 
        ; branch occurs ; |230| 
        SETC      SXM
        MOV       ACC,AL                ; |231| 
        MOVL      *-SP[2],ACC           ; |231| 
        MOVB      ACC,#39
        BF        L66,UNC               ; |231| 
        ; branch occurs ; |231| 
L52:    
        MOVL      XAR4,#FSL30           ; |232| 
        LCR       #_fm_mkdir            ; |232| 
        ; call occurs [#_fm_mkdir] ; |232| 
        CMPB      AL,#3                 ; |232| 
        BF        L53,EQ                ; |232| 
        ; branch occurs ; |232| 
        SETC      SXM
        MOV       ACC,AL                ; |233| 
        MOVL      *-SP[2],ACC           ; |233| 
        MOVB      ACC,#40
        BF        L66,UNC               ; |233| 
        ; branch occurs ; |233| 
L53:    
        MOVL      XAR4,#FSL32           ; |234| 
        LCR       #_fm_chdir            ; |234| 
        ; call occurs [#_fm_chdir] ; |234| 
        CMPB      AL,#0                 ; |234| 
        BF        L54,EQ                ; |234| 
        ; branch occurs ; |234| 
        SETC      SXM
        MOV       ACC,AL                ; |235| 
        MOVL      *-SP[2],ACC           ; |235| 
        MOVB      ACC,#41
        BF        L66,UNC               ; |235| 
        ; branch occurs ; |235| 
L54:    
        MOVL      XAR4,#FSL16           ; |238| 
        LCR       #_fm_chdir            ; |238| 
        ; call occurs [#_fm_chdir] ; |238| 
        CMPB      AL,#0                 ; |238| 
        BF        L55,EQ                ; |238| 
        ; branch occurs ; |238| 
        SETC      SXM
        MOV       ACC,AL                ; |239| 
        MOVL      *-SP[2],ACC           ; |239| 
        MOVB      ACC,#42
        BF        L66,UNC               ; |239| 
        ; branch occurs ; |239| 
L55:    
        MOVL      XAR4,#FSL33           ; |240| 
        LCR       #_fm_chdir            ; |240| 
        ; call occurs [#_fm_chdir] ; |240| 
        CMPB      AL,#0                 ; |240| 
        BF        L56,EQ                ; |240| 
        ; branch occurs ; |240| 
        SETC      SXM
        MOV       ACC,AL                ; |241| 
        MOVL      *-SP[2],ACC           ; |241| 
        MOVB      ACC,#43
        BF        L66,UNC               ; |241| 
        ; branch occurs ; |241| 
L56:    
        MOVL      XAR4,#FSL29           ; |242| 
        LCR       #_fm_chdir            ; |242| 
        ; call occurs [#_fm_chdir] ; |242| 
        CMPB      AL,#5                 ; |242| 
        BF        L57,EQ                ; |242| 
        ; branch occurs ; |242| 
        SETC      SXM
        MOV       ACC,AL                ; |243| 
        MOVL      *-SP[2],ACC           ; |243| 
        MOVB      ACC,#44
        BF        L66,UNC               ; |243| 
        ; branch occurs ; |243| 
L57:    
        MOVL      XAR4,#FSL32           ; |247| 
        LCR       #__f_checkcwd         ; |247| 
        ; call occurs [#__f_checkcwd] ; |247| 
        CMPB      AL,#0                 ; |247| 
        BF        L58,EQ                ; |247| 
        ; branch occurs ; |247| 
        SETC      SXM
        MOV       ACC,AL                ; |249| 
        MOVL      *-SP[2],ACC           ; |249| 
        MOVB      ACC,#45
        BF        L66,UNC               ; |249| 
        ; branch occurs ; |249| 
L58:    
        MOVL      XAR4,#FSL5            ; |252| 
        LCR       #_fm_chdir            ; |252| 
        ; call occurs [#_fm_chdir] ; |252| 
        CMPB      AL,#0                 ; |252| 
        BF        L59,EQ                ; |252| 
        ; branch occurs ; |252| 
        SETC      SXM
        MOV       ACC,AL                ; |253| 
        MOVL      *-SP[2],ACC           ; |253| 
        MOVB      ACC,#46
        BF        L66,UNC               ; |253| 
        ; branch occurs ; |253| 
L59:    
        MOVL      XAR4,#FSL29           ; |254| 
        LCR       #_fm_chdir            ; |254| 
        ; call occurs [#_fm_chdir] ; |254| 
        CMPB      AL,#0                 ; |254| 
        BF        L60,EQ                ; |254| 
        ; branch occurs ; |254| 
        SETC      SXM
        MOV       ACC,AL                ; |255| 
        MOVL      *-SP[2],ACC           ; |255| 
        MOVB      ACC,#47
        BF        L66,UNC               ; |255| 
        ; branch occurs ; |255| 
L60:    
        MOVL      XAR4,#FSL5            ; |256| 
        LCR       #_fm_chdir            ; |256| 
        ; call occurs [#_fm_chdir] ; |256| 
        CMPB      AL,#0                 ; |256| 
        BF        L61,EQ                ; |256| 
        ; branch occurs ; |256| 
        SETC      SXM
        MOV       ACC,AL                ; |257| 
        MOVL      *-SP[2],ACC           ; |257| 
        MOVB      ACC,#48
        BF        L66,UNC               ; |257| 
        ; branch occurs ; |257| 
L61:    
        MOVL      XAR4,#FSL16           ; |258| 
        LCR       #_fm_chdir            ; |258| 
        ; call occurs [#_fm_chdir] ; |258| 
        CMPB      AL,#0                 ; |258| 
        BF        L62,EQ                ; |258| 
        ; branch occurs ; |258| 
        SETC      SXM
        MOV       ACC,AL                ; |259| 
        MOVL      *-SP[2],ACC           ; |259| 
        MOVB      ACC,#49
        BF        L66,UNC               ; |259| 
        ; branch occurs ; |259| 
L62:    
        MOVL      XAR4,#FSL5            ; |260| 
        LCR       #_fm_chdir            ; |260| 
        ; call occurs [#_fm_chdir] ; |260| 
        CMPB      AL,#5                 ; |260| 
        BF        L63,EQ                ; |260| 
        ; branch occurs ; |260| 
        SETC      SXM
        MOV       ACC,AL                ; |261| 
        MOVL      *-SP[2],ACC           ; |261| 
        MOVB      ACC,#50
        BF        L66,UNC               ; |261| 
        ; branch occurs ; |261| 
L63:    
        MOVL      XAR4,#FSL34           ; |262| 
        LCR       #_fm_chdir            ; |262| 
        ; call occurs [#_fm_chdir] ; |262| 
        CMPB      AL,#0                 ; |262| 
        BF        L64,EQ                ; |262| 
        ; branch occurs ; |262| 
        SETC      SXM
        MOV       ACC,AL                ; |263| 
        MOVL      *-SP[2],ACC           ; |263| 
        MOVB      ACC,#51
        BF        L66,UNC               ; |263| 
        ; branch occurs ; |263| 
L64:    
        MOVL      XAR4,#FSL5            ; |264| 
        LCR       #_fm_rmdir            ; |264| 
        ; call occurs [#_fm_rmdir] ; |264| 
        CMPB      AL,#0                 ; |264| 
        BF        L65,EQ                ; |264| 
        ; branch occurs ; |264| 
        SETC      SXM
        MOV       ACC,AL                ; |265| 
        MOVL      *-SP[2],ACC           ; |265| 
        MOVB      ACC,#52
        BF        L66,UNC               ; |265| 
        ; branch occurs ; |265| 
L65:    
        MOVL      XAR5,#_find           ; |268| 
        MOVL      XAR4,#FSL2            ; |268| 
        LCR       #_fm_findfirst        ; |268| 
        ; call occurs [#_fm_findfirst] ; |268| 
        CMPB      AL,#5                 ; |268| 
        BF        L67,EQ                ; |268| 
        ; branch occurs ; |268| 
        SETC      SXM
        MOV       ACC,AL                ; |269| 
        MOVL      *-SP[2],ACC           ; |269| 
        MOVB      ACC,#53
L66:    
        LCR       #__f_result           ; |269| 
        ; call occurs [#__f_result] ; |269| 
        BF        L68,UNC               ; |269| 
        ; branch occurs ; |269| 
L67:    
        MOVL      XAR4,#FSL3            ; |271| 
        LCR       #__f_dump             ; |271| 
        ; call occurs [#__f_dump] ; |271| 
        MOVB      AL,#0
L68:    
        SUBB      SP,#2                 ; |272| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_f_findingtest

;***************************************************************
;* FNAME: _f_findingtest                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_f_findingtest:
        ADDB      SP,#2
        MOVL      XAR4,#FSL35           ; |278| 
        LCR       #__f_dump             ; |278| 
        ; call occurs [#__f_dump] ; |278| 
        MOVL      XAR5,#_find           ; |281| 
        MOVL      XAR4,#FSL2            ; |281| 
        LCR       #_fm_findfirst        ; |281| 
        ; call occurs [#_fm_findfirst] ; |281| 
        CMPB      AL,#5                 ; |281| 
        BF        L69,EQ                ; |281| 
        ; branch occurs ; |281| 
        SETC      SXM
        MOV       ACC,AL                ; |282| 
        MOVL      *-SP[2],ACC           ; |282| 
        MOVB      ACC,#0
        BF        L125,UNC              ; |282| 
        ; branch occurs ; |282| 
L69:    
        MOVL      XAR4,#FSL36           ; |285| 
        LCR       #_fm_mkdir            ; |285| 
        ; call occurs [#_fm_mkdir] ; |285| 
        CMPB      AL,#0                 ; |285| 
        BF        L70,EQ                ; |285| 
        ; branch occurs ; |285| 
        SETC      SXM
        MOV       ACC,AL                ; |286| 
        MOVL      *-SP[2],ACC           ; |286| 
        MOVB      ACC,#1
        BF        L125,UNC              ; |286| 
        ; branch occurs ; |286| 
L70:    
        MOVL      XAR5,#_find           ; |289| 
        MOVL      XAR4,#FSL2            ; |289| 
        LCR       #_fm_findfirst        ; |289| 
        ; call occurs [#_fm_findfirst] ; |289| 
        CMPB      AL,#0                 ; |289| 
        BF        L71,EQ                ; |289| 
        ; branch occurs ; |289| 
        SETC      SXM
        MOV       ACC,AL                ; |290| 
        MOVL      *-SP[2],ACC           ; |290| 
        MOVB      ACC,#2
        BF        L125,UNC              ; |290| 
        ; branch occurs ; |290| 
L71:    
        MOVL      XAR4,#FSL36           ; |295| 
        LCR       #_f_nameconv          ; |295| 
        ; call occurs [#_f_nameconv] ; |295| 
        MOVL      XAR5,XAR4             ; |295| 
        MOVL      XAR4,#_find           ; |295| 
        LCR       #_STRCMP              ; |295| 
        ; call occurs [#_STRCMP] ; |295| 
        CMPB      AL,#0                 ; |295| 
        BF        L72,EQ                ; |295| 
        ; branch occurs ; |295| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |295| 
        MOVB      ACC,#3
        BF        L125,UNC              ; |295| 
        ; branch occurs ; |295| 
L72:    
        MOVW      DP,#_find+31
        MOV       AL,@_find+31          ; |297| 
        CMPB      AL,#16                ; |297| 
        BF        L73,EQ                ; |297| 
        ; branch occurs ; |297| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |297| 
        MOVB      ACC,#4
        BF        L125,UNC              ; |297| 
        ; branch occurs ; |297| 
L73:    
        MOVL      XAR4,#_find           ; |298| 
        LCR       #_fm_findnext         ; |298| 
        ; call occurs [#_fm_findnext] ; |298| 
        CMPB      AL,#5                 ; |298| 
        BF        L74,EQ                ; |298| 
        ; branch occurs ; |298| 
        SETC      SXM
        MOV       ACC,AL                ; |299| 
        MOVL      *-SP[2],ACC           ; |299| 
        MOVB      ACC,#5
        BF        L125,UNC              ; |299| 
        ; branch occurs ; |299| 
L74:    
        MOVL      XAR5,#_find           ; |302| 
        MOVL      XAR4,#FSL37           ; |302| 
        LCR       #_fm_findfirst        ; |302| 
        ; call occurs [#_fm_findfirst] ; |302| 
        CMPB      AL,#5                 ; |302| 
        BF        L75,EQ                ; |302| 
        ; branch occurs ; |302| 
        SETC      SXM
        MOV       ACC,AL                ; |303| 
        MOVL      *-SP[2],ACC           ; |303| 
        MOVB      ACC,#6
        BF        L125,UNC              ; |303| 
        ; branch occurs ; |303| 
L75:    
        MOVL      XAR5,#_find           ; |304| 
        MOVL      XAR4,#FSL38           ; |304| 
        LCR       #_fm_findfirst        ; |304| 
        ; call occurs [#_fm_findfirst] ; |304| 
        CMPB      AL,#5                 ; |304| 
        BF        L76,EQ                ; |304| 
        ; branch occurs ; |304| 
        SETC      SXM
        MOV       ACC,AL                ; |305| 
        MOVL      *-SP[2],ACC           ; |305| 
        MOVB      ACC,#7
        BF        L125,UNC              ; |305| 
        ; branch occurs ; |305| 
L76:    
        MOVL      XAR5,#_find           ; |306| 
        MOVL      XAR4,#FSL39           ; |306| 
        LCR       #_fm_findfirst        ; |306| 
        ; call occurs [#_fm_findfirst] ; |306| 
        CMPB      AL,#3                 ; |306| 
        BF        L77,EQ                ; |306| 
        ; branch occurs ; |306| 
        SETC      SXM
        MOV       ACC,AL                ; |307| 
        MOVL      *-SP[2],ACC           ; |307| 
        MOVB      ACC,#8
        BF        L125,UNC              ; |307| 
        ; branch occurs ; |307| 
L77:    
        MOVL      XAR5,#_find           ; |308| 
        MOVL      XAR4,#FSL16           ; |308| 
        LCR       #_fm_findfirst        ; |308| 
        ; call occurs [#_fm_findfirst] ; |308| 
        CMPB      AL,#5                 ; |308| 
        BF        L78,EQ                ; |308| 
        ; branch occurs ; |308| 
        SETC      SXM
        MOV       ACC,AL                ; |309| 
        MOVL      *-SP[2],ACC           ; |309| 
        MOVB      ACC,#9
        BF        L125,UNC              ; |309| 
        ; branch occurs ; |309| 
L78:    
        MOVL      XAR5,#_find           ; |310| 
        MOVL      XAR4,#FSL29           ; |310| 
        LCR       #_fm_findfirst        ; |310| 
        ; call occurs [#_fm_findfirst] ; |310| 
        CMPB      AL,#5                 ; |310| 
        BF        L79,EQ                ; |310| 
        ; branch occurs ; |310| 
        SETC      SXM
        MOV       ACC,AL                ; |311| 
        MOVL      *-SP[2],ACC           ; |311| 
        MOVB      ACC,#10
        BF        L125,UNC              ; |311| 
        ; branch occurs ; |311| 
L79:    
        MOVL      XAR5,#_find           ; |312| 
        MOVL      XAR4,#FSL40           ; |312| 
        LCR       #_fm_findfirst        ; |312| 
        ; call occurs [#_fm_findfirst] ; |312| 
        CMPB      AL,#5                 ; |312| 
        BF        L80,EQ                ; |312| 
        ; branch occurs ; |312| 
        SETC      SXM
        MOV       ACC,AL                ; |313| 
        MOVL      *-SP[2],ACC           ; |313| 
        MOVB      ACC,#11
        BF        L125,UNC              ; |313| 
        ; branch occurs ; |313| 
L80:    
        MOVL      XAR5,#_find           ; |314| 
        MOVL      XAR4,#FSL41           ; |314| 
        LCR       #_fm_findfirst        ; |314| 
        ; call occurs [#_fm_findfirst] ; |314| 
        CMPB      AL,#5                 ; |314| 
        BF        L81,EQ                ; |314| 
        ; branch occurs ; |314| 
        SETC      SXM
        MOV       ACC,AL                ; |315| 
        MOVL      *-SP[2],ACC           ; |315| 
        MOVB      ACC,#12
        BF        L125,UNC              ; |315| 
        ; branch occurs ; |315| 
L81:    
        MOVL      XAR5,#_find           ; |316| 
        MOVL      XAR4,#FSL42           ; |316| 
        LCR       #_fm_findfirst        ; |316| 
        ; call occurs [#_fm_findfirst] ; |316| 
        CMPB      AL,#5                 ; |316| 
        BF        L82,EQ                ; |316| 
        ; branch occurs ; |316| 
        SETC      SXM
        MOV       ACC,AL                ; |317| 
        MOVL      *-SP[2],ACC           ; |317| 
        MOVB      ACC,#13
        BF        L125,UNC              ; |317| 
        ; branch occurs ; |317| 
L82:    
        MOVL      XAR5,#_find           ; |318| 
        MOVL      XAR4,#FSL43           ; |318| 
        LCR       #_fm_findfirst        ; |318| 
        ; call occurs [#_fm_findfirst] ; |318| 
        CMPB      AL,#5                 ; |318| 
        BF        L83,EQ                ; |318| 
        ; branch occurs ; |318| 
        SETC      SXM
        MOV       ACC,AL                ; |319| 
        MOVL      *-SP[2],ACC           ; |319| 
        MOVB      ACC,#14
        BF        L125,UNC              ; |319| 
        ; branch occurs ; |319| 
L83:    
        MOVL      XAR5,#_find           ; |323| 
        MOVL      XAR4,#FSL44           ; |323| 
        LCR       #_fm_findfirst        ; |323| 
        ; call occurs [#_fm_findfirst] ; |323| 
        CMPB      AL,#0                 ; |323| 
        BF        L84,EQ                ; |323| 
        ; branch occurs ; |323| 
        SETC      SXM
        MOV       ACC,AL                ; |324| 
        MOVL      *-SP[2],ACC           ; |324| 
        MOVB      ACC,#15
        BF        L125,UNC              ; |324| 
        ; branch occurs ; |324| 
L84:    
        MOVL      XAR5,#_find           ; |325| 
        MOVL      XAR4,#FSL45           ; |325| 
        LCR       #_fm_findfirst        ; |325| 
        ; call occurs [#_fm_findfirst] ; |325| 
        CMPB      AL,#0                 ; |325| 
        BF        L85,EQ                ; |325| 
        ; branch occurs ; |325| 
        SETC      SXM
        MOV       ACC,AL                ; |326| 
        MOVL      *-SP[2],ACC           ; |326| 
        MOVB      ACC,#16
        BF        L125,UNC              ; |326| 
        ; branch occurs ; |326| 
L85:    
        MOVL      XAR5,#_find           ; |327| 
        MOVL      XAR4,#FSL46           ; |327| 
        LCR       #_fm_findfirst        ; |327| 
        ; call occurs [#_fm_findfirst] ; |327| 
        CMPB      AL,#0                 ; |327| 
        BF        L86,EQ                ; |327| 
        ; branch occurs ; |327| 
        SETC      SXM
        MOV       ACC,AL                ; |328| 
        MOVL      *-SP[2],ACC           ; |328| 
        MOVB      ACC,#17
        BF        L125,UNC              ; |328| 
        ; branch occurs ; |328| 
L86:    
        MOVL      XAR5,#_find           ; |329| 
        MOVL      XAR4,#FSL47           ; |329| 
        LCR       #_fm_findfirst        ; |329| 
        ; call occurs [#_fm_findfirst] ; |329| 
        CMPB      AL,#0                 ; |329| 
        BF        L87,EQ                ; |329| 
        ; branch occurs ; |329| 
        SETC      SXM
        MOV       ACC,AL                ; |330| 
        MOVL      *-SP[2],ACC           ; |330| 
        MOVB      ACC,#18
        BF        L125,UNC              ; |330| 
        ; branch occurs ; |330| 
L87:    
        MOVL      XAR5,#_find           ; |331| 
        MOVL      XAR4,#FSL48           ; |331| 
        LCR       #_fm_findfirst        ; |331| 
        ; call occurs [#_fm_findfirst] ; |331| 
        CMPB      AL,#0                 ; |331| 
        BF        L88,EQ                ; |331| 
        ; branch occurs ; |331| 
        SETC      SXM
        MOV       ACC,AL                ; |332| 
        MOVL      *-SP[2],ACC           ; |332| 
        MOVB      ACC,#19
        BF        L125,UNC              ; |332| 
        ; branch occurs ; |332| 
L88:    
        MOVL      XAR5,#_find           ; |333| 
        MOVL      XAR4,#FSL49           ; |333| 
        LCR       #_fm_findfirst        ; |333| 
        ; call occurs [#_fm_findfirst] ; |333| 
        CMPB      AL,#0                 ; |333| 
        BF        L89,EQ                ; |333| 
        ; branch occurs ; |333| 
        SETC      SXM
        MOV       ACC,AL                ; |334| 
        MOVL      *-SP[2],ACC           ; |334| 
        MOVB      ACC,#20
        BF        L125,UNC              ; |334| 
        ; branch occurs ; |334| 
L89:    
        MOVL      XAR5,#_find           ; |335| 
        MOVL      XAR4,#FSL50           ; |335| 
        LCR       #_fm_findfirst        ; |335| 
        ; call occurs [#_fm_findfirst] ; |335| 
        CMPB      AL,#0                 ; |335| 
        BF        L90,EQ                ; |335| 
        ; branch occurs ; |335| 
        SETC      SXM
        MOV       ACC,AL                ; |336| 
        MOVL      *-SP[2],ACC           ; |336| 
        MOVB      ACC,#21
        BF        L125,UNC              ; |336| 
        ; branch occurs ; |336| 
L90:    
        MOVL      XAR5,#_find           ; |337| 
        MOVL      XAR4,#FSL51           ; |337| 
        LCR       #_fm_findfirst        ; |337| 
        ; call occurs [#_fm_findfirst] ; |337| 
        CMPB      AL,#0                 ; |337| 
        BF        L91,EQ                ; |337| 
        ; branch occurs ; |337| 
        SETC      SXM
        MOV       ACC,AL                ; |338| 
        MOVL      *-SP[2],ACC           ; |338| 
        MOVB      ACC,#22
        BF        L125,UNC              ; |338| 
        ; branch occurs ; |338| 
L91:    
        MOVL      XAR4,#FSL52           ; |341| 
        LCR       #_fm_chdir            ; |341| 
        ; call occurs [#_fm_chdir] ; |341| 
        CMPB      AL,#0                 ; |341| 
        BF        L92,EQ                ; |341| 
        ; branch occurs ; |341| 
        SETC      SXM
        MOV       ACC,AL                ; |342| 
        MOVL      *-SP[2],ACC           ; |342| 
        MOVB      ACC,#23
        BF        L125,UNC              ; |342| 
        ; branch occurs ; |342| 
L92:    
        MOVL      XAR5,#_find           ; |343| 
        MOVL      XAR4,#FSL2            ; |343| 
        LCR       #_fm_findfirst        ; |343| 
        ; call occurs [#_fm_findfirst] ; |343| 
        CMPB      AL,#0                 ; |343| 
        BF        L93,EQ                ; |343| 
        ; branch occurs ; |343| 
        SETC      SXM
        MOV       ACC,AL                ; |344| 
        MOVL      *-SP[2],ACC           ; |344| 
        MOVB      ACC,#24
        BF        L125,UNC              ; |344| 
        ; branch occurs ; |344| 
L93:    
        MOVL      XAR5,#_find           ; |345| 
        MOVL      XAR4,#FSL29           ; |345| 
        LCR       #_fm_findfirst        ; |345| 
        ; call occurs [#_fm_findfirst] ; |345| 
        CMPB      AL,#0                 ; |345| 
        BF        L94,EQ                ; |345| 
        ; branch occurs ; |345| 
        SETC      SXM
        MOV       ACC,AL                ; |346| 
        MOVL      *-SP[2],ACC           ; |346| 
        MOVB      ACC,#25
        BF        L125,UNC              ; |346| 
        ; branch occurs ; |346| 
L94:    
        MOVL      XAR5,#_find           ; |347| 
        MOVL      XAR4,#FSL53           ; |347| 
        LCR       #_fm_findfirst        ; |347| 
        ; call occurs [#_fm_findfirst] ; |347| 
        CMPB      AL,#0                 ; |347| 
        BF        L95,EQ                ; |347| 
        ; branch occurs ; |347| 
        SETC      SXM
        MOV       ACC,AL                ; |348| 
        MOVL      *-SP[2],ACC           ; |348| 
        MOVB      ACC,#26
        BF        L125,UNC              ; |348| 
        ; branch occurs ; |348| 
L95:    
        MOVL      XAR5,#_find           ; |349| 
        MOVL      XAR4,#FSL16           ; |349| 
        LCR       #_fm_findfirst        ; |349| 
        ; call occurs [#_fm_findfirst] ; |349| 
        CMPB      AL,#0                 ; |349| 
        BF        L96,EQ                ; |349| 
        ; branch occurs ; |349| 
        SETC      SXM
        MOV       ACC,AL                ; |350| 
        MOVL      *-SP[2],ACC           ; |350| 
        MOVB      ACC,#27
        BF        L125,UNC              ; |350| 
        ; branch occurs ; |350| 
L96:    
        MOVL      XAR5,#_find           ; |351| 
        MOVL      XAR4,#FSL54           ; |351| 
        LCR       #_fm_findfirst        ; |351| 
        ; call occurs [#_fm_findfirst] ; |351| 
        CMPB      AL,#5                 ; |351| 
        BF        L97,EQ                ; |351| 
        ; branch occurs ; |351| 
        SETC      SXM
        MOV       ACC,AL                ; |352| 
        MOVL      *-SP[2],ACC           ; |352| 
        MOVB      ACC,#28
        BF        L125,UNC              ; |352| 
        ; branch occurs ; |352| 
L97:    
        MOVL      XAR5,#_find           ; |353| 
        MOVL      XAR4,#FSL41           ; |353| 
        LCR       #_fm_findfirst        ; |353| 
        ; call occurs [#_fm_findfirst] ; |353| 
        CMPB      AL,#0                 ; |353| 
        BF        L100,NEQ              ; |353| 
        ; branch occurs ; |353| 
        MOVL      XAR5,#FSL16           ; |355| 
        MOVL      XAR4,#_find           ; |355| 
        LCR       #_STRCMP              ; |355| 
        ; call occurs [#_STRCMP] ; |355| 
        CMPB      AL,#0                 ; |355| 
        BF        L98,NEQ               ; |355| 
        ; branch occurs ; |355| 
        MOVL      XAR4,#_find           ; |357| 
        LCR       #_fm_findnext         ; |357| 
        ; call occurs [#_fm_findnext] ; |357| 
        CMPB      AL,#0                 ; |357| 
        BF        L100,NEQ              ; |357| 
        ; branch occurs ; |357| 
        MOVL      XAR5,#FSL29           ; |359| 
        MOVL      XAR4,#_find           ; |359| 
        LCR       #_STRCMP              ; |359| 
        ; call occurs [#_STRCMP] ; |359| 
        CMPB      AL,#0                 ; |359| 
        BF        L99,EQ                ; |359| 
        ; branch occurs ; |359| 
L98:    
        MOVB      ACC,#0
        BF        L101,UNC              ; |359| 
        ; branch occurs ; |359| 
L99:    
        MOVL      XAR4,#_find           ; |361| 
        LCR       #_fm_findnext         ; |361| 
        ; call occurs [#_fm_findnext] ; |361| 
        CMPB      AL,#5                 ; |361| 
        BF        L102,EQ               ; |361| 
        ; branch occurs ; |361| 
L100:    
        SETC      SXM
        MOV       ACC,AL                ; |362| 
L101:    
        MOVL      *-SP[2],ACC           ; |362| 
        MOVB      ACC,#29
        BF        L125,UNC              ; |362| 
        ; branch occurs ; |362| 
L102:    
        MOVL      XAR5,#_find           ; |365| 
        MOVL      XAR4,#FSL55           ; |365| 
        LCR       #_fm_findfirst        ; |365| 
        ; call occurs [#_fm_findfirst] ; |365| 
        CMPB      AL,#5                 ; |365| 
        BF        L103,EQ               ; |365| 
        ; branch occurs ; |365| 
        SETC      SXM
        MOV       ACC,AL                ; |366| 
        MOVL      *-SP[2],ACC           ; |366| 
        MOVB      ACC,#30
        BF        L125,UNC              ; |366| 
        ; branch occurs ; |366| 
L103:    
        MOVL      XAR4,#FSL56           ; |369| 
        LCR       #_fm_mkdir            ; |369| 
        ; call occurs [#_fm_mkdir] ; |369| 
        CMPB      AL,#0                 ; |369| 
        BF        L104,EQ               ; |369| 
        ; branch occurs ; |369| 
        SETC      SXM
        MOV       ACC,AL                ; |370| 
        MOVL      *-SP[2],ACC           ; |370| 
        MOVB      ACC,#31
        BF        L125,UNC              ; |370| 
        ; branch occurs ; |370| 
L104:    
        MOVL      XAR5,#_find           ; |371| 
        MOVL      XAR4,#FSL41           ; |371| 
        LCR       #_fm_findfirst        ; |371| 
        ; call occurs [#_fm_findfirst] ; |371| 
        CMPB      AL,#0                 ; |371| 
        BF        L107,NEQ              ; |371| 
        ; branch occurs ; |371| 
        MOVL      XAR5,#FSL16           ; |374| 
        MOVL      XAR4,#_find           ; |374| 
        LCR       #_STRCMP              ; |374| 
        ; call occurs [#_STRCMP] ; |374| 
        CMPB      AL,#0                 ; |374| 
        BF        L105,NEQ              ; |374| 
        ; branch occurs ; |374| 
        MOVL      XAR4,#_find           ; |375| 
        LCR       #_fm_findnext         ; |375| 
        ; call occurs [#_fm_findnext] ; |375| 
        CMPB      AL,#0                 ; |375| 
        BF        L107,NEQ              ; |375| 
        ; branch occurs ; |375| 
        MOVL      XAR5,#FSL29           ; |377| 
        MOVL      XAR4,#_find           ; |377| 
        LCR       #_STRCMP              ; |377| 
        ; call occurs [#_STRCMP] ; |377| 
        CMPB      AL,#0                 ; |377| 
        BF        L106,EQ               ; |377| 
        ; branch occurs ; |377| 
L105:    
        MOVB      ACC,#0
        BF        L108,UNC              ; |377| 
        ; branch occurs ; |377| 
L106:    
        MOVL      XAR4,#_find           ; |379| 
        LCR       #_fm_findnext         ; |379| 
        ; call occurs [#_fm_findnext] ; |379| 
        CMPB      AL,#0                 ; |379| 
        BF        L109,EQ               ; |379| 
        ; branch occurs ; |379| 
L107:    
        SETC      SXM
        MOV       ACC,AL                ; |380| 
L108:    
        MOVL      *-SP[2],ACC           ; |380| 
        MOVB      ACC,#32
        BF        L125,UNC              ; |380| 
        ; branch occurs ; |380| 
L109:    
        MOVL      XAR4,#FSL56           ; |384| 
        LCR       #_f_nameconv          ; |384| 
        ; call occurs [#_f_nameconv] ; |384| 
        MOVL      XAR5,XAR4             ; |384| 
        MOVL      XAR4,#_find           ; |384| 
        LCR       #_STRCMP              ; |384| 
        ; call occurs [#_STRCMP] ; |384| 
        CMPB      AL,#0                 ; |384| 
        BF        L110,EQ               ; |384| 
        ; branch occurs ; |384| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |384| 
        MOVB      ACC,#33
        BF        L125,UNC              ; |384| 
        ; branch occurs ; |384| 
L110:    
        MOVL      XAR5,#_find           ; |386| 
        MOVL      XAR4,#FSL2            ; |386| 
        LCR       #_fm_findfirst        ; |386| 
        ; call occurs [#_fm_findfirst] ; |386| 
        CMPB      AL,#0                 ; |386| 
        BF        L111,EQ               ; |386| 
        ; branch occurs ; |386| 
        SETC      SXM
        MOV       ACC,AL                ; |387| 
        MOVL      *-SP[2],ACC           ; |387| 
        MOVB      ACC,#34
        BF        L125,UNC              ; |387| 
        ; branch occurs ; |387| 
L111:    
        MOVL      XAR5,#FSL16           ; |388| 
        MOVL      XAR4,#_find           ; |388| 
        LCR       #_STRCMP              ; |388| 
        ; call occurs [#_STRCMP] ; |388| 
        CMPB      AL,#0                 ; |388| 
        BF        L114,NEQ              ; |388| 
        ; branch occurs ; |388| 
        MOVL      XAR4,#_find           ; |389| 
        LCR       #_fm_findnext         ; |389| 
        ; call occurs [#_fm_findnext] ; |389| 
        CMPB      AL,#0                 ; |389| 
        BF        L113,EQ               ; |389| 
        ; branch occurs ; |389| 
        SETC      SXM
        MOV       ACC,AL                ; |390| 
L112:    
        MOVL      *-SP[2],ACC           ; |390| 
        MOVB      ACC,#35
        BF        L125,UNC              ; |390| 
        ; branch occurs ; |390| 
L113:    
        MOVL      XAR5,#FSL29           ; |391| 
        MOVL      XAR4,#_find           ; |391| 
        LCR       #_STRCMP              ; |391| 
        ; call occurs [#_STRCMP] ; |391| 
        CMPB      AL,#0                 ; |391| 
        BF        L115,EQ               ; |391| 
        ; branch occurs ; |391| 
L114:    
        MOVB      ACC,#0
        BF        L112,UNC              ; |391| 
        ; branch occurs ; |391| 
L115:    
        MOVL      XAR4,#_find           ; |392| 
        LCR       #_fm_findnext         ; |392| 
        ; call occurs [#_fm_findnext] ; |392| 
        CMPB      AL,#0                 ; |392| 
        BF        L116,EQ               ; |392| 
        ; branch occurs ; |392| 
        SETC      SXM
        MOV       ACC,AL                ; |393| 
        MOVL      *-SP[2],ACC           ; |393| 
        MOVB      ACC,#36
        BF        L125,UNC              ; |393| 
        ; branch occurs ; |393| 
L116:    
        MOVL      XAR4,#FSL56           ; |397| 
        LCR       #_f_nameconv          ; |397| 
        ; call occurs [#_f_nameconv] ; |397| 
        MOVL      XAR5,XAR4             ; |397| 
        MOVL      XAR4,#_find           ; |397| 
        LCR       #_STRCMP              ; |397| 
        ; call occurs [#_STRCMP] ; |397| 
        CMPB      AL,#0                 ; |397| 
        BF        L117,EQ               ; |397| 
        ; branch occurs ; |397| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |397| 
        MOVB      ACC,#37
        BF        L125,UNC              ; |397| 
        ; branch occurs ; |397| 
L117:    
        MOVL      XAR4,#_find           ; |399| 
        LCR       #_fm_findnext         ; |399| 
        ; call occurs [#_fm_findnext] ; |399| 
        CMPB      AL,#5                 ; |399| 
        BF        L118,EQ               ; |399| 
        ; branch occurs ; |399| 
        SETC      SXM
        MOV       ACC,AL                ; |400| 
        MOVL      *-SP[2],ACC           ; |400| 
        MOVB      ACC,#38
        BF        L125,UNC              ; |400| 
        ; branch occurs ; |400| 
L118:    
        MOVL      XAR5,#_find           ; |403| 
        MOVL      XAR4,#FSL57           ; |403| 
        LCR       #_fm_findfirst        ; |403| 
        ; call occurs [#_fm_findfirst] ; |403| 
        CMPB      AL,#0                 ; |403| 
        BF        L119,EQ               ; |403| 
        ; branch occurs ; |403| 
        SETC      SXM
        MOV       ACC,AL                ; |404| 
        MOVL      *-SP[2],ACC           ; |404| 
        MOVB      ACC,#39
        BF        L125,UNC              ; |404| 
        ; branch occurs ; |404| 
L119:    
        MOVL      XAR4,#FSL56           ; |408| 
        LCR       #_f_nameconv          ; |408| 
        ; call occurs [#_f_nameconv] ; |408| 
        MOVL      XAR5,XAR4             ; |408| 
        MOVL      XAR4,#_find           ; |408| 
        LCR       #_STRCMP              ; |408| 
        ; call occurs [#_STRCMP] ; |408| 
        CMPB      AL,#0                 ; |408| 
        BF        L120,EQ               ; |408| 
        ; branch occurs ; |408| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |408| 
        MOVB      ACC,#40
        BF        L125,UNC              ; |408| 
        ; branch occurs ; |408| 
L120:    
        MOVL      XAR4,#_find           ; |410| 
        LCR       #_fm_findnext         ; |410| 
        ; call occurs [#_fm_findnext] ; |410| 
        CMPB      AL,#5                 ; |410| 
        BF        L121,EQ               ; |410| 
        ; branch occurs ; |410| 
        SETC      SXM
        MOV       ACC,AL                ; |411| 
        MOVL      *-SP[2],ACC           ; |411| 
        MOVB      ACC,#41
        BF        L125,UNC              ; |411| 
        ; branch occurs ; |411| 
L121:    
        MOVL      XAR4,#FSL58           ; |415| 
        LCR       #_fm_chdir            ; |415| 
        ; call occurs [#_fm_chdir] ; |415| 
        CMPB      AL,#0                 ; |415| 
        BF        L122,EQ               ; |415| 
        ; branch occurs ; |415| 
        SETC      SXM
        MOV       ACC,AL                ; |416| 
        MOVL      *-SP[2],ACC           ; |416| 
        MOVB      ACC,#42
        BF        L125,UNC              ; |416| 
        ; branch occurs ; |416| 
L122:    
        MOVL      XAR4,#FSL59           ; |417| 
        LCR       #_fm_rmdir            ; |417| 
        ; call occurs [#_fm_rmdir] ; |417| 
        CMPB      AL,#0                 ; |417| 
        BF        L123,EQ               ; |417| 
        ; branch occurs ; |417| 
        SETC      SXM
        MOV       ACC,AL                ; |418| 
        MOVL      *-SP[2],ACC           ; |418| 
        MOVB      ACC,#43
        BF        L125,UNC              ; |418| 
        ; branch occurs ; |418| 
L123:    
        MOVL      XAR4,#FSL36           ; |419| 
        LCR       #_fm_rmdir            ; |419| 
        ; call occurs [#_fm_rmdir] ; |419| 
        CMPB      AL,#0                 ; |419| 
        BF        L124,EQ               ; |419| 
        ; branch occurs ; |419| 
        SETC      SXM
        MOV       ACC,AL                ; |420| 
        MOVL      *-SP[2],ACC           ; |420| 
        MOVB      ACC,#44
        BF        L125,UNC              ; |420| 
        ; branch occurs ; |420| 
L124:    
        MOVL      XAR5,#_find           ; |423| 
        MOVL      XAR4,#FSL2            ; |423| 
        LCR       #_fm_findfirst        ; |423| 
        ; call occurs [#_fm_findfirst] ; |423| 
        CMPB      AL,#5                 ; |423| 
        BF        L126,EQ               ; |423| 
        ; branch occurs ; |423| 
        SETC      SXM
        MOV       ACC,AL                ; |424| 
        MOVL      *-SP[2],ACC           ; |424| 
        MOVB      ACC,#45
L125:    
        LCR       #__f_result           ; |424| 
        ; call occurs [#__f_result] ; |424| 
        BF        L127,UNC              ; |424| 
        ; branch occurs ; |424| 
L126:    
        MOVL      XAR4,#FSL3            ; |426| 
        LCR       #__f_dump             ; |426| 
        ; call occurs [#__f_dump] ; |426| 
        MOVB      AL,#0
L127:    
        SUBB      SP,#2                 ; |427| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_f_powerfail

;***************************************************************
;* FNAME: _f_powerfail                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_f_powerfail:
        ADDB      SP,#2
        MOVL      XAR4,#FSL60           ; |433| 
        LCR       #__f_dump             ; |433| 
        ; call occurs [#__f_dump] ; |433| 
        MOVL      XAR4,#FSL56           ; |436| 
        LCR       #_fm_mkdir            ; |436| 
        ; call occurs [#_fm_mkdir] ; |436| 
        CMPB      AL,#0                 ; |436| 
        BF        L128,EQ               ; |436| 
        ; branch occurs ; |436| 
        SETC      SXM
        MOV       ACC,AL                ; |437| 
        MOVL      *-SP[2],ACC           ; |437| 
        MOVB      ACC,#0
        BF        L163,UNC              ; |437| 
        ; branch occurs ; |437| 
L128:    
        LCR       #__f_poweroff         ; |438| 
        ; call occurs [#__f_poweroff] ; |438| 
        CMPB      AL,#0                 ; |438| 
        BF        L129,EQ               ; |438| 
        ; branch occurs ; |438| 
        SETC      SXM
        MOV       ACC,AL                ; |439| 
        MOVL      *-SP[2],ACC           ; |439| 
        MOVB      ACC,#30
        BF        L163,UNC              ; |439| 
        ; branch occurs ; |439| 
L129:    
        LCR       #__f_poweron          ; |440| 
        ; call occurs [#__f_poweron] ; |440| 
        CMPB      AL,#0                 ; |440| 
        BF        L130,EQ               ; |440| 
        ; branch occurs ; |440| 
        SETC      SXM
        MOV       ACC,AL                ; |441| 
        MOVL      *-SP[2],ACC           ; |441| 
        MOVB      ACC,#1
        BF        L163,UNC              ; |441| 
        ; branch occurs ; |441| 
L130:    
        MOVL      XAR5,#_find           ; |442| 
        MOVL      XAR4,#FSL56           ; |442| 
        LCR       #_fm_findfirst        ; |442| 
        ; call occurs [#_fm_findfirst] ; |442| 
        CMPB      AL,#0                 ; |442| 
        BF        L131,EQ               ; |442| 
        ; branch occurs ; |442| 
        SETC      SXM
        MOV       ACC,AL                ; |443| 
        MOVL      *-SP[2],ACC           ; |443| 
        MOVB      ACC,#2
        BF        L163,UNC              ; |443| 
        ; branch occurs ; |443| 
L131:    
        MOVB      ACC,#1
        MOVB      XAR4,#0
        LCR       #_fm_format           ; |446| 
        ; call occurs [#_fm_format] ; |446| 
        CMPB      AL,#0                 ; |446| 
        BF        L132,EQ               ; |446| 
        ; branch occurs ; |446| 
        SETC      SXM
        MOV       ACC,AL                ; |447| 
        MOVL      *-SP[2],ACC           ; |447| 
        MOVB      ACC,#3
        BF        L163,UNC              ; |447| 
        ; branch occurs ; |447| 
L132:    
        LCR       #__f_poweroff         ; |448| 
        ; call occurs [#__f_poweroff] ; |448| 
        CMPB      AL,#0                 ; |448| 
        BF        L133,EQ               ; |448| 
        ; branch occurs ; |448| 
        SETC      SXM
        MOV       ACC,AL                ; |449| 
        MOVL      *-SP[2],ACC           ; |449| 
        MOVB      ACC,#31
        BF        L163,UNC              ; |449| 
        ; branch occurs ; |449| 
L133:    
        LCR       #__f_poweron          ; |450| 
        ; call occurs [#__f_poweron] ; |450| 
        CMPB      AL,#0                 ; |450| 
        BF        L134,EQ               ; |450| 
        ; branch occurs ; |450| 
        SETC      SXM
        MOV       ACC,AL                ; |451| 
        MOVL      *-SP[2],ACC           ; |451| 
        MOVB      ACC,#4
        BF        L163,UNC              ; |451| 
        ; branch occurs ; |451| 
L134:    
        MOVL      XAR5,#_find           ; |452| 
        MOVL      XAR4,#FSL2            ; |452| 
        LCR       #_fm_findfirst        ; |452| 
        ; call occurs [#_fm_findfirst] ; |452| 
        CMPB      AL,#5                 ; |452| 
        BF        L135,EQ               ; |452| 
        ; branch occurs ; |452| 
        SETC      SXM
        MOV       ACC,AL                ; |453| 
        MOVL      *-SP[2],ACC           ; |453| 
        MOVB      ACC,#5
        BF        L163,UNC              ; |453| 
        ; branch occurs ; |453| 
L135:    
        MOVB      ACC,#1
        MOVB      XAR4,#0
        LCR       #_fm_format           ; |456| 
        ; call occurs [#_fm_format] ; |456| 
        CMPB      AL,#0                 ; |456| 
        BF        L136,EQ               ; |456| 
        ; branch occurs ; |456| 
        SETC      SXM
        MOV       ACC,AL                ; |457| 
        MOVL      *-SP[2],ACC           ; |457| 
        MOVB      ACC,#6
        BF        L163,UNC              ; |457| 
        ; branch occurs ; |457| 
L136:    
        MOVL      XAR4,#FSL56           ; |458| 
        LCR       #_fm_mkdir            ; |458| 
        ; call occurs [#_fm_mkdir] ; |458| 
        CMPB      AL,#0                 ; |458| 
        BF        L137,EQ               ; |458| 
        ; branch occurs ; |458| 
        SETC      SXM
        MOV       ACC,AL                ; |459| 
        MOVL      *-SP[2],ACC           ; |459| 
        MOVB      ACC,#7
        BF        L163,UNC              ; |459| 
        ; branch occurs ; |459| 
L137:    
        MOVL      XAR5,#_find           ; |460| 
        MOVL      XAR4,#FSL56           ; |460| 
        LCR       #_fm_findfirst        ; |460| 
        ; call occurs [#_fm_findfirst] ; |460| 
        CMPB      AL,#0                 ; |460| 
        BF        L138,EQ               ; |460| 
        ; branch occurs ; |460| 
        SETC      SXM
        MOV       ACC,AL                ; |461| 
        MOVL      *-SP[2],ACC           ; |461| 
        MOVB      ACC,#8
        BF        L163,UNC              ; |461| 
        ; branch occurs ; |461| 
L138:    
        MOVL      XAR4,#FSL56           ; |465| 
        LCR       #_f_nameconv          ; |465| 
        ; call occurs [#_f_nameconv] ; |465| 
        MOVL      XAR5,XAR4             ; |465| 
        MOVL      XAR4,#_find           ; |465| 
        LCR       #_STRCMP              ; |465| 
        ; call occurs [#_STRCMP] ; |465| 
        CMPB      AL,#0                 ; |465| 
        BF        L139,EQ               ; |465| 
        ; branch occurs ; |465| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |465| 
        MOVB      ACC,#9
        BF        L163,UNC              ; |465| 
        ; branch occurs ; |465| 
L139:    
        LCR       #__f_poweroff         ; |468| 
        ; call occurs [#__f_poweroff] ; |468| 
        CMPB      AL,#0                 ; |468| 
        BF        L140,EQ               ; |468| 
        ; branch occurs ; |468| 
        SETC      SXM
        MOV       ACC,AL                ; |469| 
        MOVL      *-SP[2],ACC           ; |469| 
        MOVB      ACC,#32
        BF        L163,UNC              ; |469| 
        ; branch occurs ; |469| 
L140:    
        LCR       #__f_poweron          ; |470| 
        ; call occurs [#__f_poweron] ; |470| 
        CMPB      AL,#0                 ; |470| 
        BF        L141,EQ               ; |470| 
        ; branch occurs ; |470| 
        SETC      SXM
        MOV       ACC,AL                ; |471| 
        MOVL      *-SP[2],ACC           ; |471| 
        MOVB      ACC,#10
        BF        L163,UNC              ; |471| 
        ; branch occurs ; |471| 
L141:    
        MOVL      XAR5,#_find           ; |472| 
        MOVL      XAR4,#FSL2            ; |472| 
        LCR       #_fm_findfirst        ; |472| 
        ; call occurs [#_fm_findfirst] ; |472| 
        CMPB      AL,#0                 ; |472| 
        BF        L142,EQ               ; |472| 
        ; branch occurs ; |472| 
        SETC      SXM
        MOV       ACC,AL                ; |473| 
        MOVL      *-SP[2],ACC           ; |473| 
        MOVB      ACC,#11
        BF        L163,UNC              ; |473| 
        ; branch occurs ; |473| 
L142:    
        MOVL      XAR4,#FSL56           ; |477| 
        LCR       #_f_nameconv          ; |477| 
        ; call occurs [#_f_nameconv] ; |477| 
        MOVL      XAR5,XAR4             ; |477| 
        MOVL      XAR4,#_find           ; |477| 
        LCR       #_STRCMP              ; |477| 
        ; call occurs [#_STRCMP] ; |477| 
        CMPB      AL,#0                 ; |477| 
        BF        L143,EQ               ; |477| 
        ; branch occurs ; |477| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |477| 
        MOVB      ACC,#12
        BF        L163,UNC              ; |477| 
        ; branch occurs ; |477| 
L143:    
        MOVB      ACC,#1
        MOVB      XAR4,#0
        LCR       #_fm_format           ; |481| 
        ; call occurs [#_fm_format] ; |481| 
        CMPB      AL,#0                 ; |481| 
        BF        L144,EQ               ; |481| 
        ; branch occurs ; |481| 
        SETC      SXM
        MOV       ACC,AL                ; |482| 
        MOVL      *-SP[2],ACC           ; |482| 
        MOVB      ACC,#13
        BF        L163,UNC              ; |482| 
        ; branch occurs ; |482| 
L144:    
        MOVL      XAR4,#FSL56           ; |483| 
        LCR       #_fm_mkdir            ; |483| 
        ; call occurs [#_fm_mkdir] ; |483| 
        CMPB      AL,#0                 ; |483| 
        BF        L145,EQ               ; |483| 
        ; branch occurs ; |483| 
        SETC      SXM
        MOV       ACC,AL                ; |484| 
        MOVL      *-SP[2],ACC           ; |484| 
        MOVB      ACC,#14
        BF        L163,UNC              ; |484| 
        ; branch occurs ; |484| 
L145:    
        MOVL      XAR5,#_find           ; |485| 
        MOVL      XAR4,#FSL56           ; |485| 
        LCR       #_fm_findfirst        ; |485| 
        ; call occurs [#_fm_findfirst] ; |485| 
        CMPB      AL,#0                 ; |485| 
        BF        L146,EQ               ; |485| 
        ; branch occurs ; |485| 
        SETC      SXM
        MOV       ACC,AL                ; |486| 
        MOVL      *-SP[2],ACC           ; |486| 
        MOVB      ACC,#15
        BF        L163,UNC              ; |486| 
        ; branch occurs ; |486| 
L146:    
        MOVL      XAR4,#FSL56           ; |490| 
        LCR       #_f_nameconv          ; |490| 
        ; call occurs [#_f_nameconv] ; |490| 
        MOVL      XAR5,XAR4             ; |490| 
        MOVL      XAR4,#_find           ; |490| 
        LCR       #_STRCMP              ; |490| 
        ; call occurs [#_STRCMP] ; |490| 
        CMPB      AL,#0                 ; |490| 
        BF        L147,EQ               ; |490| 
        ; branch occurs ; |490| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |490| 
        MOVB      ACC,#16
        BF        L163,UNC              ; |490| 
        ; branch occurs ; |490| 
L147:    
        MOVL      XAR4,#FSL61           ; |492| 
        LCR       #_fm_mkdir            ; |492| 
        ; call occurs [#_fm_mkdir] ; |492| 
        CMPB      AL,#0                 ; |492| 
        BF        L148,EQ               ; |492| 
        ; branch occurs ; |492| 
        SETC      SXM
        MOV       ACC,AL                ; |493| 
        MOVL      *-SP[2],ACC           ; |493| 
        MOVB      ACC,#17
        BF        L163,UNC              ; |493| 
        ; branch occurs ; |493| 
L148:    
        MOVL      XAR5,#_find           ; |494| 
        MOVL      XAR4,#FSL61           ; |494| 
        LCR       #_fm_findfirst        ; |494| 
        ; call occurs [#_fm_findfirst] ; |494| 
        CMPB      AL,#0                 ; |494| 
        BF        L149,EQ               ; |494| 
        ; branch occurs ; |494| 
        SETC      SXM
        MOV       ACC,AL                ; |495| 
        MOVL      *-SP[2],ACC           ; |495| 
        MOVB      ACC,#18
        BF        L163,UNC              ; |495| 
        ; branch occurs ; |495| 
L149:    
        MOVL      XAR4,#FSL61           ; |499| 
        LCR       #_f_nameconv          ; |499| 
        ; call occurs [#_f_nameconv] ; |499| 
        MOVL      XAR5,XAR4             ; |499| 
        MOVL      XAR4,#_find           ; |499| 
        LCR       #_STRCMP              ; |499| 
        ; call occurs [#_STRCMP] ; |499| 
        CMPB      AL,#0                 ; |499| 
        BF        L150,EQ               ; |499| 
        ; branch occurs ; |499| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |499| 
        MOVB      ACC,#19
        BF        L163,UNC              ; |499| 
        ; branch occurs ; |499| 
L150:    
        LCR       #__f_poweroff         ; |502| 
        ; call occurs [#__f_poweroff] ; |502| 
        CMPB      AL,#0                 ; |502| 
        BF        L151,EQ               ; |502| 
        ; branch occurs ; |502| 
        SETC      SXM
        MOV       ACC,AL                ; |503| 
        MOVL      *-SP[2],ACC           ; |503| 
        MOVB      ACC,#33
        BF        L163,UNC              ; |503| 
        ; branch occurs ; |503| 
L151:    
        LCR       #__f_poweron          ; |504| 
        ; call occurs [#__f_poweron] ; |504| 
        CMPB      AL,#0                 ; |504| 
        BF        L152,EQ               ; |504| 
        ; branch occurs ; |504| 
        SETC      SXM
        MOV       ACC,AL                ; |505| 
        MOVL      *-SP[2],ACC           ; |505| 
        MOVB      ACC,#20
        BF        L163,UNC              ; |505| 
        ; branch occurs ; |505| 
L152:    
        MOVL      XAR5,#_find           ; |506| 
        MOVL      XAR4,#FSL2            ; |506| 
        LCR       #_fm_findfirst        ; |506| 
        ; call occurs [#_fm_findfirst] ; |506| 
        CMPB      AL,#0                 ; |506| 
        BF        L153,EQ               ; |506| 
        ; branch occurs ; |506| 
        SETC      SXM
        MOV       ACC,AL                ; |507| 
        MOVL      *-SP[2],ACC           ; |507| 
        MOVB      ACC,#21
        BF        L163,UNC              ; |507| 
        ; branch occurs ; |507| 
L153:    
        MOVL      XAR4,#FSL56           ; |511| 
        LCR       #_f_nameconv          ; |511| 
        ; call occurs [#_f_nameconv] ; |511| 
        MOVL      XAR5,XAR4             ; |511| 
        MOVL      XAR4,#_find           ; |511| 
        LCR       #_STRCMP              ; |511| 
        ; call occurs [#_STRCMP] ; |511| 
        CMPB      AL,#0                 ; |511| 
        BF        L154,EQ               ; |511| 
        ; branch occurs ; |511| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |511| 
        MOVB      ACC,#22
        BF        L163,UNC              ; |511| 
        ; branch occurs ; |511| 
L154:    
        MOVL      XAR4,#_find           ; |513| 
        LCR       #_fm_findnext         ; |513| 
        ; call occurs [#_fm_findnext] ; |513| 
        CMPB      AL,#0                 ; |513| 
        BF        L155,EQ               ; |513| 
        ; branch occurs ; |513| 
        SETC      SXM
        MOV       ACC,AL                ; |514| 
        MOVL      *-SP[2],ACC           ; |514| 
        MOVB      ACC,#23
        BF        L163,UNC              ; |514| 
        ; branch occurs ; |514| 
L155:    
        MOVL      XAR4,#FSL61           ; |518| 
        LCR       #_f_nameconv          ; |518| 
        ; call occurs [#_f_nameconv] ; |518| 
        MOVL      XAR5,XAR4             ; |518| 
        MOVL      XAR4,#_find           ; |518| 
        LCR       #_STRCMP              ; |518| 
        ; call occurs [#_STRCMP] ; |518| 
        CMPB      AL,#0                 ; |518| 
        BF        L156,EQ               ; |518| 
        ; branch occurs ; |518| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |518| 
        MOVB      ACC,#24
        BF        L163,UNC              ; |518| 
        ; branch occurs ; |518| 
L156:    
        MOVL      XAR4,#_find           ; |520| 
        LCR       #_fm_findnext         ; |520| 
        ; call occurs [#_fm_findnext] ; |520| 
        CMPB      AL,#5                 ; |520| 
        BF        L157,EQ               ; |520| 
        ; branch occurs ; |520| 
        SETC      SXM
        MOV       ACC,AL                ; |521| 
        MOVL      *-SP[2],ACC           ; |521| 
        MOVB      ACC,#25
        BF        L163,UNC              ; |521| 
        ; branch occurs ; |521| 
L157:    
        LCR       #__f_poweroff         ; |525| 
        ; call occurs [#__f_poweroff] ; |525| 
        CMPB      AL,#0                 ; |525| 
        BF        L158,EQ               ; |525| 
        ; branch occurs ; |525| 
        SETC      SXM
        MOV       ACC,AL                ; |526| 
        MOVL      *-SP[2],ACC           ; |526| 
        MOVB      ACC,#34
        BF        L163,UNC              ; |526| 
        ; branch occurs ; |526| 
L158:    
        LCR       #__f_poweron          ; |527| 
        ; call occurs [#__f_poweron] ; |527| 
        CMPB      AL,#0                 ; |527| 
        BF        L159,EQ               ; |527| 
        ; branch occurs ; |527| 
        SETC      SXM
        MOV       ACC,AL                ; |528| 
        MOVL      *-SP[2],ACC           ; |528| 
        MOVB      ACC,#26
        BF        L163,UNC              ; |528| 
        ; branch occurs ; |528| 
L159:    
        MOVB      ACC,#1
        MOVB      XAR4,#0
        LCR       #_fm_format           ; |529| 
        ; call occurs [#_fm_format] ; |529| 
        CMPB      AL,#0                 ; |529| 
        BF        L160,EQ               ; |529| 
        ; branch occurs ; |529| 
        SETC      SXM
        MOV       ACC,AL                ; |530| 
        MOVL      *-SP[2],ACC           ; |530| 
        MOVB      ACC,#27
        BF        L163,UNC              ; |530| 
        ; branch occurs ; |530| 
L160:    
        LCR       #__f_poweroff         ; |531| 
        ; call occurs [#__f_poweroff] ; |531| 
        CMPB      AL,#0                 ; |531| 
        BF        L161,EQ               ; |531| 
        ; branch occurs ; |531| 
        SETC      SXM
        MOV       ACC,AL                ; |532| 
        MOVL      *-SP[2],ACC           ; |532| 
        MOVB      ACC,#35
        BF        L163,UNC              ; |532| 
        ; branch occurs ; |532| 
L161:    
        LCR       #__f_poweron          ; |533| 
        ; call occurs [#__f_poweron] ; |533| 
        CMPB      AL,#0                 ; |533| 
        BF        L162,EQ               ; |533| 
        ; branch occurs ; |533| 
        SETC      SXM
        MOV       ACC,AL                ; |534| 
        MOVL      *-SP[2],ACC           ; |534| 
        MOVB      ACC,#28
        BF        L163,UNC              ; |534| 
        ; branch occurs ; |534| 
L162:    
        MOVL      XAR5,#_find           ; |535| 
        MOVL      XAR4,#FSL2            ; |535| 
        LCR       #_fm_findfirst        ; |535| 
        ; call occurs [#_fm_findfirst] ; |535| 
        CMPB      AL,#5                 ; |535| 
        BF        L164,EQ               ; |535| 
        ; branch occurs ; |535| 
        SETC      SXM
        MOV       ACC,AL                ; |536| 
        MOVL      *-SP[2],ACC           ; |536| 
        MOVB      ACC,#29
L163:    
        LCR       #__f_result           ; |536| 
        ; call occurs [#__f_result] ; |536| 
        BF        L165,UNC              ; |536| 
        ; branch occurs ; |536| 
L164:    
        MOVL      XAR4,#FSL3            ; |539| 
        LCR       #__f_dump             ; |539| 
        ; call occurs [#__f_dump] ; |539| 
        MOVB      AL,#0
L165:    
        SUBB      SP,#2                 ; |540| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_checkfilecontent

;***************************************************************
;* FNAME: _checkfilecontent             FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  1 Auto,  6 SOE     *
;***************************************************************

_checkfilecontent:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        TEST      ACC                   ; |548| 
        MOVL      *SP++,XAR3
        ADDB      SP,#4
        MOVL      XAR3,XAR4             ; |546| 
        MOVL      XAR1,ACC              ; |546| 
        MOVZ      AR2,AR5               ; |546| 
        BF        L169,EQ               ; |548| 
        ; branch occurs ; |548| 
L166:    
        MOVL      XAR4,XAR3             ; |550| 
        LCR       #_fm_eof              ; |550| 
        ; call occurs [#_fm_eof] ; |550| 
        SUBB      XAR1,#1               ; |557| 
        CMPB      AL,#0                 ; |550| 
        BF        L167,NEQ              ; |550| 
        ; branch occurs ; |550| 
        MOVZ      AR4,SP                ; |552| 
        MOVB      ACC,#1
        MOVL      XAR5,XAR3             ; |552| 
        MOVL      *-SP[2],ACC           ; |552| 
        SUBB      XAR4,#3               ; |552| 
        LCR       #_fm_read             ; |552| 
        ; call occurs [#_fm_read] ; |552| 
        MOVL      XAR6,ACC              ; |552| 
        MOVB      ACC,#1
        CMPL      ACC,XAR6              ; |552| 
        BF        L167,NEQ              ; |552| 
        ; branch occurs ; |552| 
        MOV       AL,AR2
        CMP       AL,*-SP[3]            ; |552| 
        BF        L168,EQ               ; |552| 
        ; branch occurs ; |552| 
L167:    
        MOVB      AL,#1                 ; |555| 
        BF        L170,UNC              ; |555| 
        ; branch occurs ; |555| 
L168:    
        MOVL      ACC,XAR1
        BF        L166,NEQ              ; |557| 
        ; branch occurs ; |557| 
L169:    
        MOVB      AL,#0
L170:    
        SUBB      SP,#4                 ; |558| 
        MOVL      XAR3,*--SP            ; |558| 
        MOVL      XAR2,*--SP            ; |558| 
        MOVL      XAR1,*--SP            ; |558| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_f_seeking

;***************************************************************
;* FNAME: _f_seeking                    FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  4 Auto,  6 SOE     *
;***************************************************************

_f_seeking:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#6
        CMPB      AL,#128               ; |567| 
        MOV       *-SP[3],AL            ; |561| 
        BF        L179,EQ               ; |567| 
        ; branch occurs ; |567| 
        CMP       AL,#256               ; |568| 
        BF        L178,EQ               ; |568| 
        ; branch occurs ; |568| 
        CMP       AL,#512               ; |569| 
        BF        L177,EQ               ; |569| 
        ; branch occurs ; |569| 
        CMP       AL,#1024              ; |570| 
        BF        L176,EQ               ; |570| 
        ; branch occurs ; |570| 
        CMP       AL,#2048              ; |571| 
        BF        L175,EQ               ; |571| 
        ; branch occurs ; |571| 
        CMP       AL,#4096              ; |572| 
        BF        L174,EQ               ; |572| 
        ; branch occurs ; |572| 
        CMP       AL,#8192              ; |573| 
        BF        L173,EQ               ; |573| 
        ; branch occurs ; |573| 
        CMP       AL,#16384             ; |574| 
        BF        L172,EQ               ; |574| 
        ; branch occurs ; |574| 
        SETC      SXM
        MOVL      XAR4,#32768           ; |575| 
        MOV       ACC,AL                ; |575| 
        CMPL      ACC,XAR4              ; |575| 
        BF        L171,EQ               ; |575| 
        ; branch occurs ; |575| 
        MOVL      XAR4,#FSL62           ; |576| 
        BF        L180,UNC              ; |576| 
        ; branch occurs ; |576| 
L171:    
        MOVL      XAR4,#FSL63           ; |575| 
        BF        L180,UNC              ; |575| 
        ; branch occurs ; |575| 
L172:    
        MOVL      XAR4,#FSL64           ; |574| 
        BF        L180,UNC              ; |574| 
        ; branch occurs ; |574| 
L173:    
        MOVL      XAR4,#FSL65           ; |573| 
        BF        L180,UNC              ; |573| 
        ; branch occurs ; |573| 
L174:    
        MOVL      XAR4,#FSL66           ; |572| 
        BF        L180,UNC              ; |572| 
        ; branch occurs ; |572| 
L175:    
        MOVL      XAR4,#FSL67           ; |571| 
        BF        L180,UNC              ; |571| 
        ; branch occurs ; |571| 
L176:    
        MOVL      XAR4,#FSL68           ; |570| 
        BF        L180,UNC              ; |570| 
        ; branch occurs ; |570| 
L177:    
        MOVL      XAR4,#FSL69           ; |569| 
        BF        L180,UNC              ; |569| 
        ; branch occurs ; |569| 
L178:    
        MOVL      XAR4,#FSL70           ; |568| 
        BF        L180,UNC              ; |568| 
        ; branch occurs ; |568| 
L179:    
        MOVL      XAR4,#FSL71           ; |567| 
L180:    
        LCR       #__f_dump             ; |567| 
        ; call occurs [#__f_dump] ; |567| 
        MOVL      XAR5,#FSL72           ; |579| 
        MOVL      XAR4,#FSL73           ; |579| 
        LCR       #_fm_open             ; |579| 
        ; call occurs [#_fm_open] ; |579| 
        MOVL      *-SP[6],XAR4          ; |579| 
        MOVL      ACC,*-SP[6]           ; |579| 
        BF        L181,NEQ              ; |579| 
        ; branch occurs ; |579| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |580| 
        BF        L249,UNC              ; |580| 
        ; branch occurs ; |580| 
L181:    
        SETC      SXM
        MOVL      XAR3,#_buffer         ; |583| 
        MOV       ACC,*-SP[3]           ; |583| 
        MOVL      XAR4,XAR3             ; |583| 
        MOVL      XAR1,ACC              ; |583| 
        MOVB      XAR5,#0
        LCR       #_memset              ; |583| 
        ; call occurs [#_memset] ; |583| 
        MOVL      *-SP[2],XAR1          ; |584| 
        MOVL      XAR5,*-SP[6]          ; |584| 
        MOVL      XAR4,XAR3             ; |584| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |584| 
        ; call occurs [#_fm_write] ; |584| 
        MOVL      XAR2,ACC              ; |584| 
        MOVL      ACC,XAR1              ; |584| 
        CMPL      ACC,XAR2              ; |585| 
        BF        L182,EQ               ; |585| 
        ; branch occurs ; |585| 
        MOVB      ACC,#1
        BF        L232,UNC              ; |585| 
        ; branch occurs ; |585| 
L182:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |586| 
        ; call occurs [#_fm_tell] ; |586| 
        MOVL      XAR6,ACC              ; |586| 
        SETC      SXM
        MOV       ACC,*-SP[3]           ; |587| 
        CMPL      ACC,XAR6              ; |587| 
        BF        L183,EQ               ; |587| 
        ; branch occurs ; |587| 
        MOVB      ACC,#2
        BF        L246,UNC              ; |587| 
        ; branch occurs ; |587| 
L183:    
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |590| 
        MOVL      XAR4,*-SP[6]          ; |590| 
        LCR       #_fm_seek             ; |590| 
        ; call occurs [#_fm_seek] ; |590| 
        CMPB      AL,#0                 ; |590| 
        BF        L184,EQ               ; |590| 
        ; branch occurs ; |590| 
        SETC      SXM
        MOV       ACC,AL                ; |591| 
        MOVL      *-SP[2],ACC           ; |591| 
        MOVB      ACC,#3
        BF        L249,UNC              ; |591| 
        ; branch occurs ; |591| 
L184:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |592| 
        ; call occurs [#_fm_tell] ; |592| 
        TEST      ACC                   ; |592| 
        MOVL      XAR6,ACC              ; |592| 
        BF        L185,EQ               ; |592| 
        ; branch occurs ; |592| 
        MOVB      ACC,#4
        BF        L246,UNC              ; |593| 
        ; branch occurs ; |593| 
L185:    
        SETC      SXM
        MOV       ACC,*-SP[3]           ; |594| 
        MOVL      *-SP[2],ACC           ; |594| 
        MOVL      XAR1,ACC              ; |594| 
        MOVL      XAR5,*-SP[6]          ; |594| 
        MOVL      XAR4,#_buffer         ; |594| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |594| 
        ; call occurs [#_fm_read] ; |594| 
        MOVL      XAR2,ACC              ; |594| 
        MOVL      ACC,XAR1              ; |594| 
        CMPL      ACC,XAR2              ; |595| 
        BF        L186,EQ               ; |595| 
        ; branch occurs ; |595| 
        MOVB      ACC,#5
        BF        L232,UNC              ; |595| 
        ; branch occurs ; |595| 
L186:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |596| 
        ; call occurs [#_fm_tell] ; |596| 
        MOVL      XAR6,ACC              ; |596| 
        SETC      SXM
        MOV       ACC,*-SP[3]           ; |597| 
        CMPL      ACC,XAR6              ; |597| 
        BF        L187,EQ               ; |597| 
        ; branch occurs ; |597| 
        MOVB      ACC,#6
        BF        L246,UNC              ; |597| 
        ; branch occurs ; |597| 
L187:    
        MOVB      ACC,#2
        MOVL      *-SP[2],ACC           ; |600| 
        MOVL      XAR5,*-SP[6]          ; |600| 
        MOVL      XAR4,#_buffer         ; |600| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |600| 
        ; call occurs [#_fm_read] ; |600| 
        TEST      ACC                   ; |600| 
        MOVL      XAR2,ACC              ; |600| 
        BF        L188,EQ               ; |600| 
        ; branch occurs ; |600| 
        MOVB      ACC,#7
        BF        L232,UNC              ; |601| 
        ; branch occurs ; |601| 
L188:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |602| 
        ; call occurs [#_fm_tell] ; |602| 
        MOVL      XAR6,ACC              ; |602| 
        SETC      SXM
        MOV       ACC,*-SP[3]           ; |603| 
        CMPL      ACC,XAR6              ; |603| 
        BF        L189,EQ               ; |603| 
        ; branch occurs ; |603| 
        MOVB      ACC,#8
        BF        L246,UNC              ; |603| 
        ; branch occurs ; |603| 
L189:    
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |606| 
        MOVB      AL,#8                 ; |606| 
        MOVL      XAR4,*-SP[6]          ; |606| 
        ADD       AL,*-SP[3]            ; |606| 
        MOV       ACC,AL                ; |606| 
        LCR       #_fm_seek             ; |606| 
        ; call occurs [#_fm_seek] ; |606| 
        CMPB      AL,#0                 ; |606| 
        BF        L190,NEQ              ; |606| 
        ; branch occurs ; |606| 
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |608| 
        ; call occurs [#_fm_tell] ; |608| 
        SETC      SXM
        MOVL      XAR6,ACC              ; |608| 
        MOVB      AL,#8                 ; |609| 
        ADD       AL,*-SP[3]            ; |609| 
        MOV       ACC,AL                ; |609| 
        CMPL      ACC,XAR6              ; |609| 
        BF        L192,NEQ              ; |609| 
        ; branch occurs ; |609| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |612| 
        MOVL      XAR4,*-SP[6]          ; |612| 
        MOV       ACC,*-SP[3]           ; |612| 
        LCR       #_fm_seek             ; |612| 
        ; call occurs [#_fm_seek] ; |612| 
        CMPB      AL,#0                 ; |612| 
        BF        L191,EQ               ; |612| 
        ; branch occurs ; |612| 
L190:    
        SETC      SXM
        MOV       ACC,AL                ; |613| 
        MOVL      *-SP[2],ACC           ; |613| 
        MOVB      ACC,#9
        BF        L249,UNC              ; |613| 
        ; branch occurs ; |613| 
L191:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |614| 
        ; call occurs [#_fm_tell] ; |614| 
        MOVL      XAR6,ACC              ; |614| 
        SETC      SXM
        MOV       ACC,*-SP[3]           ; |615| 
        CMPL      ACC,XAR6              ; |615| 
        BF        L193,EQ               ; |615| 
        ; branch occurs ; |615| 
L192:    
        MOVB      ACC,#10
        BF        L246,UNC              ; |615| 
        ; branch occurs ; |615| 
L193:    
        MOV       ACC,*-SP[3]           ; |619| 
        MOVL      XAR4,XAR3             ; |619| 
        MOVL      XAR1,ACC              ; |619| 
        MOVB      XAR5,#1               ; |619| 
        LCR       #_memset              ; |619| 
        ; call occurs [#_memset] ; |619| 
        MOVL      *-SP[2],XAR1          ; |620| 
        MOVL      XAR5,*-SP[6]          ; |620| 
        MOVL      XAR4,XAR3             ; |620| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |620| 
        ; call occurs [#_fm_write] ; |620| 
        MOVL      XAR2,ACC              ; |620| 
        MOVL      ACC,XAR1              ; |620| 
        CMPL      ACC,XAR2              ; |621| 
        BF        L194,EQ               ; |621| 
        ; branch occurs ; |621| 
        MOVB      ACC,#11
        BF        L232,UNC              ; |621| 
        ; branch occurs ; |621| 
L194:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |622| 
        ; call occurs [#_fm_tell] ; |622| 
        SETC      SXM
        MOVL      XAR6,ACC              ; |622| 
        MOV       AL,*-SP[3]            ; |622| 
        MOV       ACC,AL << #1          ; |623| 
        MOV       ACC,AL                ; |623| 
        CMPL      ACC,XAR6              ; |623| 
        BF        L195,EQ               ; |623| 
        ; branch occurs ; |623| 
        MOVB      ACC,#12
        BF        L246,UNC              ; |623| 
        ; branch occurs ; |623| 
L195:    
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |626| 
        MOVL      XAR4,*-SP[6]          ; |626| 
        LCR       #_fm_seek             ; |626| 
        ; call occurs [#_fm_seek] ; |626| 
        CMPB      AL,#0                 ; |626| 
        BF        L196,EQ               ; |626| 
        ; branch occurs ; |626| 
        SETC      SXM
        MOV       ACC,AL                ; |627| 
        MOVL      *-SP[2],ACC           ; |627| 
        MOVB      ACC,#13
        BF        L249,UNC              ; |627| 
        ; branch occurs ; |627| 
L196:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |628| 
        ; call occurs [#_fm_tell] ; |628| 
        TEST      ACC                   ; |628| 
        MOVL      XAR6,ACC              ; |628| 
        BF        L197,EQ               ; |628| 
        ; branch occurs ; |628| 
        MOVB      ACC,#14
        BF        L246,UNC              ; |629| 
        ; branch occurs ; |629| 
L197:    
        MOV       AL,*-SP[3]
        SETC      SXM
        ADDB      AL,#-1
        MOV       ACC,AL                ; |630| 
        MOVL      *-SP[2],ACC           ; |630| 
        MOVL      XAR1,ACC              ; |630| 
        MOVL      XAR5,*-SP[6]          ; |630| 
        MOVL      XAR4,#_buffer         ; |630| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |630| 
        ; call occurs [#_fm_read] ; |630| 
        MOVL      XAR2,ACC              ; |630| 
        MOVL      ACC,XAR1              ; |630| 
        CMPL      ACC,XAR2              ; |631| 
        BF        L198,EQ               ; |631| 
        ; branch occurs ; |631| 
        MOVB      ACC,#15
        BF        L232,UNC              ; |631| 
        ; branch occurs ; |631| 
L198:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |632| 
        ; call occurs [#_fm_tell] ; |632| 
        MOVL      XAR6,ACC              ; |632| 
        SETC      SXM
        MOV       ACC,*-SP[3]           ; |633| 
        SUBB      ACC,#1                ; |633| 
        CMPL      ACC,XAR6              ; |633| 
        BF        L199,EQ               ; |633| 
        ; branch occurs ; |633| 
        MOVB      ACC,#16
        BF        L246,UNC              ; |633| 
        ; branch occurs ; |633| 
L199:    
        MOVL      XAR4,XAR3             ; |637| 
        MOV       ACC,*-SP[3]           ; |637| 
        MOVB      XAR5,#2               ; |637| 
        LCR       #_memset              ; |637| 
        ; call occurs [#_memset] ; |637| 
        MOVB      ACC,#2
        MOVL      *-SP[2],ACC           ; |638| 
        MOVL      XAR4,XAR3             ; |638| 
        MOVL      XAR5,*-SP[6]          ; |638| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |638| 
        ; call occurs [#_fm_write] ; |638| 
        MOVL      XAR2,ACC              ; |638| 
        MOVB      ACC,#2
        CMPL      ACC,XAR2              ; |638| 
        BF        L200,EQ               ; |638| 
        ; branch occurs ; |638| 
        MOVB      ACC,#17
        BF        L232,UNC              ; |639| 
        ; branch occurs ; |639| 
L200:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |640| 
        ; call occurs [#_fm_tell] ; |640| 
        SETC      SXM
        MOVL      XAR6,ACC              ; |640| 
        MOVB      AL,#1                 ; |641| 
        ADD       AL,*-SP[3]            ; |641| 
        MOV       ACC,AL                ; |641| 
        CMPL      ACC,XAR6              ; |641| 
        BF        L201,EQ               ; |641| 
        ; branch occurs ; |641| 
        MOVB      ACC,#18
        BF        L246,UNC              ; |641| 
        ; branch occurs ; |641| 
L201:    
        MOVB      ACC,#2
        MOVL      *-SP[2],ACC           ; |644| 
        MOVL      XAR5,*-SP[6]          ; |644| 
        MOVL      XAR4,#_buffer         ; |644| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |644| 
        ; call occurs [#_fm_read] ; |644| 
        MOVL      XAR2,ACC              ; |644| 
        MOVB      ACC,#2
        CMPL      ACC,XAR2              ; |644| 
        BF        L202,EQ               ; |644| 
        ; branch occurs ; |644| 
        MOVB      ACC,#19
        BF        L232,UNC              ; |645| 
        ; branch occurs ; |645| 
L202:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |646| 
        ; call occurs [#_fm_tell] ; |646| 
        SETC      SXM
        MOVL      XAR6,ACC              ; |646| 
        MOVB      AL,#3                 ; |647| 
        ADD       AL,*-SP[3]            ; |647| 
        MOV       ACC,AL                ; |647| 
        CMPL      ACC,XAR6              ; |647| 
        BF        L203,EQ               ; |647| 
        ; branch occurs ; |647| 
        MOVB      ACC,#20
        BF        L246,UNC              ; |647| 
        ; branch occurs ; |647| 
L203:    
        MOVL      XAR4,XAR3             ; |651| 
        MOV       ACC,*-SP[3]           ; |651| 
        MOVB      XAR5,#3               ; |651| 
        LCR       #_memset              ; |651| 
        ; call occurs [#_memset] ; |651| 
        MOVB      ACC,#4
        MOVL      *-SP[2],ACC           ; |652| 
        MOVL      XAR4,XAR3             ; |652| 
        MOVL      XAR5,*-SP[6]          ; |652| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |652| 
        ; call occurs [#_fm_write] ; |652| 
        MOVL      XAR2,ACC              ; |652| 
        MOVB      ACC,#4
        CMPL      ACC,XAR2              ; |652| 
        BF        L204,EQ               ; |652| 
        ; branch occurs ; |652| 
        MOVB      ACC,#21
        BF        L232,UNC              ; |653| 
        ; branch occurs ; |653| 
L204:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |654| 
        ; call occurs [#_fm_tell] ; |654| 
        SETC      SXM
        MOVL      XAR6,ACC              ; |654| 
        MOVB      AL,#7                 ; |655| 
        ADD       AL,*-SP[3]            ; |655| 
        MOV       ACC,AL                ; |655| 
        CMPL      ACC,XAR6              ; |655| 
        BF        L205,EQ               ; |655| 
        ; branch occurs ; |655| 
        MOVB      ACC,#22
        BF        L246,UNC              ; |655| 
        ; branch occurs ; |655| 
L205:    
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |658| 
        MOVL      XAR4,*-SP[6]          ; |658| 
        MOVB      ACC,#2
        LCR       #_fm_seek             ; |658| 
        ; call occurs [#_fm_seek] ; |658| 
        CMPB      AL,#0                 ; |658| 
        BF        L206,EQ               ; |658| 
        ; branch occurs ; |658| 
        SETC      SXM
        MOV       ACC,AL                ; |659| 
        MOVL      *-SP[2],ACC           ; |659| 
        MOVB      ACC,#23
        BF        L249,UNC              ; |659| 
        ; branch occurs ; |659| 
L206:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |660| 
        ; call occurs [#_fm_tell] ; |660| 
        MOVL      XAR6,ACC              ; |660| 
        MOVB      ACC,#2
        CMPL      ACC,XAR6              ; |660| 
        BF        L207,EQ               ; |660| 
        ; branch occurs ; |660| 
        MOVB      ACC,#24
        BF        L246,UNC              ; |661| 
        ; branch occurs ; |661| 
L207:    
        SETC      SXM
        MOVL      XAR4,XAR3             ; |664| 
        MOVB      XAR5,#4               ; |664| 
        MOV       ACC,*-SP[3]           ; |664| 
        LCR       #_memset              ; |664| 
        ; call occurs [#_memset] ; |664| 
        MOVB      ACC,#6
        MOVL      *-SP[2],ACC           ; |665| 
        MOVL      XAR4,XAR3             ; |665| 
        MOVL      XAR5,*-SP[6]          ; |665| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |665| 
        ; call occurs [#_fm_write] ; |665| 
        MOVL      XAR2,ACC              ; |665| 
        MOVB      ACC,#6
        CMPL      ACC,XAR2              ; |665| 
        BF        L208,EQ               ; |665| 
        ; branch occurs ; |665| 
        MOVB      ACC,#25
        BF        L232,UNC              ; |666| 
        ; branch occurs ; |666| 
L208:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |667| 
        ; call occurs [#_fm_tell] ; |667| 
        MOVL      XAR6,ACC              ; |667| 
        MOVB      ACC,#8
        CMPL      ACC,XAR6              ; |667| 
        BF        L209,EQ               ; |667| 
        ; branch occurs ; |667| 
        MOVB      ACC,#26
        BF        L246,UNC              ; |668| 
        ; branch occurs ; |668| 
L209:    
        MOVB      ACC,#2
        MOVL      *-SP[2],ACC           ; |671| 
        MOVL      XAR4,*-SP[6]          ; |671| 
        MOVB      ACC,#0
        SUBB      ACC,#4
        LCR       #_fm_seek             ; |671| 
        ; call occurs [#_fm_seek] ; |671| 
        CMPB      AL,#0                 ; |671| 
        BF        L210,EQ               ; |671| 
        ; branch occurs ; |671| 
        SETC      SXM
        MOV       ACC,AL                ; |672| 
        MOVL      *-SP[2],ACC           ; |672| 
        MOVB      ACC,#27
        BF        L249,UNC              ; |672| 
        ; branch occurs ; |672| 
L210:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |673| 
        ; call occurs [#_fm_tell] ; |673| 
        MOVL      XAR6,ACC              ; |673| 
        SETC      SXM
        MOV       AL,*-SP[3]            ; |673| 
        ADDB      AL,#-2
        LSL       AL,1                  ; |674| 
        MOV       ACC,AL                ; |674| 
        CMPL      ACC,XAR6              ; |674| 
        BF        L211,EQ               ; |674| 
        ; branch occurs ; |674| 
        MOVB      ACC,#28
        BF        L246,UNC              ; |674| 
        ; branch occurs ; |674| 
L211:    
        MOVB      ACC,#2
        MOVL      *-SP[2],ACC           ; |677| 
        MOVL      XAR5,*-SP[6]          ; |677| 
        MOVL      XAR4,#_buffer         ; |677| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |677| 
        ; call occurs [#_fm_read] ; |677| 
        MOVL      XAR2,ACC              ; |677| 
        MOVB      ACC,#2
        CMPL      ACC,XAR2              ; |677| 
        BF        L212,EQ               ; |677| 
        ; branch occurs ; |677| 
        MOVB      ACC,#29
        BF        L232,UNC              ; |678| 
        ; branch occurs ; |678| 
L212:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |679| 
        ; call occurs [#_fm_tell] ; |679| 
        MOVL      XAR6,ACC              ; |679| 
        SETC      SXM
        MOV       AL,*-SP[3]            ; |679| 
        ADDB      AL,#-1
        LSL       AL,1                  ; |680| 
        MOV       ACC,AL                ; |680| 
        CMPL      ACC,XAR6              ; |680| 
        BF        L213,EQ               ; |680| 
        ; branch occurs ; |680| 
        MOVB      ACC,#30
        BF        L246,UNC              ; |680| 
        ; branch occurs ; |680| 
L213:    
        MOVL      XAR4,XAR3             ; |683| 
        MOV       ACC,*-SP[3]           ; |683| 
        MOVB      XAR5,#5               ; |683| 
        LCR       #_memset              ; |683| 
        ; call occurs [#_memset] ; |683| 
        MOVB      ACC,#8
        MOVL      *-SP[2],ACC           ; |684| 
        MOVL      XAR4,XAR3             ; |684| 
        MOVL      XAR5,*-SP[6]          ; |684| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |684| 
        ; call occurs [#_fm_write] ; |684| 
        MOVL      XAR2,ACC              ; |684| 
        MOVB      ACC,#8
        CMPL      ACC,XAR2              ; |684| 
        BF        L214,EQ               ; |684| 
        ; branch occurs ; |684| 
        MOVB      ACC,#31
        BF        L232,UNC              ; |685| 
        ; branch occurs ; |685| 
L214:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |686| 
        ; call occurs [#_fm_tell] ; |686| 
        MOVL      XAR6,ACC              ; |686| 
        SETC      SXM
        MOVB      AL,#3                 ; |687| 
        ADD       AL,*-SP[3]            ; |687| 
        MOV       ACC,AL << #1          ; |687| 
        MOV       ACC,AL                ; |687| 
        CMPL      ACC,XAR6              ; |687| 
        BF        L215,EQ               ; |687| 
        ; branch occurs ; |687| 
        MOVB      ACC,#32
        BF        L246,UNC              ; |687| 
        ; branch occurs ; |687| 
L215:    
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |690| 
        MOVL      XAR4,*-SP[6]          ; |690| 
        LCR       #_fm_seek             ; |690| 
        ; call occurs [#_fm_seek] ; |690| 
        CMPB      AL,#0                 ; |690| 
        BF        L216,EQ               ; |690| 
        ; branch occurs ; |690| 
        SETC      SXM
        MOV       ACC,AL                ; |691| 
        MOVL      *-SP[2],ACC           ; |691| 
        MOVB      ACC,#33
        BF        L249,UNC              ; |691| 
        ; branch occurs ; |691| 
L216:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |692| 
        ; call occurs [#_fm_tell] ; |692| 
        TEST      ACC                   ; |692| 
        MOVL      XAR6,ACC              ; |692| 
        BF        L217,EQ               ; |692| 
        ; branch occurs ; |692| 
        MOVB      ACC,#34
        BF        L246,UNC              ; |693| 
        ; branch occurs ; |693| 
L217:    
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |696| 
        SETC      SXM
        MOVB      AL,#3                 ; |696| 
        MOVL      XAR4,*-SP[6]          ; |696| 
        ADD       AL,*-SP[3]            ; |696| 
        MOV       ACC,AL << #1          ; |696| 
        MOV       ACC,AL                ; |696| 
        LCR       #_fm_seek             ; |696| 
        ; call occurs [#_fm_seek] ; |696| 
        CMPB      AL,#0                 ; |696| 
        MOVZ      AR1,AL                ; |696| 
        BF        L218,EQ               ; |696| 
        ; branch occurs ; |696| 
        SETC      SXM
        MOV       ACC,AL                ; |697| 
        MOVL      *-SP[2],ACC           ; |697| 
        MOVB      ACC,#35
        BF        L249,UNC              ; |697| 
        ; branch occurs ; |697| 
L218:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |702| 
        ; call occurs [#_fm_tell] ; |702| 
        MOVL      XAR6,ACC              ; |702| 
        SETC      SXM
        MOVB      AL,#3                 ; |703| 
        ADD       AL,*-SP[3]            ; |703| 
        MOV       ACC,AL << #1          ; |703| 
        MOV       ACC,AL                ; |703| 
        CMPL      ACC,XAR6              ; |703| 
        BF        L219,EQ               ; |703| 
        ; branch occurs ; |703| 
        MOVB      ACC,#36
        BF        L246,UNC              ; |703| 
        ; branch occurs ; |703| 
L219:    
        MOVL      XAR4,XAR3             ; |706| 
        MOV       ACC,*-SP[3]           ; |706| 
        MOVB      XAR5,#6               ; |706| 
        LCR       #_memset              ; |706| 
        ; call occurs [#_memset] ; |706| 
        MOVB      ACC,#2
        MOVL      *-SP[2],ACC           ; |707| 
        MOVL      XAR4,XAR3             ; |707| 
        MOVL      XAR5,*-SP[6]          ; |707| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |707| 
        ; call occurs [#_fm_write] ; |707| 
        MOVL      XAR2,ACC              ; |707| 
        MOVB      ACC,#2
        CMPL      ACC,XAR2              ; |707| 
        BF        L220,EQ               ; |707| 
        ; branch occurs ; |707| 
        MOVB      ACC,#37
        BF        L232,UNC              ; |708| 
        ; branch occurs ; |708| 
L220:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |709| 
        ; call occurs [#_fm_tell] ; |709| 
        MOVL      XAR6,ACC              ; |709| 
        SETC      SXM
        MOVB      AL,#4                 ; |710| 
        ADD       AL,*-SP[3]            ; |710| 
        MOV       ACC,AL << #1          ; |710| 
        MOV       ACC,AL                ; |710| 
        CMPL      ACC,XAR6              ; |710| 
        BF        L221,EQ               ; |710| 
        ; branch occurs ; |710| 
        MOVB      ACC,#38
        BF        L246,UNC              ; |710| 
        ; branch occurs ; |710| 
L221:    
        MOVB      ACC,#1
        MOVL      *-SP[2],ACC           ; |713| 
        MOV       AL,*-SP[3]            ; |713| 
        MOV       ACC,AL << #1          ; |713| 
        MOVL      XAR4,*-SP[6]          ; |713| 
        MOV       AH,#-8                ; |713| 
        SUB       AH,AL                 ; |713| 
        MOV       ACC,AH                ; |713| 
        LCR       #_fm_seek             ; |713| 
        ; call occurs [#_fm_seek] ; |713| 
        MOV       AL,AR1                ; |713| 
        BF        L222,EQ               ; |714| 
        ; branch occurs ; |714| 
        SETC      SXM
        MOV       ACC,AL                ; |714| 
        MOVL      *-SP[2],ACC           ; |714| 
        MOVB      ACC,#39
        BF        L249,UNC              ; |714| 
        ; branch occurs ; |714| 
L222:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |715| 
        ; call occurs [#_fm_tell] ; |715| 
        TEST      ACC                   ; |715| 
        MOVL      XAR6,ACC              ; |715| 
        BF        L223,EQ               ; |715| 
        ; branch occurs ; |715| 
        MOVB      ACC,#40
        BF        L246,UNC              ; |716| 
        ; branch occurs ; |716| 
L223:    
        SETC      SXM
        MOV       ACC,*-SP[3]           ; |719| 
        MOVL      *-SP[2],ACC           ; |719| 
        MOVL      XAR1,ACC              ; |719| 
        MOVL      XAR5,*-SP[6]          ; |719| 
        MOVL      XAR4,#_buffer         ; |719| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |719| 
        ; call occurs [#_fm_read] ; |719| 
        MOVL      XAR2,ACC              ; |719| 
        MOVL      ACC,XAR1              ; |719| 
        CMPL      ACC,XAR2              ; |720| 
        BF        L224,EQ               ; |720| 
        ; branch occurs ; |720| 
        MOVB      ACC,#41
        BF        L232,UNC              ; |720| 
        ; branch occurs ; |720| 
L224:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |721| 
        ; call occurs [#_fm_tell] ; |721| 
        MOVL      XAR6,ACC              ; |721| 
        SETC      SXM
        MOV       ACC,*-SP[3]           ; |722| 
        CMPL      ACC,XAR6              ; |722| 
        BF        L225,EQ               ; |722| 
        ; branch occurs ; |722| 
        MOVB      ACC,#42
        BF        L246,UNC              ; |722| 
        ; branch occurs ; |722| 
L225:    
        MOV       ACC,*-SP[3]           ; |724| 
        MOVL      *-SP[2],ACC           ; |724| 
        MOVL      XAR1,ACC              ; |724| 
        MOVL      XAR5,*-SP[6]          ; |724| 
        MOVL      XAR4,#_buffer         ; |724| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |724| 
        ; call occurs [#_fm_read] ; |724| 
        MOVL      XAR2,ACC              ; |724| 
        MOVL      ACC,XAR1              ; |724| 
        CMPL      ACC,XAR2              ; |725| 
        BF        L226,EQ               ; |725| 
        ; branch occurs ; |725| 
        MOVB      ACC,#43
        BF        L232,UNC              ; |725| 
        ; branch occurs ; |725| 
L226:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |726| 
        ; call occurs [#_fm_tell] ; |726| 
        SETC      SXM
        MOVL      XAR6,ACC              ; |726| 
        MOV       AL,*-SP[3]            ; |726| 
        MOV       ACC,AL << #1          ; |727| 
        MOV       ACC,AL                ; |727| 
        CMPL      ACC,XAR6              ; |727| 
        BF        L227,EQ               ; |727| 
        ; branch occurs ; |727| 
        MOVB      ACC,#44
        BF        L246,UNC              ; |727| 
        ; branch occurs ; |727| 
L227:    
        MOVL      XAR4,XAR3             ; |730| 
        MOV       ACC,*-SP[3]           ; |730| 
        MOVB      XAR5,#7               ; |730| 
        LCR       #_memset              ; |730| 
        ; call occurs [#_memset] ; |730| 
        MOVB      ACC,#1
        MOVL      XAR4,XAR3             ; |731| 
        MOVL      *-SP[2],ACC           ; |731| 
        MOVL      XAR5,*-SP[6]          ; |731| 
        LCR       #_fm_write            ; |731| 
        ; call occurs [#_fm_write] ; |731| 
        MOVL      XAR2,ACC              ; |731| 
        MOVB      ACC,#1
        CMPL      ACC,XAR2              ; |731| 
        BF        L228,EQ               ; |731| 
        ; branch occurs ; |731| 
        MOVB      ACC,#45
        BF        L232,UNC              ; |732| 
        ; branch occurs ; |732| 
L228:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |733| 
        ; call occurs [#_fm_tell] ; |733| 
        MOVL      XAR6,ACC              ; |733| 
        SETC      SXM
        MOV       AL,*-SP[3]            ; |733| 
        MOV       ACC,AL << #1          ; |734| 
        ADDB      AL,#1                 ; |734| 
        MOV       ACC,AL                ; |734| 
        CMPL      ACC,XAR6              ; |734| 
        BF        L229,EQ               ; |734| 
        ; branch occurs ; |734| 
        MOVB      ACC,#46
        BF        L246,UNC              ; |734| 
        ; branch occurs ; |734| 
L229:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_close            ; |737| 
        ; call occurs [#_fm_close] ; |737| 
        CMPB      AL,#0                 ; |737| 
        BF        L230,EQ               ; |737| 
        ; branch occurs ; |737| 
        SETC      SXM
        MOV       ACC,AL                ; |738| 
        MOVL      *-SP[2],ACC           ; |738| 
        MOVB      ACC,#47
        BF        L249,UNC              ; |738| 
        ; branch occurs ; |738| 
L230:    
        MOVL      XAR4,#FSL73           ; |742| 
        LCR       #_fm_filelength       ; |742| 
        ; call occurs [#_fm_filelength] ; |742| 
        MOVL      XAR2,ACC              ; |742| 
        SETC      SXM
        MOVB      AL,#4                 ; |743| 
        ADD       AL,*-SP[3]            ; |743| 
        MOV       ACC,AL << #1          ; |743| 
        MOV       ACC,AL                ; |743| 
        CMPL      ACC,XAR2              ; |743| 
        BF        L231,EQ               ; |743| 
        ; branch occurs ; |743| 
        MOVB      ACC,#48
        BF        L232,UNC              ; |743| 
        ; branch occurs ; |743| 
L231:    
        MOVL      XAR5,#FSL74           ; |746| 
        MOVL      XAR4,#FSL73           ; |746| 
        LCR       #_fm_open             ; |746| 
        ; call occurs [#_fm_open] ; |746| 
        MOVL      *-SP[6],XAR4          ; |746| 
        MOVL      ACC,*-SP[6]           ; |746| 
        BF        L233,NEQ              ; |746| 
        ; branch occurs ; |746| 
        MOVB      ACC,#49
L232:    
        MOVL      *-SP[2],XAR2          ; |747| 
        BF        L249,UNC              ; |747| 
        ; branch occurs ; |747| 
L233:    
        MOVL      XAR4,*-SP[6]          ; |749| 
        MOVB      ACC,#2
        MOVB      XAR5,#0
        LCR       #_checkfilecontent    ; |749| 
        ; call occurs [#_checkfilecontent] ; |749| 
        CMPB      AL,#0                 ; |749| 
        BF        L234,EQ               ; |749| 
        ; branch occurs ; |749| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |749| 
        MOVB      ACC,#50
        BF        L249,UNC              ; |749| 
        ; branch occurs ; |749| 
L234:    
        MOVL      XAR4,*-SP[6]          ; |750| 
        MOVB      ACC,#6
        MOVB      XAR5,#4               ; |750| 
        LCR       #_checkfilecontent    ; |750| 
        ; call occurs [#_checkfilecontent] ; |750| 
        CMPB      AL,#0                 ; |750| 
        BF        L235,EQ               ; |750| 
        ; branch occurs ; |750| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |750| 
        MOVB      ACC,#51
        BF        L249,UNC              ; |750| 
        ; branch occurs ; |750| 
L235:    
        MOV       AL,*-SP[3]
        SETC      SXM
        MOVL      XAR4,*-SP[6]          ; |751| 
        MOVB      XAR5,#0
        ADDB      AL,#-9
        MOV       ACC,AL                ; |751| 
        LCR       #_checkfilecontent    ; |751| 
        ; call occurs [#_checkfilecontent] ; |751| 
        CMPB      AL,#0                 ; |751| 
        BF        L236,EQ               ; |751| 
        ; branch occurs ; |751| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |751| 
        MOVB      ACC,#52
        BF        L249,UNC              ; |751| 
        ; branch occurs ; |751| 
L236:    
        MOVL      XAR4,*-SP[6]          ; |752| 
        MOVB      ACC,#2
        MOVB      XAR5,#2               ; |752| 
        LCR       #_checkfilecontent    ; |752| 
        ; call occurs [#_checkfilecontent] ; |752| 
        CMPB      AL,#0                 ; |752| 
        BF        L237,EQ               ; |752| 
        ; branch occurs ; |752| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |752| 
        MOVB      ACC,#53
        BF        L249,UNC              ; |752| 
        ; branch occurs ; |752| 
L237:    
        MOVL      XAR4,*-SP[6]          ; |753| 
        MOVB      ACC,#2
        MOVB      XAR5,#1               ; |753| 
        LCR       #_checkfilecontent    ; |753| 
        ; call occurs [#_checkfilecontent] ; |753| 
        CMPB      AL,#0                 ; |753| 
        BF        L238,EQ               ; |753| 
        ; branch occurs ; |753| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |753| 
        MOVB      ACC,#54
        BF        L249,UNC              ; |753| 
        ; branch occurs ; |753| 
L238:    
        MOVL      XAR4,*-SP[6]          ; |754| 
        MOVB      ACC,#4
        MOVB      XAR5,#3               ; |754| 
        LCR       #_checkfilecontent    ; |754| 
        ; call occurs [#_checkfilecontent] ; |754| 
        CMPB      AL,#0                 ; |754| 
        BF        L239,EQ               ; |754| 
        ; branch occurs ; |754| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |754| 
        MOVB      ACC,#55
        BF        L249,UNC              ; |754| 
        ; branch occurs ; |754| 
L239:    
        MOV       AL,*-SP[3]
        SETC      SXM
        MOVL      XAR4,*-SP[6]          ; |755| 
        MOVB      XAR5,#1               ; |755| 
        ADDB      AL,#-9
        MOV       ACC,AL                ; |755| 
        LCR       #_checkfilecontent    ; |755| 
        ; call occurs [#_checkfilecontent] ; |755| 
        CMPB      AL,#0                 ; |755| 
        BF        L240,EQ               ; |755| 
        ; branch occurs ; |755| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |755| 
        MOVB      ACC,#56
        BF        L249,UNC              ; |755| 
        ; branch occurs ; |755| 
L240:    
        MOVL      XAR4,*-SP[6]          ; |756| 
        MOVB      ACC,#2
        MOVB      XAR5,#5               ; |756| 
        LCR       #_checkfilecontent    ; |756| 
        ; call occurs [#_checkfilecontent] ; |756| 
        CMPB      AL,#0                 ; |756| 
        BF        L241,EQ               ; |756| 
        ; branch occurs ; |756| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |756| 
        MOVB      ACC,#57
        BF        L249,UNC              ; |756| 
        ; branch occurs ; |756| 
L241:    
        MOVL      XAR4,*-SP[6]          ; |757| 
        MOVB      ACC,#1
        MOVB      XAR5,#7               ; |757| 
        LCR       #_checkfilecontent    ; |757| 
        ; call occurs [#_checkfilecontent] ; |757| 
        CMPB      AL,#0                 ; |757| 
        BF        L242,EQ               ; |757| 
        ; branch occurs ; |757| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |757| 
        MOVB      ACC,#58
        BF        L249,UNC              ; |757| 
        ; branch occurs ; |757| 
L242:    
        MOVL      XAR4,*-SP[6]          ; |758| 
        MOVB      ACC,#5
        MOVB      XAR5,#5               ; |758| 
        LCR       #_checkfilecontent    ; |758| 
        ; call occurs [#_checkfilecontent] ; |758| 
        CMPB      AL,#0                 ; |758| 
        BF        L243,EQ               ; |758| 
        ; branch occurs ; |758| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |758| 
        MOVB      ACC,#59
        BF        L249,UNC              ; |758| 
        ; branch occurs ; |758| 
L243:    
        MOVL      XAR4,*-SP[6]          ; |759| 
        MOVB      ACC,#2
        MOVB      XAR5,#6               ; |759| 
        LCR       #_checkfilecontent    ; |759| 
        ; call occurs [#_checkfilecontent] ; |759| 
        CMPB      AL,#0                 ; |759| 
        BF        L244,EQ               ; |759| 
        ; branch occurs ; |759| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |759| 
        MOVB      ACC,#60
        BF        L249,UNC              ; |759| 
        ; branch occurs ; |759| 
L244:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_tell             ; |762| 
        ; call occurs [#_fm_tell] ; |762| 
        MOVL      XAR6,ACC              ; |762| 
        SETC      SXM
        MOVB      AL,#4                 ; |763| 
        ADD       AL,*-SP[3]            ; |763| 
        MOV       ACC,AL << #1          ; |763| 
        MOV       ACC,AL                ; |763| 
        CMPL      ACC,XAR6              ; |763| 
        BF        L245,EQ               ; |763| 
        ; branch occurs ; |763| 
        MOVB      ACC,#61
        BF        L246,UNC              ; |763| 
        ; branch occurs ; |763| 
L245:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_eof              ; |766| 
        ; call occurs [#_fm_eof] ; |766| 
        SETC      SXM
        MOV       ACC,AL                ; |766| 
        MOVL      XAR6,ACC              ; |766| 
        BF        L247,NEQ              ; |766| 
        ; branch occurs ; |766| 
        MOVB      ACC,#62
L246:    
        MOVL      *-SP[2],XAR6          ; |767| 
        BF        L249,UNC              ; |767| 
        ; branch occurs ; |767| 
L247:    
        MOVL      XAR4,*-SP[6]
        LCR       #_fm_close            ; |770| 
        ; call occurs [#_fm_close] ; |770| 
        CMPB      AL,#0                 ; |770| 
        BF        L248,EQ               ; |770| 
        ; branch occurs ; |770| 
        SETC      SXM
        MOV       ACC,AL                ; |771| 
        MOVL      *-SP[2],ACC           ; |771| 
        MOVB      ACC,#63
        BF        L249,UNC              ; |771| 
        ; branch occurs ; |771| 
L248:    
        MOVL      XAR4,#FSL73           ; |774| 
        LCR       #_fm_delete           ; |774| 
        ; call occurs [#_fm_delete] ; |774| 
        CMPB      AL,#0                 ; |774| 
        BF        L250,EQ               ; |774| 
        ; branch occurs ; |774| 
        SETC      SXM
        MOV       ACC,AL                ; |775| 
        MOVL      *-SP[2],ACC           ; |775| 
        MOVB      ACC,#64
L249:    
        LCR       #__f_result           ; |775| 
        ; call occurs [#__f_result] ; |775| 
        BF        L251,UNC              ; |775| 
        ; branch occurs ; |775| 
L250:    
        MOVL      XAR4,#FSL3            ; |777| 
        LCR       #__f_dump             ; |777| 
        ; call occurs [#__f_dump] ; |777| 
        MOVB      AL,#0
L251:    
        SUBB      SP,#6                 ; |778| 
        MOVL      XAR3,*--SP            ; |778| 
        MOVL      XAR2,*--SP            ; |778| 
        MOVL      XAR1,*--SP            ; |778| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_f_opening

;***************************************************************
;* FNAME: _f_opening                    FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_f_opening:
        MOVL      *SP++,XAR1
        MOVL      XAR4,#FSL75           ; |786| 
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#2
        LCR       #__f_dump             ; |786| 
        ; call occurs [#__f_dump] ; |786| 
        MOVL      XAR5,#FSL74           ; |789| 
        MOVL      XAR4,#FSL76           ; |789| 
        LCR       #_fm_open             ; |789| 
        ; call occurs [#_fm_open] ; |789| 
        MOVL      ACC,XAR4              ; |789| 
        BF        L252,EQ               ; |790| 
        ; branch occurs ; |790| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |790| 
        BF        L285,UNC              ; |790| 
        ; branch occurs ; |790| 
L252:    
        MOVL      XAR5,#FSL77           ; |791| 
        MOVL      XAR4,#FSL76           ; |791| 
        LCR       #_fm_open             ; |791| 
        ; call occurs [#_fm_open] ; |791| 
        MOVL      ACC,XAR4              ; |791| 
        BF        L253,EQ               ; |792| 
        ; branch occurs ; |792| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |792| 
        MOVB      ACC,#1
        BF        L285,UNC              ; |792| 
        ; branch occurs ; |792| 
L253:    
        MOVL      XAR5,#FSL5            ; |795| 
        MOVL      XAR4,#FSL76           ; |795| 
        LCR       #_fm_open             ; |795| 
        ; call occurs [#_fm_open] ; |795| 
        MOVL      XAR1,XAR4             ; |795| 
        MOVL      ACC,XAR4              ; |795| 
        BF        L254,NEQ              ; |795| 
        ; branch occurs ; |795| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |796| 
        MOVB      ACC,#2
        BF        L285,UNC              ; |796| 
        ; branch occurs ; |796| 
L254:    
        MOVL      XAR5,#FSL78           ; |797| 
        MOVL      XAR4,#FSL76           ; |797| 
        LCR       #_fm_open             ; |797| 
        ; call occurs [#_fm_open] ; |797| 
        MOVL      XAR2,XAR4             ; |797| 
        MOVL      ACC,XAR4              ; |797| 
        BF        L255,EQ               ; |798| 
        ; branch occurs ; |798| 
        MOVB      ACC,#0
        BF        L257,UNC              ; |798| 
        ; branch occurs ; |798| 
L255:    
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |799| 
        ; call occurs [#_fm_close] ; |799| 
        CMPB      AL,#0                 ; |799| 
        BF        L256,EQ               ; |799| 
        ; branch occurs ; |799| 
        MOVB      ACC,#1
        BF        L257,UNC              ; |800| 
        ; branch occurs ; |800| 
L256:    
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |801| 
        ; call occurs [#_fm_close] ; |801| 
        CMPB      AL,#8                 ; |801| 
        BF        L258,EQ               ; |801| 
        ; branch occurs ; |801| 
        MOVB      ACC,#2
L257:    
        MOVL      *-SP[2],ACC           ; |802| 
        MOVB      ACC,#3
        BF        L285,UNC              ; |802| 
        ; branch occurs ; |802| 
L258:    
        MOVL      XAR5,#FSL79           ; |806| 
        MOVL      XAR4,#FSL76           ; |806| 
        LCR       #_fm_open             ; |806| 
        ; call occurs [#_fm_open] ; |806| 
        MOVL      XAR1,XAR4             ; |806| 
        MOVL      ACC,XAR4              ; |806| 
        BF        L259,NEQ              ; |806| 
        ; branch occurs ; |806| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |807| 
        MOVB      ACC,#4
        BF        L285,UNC              ; |807| 
        ; branch occurs ; |807| 
L259:    
        MOVL      XAR3,#_buffer         ; |810| 
        MOVL      XAR4,XAR3             ; |810| 
        MOV       ACC,#1 << 9
        MOVB      XAR5,#1               ; |810| 
        LCR       #_memset              ; |810| 
        ; call occurs [#_memset] ; |810| 
        MOVL      XAR4,#512             ; |811| 
        MOVL      *-SP[2],XAR4          ; |811| 
        MOVL      XAR5,XAR1             ; |811| 
        MOVL      XAR4,XAR3             ; |811| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |811| 
        ; call occurs [#_fm_write] ; |811| 
        MOVL      XAR6,ACC              ; |811| 
        MOV       ACC,#512              ; |811| 
        CMPL      ACC,XAR6              ; |811| 
        BF        L260,EQ               ; |811| 
        ; branch occurs ; |811| 
        MOVB      ACC,#5
        BF        L287,UNC              ; |812| 
        ; branch occurs ; |812| 
L260:    
        MOVL      XAR4,XAR1
        LCR       #_fm_rewind           ; |815| 
        ; call occurs [#_fm_rewind] ; |815| 
        CMPB      AL,#0                 ; |815| 
        BF        L261,EQ               ; |815| 
        ; branch occurs ; |815| 
        SETC      SXM
        MOV       ACC,AL                ; |816| 
        MOVL      *-SP[2],ACC           ; |816| 
        MOVB      ACC,#6
        BF        L285,UNC              ; |816| 
        ; branch occurs ; |816| 
L261:    
        MOVL      XAR4,#512             ; |817| 
        MOVB      ACC,#1
        MOVL      XAR5,XAR1             ; |817| 
        MOVL      *-SP[2],XAR4          ; |817| 
        MOVL      XAR4,#_buffer         ; |817| 
        LCR       #_fm_read             ; |817| 
        ; call occurs [#_fm_read] ; |817| 
        TEST      ACC                   ; |817| 
        MOVL      XAR6,ACC              ; |817| 
        BF        L262,EQ               ; |817| 
        ; branch occurs ; |817| 
        MOVB      ACC,#7
        BF        L287,UNC              ; |818| 
        ; branch occurs ; |818| 
L262:    
        MOVL      XAR4,#FSL76           ; |821| 
        LCR       #_fm_filelength       ; |821| 
        ; call occurs [#_fm_filelength] ; |821| 
        TEST      ACC                   ; |821| 
        MOVL      XAR6,ACC              ; |821| 
        BF        L263,EQ               ; |821| 
        ; branch occurs ; |821| 
        MOVB      ACC,#8
        BF        L287,UNC              ; |822| 
        ; branch occurs ; |822| 
L263:    
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |823| 
        ; call occurs [#_fm_close] ; |823| 
        CMPB      AL,#0                 ; |823| 
        BF        L264,EQ               ; |823| 
        ; branch occurs ; |823| 
        SETC      SXM
        MOV       ACC,AL                ; |824| 
        MOVL      *-SP[2],ACC           ; |824| 
        MOVB      ACC,#9
        BF        L285,UNC              ; |824| 
        ; branch occurs ; |824| 
L264:    
        MOVL      XAR4,#FSL76           ; |825| 
        LCR       #_fm_filelength       ; |825| 
        ; call occurs [#_fm_filelength] ; |825| 
        MOVL      XAR6,ACC              ; |825| 
        MOV       ACC,#512              ; |825| 
        CMPL      ACC,XAR6              ; |825| 
        BF        L265,EQ               ; |825| 
        ; branch occurs ; |825| 
        MOVB      ACC,#10
        BF        L287,UNC              ; |826| 
        ; branch occurs ; |826| 
L265:    
        MOVL      XAR5,#FSL72           ; |829| 
        MOVL      XAR4,#FSL76           ; |829| 
        LCR       #_fm_open             ; |829| 
        ; call occurs [#_fm_open] ; |829| 
        MOVL      XAR1,XAR4             ; |829| 
        MOVL      ACC,XAR4              ; |829| 
        BF        L266,NEQ              ; |829| 
        ; branch occurs ; |829| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |830| 
        MOVB      ACC,#11
        BF        L285,UNC              ; |830| 
        ; branch occurs ; |830| 
L266:    
        MOVL      XAR4,#FSL76           ; |833| 
        LCR       #_fm_filelength       ; |833| 
        ; call occurs [#_fm_filelength] ; |833| 
        TEST      ACC                   ; |833| 
        MOVL      XAR6,ACC              ; |833| 
        BF        L267,EQ               ; |833| 
        ; branch occurs ; |833| 
        MOVB      ACC,#12
        BF        L287,UNC              ; |834| 
        ; branch occurs ; |834| 
L267:    
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |835| 
        ; call occurs [#_fm_close] ; |835| 
        CMPB      AL,#0                 ; |835| 
        BF        L268,EQ               ; |835| 
        ; branch occurs ; |835| 
        SETC      SXM
        MOV       ACC,AL                ; |836| 
        MOVL      *-SP[2],ACC           ; |836| 
        MOVB      ACC,#13
        BF        L285,UNC              ; |836| 
        ; branch occurs ; |836| 
L268:    
        MOVL      XAR4,#FSL76           ; |837| 
        LCR       #_fm_filelength       ; |837| 
        ; call occurs [#_fm_filelength] ; |837| 
        TEST      ACC                   ; |837| 
        MOVL      XAR6,ACC              ; |837| 
        BF        L269,EQ               ; |837| 
        ; branch occurs ; |837| 
        MOVB      ACC,#14
        BF        L287,UNC              ; |838| 
        ; branch occurs ; |838| 
L269:    
        MOVL      XAR5,#FSL5            ; |843| 
        MOVL      XAR4,#FSL76           ; |843| 
        LCR       #_fm_open             ; |843| 
        ; call occurs [#_fm_open] ; |843| 
        MOVL      XAR1,XAR4             ; |843| 
        MOVL      ACC,XAR4              ; |843| 
        BF        L270,NEQ              ; |843| 
        ; branch occurs ; |843| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |844| 
        MOVB      ACC,#15
        BF        L285,UNC              ; |844| 
        ; branch occurs ; |844| 
L270:    
        MOVL      XAR4,XAR3             ; |847| 
        MOV       ACC,#1 << 9
        MOVB      XAR5,#1               ; |847| 
        LCR       #_memset              ; |847| 
        ; call occurs [#_memset] ; |847| 
        MOVL      XAR4,#512             ; |848| 
        MOVL      *-SP[2],XAR4          ; |848| 
        MOVL      XAR5,XAR1             ; |848| 
        MOVL      XAR4,XAR3             ; |848| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |848| 
        ; call occurs [#_fm_write] ; |848| 
        MOVL      XAR6,ACC              ; |848| 
        MOV       ACC,#512              ; |848| 
        CMPL      ACC,XAR6              ; |848| 
        BF        L271,EQ               ; |848| 
        ; branch occurs ; |848| 
        MOVB      ACC,#16
        BF        L287,UNC              ; |849| 
        ; branch occurs ; |849| 
L271:    
        MOVL      XAR4,XAR1
        LCR       #_fm_rewind           ; |852| 
        ; call occurs [#_fm_rewind] ; |852| 
        MOVL      XAR4,#512             ; |853| 
        MOVL      XAR5,XAR1             ; |853| 
        MOVB      ACC,#1
        MOVL      *-SP[2],XAR4          ; |853| 
        MOVL      XAR4,#_buffer         ; |853| 
        LCR       #_fm_read             ; |853| 
        ; call occurs [#_fm_read] ; |853| 
        TEST      ACC                   ; |853| 
        MOVL      XAR6,ACC              ; |853| 
        BF        L272,EQ               ; |853| 
        ; branch occurs ; |853| 
        MOVB      ACC,#17
        BF        L287,UNC              ; |854| 
        ; branch occurs ; |854| 
L272:    
        MOVL      XAR4,XAR3             ; |857| 
        MOV       ACC,#1 << 9
        MOVB      XAR5,#2               ; |857| 
        LCR       #_memset              ; |857| 
        ; call occurs [#_memset] ; |857| 
        MOVL      XAR4,#256             ; |858| 
        MOVL      *-SP[2],XAR4          ; |858| 
        MOVL      XAR5,XAR1             ; |858| 
        MOVL      XAR4,XAR3             ; |858| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |858| 
        ; call occurs [#_fm_write] ; |858| 
        MOVL      XAR6,ACC              ; |858| 
        MOV       ACC,#256              ; |858| 
        CMPL      ACC,XAR6              ; |858| 
        BF        L273,EQ               ; |858| 
        ; branch occurs ; |858| 
        MOVB      ACC,#18
        BF        L287,UNC              ; |859| 
        ; branch occurs ; |859| 
L273:    
        MOVL      XAR4,XAR1
        LCR       #_fm_tell             ; |860| 
        ; call occurs [#_fm_tell] ; |860| 
        MOVL      XAR2,ACC              ; |860| 
        MOV       ACC,#256              ; |860| 
        CMPL      ACC,XAR2              ; |860| 
        BF        L274,EQ               ; |860| 
        ; branch occurs ; |860| 
        MOVB      ACC,#19
        BF        L289,UNC              ; |861| 
        ; branch occurs ; |861| 
L274:    
        MOVL      XAR4,#FSL76           ; |862| 
        LCR       #_fm_filelength       ; |862| 
        ; call occurs [#_fm_filelength] ; |862| 
        TEST      ACC                   ; |862| 
        MOVL      XAR6,ACC              ; |862| 
        BF        L275,EQ               ; |862| 
        ; branch occurs ; |862| 
        MOVB      ACC,#20
        BF        L287,UNC              ; |863| 
        ; branch occurs ; |863| 
L275:    
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |865| 
        ; call occurs [#_fm_close] ; |865| 
        CMPB      AL,#0                 ; |865| 
        BF        L276,EQ               ; |865| 
        ; branch occurs ; |865| 
        SETC      SXM
        MOV       ACC,AL                ; |866| 
        MOVL      *-SP[2],ACC           ; |866| 
        MOVB      ACC,#21
        BF        L285,UNC              ; |866| 
        ; branch occurs ; |866| 
L276:    
        MOVL      XAR4,#FSL76           ; |867| 
        LCR       #_fm_filelength       ; |867| 
        ; call occurs [#_fm_filelength] ; |867| 
        MOVL      XAR6,ACC              ; |867| 
        MOV       ACC,#512              ; |867| 
        CMPL      ACC,XAR6              ; |867| 
        BF        L277,EQ               ; |867| 
        ; branch occurs ; |867| 
        MOVB      ACC,#22
        BF        L287,UNC              ; |868| 
        ; branch occurs ; |868| 
L277:    
        MOVL      XAR5,#FSL78           ; |872| 
        MOVL      XAR4,#FSL76           ; |872| 
        LCR       #_fm_open             ; |872| 
        ; call occurs [#_fm_open] ; |872| 
        MOVL      XAR1,XAR4             ; |872| 
        MOVL      ACC,XAR4              ; |872| 
        BF        L278,NEQ              ; |872| 
        ; branch occurs ; |872| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |873| 
        MOVB      ACC,#23
        BF        L285,UNC              ; |873| 
        ; branch occurs ; |873| 
L278:    
        MOVL      XAR4,XAR1
        LCR       #_fm_tell             ; |874| 
        ; call occurs [#_fm_tell] ; |874| 
        MOVL      XAR2,ACC              ; |874| 
        MOV       ACC,#512              ; |874| 
        CMPL      ACC,XAR2              ; |874| 
        BF        L279,EQ               ; |874| 
        ; branch occurs ; |874| 
        MOVB      ACC,#24
        BF        L289,UNC              ; |875| 
        ; branch occurs ; |875| 
L279:    
        MOVL      XAR4,XAR3             ; |878| 
        MOV       ACC,#1 << 9
        MOVB      XAR5,#3               ; |878| 
        LCR       #_memset              ; |878| 
        ; call occurs [#_memset] ; |878| 
        MOVL      XAR4,#512             ; |879| 
        MOVL      *-SP[2],XAR4          ; |879| 
        MOVL      XAR5,XAR1             ; |879| 
        MOVL      XAR4,XAR3             ; |879| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |879| 
        ; call occurs [#_fm_write] ; |879| 
        MOVL      XAR6,ACC              ; |879| 
        MOV       ACC,#512              ; |879| 
        CMPL      ACC,XAR6              ; |879| 
        BF        L280,EQ               ; |879| 
        ; branch occurs ; |879| 
        MOVB      ACC,#25
        BF        L287,UNC              ; |880| 
        ; branch occurs ; |880| 
L280:    
        MOVL      XAR4,XAR1
        LCR       #_fm_rewind           ; |883| 
        ; call occurs [#_fm_rewind] ; |883| 
        CMPB      AL,#0                 ; |883| 
        BF        L281,EQ               ; |883| 
        ; branch occurs ; |883| 
        SETC      SXM
        MOV       ACC,AL                ; |884| 
        MOVL      *-SP[2],ACC           ; |884| 
        MOVB      ACC,#26
        BF        L285,UNC              ; |884| 
        ; branch occurs ; |884| 
L281:    
        MOVL      XAR4,#512             ; |885| 
        MOVB      ACC,#1
        MOVL      XAR5,XAR1             ; |885| 
        MOVL      *-SP[2],XAR4          ; |885| 
        MOVL      XAR4,#_buffer         ; |885| 
        LCR       #_fm_read             ; |885| 
        ; call occurs [#_fm_read] ; |885| 
        MOVL      XAR6,ACC              ; |885| 
        MOV       ACC,#512              ; |885| 
        CMPL      ACC,XAR6              ; |885| 
        BF        L282,EQ               ; |885| 
        ; branch occurs ; |885| 
        MOVB      ACC,#27
        BF        L287,UNC              ; |886| 
        ; branch occurs ; |886| 
L282:    
        MOVL      XAR4,XAR1
        LCR       #_fm_tell             ; |887| 
        ; call occurs [#_fm_tell] ; |887| 
        MOVL      XAR2,ACC              ; |887| 
        MOV       ACC,#512              ; |887| 
        CMPL      ACC,XAR2              ; |887| 
        BF        L283,EQ               ; |887| 
        ; branch occurs ; |887| 
        MOVB      ACC,#28
        BF        L289,UNC              ; |888| 
        ; branch occurs ; |888| 
L283:    
        MOVL      XAR4,#FSL76           ; |891| 
        LCR       #_fm_filelength       ; |891| 
        ; call occurs [#_fm_filelength] ; |891| 
        MOVL      XAR6,ACC              ; |891| 
        MOV       ACC,#512              ; |891| 
        CMPL      ACC,XAR6              ; |891| 
        BF        L284,EQ               ; |891| 
        ; branch occurs ; |891| 
        MOVB      ACC,#29
        BF        L287,UNC              ; |892| 
        ; branch occurs ; |892| 
L284:    
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |893| 
        ; call occurs [#_fm_close] ; |893| 
        CMPB      AL,#0                 ; |893| 
        BF        L286,EQ               ; |893| 
        ; branch occurs ; |893| 
        SETC      SXM
        MOV       ACC,AL                ; |894| 
        MOVL      *-SP[2],ACC           ; |894| 
        MOVB      ACC,#30
L285:    
        LCR       #__f_result           ; |894| 
        ; call occurs [#__f_result] ; |894| 
        BF        L291,UNC              ; |894| 
        ; branch occurs ; |894| 
L286:    
        MOVL      XAR4,#FSL76           ; |895| 
        LCR       #_fm_filelength       ; |895| 
        ; call occurs [#_fm_filelength] ; |895| 
        MOVL      XAR6,ACC              ; |895| 
        MOV       ACC,#1024             ; |895| 
        CMPL      ACC,XAR6              ; |895| 
        BF        L288,EQ               ; |895| 
        ; branch occurs ; |895| 
        MOVB      ACC,#31
L287:    
        MOVL      *-SP[2],XAR6          ; |896| 
        BF        L285,UNC              ; |896| 
        ; branch occurs ; |896| 
L288:    
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |899| 
        ; call occurs [#_fm_close] ; |899| 
        CMPB      AL,#8                 ; |899| 
        BF        L290,EQ               ; |899| 
        ; branch occurs ; |899| 
        MOVB      ACC,#32
L289:    
        MOVL      *-SP[2],XAR2          ; |900| 
        BF        L285,UNC              ; |900| 
        ; branch occurs ; |900| 
L290:    
        MOVL      XAR4,#FSL3            ; |905| 
        LCR       #__f_dump             ; |905| 
        ; call occurs [#__f_dump] ; |905| 
        MOVB      ACC,#0
L291:    
        SUBB      SP,#2                 ; |906| 
        MOVL      XAR3,*--SP            ; |906| 
        MOVL      XAR2,*--SP            ; |906| 
        MOVL      XAR1,*--SP            ; |906| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_f_appending

;***************************************************************
;* FNAME: _f_appending                  FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

_f_appending:
        MOVL      *SP++,XAR1
        MOVL      XAR4,#FSL80           ; |915| 
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#4
        LCR       #__f_dump             ; |915| 
        ; call occurs [#__f_dump] ; |915| 
        MOVB      XAR4,#0
        MOVB      ACC,#1
        LCR       #_fm_format           ; |917| 
        ; call occurs [#_fm_format] ; |917| 
        CMPB      AL,#0                 ; |917| 
        BF        L292,EQ               ; |917| 
        ; branch occurs ; |917| 
        SETC      SXM
        MOV       ACC,AL                ; |918| 
        MOVL      *-SP[2],ACC           ; |918| 
        MOVB      ACC,#0
        BF        L317,UNC              ; |918| 
        ; branch occurs ; |918| 
L292:    
        MOVB      ACC,#0
        MOVL      *-SP[4],ACC           ; |920| 
        MOVL      XAR1,*-SP[4]          ; |920| 
L293:    
        MOVL      XAR5,#FSL5            ; |921| 
        MOVL      XAR4,#FSL81           ; |921| 
        LCR       #_fm_open             ; |921| 
        ; call occurs [#_fm_open] ; |921| 
        MOVL      XAR2,XAR4             ; |921| 
        MOVL      ACC,XAR4              ; |921| 
        BF        L294,NEQ              ; |921| 
        ; branch occurs ; |921| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |922| 
        MOVB      ACC,#1
        BF        L317,UNC              ; |922| 
        ; branch occurs ; |922| 
L294:    
        MOVL      XAR3,#_buffer         ; |924| 
        MOVZ      AR5,AR1               ; |924| 
        MOVL      XAR4,XAR3             ; |924| 
        MOV       ACC,#1 << 15
        LCR       #_memset              ; |924| 
        ; call occurs [#_memset] ; |924| 
        MOVB      ACC,#128
        MOVL      XAR5,XAR2             ; |925| 
        MOVL      XAR4,XAR3             ; |925| 
        ADDL      ACC,XAR1
        MOVL      *-SP[2],ACC           ; |925| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |925| 
        ; call occurs [#_fm_write] ; |925| 
        MOVL      XAR6,ACC              ; |925| 
        SUBL      ACC,XAR1
        MOVL      XAR7,ACC              ; |926| 
        MOVB      ACC,#128
        CMPL      ACC,XAR7              ; |926| 
        BF        L295,EQ               ; |926| 
        ; branch occurs ; |926| 
        MOVB      ACC,#2
        BF        L307,UNC              ; |926| 
        ; branch occurs ; |926| 
L295:    
        MOVL      XAR4,#FSL81           ; |928| 
        LCR       #_fm_filelength       ; |928| 
        ; call occurs [#_fm_filelength] ; |928| 
        MOVL      XAR6,ACC              ; |928| 
        MOVL      ACC,*-SP[4]           ; |928| 
        CMPL      ACC,XAR6              ; |929| 
        BF        L296,EQ               ; |929| 
        ; branch occurs ; |929| 
        MOVB      ACC,#3
        BF        L307,UNC              ; |929| 
        ; branch occurs ; |929| 
L296:    
        MOVL      ACC,*-SP[4]
        MOVL      XAR4,XAR2             ; |931| 
        ADDL      ACC,XAR1
        ADDB      ACC,#128              ; |931| 
        MOVL      *-SP[4],ACC           ; |931| 
        LCR       #_fm_close            ; |933| 
        ; call occurs [#_fm_close] ; |933| 
        CMPB      AL,#0                 ; |933| 
        BF        L297,EQ               ; |933| 
        ; branch occurs ; |933| 
        SETC      SXM
        MOV       ACC,AL                ; |934| 
        MOVL      *-SP[2],ACC           ; |934| 
        MOVB      ACC,#4
        BF        L317,UNC              ; |934| 
        ; branch occurs ; |934| 
L297:    
        MOVL      XAR4,#FSL81           ; |936| 
        LCR       #_fm_filelength       ; |936| 
        ; call occurs [#_fm_filelength] ; |936| 
        MOVL      XAR6,ACC              ; |936| 
        MOVL      ACC,*-SP[4]           ; |936| 
        CMPL      ACC,XAR6              ; |937| 
        BF        L298,EQ               ; |937| 
        ; branch occurs ; |937| 
        MOVB      ACC,#5
        BF        L307,UNC              ; |937| 
        ; branch occurs ; |937| 
L298:    
        MOVL      ACC,XAR1
        ADDB      ACC,#1                ; |938| 
        MOVL      XAR1,ACC              ; |938| 
        MOVB      ACC,#32
        CMPL      ACC,XAR1              ; |938| 
        BF        L293,GT               ; |938| 
        ; branch occurs ; |938| 
        MOVL      XAR5,#FSL74           ; |940| 
        MOVL      XAR4,#FSL81           ; |940| 
        LCR       #_fm_open             ; |940| 
        ; call occurs [#_fm_open] ; |940| 
        MOVL      XAR2,XAR4             ; |940| 
        MOVL      ACC,XAR4              ; |940| 
        BF        L299,NEQ              ; |940| 
        ; branch occurs ; |940| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |941| 
        MOVB      ACC,#6
        BF        L317,UNC              ; |941| 
        ; branch occurs ; |941| 
L299:    
        MOVB      XAR1,#0
L300:    
        MOVZ      AR5,AR1               ; |944| 
        MOVL      XAR4,XAR2             ; |944| 
        MOVB      ACC,#128
        ADDL      ACC,XAR1
        LCR       #_checkfilecontent    ; |944| 
        ; call occurs [#_checkfilecontent] ; |944| 
        CMPB      AL,#0                 ; |944| 
        BF        L301,EQ               ; |944| 
        ; branch occurs ; |944| 
        MOVB      ACC,#7
        MOVL      *-SP[2],XAR1          ; |944| 
        BF        L317,UNC              ; |944| 
        ; branch occurs ; |944| 
L301:    
        MOVL      ACC,XAR1
        ADDB      ACC,#1                ; |945| 
        MOVL      XAR1,ACC              ; |945| 
        MOVB      ACC,#32
        CMPL      ACC,XAR1              ; |945| 
        BF        L300,GT               ; |945| 
        ; branch occurs ; |945| 
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |947| 
        ; call occurs [#_fm_close] ; |947| 
        CMPB      AL,#0                 ; |947| 
        BF        L302,EQ               ; |947| 
        ; branch occurs ; |947| 
        SETC      SXM
        MOV       ACC,AL                ; |948| 
        MOVL      *-SP[2],ACC           ; |948| 
        MOVB      ACC,#8
        BF        L317,UNC              ; |948| 
        ; branch occurs ; |948| 
L302:    
        MOVB      ACC,#0
        MOVL      *-SP[4],ACC           ; |950| 
        MOVL      XAR1,*-SP[4]          ; |950| 
L303:    
        MOVL      XAR5,#FSL74           ; |951| 
        MOVL      XAR4,#FSL81           ; |951| 
        LCR       #_fm_open             ; |951| 
        ; call occurs [#_fm_open] ; |951| 
        MOVL      XAR2,XAR4             ; |951| 
        MOVL      ACC,XAR4              ; |951| 
        BF        L304,NEQ              ; |951| 
        ; branch occurs ; |951| 
        MOVB      ACC,#0
        BF        L314,UNC              ; |952| 
        ; branch occurs ; |952| 
L304:    
        MOVB      ACC,#0
        MOVL      XAR4,XAR2             ; |954| 
        MOVL      *-SP[2],ACC           ; |954| 
        MOVL      ACC,*-SP[4]           ; |954| 
        LCR       #_fm_seek             ; |954| 
        ; call occurs [#_fm_seek] ; |954| 
        CMPB      AL,#0                 ; |954| 
        BF        L305,EQ               ; |954| 
        ; branch occurs ; |954| 
        SETC      SXM
        MOV       ACC,AL                ; |955| 
        MOVL      *-SP[2],ACC           ; |955| 
        MOVB      ACC,#10
        BF        L317,UNC              ; |955| 
        ; branch occurs ; |955| 
L305:    
        MOVL      XAR4,XAR2
        LCR       #_fm_tell             ; |957| 
        ; call occurs [#_fm_tell] ; |957| 
        MOVL      XAR6,ACC              ; |957| 
        MOVL      ACC,*-SP[4]           ; |957| 
        CMPL      ACC,XAR6              ; |958| 
        BF        L306,EQ               ; |958| 
        ; branch occurs ; |958| 
        MOVB      ACC,#11
        BF        L307,UNC              ; |958| 
        ; branch occurs ; |958| 
L306:    
        MOVB      ACC,#128
        MOVL      XAR5,XAR2             ; |960| 
        MOVL      XAR4,#_buffer         ; |960| 
        ADDL      ACC,XAR1
        MOVL      *-SP[2],ACC           ; |960| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |960| 
        ; call occurs [#_fm_read] ; |960| 
        MOVL      XAR6,ACC              ; |960| 
        SUBL      ACC,XAR1
        MOVL      XAR7,ACC              ; |961| 
        MOVB      ACC,#128
        CMPL      ACC,XAR7              ; |961| 
        BF        L308,EQ               ; |961| 
        ; branch occurs ; |961| 
        MOVB      ACC,#12
L307:    
        MOVL      *-SP[2],XAR6          ; |961| 
        BF        L317,UNC              ; |961| 
        ; branch occurs ; |961| 
L308:    
        MOVB      XAR6,#0
        MOVB      ACC,#0
        SUBB      ACC,#128
        CMPL      ACC,XAR1              ; |963| 
        BF        L311,GEQ              ; |963| 
        ; branch occurs ; |963| 
L309:    
        MOVL      ACC,XAR6              ; |964| 
        MOVL      XAR4,#_buffer         ; |964| 
        ADDL      XAR4,ACC
        MOV       AL,AR1                ; |964| 
        CMP       AL,*+XAR4[0]          ; |964| 
        BF        L310,EQ               ; |964| 
        ; branch occurs ; |964| 
        MOVL      *-SP[2],XAR1          ; |964| 
        BF        L312,UNC              ; |964| 
        ; branch occurs ; |964| 
L310:    
        MOVL      ACC,XAR6
        ADDB      ACC,#1                ; |965| 
        MOVL      XAR6,ACC              ; |965| 
        MOVL      ACC,XAR1              ; |965| 
        ADDB      ACC,#128              ; |965| 
        CMPL      ACC,XAR6              ; |965| 
        BF        L309,GT               ; |965| 
        ; branch occurs ; |965| 
L311:    
        MOVL      ACC,*-SP[4]
        MOVL      XAR4,XAR2             ; |967| 
        ADDL      ACC,XAR1
        ADDB      ACC,#128              ; |967| 
        MOVL      *-SP[4],ACC           ; |967| 
        LCR       #_fm_tell             ; |969| 
        ; call occurs [#_fm_tell] ; |969| 
        MOVL      XAR6,ACC              ; |969| 
        MOVL      ACC,*-SP[4]           ; |969| 
        CMPL      ACC,XAR6              ; |970| 
        BF        L313,EQ               ; |970| 
        ; branch occurs ; |970| 
        MOVL      *-SP[2],XAR6          ; |970| 
L312:    
        MOVB      ACC,#13
        BF        L317,UNC              ; |970| 
        ; branch occurs ; |970| 
L313:    
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |972| 
        ; call occurs [#_fm_close] ; |972| 
        CMPB      AL,#0                 ; |972| 
        BF        L316,NEQ              ; |972| 
        ; branch occurs ; |972| 
        MOVL      ACC,XAR1
        ADDB      ACC,#1                ; |974| 
        MOVL      XAR1,ACC              ; |974| 
        MOVB      ACC,#32
        CMPL      ACC,XAR1              ; |974| 
        BF        L303,GT               ; |974| 
        ; branch occurs ; |974| 
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |976| 
        ; call occurs [#_fm_close] ; |976| 
        CMPB      AL,#8                 ; |976| 
        BF        L315,EQ               ; |976| 
        ; branch occurs ; |976| 
        SETC      SXM
        MOV       ACC,AL                ; |977| 
L314:    
        MOVL      *-SP[2],ACC           ; |977| 
        MOVB      ACC,#9
        BF        L317,UNC              ; |977| 
        ; branch occurs ; |977| 
L315:    
        MOVL      XAR4,#FSL81           ; |980| 
        LCR       #_fm_delete           ; |980| 
        ; call occurs [#_fm_delete] ; |980| 
        CMPB      AL,#0                 ; |980| 
        BF        L318,EQ               ; |980| 
        ; branch occurs ; |980| 
L316:    
        SETC      SXM
        MOV       ACC,AL                ; |981| 
        MOVL      *-SP[2],ACC           ; |981| 
        MOVB      ACC,#14
L317:    
        LCR       #__f_result           ; |981| 
        ; call occurs [#__f_result] ; |981| 
        BF        L319,UNC              ; |981| 
        ; branch occurs ; |981| 
L318:    
        MOVL      XAR4,#FSL3            ; |984| 
        LCR       #__f_dump             ; |984| 
        ; call occurs [#__f_dump] ; |984| 
        MOVB      ACC,#0
L319:    
        SUBB      SP,#4                 ; |985| 
        MOVL      XAR3,*--SP            ; |985| 
        MOVL      XAR2,*--SP            ; |985| 
        MOVL      XAR1,*--SP            ; |985| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_f_writing

;***************************************************************
;* FNAME: _f_writing                    FR SIZE: 2108           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 2100 Auto,  6 SOE     *
;***************************************************************

_f_writing:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      XAR4,#FSL82           ; |994| 
        MOVL      *SP++,XAR3
        MOVZ      AR2,SP
        ADD       SP,#2102
        LCR       #__f_dump             ; |994| 
        ; call occurs [#__f_dump] ; |994| 
        MOVZ      AR4,SP                ; |996| 
        MOVB      AL,#0
        SUBB      XAR4,#18              ; |996| 
        LCR       #_fm_getfreespace     ; |996| 
        ; call occurs [#_fm_getfreespace] ; |996| 
        SUBB      FP,#8
        CMPB      AL,#0                 ; |996| 
        BF        L320,EQ               ; |996| 
        ; branch occurs ; |996| 
        SETC      SXM
        MOV       ACC,AL                ; |997| 
        MOVL      *-SP[2],ACC           ; |997| 
        MOVB      ACC,#0
        BF        L368,UNC              ; |997| 
        ; branch occurs ; |997| 
L320:    
        MOVL      XAR0,#10              ; |999| 
        MOVB      ACC,#0
        MOVL      *+FP[AR0],ACC         ; |999| 
L321:    
        MOVL      XAR5,#FSL79           ; |1000| 
        MOVL      XAR4,#FSL83           ; |1000| 
        LCR       #_fm_open             ; |1000| 
        ; call occurs [#_fm_open] ; |1000| 
        MOVL      XAR0,#8               ; |1000| 
        MOVL      *+FP[AR0],XAR4        ; |1000| 
        MOVL      XAR0,#8               ; |1000| 
        MOVL      ACC,*+FP[AR0]         ; |1000| 
        BF        L322,NEQ              ; |1000| 
        ; branch occurs ; |1000| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1001| 
        MOVB      ACC,#1
        BF        L368,UNC              ; |1001| 
        ; branch occurs ; |1001| 
L322:    
        MOVL      XAR0,#10              ; |1003| 
        MOVL      XAR3,#_buffer         ; |1003| 
        MOVL      XAR4,XAR3             ; |1003| 
        MOVZ      AR5,*+FP[AR0]         ; |1003| 
        MOV       ACC,#1 << 15
        LCR       #_memset              ; |1003| 
        ; call occurs [#_memset] ; |1003| 
        MOVL      XAR0,#10              ; |1003| 
        MOVL      ACC,*+FP[AR0]         ; |1003| 
        MOVL      XAR0,#8               ; |1004| 
        LSL       ACC,7                 ; |1004| 
        MOVL      XAR4,XAR3             ; |1004| 
        MOVL      *-SP[2],ACC           ; |1004| 
        MOVL      XAR5,*+FP[AR0]        ; |1004| 
        MOVL      XAR1,ACC              ; |1004| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1004| 
        ; call occurs [#_fm_write] ; |1004| 
        MOVL      XAR6,ACC              ; |1004| 
        MOVL      ACC,XAR1              ; |1004| 
        CMPL      ACC,XAR6              ; |1005| 
        BF        L323,EQ               ; |1005| 
        ; branch occurs ; |1005| 
        MOVB      ACC,#2
        BF        L333,UNC              ; |1005| 
        ; branch occurs ; |1005| 
L323:    
        MOVL      XAR0,#8
        MOVL      XAR4,*+FP[AR0]
        LCR       #_fm_close            ; |1007| 
        ; call occurs [#_fm_close] ; |1007| 
        CMPB      AL,#0                 ; |1007| 
        BF        L324,EQ               ; |1007| 
        ; branch occurs ; |1007| 
        SETC      SXM
        MOV       ACC,AL                ; |1008| 
        MOVL      *-SP[2],ACC           ; |1008| 
        MOVB      ACC,#3
        BF        L368,UNC              ; |1008| 
        ; branch occurs ; |1008| 
L324:    
        MOVL      XAR4,#FSL83           ; |1010| 
        LCR       #_fm_filelength       ; |1010| 
        ; call occurs [#_fm_filelength] ; |1010| 
        MOVL      XAR0,#10              ; |1010| 
        MOVL      XAR6,ACC              ; |1010| 
        MOVL      ACC,*+FP[AR0]         ; |1010| 
        LSL       ACC,7                 ; |1011| 
        CMPL      ACC,XAR6              ; |1011| 
        BF        L325,EQ               ; |1011| 
        ; branch occurs ; |1011| 
        MOVB      ACC,#4
        BF        L333,UNC              ; |1011| 
        ; branch occurs ; |1011| 
L325:    
        MOVL      XAR5,#FSL74           ; |1013| 
        MOVL      XAR4,#FSL83           ; |1013| 
        LCR       #_fm_open             ; |1013| 
        ; call occurs [#_fm_open] ; |1013| 
        MOVL      XAR0,#8               ; |1013| 
        MOVL      *+FP[AR0],XAR4        ; |1013| 
        MOVL      XAR0,#8               ; |1013| 
        MOVL      ACC,*+FP[AR0]         ; |1013| 
        BF        L326,NEQ              ; |1013| 
        ; branch occurs ; |1013| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1014| 
        MOVB      ACC,#5
        BF        L368,UNC              ; |1014| 
        ; branch occurs ; |1014| 
L326:    
        MOVL      XAR0,#10
        MOVL      ACC,*+FP[AR0]
        MOVL      XAR0,#10              ; |1016| 
        MOVZ      AR5,*+FP[AR0]         ; |1016| 
        MOVL      XAR0,#8               ; |1016| 
        MOVL      XAR4,*+FP[AR0]        ; |1016| 
        LSL       ACC,7                 ; |1016| 
        LCR       #_checkfilecontent    ; |1016| 
        ; call occurs [#_checkfilecontent] ; |1016| 
        CMPB      AL,#0                 ; |1016| 
        BF        L327,EQ               ; |1016| 
        ; branch occurs ; |1016| 
        MOVL      XAR0,#10
        MOVL      ACC,*+FP[AR0]
        MOVL      *-SP[2],ACC           ; |1016| 
        MOVB      ACC,#6
        BF        L368,UNC              ; |1016| 
        ; branch occurs ; |1016| 
L327:    
        MOVL      XAR0,#8
        MOVL      XAR4,*+FP[AR0]
        LCR       #_fm_close            ; |1018| 
        ; call occurs [#_fm_close] ; |1018| 
        CMPB      AL,#0                 ; |1018| 
        BF        L328,EQ               ; |1018| 
        ; branch occurs ; |1018| 
        SETC      SXM
        MOV       ACC,AL                ; |1019| 
        MOVL      *-SP[2],ACC           ; |1019| 
        MOVB      ACC,#7
        BF        L368,UNC              ; |1019| 
        ; branch occurs ; |1019| 
L328:    
        MOVL      XAR0,#10
        MOVL      ACC,*+FP[AR0]
        MOVL      XAR0,#10              ; |1020| 
        ADDB      ACC,#1                ; |1020| 
        MOVL      *+FP[AR0],ACC         ; |1020| 
        MOVL      XAR0,#10              ; |1020| 
        MOVL      XAR6,*+FP[AR0]        ; |1020| 
        MOVB      ACC,#16
        CMPL      ACC,XAR6              ; |1020| 
        BF        L321,GT               ; |1020| 
        ; branch occurs ; |1020| 
        MOVL      XAR0,#10              ; |1023| 
        MOVB      ACC,#0
        MOVL      *+FP[AR0],ACC         ; |1023| 
L329:    
        MOVL      XAR5,#FSL72           ; |1024| 
        MOVL      XAR4,#FSL83           ; |1024| 
        LCR       #_fm_open             ; |1024| 
        ; call occurs [#_fm_open] ; |1024| 
        MOVL      XAR0,#8               ; |1024| 
        MOVL      *+FP[AR0],XAR4        ; |1024| 
        MOVL      XAR0,#8               ; |1024| 
        MOVL      ACC,*+FP[AR0]         ; |1024| 
        BF        L330,NEQ              ; |1024| 
        ; branch occurs ; |1024| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1025| 
        MOVB      ACC,#8
        BF        L368,UNC              ; |1025| 
        ; branch occurs ; |1025| 
L330:    
        MOVL      XAR0,#10              ; |1027| 
        MOVL      XAR4,XAR3             ; |1027| 
        MOVZ      AR5,*+FP[AR0]         ; |1027| 
        MOV       ACC,#1 << 15
        LCR       #_memset              ; |1027| 
        ; call occurs [#_memset] ; |1027| 
        MOVL      XAR0,#10              ; |1027| 
        MOVL      ACC,*+FP[AR0]         ; |1027| 
        MOVL      XAR0,#8               ; |1028| 
        LSL       ACC,7                 ; |1028| 
        MOVL      XAR4,XAR3             ; |1028| 
        MOVL      *-SP[2],ACC           ; |1028| 
        MOVL      XAR5,*+FP[AR0]        ; |1028| 
        MOVL      XAR1,ACC              ; |1028| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1028| 
        ; call occurs [#_fm_write] ; |1028| 
        MOVL      XAR6,ACC              ; |1028| 
        MOVL      ACC,XAR1              ; |1028| 
        CMPL      ACC,XAR6              ; |1029| 
        BF        L331,EQ               ; |1029| 
        ; branch occurs ; |1029| 
        MOVB      ACC,#9
        BF        L333,UNC              ; |1029| 
        ; branch occurs ; |1029| 
L331:    
        MOVL      XAR0,#8
        MOVL      XAR4,*+FP[AR0]
        LCR       #_fm_close            ; |1031| 
        ; call occurs [#_fm_close] ; |1031| 
        CMPB      AL,#0                 ; |1031| 
        BF        L332,EQ               ; |1031| 
        ; branch occurs ; |1031| 
        SETC      SXM
        MOV       ACC,AL                ; |1032| 
        MOVL      *-SP[2],ACC           ; |1032| 
        MOVB      ACC,#10
        BF        L368,UNC              ; |1032| 
        ; branch occurs ; |1032| 
L332:    
        MOVL      XAR4,#FSL83           ; |1034| 
        LCR       #_fm_filelength       ; |1034| 
        ; call occurs [#_fm_filelength] ; |1034| 
        MOVL      XAR0,#10              ; |1034| 
        MOVL      XAR6,ACC              ; |1034| 
        MOVL      ACC,*+FP[AR0]         ; |1034| 
        LSL       ACC,7                 ; |1035| 
        CMPL      ACC,XAR6              ; |1035| 
        BF        L334,EQ               ; |1035| 
        ; branch occurs ; |1035| 
        MOVB      ACC,#11
L333:    
        MOVL      *-SP[2],XAR6          ; |1035| 
        BF        L368,UNC              ; |1035| 
        ; branch occurs ; |1035| 
L334:    
        MOVL      XAR5,#FSL77           ; |1037| 
        MOVL      XAR4,#FSL83           ; |1037| 
        LCR       #_fm_open             ; |1037| 
        ; call occurs [#_fm_open] ; |1037| 
        MOVL      XAR0,#8               ; |1037| 
        MOVL      *+FP[AR0],XAR4        ; |1037| 
        MOVL      XAR0,#8               ; |1037| 
        MOVL      ACC,*+FP[AR0]         ; |1037| 
        BF        L335,NEQ              ; |1037| 
        ; branch occurs ; |1037| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1038| 
        MOVB      ACC,#12
        BF        L368,UNC              ; |1038| 
        ; branch occurs ; |1038| 
L335:    
        MOVL      XAR0,#10
        MOVL      ACC,*+FP[AR0]
        MOVL      XAR0,#10              ; |1040| 
        MOVZ      AR5,*+FP[AR0]         ; |1040| 
        MOVL      XAR0,#8               ; |1040| 
        MOVL      XAR4,*+FP[AR0]        ; |1040| 
        LSL       ACC,7                 ; |1040| 
        LCR       #_checkfilecontent    ; |1040| 
        ; call occurs [#_checkfilecontent] ; |1040| 
        CMPB      AL,#0                 ; |1040| 
        BF        L336,EQ               ; |1040| 
        ; branch occurs ; |1040| 
        MOVL      XAR0,#10
        MOVL      ACC,*+FP[AR0]
        MOVL      *-SP[2],ACC           ; |1040| 
        MOVB      ACC,#13
        BF        L368,UNC              ; |1040| 
        ; branch occurs ; |1040| 
L336:    
        MOVL      XAR0,#8
        MOVL      XAR4,*+FP[AR0]
        LCR       #_fm_close            ; |1042| 
        ; call occurs [#_fm_close] ; |1042| 
        CMPB      AL,#0                 ; |1042| 
        BF        L337,EQ               ; |1042| 
        ; branch occurs ; |1042| 
        SETC      SXM
        MOV       ACC,AL                ; |1043| 
        MOVL      *-SP[2],ACC           ; |1043| 
        MOVB      ACC,#14
        BF        L368,UNC              ; |1043| 
        ; branch occurs ; |1043| 
L337:    
        MOVL      XAR0,#10
        MOVL      ACC,*+FP[AR0]
        MOVL      XAR0,#10              ; |1044| 
        ADDB      ACC,#1                ; |1044| 
        MOVL      *+FP[AR0],ACC         ; |1044| 
        MOVL      XAR0,#10              ; |1044| 
        MOVL      XAR6,*+FP[AR0]        ; |1044| 
        MOVB      ACC,#16
        CMPL      ACC,XAR6              ; |1044| 
        BF        L329,GT               ; |1044| 
        ; branch occurs ; |1044| 
        MOVZ      AR4,SP                ; |1046| 
        MOVB      AL,#0
        SUBB      XAR4,#34              ; |1046| 
        LCR       #_fm_getfreespace     ; |1046| 
        ; call occurs [#_fm_getfreespace] ; |1046| 
        CMPB      AL,#0                 ; |1046| 
        BF        L338,EQ               ; |1046| 
        ; branch occurs ; |1046| 
        SETC      SXM
        MOV       ACC,AL                ; |1047| 
        MOVL      *-SP[2],ACC           ; |1047| 
        MOVB      ACC,#15
        BF        L368,UNC              ; |1047| 
        ; branch occurs ; |1047| 
L338:    
        MOVL      ACC,*-SP[28]          ; |1049| 
        CMPL      ACC,*-SP[12]          ; |1049| 
        BF        L339,EQ               ; |1049| 
        ; branch occurs ; |1049| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1049| 
        MOVB      ACC,#16
        BF        L368,UNC              ; |1049| 
        ; branch occurs ; |1049| 
L339:    
        MOVL      ACC,*-SP[32]          ; |1050| 
        CMPL      ACC,*-SP[16]          ; |1050| 
        BF        L340,NEQ              ; |1050| 
        ; branch occurs ; |1050| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1050| 
        MOVB      ACC,#17
        BF        L368,UNC              ; |1050| 
        ; branch occurs ; |1050| 
L340:    
        MOVL      ACC,*-SP[30]          ; |1051| 
        CMPL      ACC,*-SP[14]          ; |1051| 
        BF        L341,NEQ              ; |1051| 
        ; branch occurs ; |1051| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1051| 
        MOVB      ACC,#18
        BF        L368,UNC              ; |1051| 
        ; branch occurs ; |1051| 
L341:    
        MOVL      ACC,*-SP[34]          ; |1052| 
        CMPL      ACC,*-SP[18]          ; |1052| 
        BF        L342,EQ               ; |1052| 
        ; branch occurs ; |1052| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1052| 
        MOVB      ACC,#19
        BF        L368,UNC              ; |1052| 
        ; branch occurs ; |1052| 
L342:    
        MOVL      XAR6,*-SP[14]         ; |1054| 
        MOVL      ACC,*-SP[16]          ; |1054| 
        ADDL      ACC,XAR6
        MOVL      XAR6,*-SP[30]         ; |1054| 
        SUBL      ACC,XAR6
        CMPL      ACC,*-SP[32]          ; |1054| 
        BF        L343,EQ               ; |1054| 
        ; branch occurs ; |1054| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1054| 
        MOVB      ACC,#20
        BF        L368,UNC              ; |1054| 
        ; branch occurs ; |1054| 
L343:    
        MOVL      XAR4,#FSL83           ; |1056| 
        LCR       #_fm_delete           ; |1056| 
        ; call occurs [#_fm_delete] ; |1056| 
        CMPB      AL,#0                 ; |1056| 
        BF        L344,EQ               ; |1056| 
        ; branch occurs ; |1056| 
        SETC      SXM
        MOV       ACC,AL                ; |1057| 
        MOVL      *-SP[2],ACC           ; |1057| 
        MOVB      ACC,#21
        BF        L368,UNC              ; |1057| 
        ; branch occurs ; |1057| 
L344:    
        MOVZ      AR4,SP                ; |1059| 
        MOVB      AL,#0
        SUBB      XAR4,#34              ; |1059| 
        LCR       #_fm_getfreespace     ; |1059| 
        ; call occurs [#_fm_getfreespace] ; |1059| 
        CMPB      AL,#0                 ; |1059| 
        BF        L345,EQ               ; |1059| 
        ; branch occurs ; |1059| 
        SETC      SXM
        MOV       ACC,AL                ; |1060| 
        MOVL      *-SP[2],ACC           ; |1060| 
        MOVB      ACC,#22
        BF        L368,UNC              ; |1060| 
        ; branch occurs ; |1060| 
L345:    
        MOVL      ACC,*-SP[28]          ; |1062| 
        CMPL      ACC,*-SP[12]          ; |1062| 
        BF        L346,EQ               ; |1062| 
        ; branch occurs ; |1062| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1062| 
        MOVB      ACC,#23
        BF        L368,UNC              ; |1062| 
        ; branch occurs ; |1062| 
L346:    
        MOVL      ACC,*-SP[32]          ; |1063| 
        CMPL      ACC,*-SP[16]          ; |1063| 
        BF        L347,EQ               ; |1063| 
        ; branch occurs ; |1063| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1063| 
        MOVB      ACC,#24
        BF        L368,UNC              ; |1063| 
        ; branch occurs ; |1063| 
L347:    
        MOVL      ACC,*-SP[30]          ; |1064| 
        CMPL      ACC,*-SP[14]          ; |1064| 
        BF        L348,EQ               ; |1064| 
        ; branch occurs ; |1064| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1064| 
        MOVB      ACC,#25
        BF        L368,UNC              ; |1064| 
        ; branch occurs ; |1064| 
L348:    
        MOVL      ACC,*-SP[34]          ; |1065| 
        CMPL      ACC,*-SP[18]          ; |1065| 
        BF        L349,EQ               ; |1065| 
        ; branch occurs ; |1065| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1065| 
        MOVB      ACC,#26
        BF        L368,UNC              ; |1065| 
        ; branch occurs ; |1065| 
L349:    
        MOVB      ACC,#1
        MOVB      XAR4,#0
        LCR       #_fm_format           ; |1069| 
        ; call occurs [#_fm_format] ; |1069| 
        CMPB      AL,#0                 ; |1069| 
        BF        L350,EQ               ; |1069| 
        ; branch occurs ; |1069| 
        SETC      SXM
        MOV       ACC,AL                ; |1070| 
        MOVL      *-SP[2],ACC           ; |1070| 
        MOVB      ACC,#27
        BF        L368,UNC              ; |1070| 
        ; branch occurs ; |1070| 
L350:    
        MOVZ      AR4,SP                ; |1072| 
        MOVB      AL,#0
        SUBB      XAR4,#18              ; |1072| 
        LCR       #_fm_getfreespace     ; |1072| 
        ; call occurs [#_fm_getfreespace] ; |1072| 
        CMPB      AL,#0                 ; |1072| 
        BF        L351,EQ               ; |1072| 
        ; branch occurs ; |1072| 
        SETC      SXM
        MOV       ACC,AL                ; |1073| 
        MOVL      *-SP[2],ACC           ; |1073| 
        MOVB      ACC,#28
        BF        L368,UNC              ; |1073| 
        ; branch occurs ; |1073| 
L351:    
        MOVL      XAR0,#10              ; |1081| 
        MOVZ      AR1,SP                ; |1079| 
        MOVB      ACC,#0
        MOVL      *+FP[AR0],ACC         ; |1081| 
        ADD       AR1,#-2082            ; |1079| 
L352:    
        MOVL      XAR0,#10
        MOVL      ACC,*+FP[AR0]
        MOVL      XAR0,#10              ; |1081| 
        LSL       ACC,1                 ; |1081| 
        MOVL      XAR6,*+FP[AR0]        ; |1081| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |1081| 
        MOVL      XAR0,#10              ; |1081| 
        MOVL      *+XAR4[0],XAR6        ; |1081| 
        MOVL      ACC,*+FP[AR0]         ; |1081| 
        MOVL      XAR0,#10              ; |1081| 
        ADDB      ACC,#1                ; |1081| 
        MOVL      *+FP[AR0],ACC         ; |1081| 
        MOVL      XAR0,#10              ; |1081| 
        MOVL      XAR6,*+FP[AR0]        ; |1081| 
        MOV       ACC,#512              ; |1081| 
        CMPL      ACC,XAR6              ; |1081| 
        BF        L352,GT               ; |1081| 
        ; branch occurs ; |1081| 
        MOVL      XAR5,#FSL79           ; |1083| 
        MOVL      XAR4,#FSL83           ; |1083| 
        LCR       #_fm_open             ; |1083| 
        ; call occurs [#_fm_open] ; |1083| 
        MOVL      XAR0,#8               ; |1083| 
        MOVL      *+FP[AR0],XAR4        ; |1083| 
        MOVL      XAR0,#8               ; |1083| 
        MOVL      ACC,*+FP[AR0]         ; |1083| 
        BF        L353,NEQ              ; |1084| 
        ; branch occurs ; |1084| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1085| 
        MOVB      ACC,#29
        BF        L368,UNC              ; |1085| 
        ; branch occurs ; |1085| 
L353:    
        MOVL      XAR4,#2048            ; |1084| 
        MOVL      *-SP[2],XAR4          ; |1084| 
        MOVZ      AR4,SP                ; |1084| 
        MOVL      XAR0,#8               ; |1084| 
        ADD       AR4,#-2082            ; |1084| 
        MOVL      XAR5,*+FP[AR0]        ; |1084| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1084| 
        ; call occurs [#_fm_write] ; |1084| 
        MOVL      XAR0,#8               ; |1084| 
        MOVL      XAR4,*+FP[AR0]        ; |1084| 
        LCR       #_fm_close            ; |1084| 
        ; call occurs [#_fm_close] ; |1084| 
        MOVL      XAR5,#FSL77           ; |1084| 
        MOVL      XAR4,#FSL83           ; |1084| 
        LCR       #_fm_open             ; |1084| 
        ; call occurs [#_fm_open] ; |1084| 
        MOVL      XAR0,#8               ; |1084| 
        MOVL      *+FP[AR0],XAR4        ; |1084| 
        MOVL      XAR0,#8               ; |1084| 
        MOVL      ACC,*+FP[AR0]         ; |1084| 
        BF        L354,NEQ              ; |1088| 
        ; branch occurs ; |1088| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1119| 
        MOVB      ACC,#34
        BF        L368,UNC              ; |1119| 
        ; branch occurs ; |1119| 
L354:    
        MOVL      XAR0,#10              ; |1090| 
        MOVB      ACC,#0
        MOVL      *+FP[AR0],ACC         ; |1090| 
L355:    
        MOVZ      AR4,SP                ; |1090| 
        MOVL      XAR0,#10              ; |1090| 
        ADD       AR4,#-2082            ; |1090| 
        MOVL      ACC,*+FP[AR0]         ; |1090| 
        ADDL      XAR4,ACC
        MOVL      XAR0,#10              ; |1090| 
        MOV       *+XAR4[0],#0          ; |1090| 
        MOVL      ACC,*+FP[AR0]         ; |1090| 
        MOVL      XAR0,#10              ; |1090| 
        ADDB      ACC,#1                ; |1090| 
        MOVL      *+FP[AR0],ACC         ; |1090| 
        MOVL      XAR0,#10              ; |1090| 
        MOVL      XAR6,*+FP[AR0]        ; |1090| 
        MOV       ACC,#2048             ; |1090| 
        CMPL      ACC,XAR6              ; |1090| 
        BF        L355,GT               ; |1090| 
        ; branch occurs ; |1090| 
        MOVL      XAR4,#2048            ; |1091| 
        MOVL      *-SP[2],XAR4          ; |1091| 
        MOVZ      AR4,SP                ; |1091| 
        MOVL      XAR0,#8               ; |1091| 
        ADD       AR4,#-2082            ; |1091| 
        MOVL      XAR5,*+FP[AR0]        ; |1091| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |1091| 
        ; call occurs [#_fm_read] ; |1091| 
        MOVL      XAR0,#10              ; |1092| 
        MOVB      ACC,#0
        MOVL      *+FP[AR0],ACC         ; |1092| 
L356:    
        MOVL      XAR0,#10
        MOVL      ACC,*+FP[AR0]
        MOVL      XAR0,#10              ; |1092| 
        LSL       ACC,1                 ; |1092| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |1092| 
        MOVL      ACC,*+FP[AR0]         ; |1092| 
        CMPL      ACC,*+XAR4[0]         ; |1092| 
        BF        L357,NEQ              ; |1092| 
        ; branch occurs ; |1092| 
        MOVL      XAR0,#10
        MOVL      ACC,*+FP[AR0]
        MOVL      XAR0,#10              ; |1092| 
        ADDB      ACC,#1                ; |1092| 
        MOVL      *+FP[AR0],ACC         ; |1092| 
        MOVL      XAR0,#10              ; |1092| 
        MOVL      XAR6,*+FP[AR0]        ; |1092| 
        MOV       ACC,#512              ; |1092| 
        CMPL      ACC,XAR6              ; |1092| 
        BF        L356,GT               ; |1092| 
        ; branch occurs ; |1092| 
L357:    
        MOVL      XAR0,#10              ; |1093| 
        MOVL      XAR6,*+FP[AR0]        ; |1093| 
        MOV       ACC,#512              ; |1093| 
        CMPL      ACC,XAR6              ; |1093| 
        BF        L358,EQ               ; |1093| 
        ; branch occurs ; |1093| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1115| 
        MOVB      ACC,#33
        BF        L368,UNC              ; |1115| 
        ; branch occurs ; |1115| 
L358:    
        MOVL      XAR0,#8               ; |1095| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1095| 
        MOVL      XAR4,*+FP[AR0]        ; |1095| 
        MOV       ACC,#127 << 4
        LCR       #_fm_seek             ; |1095| 
        ; call occurs [#_fm_seek] ; |1095| 
        MOVL      XAR0,#10              ; |1096| 
        MOVB      ACC,#0
        MOVL      *+FP[AR0],ACC         ; |1096| 
L359:    
        MOVZ      AR4,SP                ; |1096| 
        MOVL      XAR0,#10              ; |1096| 
        ADD       AR4,#-2098            ; |1096| 
        MOVL      ACC,*+FP[AR0]         ; |1096| 
        MOVL      XAR0,#10              ; |1096| 
        ADDL      XAR4,ACC
        MOV       AL,*+FP[AR0]          ; |1096| 
        MOVL      XAR0,#10              ; |1096| 
        ADDB      AL,#16                ; |1096| 
        MOV       *+XAR4[0],AL          ; |1096| 
        MOVL      ACC,*+FP[AR0]         ; |1096| 
        MOVL      XAR0,#10              ; |1096| 
        ADDB      ACC,#1                ; |1096| 
        MOVL      *+FP[AR0],ACC         ; |1096| 
        MOVL      XAR0,#10              ; |1096| 
        MOVL      XAR6,*+FP[AR0]        ; |1096| 
        MOVB      ACC,#16
        CMPL      ACC,XAR6              ; |1096| 
        BF        L359,GT               ; |1096| 
        ; branch occurs ; |1096| 
        MOVZ      AR4,SP                ; |1097| 
        MOVL      XAR0,#8               ; |1097| 
        MOVL      *-SP[2],ACC           ; |1097| 
        ADD       AR4,#-2098            ; |1097| 
        MOVL      XAR5,*+FP[AR0]        ; |1097| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1097| 
        ; call occurs [#_fm_write] ; |1097| 
        MOVL      XAR0,#8               ; |1097| 
        MOVL      XAR4,*+FP[AR0]        ; |1097| 
        LCR       #_fm_close            ; |1098| 
        ; call occurs [#_fm_close] ; |1098| 
        MOVL      XAR5,#FSL74           ; |1100| 
        MOVL      XAR4,#FSL83           ; |1100| 
        LCR       #_fm_open             ; |1100| 
        ; call occurs [#_fm_open] ; |1100| 
        MOVL      XAR0,#8               ; |1100| 
        MOVL      *+FP[AR0],XAR4        ; |1100| 
        MOVL      XAR0,#8               ; |1100| 
        MOVL      ACC,*+FP[AR0]         ; |1100| 
        BF        L360,NEQ              ; |1101| 
        ; branch occurs ; |1101| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1113| 
        MOVB      ACC,#32
        BF        L368,UNC              ; |1113| 
        ; branch occurs ; |1113| 
L360:    
        MOVL      XAR0,#10              ; |1103| 
        MOVB      ACC,#0
        MOVL      *+FP[AR0],ACC         ; |1103| 
L361:    
        MOVZ      AR4,SP                ; |1103| 
        MOVL      XAR0,#10              ; |1103| 
        ADD       AR4,#-2082            ; |1103| 
        MOVL      ACC,*+FP[AR0]         ; |1103| 
        ADDL      XAR4,ACC
        MOVL      XAR0,#10              ; |1103| 
        MOV       *+XAR4[0],#0          ; |1103| 
        MOVL      ACC,*+FP[AR0]         ; |1103| 
        MOVL      XAR0,#10              ; |1103| 
        ADDB      ACC,#1                ; |1103| 
        MOVL      *+FP[AR0],ACC         ; |1103| 
        MOVL      XAR0,#10              ; |1103| 
        MOVL      XAR6,*+FP[AR0]        ; |1103| 
        MOV       ACC,#2048             ; |1103| 
        CMPL      ACC,XAR6              ; |1103| 
        BF        L361,GT               ; |1103| 
        ; branch occurs ; |1103| 
        MOVL      XAR4,#2048            ; |1104| 
        MOVL      *-SP[2],XAR4          ; |1104| 
        MOVZ      AR4,SP                ; |1104| 
        MOVL      XAR0,#8               ; |1104| 
        ADD       AR4,#-2082            ; |1104| 
        MOVL      XAR5,*+FP[AR0]        ; |1104| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |1104| 
        ; call occurs [#_fm_read] ; |1104| 
        MOVL      XAR0,#10              ; |1105| 
        MOVB      ACC,#0
        MOVL      *+FP[AR0],ACC         ; |1105| 
L362:    
        MOVL      XAR0,#10
        MOVL      ACC,*+FP[AR0]
        MOVL      XAR0,#10              ; |1105| 
        LSL       ACC,1                 ; |1105| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |1105| 
        MOVL      ACC,*+FP[AR0]         ; |1105| 
        CMPL      ACC,*+XAR4[0]         ; |1105| 
        BF        L363,NEQ              ; |1105| 
        ; branch occurs ; |1105| 
        MOVL      XAR0,#10
        MOVL      ACC,*+FP[AR0]
        MOVL      XAR0,#10              ; |1105| 
        ADDB      ACC,#1                ; |1105| 
        MOVL      *+FP[AR0],ACC         ; |1105| 
        MOVL      XAR0,#10              ; |1105| 
        MOVL      XAR6,*+FP[AR0]        ; |1105| 
        MOV       ACC,#508              ; |1105| 
        CMPL      ACC,XAR6              ; |1105| 
        BF        L362,GT               ; |1105| 
        ; branch occurs ; |1105| 
L363:    
        MOVL      XAR0,#10              ; |1106| 
        MOVL      XAR6,*+FP[AR0]        ; |1106| 
        MOV       ACC,#508              ; |1106| 
        CMPL      ACC,XAR6              ; |1106| 
        BF        L364,EQ               ; |1106| 
        ; branch occurs ; |1106| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1111| 
        MOVB      ACC,#31
        BF        L368,UNC              ; |1111| 
        ; branch occurs ; |1111| 
L364:    
        MOVL      XAR0,#10              ; |1108| 
        MOVB      ACC,#0
        MOVL      *+FP[AR0],ACC         ; |1108| 
L365:    
        MOVZ      AR4,SP                ; |1108| 
        MOVL      XAR0,#10
        ADD       AR4,#-2082            ; |1108| 
        MOVL      ACC,*+FP[AR0]
        ADD       ACC,#127 << 4         ; |1108| 
        ADDL      XAR4,ACC
        MOVL      XAR0,#10              ; |1108| 
        MOVZ      AR6,*+XAR4[0]
        MOVL      XAR7,*+FP[AR0]        ; |1108| 
        MOVL      ACC,XAR6              ; |1108| 
        SUBL      ACC,XAR7
        MOVL      XAR6,ACC              ; |1108| 
        MOVB      ACC,#16
        CMPL      ACC,XAR6              ; |1108| 
        BF        L366,NEQ              ; |1108| 
        ; branch occurs ; |1108| 
        MOVL      XAR0,#10
        MOVL      ACC,*+FP[AR0]
        MOVL      XAR0,#10              ; |1108| 
        ADDB      ACC,#1                ; |1108| 
        MOVL      *+FP[AR0],ACC         ; |1108| 
        MOVL      XAR0,#10              ; |1108| 
        MOVL      XAR6,*+FP[AR0]        ; |1108| 
        MOVB      ACC,#16
        CMPL      ACC,XAR6              ; |1108| 
        BF        L365,GT               ; |1108| 
        ; branch occurs ; |1108| 
L366:    
        MOVL      XAR0,#10              ; |1109| 
        MOVL      XAR6,*+FP[AR0]        ; |1109| 
        MOVB      ACC,#16
        CMPL      ACC,XAR6              ; |1109| 
        BF        L367,EQ               ; |1109| 
        ; branch occurs ; |1109| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1109| 
        MOVB      ACC,#30
        BF        L368,UNC              ; |1109| 
        ; branch occurs ; |1109| 
L367:    
        MOVL      XAR0,#8
        MOVL      XAR4,*+FP[AR0]
        LCR       #_fm_close            ; |1117| 
        ; call occurs [#_fm_close] ; |1117| 
        MOVB      XAR4,#0
        MOVB      ACC,#1
        LCR       #_fm_format           ; |1118| 
        ; call occurs [#_fm_format] ; |1118| 
        CMPB      AL,#0                 ; |1118| 
        BF        L369,EQ               ; |1118| 
        ; branch occurs ; |1118| 
        SETC      SXM
        MOV       ACC,AL                ; |1123| 
        MOVL      *-SP[2],ACC           ; |1123| 
        MOVB      ACC,#35
L368:    
        LCR       #__f_result           ; |1123| 
        ; call occurs [#__f_result] ; |1123| 
        BF        L374,UNC              ; |1123| 
        ; branch occurs ; |1123| 
L369:    
        MOVL      ACC,*-SP[28]          ; |1125| 
        CMPL      ACC,*-SP[12]          ; |1125| 
        BF        L370,EQ               ; |1125| 
        ; branch occurs ; |1125| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1125| 
        MOVB      ACC,#36
        BF        L368,UNC              ; |1125| 
        ; branch occurs ; |1125| 
L370:    
        MOVL      ACC,*-SP[32]          ; |1126| 
        CMPL      ACC,*-SP[16]          ; |1126| 
        BF        L371,EQ               ; |1126| 
        ; branch occurs ; |1126| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1126| 
        MOVB      ACC,#37
        BF        L368,UNC              ; |1126| 
        ; branch occurs ; |1126| 
L371:    
        MOVL      ACC,*-SP[30]          ; |1127| 
        CMPL      ACC,*-SP[14]          ; |1127| 
        BF        L372,EQ               ; |1127| 
        ; branch occurs ; |1127| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1127| 
        MOVB      ACC,#38
        BF        L368,UNC              ; |1127| 
        ; branch occurs ; |1127| 
L372:    
        MOVL      ACC,*-SP[34]          ; |1128| 
        CMPL      ACC,*-SP[18]          ; |1128| 
        BF        L373,EQ               ; |1128| 
        ; branch occurs ; |1128| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1128| 
        MOVB      ACC,#39
        BF        L368,UNC              ; |1128| 
        ; branch occurs ; |1128| 
L373:    
        MOVL      XAR4,#FSL3            ; |1131| 
        LCR       #__f_dump             ; |1131| 
        ; call occurs [#__f_dump] ; |1131| 
        MOVB      ACC,#0
L374:    
        ADD       SP,#-2102             ; |1132| 
        MOVL      XAR3,*--SP            ; |1132| 
        MOVL      XAR2,*--SP            ; |1132| 
        MOVL      XAR1,*--SP            ; |1132| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_f_dots

;***************************************************************
;* FNAME: _f_dots                       FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_f_dots:
        MOVL      *SP++,XAR1
        MOVL      XAR4,#FSL84           ; |1139| 
        MOVL      *SP++,XAR3
        ADDB      SP,#2
        LCR       #__f_dump             ; |1139| 
        ; call occurs [#__f_dump] ; |1139| 
        MOVL      XAR4,#FSL85           ; |1141| 
        LCR       #_fm_mkdir            ; |1141| 
        ; call occurs [#_fm_mkdir] ; |1141| 
        CMPB      AL,#0                 ; |1141| 
        BF        L375,EQ               ; |1141| 
        ; branch occurs ; |1141| 
        SETC      SXM
        MOV       ACC,AL                ; |1142| 
        MOVL      *-SP[2],ACC           ; |1142| 
        MOVB      ACC,#0
        BF        L412,UNC              ; |1142| 
        ; branch occurs ; |1142| 
L375:    
        MOVL      XAR4,#FSL85           ; |1144| 
        LCR       #_fm_chdir            ; |1144| 
        ; call occurs [#_fm_chdir] ; |1144| 
        CMPB      AL,#0                 ; |1144| 
        BF        L376,EQ               ; |1144| 
        ; branch occurs ; |1144| 
        SETC      SXM
        MOV       ACC,AL                ; |1145| 
        MOVL      *-SP[2],ACC           ; |1145| 
        MOVB      ACC,#1
        BF        L412,UNC              ; |1145| 
        ; branch occurs ; |1145| 
L376:    
        MOVL      XAR5,#FSL86           ; |1147| 
        MOVL      XAR4,#FSL16           ; |1147| 
        LCR       #_fm_rename           ; |1147| 
        ; call occurs [#_fm_rename] ; |1147| 
        CMPB      AL,#5                 ; |1147| 
        BF        L377,EQ               ; |1147| 
        ; branch occurs ; |1147| 
        SETC      SXM
        MOV       ACC,AL                ; |1148| 
        MOVL      *-SP[2],ACC           ; |1148| 
        MOVB      ACC,#2
        BF        L412,UNC              ; |1148| 
        ; branch occurs ; |1148| 
L377:    
        MOVL      XAR5,#FSL86           ; |1150| 
        MOVL      XAR4,#FSL29           ; |1150| 
        LCR       #_fm_rename           ; |1150| 
        ; call occurs [#_fm_rename] ; |1150| 
        CMPB      AL,#5                 ; |1150| 
        BF        L378,EQ               ; |1150| 
        ; branch occurs ; |1150| 
        SETC      SXM
        MOV       ACC,AL                ; |1151| 
        MOVL      *-SP[2],ACC           ; |1151| 
        MOVB      ACC,#3
        BF        L412,UNC              ; |1151| 
        ; branch occurs ; |1151| 
L378:    
        MOVL      XAR4,#FSL16           ; |1153| 
        LCR       #_fm_rmdir            ; |1153| 
        ; call occurs [#_fm_rmdir] ; |1153| 
        CMPB      AL,#5                 ; |1153| 
        BF        L379,EQ               ; |1153| 
        ; branch occurs ; |1153| 
        SETC      SXM
        MOV       ACC,AL                ; |1154| 
        MOVL      *-SP[2],ACC           ; |1154| 
        MOVB      ACC,#4
        BF        L412,UNC              ; |1154| 
        ; branch occurs ; |1154| 
L379:    
        MOVL      XAR4,#FSL29           ; |1156| 
        LCR       #_fm_rmdir            ; |1156| 
        ; call occurs [#_fm_rmdir] ; |1156| 
        CMPB      AL,#5                 ; |1156| 
        BF        L380,EQ               ; |1156| 
        ; branch occurs ; |1156| 
        SETC      SXM
        MOV       ACC,AL                ; |1157| 
        MOVL      *-SP[2],ACC           ; |1157| 
        MOVB      ACC,#5
        BF        L412,UNC              ; |1157| 
        ; branch occurs ; |1157| 
L380:    
        MOVL      XAR4,#FSL16           ; |1159| 
        LCR       #_fm_chdir            ; |1159| 
        ; call occurs [#_fm_chdir] ; |1159| 
        CMPB      AL,#0                 ; |1159| 
        BF        L381,EQ               ; |1159| 
        ; branch occurs ; |1159| 
        SETC      SXM
        MOV       ACC,AL                ; |1160| 
        MOVL      *-SP[2],ACC           ; |1160| 
        MOVB      ACC,#6
        BF        L412,UNC              ; |1160| 
        ; branch occurs ; |1160| 
L381:    
        MOVL      XAR4,#FSL85           ; |1162| 
        LCR       #_f_nameconv          ; |1162| 
        ; call occurs [#_f_nameconv] ; |1162| 
        LCR       #__f_checkcwd         ; |1162| 
        ; call occurs [#__f_checkcwd] ; |1162| 
        CMPB      AL,#0                 ; |1162| 
        BF        L382,EQ               ; |1162| 
        ; branch occurs ; |1162| 
        SETC      SXM
        MOV       ACC,AL                ; |1163| 
        MOVL      *-SP[2],ACC           ; |1163| 
        MOVB      ACC,#7
        BF        L412,UNC              ; |1163| 
        ; branch occurs ; |1163| 
L382:    
        MOVL      XAR4,#FSL16           ; |1165| 
        LCR       #_fm_delete           ; |1165| 
        ; call occurs [#_fm_delete] ; |1165| 
        CMPB      AL,#5                 ; |1165| 
        BF        L383,EQ               ; |1165| 
        ; branch occurs ; |1165| 
        SETC      SXM
        MOV       ACC,AL                ; |1166| 
        MOVL      *-SP[2],ACC           ; |1166| 
        MOVB      ACC,#8
        BF        L412,UNC              ; |1166| 
        ; branch occurs ; |1166| 
L383:    
        MOVL      XAR4,#FSL29           ; |1168| 
        LCR       #_fm_delete           ; |1168| 
        ; call occurs [#_fm_delete] ; |1168| 
        CMPB      AL,#5                 ; |1168| 
        BF        L384,EQ               ; |1168| 
        ; branch occurs ; |1168| 
        SETC      SXM
        MOV       ACC,AL                ; |1169| 
        MOVL      *-SP[2],ACC           ; |1169| 
        MOVB      ACC,#9
        BF        L412,UNC              ; |1169| 
        ; branch occurs ; |1169| 
L384:    
        MOVL      XAR4,#FSL16           ; |1171| 
        LCR       #_fm_mkdir            ; |1171| 
        ; call occurs [#_fm_mkdir] ; |1171| 
        CMPB      AL,#5                 ; |1171| 
        BF        L385,EQ               ; |1171| 
        ; branch occurs ; |1171| 
        SETC      SXM
        MOV       ACC,AL                ; |1172| 
        MOVL      *-SP[2],ACC           ; |1172| 
        MOVB      ACC,#10
        BF        L412,UNC              ; |1172| 
        ; branch occurs ; |1172| 
L385:    
        MOVL      XAR4,#FSL29           ; |1174| 
        LCR       #_fm_mkdir            ; |1174| 
        ; call occurs [#_fm_mkdir] ; |1174| 
        CMPB      AL,#5                 ; |1174| 
        BF        L386,EQ               ; |1174| 
        ; branch occurs ; |1174| 
        SETC      SXM
        MOV       ACC,AL                ; |1175| 
        MOVL      *-SP[2],ACC           ; |1175| 
        MOVB      ACC,#11
        BF        L412,UNC              ; |1175| 
        ; branch occurs ; |1175| 
L386:    
        MOVL      XAR4,#FSL87           ; |1177| 
        LCR       #_fm_mkdir            ; |1177| 
        ; call occurs [#_fm_mkdir] ; |1177| 
        CMPB      AL,#5                 ; |1177| 
        BF        L387,EQ               ; |1177| 
        ; branch occurs ; |1177| 
        SETC      SXM
        MOV       ACC,AL                ; |1178| 
        MOVL      *-SP[2],ACC           ; |1178| 
        MOVB      ACC,#12
        BF        L412,UNC              ; |1178| 
        ; branch occurs ; |1178| 
L387:    
        MOVB      XAR1,#0
L388:    
        MOVL      XAR6,XAR1
        MOVB      ACC,#3
        CMPL      ACC,XAR6              ; |1182| 
        BF        L389,LT               ; |1182| 
        ; branch occurs ; |1182| 
        BF        L393,EQ               ; |1182| 
        ; branch occurs ; |1182| 
        MOVL      ACC,XAR6
        BF        L396,EQ               ; |1182| 
        ; branch occurs ; |1182| 
        MOVB      ACC,#1
        CMPL      ACC,XAR6              ; |1182| 
        BF        L395,EQ               ; |1182| 
        ; branch occurs ; |1182| 
        MOVB      ACC,#2
        CMPL      ACC,XAR6              ; |1182| 
        BF        L394,EQ               ; |1182| 
        ; branch occurs ; |1182| 
        BF        L390,UNC              ; |1182| 
        ; branch occurs ; |1182| 
L389:    
        MOVB      ACC,#4
        CMPL      ACC,XAR6              ; |1182| 
        BF        L392,EQ               ; |1182| 
        ; branch occurs ; |1182| 
        MOVB      ACC,#5
        CMPL      ACC,XAR6              ; |1182| 
        BF        L391,EQ               ; |1182| 
        ; branch occurs ; |1182| 
L390:    
        MOVB      ACC,#13
        BF        L400,UNC              ; |1189| 
        ; branch occurs ; |1189| 
L391:    
        MOVL      XAR3,#FSL78           ; |1188| 
        BF        L397,UNC              ; |1188| 
        ; branch occurs ; |1188| 
L392:    
        MOVL      XAR3,#FSL5            ; |1187| 
        BF        L397,UNC              ; |1187| 
        ; branch occurs ; |1187| 
L393:    
        MOVL      XAR3,#FSL72           ; |1186| 
        BF        L397,UNC              ; |1186| 
        ; branch occurs ; |1186| 
L394:    
        MOVL      XAR3,#FSL79           ; |1185| 
        BF        L397,UNC              ; |1185| 
        ; branch occurs ; |1185| 
L395:    
        MOVL      XAR3,#FSL77           ; |1184| 
        BF        L397,UNC              ; |1184| 
        ; branch occurs ; |1184| 
L396:    
        MOVL      XAR3,#FSL74           ; |1183| 
L397:    
        MOVL      XAR5,XAR3             ; |1192| 
        MOVL      XAR4,#FSL16           ; |1192| 
        LCR       #_fm_open             ; |1192| 
        ; call occurs [#_fm_open] ; |1192| 
        MOVL      ACC,XAR4              ; |1192| 
        BF        L398,EQ               ; |1193| 
        ; branch occurs ; |1193| 
        MOVB      ACC,#14
        BF        L400,UNC              ; |1193| 
        ; branch occurs ; |1193| 
L398:    
        MOVL      XAR5,XAR3             ; |1194| 
        MOVL      XAR4,#FSL29           ; |1194| 
        LCR       #_fm_open             ; |1194| 
        ; call occurs [#_fm_open] ; |1194| 
        MOVL      ACC,XAR4              ; |1194| 
        BF        L399,EQ               ; |1195| 
        ; branch occurs ; |1195| 
        MOVB      ACC,#15
        BF        L400,UNC              ; |1195| 
        ; branch occurs ; |1195| 
L399:    
        MOVL      XAR5,XAR3             ; |1196| 
        MOVL      XAR4,#FSL87           ; |1196| 
        LCR       #_fm_open             ; |1196| 
        ; call occurs [#_fm_open] ; |1196| 
        MOVL      ACC,XAR4              ; |1196| 
        BF        L401,EQ               ; |1197| 
        ; branch occurs ; |1197| 
        MOVB      ACC,#16
L400:    
        MOVL      *-SP[2],XAR1          ; |1197| 
        BF        L412,UNC              ; |1197| 
        ; branch occurs ; |1197| 
L401:    
        MOVL      ACC,XAR1
        ADDB      ACC,#1                ; |1198| 
        MOVL      XAR1,ACC              ; |1198| 
        MOVB      ACC,#6
        CMPL      ACC,XAR1              ; |1198| 
        BF        L388,GT               ; |1198| 
        ; branch occurs ; |1198| 
        MOVL      XAR4,#FSL16           ; |1200| 
        LCR       #_fm_filelength       ; |1200| 
        ; call occurs [#_fm_filelength] ; |1200| 
        TEST      ACC                   ; |1200| 
        BF        L402,EQ               ; |1200| 
        ; branch occurs ; |1200| 
        MOVL      *-SP[2],ACC           ; |1201| 
        MOVB      ACC,#17
        BF        L412,UNC              ; |1201| 
        ; branch occurs ; |1201| 
L402:    
        MOVL      XAR4,#FSL29           ; |1202| 
        LCR       #_fm_filelength       ; |1202| 
        ; call occurs [#_fm_filelength] ; |1202| 
        TEST      ACC                   ; |1202| 
        BF        L403,EQ               ; |1202| 
        ; branch occurs ; |1202| 
        MOVL      *-SP[2],ACC           ; |1203| 
        MOVB      ACC,#18
        BF        L412,UNC              ; |1203| 
        ; branch occurs ; |1203| 
L403:    
        MOVL      XAR4,#FSL87           ; |1204| 
        LCR       #_fm_filelength       ; |1204| 
        ; call occurs [#_fm_filelength] ; |1204| 
        TEST      ACC                   ; |1204| 
        BF        L404,EQ               ; |1204| 
        ; branch occurs ; |1204| 
        MOVL      *-SP[2],ACC           ; |1205| 
        MOVB      ACC,#19
        BF        L412,UNC              ; |1205| 
        ; branch occurs ; |1205| 
L404:    
        MOVL      XAR4,#FSL87           ; |1208| 
        LCR       #_fm_chdir            ; |1208| 
        ; call occurs [#_fm_chdir] ; |1208| 
        CMPB      AL,#5                 ; |1208| 
        BF        L405,EQ               ; |1208| 
        ; branch occurs ; |1208| 
        SETC      SXM
        MOV       ACC,AL                ; |1209| 
        MOVL      *-SP[2],ACC           ; |1209| 
        MOVB      ACC,#20
        BF        L412,UNC              ; |1209| 
        ; branch occurs ; |1209| 
L405:    
        MOVL      XAR4,#FSL29           ; |1211| 
        LCR       #_fm_chdir            ; |1211| 
        ; call occurs [#_fm_chdir] ; |1211| 
        CMPB      AL,#0                 ; |1211| 
        BF        L406,EQ               ; |1211| 
        ; branch occurs ; |1211| 
        SETC      SXM
        MOV       ACC,AL                ; |1212| 
        MOVL      *-SP[2],ACC           ; |1212| 
        MOVB      ACC,#21
        BF        L412,UNC              ; |1212| 
        ; branch occurs ; |1212| 
L406:    
        MOVL      XAR5,#FSL16           ; |1215| 
        MOVL      XAR4,#FSL88           ; |1215| 
        LCR       #_fm_rename           ; |1215| 
        ; call occurs [#_fm_rename] ; |1215| 
        CMPB      AL,#4                 ; |1215| 
        BF        L407,EQ               ; |1215| 
        ; branch occurs ; |1215| 
        SETC      SXM
        MOV       ACC,AL                ; |1216| 
        MOVL      *-SP[2],ACC           ; |1216| 
        MOVB      ACC,#22
        BF        L412,UNC              ; |1216| 
        ; branch occurs ; |1216| 
L407:    
        MOVL      XAR5,#FSL29           ; |1218| 
        MOVL      XAR4,#FSL88           ; |1218| 
        LCR       #_fm_rename           ; |1218| 
        ; call occurs [#_fm_rename] ; |1218| 
        CMPB      AL,#4                 ; |1218| 
        BF        L408,EQ               ; |1218| 
        ; branch occurs ; |1218| 
        SETC      SXM
        MOV       ACC,AL                ; |1219| 
        MOVL      *-SP[2],ACC           ; |1219| 
        MOVB      ACC,#23
        BF        L412,UNC              ; |1219| 
        ; branch occurs ; |1219| 
L408:    
        MOVL      XAR5,#FSL87           ; |1221| 
        MOVL      XAR4,#FSL88           ; |1221| 
        LCR       #_fm_rename           ; |1221| 
        ; call occurs [#_fm_rename] ; |1221| 
        CMPB      AL,#4                 ; |1221| 
        BF        L409,EQ               ; |1221| 
        ; branch occurs ; |1221| 
        SETC      SXM
        MOV       ACC,AL                ; |1222| 
        MOVL      *-SP[2],ACC           ; |1222| 
        MOVB      ACC,#24
        BF        L412,UNC              ; |1222| 
        ; branch occurs ; |1222| 
L409:    
        MOVL      XAR5,#FSL89           ; |1224| 
        MOVL      XAR4,#FSL88           ; |1224| 
        LCR       #_fm_rename           ; |1224| 
        ; call occurs [#_fm_rename] ; |1224| 
        CMPB      AL,#4                 ; |1224| 
        BF        L410,EQ               ; |1224| 
        ; branch occurs ; |1224| 
        SETC      SXM
        MOV       ACC,AL                ; |1225| 
        MOVL      *-SP[2],ACC           ; |1225| 
        MOVB      ACC,#25
        BF        L412,UNC              ; |1225| 
        ; branch occurs ; |1225| 
L410:    
        MOVL      XAR5,#FSL21           ; |1227| 
        MOVL      XAR4,#FSL89           ; |1227| 
        LCR       #_fm_rename           ; |1227| 
        ; call occurs [#_fm_rename] ; |1227| 
        CMPB      AL,#4                 ; |1227| 
        BF        L411,EQ               ; |1227| 
        ; branch occurs ; |1227| 
        SETC      SXM
        MOV       ACC,AL                ; |1228| 
        MOVL      *-SP[2],ACC           ; |1228| 
        MOVB      ACC,#26
        BF        L412,UNC              ; |1228| 
        ; branch occurs ; |1228| 
L411:    
        MOVL      XAR4,#FSL88           ; |1231| 
        LCR       #_fm_rmdir            ; |1231| 
        ; call occurs [#_fm_rmdir] ; |1231| 
        CMPB      AL,#0                 ; |1231| 
        BF        L413,EQ               ; |1231| 
        ; branch occurs ; |1231| 
        SETC      SXM
        MOV       ACC,AL                ; |1232| 
        MOVL      *-SP[2],ACC           ; |1232| 
        MOVB      ACC,#27
L412:    
        LCR       #__f_result           ; |1232| 
        ; call occurs [#__f_result] ; |1232| 
        BF        L414,UNC              ; |1232| 
        ; branch occurs ; |1232| 
L413:    
        MOVL      XAR4,#FSL3            ; |1235| 
        LCR       #__f_dump             ; |1235| 
        ; call occurs [#__f_dump] ; |1235| 
        MOVB      ACC,#0
L414:    
        SUBB      SP,#2                 ; |1236| 
        MOVL      XAR3,*--SP            ; |1236| 
        MOVL      XAR1,*--SP            ; |1236| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_f_rit

;***************************************************************
;* FNAME: _f_rit                        FR SIZE: 102           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 94 Auto,  6 SOE     *
;***************************************************************

_f_rit:
        MOVL      *SP++,XAR1
        MOVL      *SP++,XAR2
        MOVL      XAR4,#FSL90           ; |1258| 
        MOVL      *SP++,XAR3
        MOVZ      AR2,SP
        ADDB      SP,#96
        LCR       #__f_dump             ; |1258| 
        ; call occurs [#__f_dump] ; |1258| 
        MOVL      XAR5,#FSL78           ; |1260| 
        MOVL      XAR4,#FSL91           ; |1260| 
        LCR       #_fm_open             ; |1260| 
        ; call occurs [#_fm_open] ; |1260| 
        MOVL      XAR0,#10              ; |1260| 
        SUBB      FP,#8
        MOVL      *+FP[AR0],XAR4        ; |1260| 
        MOVL      XAR0,#10              ; |1260| 
        MOVL      ACC,*+FP[AR0]         ; |1260| 
        BF        L415,NEQ              ; |1260| 
        ; branch occurs ; |1260| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1262| 
        MOVB      ACC,#1
        BF        L433,UNC              ; |1262| 
        ; branch occurs ; |1262| 
L415:    
        MOVB      XAR1,#0
L416:    
        MOVB      ACC,#10
        MOVL      *-SP[2],ACC           ; |1268| 
        MOVL      ACC,XAR1              ; |1268| 
        FFC       XAR7,#UL$$MOD         ; |1268| 
        ; call occurs [#UL$$MOD] ; |1268| 
        MOVL      XAR0,#12              ; |1269| 
        MOVZ      AR3,AL                ; |1268| 
        MOV       AH,#48316
        MOV       AL,#48316
        MOVL      *+FP[AR0],ACC         ; |1269| 
        MOVL      XAR0,#14              ; |1270| 
        MOV       *+FP[AR0],AR1         ; |1270| 
        MOVL      XAR0,#15              ; |1271| 
        MOV       *+FP[AR0],AR3         ; |1271| 
        MOVL      XAR0,#25              ; |1272| 
        MOVB      AL,#1                 ; |1272| 
        ADD       AL,AR3                ; |1272| 
        MOV       *+FP[AR0],AL          ; |1272| 
        MOVL      XAR0,#10              ; |1285| 
        MOVB      ACC,#2
        MOVL      *-SP[2],ACC           ; |1285| 
        MOVL      XAR4,*+FP[AR0]        ; |1285| 
        MOVB      ACC,#0
        LCR       #_fm_seek             ; |1285| 
        ; call occurs [#_fm_seek] ; |1285| 
        CMPB      AL,#0                 ; |1285| 
        BF        L417,EQ               ; |1285| 
        ; branch occurs ; |1285| 
        MOVB      ACC,#2
        BF        L423,UNC              ; |1288| 
        ; branch occurs ; |1288| 
L417:    
        MOVL      XAR0,#10              ; |1291| 
        MOVZ      AR4,SP                ; |1291| 
        MOVB      ACC,#90
        MOVL      *-SP[2],ACC           ; |1291| 
        MOVL      XAR5,*+FP[AR0]        ; |1291| 
        SUBB      XAR4,#92              ; |1291| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1291| 
        ; call occurs [#_fm_write] ; |1291| 
        MOVL      XAR6,ACC              ; |1291| 
        MOVB      ACC,#90
        CMPL      ACC,XAR6              ; |1291| 
        BF        L418,EQ               ; |1291| 
        ; branch occurs ; |1291| 
        MOVB      ACC,#3
        BF        L423,UNC              ; |1294| 
        ; branch occurs ; |1294| 
L418:    
        MOVL      XAR0,#10
        MOVL      XAR4,*+FP[AR0]
        LCR       #_fm_tell             ; |1297| 
        ; call occurs [#_fm_tell] ; |1297| 
        MOVZ      AR4,AL                ; |1297| 
        SETC      SXM
        MOVB      ACC,#90
        MOVL      *-SP[2],ACC           ; |1298| 
        MOV       ACC,AR4               ; |1298| 
        FFC       XAR7,#UL$$DIV         ; |1298| 
        ; call occurs [#UL$$DIV] ; |1298| 
        SUBL      ACC,XAR1
        MOVL      XAR6,ACC              ; |1298| 
        MOVB      ACC,#1
        CMPL      ACC,XAR6              ; |1298| 
        BF        L419,EQ               ; |1298| 
        ; branch occurs ; |1298| 
        MOVB      ACC,#4
        BF        L423,UNC              ; |1301| 
        ; branch occurs ; |1301| 
L419:    
        MOVB      ACC,#0
        MOVL      XAR0,#10              ; |1303| 
        SETC      SXM
        MOVL      *-SP[2],ACC           ; |1303| 
        MOV       ACC,AR4               ; |1303| 
        MOVL      XAR4,*+FP[AR0]        ; |1303| 
        SUBB      ACC,#90               ; |1303| 
        LCR       #_fm_seek             ; |1303| 
        ; call occurs [#_fm_seek] ; |1303| 
        CMPB      AL,#0                 ; |1303| 
        BF        L420,EQ               ; |1303| 
        ; branch occurs ; |1303| 
        MOVB      ACC,#5
        BF        L423,UNC              ; |1306| 
        ; branch occurs ; |1306| 
L420:    
        MOVL      XAR0,#10              ; |1309| 
        MOVZ      AR4,SP                ; |1309| 
        MOVB      ACC,#90
        MOVL      *-SP[2],ACC           ; |1309| 
        MOVL      XAR5,*+FP[AR0]        ; |1309| 
        SUBB      XAR4,#92              ; |1309| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |1309| 
        ; call occurs [#_fm_read] ; |1309| 
        MOVL      XAR6,ACC              ; |1309| 
        MOVB      ACC,#90
        CMPL      ACC,XAR6              ; |1309| 
        BF        L421,EQ               ; |1309| 
        ; branch occurs ; |1309| 
        MOVB      ACC,#6
        BF        L423,UNC              ; |1312| 
        ; branch occurs ; |1312| 
L421:    
        MOVL      XAR0,#12              ; |1315| 
        MOV       AL,#48316
        MOV       AH,#48316
        CMPL      ACC,*+FP[AR0]         ; |1315| 
        BF        L422,NEQ              ; |1315| 
        ; branch occurs ; |1315| 
        MOVL      XAR0,#14              ; |1315| 
        MOV       AL,AR1                ; |1315| 
        CMP       AL,*+FP[AR0]          ; |1315| 
        BF        L422,NEQ              ; |1315| 
        ; branch occurs ; |1315| 
        MOVL      XAR0,#15              ; |1315| 
        MOV       AL,AR3                ; |1315| 
        CMP       AL,*+FP[AR0]          ; |1315| 
        BF        L422,NEQ              ; |1315| 
        ; branch occurs ; |1315| 
        MOVL      XAR0,#25              ; |1315| 
        MOV       AL,*+FP[AR0]          ; |1315| 
        SUB       AL,AR3                ; |1315| 
        CMPB      AL,#1                 ; |1315| 
        BF        L424,EQ               ; |1315| 
        ; branch occurs ; |1315| 
L422:    
        MOVB      ACC,#7
L423:    
        MOVL      *-SP[2],XAR1          ; |1319| 
        BF        L433,UNC              ; |1319| 
        ; branch occurs ; |1319| 
L424:    
        MOVB      ACC,#100
        ADDB      XAR1,#1               ; |1321| 
        CMPL      ACC,XAR1              ; |1321| 
        BF        L416,HI               ; |1321| 
        ; branch occurs ; |1321| 
        MOVL      XAR0,#10
        MOVL      XAR4,*+FP[AR0]
        LCR       #_fm_close            ; |1323| 
        ; call occurs [#_fm_close] ; |1323| 
        CMPB      AL,#0                 ; |1323| 
        BF        L425,EQ               ; |1323| 
        ; branch occurs ; |1323| 
        SETC      SXM
        MOV       ACC,AL                ; |1324| 
        MOVL      *-SP[2],ACC           ; |1324| 
        MOVB      ACC,#8
        BF        L433,UNC              ; |1324| 
        ; branch occurs ; |1324| 
L425:    
        MOVL      XAR5,#FSL78           ; |1330| 
        MOVL      XAR4,#FSL91           ; |1330| 
        LCR       #_fm_open             ; |1330| 
        ; call occurs [#_fm_open] ; |1330| 
        MOVL      XAR0,#10              ; |1330| 
        MOVL      *+FP[AR0],XAR4        ; |1330| 
        MOVL      XAR0,#10              ; |1330| 
        MOVL      ACC,*+FP[AR0]         ; |1330| 
        BF        L426,NEQ              ; |1330| 
        ; branch occurs ; |1330| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1331| 
        MOVB      ACC,#9
        BF        L433,UNC              ; |1331| 
        ; branch occurs ; |1331| 
L426:    
        MOVB      XAR1,#0
L427:    
        MOVB      ACC,#10
        MOVL      *-SP[2],ACC           ; |1336| 
        MOVL      ACC,XAR1              ; |1336| 
        FFC       XAR7,#UL$$MOD         ; |1336| 
        ; call occurs [#UL$$MOD] ; |1336| 
        MOVL      XAR0,#10              ; |1338| 
        MOVZ      AR3,AL                ; |1336| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1338| 
        MOVL      XAR4,*+FP[AR0]        ; |1338| 
        LCR       #_fm_seek             ; |1338| 
        ; call occurs [#_fm_seek] ; |1338| 
        CMPB      AL,#0                 ; |1338| 
        BF        L428,EQ               ; |1338| 
        ; branch occurs ; |1338| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1341| 
        MOVB      ACC,#10
        BF        L433,UNC              ; |1341| 
        ; branch occurs ; |1341| 
L428:    
        MOVL      XAR0,#8               ; |1344| 
        MOVB      ACC,#0
        MOVL      *+FP[AR0],ACC         ; |1344| 
L429:    
        MOVL      XAR0,#10              ; |1355| 
        MOVZ      AR4,SP                ; |1355| 
        MOVB      ACC,#90
        MOVL      *-SP[2],ACC           ; |1355| 
        MOVL      XAR5,*+FP[AR0]        ; |1355| 
        SUBB      XAR4,#92              ; |1355| 
        MOVB      ACC,#1
        LCR       #_fm_read             ; |1355| 
        ; call occurs [#_fm_read] ; |1355| 
        MOVL      XAR6,ACC              ; |1355| 
        MOVB      ACC,#90
        CMPL      ACC,XAR6              ; |1355| 
        BF        L430,NEQ              ; |1355| 
        ; branch occurs ; |1355| 
        MOVL      XAR0,#12              ; |1347| 
        MOV       AL,#48316
        MOV       AH,#48316
        CMPL      ACC,*+FP[AR0]         ; |1347| 
        BF        L429,NEQ              ; |1347| 
        ; branch occurs ; |1347| 
        MOVL      XAR0,#14              ; |1347| 
        MOV       AL,AR1                ; |1347| 
        CMP       AL,*+FP[AR0]          ; |1347| 
        BF        L429,NEQ              ; |1347| 
        ; branch occurs ; |1347| 
        MOVL      XAR0,#15              ; |1347| 
        MOV       AL,AR3                ; |1347| 
        CMP       AL,*+FP[AR0]          ; |1347| 
        BF        L429,NEQ              ; |1347| 
        ; branch occurs ; |1347| 
        MOVL      XAR0,#25              ; |1347| 
        MOV       AL,*+FP[AR0]          ; |1347| 
        SUB       AL,AR3                ; |1347| 
        CMPB      AL,#1                 ; |1347| 
        BF        L429,NEQ              ; |1347| 
        ; branch occurs ; |1347| 
        BF        L431,UNC              ; |1347| 
        ; branch occurs ; |1347| 
L430:    
        MOVL      XAR0,#8
        MOVL      ACC,*+FP[AR0]
        BF        L431,NEQ              ; |1356| 
        ; branch occurs ; |1356| 
        MOVL      *-SP[2],ACC           ; |1356| 
        MOVB      ACC,#11
        BF        L433,UNC              ; |1356| 
        ; branch occurs ; |1356| 
L431:    
        MOVB      ACC,#100
        ADDB      XAR1,#1               ; |1357| 
        CMPL      ACC,XAR1              ; |1357| 
        BF        L427,HI               ; |1357| 
        ; branch occurs ; |1357| 
        MOVL      XAR0,#10
        MOVL      XAR4,*+FP[AR0]
        LCR       #_fm_close            ; |1359| 
        ; call occurs [#_fm_close] ; |1359| 
        CMPB      AL,#0                 ; |1359| 
        BF        L432,EQ               ; |1359| 
        ; branch occurs ; |1359| 
        SETC      SXM
        MOV       ACC,AL                ; |1360| 
        MOVL      *-SP[2],ACC           ; |1360| 
        MOVB      ACC,#12
        BF        L433,UNC              ; |1360| 
        ; branch occurs ; |1360| 
L432:    
        MOVL      XAR4,#FSL91           ; |1363| 
        LCR       #_fm_delete           ; |1363| 
        ; call occurs [#_fm_delete] ; |1363| 
        CMPB      AL,#0                 ; |1363| 
        BF        L434,EQ               ; |1363| 
        ; branch occurs ; |1363| 
        SETC      SXM
        MOV       ACC,AL                ; |1364| 
        MOVL      *-SP[2],ACC           ; |1364| 
        MOVB      ACC,#13
L433:    
        LCR       #__f_result           ; |1364| 
        ; call occurs [#__f_result] ; |1364| 
        BF        L435,UNC              ; |1364| 
        ; branch occurs ; |1364| 
L434:    
        MOVL      XAR4,#FSL3            ; |1366| 
        LCR       #__f_dump             ; |1366| 
        ; call occurs [#__f_dump] ; |1366| 
        MOVB      ACC,#0
L435:    
        SUBB      SP,#96                ; |1368| 
        MOVL      XAR3,*--SP            ; |1368| 
        MOVL      XAR2,*--SP            ; |1368| 
        MOVL      XAR1,*--SP            ; |1368| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_f_truncating

;***************************************************************
;* FNAME: _f_truncating                 FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_f_truncating:
        MOVL      *SP++,XAR1
        MOVL      XAR4,#FSL92           ; |1375| 
        MOVL      *SP++,XAR3
        ADDB      SP,#2
        LCR       #__f_dump             ; |1375| 
        ; call occurs [#__f_dump] ; |1375| 
        MOVL      XAR5,#FSL72           ; |1378| 
        MOVL      XAR4,#FSL73           ; |1378| 
        LCR       #_fm_open             ; |1378| 
        ; call occurs [#_fm_open] ; |1378| 
        MOVL      XAR1,XAR4             ; |1378| 
        MOVL      ACC,XAR4              ; |1378| 
        BF        L436,NEQ              ; |1378| 
        ; branch occurs ; |1378| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1379| 
        BF        L451,UNC              ; |1379| 
        ; branch occurs ; |1379| 
L436:    
        MOVL      XAR3,#_buffer         ; |1381| 
        MOVL      XAR4,XAR3             ; |1381| 
        MOV       ACC,#1 << 14
        MOVB      XAR5,#1               ; |1381| 
        LCR       #_memset              ; |1381| 
        ; call occurs [#_memset] ; |1381| 
        MOVL      XAR4,#16384           ; |1382| 
        MOVL      *-SP[2],XAR4          ; |1382| 
        MOVL      XAR5,XAR1             ; |1382| 
        MOVL      XAR4,XAR3             ; |1382| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1382| 
        ; call occurs [#_fm_write] ; |1382| 
        MOVL      XAR6,ACC              ; |1382| 
        MOV       ACC,#16384            ; |1382| 
        CMPL      ACC,XAR6              ; |1382| 
        BF        L437,EQ               ; |1382| 
        ; branch occurs ; |1382| 
        MOVB      ACC,#1
        BF        L453,UNC              ; |1383| 
        ; branch occurs ; |1383| 
L437:    
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |1385| 
        ; call occurs [#_fm_close] ; |1385| 
        CMPB      AL,#0                 ; |1385| 
        BF        L438,EQ               ; |1385| 
        ; branch occurs ; |1385| 
        SETC      SXM
        MOV       ACC,AL                ; |1386| 
        MOVL      *-SP[2],ACC           ; |1386| 
        MOVB      ACC,#2
        BF        L451,UNC              ; |1386| 
        ; branch occurs ; |1386| 
L438:    
        MOV       ACC,#4095 << 2
        MOVL      XAR4,#FSL73           ; |1388| 
        LCR       #_fm_truncate         ; |1388| 
        ; call occurs [#_fm_truncate] ; |1388| 
        MOVL      XAR1,XAR4             ; |1388| 
        MOVL      ACC,XAR4              ; |1388| 
        BF        L439,EQ               ; |1388| 
        ; branch occurs ; |1388| 
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |1390| 
        ; call occurs [#_fm_close] ; |1390| 
        CMPB      AL,#0                 ; |1390| 
        BF        L441,NEQ              ; |1390| 
        ; branch occurs ; |1390| 
        MOVL      XAR4,#FSL73           ; |1392| 
        LCR       #_fm_filelength       ; |1392| 
        ; call occurs [#_fm_filelength] ; |1392| 
        MOVL      XAR6,ACC              ; |1392| 
        MOV       ACC,#16380            ; |1392| 
        CMPL      ACC,XAR6              ; |1392| 
        BF        L443,NEQ              ; |1392| 
        ; branch occurs ; |1392| 
        MOV       ACC,#1 << 14
        MOVL      XAR4,#FSL73           ; |1396| 
        LCR       #_fm_truncate         ; |1396| 
        ; call occurs [#_fm_truncate] ; |1396| 
        MOVL      XAR1,XAR4             ; |1396| 
        MOVL      ACC,XAR4              ; |1396| 
        BF        L440,NEQ              ; |1396| 
        ; branch occurs ; |1396| 
L439:    
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1397| 
        MOVB      ACC,#3
        BF        L451,UNC              ; |1397| 
        ; branch occurs ; |1397| 
L440:    
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |1398| 
        ; call occurs [#_fm_close] ; |1398| 
        CMPB      AL,#0                 ; |1398| 
        BF        L442,EQ               ; |1398| 
        ; branch occurs ; |1398| 
L441:    
        SETC      SXM
        MOV       ACC,AL                ; |1399| 
        MOVL      *-SP[2],ACC           ; |1399| 
        MOVB      ACC,#4
        BF        L451,UNC              ; |1399| 
        ; branch occurs ; |1399| 
L442:    
        MOVL      XAR4,#FSL73           ; |1400| 
        LCR       #_fm_filelength       ; |1400| 
        ; call occurs [#_fm_filelength] ; |1400| 
        MOVL      XAR6,ACC              ; |1400| 
        MOV       ACC,#16384            ; |1400| 
        CMPL      ACC,XAR6              ; |1400| 
        BF        L444,EQ               ; |1400| 
        ; branch occurs ; |1400| 
L443:    
        MOVB      ACC,#5
        BF        L453,UNC              ; |1401| 
        ; branch occurs ; |1401| 
L444:    
        MOV       ACC,#2025 << 2
        MOVL      XAR4,#FSL73           ; |1404| 
        LCR       #_fm_truncate         ; |1404| 
        ; call occurs [#_fm_truncate] ; |1404| 
        MOVL      XAR1,XAR4             ; |1404| 
        MOVL      ACC,XAR4              ; |1404| 
        BF        L445,NEQ              ; |1404| 
        ; branch occurs ; |1404| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1405| 
        MOVB      ACC,#6
        BF        L451,UNC              ; |1405| 
        ; branch occurs ; |1405| 
L445:    
        MOVL      XAR4,XAR3             ; |1406| 
        MOVB      ACC,#92
        MOVB      XAR5,#2               ; |1406| 
        LCR       #_memset              ; |1406| 
        ; call occurs [#_memset] ; |1406| 
        MOVB      ACC,#92
        MOVL      XAR5,XAR1             ; |1407| 
        MOVL      XAR4,XAR3             ; |1407| 
        MOVL      *-SP[2],ACC           ; |1407| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1407| 
        ; call occurs [#_fm_write] ; |1407| 
        MOVL      XAR6,ACC              ; |1407| 
        MOVB      ACC,#92
        CMPL      ACC,XAR6              ; |1407| 
        BF        L446,EQ               ; |1407| 
        ; branch occurs ; |1407| 
        MOVB      ACC,#7
        BF        L453,UNC              ; |1408| 
        ; branch occurs ; |1408| 
L446:    
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |1410| 
        ; call occurs [#_fm_close] ; |1410| 
        CMPB      AL,#0                 ; |1410| 
        BF        L447,EQ               ; |1410| 
        ; branch occurs ; |1410| 
        SETC      SXM
        MOV       ACC,AL                ; |1411| 
        MOVL      *-SP[2],ACC           ; |1411| 
        MOVB      ACC,#8
        BF        L451,UNC              ; |1411| 
        ; branch occurs ; |1411| 
L447:    
        MOVL      XAR4,#FSL73           ; |1412| 
        LCR       #_fm_filelength       ; |1412| 
        ; call occurs [#_fm_filelength] ; |1412| 
        MOVL      XAR6,ACC              ; |1412| 
        MOV       ACC,#8192             ; |1412| 
        CMPL      ACC,XAR6              ; |1412| 
        BF        L448,EQ               ; |1412| 
        ; branch occurs ; |1412| 
        MOVB      ACC,#9
        BF        L453,UNC              ; |1413| 
        ; branch occurs ; |1413| 
L448:    
        MOVB      ACC,#1
        MOVL      XAR4,#FSL73           ; |1416| 
        LCR       #_fm_truncate         ; |1416| 
        ; call occurs [#_fm_truncate] ; |1416| 
        MOVL      XAR1,XAR4             ; |1416| 
        MOVL      ACC,XAR4              ; |1416| 
        BF        L449,NEQ              ; |1416| 
        ; branch occurs ; |1416| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1417| 
        MOVB      ACC,#10
        BF        L451,UNC              ; |1417| 
        ; branch occurs ; |1417| 
L449:    
        MOVL      XAR4,XAR3             ; |1418| 
        MOVB      ACC,#2
        MOVB      XAR5,#3               ; |1418| 
        LCR       #_memset              ; |1418| 
        ; call occurs [#_memset] ; |1418| 
        MOVB      ACC,#2
        MOVL      XAR5,XAR1             ; |1419| 
        MOVL      XAR4,XAR3             ; |1419| 
        MOVL      *-SP[2],ACC           ; |1419| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1419| 
        ; call occurs [#_fm_write] ; |1419| 
        MOVL      XAR6,ACC              ; |1419| 
        MOVB      ACC,#2
        CMPL      ACC,XAR6              ; |1419| 
        BF        L450,EQ               ; |1419| 
        ; branch occurs ; |1419| 
        MOVB      ACC,#11
        BF        L453,UNC              ; |1420| 
        ; branch occurs ; |1420| 
L450:    
        MOVL      XAR4,XAR1
        LCR       #_fm_close            ; |1422| 
        ; call occurs [#_fm_close] ; |1422| 
        CMPB      AL,#0                 ; |1422| 
        BF        L452,EQ               ; |1422| 
        ; branch occurs ; |1422| 
        SETC      SXM
        MOV       ACC,AL                ; |1423| 
        MOVL      *-SP[2],ACC           ; |1423| 
        MOVB      ACC,#12
L451:    
        LCR       #__f_result           ; |1423| 
        ; call occurs [#__f_result] ; |1423| 
        BF        L455,UNC              ; |1423| 
        ; branch occurs ; |1423| 
L452:    
        MOVL      XAR4,#FSL73           ; |1424| 
        LCR       #_fm_filelength       ; |1424| 
        ; call occurs [#_fm_filelength] ; |1424| 
        MOVL      XAR6,ACC              ; |1424| 
        MOVB      ACC,#3
        CMPL      ACC,XAR6              ; |1424| 
        BF        L454,EQ               ; |1424| 
        ; branch occurs ; |1424| 
        MOVB      ACC,#13
L453:    
        MOVL      *-SP[2],XAR6          ; |1425| 
        BF        L451,UNC              ; |1425| 
        ; branch occurs ; |1425| 
L454:    
        MOVL      XAR4,#FSL3            ; |1429| 
        LCR       #__f_dump             ; |1429| 
        ; call occurs [#__f_dump] ; |1429| 
        MOVB      ACC,#0
L455:    
        SUBB      SP,#2                 ; |1430| 
        MOVL      XAR3,*--SP            ; |1430| 
        MOVL      XAR1,*--SP            ; |1430| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_f_chk

;***************************************************************
;* FNAME: _f_chk                        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_f_chk:
        ADDB      SP,#2
        MOVL      XAR4,#FSL93           ; |1435| 
        LCR       #__f_dump             ; |1435| 
        ; call occurs [#__f_dump] ; |1435| 
        MOVB      AL,#0
        MOVB      AH,#7                 ; |1437| 
        LCR       #_f_checkdisk         ; |1437| 
        ; call occurs [#_f_checkdisk] ; |1437| 
        CMPB      AL,#0                 ; |1437| 
        BF        L456,EQ               ; |1437| 
        ; branch occurs ; |1437| 
        SETC      SXM
        MOV       ACC,AL                ; |1438| 
        MOVL      *-SP[2],ACC           ; |1438| 
        MOVB      ACC,#1
        LCR       #__f_result           ; |1438| 
        ; call occurs [#__f_result] ; |1438| 
        BF        L457,UNC              ; |1438| 
        ; branch occurs ; |1438| 
L456:    
        MOVL      XAR4,#FSL3            ; |1440| 
        LCR       #__f_dump             ; |1440| 
        ; call occurs [#__f_dump] ; |1440| 
        MOVB      ACC,#0
L457:    
        SUBB      SP,#2                 ; |1441| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_f_seekpos

;***************************************************************
;* FNAME: _f_seekpos                    FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

_f_seekpos:
        MOVL      *SP++,XAR1
        MOVL      XAR4,#FSL94           ; |1449| 
        MOVL      *SP++,XAR2
        MOVL      *SP++,XAR3
        ADDB      SP,#4
        LCR       #__f_dump             ; |1449| 
        ; call occurs [#__f_dump] ; |1449| 
        MOVB      ACC,#0
        MOVL      *-SP[4],ACC           ; |1451| 
L458:    
        MOVL      ACC,*-SP[4]
        BF        L462,NEQ              ; |1452| 
        ; branch occurs ; |1452| 
        MOVL      XAR5,#FSL72           ; |1453| 
        MOVL      XAR4,#FSL95           ; |1453| 
        LCR       #_fm_open             ; |1453| 
        ; call occurs [#_fm_open] ; |1453| 
        MOVL      XAR2,XAR4             ; |1453| 
        MOVL      ACC,XAR4              ; |1453| 
        BF        L459,NEQ              ; |1453| 
        ; branch occurs ; |1453| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1454| 
        BF        L508,UNC              ; |1454| 
        ; branch occurs ; |1454| 
L459:    
        MOVB      XAR1,#0
L460:    
        MOVL      XAR3,#_buffer         ; |1457| 
        MOVZ      AR5,AR1               ; |1457| 
        MOVL      XAR4,XAR3             ; |1457| 
        MOV       ACC,#1 << 10
        LCR       #_memset              ; |1457| 
        ; call occurs [#_memset] ; |1457| 
        MOVL      XAR4,#1024            ; |1458| 
        MOVL      *-SP[2],XAR4          ; |1458| 
        MOVL      XAR5,XAR2             ; |1458| 
        MOVL      XAR4,XAR3             ; |1458| 
        MOVB      ACC,#1
        LCR       #_fm_write            ; |1458| 
        ; call occurs [#_fm_write] ; |1458| 
        MOVL      XAR6,ACC              ; |1458| 
        MOV       ACC,#1024             ; |1458| 
        CMPL      ACC,XAR6              ; |1458| 
        BF        L461,EQ               ; |1458| 
        ; branch occurs ; |1458| 
        MOVB      ACC,#1
        MOVL      *-SP[2],XAR6          ; |1459| 
        BF        L508,UNC              ; |1459| 
        ; branch occurs ; |1459| 
L461:    
        MOVL      ACC,XAR1
        ADDB      ACC,#1                ; |1460| 
        MOVL      XAR1,ACC              ; |1460| 
        MOV       ACC,#256              ; |1460| 
        CMPL      ACC,XAR1              ; |1460| 
        BF        L460,GT               ; |1460| 
        ; branch occurs ; |1460| 
        BF        L468,UNC              ; |1460| 
        ; branch occurs ; |1460| 
L462:    
        MOVL      XAR6,*-SP[4]          ; |1462| 
        MOVB      ACC,#1
        CMPL      ACC,XAR6              ; |1462| 
        BF        L466,EQ               ; |1462| 
        ; branch occurs ; |1462| 
        MOVL      XAR6,*-SP[4]          ; |1467| 
        MOVB      ACC,#2
        CMPL      ACC,XAR6              ; |1467| 
        BF        L464,EQ               ; |1467| 
        ; branch occurs ; |1467| 
        MOVL      XAR6,*-SP[4]          ; |1475| 
        MOVB      ACC,#3
        CMPL      ACC,XAR6              ; |1475| 
        BF        L463,EQ               ; |1475| 
        ; branch occurs ; |1475| 
        MOVL      XAR6,*-SP[4]          ; |1480| 
        MOVB      ACC,#4
        CMPL      ACC,XAR6              ; |1480| 
        BF        L468,NEQ              ; |1480| 
        ; branch occurs ; |1480| 
        MOVL      XAR5,#FSL74           ; |1481| 
        MOVL      XAR4,#FSL95           ; |1481| 
        LCR       #_fm_open             ; |1481| 
        ; call occurs [#_fm_open] ; |1481| 
        MOVL      XAR2,XAR4             ; |1481| 
        MOVL      ACC,XAR4              ; |1481| 
        BF        L467,EQ               ; |1481| 
        ; branch occurs ; |1481| 
        MOVL      XAR4,XAR2             ; |1484| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1484| 
        LCR       #_fm_seek             ; |1484| 
        ; call occurs [#_fm_seek] ; |1484| 
        CMPB      AL,#0                 ; |1484| 
        BF        L468,EQ               ; |1484| 
        ; branch occurs ; |1484| 
        BF        L502,UNC              ; |1484| 
        ; branch occurs ; |1484| 
L463:    
        MOVL      XAR5,#FSL78           ; |1476| 
        MOVL      XAR4,#FSL95           ; |1476| 
        LCR       #_fm_open             ; |1476| 
        ; call occurs [#_fm_open] ; |1476| 
        MOVL      XAR2,XAR4             ; |1476| 
        MOVL      ACC,XAR4              ; |1476| 
        BF        L467,EQ               ; |1476| 
        ; branch occurs ; |1476| 
        BF        L468,UNC              ; |1476| 
        ; branch occurs ; |1476| 
L464:    
        MOVL      XAR5,#FSL74           ; |1468| 
        MOVL      XAR4,#FSL95           ; |1468| 
        LCR       #_fm_open             ; |1468| 
        ; call occurs [#_fm_open] ; |1468| 
        MOVL      XAR2,XAR4             ; |1468| 
        MOVL      ACC,XAR4              ; |1468| 
        BF        L467,EQ               ; |1468| 
        ; branch occurs ; |1468| 
        MOVB      XAR1,#0
L465:    
        MOVZ      AR5,AR1
        MOVL      XAR4,XAR2             ; |1472| 
        MOV       ACC,#1 << 10
        LCR       #_checkfilecontent    ; |1472| 
        ; call occurs [#_checkfilecontent] ; |1472| 
        CMPB      AL,#0                 ; |1472| 
        BF        L484,NEQ              ; |1472| 
        ; branch occurs ; |1472| 
        MOVL      ACC,XAR1
        ADDB      ACC,#1                ; |1473| 
        MOVL      XAR1,ACC              ; |1473| 
        MOV       ACC,#256              ; |1473| 
        CMPL      ACC,XAR1              ; |1473| 
        BF        L465,GT               ; |1473| 
        ; branch occurs ; |1473| 
        BF        L468,UNC              ; |1473| 
        ; branch occurs ; |1473| 
L466:    
        MOVL      XAR5,#FSL74           ; |1463| 
        MOVL      XAR4,#FSL95           ; |1463| 
        LCR       #_fm_open             ; |1463| 
        ; call occurs [#_fm_open] ; |1463| 
        MOVL      XAR2,XAR4             ; |1463| 
        MOVL      ACC,XAR4              ; |1463| 
        BF        L468,NEQ              ; |1463| 
        ; branch occurs ; |1463| 
L467:    
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1464| 
        MOVB      ACC,#100
        BF        L508,UNC              ; |1464| 
        ; branch occurs ; |1464| 
L468:    
        MOVL      XAR4,XAR2             ; |1489| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1489| 
        LCR       #_fm_seek             ; |1489| 
        ; call occurs [#_fm_seek] ; |1489| 
        CMPB      AL,#0                 ; |1489| 
        BF        L469,EQ               ; |1489| 
        ; branch occurs ; |1489| 
        SETC      SXM
        MOV       ACC,AL                ; |1490| 
        MOVL      *-SP[2],ACC           ; |1490| 
        MOVB      ACC,#2
        BF        L508,UNC              ; |1490| 
        ; branch occurs ; |1490| 
L469:    
        MOVL      XAR4,XAR2             ; |1491| 
        MOV       ACC,#1 << 10
        MOVB      XAR5,#128             ; |1491| 
        LCR       #_checkfilecontent    ; |1491| 
        ; call occurs [#_checkfilecontent] ; |1491| 
        CMPB      AL,#0                 ; |1491| 
        BF        L470,EQ               ; |1491| 
        ; branch occurs ; |1491| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1491| 
        MOVB      ACC,#3
        BF        L508,UNC              ; |1491| 
        ; branch occurs ; |1491| 
L470:    
        MOVL      XAR4,XAR2             ; |1493| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1493| 
        LCR       #_fm_seek             ; |1493| 
        ; call occurs [#_fm_seek] ; |1493| 
        CMPB      AL,#0                 ; |1493| 
        BF        L471,EQ               ; |1493| 
        ; branch occurs ; |1493| 
        SETC      SXM
        MOV       ACC,AL                ; |1494| 
        MOVL      *-SP[2],ACC           ; |1494| 
        MOVB      ACC,#4
        BF        L508,UNC              ; |1494| 
        ; branch occurs ; |1494| 
L471:    
        MOVL      XAR4,XAR2             ; |1495| 
        MOV       ACC,#1 << 10
        MOVB      XAR5,#64              ; |1495| 
        LCR       #_checkfilecontent    ; |1495| 
        ; call occurs [#_checkfilecontent] ; |1495| 
        CMPB      AL,#0                 ; |1495| 
        BF        L472,EQ               ; |1495| 
        ; branch occurs ; |1495| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1495| 
        MOVB      ACC,#5
        BF        L508,UNC              ; |1495| 
        ; branch occurs ; |1495| 
L472:    
        MOVL      XAR4,XAR2             ; |1497| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1497| 
        LCR       #_fm_seek             ; |1497| 
        ; call occurs [#_fm_seek] ; |1497| 
        CMPB      AL,#0                 ; |1497| 
        BF        L473,EQ               ; |1497| 
        ; branch occurs ; |1497| 
        SETC      SXM
        MOV       ACC,AL                ; |1498| 
        MOVL      *-SP[2],ACC           ; |1498| 
        MOVB      ACC,#6
        BF        L508,UNC              ; |1498| 
        ; branch occurs ; |1498| 
L473:    
        MOVL      XAR4,XAR2             ; |1499| 
        MOV       ACC,#1 << 10
        MOVB      XAR5,#192             ; |1499| 
        LCR       #_checkfilecontent    ; |1499| 
        ; call occurs [#_checkfilecontent] ; |1499| 
        CMPB      AL,#0                 ; |1499| 
        BF        L474,EQ               ; |1499| 
        ; branch occurs ; |1499| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1499| 
        MOVB      ACC,#7
        BF        L508,UNC              ; |1499| 
        ; branch occurs ; |1499| 
L474:    
        MOVB      ACC,#0
        SETC      SXM
        MOVL      XAR4,XAR2             ; |1502| 
        MOVL      *-SP[2],ACC           ; |1502| 
        MOV       ACC,#-1 << 15
        LCR       #_fm_seek             ; |1502| 
        ; call occurs [#_fm_seek] ; |1502| 
        CMPB      AL,#0                 ; |1502| 
        BF        L475,EQ               ; |1502| 
        ; branch occurs ; |1502| 
        SETC      SXM
        MOV       ACC,AL                ; |1503| 
        MOVL      *-SP[2],ACC           ; |1503| 
        MOVB      ACC,#8
        BF        L508,UNC              ; |1503| 
        ; branch occurs ; |1503| 
L475:    
        MOVL      XAR4,XAR2             ; |1504| 
        MOV       ACC,#1 << 10
        MOVB      XAR5,#32              ; |1504| 
        LCR       #_checkfilecontent    ; |1504| 
        ; call occurs [#_checkfilecontent] ; |1504| 
        CMPB      AL,#0                 ; |1504| 
        BF        L476,EQ               ; |1504| 
        ; branch occurs ; |1504| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1504| 
        MOVB      ACC,#9
        BF        L508,UNC              ; |1504| 
        ; branch occurs ; |1504| 
L476:    
        MOVB      ACC,#0
        SETC      SXM
        MOVL      XAR4,XAR2             ; |1507| 
        MOVL      *-SP[2],ACC           ; |1507| 
        MOV       ACC,#-1 << 15
        LCR       #_fm_seek             ; |1507| 
        ; call occurs [#_fm_seek] ; |1507| 
        CMPB      AL,#0                 ; |1507| 
        BF        L477,EQ               ; |1507| 
        ; branch occurs ; |1507| 
        SETC      SXM
        MOV       ACC,AL                ; |1508| 
        MOVL      *-SP[2],ACC           ; |1508| 
        MOVB      ACC,#10
        BF        L508,UNC              ; |1508| 
        ; branch occurs ; |1508| 
L477:    
        MOVL      XAR4,XAR2             ; |1509| 
        MOV       ACC,#1 << 10
        MOVB      XAR5,#224             ; |1509| 
        LCR       #_checkfilecontent    ; |1509| 
        ; call occurs [#_checkfilecontent] ; |1509| 
        CMPB      AL,#0                 ; |1509| 
        BF        L478,EQ               ; |1509| 
        ; branch occurs ; |1509| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1509| 
        MOVB      ACC,#11
        BF        L508,UNC              ; |1509| 
        ; branch occurs ; |1509| 
L478:    
        MOVB      XAR1,#0
L479:    
        MOVB      ACC,#0
        MOVL      XAR4,XAR2             ; |1515| 
        MOVL      *-SP[2],ACC           ; |1515| 
        MOVL      ACC,XAR1              ; |1515| 
        LSL       ACC,10                ; |1515| 
        LCR       #_fm_seek             ; |1515| 
        ; call occurs [#_fm_seek] ; |1515| 
        CMPB      AL,#0                 ; |1515| 
        BF        L480,EQ               ; |1515| 
        ; branch occurs ; |1515| 
        SETC      SXM
        MOV       ACC,AL                ; |1516| 
        MOVL      *-SP[2],ACC           ; |1516| 
        MOVB      ACC,#12
        BF        L508,UNC              ; |1516| 
        ; branch occurs ; |1516| 
L480:    
        MOVZ      AR5,AR1
        MOVL      XAR4,XAR2             ; |1517| 
        MOV       ACC,#1 << 10
        LCR       #_checkfilecontent    ; |1517| 
        ; call occurs [#_checkfilecontent] ; |1517| 
        CMPB      AL,#0                 ; |1517| 
        BF        L481,EQ               ; |1517| 
        ; branch occurs ; |1517| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1517| 
        MOVB      ACC,#13
        BF        L508,UNC              ; |1517| 
        ; branch occurs ; |1517| 
L481:    
        MOVL      ACC,XAR1
        ADDB      ACC,#8                ; |1518| 
        MOVL      XAR1,ACC              ; |1518| 
        MOV       ACC,#256              ; |1518| 
        CMPL      ACC,XAR1              ; |1518| 
        BF        L479,GT               ; |1518| 
        ; branch occurs ; |1518| 
        MOVB      XAR1,#0
L482:    
        MOVB      ACC,#0
        MOVL      XAR4,XAR2             ; |1523| 
        MOVL      *-SP[2],ACC           ; |1523| 
        MOVL      ACC,XAR1              ; |1523| 
        LSL       ACC,10                ; |1523| 
        LCR       #_fm_seek             ; |1523| 
        ; call occurs [#_fm_seek] ; |1523| 
        CMPB      AL,#0                 ; |1523| 
        BF        L483,EQ               ; |1523| 
        ; branch occurs ; |1523| 
        SETC      SXM
        MOV       ACC,AL                ; |1524| 
        MOVL      *-SP[2],ACC           ; |1524| 
        MOVB      ACC,#14
        BF        L508,UNC              ; |1524| 
        ; branch occurs ; |1524| 
L483:    
        MOVZ      AR5,AR1
        MOVL      XAR4,XAR2             ; |1525| 
        MOV       ACC,#1 << 10
        LCR       #_checkfilecontent    ; |1525| 
        ; call occurs [#_checkfilecontent] ; |1525| 
        CMPB      AL,#0                 ; |1525| 
        BF        L485,EQ               ; |1525| 
        ; branch occurs ; |1525| 
L484:    
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1525| 
        MOVB      ACC,#15
        BF        L508,UNC              ; |1525| 
        ; branch occurs ; |1525| 
L485:    
        MOVL      ACC,XAR1
        ADDB      ACC,#1                ; |1526| 
        MOVL      XAR1,ACC              ; |1526| 
        MOV       ACC,#256              ; |1526| 
        CMPL      ACC,XAR1              ; |1526| 
        BF        L482,GT               ; |1526| 
        ; branch occurs ; |1526| 
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |1528| 
        ; call occurs [#_fm_close] ; |1528| 
        CMPB      AL,#0                 ; |1528| 
        BF        L486,EQ               ; |1528| 
        ; branch occurs ; |1528| 
        SETC      SXM
        MOV       ACC,AL                ; |1529| 
        MOVL      *-SP[2],ACC           ; |1529| 
        MOVB      ACC,#16
        BF        L508,UNC              ; |1529| 
        ; branch occurs ; |1529| 
L486:    
        MOVL      ACC,*-SP[4]
        ADDB      ACC,#1                ; |1530| 
        MOVL      *-SP[4],ACC           ; |1530| 
        MOVL      XAR6,*-SP[4]          ; |1530| 
        MOVB      ACC,#5
        CMPL      ACC,XAR6              ; |1530| 
        BF        L458,GT               ; |1530| 
        ; branch occurs ; |1530| 
        SETC      SXM
        MOVL      XAR4,#FSL95           ; |1533| 
        MOV       ACC,#-5 << 10
        LCR       #_fm_truncate         ; |1533| 
        ; call occurs [#_fm_truncate] ; |1533| 
        MOVL      XAR2,XAR4             ; |1533| 
        MOVL      ACC,XAR4              ; |1533| 
        BF        L487,NEQ              ; |1533| 
        ; branch occurs ; |1533| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1534| 
        MOVB      ACC,#17
        BF        L508,UNC              ; |1534| 
        ; branch occurs ; |1534| 
L487:    
        MOVB      XAR1,#0
L488:    
        MOVB      ACC,#0
        MOVL      XAR4,XAR2             ; |1537| 
        MOVL      *-SP[2],ACC           ; |1537| 
        MOVL      ACC,XAR1              ; |1537| 
        LSL       ACC,10                ; |1537| 
        LCR       #_fm_seek             ; |1537| 
        ; call occurs [#_fm_seek] ; |1537| 
        CMPB      AL,#0                 ; |1537| 
        BF        L489,EQ               ; |1537| 
        ; branch occurs ; |1537| 
        SETC      SXM
        MOV       ACC,AL                ; |1538| 
        MOVL      *-SP[2],ACC           ; |1538| 
        MOVB      ACC,#18
        BF        L508,UNC              ; |1538| 
        ; branch occurs ; |1538| 
L489:    
        MOVZ      AR5,AR1
        MOVL      XAR4,XAR2             ; |1539| 
        MOV       ACC,#1 << 10
        LCR       #_checkfilecontent    ; |1539| 
        ; call occurs [#_checkfilecontent] ; |1539| 
        CMPB      AL,#0                 ; |1539| 
        BF        L490,EQ               ; |1539| 
        ; branch occurs ; |1539| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1539| 
        MOVB      ACC,#19
        BF        L508,UNC              ; |1539| 
        ; branch occurs ; |1539| 
L490:    
        MOVL      ACC,XAR1
        ADDB      ACC,#1                ; |1540| 
        MOVL      XAR1,ACC              ; |1540| 
        MOVB      ACC,#251
        CMPL      ACC,XAR1              ; |1540| 
        BF        L488,GT               ; |1540| 
        ; branch occurs ; |1540| 
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |1542| 
        ; call occurs [#_fm_close] ; |1542| 
        CMPB      AL,#0                 ; |1542| 
        BF        L491,EQ               ; |1542| 
        ; branch occurs ; |1542| 
        SETC      SXM
        MOV       ACC,AL                ; |1543| 
        MOVL      *-SP[2],ACC           ; |1543| 
        MOVB      ACC,#20
        BF        L508,UNC              ; |1543| 
        ; branch occurs ; |1543| 
L491:    
        MOVB      ACC,#0
        MOVL      XAR4,#FSL95           ; |1547| 
        LCR       #_fm_truncate         ; |1547| 
        ; call occurs [#_fm_truncate] ; |1547| 
        MOVL      XAR2,XAR4             ; |1547| 
        MOVL      ACC,XAR4              ; |1547| 
        BF        L492,NEQ              ; |1547| 
        ; branch occurs ; |1547| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1548| 
        MOVB      ACC,#21
        BF        L508,UNC              ; |1548| 
        ; branch occurs ; |1548| 
L492:    
        MOVB      XAR1,#0
L493:    
        MOVB      ACC,#0
        MOVL      XAR4,XAR2             ; |1551| 
        MOVL      *-SP[2],ACC           ; |1551| 
        MOVL      ACC,XAR1              ; |1551| 
        LSL       ACC,10                ; |1551| 
        LCR       #_fm_seek             ; |1551| 
        ; call occurs [#_fm_seek] ; |1551| 
        CMPB      AL,#0                 ; |1551| 
        BF        L494,EQ               ; |1551| 
        ; branch occurs ; |1551| 
        SETC      SXM
        MOV       ACC,AL                ; |1552| 
        MOVL      *-SP[2],ACC           ; |1552| 
        MOVB      ACC,#22
        BF        L508,UNC              ; |1552| 
        ; branch occurs ; |1552| 
L494:    
        MOVZ      AR5,AR1
        MOVL      XAR4,XAR2             ; |1553| 
        MOV       ACC,#1 << 10
        LCR       #_checkfilecontent    ; |1553| 
        ; call occurs [#_checkfilecontent] ; |1553| 
        CMPB      AL,#0                 ; |1553| 
        BF        L495,EQ               ; |1553| 
        ; branch occurs ; |1553| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1553| 
        MOVB      ACC,#23
        BF        L508,UNC              ; |1553| 
        ; branch occurs ; |1553| 
L495:    
        MOVL      ACC,XAR1
        ADDB      ACC,#1                ; |1554| 
        MOVL      XAR1,ACC              ; |1554| 
        MOVB      ACC,#128
        CMPL      ACC,XAR1              ; |1554| 
        BF        L493,GT               ; |1554| 
        ; branch occurs ; |1554| 
        MOVB      ACC,#0
        SETC      SXM
        MOVL      XAR4,XAR2             ; |1557| 
        MOVL      *-SP[2],ACC           ; |1557| 
        MOV       ACC,#-1 << 11
        LCR       #_fm_seek             ; |1557| 
        ; call occurs [#_fm_seek] ; |1557| 
        CMPB      AL,#0                 ; |1557| 
        BF        L496,EQ               ; |1557| 
        ; branch occurs ; |1557| 
        SETC      SXM
        MOV       ACC,AL                ; |1558| 
        MOVL      *-SP[2],ACC           ; |1558| 
        MOVB      ACC,#24
        BF        L508,UNC              ; |1558| 
        ; branch occurs ; |1558| 
L496:    
        MOVL      XAR4,XAR2
        LCR       #_fm_seteof           ; |1559| 
        ; call occurs [#_fm_seteof] ; |1559| 
        CMPB      AL,#0                 ; |1559| 
        BF        L497,EQ               ; |1559| 
        ; branch occurs ; |1559| 
        SETC      SXM
        MOV       ACC,AL                ; |1560| 
        MOVL      *-SP[2],ACC           ; |1560| 
        MOVB      ACC,#25
        BF        L508,UNC              ; |1560| 
        ; branch occurs ; |1560| 
L497:    
        MOVB      XAR1,#0
L498:    
        MOVB      ACC,#0
        MOVL      XAR4,XAR2             ; |1564| 
        MOVL      *-SP[2],ACC           ; |1564| 
        MOVL      ACC,XAR1              ; |1564| 
        LSL       ACC,10                ; |1564| 
        LCR       #_fm_seek             ; |1564| 
        ; call occurs [#_fm_seek] ; |1564| 
        CMPB      AL,#0                 ; |1564| 
        BF        L499,EQ               ; |1564| 
        ; branch occurs ; |1564| 
        SETC      SXM
        MOV       ACC,AL                ; |1565| 
        MOVL      *-SP[2],ACC           ; |1565| 
        MOVB      ACC,#26
        BF        L508,UNC              ; |1565| 
        ; branch occurs ; |1565| 
L499:    
        MOVZ      AR5,AR1
        MOVL      XAR4,XAR2             ; |1566| 
        MOV       ACC,#1 << 10
        LCR       #_checkfilecontent    ; |1566| 
        ; call occurs [#_checkfilecontent] ; |1566| 
        CMPB      AL,#0                 ; |1566| 
        BF        L500,EQ               ; |1566| 
        ; branch occurs ; |1566| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1566| 
        MOVB      ACC,#27
        BF        L508,UNC              ; |1566| 
        ; branch occurs ; |1566| 
L500:    
        MOVL      ACC,XAR1
        ADDB      ACC,#1                ; |1567| 
        MOVL      XAR1,ACC              ; |1567| 
        MOVB      ACC,#126
        CMPL      ACC,XAR1              ; |1567| 
        BF        L498,GT               ; |1567| 
        ; branch occurs ; |1567| 
        MOVL      XAR4,XAR2             ; |1569| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1569| 
        LCR       #_fm_seek             ; |1569| 
        ; call occurs [#_fm_seek] ; |1569| 
        CMPB      AL,#0                 ; |1569| 
        BF        L501,EQ               ; |1569| 
        ; branch occurs ; |1569| 
        SETC      SXM
        MOV       ACC,AL                ; |1570| 
        MOVL      *-SP[2],ACC           ; |1570| 
        MOVB      ACC,#28
        BF        L508,UNC              ; |1570| 
        ; branch occurs ; |1570| 
L501:    
        MOVL      XAR4,XAR2
        LCR       #_fm_seteof           ; |1571| 
        ; call occurs [#_fm_seteof] ; |1571| 
        CMPB      AL,#0                 ; |1571| 
        BF        L503,EQ               ; |1571| 
        ; branch occurs ; |1571| 
L502:    
        SETC      SXM
        MOV       ACC,AL                ; |1572| 
        MOVL      *-SP[2],ACC           ; |1572| 
        MOVB      ACC,#29
        BF        L508,UNC              ; |1572| 
        ; branch occurs ; |1572| 
L503:    
        MOVB      XAR1,#0
L504:    
        MOVB      ACC,#0
        MOVL      XAR4,XAR2             ; |1576| 
        MOVL      *-SP[2],ACC           ; |1576| 
        MOVL      ACC,XAR1              ; |1576| 
        LSL       ACC,10                ; |1576| 
        LCR       #_fm_seek             ; |1576| 
        ; call occurs [#_fm_seek] ; |1576| 
        CMPB      AL,#0                 ; |1576| 
        BF        L505,EQ               ; |1576| 
        ; branch occurs ; |1576| 
        SETC      SXM
        MOV       ACC,AL                ; |1577| 
        MOVL      *-SP[2],ACC           ; |1577| 
        MOVB      ACC,#30
        BF        L508,UNC              ; |1577| 
        ; branch occurs ; |1577| 
L505:    
        MOVZ      AR5,AR1
        MOVL      XAR4,XAR2             ; |1578| 
        MOV       ACC,#1 << 10
        LCR       #_checkfilecontent    ; |1578| 
        ; call occurs [#_checkfilecontent] ; |1578| 
        CMPB      AL,#0                 ; |1578| 
        BF        L506,EQ               ; |1578| 
        ; branch occurs ; |1578| 
        MOVB      ACC,#0
        MOVL      *-SP[2],ACC           ; |1578| 
        MOVB      ACC,#31
        BF        L508,UNC              ; |1578| 
        ; branch occurs ; |1578| 
L506:    
        MOVL      ACC,XAR1
        ADDB      ACC,#1                ; |1579| 
        MOVL      XAR1,ACC              ; |1579| 
        MOVB      ACC,#64
        CMPL      ACC,XAR1              ; |1579| 
        BF        L504,GT               ; |1579| 
        ; branch occurs ; |1579| 
        MOVL      XAR4,XAR2
        LCR       #_fm_close            ; |1582| 
        ; call occurs [#_fm_close] ; |1582| 
        CMPB      AL,#0                 ; |1582| 
        BF        L507,EQ               ; |1582| 
        ; branch occurs ; |1582| 
        SETC      SXM
        MOV       ACC,AL                ; |1583| 
        MOVL      *-SP[2],ACC           ; |1583| 
        MOVB      ACC,#32
        BF        L508,UNC              ; |1583| 
        ; branch occurs ; |1583| 
L507:    
        MOVL      XAR4,#FSL95           ; |1587| 
        LCR       #_fm_delete           ; |1587| 
        ; call occurs [#_fm_delete] ; |1587| 
        CMPB      AL,#0                 ; |1587| 
        BF        L509,EQ               ; |1587| 
        ; branch occurs ; |1587| 
        SETC      SXM
        MOV       ACC,AL                ; |1588| 
        MOVL      *-SP[2],ACC           ; |1588| 
        MOVB      ACC,#64
L508:    
        LCR       #__f_result           ; |1588| 
        ; call occurs [#__f_result] ; |1588| 
        BF        L510,UNC              ; |1588| 
        ; branch occurs ; |1588| 
L509:    
        MOVL      XAR4,#FSL3            ; |1590| 
        LCR       #__f_dump             ; |1590| 
        ; call occurs [#__f_dump] ; |1590| 
        MOVB      ACC,#0
L510:    
        SUBB      SP,#4                 ; |1591| 
        MOVL      XAR3,*--SP            ; |1591| 
        MOVL      XAR2,*--SP            ; |1591| 
        MOVL      XAR1,*--SP            ; |1591| 
        LRETR
        ; return occurs



	.sect	".text"
	.global	_f_dotest

;***************************************************************
;* FNAME: _f_dotest                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_f_dotest:
        MOVL      XAR4,#FSL96           ; |1595| 
        LCR       #__f_dump             ; |1595| 
        ; call occurs [#__f_dump] ; |1595| 
        LCR       #__f_poweron          ; |1596| 
        ; call occurs [#__f_poweron] ; |1596| 
        LCR       #_f_formatting        ; |1598| 
        ; call occurs [#_f_formatting] ; |1598| 
        LCR       #_f_dirtest           ; |1599| 
        ; call occurs [#_f_dirtest] ; |1599| 
        LCR       #_f_findingtest       ; |1600| 
        ; call occurs [#_f_findingtest] ; |1600| 
        LCR       #_f_powerfail         ; |1601| 
        ; call occurs [#_f_powerfail] ; |1601| 
        MOVB      AL,#128               ; |1602| 
        LCR       #_f_seeking           ; |1602| 
        ; call occurs [#_f_seeking] ; |1602| 
        MOV       AL,#256               ; |1603| 
        LCR       #_f_seeking           ; |1603| 
        ; call occurs [#_f_seeking] ; |1603| 
        MOV       AL,#512               ; |1604| 
        LCR       #_f_seeking           ; |1604| 
        ; call occurs [#_f_seeking] ; |1604| 
        MOV       AL,#1024              ; |1605| 
        LCR       #_f_seeking           ; |1605| 
        ; call occurs [#_f_seeking] ; |1605| 
        MOV       AL,#2048              ; |1606| 
        LCR       #_f_seeking           ; |1606| 
        ; call occurs [#_f_seeking] ; |1606| 
        MOV       AL,#4096              ; |1607| 
        LCR       #_f_seeking           ; |1607| 
        ; call occurs [#_f_seeking] ; |1607| 
        MOV       AL,#8192              ; |1608| 
        LCR       #_f_seeking           ; |1608| 
        ; call occurs [#_f_seeking] ; |1608| 
        MOV       AL,#16384             ; |1609| 
        LCR       #_f_seeking           ; |1609| 
        ; call occurs [#_f_seeking] ; |1609| 
        MOV       AL,#-32768            ; |1610| 
        LCR       #_f_seeking           ; |1610| 
        ; call occurs [#_f_seeking] ; |1610| 
        LCR       #_f_opening           ; |1611| 
        ; call occurs [#_f_opening] ; |1611| 
        LCR       #_f_appending         ; |1612| 
        ; call occurs [#_f_appending] ; |1612| 
        LCR       #_f_writing           ; |1613| 
        ; call occurs [#_f_writing] ; |1613| 
        LCR       #_f_dots              ; |1614| 
        ; call occurs [#_f_dots] ; |1614| 
        LCR       #_f_rit               ; |1615| 
        ; call occurs [#_f_rit] ; |1615| 
        LCR       #_f_truncating        ; |1616| 
        ; call occurs [#_f_truncating] ; |1616| 
        LCR       #_f_chk               ; |1617| 
        ; call occurs [#_f_chk] ; |1617| 
        LCR       #_f_seekpos           ; |1618| 
        ; call occurs [#_f_seekpos] ; |1618| 
        LCR       #__f_poweroff         ; |1620| 
        ; call occurs [#__f_poweroff] ; |1620| 
        MOVL      XAR4,#FSL97           ; |1621| 
        LCR       #__f_dump             ; |1621| 
        ; call occurs [#__f_dump] ; |1621| 
        LRETR
        ; return occurs


;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"f_formatting",0
	.align	2
FSL2:	.string	"*.*",0
	.align	2
FSL3:	.string	"passed...",0
	.align	2
FSL4:	.string	"f_dirtest",0
	.align	2
FSL5:	.string	"a",0
	.align	2
FSL6:	.string	"ab",0
	.align	2
FSL7:	.string	"abc",0
	.align	2
FSL8:	.string	"abca",0
	.align	2
FSL9:	.string	"a/a",0
	.align	2
FSL10:	.string	"a/ab",0
	.align	2
FSL11:	.string	"a/abc",0
	.align	2
FSL12:	.string	"a/abcd",0
	.align	2
FSL13:	.string	"/a/abcd",0
	.align	2
FSL14:	.string	"t",0
	.align	2
FSL15:	.string	"/a/abcd/t",0
	.align	2
FSL16:	.string	".",0
	.align	2
FSL17:	.string	"../.",0
	.align	2
FSL18:	.string	"/ab",0
	.align	2
FSL19:	.string	"../../a",0
	.align	2
FSL20:	.string	"a:/abca",0
	.align	2
FSL21:	.string	0
	.align	2
FSL22:	.string	" ",0
	.align	2
FSL23:	.string	"?",0
	.align	2
FSL24:	.string	"/abc",0
	.align	2
FSL25:	.string	"/a/a",0
	.align	2
FSL26:	.string	"A:../a/ab",0
	.align	2
FSL27:	.string	"A:/a/abc",0
	.align	2
FSL28:	.string	".././abc/.././a/../a/abcd",0
	.align	2
FSL29:	.string	"..",0
	.align	2
FSL30:	.string	".././abc",0
	.align	2
FSL31:	.string	"../abc",0
	.align	2
FSL32:	.string	"/",0
	.align	2
FSL33:	.string	"./././.",0
	.align	2
FSL34:	.string	"./..",0
	.align	2
FSL35:	.string	"f_findingtest",0
	.align	2
FSL36:	.string	"Hello.dir",0
	.align	2
FSL37:	.string	"q*.*",0
	.align	2
FSL38:	.string	"Hello.",0
	.align	2
FSL39:	.string	"a/*.*",0
	.align	2
FSL40:	.string	"?e.*",0
	.align	2
FSL41:	.string	"*.",0
	.align	2
FSL42:	.string	"*.?",0
	.align	2
FSL43:	.string	"*.??",0
	.align	2
FSL44:	.string	"*.dir",0
	.align	2
FSL45:	.string	"*.d?r",0
	.align	2
FSL46:	.string	"*.d??",0
	.align	2
FSL47:	.string	"*.???",0
	.align	2
FSL48:	.string	"?ello.???",0
	.align	2
FSL49:	.string	"he??o.dir",0
	.align	2
FSL50:	.string	"he?*.dir",0
	.align	2
FSL51:	.string	"HELLO.DIR",0
	.align	2
FSL52:	.string	"hello.dir",0
	.align	2
FSL53:	.string	"??",0
	.align	2
FSL54:	.string	"k*.*",0
	.align	2
FSL55:	.string	"*.a",0
	.align	2
FSL56:	.string	"testdir",0
	.align	2
FSL57:	.string	"testDir",0
	.align	2
FSL58:	.string	92,0
	.align	2
FSL59:	.string	"Hello.dir/testdir",0
	.align	2
FSL60:	.string	"f_powerfail",0
	.align	2
FSL61:	.string	"testdir2",0
	.align	2
FSL62:	.string	"f_seeking with random",0
	.align	2
FSL63:	.string	"f_seeking with 32768",0
	.align	2
FSL64:	.string	"f_seeking with 16384",0
	.align	2
FSL65:	.string	"f_seeking with 8192",0
	.align	2
FSL66:	.string	"f_seeking with 4096",0
	.align	2
FSL67:	.string	"f_seeking with 2048",0
	.align	2
FSL68:	.string	"f_seeking with 1024",0
	.align	2
FSL69:	.string	"f_seeking with 512",0
	.align	2
FSL70:	.string	"f_seeking with 256",0
	.align	2
FSL71:	.string	"f_seeking with 128",0
	.align	2
FSL72:	.string	"w+",0
	.align	2
FSL73:	.string	"test.bin",0
	.align	2
FSL74:	.string	"r",0
	.align	2
FSL75:	.string	"f_opening",0
	.align	2
FSL76:	.string	"file.bin",0
	.align	2
FSL77:	.string	"r+",0
	.align	2
FSL78:	.string	"a+",0
	.align	2
FSL79:	.string	"w",0
	.align	2
FSL80:	.string	"f_appending",0
	.align	2
FSL81:	.string	"ap.bin",0
	.align	2
FSL82:	.string	"f_writing",0
	.align	2
FSL83:	.string	"wr.bin",0
	.align	2
FSL84:	.string	"f_dots",0
	.align	2
FSL85:	.string	"/tt",0
	.align	2
FSL86:	.string	"test",0
	.align	2
FSL87:	.string	"...",0
	.align	2
FSL88:	.string	"tt",0
	.align	2
FSL89:	.string	"  ",0
	.align	2
FSL90:	.string	"f_rit",0
	.align	2
FSL91:	.string	"MyTest",0
	.align	2
FSL92:	.string	"f_truncating",0
	.align	2
FSL93:	.string	"f_chk",0
	.align	2
FSL94:	.string	"f_seekpos",0
	.align	2
FSL95:	.string	"seek.bin",0
	.align	2
FSL96:	.string	"File system test started...",0
	.align	2
FSL97:	.string	"End of tests...",0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_memset
	.global	_fm_format
	.global	_fm_getcwd
	.global	_fm_getfreespace
	.global	_fm_chdir
	.global	_fm_mkdir
	.global	_fm_rmdir
	.global	_fm_findfirst
	.global	_fm_findnext
	.global	_fm_rename
	.global	_fm_filelength
	.global	_fm_close
	.global	_fm_open
	.global	_fm_truncate
	.global	_fm_read
	.global	_fm_write
	.global	_fm_seek
	.global	_fm_tell
	.global	_fm_rewind
	.global	_fm_eof
	.global	_fm_seteof
	.global	_fm_delete
	.global	_f_checkdisk
	.global	__f_poweron
	.global	__f_poweroff
	.global	__f_dump
	.global	__f_result
	.global	UL$$MOD
	.global	UL$$DIV
