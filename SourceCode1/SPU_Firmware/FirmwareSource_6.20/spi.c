#include <stdio.h>
#include <string.h>
#include "globals.h"
#include "core.h"
#include "spi.h"
#include "sci.h"
#include "logging.h"
#include "utils.h"
#include "setup.h"
#include "pccli.h"
#include "man.h"
#include "sdcard.h"
#include "alarms.h"
#include "version.h"
#include "wioprim.h"
#include "slave485.h"

#pragma DATA_SECTION(spiregs, ".spiregisters");


void ReadEEPROMStruct(unsigned int pos, unsigned int* ptr,unsigned int len);
void WriteEnableFram1(void);
void WriteEnableFram2(void);

#define SPIBRR 		*((volatile uint16 *)0x7044)  /* SPI Baud rate reg*/

volatile struct SPI_REGS spiregs;

typedef struct tag_addressstruct
{
	unsigned long page;
	unsigned int byteaddr;
}flashaddrstruct;

unsigned int dummy;		//dummy byte used on SPI transmit to clear the int_flag
flashaddrstruct flashaddr;
flashflags flashcheck;

void SelectEEprom1(void);
void SelectFlash1(void);
void SelectFlash2(void);
void SelectFlash3(void);
void SelectFlash4(void);
void SelectUart_C(void);

void SelectFram1(void);
void SelectFram2(void);

void SelectRTC(void);
void DeselectEEprom1(void);
void DeselectSPI(void);
void DeselectUart_C(void);
void TransmitByte(unsigned int byteout);
void WriteEnableEEprom1(void);
void WritetoMemoryEEprom1(unsigned int addy);
unsigned int ReadEEprom1StatusReg(void);
void ReadMemoryEEprom1(unsigned int addy);
void ResetUart(void);

void SaveSafeGeneric(unsigned int start, unsigned int *ptr, unsigned int size);



void InitSPI(void)
{
	
	EALLOW
	GPFMUX |= 0x07;				//set up in peripheral mode rather than gpio
	GPBDIR |= 0x4000;			//set up cs select for RTC
	GPFDIR |= 0x070D;			//set up select bits and SPI stuff

	//see the digout.c for the direction of the gpio1 to 4

	gpf.selunion.bits.spiste = 0;	//set spiste line low (not actually using but set low)
	DeselectSPI();
	PCLKCR |= 0x0100;	//bit 8 set LSPCLK enabled for SPI
	
	spiregs.SPICCR.bit.SPISWRESET = 0;	//set to one once all changes are made
	spiregs.SPICCR.bit.CLKPOLARITY = 0;
	spiregs.SPICCR.bit.SPILBK = 0;
	spiregs.SPICCR.bit.SPICHAR = 0x07;
	spiregs.SPICTL.bit.OVERRUNINTENA = 0;
	spiregs.SPICTL.bit.CLK_PHASE = 0;
	spiregs.SPICTL.bit.MASTER_SLAVE = 1;
	spiregs.SPICTL.bit.TALK = 1;
	spiregs.SPICTL.bit.SPIINTENA = 0;

	
								//max 2MHz speed on SPI for DS1306 clock chip
								//Speeds for the SPI devices on the Bearing Wear:
								//DS1306 clock chip: 600KHz, BRR = 61 (604.8KHz)
								//M95128 EEPROM: 	 1MHz,   BRR = 36 (1.01MHz)
								//MAX3100 SPI UART:	 1MHz,   BRR = 36 (1.01MHz)
								//AT45DB321C: 		 20MHz,  BRR = 1  (18.75MHz)
								//
	SPIBRR = RTC_SPIBRR;			//61;				//set for divide by 62 (LOSPCP/(BRR+1)) LOSPCP set to 37.5MHz
	
	spiregs.SPICCR.bit.SPISWRESET = 1;
	EDIS
	
	//clock related inits
	clocktime.WPstate = 0;		//set WP state to zero, will be set to 1 on the first write to the clock
								//this saves having to write to the control register every time

	//flash related inits
	flashaddr.page = 0;
	flashaddr.byteaddr = 0;	//this will always be zero as always loading full pages								
	
	settings.updatesafe = 0;

	settings.spiinuse = 0;
	
}


//Pass in the start position of the safe to be saved, a pointer to the safe and the size
void SaveSafeGeneric(unsigned int start, unsigned int *ptr, unsigned int size)
{
unsigned int i;
unsigned int temp;
unsigned int byte1;
unsigned int byte2;
	
	settings.watchdog = 1;
	timers.spistatus = 3;	//15ms timeout
		do
		{      
			temp = ReadEEprom1StatusReg();
			settings.watchdog = 1;	//kick the dog in the timer interrupt
		}while((temp & 0x01) && timers.spistatus != 0);
		WritetoMemoryEEprom1(start);
		for(i=0;i<size;i++)	//sizeof in words
		{   
			byte1 = *ptr >> 8;
			byte2 = *ptr & 0x00FF;
			TransmitByte(byte1);
			TransmitByte(byte2);
			ptr++;
		}
		DeselectSPI();
}



