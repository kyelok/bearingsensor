//	AUTHOR:			AJB
//	PURPOSE:		This provides the low level routines to communicate with the
//					flash logging memory


#include "core.h"
#include "globals.h"
#include "flashprim.h"
#include "define.h"

#if FLASHIC_CODE_ENABLED

#define FLASHSTART			0x00
#define FLASHRESETADDR		flashmemory[0x00] 	// Reset at address zero
#define FLASHDEVADDR1		flashmemory[0x01] 	// Device code addr1
#define FLASHDEVADDR2		flashmemory[0x0E] 	// Device code addr2
#define FLASHDEVADDR3		flashmemory[0x0F] 	// Device code addr3
#define FLASHCODE1ADDR		flashmemory[0x0555]	// Chip 1 first unlock code/command addr
#define FLASHCODE2ADDR		flashmemory[0x02AA]	// Chip 1 second unlock code
#define FLASHCODE1ADDRPTR	&flashmemory[0x0555]	// Chip 1 first unlock code/command addr
#define FLASHCODE2ADDRPTR	&flashmemory[0x02AA]	// Chip 1 second unlock code
#define FLASHCODE1			0xAA							// Chip first unlock code
#define FLASHCODE2			0x55							// Chip second unlock code
#define FLASHREAD			0x00							// Chip Read code
#define FLASHRST			0xF0							// Chip reset code
#define FLASHREADSIG		0x90							// Chip read signature/block protection code
#define FLASHPROG			0xA0							// Chip program code
#define FLASHERASE			0x80							// Chip block/chip erase code
#define FLASHBLERASECONF	0x30				 			// Chip block erase confirm code
#define FLASHCHIPERASECONF	0x10							// Chip chip erase confirm code
#define FLASHERASESUSPEND	0xB0							// Chip erase suspend code
#define FLASHFAILURE		-1
#define FLASHOK				0


//timing for the Am29LV256M
#define FLASHWRITEOPERATION 1000	//1 second max
#define FLASHTOTALERASE 512000	//512 second max
#define FLASHBLOCKCLEAR 5000	//5 second max


flashsel FlashSetting;

void InitFlash(void)
{
	
	EALLOW
	//PLLCR = 2;	//Test slowing down the clock for the flash functions
	GPFDIR |= 0x3e40;						//set up A19-A23 as outputs
	EDIS									//and readbusy as input, also usb_cs as output
	
	gpf->selunion.bits.a19 = 0;
	gpf->selunion.bits.a20 = 0;
	gpf->selunion.bits.a21 = 0;
	gpf->selunion.bits.a22 = 0;
	gpf->selunion.bits.a23 = 0;				//clear all the upper address pins

	FLASHRESETADDR = FLASHRST;			// Reset chip and set to read
	//Delay(1);
	FLASHCODE1ADDR = FLASHCODE1;			// write first unlock
	//Delay(1);
	FLASHCODE2ADDR	= FLASHCODE2;			// write second unlock code
	//Delay(1);
	FLASHCODE1ADDR = FLASHREADSIG;			// write code for read dev
	//Delay(1);
	FlashSetting.code1 = FLASHDEVADDR1;				// read device code
	//Delay(1);
	FlashSetting.code2 = FLASHDEVADDR2;				// read device code
	//Delay(1);
	FlashSetting.code3 = FLASHDEVADDR3;				// read device code
	//Delay(1);
	if (FlashSetting.code1 == 0x227E && FlashSetting.code2 == 0x2212 && FlashSetting.code3 == 0x2201)		// identify device present
	{
		FlashSetting.flashok = TRUE;
	}
	else FlashSetting.flashok = FALSE;
	FLASHRESETADDR = FLASHRST;			// Reset chip and set to read
	FlashSetting.code1ptr = &flashmemory[FLASHSTART];
	
	//EALLOW
	//PLLCR = 10;
	//EDIS
	//Delay(10);

}

//------------------------------------------------------------------------------
//Flash primitive clear
//NOTE CLEARING A FLASH CHIP CAN TAKE 512 seconds!
//------------------------------------------------------------------------------
void ClearFlashPrim(void)
{

	timers.flashtimeout = FLASHTOTALERASE; 		//clear timeout flag to begin
	FlashAddressSet(0);
	FLASHCODE1ADDR = FLASHCODE1;				// write first unlock to first chip
	FLASHCODE2ADDR	= FLASHCODE2;				// write second unlock code to first chip
	FLASHCODE1ADDR = FLASHERASE;				// write erase code to first chip
	FLASHCODE1ADDR = FLASHCODE1;				// write first unlock to first chip
	FLASHCODE2ADDR	= FLASHCODE2;				// write second unlock code to first chip
	FLASHCODE1ADDR = FLASHCHIPERASECONF;		// write erase confirm code to first chip
	Delay(10);									//delay before checking status (wait for complete)
	//THIS DELAY IS NECESSARY DUE TO TBUSY.  see data sheet page 54
	//Tbusy typcially 120ns
	while ((FLASHCODE1ADDR & 0x80) == FALSE && timers.flashtimeout != 0);	// wait for erase to finish or error
	FLASHCODE1ADDR = FLASHRST;					// Reset chip and set to read
   	if(timers.flashtimeout == 0)				//timeout
   	{
   	unsigned char stringbuffer[50];
   		sprintf(stringbuffer,"WARNING: FLASH ERASE ERROR\r\n");
		CLITransmitBuffer(stringbuffer);
   	}
}


