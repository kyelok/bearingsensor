//	PURPOSE:	  	The RS485 provides a link between the unit and WIO
//					Received characters are interrupt handled and stored in the
//					receiver buffer. 
//Written by AJB
//Additional MODBUS Software

//For GEN1.5 this is used to transfer the WIO information

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "wioprim.h"
#include "slave485.h"
#include "crctable.h"
#include "core.h"
#include "globals.h"
#include "sci.h"
#include "PCModBus.h"
#include "pccli.h"
#include "logging.h"
#include "setup.h"
#include "version.h"
#include "man.h"
#include "adc.h"
#include "alarms.h"
#include "wio.h"
#include "version.h"


#define CRCERROR (-3)		    //CRC error from PC MODBUS
#define NOTMYADDR (-1)			//Not this slaves address
#define CMDOK (1)

//MODBUS Function codes
#define READREG (03)
#define WRITEREG (06)
#define WRITEPRESET (16)

#define WIORXTIMEOUT 40			//set to 200ms, times out if no change in charcount - this assumes the last char has been seen
#define WIOMASTERTIMEOUT 200	//wait 1 second for response (should have received the packet in this time)
#define WIORESPONSEBUFSIZE 10
//NOTE the umber of retries for GEN1.5 has been increased to 10.  This is to allow for the cahnces of another spu event 
//on the SPI.  THis will mean that the SPI uart cannot be serviced in time perhaps leading to error in communications

unsigned int wioresponsemsg[WIORESPONSEBUFSIZE];
unsigned int txmode;				//flag used when acting as master (used for retries)
unsigned int wiolost;
unsigned int wioerrorcode;	// PF Gen 2 - 07-Mar-12 Added so error code is accessable via modbus


void WaterinOil(void);
void WIOReceive(void);
void ReadWaterinOilintoBuf(void);
void WaterInOilResponse(void);
unsigned int CalcSingleByteChecksum(unsigned int* ptr,unsigned int len);


void WIO485Init(void)
{
	txmode = 0;
	timers.wiomasterrxtimeout = 0;
	timers.wiorqst = 0;
	receiveC.previouscharcount = 0;	//reset to zero
	receiveC.currentcharcount = 0;	//reset for next command in
	memset(receiveC.buf,0,UARTCRXBUFFSIZE);
}

//function to check the water in oil
void WaterinOil(void)
{
	//check only enabled if == 1, set to 2 if on analog input
	if(WIOEnabled() == 1)	//check if waterinoil check is enabled
	{
		if(txmode == 0 && timers.wiorqst == 0)
		{
			config.comms.wiorequest++;	//make request increment the counter
			ReadWaterinOilintoBuf();
			timers.wiorqst = WIOREQUESTINTERVAL;
		}
		WIOReceive();
	}
}


//Read the water in oil device
//This is not strict modbus
//[A] = word address (2bytes) 
//[B] = COMMAND (1 byte)
//[L] = LENGTH (1 BYTE)
//[D] = 1 BYTE INDEX FOR WATER TEMPERATURE
//[D] = 1 BYTE INDEX FOR WATER ACTIVITY
//[D] = 1 BYTE INDEX FOR WATER CONTENT (PPM)
void ReadWaterinOilintoBuf(void)
{

	WriteUartConfig_C(SLAVE_485_BAUD_WIO);	//set baud for 9600bps for WIO

	wioresponsemsg[0] = 0x00;		//waterinoil.netadd >> 8;
	wioresponsemsg[1] = 0x00;		//waterinoil.netadd & 0xFF;

	wioresponsemsg[2] = WIO_MEAS_VALS;			//0x67
	wioresponsemsg[3] = WIO_BYTE_COUNT_RQST;	//0x03

	wioresponsemsg[4] = WIO_WATER_TEMP_INDEX;	//0x00
	
	wioresponsemsg[5] = WIO_WATER_ACTIVITY_INDEX;	//0x0d
	wioresponsemsg[6] = WIO_WATER_CONTENT_INDEX;	//0x0e

	wioresponsemsg[7] = CalcSingleByteChecksum(wioresponsemsg,7);

	LoadSendBufferC(wioresponsemsg,WIO_RQT_DATA_LEN);
	txmode++;
	timers.wiomasterrxtimeout = WIOMASTERTIMEOUT;

}

//Water in oil receive - receive the data from the water in oil sensor.  if no response retry up to 5 times
void WIOReceive(void)
{

	if(txmode != 0 && timers.wiomasterrxtimeout != 0)	//check for receive
	{
		if(receiveC.currentcharcount != 0 && receiveC.previouscharcount != receiveC.currentcharcount)	//we have incoming data
		{
			receiveC.previouscharcount = receiveC.currentcharcount;
			timers.wiorxtimeout = WIORXTIMEOUT;
		}
		else if(timers.wiorxtimeout == 0 && receiveC.currentcharcount != 0)
		{
			WaterInOilResponse();
			wiolost = FALSE;		//slave comms ok (clear flag)
			memset(receiveC.buf,0,UARTCRXBUFFSIZE);
			
			receiveC.previouscharcount = 0;	//reset to zero
			receiveC.currentcharcount = 0;	//reset for next command in
		}
	}
	else if(txmode !=0 && txmode < NUM_RETRIES_WIO && timers.wiomasterrxtimeout == 0)	//timed out nothing received, retry upto 5 times
	{

		memset(receiveC.buf,0,UARTCRXBUFFSIZE);
		receiveC.previouscharcount = 0;	//reset to zero
		receiveC.currentcharcount = 0;	//reset for next command in
		timers.wiorxtimeout = WIORXTIMEOUT;
		timers.wiorqst = WIOREQUESTINTERVAL;
		ReadWaterinOilintoBuf();	//try again
	}
	else
	{
		if(txmode >= NUM_RETRIES_WIO)
		{
			wiolost = TRUE;
		}
		txmode = 0;
		timers.wiomasterrxtimeout = 0;	//do not retry anymore!
		//raise a failure on not receiving any data from the slave device
	}
}



