//Reprogramming module for reprogramming the DSP
//This can only be usd for reprogramming not initial programming


//Due to the complexity of including the api library code (as a library it has to be placed into ROM and copied
//to ram for use.  This is complicated as the poistion of the code needs to be set and also loaded into rom
//This could be done by setting the position of the code for example
//   .reprogram > H0RAM, PAGE 1
//   {
//         Flash2810_API_V210.lib (.text)
//   }
//Then strip this code from the built hex file and load this into ROM as a copy table

//Method implemented:
//A simple code implimentation is used below

#include <stdio.h>
#include <string.h>
#include "define.h"
#include "core.h"
#include "reprog.h"
#include "sci.h"
#include "globals.h"
#include "setup.h"
#include "pcmodbus.h"
#include "slave485.h"
#include "pccli.h"

#define WDKEY        *((volatile uint16 *)0x7025) /* WD Key */      
#define ENABLE_WD   0x002F	//enabled (maximum divider)

#define ERASE_STATUS 1
#define ERASE_FAIL 2
#define ERASE_PROGRAM_COMLPETE 0
#define PROGRAM_STATUS 1
#define PROGRAM_FAIL 2

//block codes returned in same modbus register as these codes
//so use large int numbers and decrement
#define SLAVE_ERASE_PASS 0xC000	//top two bits set for pass
#define SLAVE_ERASE_FAIL 0x8000	//top bit set for fail

#define WRITE_STATUSREG     0x01
#define PAGEPROGRAM_OPCODE 	0x02
#define STATUSREG_OPCODE 	0x05
#define WRITEENABLE_OPCODE 	0x06
#define WRITEDISABLE_OPCODE 0x04
#define READSTREAM_OPCODE 	0x03 //11-15-2012 FF: Change to 0x03 from 0x0B to use the slow speed reading
#define ERASE_OPCODE 		0x60

//------------------------------------------------------------------------------------------------------------------------------------
//if not defined none of the code for reprogramming will be included

/*
#pragma CODE_SECTION(TestFuncLowerMem,".LowerProgramMemory")
#pragma CODE_SECTION(ReprogramStartupInit,".LowerProgramMemory")
#pragma CODE_SECTION(ProcessReprogrammingTransferral,".LowerProgramMemory")
#pragma CODE_SECTION(LongUpperReg,".LowerProgramMemory")
#pragma CODE_SECTION(LongLowerReg,".LowerProgramMemory")
#pragma CODE_SECTION(TxRegtoSlave,".LowerProgramMemory")
#pragma CODE_SECTION(RxStatusfromSlave,".LowerProgramMemory")
#pragma CODE_SECTION(ReprogrammingCalls,".LowerProgramMemory")
#pragma CODE_SECTION(ProgramCheckFunc,".LowerProgramMemory")
#pragma CODE_SECTION(ProgramSPIFlashBlock,".LowerProgramMemory")
#pragma CODE_SECTION(EraseSPIFlash,".LowerProgramMemory")
#pragma CODE_SECTION(CheckEraseProgress,".LowerProgramMemory")
#pragma CODE_SECTION(CheckSPIBusy,".LowerProgramMemory")
#pragma CODE_SECTION(CheckEraseProgError,".LowerProgramMemory")
#pragma CODE_SECTION(ProcessorReProgramInit,".LowerProgramMemory")
#pragma CODE_SECTION(Reprogramming,".LowerProgramMemory")
#pragma CODE_SECTION(MasterSlaveCodeCopy,".LowerProgramMemory")
#pragma CODE_SECTION(CopyProgramtoRam,".LowerProgramMemory")
#pragma CODE_SECTION(RunCodefromRam,".LowerProgramMemory")
*/

extern const unsigned int BootloaderArray[];

reprogramstruct reprogram;

void RunCodefromRam(void);
void CopyProgramtoRam(void);
void ProcessorReProgramInit(void);
void ReprogramSerialPortASetup(void);
void WriteEnable(void);
unsigned int CheckSPIBusy(void);
unsigned int CheckEraseProgError(void);

void EraseSPIFlash(void);
void MasterSlaveCodeCopy(void);
void ReprogramTimeoutCheck(void);

//MODBUS STUFF
void LongUpperReg(unsigned long *val, unsigned int func, unsigned int *databuf);
void LongLowerReg(unsigned long *val, unsigned int func, unsigned int *databuf);


//void ProcessReprogrammingTransferral(unsigned int regadd, unsigned int NumReg,unsigned int func,unsigned int* databuf);

//Erasing

//Programming
//reprogram.spi.programgo = FALSE;
//reprogram.spi.status = PROGRAM_STATUS;	//set this when setting the reprogram.spi.programgo from the modbus


//clear down vairlabe setc on startup of DSP
void ReprogramStartupInit(void)
{
	reprogram.reprogramnow = 0;
	reprogram.programkey = 0;
	reprogram.spi.programgo = 0;
	reprogram.slavetx = FALSE;
	reprogram.slaverx = FALSE;
	reprogram.slavestatus = 0;
	reprogram.slaveset = 0;
}

//Check for comms to the PC if we have lost comms and program key is set, then reset the unit
void ReprogramTimeoutCheck(void)
{
	if(reprogram.programkey == 0x12343333)
	{
		if(timers.reprogramtimeout == 0)
		{
			reprogram.programkey = 0;
			SPUUnitReset();
		}
	}
}

//unsigned int testcounter;
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------
//Master Modbus code
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------

//Registers defined and sued during the programming of the SPI flash to be sued for reprogramming the DSP FLASH
//Can be used by the slave or the master depending on the pointer to the pc buffer or slave buffer
void ProcessReprogrammingTransferral(unsigned int regadd, unsigned int NumReg,unsigned int func,unsigned int* databuf)
{
	timers.reprogramtimeout = REPROG_TIMOUT*2;		//reset the timeout if comms received from PC
	//if the timeout expires, reset the programkey to zero and reset for normal operation

	if(regadd == PROGRAMMINGKEYUPPER)	//programming key locations - upper
	{
		LongUpperReg(&reprogram.programkey,func,databuf);
		reprogram.slavestatus = 0;	//clear on receiving the program key
		reprogram.slavetx = TRUE;	//set flag to try and transmit to slave
		timers.slaverqst = 0;
	}
	else if(regadd == PROGRAMMINGKEYLOWER)	//programming key locations - lower
	{
		LongLowerReg(&reprogram.programkey,func,databuf);
		reprogram.slavetx = TRUE;	//set flag to try and transmit to slave
		timers.slaverqst = 0;
	}
	else if(regadd == PROGRAMSTATUS)			//get programming status for PC
	{
		if(func == READREG)	*databuf = reprogram.spi.status;
	}
	else if(regadd == ERASESPIFLASH)	//erase the spi flash on receiving a 1 in this reg
	{
		if(func == WRITEPRESET && *databuf == 1 )
		{
			EraseSPIFlash();	//start the erase phase of SPI flash
			reprogram.slavetx = TRUE;	//set flag to try and transmit to slave
			timers.slaverqst = 0;
		}
	}
	else if(regadd == DATABLOCKSIZE)	//data block size to program into flash
	{
		if(func == WRITEPRESET)
		{
			reprogram.spi.size = *databuf;
			reprogram.slavetx = TRUE;	//set flag to try and transmit to slave
			timers.slaverqst = 0;
		}
		else *databuf = reprogram.spi.size;
	}
	else if(regadd == DATABLOCKSPIADDUPPER)	//data block upper add
	{
		LongUpperReg(&reprogram.spi.address,func,databuf);
	}
	else if(regadd == DATABLOCKSPIADDLOWER)	//data block lower add
	{
		LongLowerReg(&reprogram.spi.address,func,databuf);
	}
	else if(regadd >= DATABLOCKSTART && regadd <= DATABLOCKEND)
	{
		if(func == WRITEPRESET)
		{
			transferbuffer[regadd-DATABLOCKSTART] = *databuf;	//commit the word to the buffer
			reprogram.spi.programgo = TRUE;	//set to true so we can start programming once we leave the modbus code
			reprogram.spi.status = PROGRAM_STATUS;	//set this when setting the reprogram.spi.programgo from the modbus
			reprogram.slavetx = TRUE;	//set flag to try and transmit to slave
			timers.slaverqst = 0;
			//if(regadd == DATABLOCKEND) {sprintf(stringbuffer,"\r\nAddr:%lx - Data:%lx\r\n",DATABLOCKEND, *databuf);DebugStringOut(stringbuffer); }
		}
		else *databuf = transferbuffer[regadd-DATABLOCKSTART];
	}
	else if(regadd == SLAVECHECKCODES)
	{
		if(func == WRITEPRESET && *databuf == 1)
		{
			reprogram.slaveset = FALSE;		//end reprogramming mode for the slave
			reprogram.programkey = 0;		//clear to zero
		}
		else
		{
			//return the slave status (block address or code for erasing)
			*databuf = reprogram.slavestatus;
		}
	}
}

