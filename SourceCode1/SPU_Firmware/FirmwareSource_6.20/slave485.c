//	PURPOSE:	  	The RS485 provides a link between the unit and slave SPU
//					Received characters are interrupt handled and stored in the
//					receiver buffer. 
//Written by AJB
//Additional MODBUS Software

//For GEN1.5 this is used to transfer the sensor information from the slave spu to the master.
//THe master will carry out all of the compensation and storage of information

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
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
// AJB 15-Feb-10 Reprogramming mod
#include "reprog.h"

#define CRCERROR (-3)		    //CRC error from PC MODBUS
#define NOTMYADDR (-1)			//Not this slaves address
#define CMDOK (1)

//MODBUS Function codes
#define READREG (03)
#define WRITEREG (06)
#define WRITEPRESET (16)

// AJB 15-Feb-10 Moved SLAVERXTIMEOUT and MASTER_TO_SLAVE_TIMEOUT to define.h
// AJB 15-Feb-10 Moved SLAVERESPONSEBUFSIZE and SLAVEREQUESTINTERVAL to slave485.h
//the MASTER_TO_SLAVE_TIMEOUT should be quite long in case we do not get to process the response for some time if busy servicing the sd card
//the slave will have responded and result will be in the buffer so allow 2 seconds from initiation (go off do something else) come back and deal with response

//NOTE the umber of retries for GEN1.5 has been increased to 10.  This is to allow for the cahnces of another spu event 
//on the SPI.  THis will mean that the SPI uart cannot be serviced in time perhaps leading to error in communications

void SendScalingCommand(void);
void ReadChannelResults(void);
void ProcessSlaveChanResponse(void);

unsigned int slaveresponsemsg[SLAVERESPONSEBUFSIZE];
unsigned int receivingmode;
slavecmdstruct slave485mb;

int ParseSlaveCmd(void);
void SendSlaveResponse(void);
void SlaveRegisters(void);
void MasterModeReceive(void);
void StoreSPU2Status(unsigned int choice,unsigned int val);

void Slave485Init(void)
{
	slave485mb.txmode = 0;
	timers.masterrxtimeout = 0;
	timers.slaverqst = 0;
	receiveA.previouscharcount = 0;	//reset to zero
	receiveA.currentcharcount = 0;	//reset for next command in
	slave485mb.slavelost = FALSE;
	slave485mb.slavenotready = TRUE;	//notready flag if data not ready to be processed yet
	memset(receiveA.buf,0,RXBUFFSIZE_A);
	receivingmode = RECEIVING_CHAN_RESULTS;
	SetSlaveVersion(0);	//initialise to zero to begin - this will be set once read fromthe slave
}


void Slave485Modbus(void)
{
// AJB 15-Feb-10 Reprogramming mod
	//if we have entered reprogramming mode on the slave - do not use the slave485 modbus
	//return immediately from here
	if(reprogram.slaveset == TRUE) return;	//set to true on the master when the slave has started the programming cycle
// AJB 15-Feb-10 EOM
	// PF 01-Oct-09 Added && settings.anadebug.enb == FALSE to allow disana to work
	if(settings.mastermode == TRUE && allsensors.numsensorsspu2 != 0 && settings.anadebug.enb == FALSE)		//master mode, request the data from the slave for all channels
	{								//collect the data from the WIO after collecting from the slave spu
		if(slave485mb.txmode == 0 && timers.slaverqst == 0)
		{
// AJB 15-Feb-10 Reprogramming mod
			if(reprogram.slavetx == TRUE) TxRegtoSlave();		//set for data received from PC to send to unit
			else if(reprogram.slaverx == TRUE) RxStatusfromSlave();
			else if(settings.updatescaling == TRUE)		//update scaling set from the PC - this needs to be sent to the other unit
// AJB 15-Feb-10 EOM
			{										//this will then allow the unit to calcualte microns
				SendScalingCommand();
				settings.updatescaling = FALSE;
			}
			else ReadChannelResults();				//read all channels including rpm temperature and status regs
#ifdef REPROGRAM
			timers.slaverqst = 100;
#else
			// PF Gen 2 - 06-Dec-11 Added in speed change of slave comms during DC mode
			if(settings.dcmode == 1) {
				timers.slaverqst = SLAVEREQUESTINTERVALDCMODE;
			} else {
				timers.slaverqst = SLAVEREQUESTINTERVAL;
			}
#endif
			// PF Gen 2 - 06-Dec-11 EOM
		}
		MasterModeReceive();
	}
	else if(settings.mastermode == FALSE)// && allsensors.numsensorsspu2 != 0)	//slave mode, send data on request
	{
		if(receiveA.currentcharcount != 0 && receiveA.previouscharcount != receiveA.currentcharcount)	//we have incoming data
		{
			receiveA.previouscharcount = receiveA.currentcharcount;
			timers.slaverxtimeout = SLAVERXTIMEOUT;
		}
		else if(timers.slaverxtimeout == 0 && receiveA.currentcharcount != 0)
		{
			if(ParseSlaveCmd() == CMDOK)	//check request from master
			{
				config.comms.slavereceived++;	//increment the counter
				SendSlaveResponse();	//send response
			}
			memset(receiveA.buf,0,RXBUFFSIZE_A);
			receiveA.previouscharcount = 0;	//reset to zero
			receiveA.currentcharcount = 0;	//reset for next command in
		}
	}
}