//save the structure contianing the firmware version to the eeprom
void SaveFirmwareStruct(void)
{
unsigned int *ptr;
unsigned int position;
unsigned int size;

	ptr = (unsigned int*)&firmware;
	position = FIRMWAREVERSPU2;
	size = sizeof(firmwarestruct);
	SaveSafeGeneric(position,ptr,size);
}

//save the safe structure to the nonvolatile memory
//this structure must not exceed 64 bytes in size, a page write can only be 64 bytes long
//two structures to safe for BW
void SaveSafeStruct1(void)
{
unsigned int *ptr;
unsigned int position;
unsigned int size;

	ptr = (unsigned int*)&safe1;
	position = SAFESTRUCT1SAVEPOSITION;
	size = sizeof(safestruct1struct);
	SaveSafeGeneric(position,ptr,size);
}

// AJB 15-Feb-10
// save to a different area in non vol (not used before so we can calibrate the channels and revert back to older code without losing the cal factors
void SaveXtswplusAnaCal(void)
{
unsigned int *ptr;
unsigned int position;
unsigned int size;

	ptr = (unsigned int*)&xtswplusanacal;
	position = XTSWPLUS_ANALOG_POSITION;
	size = sizeof(xtswplusanastruct);
	SaveSafeGeneric(position,ptr,size);
}
// AJB 15-Feb-10 EOM

void SaveSafeStruct2(void)
{
unsigned int *ptr;
unsigned int position;
unsigned int size;

	ptr = (unsigned int*)&safe2;
	position = SAFESTRUCT2SAVEPOSITION;
	size = sizeof(safestruct2struct);
	SaveSafeGeneric(position,ptr,size);
}

//read the structures from nonvolatile memory
void ReadAllFromEEPROM(void)
{
unsigned int *ptr;
unsigned int position;
unsigned int size;
	
	ptr = (unsigned int*)&safe1;
	position = SAFESTRUCT1SAVEPOSITION;
	size = sizeof(safestruct1struct);
	ReadEEPROMStruct(position,ptr,size);

	ptr = (unsigned int*)&safe2;			//set for 2nd struct to save
	position = SAFESTRUCT2SAVEPOSITION;		//
	size = sizeof(safestruct2struct);		//		
	ReadEEPROMStruct(position,ptr,size);


	ptr = (unsigned int*)&sdsettings;		//
	position = SDSETTINGSPOS;				//
	size = sizeof(sdsettingsstruct);		//		
	ReadEEPROMStruct(position,ptr,size);

// AJB 15-Feb-10 Read new structure for analogue calibration
	ptr = (unsigned int*)&xtswplusanacal;
	position = XTSWPLUS_ANALOG_POSITION;
	size = sizeof(xtswplusanastruct);
	ReadEEPROMStruct(position,ptr,size);
// AJB EOM

	ptr = (unsigned int*)&firmware;			//
	position = FIRMWAREVERSPU2;				//
	size = sizeof(firmwarestruct);			//		
	ReadEEPROMStruct(position,ptr,size);

}

//Pass in position of where to read from eeprom
//read from EEPROM into a structure at ptr
//Pass in storage ptr and length, length in words
void ReadEEPROMStruct(unsigned int pos, unsigned int* ptr,unsigned int len)
{
unsigned int i;
unsigned int temp;
unsigned int byte1;
unsigned int byte2;

	settings.watchdog = 1;
	timers.spistatus = 3;	//15ms timeout
	do
	{
		temp = ReadEEprom1StatusReg();
		settings.watchdog = 1;	//kick the dog in the timer interrupt
	}while((temp & 0x001) && timers.spistatus != 0);
	ReadMemoryEEprom1(pos);
	for(i=0;i<len;i++)	//sizeof in words
		{   
			byte1 = ReceiveByte();
			byte2 = ReceiveByte();
			*ptr = (byte1 << 8) + (byte2 & 0x00FF);
			ptr++;
		}
		DeselectSPI();
}