//Transmit any new data received from the PC modbus to the slave
//This must be called after the registers have been processed by the master and before returning anything to the PC
void TxNowtoSlave(void)
{
	if(reprogram.slavetx == TRUE)
	{
		if(settings.mastermode == TRUE && allsensors.numsensorsspu2 != 0 && settings.anadebug.enb == FALSE)
		{
			if(reprogram.slaveset == FALSE)
			{
				timers.slaverqst = 0;
				while(slave485mb.txmode != 0 || reprogram.slavetx == TRUE)
				{
					timers.slaverqst = 0;	//set to zero
					Slave485Modbus();		//make sure any comms in progress is completed
											//this will also send the slavetx stuff if necessary
					settings.watchdog = 1;
				}
				if(reprogram.slavecmdok == TRUE && reprogram.programkey == 0x12342222) reprogram.slaveset = TRUE;	//set to true once the command has been issued to the slave
			}
		}
		timers.pctxtimeout = PCTXTIMEOUT; // PF Gen 2 - 27-Apr-12 to fix issue where timers.pctxtimeout is overwritten during transmission to 2nd SPU stopping reply to PC	
	}
}


//Write to upper within long
void LongUpperReg(unsigned long *val, unsigned int func, unsigned int *databuf)
{
unsigned long temp;

		if(func == WRITEREG || func == WRITEPRESET)
		{
			temp = *databuf;
			temp <<= 16;
			*val = temp;
			reprogram.slavetx = TRUE;	//set flag to try and transmit to slave
			timers.slaverqst = 0;
		}
		else
		{
			temp = *val;
			temp = (temp >> 16);						//get upper
			*databuf = (unsigned int)temp;
		}
}

//Write read from lower in long
void LongLowerReg(unsigned long *val, unsigned int func, unsigned int *databuf)
{
unsigned long temp;

	if(func == WRITEREG || func == WRITEPRESET)
	{
		temp = *databuf;
		*val += (temp & 0xFFFF);
		reprogram.slavetx = TRUE;	//set flag to try and transmit to slave
		timers.slaverqst = 0;
	}
	else *databuf = (unsigned int)*val;
}


//--------------------------------------------------------------------------------------------------------------------------------------------------------------------
//Slave Modbus Code
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------
//Transmit the registers to the slave (essentially a pass through)
void TxRegtoSlave(void)
{
unsigned int size;
unsigned int crc[2];
	
	//essentially the data is passed straight through from the incoming PC buffer and sent to the slave
	//modify the address to the slave address in the first byte

	reprogram.slavecmdok = FALSE;	//will be set to true once response received from slave
	modbuscmdbuf[0] = MODBUS2_SLAVEADDRESS;
	size = pcmodbus.ByteCount + 9;	//9 for first 7 bytes before data and 2 for crc at end
	CalcCRC(modbuscmdbuf,pcmodbus.ByteCount+7,crc);
	modbuscmdbuf[pcmodbus.ByteCount+7] = crc[0];
	modbuscmdbuf[pcmodbus.ByteCount+8] = crc[1];
	MastertoSlaveSendBuffer(modbuscmdbuf,size);

	reprogram.slavetx = FALSE;
	slave485mb.txmode++;
	timers.masterrxtimeout = MASTER_TO_SLAVE_TIMEOUT;
	receivingmode = RECEIVING_REPROGRAMMING;
}


//Status processing back from the slave device
void RxStatusfromSlave(void)
{
unsigned int crc[2];

	config.comms.slaverequest++;	//request - increment the counter
	//if in dc mode change the command sent (this is not strict modbus!)

	slaveresponsemsg[0] = MODBUS2_SLAVEADDRESS;	//fixed address

	//setup for normal mode multi reg read
	slaveresponsemsg[1] = 0x03;	//hex for multi reg read

	slaveresponsemsg[2] = 0x20;	//address byte1 address 0x20D2 = 8402 for status
	slaveresponsemsg[3] = 0xD2;	//address byte2
	slaveresponsemsg[4] = 0;		//numregs byte1
	slaveresponsemsg[5] = 1;		//numregs byte2 only 1 word returned

	CalcCRC(slaveresponsemsg,6,crc);
	slaveresponsemsg[6]	 = crc[0];
	slaveresponsemsg[7]	 = crc[1];

	MastertoSlaveSendBuffer(slaveresponsemsg,8);
	reprogram.slaverx = FALSE;
	slave485mb.txmode++;
	timers.masterrxtimeout = MASTER_TO_SLAVE_TIMEOUT;
	receivingmode = RECEIVING_REPROGRAMMING_STATUS;

}


//Call from the main loop to carry out the code necessary for reprogramming
//SPI Flash related functions
void ReprogrammingCalls(void)
{
	ProgramSPIFlashBlock();
	CheckEraseProgress();
	Reprogramming();
	ReprogramTimeoutCheck();
}

//Programming check function
//Can be called from the CLI to check the device can be programmed and read back
int ProgramCheckFunc(void)
{
/*
int busy;
unsigned int byte1;
unsigned int byte2;
int error;

	PROGRAM_CS = 0;		//Set bit low
	TransmitByte(WRITEENABLE_OPCODE);
	PROGRAM_CS = 1;		//Set bit high
	NOPDelay(1000);		//delay then erase the device
	PROGRAM_CS = 0;		//Set bit low
	TransmitByte(PAGEPROGRAM_OPCODE);	//program page opcode
	//test at address zero with two bytes
	TransmitByte(0);
	TransmitByte(0);
	TransmitByte(0);
 	TransmitByte(0x12);
 	TransmitByte(0x34);
	PROGRAM_CS = 1;		//Set bit high	
	busy = 1;
	timers.reprogram = (SECS_TO_MS_MULTIPLIER) * 1;	//should never take this long!
	//busy should not be asserted for long (no more than 5ms for a page write)
	while(busy != 0 && timers.reprogram != 0)	//check busy and when finished check errors
	{
		busy = CheckSPIBusy();
		settings.watchdog = 1;
	}
	if(timers.reprogram == 0)		//timer should not have reached zero
	{
		return(1);	//return 1 for fail
	}
	else
	{
		error = CheckEraseProgError();
		if(error != 0) return(1); //return 1 for fail
		else
		{
			PROGRAM_CS = 0;		//Set bit low
			TransmitByte(READSTREAM_OPCODE);
			TransmitByte(0);
			TransmitByte(0);
			TransmitByte(0);
			TransmitByte(0xAA);	//dont care byte clocked in	
			byte1 = ReceiveByte();
			byte2 = ReceiveByte();
			PROGRAM_CS = 1;		//Set bit high
			if(byte1 != 0x12 && byte2 != 0x34) return(1);
		}
	}
	return(0);
	*/

unsigned long address;
unsigned int i;
unsigned int loop;
unsigned int data;

	loop=0;
	data=0;

	reprogram.spi.size = 64;

	for (address=0;address<0x07FFFF;address=address+0x80) {
		reprogram.spi.address = address;
		loop++;
		for (i=0;i<reprogram.spi.size;i++) {
			transferbuffer[i] = data++;
		}
		reprogram.spi.programgo = TRUE;
		reprogram.spi.status = 10; // Tell the program SPI flash to not transmit to the slave during this test
		ProgramSPIFlashBlock();

		if (reprogram.spi.status != 0) {
			sprintf(stringbuffer,"Error %u .. Address ... %lx ...",reprogram.spi.status,address); CLITransmitBuffer(stringbuffer);
			return(1);
		}
	}

	return(0);

}