//Process the response relating to water in oil
//Reply will take the form:
//[A] = word address (2bytes) 
//[B] = COMMAND (1 byte)
//[L] = LENGTH of following data bytes(1 BYTE)
//[S] = 1 bytes ack or nak
//[D] = 4 BYTES FOR WATER TEMPERATURE (this is a float value)
//[D] = 4 BYTES FOR WATER ACTIVITY
//[D] = 4 BYTES FOR WATER CONTENT (PPM)
//[CH] = 1 BYTE CHECKSUM RESPONSE
void WaterInOilResponse(void)
{
unsigned int i;
unsigned int j;
unsigned int k;
unsigned int temp1;
unsigned int temp2;
unsigned int *ptr;
unsigned int chksum;
waterinoilstruct *wioptr;
static int wio_errorflag;
// PF Gen 2 - 07-Mar-12 Old event system backend removal - char eventstring[EVENTMSG_LEN_INBYTES_PART2];

	//check the number of bytes returned from the WIO is correct.
	//THis is importnatn as if the checksum is relied apon as a single byte check it can on occasion match when all the bytes have not been received
	//for example receiveC.buf[18] may not equal the checksum but receiveC.currentcharcount-1 may equal the calculated checksum
	//size includes the checksum at end (last byte)
	if(receiveC.currentcharcount == WIO_RESPONSE_NUMBYTES)	//there should be 19 bytes returned from the WIO sensor
	{
		chksum = CalcSingleByteChecksum(receiveC.buf,WIO_RESPONSE_NUMBYTES-1);
		if(chksum == receiveC.buf[WIO_RESPONSE_NUMBYTES-1])
		{
			if(receiveC.buf[4] == WIO_ACK)
			{
				wio_errorflag = FALSE;
				//increment the counter this may be incremented on a retry as well if the packet is received ok
				config.comms.wioreceived++;	//received - increment the counter
				j = 5;	//set j to 5 start after header bytes from WIO_modbus string
				k = 0;
				//store the water in oil values
				//point to the temperature as an integer and store the float value
				wioptr = WioStructPtr();
				ptr = (unsigned int*)&wioptr->temperature;

				//the requests for data will be for the number of float value and ack/nak bytes sent back
				//the format is 1 bytes ack/nak, then 4 bytes for the floating point value
				//the ack/nak should be set to zero (this means metric data is being returned)
				if(receiveC.buf[j] == 0)
				{
					j++;	//increment from the acknack to the data
					for(i=0;i<WIO_NUM_DATA_RQST;i++)
					{
				
						//as data is being sent from WIO as little endian byte info store as big endian in integers
						//the integers should then be stored as little endian words
						temp1 = receiveC.buf[j] & 0xff;
						j++;
						temp1 += (receiveC.buf[j] << 8);	//store the value from the WIO
						j++;
						ptr[k] = temp1;
						k++;
						temp2 = receiveC.buf[j] & 0xff;
						j++;
						temp2 += (receiveC.buf[j] << 8);	//store the value from the WIO
						j++;
						ptr[k] = temp2;
						k++;
					}
				}

				txmode = 0;
			}
		}
	}
	else if(receiveC.currentcharcount == WIO_RESPONSE_ERROR_NUMBYTES)	//there should be 7 bytes returned from the WIO sensor
	{
		chksum = CalcSingleByteChecksum(receiveC.buf,WIO_RESPONSE_ERROR_NUMBYTES-1);
		if(chksum == receiveC.buf[WIO_RESPONSE_ERROR_NUMBYTES-1])
		{
			if(receiveC.buf[4] == WIO_NAK)
			{
				//increment the counter this may be incremented on a retry as well if the packet is received ok
				config.comms.wioreceived++;	//received - increment the counter
				txmode = 0;
				//raise error on this condition
				if(wio_errorflag == FALSE)
				{
					wio_errorflag = TRUE;

					//clear array to begin, this will be passed to logging so must be clear for parts not used
					// PF Gen 2 - 07-Mar-12 Old event system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
					// PF Gen 2 - 07-Mar-12 Old event system backend removal - sprintf(eventstring,"WIO Error Code %.2x",receiveC.buf[5]);
					// PF Gen 2 - 07-Mar-12 Old event system backend removal - LogEvent(WIO_ALARM,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event
					wioerrorcode = receiveC.buf[5]; // PF Gen 2 - 07-Mar-12
					SetBitEvent(WIO_ERROR_CODE_EVENT); // PF Gen 2 - 07-Mar-12 Old event system backend removal - 
				}
			}
		}
	}
}


//*****************************************************************************
// Calculate checksum for incoming command or outgoing response (single byte checksum for water in oil, they call this a crc!)
//Return value as a single byte (stored in an int)
//*****************************************************************************
unsigned int CalcSingleByteChecksum(unsigned int* ptr,unsigned int len)
{
unsigned int checksum;

	checksum = 0;
	while(len--)
	{
		checksum += (*ptr & 0x00FF);	//add up all bytes
		ptr++;
	}
	checksum &= 0x00FF;
	return(checksum);
}

//end