//Reads the pointers stored in the RTC RAM associated with the logging in flash
//These pointers are stored here as this is battery backed RAM and does not
//have a finite overwrite limit
/*AJB 19-Aug-10 no longer using these as there is no flash memory on XTSW+	
void ReadLoggingPtrsFromRTCRam(void)
{
unsigned long temp;

	SelectRTC();	//select the rtc including a delay before SCLK
	TransmitByte(0x20);	//(opcode) ptr to RAM register for reading

	//read back main log ptrs
	logging.mainwrapflag	= ReceiveByte();
	temp = ReceiveByte();
	temp <<= 24;
	logging.mainptr = temp;	
	temp = ReceiveByte();
	temp <<= 16;
	logging.mainptr += temp;
	temp = ReceiveByte();
	temp <<= 8;
	logging.mainptr += temp;
	temp = ReceiveByte();
	logging.mainptr += temp;
	
	//read back trend log ptrs
	logging.trendwrapflag	= ReceiveByte();
	temp = ReceiveByte();
	temp <<= 24;
	logging.trendptr = temp;	
	temp = ReceiveByte();
	temp <<= 16;
	logging.trendptr += temp;
	temp = ReceiveByte();
	temp <<= 8;
	logging.trendptr += temp;
	temp = ReceiveByte();
	logging.trendptr += temp;
	
	//read back event log ptrs
	logging.eventwrapflag	= ReceiveByte();
	temp = ReceiveByte();
	temp <<= 24;
	logging.eventptr = temp;	
	temp = ReceiveByte();
	temp <<= 16;
	logging.eventptr += temp;
	temp = ReceiveByte();
	temp <<= 8;
	logging.eventptr += temp;
	temp = ReceiveByte();
	logging.eventptr += temp;
	
	temp = ReceiveByte();
	temp <<= 8;
	logging.eventarrayptr = temp;
	temp = ReceiveByte();
	logging.eventarrayptr += temp;

	DeselectSPI();
}
*/

/*AJB 19-Aug-10 no longer using these as there is no flash memory on XTSW+	
void WriteLoggingPtrstoRTCRam(void)
{
unsigned int temp;
	if(clocktime.WPstate == 0)
	{
		SelectRTC();
		TransmitByte(0x8F);	//(opcode) ptr to control register
		TransmitByte(0x00);	//send zero to control register	//this knocks down the write protect bit6
		DeselectSPI();
		clocktime.WPstate = 1;	//set once the WP bit has been cleared
		NOPDelay(600);			//small delay before writing to the clock
	}
	SelectRTC();
	TransmitByte(0xA0);	//(opcode) ptr to RAM register for writing
	//main log ptrs
	TransmitByte(logging.mainwrapflag);
	//transmit the pointer (only actually 25bits )
	temp = logging.mainptr >> 24;	//upper 
	temp &= 255;
	TransmitByte(temp);	
	temp = logging.mainptr >> 16;
	temp &= 255;
	TransmitByte(temp);
	temp = logging.mainptr >> 8;
	temp &= 255;
	TransmitByte(temp);
	temp = logging.mainptr & 255;
	TransmitByte(temp);
	
	//trend log ptrs
	TransmitByte(logging.trendwrapflag);
	//transmit the pointer (only actually 25bits )
	temp = logging.trendptr >> 24;	//upper 
	temp &= 255;
	TransmitByte(temp);	
	temp = logging.trendptr >> 16;
	temp &= 255;
	TransmitByte(temp);
	temp = logging.trendptr >> 8;
	temp &= 255;
	TransmitByte(temp);
	temp = logging.trendptr & 255;
	TransmitByte(temp);
	
	//event log ptrs
	TransmitByte(logging.eventwrapflag);
	//transmit the pointer (only actually 25bits )
	temp = logging.eventptr >> 24;	//upper 
	temp &= 255;
	TransmitByte(temp);	
	temp = logging.eventptr >> 16;
	temp &= 255;
	TransmitByte(temp);
	temp = logging.eventptr >> 8;
	temp &= 255;
	TransmitByte(temp);
	temp = logging.eventptr & 255;
	TransmitByte(temp);
	
	temp = logging.eventarrayptr >> 8;
	temp &= 255;
	TransmitByte(temp);
	temp = logging.eventarrayptr & 255;
	TransmitByte(temp);
	DeselectSPI();
}
*/

void ReadClockControl(void)
{
	SelectRTC();
	TransmitByte(0x0F);		//(opcode) ptr to control register
	clocktime.control = ReceiveByte();
	DeselectSPI();
}

//Reads back the secs, mins, hours, date, month, year
//Returns zero on success
void ReadClockData(void)
{
	if(timers.sectick == 0)
	{
		timers.sectick = ONE_SEC_TIMEOUT;
		SelectRTC();
		TransmitByte(0x00);	//(opcode) ptr to seconds register

		clocktime.seconds	= ReceiveByte();
		clocktime.minutes	= ReceiveByte();
		clocktime.hours		= ReceiveByte();
		clocktime.day		= ReceiveByte();
		clocktime.date		= ReceiveByte();
		clocktime.month		= ReceiveByte();
		clocktime.year		= ReceiveByte();
		DeselectSPI();
		DateTimetoInt();	//store to live data stores for modbus reading
	}
}