//Program the block passed from the PC over modbus
//This block will have a max size of 64 words or 128 bytes
//size should be specified in words
//The program command will program 128 bytes in one go
//This will be called once from the main loop when the go register is set
//Once the block is programmed the status will be set in reg 8402
void ProgramSPIFlashBlock(void)
{
unsigned int i;
unsigned int address1;
unsigned int address2;
unsigned int address3;
unsigned int error; //error2;
unsigned int byte1;
unsigned int byte2;
//unsigned int wordData;
int busy;
unsigned int receivebuf[64];
//static unsigned int counter;
int noslavetransmit; // PF Gen 2 - 03-May-12 Added to disable slave transmisson during test of chip

	if (reprogram.spi.status == 10 ) { noslavetransmit = TRUE; } else { noslavetransmit = FALSE; }	// PF Gen 2 - 03-May-12 Added to disable slave transmisson during test of chip

	if(reprogram.spi.programgo == TRUE)
	{
		reprogram.spi.status = ERASE_PROGRAM_COMLPETE;
		reprogram.spi.programgo = FALSE;
		reprogram.spi.status = PROGRAM_STATUS;	//set this when setting the reprogram.spi.programgo from the modbus
		//address must be on a 256byte boundary or if less then bytes cannot be roll over this boundary
		address1 = (unsigned int)((reprogram.spi.address >>16) & 0xFF);				//upper most
		address2 = (unsigned int)((reprogram.spi.address >>8) & 0xFF);				//middle
		address3 = (unsigned int)(reprogram.spi.address & 0x0000FF);		//lower

		WriteEnable();
		
		
		//PROGRAM_CS = 0;		//Set bit low	
		//TransmitByte(WRITE_STATUSREG);
		//TransmitByte(0x00);		//clear the global protect bits
		//TransmitByte(0x55);		//dummy byte at end
		//PROGRAM_CS = 1;		//Set bit high

		//WriteEnable();
		NOPDelay(200);		//delay then program the device
		PROGRAM_CS = 0;		//Set bit low
		TransmitByte(PAGEPROGRAM_OPCODE);	//program page opcode
		NOPDelay(200);
		TransmitByte(address1);
		TransmitByte(address2);
		TransmitByte(address3);

		for(i=0;i<reprogram.spi.size;i++)		//max 64 words
		{
			//data stored in the transfer buffer in words
			byte1 = (transferbuffer[i] >> 8) & 0xFF;	//upper byte
			byte2 = transferbuffer[i] & 0xFF;	//lower byte
			TransmitByte(byte1);NOPDelay(200);
			TransmitByte(byte2);NOPDelay(200);
		}
		NOPDelay(200);
		PROGRAM_CS = 1;		//Set bit high	
		NOPDelay(500);
		busy = 1;
		//reprogram timer used whilst programming
		timers.reprogram = (SECS_TO_MS_MULTIPLIER) * 2;	//should never take this long!
		//busy should not be asserted for long (no more than 5ms for a page write)
		//while(timers.reprogram != 0)	//check busy and when finished check errors
			//settings.watchdog = 1;
		while(busy != 0 && timers.reprogram != 0)	//check busy and when finished check errors
		{
			busy = CheckSPIBusy();
			settings.watchdog = 1;
		}
		if(timers.reprogram == 0)		//timer should not have reached zero
		{
			reprogram.spi.status = PROGRAM_FAIL;
			sprintf(stringbuffer,".Busy."); DebugStringOut(stringbuffer);	// DEBUG
			//return;
		}
		else		
		{			
			error = CheckEraseProgError();
			if(error != 0) reprogram.spi.status = PROGRAM_FAIL;
			else
			{				
				PROGRAM_CS = 0;		//Set bit low	
				TransmitByte(0x04);		
				NOPDelay(200);
				PROGRAM_CS = 1;		//Set bit high

				PROGRAM_CS = 0;		//Set bit low
				NOPDelay(200);
				TransmitByte(READSTREAM_OPCODE);				
				TransmitByte(address1);
				TransmitByte(address2);
				TransmitByte(address3);
				NOPDelay(200);
				//TransmitByte(0xAA);	//dont care byte clocked in	
				//check the data loaded into the ram (still in the transferbuffer) against code back from the SPI
				//use the upper half of the transfer buffer for this
				for(i=0;i<reprogram.spi.size;i++)
				{
					byte1 = ReceiveByte();NOPDelay(200);
					byte2 = ReceiveByte();NOPDelay(200);

					//wordData = (byte1 << 8);
					//wordData |= (byte2 & 0xFF);
					receivebuf[i]= (byte1 << 8) | (byte2 & 0xFF);		//use 2nd half of transfer buffer
				}
				PROGRAM_CS = 1;		//Set bit high

				error = FALSE;
				i = 0;
				//sprintf(stringbuffer,"Size:%u\r\n",reprogram.spi.size);
				//CLITransmitBuffer(stringbuffer);
				while((i < reprogram.spi.size) && (error == FALSE))
				{
					//sprintf(stringbuffer,"A:%u B:%u\r\n",transferbuffer[i],receivebuf[i]);
					//CLITransmitBuffer(stringbuffer);
					settings.watchdog = 1;
					if(transferbuffer[i] != receivebuf[i])
					{
						/*
						address1 = (unsigned int)((reprogram.spi.address >>16) & 0xFF);				//upper most
						address2 = (unsigned int)((reprogram.spi.address >>8) & 0xFF);				//middle
						address3 = (unsigned int)(reprogram.spi.address & 0x0000C0) + i;		//lower

						WriteEnable();
						PROGRAM_CS = 0;		//Set bit low
						TransmitByte(PAGEPROGRAM_OPCODE);	//program page opcode
						NOPDelay(200);
						TransmitByte(address1);
						TransmitByte(address2);
						TransmitByte(address3);

						byte1 = (transferbuffer[i] >> 8) & 0xFF;	//upper byte
						byte2 = transferbuffer[i] & 0xFF;	//lower byte
						TransmitByte(byte1);
						TransmitByte(byte2);
						NOPDelay(200);
						PROGRAM_CS = 1;		//Set bit high	
						NOPDelay(500);

						PROGRAM_CS = 0;		//Set bit low
						NOPDelay(200);
						TransmitByte(READSTREAM_OPCODE);				
						TransmitByte(address1);
						TransmitByte(address2);
						TransmitByte(address3);
						NOPDelay(200);

						byte1 = ReceiveByte();
						byte2 = ReceiveByte();
						receivebuf[i]= (byte1 << 8) | (byte2 & 0xFF);
						PROGRAM_CS = 1;		//Set bit high

						if(transferbuffer[i] != receivebuf[i])
						{
							sprintf(stringbuffer,"\r\nAddr:%lx %u T:%x R:%x",reprogram.spi.address,i,transferbuffer[i],receivebuf[i]);  DebugStringOut(stringbuffer);	// DEBUG
							error = TRUE;
						}
						*/
						sprintf(stringbuffer,"\r\nAddr:%lx %u T:%x R:%x",reprogram.spi.address,i,transferbuffer[i],receivebuf[i]);  DebugStringOut(stringbuffer);	// DEBUG
							error = TRUE;
					}
					i++;
				}
				if(error == TRUE)
				{
					reprogram.spi.status = PROGRAM_FAIL;
					//sprintf(stringbuffer,"error == TRUE\r\n");
					//CLITransmitBuffer(stringbuffer);
				}
				else
				{
					//check if we have a slave spu plugged in, if so this should return the status of programming the SPI flash
					// PF Gen 2 - 03-May-12 Added in test for && noslavetransmit
					if(settings.mastermode == TRUE && allsensors.numsensorsspu2 != 0 && settings.anadebug.enb == FALSE && noslavetransmit == FALSE)
					{
						reprogram.slaverx = TRUE;	//set to true to enable the slave485 to get the status
						timers.slaverqst = 0;
						while(slave485mb.txmode != 0 || reprogram.slaverx == TRUE)
						{
							timers.slaverqst = 0;	//set to zero
							Slave485Modbus();		//make sure any comms in progress is completed
													//this will also send the slavetx stuff if necessary
							settings.watchdog = 1;
						}
						if(reprogram.slavecmdok == TRUE && reprogram.slavestatus == 0) reprogram.spi.status = ERASE_PROGRAM_COMLPETE;
						else
						{
							sprintf(stringbuffer,"FIRMWARE\r\n");
							CLITransmitBuffer(stringbuffer);
							reprogram.spi.status = PROGRAM_FAIL;	
						}
					}
					else reprogram.spi.status = ERASE_PROGRAM_COMLPETE;
				}
			}
		}
		//reprogram.spi.status = ERASE_PROGRAM_COMLPETE;
	}
}


//FLASH IC: AT25DF041A-SSH-B
//SPI Flash erase carried out when called from modbus register 8403	
void EraseSPIFlash(void)
{

	reprogram.spi.status = ERASE_STATUS;	
	reprogram.spi.erase = ERASE_STATUS;		//set for erase in progress

	//PROGRAM_CS = 0;		//Set bit low
	//TransmitByte(WRITEENABLE_OPCODE);
	//PROGRAM_CS = 1;		//Set bit high
	WriteEnable();
	NOPDelay(1000);		//delay then erase the device


	PROGRAM_CS = 0;		//Set bit low
	NOPDelay(1000);		//delay then erase the device
	TransmitByte(WRITE_STATUSREG);
	TransmitByte(0x00);		//clear the global protect bits
	TransmitByte(0x55);		//dummy byte at end
	PROGRAM_CS = 1;		//Set bit high
	
	NOPDelay(1000);		//delay then erase the device

	WriteEnable();

	PROGRAM_CS = 0;		//Set bit low
	NOPDelay(1000);		//delay then erase the device
	TransmitByte(ERASE_OPCODE);
	PROGRAM_CS = 1;		//Set bit high

	//reprogram timer used whilst erasing
	timers.reprogram = (SECS_TO_MS_MULTIPLIER) * 10;	//should not take more than 10 seconds to erase the device, max 7second per device spec
}