//Check if this is a dc mode or normal mode command
//If we are in dc mode the data returned will be dc levles, the highest point seen is captured and returned
//The values are zeroed if this byte was not set to dc mode on the previous attempt
int ParseSlaveCmd(void)
{
unsigned int crc[2];
unsigned int i;
unsigned int j;
unsigned int temp;

	CalcCRC(receiveA.buf,receiveA.currentcharcount-2,crc);
	if(receiveA.buf[receiveA.currentcharcount-2] != crc[0] || receiveA.buf[receiveA.currentcharcount-1] != crc[1])
	{
		//sprintf(stringbuffer,"CRC ERROR>> Calculated: %x%x - Received:%x%x\r\n",crc[0],crc[1],receiveA.buf[receiveA.currentcharcount-2], receiveA.buf[receiveA.currentcharcount-1]); DebugStringOut(stringbuffer);
		return(CRCERROR);
	}
	if(receiveA.buf[0] == MODBUS2_SLAVEADDRESS)
	{

		slave485mb.SlaveAddr = receiveA.buf[0];
		slave485mb.Func = receiveA.buf[1];
		temp = (unsigned int)receiveA.buf[2];
		temp <<= 8;
		temp += (unsigned int)receiveA.buf[3] & 0x00FF;
		slave485mb.StartAdd = temp;
		temp = (unsigned int)receiveA.buf[4];
		temp <<= 8;
		temp += (unsigned int)receiveA.buf[5] & 0x00FF;
		slave485mb.NoReg = temp;
		if(slave485mb.Func == DC_MODE)
		{
			if(settings.dcmode == 0)
			{
				DCModeInit();
				//PF Gen 2 - 09-Dec-11 removed following section as performed in DCmodeInit function
				/*
				settings.dcmode = 1;	//set into dc mode // PF Gen
				//clear the stored values so the highest point can be detected
				// for(i=0;i<MAX_NUM_SINGLE_SPU;i++) inputs.rawresults.current[i] = 0;
				*/
			}
		}
		else if(settings.dcmode == 1)	//reset back to normal mode
		{
			// PF Gen 2 - 04-Jan-12 Changed dc exit to call function instead of variables directly
			DCModeClear();
			// settings.dcmode = 0;
			// settings.dcpeakhold = 0;
			// PF Gen 2 - 04-Jan-12 EOM

		}								//normal run mode, normal data returned}                                          
		if(slave485mb.Func == WRITEPRESET)
		{
			temp = (unsigned int)receiveA.buf[4];
			temp <<= 8;
			temp += (unsigned int)receiveA.buf[5] & 0x00FF;
			slave485mb.NoReg = temp;
			slave485mb.ByteCount = receiveA.buf[6];
			j = 7;
			for(i=0;i< slave485mb.NoReg;i++)
			{
				temp = (unsigned int)receiveA.buf[j];
				temp <<= 8;
				temp += (unsigned int)receiveA.buf[j+1] & 0x00FF;
				slave485mb.Data[i] = temp;		//data stored as big endian (remember processor is little endian!)
				j +=2;
			}
		}
	}
	else return(NOTMYADDR); 

	return (CMDOK);
}