void WriteClockData(void)
{
	DebugStringOut("Code - WriteClockData\r\n"); // PF DEBUG

	if(clocktime.WPstate == 0)
	{
		SelectRTC();
		TransmitByte(0x8F);		//(opcode) ptr to control register
		TransmitByte(0x00);		//send zero to control register	//this knocks down the write protect bit6
		DeselectSPI();
		clocktime.WPstate = 1;	//set once the WP bit has been cleared
		NOPDelay(600);				//small delay before writing to the clock
	}
	SelectRTC();
	TransmitByte(0x80);	//(opcode) ptr to seconds register
	TransmitByte(clocktime.seconds);
	TransmitByte(clocktime.minutes);
	TransmitByte(clocktime.hours);
	TransmitByte(clocktime.day);
	TransmitByte(clocktime.date);
	TransmitByte(clocktime.month);
	TransmitByte(clocktime.year);
	DeselectSPI();
	clocktime.framstamp = BuildTimeStamp();
	clocktime.clockerr = FALSE;		//cleared on write
	SaveTimetoFram();
	// PF Gen 2 - 08-Mar-12 Removed resetting of rtc failure  - ClearAlarmEvent(RTCFAIL,TRUE);			//clear the in alarm bit for the fault

}

void WriteYrMnthData(void)
{

	DebugStringOut("Code - WriteYrMnthData\r\n"); // PF DEBUG

	if(clocktime.WPstate == 0)
	{
		SelectRTC();
		TransmitByte(0x8F);		//(opcode) ptr to control register
		TransmitByte(0x00);		//send zero to control register	//this knocks down the write protect bit6
		DeselectSPI();
		clocktime.WPstate = 1;	//set once the WP bit has been cleared
		NOPDelay(600);				//small delay before writing to the clock
	}
	SelectRTC();
	TransmitByte(0x85);	//(opcode) ptr to month register
	TransmitByte(clocktime.month);
	TransmitByte(clocktime.year);
	DeselectSPI();
	clocktime.framstamp = BuildTimeStamp();
	clocktime.clockerr = FALSE;		//cleared on write
	SaveTimetoFram();
	ClearAlarmEvent(RTCFAIL);			//clear the in alarm bit for the fault
}

void WriteDateHrsData(void)
{

	DebugStringOut("Code - WriteDateHrsData\r\n"); // PF DEBUG

	if(clocktime.WPstate == 0)
	{
		SelectRTC();
		TransmitByte(0x8F);		//(opcode) ptr to control register
		TransmitByte(0x00);		//send zero to control register	//this knocks down the write protect bit6
		DeselectSPI();
		clocktime.WPstate = 1;	//set once the WP bit has been cleared
		NOPDelay(600);				//small delay before writing to the clock
	}
	SelectRTC();
	TransmitByte(0x82);	//(opcode) ptr to seconds register
	TransmitByte(clocktime.hours);
	TransmitByte(clocktime.day);
	TransmitByte(clocktime.date);
	DeselectSPI();
	clocktime.framstamp = BuildTimeStamp();
	clocktime.clockerr = FALSE;		//cleared on write
	SaveTimetoFram();
	ClearAlarmEvent(RTCFAIL);			//clear the in alarm bit for the fault
}

void WriteMinsSecsData(void)
{

	DebugStringOut("Code - WriteMinsSecsData\r\n"); // PF DEBUG

	if(clocktime.WPstate == 0)
	{
		SelectRTC();
		TransmitByte(0x8F);		//(opcode) ptr to control register
		TransmitByte(0x00);		//send zero to control register	//this knocks down the write protect bit6
		DeselectSPI();
		clocktime.WPstate = 1;	//set once the WP bit has been cleared
		NOPDelay(600);				//small delay before writing to the clock
	}
	SelectRTC();
	TransmitByte(0x80);	//(opcode) ptr to seconds register
	TransmitByte(clocktime.seconds);
	TransmitByte(clocktime.minutes);
	DeselectSPI();
	clocktime.framstamp = BuildTimeStamp();
	clocktime.clockerr = FALSE;		//cleared on write
	SaveTimetoFram();
	ClearAlarmEvent(RTCFAIL);			//clear the in alarm bit for the fault
}

//This function will load the flashcheck structure with the device ID
//for the ATMEL AT45DB321C this will be 27h
//This can be used as a comms check to the four serial flash devices
void CheckFlash(void)
{
	spiregs.SPICCR.bit.CLKPOLARITY = 1;	//data output on FALLING edge, input on RISING (NON-standard mode)
	
	SPIBRR = AT45DB321_SPIBRR;	//3;				//set to 3 for flash memory
	
	ReceiveByte();	//dummy receive to get clock in correct polarity
	
	SelectFlash1();
	TransmitByte(0x9F);		//MANUFACTURER AND DEVICE ID read(opcode)
	ReceiveByte();			//THIS IS THE MANUFCTURER ID (will always be 1F if using ATMEL)
	flashcheck.flash1 = ReceiveByte();	//device ID
	ReceiveByte();			//other information bytes read in but not used
	ReceiveByte();
	ReceiveByte();
	ReceiveByte();
	DeselectSPI();

	SelectFlash2();
	TransmitByte(0x9F);		//MANUFACTURER AND DEVICE ID read(opcode)
	ReceiveByte();			//THIS IS THE MANUFCTURER ID (will always be 1F if using ATMEL)
	flashcheck.flash2 = ReceiveByte();	//device ID
	ReceiveByte();			//other information bytes read in but not used
	ReceiveByte();
	ReceiveByte();
	ReceiveByte();
	DeselectSPI();
	
	SelectFlash3();
	TransmitByte(0x9F);		//MANUFACTURER AND DEVICE ID read(opcode)
	ReceiveByte();			//THIS IS THE MANUFCTURER ID (will always be 1F if using ATMEL)
	flashcheck.flash3 = ReceiveByte();	//device ID
	ReceiveByte();			//other information bytes read in but not used
	ReceiveByte();
	ReceiveByte();
	ReceiveByte();
	DeselectSPI();	
	
	SelectFlash4();
	TransmitByte(0x9F);		//MANUFACTURER AND DEVICE ID read(opcode)
	ReceiveByte();			//THIS IS THE MANUFCTURER ID (will always be 1F if using ATMEL)
	flashcheck.flash4 = ReceiveByte();	//device ID	
	ReceiveByte();			//other information bytes read in but not used
	ReceiveByte();
	ReceiveByte();
	ReceiveByte();
	DeselectSPI();
}