//Check the progress of the erase cycle for the SPI flash
void CheckEraseProgress(void)
{
unsigned int busy;
unsigned int error;

	if(reprogram.spi.erase == ERASE_STATUS)
	{
		busy = CheckSPIBusy();		//repeat until the erase cycle is complete
		if(busy == FALSE)
		{
			if(timers.reprogram == 0)		//timer should not have reached zero
			{
				reprogram.spi.status = ERASE_FAIL;
				reprogram.spi.erase = 0;
				return;
			}
			else
			{
				error = CheckEraseProgError();
				if(error != 0) reprogram.spi.status = ERASE_FAIL;
				else
				{
					//check if we have a slave spu plugged in, if so this should return the status of programming the SPI flash
					if(settings.mastermode == TRUE && allsensors.numsensorsspu2 != 0 && settings.anadebug.enb == FALSE)
					{
						timers.reprogram = DELAY500MSEC;	//small delay to allow the slave to complete the operation
						while(timers.reprogram != 0) settings.watchdog = 1;
						reprogram.slaverx = TRUE;	//set to true to enable the slave485 to get the status
						timers.slaverqst = 0;
						reprogram.slavestatus = ERASE_STATUS;	//set to 1 for busy, check if still busy and wait for completion
						while(slave485mb.txmode != 0 || reprogram.slaverx == TRUE || reprogram.slavestatus == ERASE_STATUS)
						{
							if(reprogram.slavestatus == ERASE_STATUS) reprogram.slaverx = TRUE;	//set to true to enable the slave485 to get the status
							timers.slaverqst = 0;	//set to zero
							Slave485Modbus();		//make sure any comms in progress is completed
													//this will also send the slavetx stuff if necessary
							settings.watchdog = 1;
						}
						if(reprogram.slavecmdok == TRUE && reprogram.slavestatus == 0) reprogram.spi.status = ERASE_PROGRAM_COMLPETE;
						else reprogram.spi.status = ERASE_FAIL;	
					}
					else reprogram.spi.status = ERASE_PROGRAM_COMLPETE;
				}
				reprogram.spi.erase = 0;	//set to zero once complete
			}
		}
	}
}

void WriteEnable(void)
{
	PROGRAM_CS = 0;		//Set bit low	
	TransmitByte(WRITEENABLE_OPCODE);		
	PROGRAM_CS = 1;		//Set bit high
	NOPDelay(100);
}

//check the spi busy status
//returns zero for not busy 1 for busy
unsigned int CheckSPIBusy(void)
{
	int busystat;

	PROGRAM_CS = 0;		//Set bit low	
	TransmitByte(STATUSREG_OPCODE);
	busystat = ReceiveByte();
	busystat &= 0x01;	//first bit only
	PROGRAM_CS = 1;		//Set bit high
	NOPDelay(100);
	return(busystat);
}

unsigned int CheckEraseProgError(void)
{
	int errorstat;

	PROGRAM_CS = 0;		//Set bit low
	TransmitByte(STATUSREG_OPCODE);
	errorstat = ReceiveByte();
	PROGRAM_CS = 1;		//Set bit high
	NOPDelay(100);
	if((errorstat & 0x20) != 0) return(1);	//error
	return(0);		//no error
}


//Code to be called at the start of reprogramming once the code has been loaded into flash memory
void ProcessorReProgramInit(void)
{
extern cregister volatile uint IER;
unsigned long i;


EALLOW

    IER = 0;		//global interrupt disable
    PIEIER1 = 0x0;	//disable peripheral interrupts
    PIEIER9 = 0x0;


	WDCR = DISABLE_WD;		//watchdog disabled
	XINTCNF2 |= 0x0008;	//switch off xclkout (not currently using it)
	PLLCR = 10;			//set to 10 for SYSCLKOUT = XCLKIN*5 = 150MHz
	GPEDIR = 0x01;
   // Wait for PLL to lock
   // Each time through this loop takes ~14 cycles
   // PLL Lock time is 131072 Cycles
	for(i= 0; i< 131072/14; i++)
	{
		WDKEY = 0x0055;
		WDKEY = 0x00AA;
	}
   //for 150MHZ set the low speed perihperal clock to divide by 4 so we get 37.5MHz
   LOSPCP = 0x02;		//(this is the default setting)
EDIS
	for(i=0;i<10;i++)
	{
	LED1 = 1;		//led on SOLID
	NOPDelay(60000);
	NOPDelay(60000);
	NOPDelay(60000);
	NOPDelay(60000);
	NOPDelay(60000);
	LED1 = 0;
	NOPDelay(60000);
	NOPDelay(60000);
	NOPDelay(60000);
	NOPDelay(60000);
	NOPDelay(60000);
	}
	LED1 = 1;		//led on SOLID
}




//Set for reprogramming set the message on the screen
//Switch off interrupts
//Copy the code from flash into ram
void Reprogramming(void)
{
unsigned long blockcode;
unsigned int blockcodeint;

	//check if we are the master and the programming key is set for master then load code to ram
	if(reprogram.programkey == 0x12341111 && settings.mastermode == TRUE)
	{
		MasterSlaveCodeCopy();
	}
	//check if we are the slave and the programming key is set for slave then load code to ram
	if(reprogram.programkey == 0x12342222 && settings.mastermode == FALSE)
	{
		MasterSlaveCodeCopy();
	}
	if(reprogram.programkey == 0x12342222 && settings.mastermode == TRUE && reprogram.slaveset == TRUE)
	{
		//deal with data characters from the slave after it has entered programming mode
		//these need to be passed to the PC for the front end to process
		//the boot code should not send blocks too closely, ie. place a delay between each block so the codes do not merge into one!
		if(receiveA.currentcharcount != 0 && receiveA.previouscharcount != receiveA.currentcharcount)	//we have incoming characters from slave
		{
			receiveA.previouscharcount = receiveA.currentcharcount;
			timers.slaverxtimeout = SLAVERXTIMEOUT;
		}
		else if(timers.slaverxtimeout == 0 && receiveA.currentcharcount > 2)
		{
 			if(receiveA.buf[0] == 'E' && receiveA.buf[1] == 'C' && receiveA.buf[2] == 'P') reprogram.slavestatus = SLAVE_ERASE_PASS;
 			else if(receiveA.buf[0] == 'E' && receiveA.buf[1] == 'C' && receiveA.buf[2] == 'F') reprogram.slavestatus = SLAVE_ERASE_FAIL;
 			else if(receiveA.buf[0] == 'B' && receiveA.buf[1] == 'C')		//block received
			{
				blockcode = (unsigned long)receiveA.buf[2] << 24;
				blockcode = (unsigned long)receiveA.buf[3] << 16;
				blockcode = (unsigned long)receiveA.buf[4] << 8;
				blockcode += receiveA.buf[5] & 0xFF;
				blockcodeint = (unsigned int)blockcode;
				reprogram.slavestatus = (blockcodeint | 0xC000);	//blockcode sent to PC (top bits set for previous erase pass)
																//must have passed if we are receiving block codes
			}
 
			receiveA.previouscharcount = 0;	//reset to zero
			receiveA.currentcharcount = 0;	//reset for next command in
		}
	}
}

void MasterSlaveCodeCopy(void)
{
	if(reprogram.reprogramnow == TRUE)	//check if programming mode enabled from the modbus registers
	{
		if(timers.reprogram == 0)
		{
			while(1)	//readstream should read in the data and branch to run the code from ram
			{			//if there is a receive error loop and start again
				settings.watchdog = 1;
				ProcessorReProgramInit();	//reprogram the processor for high speed operation before loading code into RAM
				CopyProgramtoRam();		//copy the code from the program ROM to RAM and then jump to the program in ram
										//this will immediately erase the device and the unit must not be reset!!
			}
		}
	}
	else
	{
		timers.reprogram = SECS_TO_MS_MULTIPLIER;		//wait for 1 second before starting (this allows the reply to be sent for the modbus request)
		reprogram.reprogramnow = TRUE;
	}
}