//*****************************************************************************
//Send a response to the command received - as this now only receiving the read multi reg command for channel related data
//Not much is needed this will only respond to readreg
//*****************************************************************************
void SendSlaveResponse(void)
{
unsigned int i=0,j=0;
unsigned int crc[2];
// AJB 15-Feb-10 Added variable num
unsigned int num;

	SlaveRegisters();
	if(slave485mb.Func == READREG  || slave485mb.Func == DC_MODE)
	{
		slaveresponsemsg[0] = MODBUS2_SLAVEADDRESS;
		slaveresponsemsg[1] = READREG;
// AJB 15-Feb-10 Reprogramming mod
		//check the size to return if dealing with reporgramming area code
		if(slave485mb.StartAdd >= PROGRAMMINGKEYUPPER && slave485mb.StartAdd <= SLAVECHECKCODES)
		{
			num = slave485mb.NoReg;
			slaveresponsemsg[2] = num*2;	//in bytes
		}
		else
		{
			num = SPU2_DATA_LEN_INWORDS; //read all data back from spu 2
			slaveresponsemsg[2] = SPU2_DATA_LEN_INBYTES;
		}
// AJB 15-Feb-10 EOM
		j = 3;
		for(i=0;i<num;i++)		// AJB 15-Feb-10 Altered for num (not fixed)
		{
			slaveresponsemsg[j] = slave485mb.Data[i] >>8;
			j++;
			slaveresponsemsg[j] = slave485mb.Data[i] & 0xFF;
			j++;
		}
	}
	else if(slave485mb.Func == WRITEPRESET)
	{
 		slaveresponsemsg[0] = slave485mb.SlaveAddr;
		slaveresponsemsg[1] = slave485mb.Func;
		slaveresponsemsg[2] = slave485mb.StartAdd >> 8;
		slaveresponsemsg[3] = slave485mb.StartAdd & 0xFF;	//int now stored as big endian
		slaveresponsemsg[4] = slave485mb.NoReg >> 8;
		slaveresponsemsg[5] = slave485mb.NoReg & 0xFF;	//int now stored as big endian
		j=6;
	}
	CalcCRC(slaveresponsemsg,j,crc);
	slaveresponsemsg[j]	 = crc[0];
	slaveresponsemsg[j+1] = crc[1];
	j+=2;		//increment length to include CRC
	MastertoSlaveSendBuffer(slaveresponsemsg,j);
}