void WriteEnableEEprom1(void)
{
	SelectEEprom1();
	TransmitByte(0x06);
	DeselectSPI();
}


void WriteStatusRegEEprom1(unsigned int wrbyte)
{
	SelectEEprom1();
	TransmitByte(0x01);
	TransmitByte(wrbyte);
	DeselectSPI();
}


void WritetoMemoryEEprom1(unsigned int addy)
{
unsigned int add1;
unsigned int add2;

	WriteEnableEEprom1();
	add1 = addy >> 8;
	add2 = addy & 0x00FF;
	SelectEEprom1();
	TransmitByte(0x02);
	TransmitByte(add1);	//two bytes for 16 bit addy
	TransmitByte(add2);	
}


unsigned int ReadEEprom1StatusReg(void)
{
unsigned int bytein;

	SelectEEprom1();
	TransmitByte(0x05);
	bytein = ReceiveByte();
	DeselectSPI();
	return(bytein);
}



//NVMemory Fram writing
//choice = FRAM1
//position passed in as unsigned integer for the position
//ptr = sthe ointer of data stream to write to fram
//len = the length in words
void WriteNVMemory(unsigned int choice,unsigned int position,unsigned int *ptr, unsigned int len)
{
unsigned int i;
unsigned int byte1;
unsigned int byte2;

	WritetoMemoryFRAM(choice,position);
	for(i=0;i<len;i++)
	{
		byte1 = *ptr >> 8;
		byte2 = *ptr & 0x00FF;
		TransmitByte(byte1);
		TransmitByte(byte2);
		ptr++;
	}
	DeselectSPI();

}

//SPI memory - FRAM
//Enter with the nvmemory device (this is choice e.g. 0 for first FRAM device)
//position is the position as a value to store to nvmemory, ptr is the pointer to where to store the data
//Lenght of data to read from nvmemory
void ReadNVMemory(unsigned int choice,unsigned int position,unsigned int *ptr, unsigned int len)
{
unsigned int i;
unsigned int byte1;
unsigned int byte2;

	//FRAM - do not need to check the status of the fram as it write in real time and is never seen as busy
	ReadfromMemoryFRAM(choice,position);
	for(i=0;i<len;i++)
	{
		byte1 = ReceiveByte();
		byte2 = ReceiveByte();
		*ptr = byte1 << 8;
		*ptr += byte2 & 0x00FF;
		ptr++;
	}
	DeselectSPI();
}

//Check the status of the fram by writing a byte and reading it back
//This is carried out periodically on a timer
void Fram1ChipCheck(void)
{
unsigned int valueout;
unsigned int valuein;

	if(timers.framcheck == 0)
	{
		valuein = 0;
		valueout = 0x55;	//send 55
		timers.framcheck = 60*SECS_TO_MS_MULTIPLIER;	//carry out once a minute
		WriteNVMemory(FRAM1,LASTFRAM_POSITION,&valueout,1);
		ReadNVMemory(FRAM1,LASTFRAM_POSITION,&valuein,1);
		if(valueout != valuein) alarms.framfailure = TRUE;
		else alarms.framfailure = FALSE;
	}
}


//read back the magic number and return FALSE if OK.  Return -1 on error
int Fram1MagicNumberRead(void)
{
unsigned long valuein;

  	valuein = 0;
	ReadNVMemory(FRAM1,FRAMMAGICNUMBER_POS,(unsigned int*)&valuein,2);
  	if(valuein != MAGIC_NUMBER)
  	{
  		return(-1);
	}

	return(FALSE);	//no error
}


//Write the magic number to the FRAM and read back for verification
//set the alarm flag if there is an error reading this back
void Fram1MagicNumberWrite(void)
{
unsigned long valueout;
unsigned long valuein;

  	valuein = 0;
  	valueout = MAGIC_NUMBER;	//send 0x12345678
  	WriteNVMemory(FRAM1,FRAMMAGICNUMBER_POS,(unsigned int*)&valueout,2);
  	ReadNVMemory(FRAM1,FRAMMAGICNUMBER_POS,(unsigned int*)&valuein,2);

  	if(valueout != valuein) alarms.framfailure = TRUE;
}