//Stream consists of word of data relating to size
//long relating to position
//stream of word data
//This is similar to the code used in the bootloader hard-coded into the DSP
//Remember data is all in little endian format
//Therefore block size, address are reversed
void CopyProgramtoRam(void)
{
unsigned int i;
unsigned long j;
unsigned int blocksize;
unsigned long address;
unsigned int *ptr;
unsigned int lower;
unsigned int upper;

	//check data in and store into ram...once zero is returned as a block size end and branch to the ram code
	blocksize = 1;	//init
	j = 0;
	while(blocksize != 0)
	{
		settings.watchdog = 1;
		lower = (BootloaderArray[j] >> 8) & 0xFF;
		upper = (BootloaderArray[j] << 8) & 0xFF00;
		blocksize = (upper + lower);
		j++;
		if(blocksize != 0)
		{
			lower = (BootloaderArray[j] >> 8) & 0xFF;
			upper = (BootloaderArray[j] << 8) & 0xFF00;
			address = ((unsigned long)upper + (unsigned long)lower) << 16;
			j++;
			lower = (BootloaderArray[j] >> 8) & 0xFF;
			upper = (BootloaderArray[j] << 8) & 0xFF00;
			address += (upper + lower);
			j++;
			ptr = (unsigned int*)address;	//setup an int ptr this will point to the ram area to place the data
			//this area must not be used by the system whilst copying!
			for(i=0;i<blocksize;i++)
			{
				lower = (BootloaderArray[j] >> 8) & 0xFF;
				upper = (BootloaderArray[j] << 8) & 0xFF00;
				j++;
				*ptr++ = (upper + lower);
				settings.watchdog = 1;
			}
		}
	}
	//jump to the code in ram
	RunCodefromRam();
	//branch here to the code now loaded into ram.  this will run the code to update the flash

}



void RunCodefromRam(void)
{
	//branch to the code loaded from the bootloader and start running this code
	asm(" LB 0x3f8000");
	//we will never return from this branch!
}