//------------------------------------------------------------------------------
// Clear 32KWord block of memory by erasing. This uses the block erase for the chip
// containing the block. Blocks are numbered 0 to 512.
// All data is set to 0xFF. 
//-----------------------------------------------------------------------------
void ClearFlashBlock(unsigned int block)
{
unsigned long addr;
	timers.flashtimeout = FLASHBLOCKCLEAR;							//reset timeout count to zero
	addr = ((unsigned long)block*0x8000);
 	FlashSetting.code1ptr = &flashmemory[addr & 0x07FFFF];
	FlashAddressSet(addr);
	FLASHCODE1ADDR = FLASHCODE1;			// write first unlock
	FLASHCODE2ADDR	= FLASHCODE2;			// write second unlock
	FLASHCODE1ADDR = FLASHERASE;			// write erase code
	FLASHCODE1ADDR = FLASHCODE1;			// write first unlock
	FLASHCODE2ADDR	= FLASHCODE2;			// write second unlock code
	*FlashSetting.code1ptr = FLASHBLERASECONF;			// write erase confirm code to block addr
	Delay(10);									//delay before checking status (wait for complete)
	while ((*FlashSetting.code1ptr & 0x80) == FALSE && timers.flashtimeout != 0);	// wait for erase to finish
	FLASHCODE1ADDR = FLASHRST;				// Reset chip and set to read
	if(timers.flashtimeout == 0)				//timeout
	{
   	unsigned char stringbuffer[50];
   		sprintf(stringbuffer,"WARNING: FLASH ERASE ERROR\r\n");
		CLITransmitBuffer(stringbuffer);
	}                            
}

//------------------------------------------------------------------------------
//Toggle Check checks for write operation completion
//Function will not return until operation is complete
//Globals used: FlashSetting structure
//------------------------------------------------------------------------------
void FlashToggleCheck(void)
{
unsigned int CheckA = 0;
unsigned int CheckB = 0;
	timers.flashtimeout = FLASHWRITEOPERATION;
	do	
	{		
		CheckA = *(FlashSetting.code1ptr) & 0x40;
		CheckB = *(FlashSetting.code1ptr) & 0x40;
	}while (CheckA != CheckB && timers.flashtimeout != 0);
	FLASHCODE1ADDR = FLASHRST;						// Reset chip and set to read
}


//------------------------------------------------------------------------------
// Write data to address in flash memory. The address is from 0x000000 to 0xFFFFFF 
//Currently 16MWord
//------------------------------------------------------------------------------
void WriteFlash(unsigned long addr, unsigned int datawrite)
{
	FlashAddressSet(addr);
	FlashToggleCheck();
	FLASHCODE1ADDR = FLASHCODE1;				// write first unlock to first chip
	FLASHCODE2ADDR = FLASHCODE2;				// write second unlock code to first chip
	FLASHCODE1ADDR = FLASHPROG;					// write program code to first chip
 	FlashSetting.code1ptr = &flashmemory[addr & 0x07FFFF];	//A0 to A18 only
 	*FlashSetting.code1ptr = datawrite;			// write data to chip addr
	SmallDelay();	//Delay(10);				//delay before checking status (wait for complete)
	FlashToggleCheck();					   		//end this operation before leaving

}


void FlashAddressSet(unsigned long addr)
{
unsigned long temp;

	temp = addr & 0xF80000;							//get bits A19-A23
	*((volatile uint16 *)0x70F4) &= 0xC1FF;			//clear address bits on port
	*((volatile uint16 *)0x70F4) |= (unsigned int)(temp >> 10);	//set bits high on port
}

unsigned int ReadFlash(unsigned long addr)
{
unsigned int temp;

	FlashAddressSet(addr);
	//EALLOW
	//PLLCR = 2;	//Test slowing down the clock for the flash functions
	//EDIS
	SmallDelay();
	//Delay(1);
	temp = flashmemory[addr & 0x07FFFF];
	//EALLOW
	//PLLCR = 10;	//Test slowing down the clock for the flash functions
	//EDIS
	SmallDelay();
	//Delay(1);
	return(temp);
}

#endif