void ReadfromMemoryFRAM(unsigned int choice,unsigned int addy)
{
unsigned int add1;
unsigned int add2;

	add1 = (addy >> 8);
	add2 = addy & 0x00FF;
	switch(choice)
	{
		case FRAM1:
			SelectFram1();
		break;
		case FRAM2:
			SelectFram2();
		break;
	}
	TransmitByte(0x03);
	TransmitByte(add1);	//two bytes for 16 bit addy
	TransmitByte(add2);	
}


void ReadMemoryEEprom1(unsigned int addy)
{
unsigned int add1;
unsigned int add2;

	add1 = (addy >> 8);
	add2 = addy & 0x00FF;
	SelectEEprom1();
	TransmitByte(0x03);
	TransmitByte(add1);	//two bytes for 16 bit addy
	TransmitByte(add2);	
}

void WriteEnableFram1(void)
{
	SelectFram1();
	TransmitByte(0x06);
	DeselectSPI();
}

void WriteEnableFram2(void)
{
	SelectFram2();
	TransmitByte(0x06);
	DeselectSPI();
}

void WritetoMemoryFRAM(unsigned int choice,unsigned int addy)
{
unsigned int add1;
unsigned int add2;

	switch(choice)
	{
		case FRAM1:
			WriteEnableFram1();
			SelectFram1();
		break;
		case FRAM2:
			WriteEnableFram2();
			SelectFram2();
		break;
	}

	add1 = addy >> 8;
	add2 = addy & 0x00FF;
	TransmitByte(0x02);
	TransmitByte(add1);	//two bytes for 16 bit addy
	TransmitByte(add2);	
}

void SelectFram1(void)
{

	settings.spiinuse = 1;	//spi in use for eeprom
	SPIBRR = EEPROM_SPIBRR;
	FRAM1SELECT
}

void SelectFram2(void)
{

	settings.spiinuse = 1;	//spi in use for eeprom
	SPIBRR = EEPROM_SPIBRR;
	FRAM2SELECT
}

void SelectEEprom1(void)
{
	settings.spiinuse = 1;	//spi in use for eeprom
											//up to 25/04/06 clock polarity was = 0, this is not correct
											//data should be output on falling edge, and input on rising
	spiregs.SPICCR.bit.CLKPOLARITY = 1;		//clock polarity changed 25/04/06
	
	SPIBRR = EEPROM_SPIBRR;	//36;					//set for divide by 37 (LOSPCP/(BRR+1)) LOSPCP set to 37.5MHz
	ReceiveByte();	//dummy receive to get clock in correct polarity before setting eeprom chipselect low
	
	*(unsigned int*)&gpf &= 0xFEFF;
}

void SelectFlash1(void)
{
	settings.spiinuse = 1;	//spi in use for flash
	//Set bit low using an AND so they all switch simultaneously
	*(unsigned int*)&gpf &= 0xF8FF;		//set all spiselects low to point at first flash chip
}

void SelectFlash2(void)
{
	settings.spiinuse = 1;	//spi in use for flash
	//Set bit low using an AND so they all switch simultaneously
	*(unsigned int*)&gpf &= 0xF9FF;
}

void SelectFlash3(void)
{
	settings.spiinuse = 1;	//spi in use for flash
	//Set bit low using an AND so they all switch simultaneously
	*(unsigned int*)&gpf &= 0xFAFF;
}

void SelectFlash4(void)
{
	settings.spiinuse = 1;	//spi in use for flash
	//Set bit low using an AND so they all switch simultaneously
	*(unsigned int*)&gpf &= 0xFBFF;	
}


void SelectRTC(void)
{
	settings.spiinuse = 1;	//spi in use for reading clock
	spiregs.SPICCR.bit.CLKPOLARITY = 0;
	
	SPIBRR = RTC_SPIBRR;					//set for divide by 62 (LOSPCP/(BRR+1)) LOSPCP set to 37.5MHz
	
	ReceiveByte();	//dummy receive to get clock in correct polarity before setting rtc chipselect high
	
	gpb.selunion.bits.rtccs = 1;		//RTC chip select is active high
	NOPDelay(600);
}