//Modbus 2 registers
void SlaveRegisters(void)
{
unsigned int regadd;
unsigned int NumReg;
unsigned int rpm;
	
	regadd = slave485mb.StartAdd;
	NumReg = 0;
	while(NumReg < slave485mb.NoReg)
	{
		if(regadd < 14)	//14 channels not compensated but scaled into microns
		{
			
			slave485mb.Data[NumReg] = GetScaledValue(regadd);	//zero indexed - collecting from the first 14 chans on SPU2
		}
		else if(regadd >= 14 && regadd < 28)	//return the status from spu2
		{
			slave485mb.Data[NumReg] = *((unsigned int*)Status3Flags(regadd-14));	//zero indexed - collecting from the first 14 chans on SPU2 (status)
		}
		else if(regadd >= 28 && regadd < 32)	//return the four temperatures
		{		
			slave485mb.Data[NumReg] = sensor[regadd-28].prt;
		}
		else if(regadd >= 32 && regadd < 46)
		{
			//for first rpm return the newval status to the primary spu
			if(regadd == 32)
			{
				rpm = GetRPM(regadd-32);
				if(allsensors.flags.newval == TRUE) rpm |= 0x8000;	//set top bit
				slave485mb.Data[NumReg] = rpm;	//return the 2nd units rpm (for each individual channel)
			}
			else
			{
				allsensors.flags.newval = FALSE;	//clear the flag on request from primary
				rpm = GetRPM(regadd-32);	//return just the rpm
				slave485mb.Data[NumReg] = rpm;
			}
		}
		else if(regadd == 46)	//regadd 46 returns the software version from the slave
		{
			slave485mb.Data[NumReg] = versionreg;	//return the version register
		}
		//AJB 19-Aug-10
		else if(regadd >= 47 && regadd < 61)	//return the immedaite value from spu2
		{
			slave485mb.Data[NumReg] = sensor[regadd-47].immediateval;
		}
		//AJB 19-Aug-10 EOM
		else if(regadd == 1028)		//peak detect thres - use 1028, same address as primary modbus
		{
			if(slave485mb.Func == WRITEPRESET || slave485mb.Func == WRITEREG)	//write to location
			{
				config.inputs.chanlowthreshold = safe1.inputs.chanlowthreshold = slave485mb.Data[NumReg];
				SaveSafeStruct1();
			}	
			else slave485mb.Data[NumReg] = safe1.inputs.chanlowthreshold;	//read
		}
		else if(regadd == 1029)		//
		{
			if(slave485mb.Func == WRITEPRESET || slave485mb.Func == WRITEREG)	//write to location
			{
				config.inputs.chanhighthreshold = safe1.inputs.chanhighthreshold = slave485mb.Data[NumReg];
				SaveSafeStruct1();		//save the scaling factor back to nvmemory
			}	
			else slave485mb.Data[NumReg] = safe1.inputs.chanhighthreshold;	//read
		}
		else if(regadd == 1030)		//sensor scaling factor - use 1030, same address as primary modbus
		{
			if(slave485mb.Func == WRITEPRESET || slave485mb.Func == WRITEREG)	//write to location
			{
				//scaling factor stored to safe2 for the slave spu
				config.inputs.sensorscalingfactor = safe2.inputs.sensorscalingfactor = slave485mb.Data[NumReg];
				SaveSafeStruct2();		//save the scaling factor back to nvmemory
			}	
			else slave485mb.Data[NumReg] = safe2.inputs.sensorscalingfactor;	//read
		}
// AJB 15-Feb-10 Reprogramming mod
		else if(regadd >= 8400 && regadd<=8535)
		{
			ProcessReprogrammingTransferral(regadd,NumReg,slave485mb.Func, &slave485mb.Data[NumReg]);
			NOPDelay(20);
		}
		regadd++;
		NumReg++;
	}
}