//DSPBoot V1.00 13/01/10
const unsigned int BootloaderArray[] = 
{
0x2300,0x3F00,0x8080,0xFEFF,0x1484,0x0000,
0x0000,0x0000,0xFEFF,0x1684,0x0000,0x0000,0x0000,0xFFFF,
0x4084,0x0000,0x0000,0xFEFF,0x4284,0x0000,0x0000,0x0000,
0xFEFF,0x4484,0x0000,0x0000,0x0000,0xFEFF,0x1084,0x0000,
0xC588,0x3F00,0xFEFF,0x1284,0x0000,0xC588,0x3F00,0x0000,
0x2B08,0x3F00,0xA380,0xBDB2,0xBDA2,0x02FE,0x3F8F,0xF87F,
0xA828,0xDF01,0x1F76,0x1002,0x4128,0x0100,0xC492,0x3F8F,
0xF97F,0xC08D,0xEC70,0xC492,0x3F8F,0xFA7F,0xC492,0x3F8F,
0xFB7F,0xC492,0x3F8F,0xFC7F,0xC492,0x3F8F,0xFD7F,0xC492,
0x3F8F,0xFE7F,0xC492,0x3F8F,0xFF7F,0xC492,0xA928,0xDBF9,
0x161E,0x1F76,0x1002,0x0002,0x141E,0xC31A,0x0200,0x7F76,
0xBC81,0x7F76,0xFA81,0x7F76,0x5882,0x7F76,0x8981,0xA928,
0xFF03,0x008F,0x0684,0x7F76,0x8F83,0x7F76,0x2A81,0xC318,
0xFDFF,0xA928,0xC0E1,0xE49B,0x7F76,0x8081,0xC31A,0x0200,
0x1F76,0x1002,0x0002,0x041E,0x00D1,0x019A,0x1F76,0x0002,
0x0196,0x13EC,0xC31A,0x0200,0x7F76,0xB382,0xC318,0xFDFF,
0xA9B2,0x7F76,0x0A81,0x0052,0x03EC,0x7F00,0x0080,0x1F76,
0x0002,0x01D9,0x0192,0xEFED,0x7F76,0x7981,0x82FE,0xBE82,
0xBE8B,0x0600,0xBDB2,0x1F76,0x0002,0xBDAA,0xA986,0x02FE,
0x0192,0x13EC,0x008F,0x0A84,0x1F76,0x0002,0x42A8,0x028A,
0xA90E,0x408F,0x0480,0x7F76,0x5485,0xA959,0xA9AA,0x7F76,
0x5781,0xA192,0xCF56,0x0400,0x7F76,0x7981,0x82FE,0xBE86,
0xBE8B,0x0600,0x0052,0xBDB2,0x19ED,0x00D1,0x459A,0x7F76,
0x3A82,0x439A,0x7F76,0x3A82,0x509A,0x7F76,0x3A82,0xA928,
0x60E3,0x169B,0x7F76,0x8081,0xA192,0x019C,0x0552,0xA959,
0xC456,0xEEFF,0x009A,0xCF56,0x1200,0x459A,0x7F76,0x3A82,
0x439A,0x7F76,0x3A82,0x469A,0x7F76,0x3A82,0xA928,0xE070,
0x729B,0x7F76,0x8081,0x7F76,0x7981,0xBE8B,0x0600,0xBDB2,
0xA98B,0x429A,0x7F76,0x3A82,0x439A,0x7F76,0x3A82,0xAC28,
0x1800,0xA9B2,0x2256,0x7F76,0x3A82,0xA9B2,0xA80E,0x7F76,
0x3A82,0xA9B2,0x0129,0x47FF,0x7F76,0x3A82,0xA9B2,0xFF90,
0x7F76,0x3A82,0xA928,0xB071,0x0B9B,0x7F76,0x8081,0xBE8B,
0x0600,0x2276,0x2F9A,0xA9F4,0x2970,0x1A76,0xCF56,0x0000,
0x00D4,0x58FF,0x06EC,0x0077,0x01DC,0xA40F,0xC656,0xFDFF,
0x0600,0x00B6,0xCF56,0x0E00,0x0252,0x0AED,0x1F76,0xC301,
0x2C40,0x06EF,0x1F76,0x1002,0x0E2B,0xCF56,0x1B00,0x01B6,
0x1F76,0xC301,0x2C40,0x04EF,0x02BE,0xCF56,0x0300,0x01BE,
0xA928,0xE070,0x729B,0x7F76,0x8081,0xA692,0x0152,0xE5ED,
0x1F76,0xC301,0x2C40,0xE1EE,0x1F76,0x1002,0x0E28,0x0100,
0xA792,0x0152,0xE6EC,0x0600,0x1F56,0x2276,0xC0B9,0x2928,
0x6800,0x1A76,0x7F00,0x0080,0x2276,0xA9F5,0xD570,0x1050,
0xA9F4,0xD570,0x0077,0x0077,0xA9F5,0xD470,0x3050,0xA9F4,
0xD470,0x0077,0x0077,0xA9F5,0x1C70,0xA91A,0x0004,0xA9F4,
0x1C70,0x029A,0xA9F4,0x1B70,0x1A76,0x23FF,0x4B00,0x7F76,
0x8081,0x1F76,0xC101,0x1028,0x0700,0x1F76,0xC101,0x1128,
0x2300,0x1F76,0xC101,0x122B,0x1F76,0xC101,0x1328,0x7900,
0x1F76,0xC101,0x1A28,0x0080,0x1F76,0xC101,0x1B2B,0x1F76,
0xC101,0x1C2B,0x1F76,0xC101,0x1D2B,0x1F76,0xC301,0x241A,
0x0020,0x0600,0x2276,0xA9F5,0xD970,0x1050,0xA9F4,0xD970,
0x0077,0x0077,0xA9F5,0xD870,0x3050,0xA9F4,0xD870,0x0077,
0x0077,0xA9F5,0x1C70,0xA91A,0x0008,0xA9F4,0x1C70,0x029A,
0xA9F4,0x1B70,0x1A76,0x23FF,0x4B00,0x7F76,0x8081,0x1F76,
0xDD01,0x1028,0x0700,0x1F76,0xDD01,0x1128,0x2300,0x1F76,
0xDD01,0x122B,0x1F76,0xDD01,0x1328,0x7900,0x1F76,0xDD01,
0x1A28,0x0080,0x1F76,0xDD01,0x1B2B,0x1F76,0xDD01,0x1C2B,
0x1F76,0xDD01,0x1D2B,0x008F,0xF470,0xC41A,0x0008,0xC41A,
0x0010,0x0600,0x1F76,0x1002,0x0E93,0x0153,0x0EEC,0x1F76,
0xC101,0x111A,0x0200,0x1F76,0xC101,0x1447,0xFDEF,0x1F76,
0xC101,0x1996,0xCF56,0x0D00,0x1F76,0xDD01,0x111A,0x0200,
0x1F76,0xDD01,0x1447,0xFDEF,0x1F76,0xDD01,0x1996,0x0600,
0x2276,0xA9F5,0xD470,0x0750,0xA9F4,0xD470,0x0077,0x0077,
0xA9F5,0xC170,0x1F50,0xA9F4,0xC170,0x0077,0x008F,0xE470,
0xA9F5,0xC570,0xA91A,0x00EF,0xA9F4,0xC570,0x1F76,0xC301,
0x408F,0x4170,0xA9F5,0xD570,0xA91A,0xCD1F,0xA9F4,0xD570,
0xC418,0xFFFD,0xC418,0xFFFE,0x3418,0xF7FF,0x1F76,0xC301,
0x201A,0x0800,0xC418,0xFFBF,0x1F76,0xC301,0x341A,0x0007,
0x1F76,0xC301,0x241A,0x000C,0xA9F5,0x1C70,0xA91A,0x0001,
0x008F,0x4070,0xA9F4,0x1C70,0xC418,0x7FFF,0xC41A,0x4000,
0xC418,0xEFFF,0xC4CC,0xF0FF,0x0750,0xC496,0xC518,0xEFFF,
0xC518,0xF7FF,0xC51A,0x0400,0xC51A,0x0200,0x019A,0xC518,
0xFEFF,0xA9F4,0x4470,0xC41A,0x8000,0x1A76,0xC41A,0x4000,
0x7F76,0x7683,0x0600,0x1F76,0x1002,0x0406,0x7F76,0x4B83,
0x1F76,0x0002,0x0196,0x1F76,0x1002,0x0406,0x1F76,0x1002,
0x0209,0x041E,0x1F76,0x0002,0x0192,0x12EC,0x1F76,0x1002,
0x0406,0x7F76,0x0B83,0x1F76,0x0002,0x021E,0x1F76,0x1002,
0x0406,0x1F76,0x1002,0x0409,0x041E,0x7F76,0xD882,0x0600,
0xBDB2,0x1F76,0xC301,0xBDAA,0x2018,0xF7FF,0x7F76,0x3483,
0x00D1,0x1F76,0x0002,0x0192,0x20EC,0x7F76,0x7683,0xA95A,
0x7F76,0x7683,0xA293,0x013B,0xA939,0x008F,0x0480,0xA192,
0xA85A,0xA985,0x0156,0xA400,0x1F76,0x1002,0xC47A,0x0406,
0x0209,0x1F76,0x1002,0x041E,0x1F76,0x0002,0xA192,0x019C,
0x0154,0xA959,0xC856,0xE3FF,0x1F76,0xC301,0x201A,0x0800,
0xBE86,0xBE8B,0x0600,0xBDB2,0xBDAA,0xBDA2,0xC08D,0xE070,
0x02FE,0xC318,0xF7FF,0x7F76,0x3483,0x7F76,0x7683,0xA95A,
0x7F76,0x7683,0xA959,0x7F76,0x7683,0xA90E,0x421E,0x7F76,
0x7683,0xA988,0xA9B2,0x37FF,0xA207,0x37FF,0xA607,0x37FF,
0xA98B,0x4206,0x82FE,0xC31A,0x0800,0xFF90,0x009B,0xBE82,
0xA107,0xBE86,0xBE8B,0x0600,0xBDB2,0xA98B,0x0B9A,0x7F76,
0x6083,0xA9B2,0xA80E,0x7F76,0x6083,0x0129,0xA9B2,0x47FF,
0x7F76,0x6083,0xA9B2,0xFF90,0x7F76,0x6083,0xAA9A,0x7F76,
0x6083,0xBE8B,0x0600,0xBDB2,0xBDA2,0xC08D,0xE070,0xC318,
0xF7FF,0x7F76,0x3483,0x7F76,0x7683,0xA959,0x7F76,0x7683,
0xC31A,0x0800,0xBE82,0xA193,0xBE8B,0xA939,0xA892,0x0600,
0x1F76,0xC101,0xFF90,0xAC28,0x0101,0x0793,0xA912,0x1F76,
0xC101,0x0896,0x0077,0x0077,0x1F76,0xC101,0x0246,0xFDEF,
0x0077,0x0077,0x1F76,0xC101,0x0792,0x0600,0x1F76,0xC101,
0x011A,0x0200,0x1F76,0xC101,0x0828,0xFFFF,0x0077,0x0077,
0x1F76,0xC101,0x0246,0xFDEF,0x0077,0x0077,0x1F76,0xC101,
0x011A,0x0200,0x1F76,0xC101,0x07CC,0xFF00,0x0600,0x06FE,
0x44A8,0x4196,0x448A,0x7F76,0x8084,0x4696,0x0052,0x03EC,
0xEFFF,0x8600,0x4628,0xE703,0x4118,0xFF03,0x4192,0x03ED,
0x149A,0x7D6F,0x7F76,0xD484,0x452B,0x4592,0x0952,0x1666,
0x450E,0x3F8F,0xD888,0x31FF,0x0156,0xA400,0x4483,0xC48A,
0x809A,0x7F76,0xB286,0x4696,0x0052,0x04EC,0x4628,0x1800,
0x056F,0x450A,0x4592,0x0952,0xEC69,0x4692,0x5DED,0x452B,
0x4592,0x0952,0x5966,0x4558,0x3F8F,0xCE88,0x9492,0x41CE,
0x4DEC,0x450E,0x3F8F,0xD888,0x7F8F,0xDA88,0x31FF,0x0156,
0xA400,0x450E,0x31FF,0x0156,0xA500,0xC48A,0xC592,0x4483,
0x7F76,0x7786,0x4696,0x0052,0x13ED,0x450E,0x3F8F,0xD888,
0x7F8F,0xDA88,0x31FF,0x0156,0xA400,0x450E,0x31FF,0x0156,
0xA500,0xC48A,0xC592,0x4483,0x7F76,0x2084,0x4696,0x0052,
0x14ED,0x450E,0x3F8F,0xD888,0x7F8F,0xDA88,0x31FF,0x0156,
0xA400,0x450E,0x31FF,0x0156,0xA500,0xC48A,0xC592,0x4483,
0x7F76,0xB286,0x4696,0x126F,0x450E,0x3F8F,0xD888,0x7F8F,
0xDA88,0x31FF,0x0156,0xA400,0x450E,0x31FF,0x0156,0xA500,
0xC48A,0xC592,0x4483,0x7F76,0xB286,0x4692,0x05ED,0x450A,
0x4592,0x0952,0xA969,0x7F76,0xC784,0x4692,0x86FE,0x0600,
0x10FE,0x46A0,0x4396,0x42A8,0x42C4,0x3D8F,0x0080,0xA9A8,
0xA60F,0x1166,0x4380,0x4206,0xA70D,0xA61E,0x3F8F,0xFF7F,
0x81DE,0xA9A8,0xA60F,0x0768,0x4206,0x0FFF,0x7B00,0x501E,
0x4D2B,0x036F,0x0C9A,0x436F,0x4928,0x1600,0x482B,0x4B2B,
0x4A2B,0x4C2B,0x4D5C,0x5006,0x7F76,0x1F87,0x4796,0x1F76,
0x1002,0x1406,0x00BE,0xA60F,0x03EC,0x14C5,0x673E,0x471B,
0xFFFF,0x1CEC,0x4A1B,0x8813,0x0968,0x468A,0x5006,0x1FFF,
0x7B00,0xC41E,0x4928,0x1600,0x186F,0x485C,0x4D5D,0x5006,
0x7F76,0x6787,0x4B0A,0x4A0A,0x4892,0x0A52,0x0B67,0x4B92,
0x0F52,0x0868,0x4B2B,0x480A,0x056F,0x4C0A,0x5006,0x0109,
0x501E,0x4392,0x4C54,0xCF66,0x7F76,0x3285,0x4392,0x4C54,
0x05ED,0x471B,0xFFFF,0x02ED,0x492B,0x4992,0x90FE,0x0600,
0xBDB2,0xA48B,0x7F76,0xB684,0xA9B2,0x05EC,0x0002,0xC11E,
0xD12B,0xD92B,0xA9F5,0x340B,0xA8F5,0x340B,0xA818,0xFFFE,
0xA8F4,0x340B,0x07F6,0x0077,0x3F8F,0xB9FF,0xC41B,0xFFFF,
0x05EC,0xA9F4,0x340B,0x0E9A,0x186F,0xA9F4,0x340B,0xA9F5,
0x8208,0x0152,0x03EC,0x0252,0x0FED,0xA9F5,0x8308,0x0352,
0x0367,0x0B9A,0x0A6F,0xA9F5,0x880A,0x0052,0x03EC,0x009A,
0x046F,0x0A9A,0x026F,0x0D9A,0xBE8B,0x0600,0x2276,0xA9F5,
0x2970,0x6850,0xA9F4,0x2970,0x1A76,0x0600,0xA9F5,0x7770,
0xA8F5,0x7770,0xA818,0xFEFF,0xA8F4,0x7770,0x0600,0x2276,
0x7F76,0x0285,0x009A,0xA9F4,0x810A,0xA9F5,0x900A,0x04F0,
0xA9F4,0x900A,0x1A76,0x0600,0x2276,0x009A,0xA9F4,0x820A,
0x7F76,0x0285,0xA9F5,0x8308,0x0752,0x0668,0xA928,0x56AA,
0xA9F4,0x810A,0x056F,0xA928,0x55AA,0xA9F4,0x810A,0xA928,
0x0D0E,0xA9F4,0x900A,0x009A,0x039B,0x7F76,0x0B87,0x1F76,
0x1002,0x1406,0x00BE,0xA60F,0x03EC,0x14C5,0x673E,0xA928,
0x0F0A,0xA9F4,0x900A,0xA928,0xCC4C,0x039B,0x7F76,0x0B87,
0x1A76,0x0600,0x009A,0xA9F4,0x910A,0xA9F4,0x940A,0xA9F4,
0x980A,0xA9F4,0x990A,0xA9F4,0x9A0A,0xA9F4,0x9B0A,0xA9F4,
0x920A,0xA9F4,0x890A,0xA9F4,0x8A0A,0xA9F4,0x8B0A,0xA9F4,
0x8C0A,0x0A9A,0xA9F4,0x880A,0xA928,0x0C0C,0xA9F4,0x900A,
0x0600,0x02FE,0x421E,0x2276,0xA928,0x0F0A,0xA9F4,0x900A,
0x008F,0x940A,0x0129,0x4206,0x40FF,0xC496,0x4206,0x0390,
0x82FE,0x0600,0x2276,0x009A,0xA9F4,0x910A,0xA928,0x0F0A,
0xA9F4,0x900A,0x009A,0xA9F4,0x890A,0xA9F4,0x8A0A,0xA9F4,
0x8B0A,0xA9F4,0x8C0A,0x20FF,0x9919,0x7F76,0x0B87,0x1A76,
0x0600,0xA928,0xFFFF,0xA9F4,0x980A,0xA9F4,0x990A,0xA9F4,
0x9A0A,0xA9F4,0x9B0A,0x0600,0x12FE,0x461E,0x44A0,0x42A8,
0x568A,0x7F76,0x8084,0x4D96,0x0052,0x03EC,0xEFFF,0x9800,
0x4D28,0xE703,0x4206,0x4607,0x0119,0x481E,0x42C4,0x3D8F,
0x0080,0xA9A8,0xA60F,0x0D66,0x48C4,0x3F8F,0xFF7F,0xA9A8,
0xA60F,0x0768,0x4206,0x0FFF,0x7B00,0x4A1E,0x4E2B,0x166F,
0x42C4,0x3D8F,0x0078,0xA9A8,0xA60F,0x0E66,0x48C4,0x3D8F,
0xFF7B,0xA9A8,0xA60F,0x0868,0x4206,0x0BFF,0xAF07,0x4A1E,
0x4E28,0x1000,0x036F,0x0C9A,0x6A6F,0x7F76,0xD484,0x0102,
0x501E,0x4606,0x500F,0x5C68,0x4E5C,0x4A06,0x7F76,0xF885,
0x4B96,0x512B,0x5192,0x2D52,0x2967,0x1F76,0x1002,0x1406,
0x00BE,0xA60F,0x03EC,0x14C5,0x673E,0x448A,0x4B92,0xA91C,
0xFFFF,0xC4CE,0x04EC,0x4D28,0x1F00,0x186F,0x448A,0xC492,
0x4B54,0x14EC,0x448A,0x4B92,0x5EFF,0xC4CA,0x4C96,0x4E5D,
0x4C5C,0x4A06,0x7F76,0x3586,0x4E5C,0x4A06,0x7F76,0xF885,
0x4B96,0x510A,0x5192,0x2D52,0xD968,0x448A,0xC492,0x4B54,
0x1BEC,0x4D1B,0xE703,0x03ED,0x4D28,0x1E00,0x568A,0x4B92,
0xDC96,0x448A,0xC492,0x568A,0xD496,0x4E92,0x07ED,0x568A,
0x4A06,0x1FFF,0x7B00,0xC41E,0x136F,0x568A,0x4A06,0x1BFF,
0xAF07,0xC41E,0x0D6F,0x4406,0x0109,0x441E,0x4A06,0x0109,
0x4A1E,0x5006,0x0109,0x501E,0x4606,0x500F,0xA667,0x7F76,
0xC784,0x4D1B,0xE703,0x02ED,0x4D2B,0x4D92,0x92FE,0x0600,
0x08FE,0x437C,0x421E,0x7F76,0xBE84,0x4796,0x7F76,0x1887,
0x4696,0x4206,0x7F76,0x2185,0x4496,0x4392,0xA91A,0x0B0A,
0xA9F4,0x900A,0x019A,0xA9F4,0x910A,0x049A,0xA9F4,0x890A,
0x20FF,0x9919,0x7F76,0x0B87,0x4392,0xA91A,0x0B02,0xA9F4,
0x900A,0x22FF,0x3333,0x7F76,0x0B87,0x4458,0x008F,0x9C0A,
0x9492,0x4596,0x4392,0xA91A,0x0B0A,0xA9F4,0x900A,0x009A,
0x019B,0x7F76,0x0B87,0x7F76,0x3285,0x4692,0x7F76,0x1C87,
0x47F4,0x7770,0x4592,0x88FE,0x0600,0x08FE,0x447D,0x437C,
0x421E,0x7F76,0xBE84,0x4796,0x7F76,0x1887,0x4696,0x4206,
0x7F76,0x2185,0x4596,0x7F76,0x4985,0x4558,0x008F,0x980A,
0x4392,0x9496,0x4492,0xA91A,0x0B0A,0xA9F4,0x900A,0x029A,
0xA9F4,0x910A,0x099A,0xA9F4,0x890A,0x069A,0xA9F4,0x8B0A,
0x20FF,0x9919,0x7F76,0x0B87,0x4492,0xA91A,0x0B02,0xA9F4,
0x900A,0x009A,0x049B,0x7F76,0x0B87,0x4492,0xA91A,0x0B0A,
0xA9F4,0x900A,0x009A,0x019B,0x7F76,0x0B87,0x7F76,0x3285,
0x4692,0x7F76,0x1C87,0x47F4,0x7770,0x88FE,0x0600,0x0CFE,
0x48A0,0x4596,0x44A8,0x44C4,0x3D8F,0x0080,0xA9A8,0xA60F,
0x1066,0x4580,0x4406,0xA70D,0xA61E,0x3F8F,0xFF7F,0x81DE,
0xA9A8,0xA60F,0x0668,0x4406,0x0FFF,0x7B00,0x4C1E,0x036F,
0x0C9A,0x1F6F,0x4128,0x4000,0x455D,0x488A,0x4C06,0x7F76,
0xB987,0x4128,0x8000,0x408F,0x0004,0x488A,0x4C06,0x7F76,
0xB987,0x412B,0x455D,0x488A,0x4C06,0x7F76,0xB987,0x4996,
0x0052,0x06EC,0x488A,0xC406,0x1FFF,0x7B00,0xC41E,0x4992,
0x8CFE,0x0600,0x10FE,0x46A0,0x4396,0x42A8,0x4B28,0xE703,
0x42C4,0x3D8F,0x0080,0xA9A8,0xA60F,0x0D66,0x42C4,0x3F8F,
0xFF7F,0xA9A8,0xA60F,0x0768,0x4206,0x0FFF,0x7B00,0x4E1E,
0x4F2B,0x036F,0x0C9A,0x3E6F,0x4828,0x0100,0x4A28,0x1700,
0x492B,0x491B,0xD007,0x2166,0x4F5C,0x4E06,0x7F76,0xFD87,
0x4796,0x1F76,0x1002,0x1406,0x00BE,0xA60F,0x03EC,0x14C5,
0x673E,0x4792,0x08EC,0x5EFF,0x4F5D,0xA95C,0x4E06,0x7F76,
0x3788,0x076F,0x4A2B,0x4E06,0x0109,0x4E1E,0x480A,0x056F,
0x490A,0x491B,0xD007,0xE169,0x4A92,0x0CEC,0x491B,0xD007,
0x0969,0x4B28,0x1700,0x468A,0x4E06,0x1FFF,0x7B00,0xC41E,
0x046F,0x4392,0x4854,0xCB67,0x4B92,0x1752,0x02EC,0x4B2B,
0x4B92,0x90FE,0x0600,0x1F76,0x1002,0xA987,0x6356,0x1600,
0x3419,0xC456,0x0600,0x43FF,0x0119,0xC256,0xFFFF,0x0600,
0x0876,0x303B,0xBE92,0x0600,0xBD96,0x0076,0x0600,0x08FE,
0x437C,0x421E,0x7F76,0xBE84,0x4796,0x7F76,0x1887,0x4696,
0x4206,0x7F76,0x2185,0x4596,0x039A,0xA9F4,0x910A,0x0A9A,
0xA9F4,0x8C0A,0x009A,0x029B,0x7F76,0x0B87,0x4392,0xA91A,
0x0B0A,0xA9F4,0x900A,0x20FF,0x9919,0x7F76,0x0B87,0x4392,
0xA91A,0x0B02,0xA9F4,0x900A,0x2FFF,0x0100,0x7F76,0x0B87,
0x4558,0x008F,0x9C0A,0x9492,0x4496,0x4392,0xA91A,0x0B0A,
0xA9F4,0x900A,0x009A,0x019B,0x7F76,0x0B87,0xA928,0x0F0A,
0xA9F4,0x900A,0x20FF,0x9919,0x7F76,0x0B87,0x1A76,0x4692,
0x7F76,0x1C87,0x47F4,0x7770,0x4492,0x88FE,0x0600,0x08FE,
0x447D,0x437C,0x421E,0x7F76,0xBE84,0x4796,0x7F76,0x1887,
0x4696,0x4206,0x7F76,0x2185,0x049A,0xA9F4,0x910A,0x069A,
0xA9F4,0x8B0A,0x0B9A,0xA9F4,0x890A,0x039A,0xA9F4,0x8C0A,
0x43F4,0x8A0A,0x009A,0x029B,0x7F76,0x0B87,0x4492,0xA91A,
0x0B0A,0xA9F4,0x900A,0x452B,0x4392,0x4554,0x0968,0x009A,
0x029B,0x7F76,0x0B87,0x450A,0x4392,0x4554,0xF967,0x4492,
0xA91A,0x0B02,0xA9F4,0x900A,0x2FFF,0x1815,0x7F76,0x0B87,
0x4492,0xA91A,0x0B0A,0xA9F4,0x900A,0x009A,0x289B,0x7F76,
0x0B87,0xA928,0x0F0A,0xA9F4,0x900A,0x20FF,0x9919,0x7F76,
0x0B87,0x1A76,0x4692,0x7F76,0x1C87,0x47F4,0x7770,0x88FE,
0x0600,0x0CFE,0x46A8,0x437D,0x421E,0x4B28,0xE703,0x4928,
0x0100,0x4392,0x4954,0x3068,0x4A2B,0x4A92,0x2D52,0x1B67,
0x4F5C,0x4206,0x7F76,0xF885,0x4796,0x1F76,0x1002,0x1406,
0x00BE,0xA60F,0x03EC,0x14C5,0x673E,0x4792,0x0CEC,0x5EFF,
0x4896,0x485C,0x4F5D,0x4206,0x7F76,0x3586,0x4A0A,0x4A92,
0x2D52,0xE768,0x4792,0x09EC,0x4F92,0x07ED,0x468A,0x4206,
0xC41E,0x4B28,0x1500,0x086F,0x4206,0x0109,0x421E,0x490A,
0x4392,0x4954,0xD267,0x4B92,0x1552,0x05EC,0xA91B,0xE703,
0x02ED,0x4B2B,0x4B92,0x8CFE,0x0600,0x08FE,0x437C,0x421E,
0x7F76,0xBE84,0x4796,0x7F76,0x1887,0x4696,0x4206,0x7F76,
0x2185,0x4596,0x4392,0xA91A,0x0B0A,0xA9F4,0x900A,0x059A,
0xA9F4,0x910A,0x20FF,0x9919,0x7F76,0x0B87,0x4392,0xA91A,
0x0B02,0xA9F4,0x900A,0x009A,0x089B,0x7F76,0x0B87,0x4558,
0x008F,0x9C0A,0x9492,0x4496,0x4392,0xA91A,0x0B0A,0xA9F4,
0x900A,0x20FF,0x9919,0x7F76,0x0B87,0x7F76,0x3285,0x4692,
0x7F76,0x1C87,0x47F4,0x7770,0x4492,0x88FE,0x0600,0x08FE,
0x447D,0x437C,0x421E,0x7F76,0xBE84,0x4796,0x7F76,0x1887,
0x4696,0x4206,0x7F76,0x2185,0x4596,0x7F76,0x4985,0x4558,
0x008F,0x980A,0x4392,0x9496,0x4492,0xA91A,0x0B0A,0xA9F4,
0x900A,0x069A,0xA9F4,0x910A,0xA9F4,0x8B0A,0xA9F4,0x890A,
0x009A,0xA9F4,0x8C0A,0x009A,0x0A9B,0x7F76,0x0B87,0x4492,
0xA91A,0x0B02,0xA9F4,0x900A,0x2FFF,0xE803,0x7F76,0x0B87,
0x4492,0xA91A,0x0B0A,0xA9F4,0x900A,0x009A,0x019B,0x7F76,
0x0B87,0x7F76,0x3285,0x4692,0x7F76,0x1C87,0x47F4,0x7770,
0x88FE,0x0600,0xBDB2,0x1F76,0x1002,0xBDAA,0x12C5,0x673E,
0x1F76,0x1102,0x0059,0xA192,0x10EC,0x013B,0x008F,0x8084,
0x0356,0xA101,0x0156,0xA400,0xA486,0x82DA,0xC2C5,0x673E,
0xA192,0xFF9C,0xA959,0xFAED,0x1F76,0x1102,0x0206,0x03EC,
0xA71E,0x673E,0x1F76,0x1102,0x0406,0x03EC,0xA71E,0x673E,
0x0077,0x006F,0x1F76,0x1002,0xBDB2,0x12C5,0xA48B,0x673E,
0x1F76,0x1102,0x0092,0x2052,0x0764,0x1F76,0x1002,0x10C5,
0x673E,0x019A,0x106F,0x0093,0x013B,0x008F,0x8084,0x000A,
0x0356,0xA801,0x0156,0xA400,0x1F76,0x1002,0xC4B2,0x10C5,
0x673E,0x009A,0xBE8B,0x0600,0x006F,0x0600,0x1F76,0x1002,
0x12A8,0x0600,0x1F76,0x1002,0x10A8,0x0600,0x3200,0x3F00,
0xCE88,0x0002,0x0001,0x8000,0x4000,0x2000,0x1000,0x0800,
0x0400,0x0200,0x0100,0x0080,0x3D00,0x0020,0x0000,0x00A0,
0x3D00,0x0020,0x0000,0x00C0,0x3D00,0x0040,0x0000,0x0000,
0x3E00,0x0040,0x0000,0x0040,0x3E00,0x0040,0x0000,0x0080,
0x3E00,0x0040,0x0000,0x00C0,0x3E00,0x0040,0x0000,0x0000,
0x3F00,0x0040,0x0000,0x0040,0x3F00,0x0020,0x0000,0x0060,
0x3F00,0x0020,0x0000,0x4600,0x3F00,0x0080,0xAD28,0x0004,
0x69FF,0x1F56,0x1656,0x1A56,0x4029,0x1F76,0x0000,0x0229,
0x1B76,0x2276,0xA928,0x8080,0xA828,0x3F00,0x0109,0x1D61,
0xFF76,0x8080,0x0429,0x0F6F,0x009B,0xA924,0x01DF,0x046C,
0x0429,0xA824,0x01DF,0xA61E,0xA1F7,0x8624,0xA706,0xA181,
0x0109,0xA71E,0xA924,0x0363,0x5CFF,0x043B,0xA959,0x0077,
0x0077,0x01DF,0x0900,0xEAFF,0x1A76,0xA928,0xFFFF,0xA828,
0xFFFF,0x0109,0x0E61,0xFF76,0xFFFF,0x066F,0x01DF,0xBDC3,
0xA71E,0x673E,0xBEC5,0xA924,0x01DF,0xA824,0x58FF,0xF760,
0x7F76,0xA380,0x7F76,0x7A88,0x0000,0x0000,0x0000,0x0000
};



//--------------------------------------------------------------------------------------------------