void DeselectSPI(void)
{
	gpb.selunion.bits.rtccs = 0;		//RTC chip select is active high
	*(unsigned int*)&gpf |= 0x0700;		//set all high so pointing at y7

	DESELECT_DBCS			//deslect on daughter board all chip selects

	SPIBRR = SDCARD_SPIBRR;					//leave at fastest speed
	
	//ALWAYS LEAVE IT SET UP IN WITH CLK POLARITY SET FOR WRITING/READING FLASH
	spiregs.SPICCR.bit.CLKPOLARITY = 1;	//data output on FALLING edge, input on RISING (NON-standard mode)
	
	ReceiveByte();	//dummy receive to make sure clock is in correct state for next time
	
	//use a while loop until there are no more bytes queued up from the SPI uart

   if(receiveC.receiveINTR == 1)		//if set dummy read to clear the interrupt
   {
	  	ReadDataFromUart_C();
	   	ReadDataFromUart_C();
		config.comms.wiocancelled++;	//cancelled receive - increment the counter
	   	receiveC.receiveINTR = 0;	//clear after dummy
   }

	settings.watchdog = 1;	//kick the dog
	settings.spiinuse = 0;	//spi no longer in use
}


void TransmitByte(unsigned int byteout)
{
unsigned int byteout2;
	byteout2 = byteout & 0x00FF;
	settings.watchdog = 1;
	dummy = spiregs.SPIRXBUF;		//dummy read to clear the spists int_flag
	timers.general = 2;	//10ms timeout
	spiregs.SPITXBUF = byteout2 + (byteout2*256);	//place in top and bottom byte
	asm("  NOP");
	asm("  NOP");
	while(spiregs.SPISTS.bit.INT_FLAG == 0 && timers.general != 0)	//wait for byte to leave buffer or timeout
	{
		settings.watchdog = 1;	//kick the dog in the timer interrupt
	}
	asm("  NOP");
	asm("  NOP");
	dummy = spiregs.SPIRXBUF;		//dummy read to clear the spists int_flag
}        

unsigned int ReceiveByte(void)
{
	settings.watchdog = 1;
	
	//AJB, added to test sd card
	spiregs.SPICTL.bit.TALK = 1;
	spiregs.SPITXBUF = 0xFFFF;	//send a dummy byte whilst receiving
	
	timers.general = 2;	//10ms timeout
	asm("  NOP");
	asm("  NOP");
	while(spiregs.SPISTS.bit.INT_FLAG == 0 && timers.general != 0)	//wait for byte or timeout
	{
		settings.watchdog = 1;	//kick the dog in the timer interrupt
	}
	asm("  NOP");
	asm("  NOP");
	spiregs.SPICTL.bit.TALK = 1;			//ENABLE transmission
	return(spiregs.SPIRXBUF & 0x00FF);
}


//----------------------------------------------------------------------------------------------------------------------------
//UART C EXTERNAL UART PRIMITIVE CODE
//----------------------------------------------------------------------------------------------------------------------------

void SelectUart_C(void)
{

	SPIBRR = EXTUART_SPIBRR;	//36;					//set for divide by 37 (LOSPCP/(BRR+1)) LOSPCP set to 37.5MHz
	*(unsigned int*)&gpf &= 0xFDFF;
}

//separate deselect function for the uart, as it cannot use the generic deselctSPI as ReaddatafromUart
//calls this
void DeselectUart_C(void)
{
	gpb.selunion.bits.rtccs = 0;		//RTC chip select is active high
	*(unsigned int*)&gpf |= 0x0700;		//set all high so pointing at y7
	
	SPIBRR = SDCARD_SPIBRR;				//set to high frequency for sd card
	//ALWAYS LEAVE IT SET UP IN WITH CLK POLARITY SET FOR WRITING/READING FLASH
	spiregs.SPICCR.bit.CLKPOLARITY = 1;	//data output on FALLING edge, input on RISING (NON-standard mode)
	
	ReceiveByte();	//dummy receive to make sure clock is in correct state for next time
}


//Send the configuration to the UART chip
//16 bit transmission
//Change the baud rate to the 2nd spu and water in oil
void WriteUartConfig_C(unsigned int num)
{
	SelectUart_C();		//cs low
						//D15,D14 = 1,FEN=1 (fifo disabled)
						//baud rate set to 38.4Kbps              ,receive interrupt enabled
	TransmitByte(0x00E4);	//two bytes (upper byte first), 11100100 00001001
	//set baud rate to 9600
	TransmitByte(0x000B);	//baud rate at 9600bps
	DeselectUart_C();		//cs high
}

void WaitforUartTxComplete_C(void)
{
unsigned int flags;

	timers.spistatus = 4;	//15 to 20ms timeout
	do
	{
		flags = ReadDataFromUart_C();
		settings.watchdog = 1;	//kick the dog in the timer interrupt
	}while((flags & 0x4000) == 0 && timers.spistatus != 0);	//check T empty bit
}

//send a single byte to the SPI Uart
void WriteBytetoUart_C(unsigned int databyte)
{
unsigned int flags;

	timers.spistatus = 4;	//15 to 20ms timeout
	do
	{
		flags = ReadDataFromUart_C();
		settings.watchdog = 1;	//kick the dog in the timer interrupt
	}while((flags & 0x4000) == 0 && timers.spistatus != 0);	//check T empty bit
	if(timers.spistatus == 0)	//timeout occured, re-send configuration to try and free-up
	{
		//free up in mode accroding to WIO or Slave
		WriteUartConfig_C(SLAVE_485_BAUD_WIO);
	}
	SelectUart_C();		//cs low
						//D15,D14 = 1,0
	TransmitByte(0x0080);	//two bytes (upper byte first), 10000000
	TransmitByte(databyte);	//send the data byte
	DeselectUart_C();		//cs high
}