void MasterModeReceive(void)
{
unsigned int crc[2];
int i;
// AJB 15-Feb-10 Added variable temp
unsigned int temp;

	if(slave485mb.txmode != 0 && timers.masterrxtimeout != 0)	//check for receive
	{
		if(receiveA.currentcharcount != 0 && receiveA.previouscharcount != receiveA.currentcharcount)	//we have incoming data
		{
			receiveA.previouscharcount = receiveA.currentcharcount;
			timers.slaverxtimeout = SLAVERXTIMEOUT;
		}
		// AJB 15-Feb-10 Reprogramming mod
		// must check for above 3 chars in case chars come in between the above if and processing code in the else!
		// if this is not done chars can come in between the two and therefore the crc will not match
		// VERY IMPORTANT!	added for reprogramming code
		else if(timers.slaverxtimeout == 0 && receiveA.currentcharcount > 3)	//check for above 3 chars
		{
			config.comms.slavereceived++;	//increment the counter (end of receive from slave) not necessarily correct response but inc count here
			CalcCRC(receiveA.buf,receiveA.currentcharcount-2,crc);
			if(receiveA.buf[receiveA.currentcharcount-2] == crc[0] && receiveA.buf[receiveA.currentcharcount-1] == crc[1])
			{
				if(receiveA.buf[0] == MODBUS2_SLAVEADDRESS)
				{
					//receiving channel related data from slave
					if(receivingmode == RECEIVING_CHAN_RESULTS)
					{
						if(receiveA.buf[1] == NORMAL_MODE || receiveA.buf[1] == DC_MODE)
						{
							if(receiveA.buf[2] == SPU2_DATA_LEN_INBYTES) ProcessSlaveChanResponse();
						}
						slave485mb.slavelost = FALSE;		//slave comms ok (clear flag)
					}
// AJB 15-Feb-10 Reprogramming mod
					if(receivingmode == RECEIVING_REPROGRAMMING)
					{
						NOPDelay(100);
						reprogram.slavecmdok = TRUE;
					}
					if(receivingmode == RECEIVING_REPROGRAMMING_STATUS)
					{
						//process the status back from the slave
						//register data is at position 3 in stream after modbus header bytes
						temp = receiveA.buf[3] << 8;	//store the value from the slave spu
						temp += receiveA.buf[4] & 0xFF;	//store the value from the slave spu
						//sprintf(stringbuffer,"Status:%u\r\n",temp);
						//CLITransmitBuffer(stringbuffer);
						reprogram.slavestatus = temp;

					}
// AJB 15-Feb-10 EOM
					//otherwise dont care what we are receiving
				}
			}
			else
			{
				//do nothing on else!
			}
			receivingmode = 0;
			slave485mb.txmode = 0;
			receiveA.previouscharcount = 0;	//reset to zero
			receiveA.currentcharcount = 0;	//reset for next command in
		}
	}
	else if(slave485mb.txmode !=0 && slave485mb.txmode < NUM_RETRIES_SPU2 && timers.masterrxtimeout == 0)	//timed out nothing received, retry upto 5 times
	{
		config.comms.slaveretry++;	//increment the counter
		receiveA.previouscharcount = 0;	//reset to zero
		receiveA.currentcharcount = 0;	//reset for next command in
		// PF Gen 2 - 06-Dec-11 Added in speed change of slave comms during DC mode
#ifdef REPROGRAM
			timers.slaverqst = 100;
#else
		if(settings.dcmode == 1) {
			timers.slaverqst = SLAVEREQUESTINTERVALDCMODE;
		} else {
			timers.slaverqst = SLAVEREQUESTINTERVAL;
		}
#endif
		// PF Gen 2 - 06-Dec-11 EOM
		if(receivingmode == RECEIVING_CHAN_RESULTS) ReadChannelResults();		//try, try again
// AJB 15-Feb-10 Reprogramming mod
		else if(receivingmode == RECEIVING_REPROGRAMMING) TxRegtoSlave();
		else if(receivingmode == RECEIVING_REPROGRAMMING_STATUS) RxStatusfromSlave();
// AJB 15-Feb-10 EOM
		else SendScalingCommand();		//update for scaling of the analogue inputs
	}
	else
	{
		//raise a failure on not receiving any data from the slave device
		if(slave485mb.txmode >= NUM_RETRIES_SPU2)
		{
// AJB 15-Feb-10 Reprogramming mod
			reprogram.slavecmdok = FALSE;	//did not get a response
// AJB 15-Feb-10 EOM
			receiveA.previouscharcount = 0;	//reset to zero
			receiveA.currentcharcount = 0;	//reset for next command in
			slave485mb.slavelost = TRUE;		//set flag to report comms failure
			slave485mb.slavenotready = TRUE;	//not ready with data from slave if comms is lost
			for(i=0;i<allsensors.numsensorsspu2;i++)
			{
				//set the failure flags for spu2 channels - this will not generate events as these channels may not actually be faulty as we have lost comms
				SetScaledValue(i+allsensors.numsensorsspu1,0);					//clear down to zero
				SetRPMChan(i+allsensors.numsensorsspu1,0);						//clear to zero
				sensor[i+allsensors.numsensorsspu1].prt = LOWLEVEL_LOG_VALUE;	//set to low value if comms lost
				// PF 17-Nov-09 on loss of comms to 2nd SPU then only change values if sensor enabled
				if (sensor[allsensors.numsensorsspu1 + i].status1.enabled == TRUE) {
					sensor[allsensors.numsensorsspu1 + i].status2.failure = TRUE;
					sensor[allsensors.numsensorsspu1 + i].status2.failurelatched = TRUE;
					status3[allsensors.numsensorsspu1 + i].nopulse = TRUE;
					status3[allsensors.numsensorsspu1 + i].nopulselatched = TRUE;
				}
				// PF 17-Nov-09 EOM
			}
		}
		slave485mb.txmode = 0;
		timers.masterrxtimeout = 0;	//do not retry anymore!
	}
}

