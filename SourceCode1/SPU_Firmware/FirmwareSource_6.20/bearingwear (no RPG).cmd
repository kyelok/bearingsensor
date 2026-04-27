/****************************************************************************/
/*   bearingwear.cmd - Linker command file for F2810 device              	*/
/*	 Note there is no external bus, therefore no external ram on the F2810	*/
/*                                                                          */
/*   Description: This file is a F2810 linker command file that can 		*/
/*                be used for linking programs built with the TMS320C2000   */
/*                C Compiler.  Change										*/
/*                the allocation scheme according to the size of your       */
/*                program and the memory layout of your target system.      */
/*   Setup for code in flash memory 0x3f7ff6 must contain a branch 			*/
/*   instruction															*/
/*   ALTER THIS FILE WITH CARE!!!											*/
/****************************************************************************/

MEMORY
{
   PAGE 0 : RESET(R)     : origin = 0x000000, length = 0x2

   PAGE 0 : FLASHMEM      : origin = 0x3E8000, length = 0xFF00      /*on-chip FLASH for the TMS320f2810*/
   PAGE 0 : BOOT(R)		 : origin = 0x3F7F00, length = 0x70     	 /*high boot code */
   PAGE 0 : BOOTJUMP(R)  : origin = 0x3F7FF6, length = 0x2

   PAGE 1 : M0RAM(RW)   : origin = 0x000040, length = 0x3C0
   PAGE 1 : M1RAM(RW)   : origin = 0x000400, length = 0x400
   /* PIE is setup in code, ie.e the vector table is copied at startup from FLASH */
   /*PAGE 1 : PIEVT(RW)   : origin = 0x000d02, length = 0xfe */
   PAGE 1 : L0L1RAM(RW) : origin = 0x008000, length = 0x2000
   PAGE 1 : H0RAM(RW)   : origin = 0x3f8000, length = 0x2000
   PAGE 2 : ADCREG(RW)		: origin = 0x007100, length = 0x0001A
   PAGE 2 : GPADATAPORT(RW) : origin = 0x0070E0, length = 0x00001
   PAGE 2 : GPBDATAPORT(RW) : origin = 0x0070E4, length = 0x00001
   PAGE 2 : GPDDATAPORT(RW) : origin = 0x0070EC, length = 0x00001
   PAGE 2 : GPEDATAPORT(RW) : origin = 0x0070F0, length = 0x00001
   PAGE 2 : GPFDATAPORT(RW) : origin = 0x0070F4, length = 0x00001
   PAGE 2 : GPGDATAPORT(RW) : origin = 0x0070F8, length = 0x00001
   PAGE 2 : SCIAREG(RW)     : origin = 0x007050, length = 0x0000F
   PAGE 2 : SCIBREG(RW)     : origin = 0x007750, length = 0x0000F
   PAGE 2 : SPIREG(RW) 	    : origin = 0x007040, length = 0x00010
   
   
}
 
SECTIONS
{
   /* 22-bit program sections
   .cinit initialised global variables - contains the init values
   .text program space default */
   .reset   : > RESET,     PAGE = 0, TYPE = DSECT

   .pinit   : > FLASHMEM,    PAGE = 0
   .cinit   : > FLASHMEM,    PAGE = 0
   .text    : > FLASHMEM,    PAGE = 0
   .switch  : > FLASHMEM,    PAGE = 0

   /* 16-Bit data sections
   .bss reserved space for unitialised variables
   .stack runtime stack space
   .sysmem uninitialized section called .sysmem for the C memory pool */
   .bss     : > M1RAM, PAGE = 1
   .stack   : > M1RAM, PAGE = 1
   .sysmem  : > H0RAM, PAGE = 1
   
   /* 32-bit data sections */
   /*.vectors : > PIEVT,   PAGE = 1*/
   .ebss    : > L0L1RAM, PAGE = 1
   .esysmem : > L0L1RAM, PAGE = 1
   .filesystem : > H0RAM, PAGE = 1
   .mancomp : > H0RAM, PAGE = 1

   /* allocate a comms section relating to SCI etc */
   .commssection1 : > M0RAM, PAGE = 1
  /* .commssection2 : > M1RAM, PAGE = 1  M1 ram used by stack keep free if possible*/
   .commssection2 : > H0RAM, PAGE = 1

   /* Initalized sections go in Flash */
   /* For SDFlash to program these, they must be allocated to page 0 */
   .const   : > FLASHMEM, PAGE = 0
   .econst  : > FLASHMEM, PAGE = 0
   
   .adcregisters  : > ADCREG, PAGE = 2
   .gparegisters   : > GPADATAPORT, PAGE = 2
   .gpbregisters   : > GPBDATAPORT, PAGE = 2
   .gpdregisters   : > GPDDATAPORT, PAGE = 2
   .gperegisters   : > GPEDATAPORT, PAGE = 2
   .gpfregisters   : > GPFDATAPORT, PAGE = 2
   .gpgregisters   : > GPGDATAPORT, PAGE = 2
   .sciportAregisters : > SCIAREG, PAGE = 2
   .sciportBregisters : > SCIBREG, PAGE = 2
   .spiregisters : > SPIREG, PAGE = 2

   /* Jump code to jump to boot code at 0x3d8000 */
   codestart : > BOOTJUMP, PAGE 0

   .boot > BOOT, PAGE 0
   {
		-lrts2800_ml.lib <boot.obj> (.text)
   }


}