//Receive the data from the SPI UART
unsigned int ReadDataFromUart_C(void)
{
unsigned int flagsandbyte;
unsigned int flags;

	flagsandbyte = 0;
	SelectUart_C();			//cs low
							//D15,D14 = 0,0
	flags = ReceiveByteUART();	//(upper byte first), check flags
	flagsandbyte = ReceiveByteUART();	//receive the data byte
	flagsandbyte += (flags << 8); 
	DeselectUart_C();			//cs high
	return(flagsandbyte);
}

//ReceiveByteUARt is used instead of receivebyte, when receiving from the
//external UART, this is because the DOUT needs to be low in order for the UART to respond correctly!
unsigned int ReceiveByteUART(void)
{
	settings.watchdog = 1;
	spiregs.SPICTL.bit.TALK = 1;
	spiregs.SPITXBUF = 0x00;	//send a dummy byte whilst receiving
	
	timers.general = 2;	//10ms timeout
	asm("  NOP");
	asm("  NOP");
	while(spiregs.SPISTS.bit.INT_FLAG == 0 && timers.general != 0)	//wait for byte or timeout
	{
		settings.watchdog = 1;	//kick the dog in the timer interrupt
	}
	asm("  NOP");
	asm("  NOP");
	spiregs.SPICTL.bit.TALK = 1;			//ENABLE transmission
	return(spiregs.SPIRXBUF & 0x00FF);
}



//----------------------------------------------------------------------------------------------------------------------------
//UART D EXTERNAL UART PRIMITIVE CODE
//----------------------------------------------------------------------------------------------------------------------------

void SelectUart_D(void)
{

	SPIBRR = EXTUART_SPIBRR;	//36;					//set for divide by 37 (LOSPCP/(BRR+1)) LOSPCP set to 37.5MHz
	DB_UARTSELECT
}

//separate deselect function for the uart, as it cannot use the generic deselctSPI as ReaddatafromUart
//calls this
void DeselectUart_D(void)
{

	DESELECT_DBCS
	
	SPIBRR = SDCARD_SPIBRR;				//set to high frequency for sd card
	//ALWAYS LEAVE IT SET UP IN WITH CLK POLARITY SET FOR WRITING/READING FLASH
	spiregs.SPICCR.bit.CLKPOLARITY = 1;	//data output on FALLING edge, input on RISING (NON-standard mode)
	
	ReceiveByte();	//dummy receive to make sure clock is in correct state for next time
}


//Send the configuration to the UART chip
//16 bit transmission
void WriteUartConfig_D(unsigned int num)
{
	SelectUart_D();		//cs low
						//D15,D14 = 1,FEN=1 (fifo disabled)
						//baud rate set to 38.4Kbps              ,receive interrupt enabled
	TransmitByte(0x00E4);	//two bytes (upper byte first), 11100100 00001001
	//setup the baud rate at 38400bps for the second SPU
	TransmitByte(0x0009);	//baud rate at 38.4
	DeselectUart_D();		//cs high
}

void WaitforUartTxComplete_D(void)
{
unsigned int flags;

	timers.spistatus = 4;	//15 to 20ms timeout
	do
	{
		flags = ReadDataFromUart_D();
		settings.watchdog = 1;	//kick the dog in the timer interrupt
	}while((flags & 0x4000) == 0 && timers.spistatus != 0);	//check T empty bit
}

//send a single byte to the SPI Uart
void WriteBytetoUart_D(unsigned int databyte)
{
unsigned int flags;

	timers.spistatus = 4;	//15 to 20ms timeout
	do
	{
		flags = ReadDataFromUart_D();
		settings.watchdog = 1;	//kick the dog in the timer interrupt
	}while((flags & 0x4000) == 0 && timers.spistatus != 0);	//check T empty bit
	if(timers.spistatus == 0)	//timeout occured, re-send configuration to try and free-up
	{
		WriteUartConfig_D(0);
	}
	SelectUart_D();		//cs low
						//D15,D14 = 1,0
	TransmitByte(0x0080);	//two bytes (upper byte first), 10000000
	TransmitByte(databyte);	//send the data byte
	DeselectUart_D();		//cs high
}

//Receive the data from the SPI UART
unsigned int ReadDataFromUart_D(void)
{
unsigned int flagsandbyte;
unsigned int flags;

	flagsandbyte = 0;
	SelectUart_D();			//cs low
							//D15,D14 = 0,0
	flags = ReceiveByteUART();	//(upper byte first), check flags
	flagsandbyte = ReceiveByteUART();	//receive the data byte
	flagsandbyte += (flags << 8); 
	DeselectUart_D();			//cs high
	return(flagsandbyte);
}