//Transmit the scaling factor to the secondary spu
//ALso sends the threshold and offset for peak detection
//These should be updated in the slave unit if changed in the master
void SendScalingCommand(void)
{
unsigned int crc[2];

	slaveresponsemsg[0] = MODBUS2_SLAVEADDRESS;
	slaveresponsemsg[1] = WRITEPRESET;	//hex for multi reg write
	slaveresponsemsg[2] = 0x04;		//address byte1 - this is 1028 the same address used on master modbus registers
	slaveresponsemsg[3] = 0x04;		//address byte2
	slaveresponsemsg[4] = 0;			//numregs byte1
	slaveresponsemsg[5] = 3;			//numregs byte2
	slaveresponsemsg[6] = 6;		//byte count (*2 of num reg)

	slaveresponsemsg[7] = config.inputs.chanlowthreshold >> 8;
	slaveresponsemsg[8] = config.inputs.chanlowthreshold & 0xFF;

	slaveresponsemsg[9] = config.inputs.chanhighthreshold >> 8;
	slaveresponsemsg[10] = config.inputs.chanhighthreshold & 0xFF;

	slaveresponsemsg[11] = config.inputs.sensorscalingfactor >> 8;
	slaveresponsemsg[12] = config.inputs.sensorscalingfactor & 0xFF;

	CalcCRC(slaveresponsemsg,13,crc);
	slaveresponsemsg[13]	 = crc[0];
	slaveresponsemsg[14]	 = crc[1];
	MastertoSlaveSendBuffer(slaveresponsemsg,15);

	slave485mb.txmode++;
	timers.masterrxtimeout = MASTER_TO_SLAVE_TIMEOUT;
	receivingmode = RECEIVING_SCALING;
}

//Read the channel results from SPU2, This will return the scaled result from the slave SPU
//THe results returned are scaled but not compensated
//Last four values returned are the temperature values off of the 2nd spu
//If in dc mode - all values returned will be from the sensors running in dc - this can be used to store an offset
//The offsets are stored on SPU1 and therefore it is only a mode setting for SPU2
void ReadChannelResults(void)
{
unsigned int crc[2];

	config.comms.slaverequest++;	//request - increment the counter
	//if in dc mode change the command sent (this is not strict modbus!)
	if(settings.dcmode == TRUE)
	{
		//setup for dc mode multi reg read
		slaveresponsemsg[1] = DC_MODE;	//hex for multi reg read - settop nibble to F to distinguish between normal mode and dc mode read
	}
	else		//setup for receiving all normal data from the 2nd spu
	{
		//setup for normal mode multi reg read
		slaveresponsemsg[1] = NORMAL_MODE;	//hex for multi reg read in normal mode
	}

	slaveresponsemsg[0] = MODBUS2_SLAVEADDRESS;	//fixed address

	slaveresponsemsg[2] = 0x00;	//address byte1 address zero
	slaveresponsemsg[3] = 0x00;	//address byte2
	slaveresponsemsg[4] = 0;		//numregs byte1
	slaveresponsemsg[5] = SPU2_DATA_LEN_INWORDS;		//numregs byte2
	//data coming back 14 int from 14 channels
	//14 ints status	(no, pulse, low, high etc)
	//4 temperatures
	//1 int (RPM)
	CalcCRC(slaveresponsemsg,6,crc);
	slaveresponsemsg[6]	 = crc[0];
	slaveresponsemsg[7]	 = crc[1];

	MastertoSlaveSendBuffer(slaveresponsemsg,8);
	slave485mb.txmode++;
	timers.masterrxtimeout = MASTER_TO_SLAVE_TIMEOUT;
	receivingmode = RECEIVING_CHAN_RESULTS;
}


//Response from the slave unit with the 14 channels of data and 4 temperature channels
//No other data is erquested from SPU2
void ProcessSlaveChanResponse(void)
{
unsigned int i;
unsigned int j;
unsigned int temp;
int notready;

	notready = FALSE;
	j = 3;	//set j to 3 start after header bytes from modbus string
	//store the 14 values received from the 2nd spu in the sensors structures for chan 14 to 27
	for(i=0;i<MAX_NUM_CHANNELS_SPU;i++)
	{
		temp = receiveA.buf[j] << 8;	//store the value from the slave spu
		j++;
		temp += receiveA.buf[j] & 0xFF;	//store the value from the slave spu
		if(i < allsensors.numsensorsspu2)
		{
			//only save for the number of channels actually on the system
			if(temp != DEFAULT_NOTSET_VAL)
			{
				SetScaledValue(i+allsensors.numsensorsspu1,(int)temp);		//store the value from the slave spu
			}
			else notready = TRUE;		//set flag - will not be set when all channels are ready
		}
		//this value has not been compensated or any processing carried out on it it is a raw micron value
		j++;
	}

	//j already setup from last part of for loop
	for(i=0;i<NUM_STATUS_WORDS_FROM_SLAVE;i++)	//deal with the status words coming back
	{
		temp = receiveA.buf[j] << 8;	//store the value from the slave spu
		j++;
		temp += receiveA.buf[j] & 0xFF;	//store the value from the slave spu
		j++;
		if(i < allsensors.numsensorsspu2)
		{
			//status for the number of channels from spu2
			//always receiving full number
			StoreSPU2Status(i+allsensors.numsensorsspu1,temp);
		}
	}
	//j already setup from last part of for loop
	for(i=0;i<MAX_NUM_PRT;i++)	//deal with the 4 tempratures coming back
	{
		temp = receiveA.buf[j] << 8;	//store the value from the slave spu
		j++;
		temp += receiveA.buf[j] & 0xFF;	//store the value from the slave spu
		sensor[i+allsensors.numsensorsspu1].prt = (int)temp; //store the value from the slave spu for temperature
		j++;
	}

	//j already setup from last part of for loop
	for(i=0;i<MAX_NUM_CHANNELS_SPU;i++)	//deal with the 14 rpms
	{
		temp = receiveA.buf[j] << 8;	//store the value from the slave spu
		j++;
		temp += receiveA.buf[j] & 0xFF;	//store the value from the slave spu
		if(i == 0)		//check new val flag set as top bit in rpm from channel 0 only
		{
			if((temp & 0x8000) != 0) allsensors.flags.newvalspu2 = TRUE;
		}
		temp &= 0x7FFF;		//get rid of the top bit (this is set for newval from 2nd spu)
		if(i < allsensors.numsensorsspu2)
		{
			//just for number of channels on the system
			if(notready == TRUE) temp = 0;	//clear rpm until ready
			SetRPMChan(i+allsensors.numsensorsspu1,(unsigned int)temp);		//store the value from the slave spu for rpm
		}
		j++;
	}

	temp = receiveA.buf[j] << 8;	//store the value from the slave spu
	j++;
	temp += receiveA.buf[j] & 0xFF;	//store the value from the slave spu
	//store the version for the firmware for the slave spu
	SetSlaveVersion((unsigned int)temp);
	j++;
	for(i=0;i<MAX_NUM_CHANNELS_SPU;i++)
	{
		temp = receiveA.buf[j] << 8;	//store the value from the slave spu
		j++;
		temp += receiveA.buf[j] & 0xFF;	//store the value from the slave spu
		if(i < allsensors.numsensorsspu2)
		{
			//only save for the number of channels actually on the system
			if(temp != DEFAULT_NOTSET_VAL)
			{
				SetImmScaledValue(i+allsensors.numsensorsspu1,(int)temp);		//store the value from the slave spu
			}
		}
		//this value has not been compensated or any processing carried out on it it is a raw micron value
		j++;
	}

	//notready flag will only be false if all channels are ready to give data
	if(notready == FALSE)
	{	
		//clear the slave lost flag once the data has been received from all channels
		//do not do this until all the channels are returning sensible values otherwise the modal RPM on 
		//the master will try to use values that are not set (yet) from the slave
		slave485mb.slavenotready = FALSE;
	}
	else slave485mb.slavenotready = TRUE;		//set true if not ready
}



//Store the status from SPU2 to the corresopnding structures on SPU1
void StoreSPU2Status(unsigned int chan,unsigned int val)
{
status3struct *ptrout;
status3struct *ptrin;

	ptrin = (status3struct*)&val;
	ptrout = Status3Flags(chan);

	ptrout->nopulse = ptrin->nopulse;
	ptrout->low = ptrin->low;
	ptrout->high = ptrin->high;

	//save bits only do not trounce all over the other bits as they are used elsewhere!

}

//end
