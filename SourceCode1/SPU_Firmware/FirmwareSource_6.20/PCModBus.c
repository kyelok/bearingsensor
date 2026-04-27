//	PURPOSE:	  	The RS485 provides a link between the unit and a PC. 
//					Received characters are interrupt handled and stored in the
//					receiver buffer. 
//Written by AJB
//PC MODBUS Software

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "crctable.h"
#include "core.h"
#include "globals.h"
#include "sci.h"
#include "PCModBus.h"
#include "pccli.h"
#include "logging.h"
#include "setup.h"
#include "version.h"
#include "digout.h"
#include "man.h"
#include "mancal.h"
#include "sdcard.h"
#include "wio.h"
#include "alarms.h"
// AJB 15-Feb-10 Reprogramming mod
#include "reprog.h"
#include "adc.h"	//AJB 19-Aug-10 added for slem values
				 
#include "mmc_mcf.h"
#include "fat.h"

#define CRCERROR (-3)		    //CRC error from PC MODBUS
#define NOTMYADDR (-1)			//Not this slaves address
#define PCCMDOK (1)

//error macros

#define COMPENSATIONTABLESTART 1064
#define COMPACCSTART 4097

#define MAXCHARS (266)		//should not be more than this(allow 10 for header and CRC)
#define MAX_NUM_PCMODBUS_REGISTERS 127

typedef enum tag_PtrTypeEnum
{
  BYTE,
  INT,
  STRING
}PtrTypeEnum;

void HandleChar(void);
void TerminateCmd(void);
char ModbusParseCmd(void);
unsigned char CompareCRC(unsigned int* crc,unsigned long len);
char Serial(void);
void SendResponse(void);
//void SendErrorResponse(void);
void ParseHeader(void);
void ProcessRegister(PtrTypeEnum PtrTypeFlag, void * Ptr, unsigned int NumReg);
void Registers(void);
void ProcessFileTransferral(unsigned int regadd, unsigned int NumReg);
void ProcessEngineRunT(unsigned int regadd, unsigned int NumReg);

//Allocate into M0RAM - comms related
// AJB 15-Feb-10 moved pcmodbus from .commsection to .commsection1
#pragma DATA_SECTION(pcmodbus,  ".commssection1");
PCCmdStruct pcmodbus;

unsigned int modbuscmdbuf[266];
unsigned int responsemsg[266];		//max message size
unsigned int modbusdummy;	//used as a dummy store for unused registers
unsigned int *modbuscmdbufptr;
unsigned int modbusrxcharcount;
unsigned int numbytesexpected;
unsigned char modbusrxchar;
modbusupdatestruct modbusupdate;

unsigned int modbusackbuffer[EVENT_ACK_LEN_INBYTES/2];	//words for the acknowledement temporary buffer

//*****************************************************************************
//Store the latest character in the cmdbuffer
//Resets if the command buffer is full
//*****************************************************************************/
void HandleChar(void)
{
	if (modbusrxcharcount >= MAXCHARS)			// reset on too many characters
	{
		modbuscmdbufptr = modbuscmdbuf;		// set pointer to start of buffer
		modbusrxcharcount = 0;
	}
	else
	{
		modbusrxcharcount++; 
		*modbuscmdbufptr = modbusrxchar;
		modbuscmdbufptr++;
	}
}

//*****************************************************************************
// Calculate CRC for incoming command or outgoing response
//*****************************************************************************
void CalcCRC(unsigned int* ptr,unsigned int len,unsigned int * crc)
{
unsigned int CRCHi = 0x00FF;	//high crc byte
unsigned int CRCLo = 0x00FF;	//low CRC byte
unsigned int CRCIndex = 0;

	while(len--)
	{
		CRCIndex = CRCHi ^ (*ptr & 0x00FF);
		ptr++;	//increment pointer
		CRCHi = CRCLo ^ CRCHiTbl[CRCIndex];
		CRCLo = CRCLoTbl[CRCIndex];
	}
	*crc = CRCHi;
	*(crc+1) = CRCLo;		//store as big endian
}

			 
//*****************************************************************************
//Terminate the cmdbuffer with a null terminator
//Reset pointer to start of buffer
//*****************************************************************************/
void TerminateCmd(void)
{
	*(modbuscmdbufptr) = 0;		    // terminates command string with null
	modbuscmdbufptr = modbuscmdbuf;       // set pointer to start of buffer
}


//*****************************************************************************
// Check string received is OK, Setup structure
//*****************************************************************************/
char ModbusParseCmd(void)
{
unsigned int crc[2];
unsigned int i,j;
unsigned int temp;
unsigned long msglen;
	j = 0;
	msglen = modbusrxcharcount;
	modbusrxcharcount = 0;		//reset received char count
	CalcCRC(modbuscmdbufptr,msglen-2,crc);
	if(CompareCRC(crc,msglen) == FALSE)
	{	
		//for(i=0;i< msglen;i++) { sprintf(stringbuffer,"%.2x ",modbuscmdbuf[i]); DebugStringOut(stringbuffer); }	// DEBUG
		//sprintf(stringbuffer,"CRC ERROR>> Calculated: %x%x - Received:%x%x\r\n",crc[0],crc[1],modbuscmdbuf[msglen-2], modbuscmdbuf[msglen-1]); DebugStringOut(stringbuffer);	// DEBUG		
		// sprintf(stringbuffer,"\r\n"); DebugStringOut(stringbuffer);	// DEBUG
		//SendErrorResponse();
		return(CRCERROR);
	}
	//GEN1.5 fixed at address 1
	if(modbuscmdbuf[0] == MODBUS_ADDRESS)
	{
		pcmodbus.SlaveAddr = modbuscmdbuf[0];
		pcmodbus.Func = modbuscmdbuf[1];
		temp = (unsigned int)modbuscmdbuf[2];
		temp <<= 8;
		temp += (unsigned int)modbuscmdbuf[3] & 0x00FF;
		pcmodbus.StartAdd = temp;
		switch(pcmodbus.Func)
		{
			case READREG:
				temp = (unsigned int)modbuscmdbuf[4];
				temp <<= 8;
				temp += (unsigned int)modbuscmdbuf[5] & 0x00FF;
				pcmodbus.NoReg = temp;
				pcmodbus.ByteCount = pcmodbus.NoReg*2;
			break;
			case WRITEREG:
				pcmodbus.NoReg = 1;
				temp = (unsigned int)modbuscmdbuf[4];
				temp <<= 8;
				temp += (unsigned int)modbuscmdbuf[5] & 0x00FF;
				pcmodbus.Data[0] = temp;		//data stored as big endian (remember processor is little endian!)
			break;
			case WRITEPRESET:
				temp = (unsigned int)modbuscmdbuf[4];
				temp <<= 8;
				temp += (unsigned int)modbuscmdbuf[5] & 0x00FF;
				pcmodbus.NoReg = temp;
				pcmodbus.ByteCount = modbuscmdbuf[6];
				j = 7;
				for(i=0;i< pcmodbus.NoReg;i++)
				{
					temp = (unsigned int)modbuscmdbuf[j];
					temp <<= 8;
					temp += (unsigned int)modbuscmdbuf[j+1] & 0x00FF;
					pcmodbus.Data[i] = temp;		//data stored as big endian (remember processor is little endian!)
					j +=2;
				}
			break;
		}
		return (PCCMDOK);
	}
	else {
		return(NOTMYADDR);
	}
}                                          

//*****************************************************************************
// Compare the incoming command CRC with calculated CRC
//*****************************************************************************
unsigned char CompareCRC(unsigned int* crc,unsigned long len)
{
	if(modbuscmdbuf[len-2] == crc[0] && modbuscmdbuf[len-1] == crc[1])
	{
		return(TRUE);	//crc OK
	}
	else
		return(FALSE);	//crc doesnt match
}

void ParseHeader(void)
{
unsigned int temp;

	if(modbusrxcharcount > 6 && numbytesexpected == 0) //need 6 to get no_of_reg
	{
		if(modbuscmdbuf[0] == (unsigned char)safe2.modbus.address)
		{
			pcmodbus.SlaveAddr = modbuscmdbuf[0];
			pcmodbus.Func = modbuscmdbuf[1];
			temp = (unsigned int)modbuscmdbuf[2];
			temp <<= 8;
			temp += (unsigned int)modbuscmdbuf[3] & 0x00FF;
			pcmodbus.StartAdd = temp;
			temp = (unsigned int)modbuscmdbuf[4];
			temp <<= 8;
			temp += (unsigned int)modbuscmdbuf[5] & 0x00FF;
			pcmodbus.NoReg = temp;
			pcmodbus.ByteCount = pcmodbus.NoReg*2;
		}
		switch(pcmodbus.Func)
		{
		case READREG:
			numbytesexpected = 8;
		break;
		case WRITEPRESET:
			numbytesexpected = 9 + pcmodbus.ByteCount;	
		break;
		}
	}
}

char Serial(void)
{
char RxMode = FALSE;

	do
	{
		if(ReadCharfromUartB() != 0)
		{
			HandleChar();
			ParseHeader();
			RxMode = TRUE;
			if(numbytesexpected == modbusrxcharcount) timers.pcrxtimeout = 0;	//clear timeout immediately once all in
			else timers.pcrxtimeout = PCRXTIMEOUT;		//reset timout on receving a character
		}
		else if(timers.pcrxtimeout == 0 && RxMode == TRUE)	//terminate received command on timeout
		{
			numbytesexpected = 0;	//this will be set by parseheader
			modbuscmdbufptr = modbuscmdbuf;       // set pointer to start of buffer
		   	return(ModbusParseCmd());
		}
	}while(RxMode == TRUE);
	return(0);	// no characters received
}

//*****************************************************************************
//PC Modbus handling, called from main loop
//*****************************************************************************
void PCModBus(void)
{

	if(PCCMDOK == Serial())
	{
		config.comms.pcrequest++;	//increment the counter
		SendResponse();
		settings.watchdog = 1;
	}
	if(timers.pcmodbus == 0)	//timeout on sending character - therefore ne comms to pc so set error condition
	{
		if(pcmodbus.errorflag == FALSE)
		{
			pcmodbus.errorflag = TRUE;	//set flag once logged
			//flag set on a timer if no characters have been sent for a while
			//if no characters have been sent this means we have not received and understood anything
		}
	}
	
}

int ReadPCCommsFlag(void)
{
	return(pcmodbus.errorflag);		//flag set once logged
}

/*
void SendErrorResponse(void)
{
	if (pcmodbus.SlaveAddr != 0) {
		if(timers.pctxtimeout != 0) LoadSendBufferB(modbuscmdbufptr,modbusrxcharcount);		//only send if within time limit
		else {
			config.comms.pcreqtimeout++;
			sprintf(stringbuffer,"No response sent to PC\r\n"); DebugStringOut(stringbuffer);	// DEBUG
		}
	}
}
*/
//*****************************************************************************
//Send a response to the command received
//*****************************************************************************
void SendResponse(void)
{
unsigned int i=0,j=0;
unsigned int crc[2];

	Registers();
// AJB 15-Feb-10 pass on data to slave during reprogramming
	TxNowtoSlave();
	switch(pcmodbus.Func)
	{
	case READREG:
		responsemsg[0] = pcmodbus.SlaveAddr;
		responsemsg[1] = pcmodbus.Func;
		responsemsg[2] = pcmodbus.ByteCount;
		j = 3;
		for(i=0;i<pcmodbus.NoReg;i++)	
		{
			responsemsg[j] = pcmodbus.Data[i] >>8;
			j++;
			responsemsg[j] = pcmodbus.Data[i] & 0xFF;
			j++;
			if(i > MAX_NUM_PCMODBUS_REGISTERS)	//do not allow it to return more than max num registers this should be set to 127
			{
				//limit to 127 registsers
				pcmodbus.NoReg = MAX_NUM_PCMODBUS_REGISTERS;	
				break;
			}
		}
	break;
	case WRITEREG:
		responsemsg[0] = pcmodbus.SlaveAddr;
		responsemsg[1] = pcmodbus.Func;
		responsemsg[2] = pcmodbus.StartAdd >> 8;
		responsemsg[3] = pcmodbus.StartAdd & 0xFF;	//int now stored as big endian
		responsemsg[4] = pcmodbus.Data[0] >> 8;
		responsemsg[5] = pcmodbus.Data[0] & 0xFF;	//int now stored as big endian
		j=6;
	break;
	case WRITEPRESET:
		responsemsg[0] = pcmodbus.SlaveAddr;
		responsemsg[1] = pcmodbus.Func;
		responsemsg[2] = pcmodbus.StartAdd >> 8;
		responsemsg[3] = pcmodbus.StartAdd & 0xFF;	//int now stored as big endian
		responsemsg[4] = pcmodbus.NoReg >> 8;
		responsemsg[5] = pcmodbus.NoReg & 0xFF;	//int now stored as big endian
		j=6;
	break;
	}
	CalcCRC(responsemsg,j,crc);
	responsemsg[j] = crc[0];
	responsemsg[j+1] = crc[1];
	j+=2;		//increment length to include CRC
	// PF Gen 2 - 31-Oct-11 stop broadcast response
	if (pcmodbus.SlaveAddr != 0) {
		if(timers.pctxtimeout != 0) LoadSendBufferB(responsemsg,j);		//only send if within time limit
		else {
			config.comms.pcreqtimeout++;
			sprintf(stringbuffer,"No response sent to PC\r\n"); DebugStringOut(stringbuffer);	// DEBUG
		}
	}
}


void Registers(void)
{
void * Ptr = NULL;
unsigned int *ptr2;
unsigned int regadd;
unsigned int NumReg;
PtrTypeEnum PtrTypeFlag;
unsigned int val;
int okflag;
char eventstring[EVENTMSG_LEN_INBYTES_PART2];
int pos;
char chanstr[4];
int modbusfunction;
unsigned long templong;	// PF Gen 2 - 01-Mar-12

	if(pcmodbus.Func == WRITEPRESET || pcmodbus.Func == WRITEREG) {
		modbusfunction = WRITEPRESET;
	} else {
		modbusfunction = READREG;
	}

	regadd = pcmodbus.StartAdd;
	NumReg = 0;
	okflag = FALSE;
	while(NumReg < pcmodbus.NoReg)
	{
		if(regadd == 0)
		{
			PtrTypeFlag = INT;	
			Ptr = &livetime.yrmnth;
			ProcessRegister(PtrTypeFlag,Ptr,NumReg);
			if(modbusfunction == WRITEPRESET) YearMonthUpdate();	//update the clock
		}
		else if(regadd == 1)
		{		
			PtrTypeFlag = INT;	
			Ptr = &livetime.datehrs;
			ProcessRegister(PtrTypeFlag,Ptr,NumReg);
			if(modbusfunction == WRITEPRESET) DateHoursUpdate();	//update the clock
		}
		else if(regadd == 2)
		{
			PtrTypeFlag = INT;	
			Ptr = &livetime.minssecs;
			ProcessRegister(PtrTypeFlag,Ptr,NumReg);
			if(modbusfunction == WRITEPRESET) MinsSecsUpdate();	//update the clock				
		}
		else if(regadd >= 3  && regadd < 31)	//deal with live raw data to/from channels precompensated
		{
			if(modbusfunction == READREG)	//pre compensated values
			{
				pcmodbus.Data[NumReg] = GetPreCompValue(regadd-3);
			}
		}
		else if(regadd >= 31  && regadd < 59)	//deal with live raw data to/from channels post compensated data
		{
			if(modbusfunction == READREG)	//post compensated values
			{
				pcmodbus.Data[NumReg] = GetPostCompValue(regadd-31);
			}
		}
		// PF Gen 2 - 13-Dec-11 Changed upper to 87 instead of 88
		else if(regadd >= 59  && regadd < 87)	//deal with live raw data to/from channels post compensated and filtered data
		{
			if(modbusfunction == READREG)	//end result is the int, filtered value
			{
				pcmodbus.Data[NumReg] = GetEndResultValue(regadd-59);
			}
		}
		// PF Gen 2 - 13-Dec-11 Changed upper to 116 instead of 117
		else if(regadd >= 88  && regadd < 116)	//deal with live raw data deviation per sensor
		{
			if(modbusfunction == READREG)	//pre compensated values
			{
				pcmodbus.Data[NumReg] = (unsigned int)GetSensorDeviationValue(regadd-88);
			}
		}
		else if(regadd >= 117  && regadd < 145)	//deal with sensor status per channel
		{
			if(modbusfunction == WRITEPRESET)
			{
				PtrTypeFlag = INT;
				Ptr = (unsigned int*)Status1Flags(regadd-117);
				val = *(unsigned int*)Ptr;
				if(val != pcmodbus.Data[NumReg])
				{
					memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
					InputNumtoString(chanstr,regadd-117);	//pass in channel number from zero
					if((val & 0x01) == 0 && (pcmodbus.Data[NumReg] & 0x01) != 0)	//enabling now
					{
						// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - sprintf(eventstring,"Enabling Ch%s,",chanstr);
						// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - LogEvent(SENSORSTATUS,HIGH_PRIORITY,NO,eventstring);
						noisefilterLOAD[regadd-117] = 3;	//noise filter off
						damagemonignore[regadd-117] = 3;	//filter off for 3 iterations on enabling the channel
						// PF 17-Nov-09 disable man alarms for a time
						checkmanalarms[regadd-117] = 0;
					}
					// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - 
					/*
					else if((val & 0x01) != 0 && (pcmodbus.Data[NumReg] & 0x01) == 0)	//disabling now
					{
						sprintf(eventstring,"Disabling Ch%s,",chanstr);
						LogEvent(SENSORSTATUS,HIGH_PRIORITY,NO,eventstring);
					}
					// PF 02-Oct-09 alarm mask eventing added
					if((val & 0x04) == 0 && (pcmodbus.Data[NumReg] & 0x04) != 0)	//enabling mask now
					{
						sprintf(eventstring,"Alarm mask on  Ch%s,",chanstr);
						LogEvent(SENSORSTATUS,HIGH_PRIORITY,NO,eventstring);
					}
					else if((val & 0x04) != 0 && (pcmodbus.Data[NumReg] & 0x04) == 0)	//disabling mask now
					{
						sprintf(eventstring,"Alarm mask off Ch%s,",chanstr);
						LogEvent(SENSORSTATUS,HIGH_PRIORITY,NO,eventstring);
					}
					// PF 02-Oct-09 alarm mask eventing added EOM
					*/
					// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - EOM
					ProcessRegister(PtrTypeFlag,Ptr,NumReg);
					WriteSensorStatustoNVMEM(regadd-117);
					settings.sdcardupdate = SDSTATUSUPDATE; // PF Gen 2 - 11-May-12 Update sd card settings
				}
			}
			else
			{
				pcmodbus.Data[NumReg] = ReadStatus1Int(regadd-117);
			}
		}
		// PF Gen 2 - 13-Dec-11 Changed upper to 174 instead of 175
		else if(regadd >= 146  && regadd < 174)	//deal with sensor status per channel
		{
			PtrTypeFlag = INT;
			Ptr = (unsigned int*)GetStatus2Flags(regadd-146);
			ProcessRegister(PtrTypeFlag,Ptr,NumReg);
		}		
		else if(regadd >= 175  && regadd < 203)	//deal with sensor status per channel
		{
			PtrTypeFlag = INT;
			Ptr = (unsigned int*)Status3Flags(regadd-175);
			ProcessRegister(PtrTypeFlag,Ptr,NumReg);
		}		
		else if(regadd >=203 && regadd < 231)	//uA values returned here
		{
			pcmodbus.Data[NumReg] = GetuASCaledValue(regadd-203);
		}
		// PF Gen 2 - 13-Dec-11 Added new registers
		else if(regadd == 231)
		{
			if(modbusfunction == WRITEPRESET) //SLD Gen 2 - 11-Oct-12 Made register writeable to reset
			{
				DCModeCylinderComparison = pcmodbus.Data[NumReg];
			}
			else pcmodbus.Data[NumReg] = DCModeCylinderComparison;
		}
		else if(regadd >=232 && regadd <= 233)
		{
			if(modbusfunction == WRITEPRESET)
			{
				DCModePeakReset[regadd-232] = pcmodbus.Data[NumReg];
			}
			else pcmodbus.Data[NumReg] = DCModePeakReset[regadd-232];
		}
		else if(regadd >=234 && regadd <= 235)
		{
			if(modbusfunction == WRITEPRESET)
			{
				DCModeInRangeOK[regadd-234] = pcmodbus.Data[NumReg];
			}
			else pcmodbus.Data[NumReg] = DCModeInRangeOK[regadd-234];
		}
		else if(regadd >=236 && regadd <= 237)
		{
			if(modbusfunction == WRITEPRESET)
			{
				DCModeInRangeIdeal[regadd-236] = pcmodbus.Data[NumReg];
			}
			else pcmodbus.Data[NumReg] = DCModeInRangeIdeal[regadd-236];
		}
		// PF Gen 2 - 13-Dec-11 EOM
		else if(regadd >= 256 && regadd < 270)	//cylinder averaging data - data averaged from two sensors on a cylinder basis
		{
			pcmodbus.Data[NumReg] = GetCylinderAverageValue(regadd-256);
		}
		else if(regadd >= 270 && regadd < 284)	//cylinder deviaton - deviation on cylinder basis
		{
			pcmodbus.Data[NumReg] = GetCylinderDeviationValue(regadd-270);
		}
		else if(regadd >= 284 && regadd < 298)	//cylinder status - cotains alarms etc on cyclinder basis
		{
			PtrTypeFlag = INT;
			Ptr = (unsigned int*)&(cylinders[regadd-284].status1);
			ProcessRegister(PtrTypeFlag,Ptr,NumReg);
		}
		else if(regadd >= 298 && regadd < 312)	//cylinder status - contains alarms etc on cyclinder basis
		{
			PtrTypeFlag = INT;
			Ptr = (unsigned int*)&(cylinders[regadd-298].status2);
			ProcessRegister(PtrTypeFlag,Ptr,NumReg);
		}
		else if(regadd >= 312 && regadd < 340)	//scaled values for 28 sensors
		{
			//read only registers
			pcmodbus.Data[NumReg] = (unsigned int)GetScaledValue(regadd - 312);
		}
		else if(regadd == 382)	//checked rpm from unit 1
		{
			pcmodbus.Data[NumReg] = GetModalRPM(0);	//settings.modalrpm;		//return the modal value from ALL channels
		}
		else if(regadd == 383)	//checked rpm from unit 2
		{
			pcmodbus.Data[NumReg] = GetCheckedRPM(2);
		}
		else if(regadd >= 384 && regadd < 412)	//rpm per sensor basis - will be used in GEN2 for rpm back from up to 28 sensors
		{
			if(modbusfunction == READREG)
			{
				pcmodbus.Data[NumReg] = GetRPM(regadd-384);
			}
		}
		else if(regadd >= 412 && regadd < 440)	//temperature sensors temp 1 per sensor
		{
			if(modbusfunction == READREG)	//pre compensated values
			{
				pcmodbus.Data[NumReg] = sensor[regadd-412].prt;
			}
		}
		else if(regadd >= 440 && regadd < 468)	//pre warning level registsers
		{
			if(modbusfunction == READREG)	//pre warning values from calibration
			{
				pcmodbus.Data[NumReg] = prewarn.prelevel[regadd-440];
			}
		}
		else if(regadd == 468)		//wio activity
		{
			if(modbusfunction == READREG) pcmodbus.Data[NumReg] = WIOActivityWord();
		}
		else if(regadd == 469)		//wio content
		{
			if(modbusfunction == READREG) pcmodbus.Data[NumReg] = WIOPPMWord();
		}
		else if(regadd == 470)		//wio temperature
		{
			if(modbusfunction == READREG) pcmodbus.Data[NumReg] = WIOTemperatureWord();
		}
		else if(regadd == 471)		//wio alarm status
		{
			if(modbusfunction == READREG) pcmodbus.Data[NumReg] = *((unsigned int*)&waterinoil.wioalarms);
		}
		//AJB 19-Aug-10
		else if(regadd == 472)		//SLEM value
		{
			if(modbusfunction == READREG) pcmodbus.Data[NumReg] = *((unsigned int*)&slem.mV);
		}
		else if(regadd == 473)		//SLEM Alarms
		{
			if(modbusfunction == READREG) pcmodbus.Data[NumReg] = *((unsigned int*)&slem.alarms);
		}
		else if(regadd == 474)		//RTC Level
		{
			if(modbusfunction == READREG) pcmodbus.Data[NumReg] = *((unsigned int*)&rtcbat.mV);
		}
		else if(regadd == 475)		//RTC Alarm Low
		{
			if(modbusfunction == READREG) pcmodbus.Data[NumReg] = *((unsigned int*)&rtcbat.alarms);
		}
		//AJB 19-Aug-10 EOM
		// PF Gen 2 - 07-Mar-12 added in access to last wio error code
		else if(regadd == 476)
		{
			if(modbusfunction == READREG) pcmodbus.Data[NumReg] = wioerrorcode;
		}
		// PF Gen 2 - 07-Mar-12 EOM
		else if(regadd == ALARMSTRUCTTOPC)	//alarm structure to pc
		{
			if(modbusfunction == READREG) pcmodbus.Data[NumReg] = *(unsigned int*)GetAlarmFlags();
		}
		else if(regadd == RTC_DAYUPDATE)
		{
			if(modbusfunction == WRITEPRESET)
			{
				clocktime.day = pcmodbus.Data[NumReg];
				WriteDateHrsData();
			}
			else pcmodbus.Data[NumReg] = clocktime.day;
		}
		else if(regadd >=513 && regadd <= 528)
		{
			if(modbusfunction == READREG) {	pcmodbus.Data[NumReg] = bearingstatus.MainBearings[regadd-513]; }
		}
		else if(regadd >=529 && regadd <= 542)
		{
			if(modbusfunction == READREG) {	pcmodbus.Data[NumReg] = bearingstatus.CrossHeadBearings[regadd-529]; }
		}
		else if(regadd >=543 && regadd <= 556)
		{
			if(modbusfunction == READREG) {	pcmodbus.Data[NumReg] = bearingstatus.CrankPinBearings[regadd-543]; }
		}
		else if(regadd == NEWALARMEVENT)		//new alarm event set on new events in the alrm list
		{
			if(modbusfunction == READREG)
			{
				pcmodbus.Data[NumReg] = eventlogentry.newalarmeventflag;	//return the flag
				if(eventlogentry.newalarmeventflag == TRUE)
				{
					ReadFirstEventCode();	//setup for reading the first event code in the list
					eventlogentry.newalarmeventflag = FALSE;	//clear the flag
				}
			}
		}
		else if(regadd == EVENTCODELISTSTATUS)		//status bits from the alarm event code
		{
			if(modbusfunction == READREG) pcmodbus.Data[NumReg] = eventlogentry.eventcodestatus;
			else pcmodbus.Data[NumReg] = 0;
		}
		else if(regadd == EVENTCODELISTID)		//event id read for the alarm event
		{
			if(modbusfunction == READREG)
			{
				pcmodbus.Data[NumReg] = eventlogentry.eventcode;
				eventlogentry.txalarmevents++;	//increment the number on transmission
			}
			else pcmodbus.Data[NumReg] = 0;
		}
		else if(regadd == PCEVENTIDRETURN)
		{
			if(modbusfunction == WRITEPRESET) AlarmEventIDInc(pcmodbus.Data[NumReg]);
			else pcmodbus.Data[NumReg] = 0;	//return zero if not a write operation
		}
		else if(regadd == READALLALARMEVENTS)
		{
			ReadFirstEventCode();	//setup for reading the first event code in the list
		}
		else if(regadd == CLEARALARMLISTAREA)
		{
			if(modbusfunction == WRITEPRESET)
			{
				if(pcmodbus.Data[NumReg] == 1) ClearEventCodeListArea();
			}
		}
		// PF Gen 2 - 07-Mar-12 Replacement events no longer needed as done in PC 
		/*
		else if(regadd == REPLACEMENTEVENTS)	//pass in code (see defines) for replacement event to log
		{
			if(modbusfunction == WRITEPRESET) ReplacementEvents(pcmodbus.Data[NumReg]);
		} 
		*/
		// PF Gen 2 - 07-Mar-12 EOM
		// PF Gen 2 - 13-Dec-11 Added in bit alarm area
		else if(regadd >= 647  && regadd <= 678)
		{
			if(modbusfunction == READREG)
			{
				pcmodbus.Data[NumReg] = bitalarmlist[regadd-647];
			}
		}
		// PF Gen 2 - 13-Dec-11 EOM
		// PF Gen 2 - 06-Mar-12 Added in bit event area
		else if(regadd >= 679  && regadd <= 694)
		{
			if(modbusfunction == READREG)
			{
				pcmodbus.Data[NumReg] = BitEventCompiled(regadd-679);
			}
		}
		// PF Gen 2 - 13-Dec-11 EOM
		else if(regadd == 765)	//read or clear the message queue value - number of events waiting to be read
		{
			if(modbusfunction == WRITEPRESET)
			{
				//decrement according to the number processed by the PC
				MSGQueueNumfromPC(pcmodbus.Data[NumReg]);		//msg queue number from the pc
			}
			else pcmodbus.Data[NumReg] = ReadMSGQueueNum();	//find the number of messages in queue
		}
		else if(regadd == 766)	//setup for reading the last event in the event file, find the last eventID
		{
			//read from allsensors structure the last event id
			pcmodbus.Data[NumReg] = ReadLastEventID();
		}
		else if(regadd == 767)	//setup a message to read back, this will be held in a buffer for reading out register by register
		{
			//pass in the eventid to read
			if(modbusfunction == WRITEPRESET) SetupEventReadBack(pcmodbus.Data[NumReg]);
		}
		else if(regadd >= 768 && regadd < 817)
		{
			//read back from the buffer relating to the current event message to be read
			pcmodbus.Data[NumReg] = ReadEvent(regadd-768);
		}
		else if(regadd >= 817 && regadd < 831)	//acknowledgement from the pc to be written to the sd card
		{
				if(modbusfunction == WRITEPRESET)	//write to location
				{
					//ptr from the start of the name being presented from the pc the time and date is calculated at the spu
					//register 826 for the name
					if(regadd >= 826) modbusackbuffer[regadd-826] = pcmodbus.Data[NumReg];
				}
				else
				{
					//read back the ack word relating to a register
					//data will be held in a buffer when the register 767 sets the eventid to read back
					//the ack can be addressed from register 768 as this is the start of the event message. the ack is after the event
					pcmodbus.Data[NumReg] = ReadEvent(regadd-768);
				}
		}
		// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - 
		/*
		else if(regadd == 831)		//store the data to the sd card for the ack received
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				EventAck(pcmodbus.Data[NumReg],modbusackbuffer);	//pass in a ptr to the ack buffer
				SetStatusforAlarmEvent(pcmodbus.Data[NumReg],ALARM_ACK_MASK,TRUE); 				//ack the event in the alarm event list
				ClearAlarmEventonID(pcmodbus.Data[NumReg]);		//search list and clear down if no longer in alarm
			}
			else pcmodbus.Data[NumReg] = 0;	//return zero for read on this register
		}
		*/
		//gap 832 - 994

		else if(regadd == 995)	//clear the event log id
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				//clear the event log id to zero and store back to nv memory
				ClearAlarmListandEventLog();	//reset the event log id to zero
			}
			else	pcmodbus.Data[NumReg] = ReadEventLogID();
		}
		else if(regadd == 996)
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				//set up the type for reading this will allow the correct directory to be chosen
				fileregs.logtype  = pcmodbus.Data[NumReg];	//set the log type (this should be short term or long term type
			}
			else	pcmodbus.Data[NumReg] = fileregs.logtype;	//set the log type (this should be short term or long term type
		}
		else if(regadd == 999)	//clear the mancomp sequence number
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				ClearManCompSequence();
			}	
			else if(modbusfunction == READREG)	//
			{
				pcmodbus.Data[NumReg] = sdsettings.sequence;
			}
		}		
		else if(regadd == 1000)		//report the error number relating to where the sd card fell over
		{
			pcmodbus.Data[NumReg] = sdsettings.errornum;
		}
		else if(regadd == 1003)		//temperature alarm
		{
			//if(modbusfunction == WRITEPRESET)	//write to location
			{
				if(pcmodbus.Data[NumReg] == 0) settings.temperaturealarm = 1;
				else settings.temperaturealarm = 0;
			}
		}
		else if(regadd == 1004)		//temperature slowdown
		{
			//if(modbusfunction == WRITEPRESET)	//write to location
			{
				if(pcmodbus.Data[NumReg] == 0) settings.temperatureslowdown = 1;
				else settings.temperatureslowdown = 0;
			}
		}

		else if(regadd == 1010)	//erase the sd card
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				if(pcmodbus.Data[NumReg] ==1) settings.sderase = 1;		//set erase register, this is checked in the main loop
			}	
			else pcmodbus.Data[NumReg] = settings.sderase;	//register cleared once erase complete
		}								

		else if(regadd == 1024)	//output1
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				if(pcmodbus.Data[NumReg] == 1) alarmOP1 = 1;
				else alarmOP1 = 0;
			}	
			else pcmodbus.Data[NumReg] = alarmOP1;	//read
		}
		else if(regadd == 1025)	//output2
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				if(pcmodbus.Data[NumReg] == 1) alarmOP2 = 1;
				else alarmOP2 = 0;
			}	
			else pcmodbus.Data[NumReg] = alarmOP2;	//read
		}
		else if(regadd == 1026)	//output3
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				// PF 24-Sep-09 Changed to access settings.slowcondition instead of alarmOP3
				/*
				if(pcmodbus.Data[NumReg] == 1) alarmOP3 = 1;
				else alarmOP3 = 0;
				*/
				if(pcmodbus.Data[NumReg] == 1) settings.slowdowncondition = SLOWDOWN_OP_OK;
				else settings.slowdowncondition = SLOWDOWN_OP_FAULT;
			}	
			else
			{
				if(settings.slowdowncondition == SLOWDOWN_OP_OK) pcmodbus.Data[NumReg] = 1;	//set to 1 for OK
				else pcmodbus.Data[NumReg] = 0;	//set to 0 for slow down condition
			}
		}

		//gap 1027 - 1030

		else if(regadd == 1031)	//sd update register - flags set from pc to update various parts of sd
		{
			//SDGENERALUPDATE - 1
			//SDSTATUSUPDATE - 3
			if(modbusfunction == WRITEPRESET)
			{
				 settings.sdcardupdate = pcmodbus.Data[NumReg];
			}
		}
		else if(regadd == 1033)	//not used from GEN1.5
		{
			if(modbusfunction == READREG) pcmodbus.Data[NumReg] = 0;
		}
		else if(regadd == 1035)	//run or cal mode
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				if(pcmodbus.Data[NumReg] == 1)
				{
					allsensors.flags.startcal = 1;	//start the calibration in the main loop
				}
				if(pcmodbus.Data[NumReg] == 0)	//aborted by user
				{
					CalAbort();
				}
				settings.sdcardupdate = SDGENERALUPDATE;		//update the sd card settings on changing allsensors
			}	
			else pcmodbus.Data[NumReg] = 0;	//return zero this is a write only register
		}
		else if(regadd == 1036)	//report forward astern flag
		{
			pcmodbus.Data[NumReg] = motion.forwardasternflag;
		}		
		else if(regadd == 1038)	//return sderror status
		{
			pcmodbus.Data[NumReg] = settings.sdcarderr;
		}
		else if(regadd == 1039)	//set the sd card status to present and init in main loop
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				if(pcmodbus.Data[NumReg] == 1)
				{
					settings.sdreinit = 1;		//set reinit to 1, attempt to init the card and set present status
				}
				else
				{
					settings.sdcarderr = 0;		//clear sd error flag if not using sd card
					sdsettings.present = 0;
					settings.updatesafe = SDSETTINGSUPDATE;
				}
			}	
			else pcmodbus.Data[NumReg] = sdsettings.present;	//return if the card is present and init ok
		}		
		else if(regadd == 1040)		//AJB 19-Aug-10 - added for pausing dc mode used in surveyor test
		{
			if(modbusfunction == WRITEPRESET) settings.dcpause = pcmodbus.Data[NumReg];	//dc pause mode
			else pcmodbus.Data[NumReg] = settings.dcpause;
		}				
		// PF Gen 2 - 04-Jan-12 This register needs to be access every x seconds, if not then dc mode will be exited
		else if(regadd == 1041) 
		{
			pcmodbus.Data[NumReg] = timers.dcmodestayalive;
			timers.dcmodestayalive = DCMODESTAYALIVE;
		}
		// PF Gen 2 - 04-Jan-12 EOM
		else if(regadd == 1042)	
		{
			if(modbusfunction == WRITEPRESET) settings.dcpeakhold = pcmodbus.Data[NumReg];	//dcmode peakhold
			else pcmodbus.Data[NumReg] = settings.dcpeakhold;
		}				
		else if(regadd == 1043)	//dc mode - check if dc mode selected
		{
			if(modbusfunction == WRITEPRESET)
			{
				if(pcmodbus.Data[NumReg] == 1)
				{
					DCModeInit();
				}	//set bit here , used in normaliseandfilter (check if reading dc levels)
				else if(pcmodbus.Data[NumReg] == 0)		//drop out of dcmode, clear the registers
				{
					DCModeClear();
					// settings.dcmode = 0; // PF Gen 2 - 04-Jan-12 removed clearing to call DCModeClear;
				}
			}
			else pcmodbus.Data[NumReg] = settings.dcmode;	//return mode
		}
		else if(regadd == 1044)	//output test
		{
			if(modbusfunction == WRITEPRESET) digout.outputtestmode = pcmodbus.Data[NumReg];	//set bit here, test the outputs from the PC
			else pcmodbus.Data[NumReg] = digout.outputtestmode;	//return mode
		}				
		else if(regadd == 1047)	//initialise fram
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				if(pcmodbus.Data[NumReg] == 1) FRAMInit();
			}	
		}
		else if(regadd == 1048)	//pre warning intialisation - start the timer for pre warning
		{
			if(modbusfunction == WRITEPRESET && pcmodbus.Data[NumReg] == 1) PreWarningInit();
		}
		else if(regadd == 1049)	//clock corruption flag
		{
			if(modbusfunction == READREG) pcmodbus.Data[NumReg] = clocktime.clockerr;	//send the word relating to clock corruption
		}
		else if(regadd == 1061)		//cleat the man table to zero - set in FRAM
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				if(pcmodbus.Data[NumReg] == 1) ClearMANTable(1);	// PF Gen 2 - 29-May-12 Added in parameter
			}	
		}
		else if(regadd == 1062)
		{           
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				settings.configoperationcomplete = pcmodbus.Data[NumReg];
				if(settings.tableconfigtype == 3)	//offset update
				{
					//settings.updatesafe = 5;
				}
				else if(settings.tableconfigtype > 4 && settings.tableconfigtype < 32)	//update to nonvol the man_comptable
				{
					//this would not normally come from the pc, the comp table is filled in by the SPU automatically
					//if it has been changed in ram we can now save it to non vol by setting this
					//settings.updatesafe = 7;	//update the mancomptable in non vol

				}
			}	
			else pcmodbus.Data[NumReg] = settings.configoperationcomplete;
		}
		else if(regadd == 1063)
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				settings.tableconfigtype = pcmodbus.Data[NumReg];
			}	
			else pcmodbus.Data[NumReg] = settings.tableconfigtype;
		}
		else if(regadd >=1064 && regadd < 1092)	//compensation coeff table
		{
			if(settings.tableconfigtype == 3)
			{
				memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
				//Offset, safe5.compoffseta	 - offset in microns to correct for initial error on turning gear or for replacing a sensor and putting an offset back in
				pos = regadd-COMPENSATIONTABLESTART;
				ptr2 = ((unsigned int*)&offsetA);
				Ptr = &(ptr2[pos]);
				if(modbusfunction == WRITEPRESET)	//write to location
				{
					if(*(int*)Ptr != (int)pcmodbus.Data[NumReg])
					{
						if((int)pcmodbus.Data[NumReg] >= MINOFFSETVAL && (int)pcmodbus.Data[NumReg] <= MAXOFFSETVAL)
						{
							//point to position after initial string dependent on type
							//REMEMBER the string length of EVENTMSG_LEN_INBYTES_PART2 (max 12 chars) so 18 chars left!
							// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - InputNumtoString(chanstr,pos);
							// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - sprintf(eventstring,"DC Offset%s old:%d new:%d",chanstr,*(int*)Ptr,(int)pcmodbus.Data[NumReg]);
							*(int*)Ptr = (int)pcmodbus.Data[NumReg];
							settings.updatesafe = OFFSETAUPDATE;
							// 2012-12-05 FF: the rapid wear is changed in new MAN speification
							if(sensor[pos].status1.replaced == 1)
							{
								damagemonignore[pos] = 3; //ignore after changing the offset							
								iSensorInRepalce = pos;
								iSensorInRepalceMode = TRUE;
								iSensorInRepalceTimer = TRUE;
							}
						}
						else
						{
							//LEAVE AS OOR for out of range NOT ENOUGH CHARS FOR ANYTHING ELSE!!!
							// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - sprintf(eventstring,"OOR:%d :%d",pcmodbus.Data[NumReg],*(int*)Ptr);
						}
						// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - LogEvent(PARAMETER_CHANGE,HIGH_PRIORITY,NO,eventstring);	// log event to sd card on change	
					}
				}	
				else pcmodbus.Data[NumReg] = *(int*)Ptr;
			}
			else if(settings.tableconfigtype == 4)
			{
				memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
				//Offset, safe5.compoffsetb - offset that can be input by the user from the pc, normally zero - this can be used if an additional offset is required perhaps after changing a sensor
				pos = regadd-COMPENSATIONTABLESTART;
				ptr2 = ((unsigned int*)&offsetB);
				Ptr = &(ptr2[pos]);

				if(modbusfunction == WRITEPRESET)	//write to location
				{
					if(*(int*)Ptr != pcmodbus.Data[NumReg])
					{
						if((int)pcmodbus.Data[NumReg] >= MINOFFSETVAL && (int)pcmodbus.Data[NumReg] <= MAXOFFSETVAL)
						{
							//point to position after initial string dependent on type
							//REMEMBER the string length of EVENTMSG_LEN_INBYTES_PART2 (max 12 chars) so 18 chars left!
							// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - InputNumtoString(chanstr,pos);
							// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - sprintf(eventstring,"CrOffset%s old:%d new:%d",chanstr,*(int*)Ptr,(int)pcmodbus.Data[NumReg]);
							*(int*)Ptr = pcmodbus.Data[NumReg];
							settings.updatesafe = OFFSETBUPDATE;
							if(sensor[pos].status1.replaced == 1)
							{
								damagemonignore[pos] = 3; //ignore after changing the offset							
								iSensorInRepalce = pos;
								iSensorInRepalceMode = TRUE;
								iSensorInRepalceTimer = TRUE;
							}
						}
						else
						{
							//LEAVE AS OOR for out of range NOT ENOUGH CHARS FOR ANYTHING ELSE!!!
							// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - sprintf(eventstring,"OOR:%d :%d",pcmodbus.Data[NumReg],*(int*)Ptr);
						}
						// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - LogEvent(PARAMETER_CHANGE,HIGH_PRIORITY,NO,eventstring);	// log event to sd card on change	
					}
				}	
				else pcmodbus.Data[NumReg] = *(int*)Ptr;

			}
			else if(settings.tableconfigtype >= 5 && settings.tableconfigtype < 155)
			{
				//Speed Compensation channels, man_comptable[0][0]
			 	//setup ptr2 to point to the rpm point setup in tableconfig and return 28 channels of info
				//pass in x as the offset for the channel 0 to 28
				Ptr = MANCompTable((regadd-COMPENSATIONTABLESTART),settings.tableconfigtype-5);	//table config should contain the speed point + 5
			 	PtrTypeFlag = INT;
			 	ProcessRegister(PtrTypeFlag,Ptr,NumReg);
				if(modbusfunction == WRITEPRESET) settings.updatesafe = MANCOMPTABLE;
			}
		}
		else if(regadd == 1093)	//reset the prewarning levels for replaced sensors
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				if(pcmodbus.Data[NumReg] == 1) PreWarnLevelReset();
			}
		}
		// PF Gen 2 - 09-Dec-11 Added in realtime um and uA
		else if(regadd >= 1094  && regadd < 1122)
		{
			if(modbusfunction == READREG)	//pre compensated values
			{
				pcmodbus.Data[NumReg] = GetRealtimePreCompValue(regadd-1094);
			}
		}
		else if(regadd >= 1122  && regadd < 1150)
		{
			if(modbusfunction == READREG)	//mA values
			{
				pcmodbus.Data[NumReg] = GetRealtimeuAScaledValue(regadd-1122);
			}
		}
		// PF Gen 2 - 09-Dec-11 EOM
		// PF Gen 2 - 07-Mar-12 Allow easy access to offset A
		else if(regadd >= 1150  && regadd < 1177)
		{
			if(modbusfunction == READREG)	//mA values
			{
				pcmodbus.Data[NumReg] = offsetA.val[regadd-1150];
			}
		}
		// PF Gen 2 - 07-Mar-12 EOM
		else if(regadd == 2000)		//settings.evntmsgid set from 0 to last msg
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				settings.eventmsgid = pcmodbus.Data[NumReg];
			}	
			else pcmodbus.Data[NumReg] = settings.eventmsgid;
		}
		else if(regadd ==2001) //event msg registers
		{

			if(modbusfunction == WRITEPRESET)	//write to location
			{
				//pass in the ptr to the start of the message stored as ints
				SDEventMessageUpdate(settings.eventmsgid,&pcmodbus.Data[NumReg]);
			}
			else	//read the message and store in the pcmodbus data registers
			{
				SDReadEventMessage(settings.eventmsgid,&pcmodbus.Data[NumReg]);
			}
		}
		else if(regadd >= 2002 && regadd < 2025) //event msg registers - do not address these directly, fetch at 2001
		{	//do nothing here! 
		}
		else if(regadd == 2025)		//Setup default event messages from ROM
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				if(pcmodbus.Data[NumReg] == 1) SetAllEventMsgs();
			}	
		}
		else if(regadd == 2026)		//initialise the motion direction for cal
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				if(pcmodbus.Data[NumReg] == 1) InitMotionCal();
			}	
		}
		else if(regadd == 2027)		//setup motion direction 
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				if(pcmodbus.Data[NumReg] == 1) ClearEngineDirCal();		//clear the direction calibration and firing order
			}	
		}
		else if(regadd >=2028 && regadd < 2035) //send or receive the firing order data
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				allsensors.dirorder[regadd-2028] = pcmodbus.Data[NumReg];
				settings.sdcardupdate = SDGENERALUPDATE;
			}
			else
			{
				pcmodbus.Data[NumReg] =  allsensors.dirorder[regadd-2028];
			}
		}
		else if(regadd == 2060)	//Slow down ack register
		{
			if(modbusfunction == WRITEPRESET)
			{
				allsensors.slowdownack = pcmodbus.Data[NumReg];
			}
			else pcmodbus.Data[NumReg] = allsensors.slowdownack;
		}
		else if(regadd == 2061)	//Alarm ack register
		{																   
			if(modbusfunction == WRITEPRESET)
			{
				allsensors.alarmack = pcmodbus.Data[NumReg];
			}
			else pcmodbus.Data[NumReg] = allsensors.alarmack;
		}
		else if(regadd == 2063)	//clear calibration alarms
		{
			if(modbusfunction == WRITEPRESET)
			{
				ClearCalibrationAlarms();
			}
		}
		else if(regadd >= ENGINERUNTIME && regadd < ENGINERUNTIME+2)
		{
			ProcessEngineRunT(regadd,NumReg);
		}
		else if(regadd == ENG20PERCENTRPM)		//20% engine speed point
		{
			pcmodbus.Data[NumReg] = allsensors.rpmmin;
		}
		else if(regadd == DIRECTIONCALERROR)		//direction calibration error occured
		{
			if(modbusfunction == WRITEPRESET) motion.calerror = pcmodbus.Data[NumReg];
			else pcmodbus.Data[NumReg] = motion.calerror;
		}
		// PF Gen 2 - 3-Nov-11 If in stage1/2/3 roughcal and timer not running then red box else white box
		else if(regadd == 2999)
		{
			if (((speedcompcoeffs.stageflag >= STAGE1_START && speedcompcoeffs.stageflag <= CAL_COMPLETE)
				&& settings.timerrunning == FALSE)) {
				pcmodbus.Data[NumReg] = 1; // Red warning out of speed band
			} else {
				pcmodbus.Data[NumReg] = 0; // In band or not valid calibration band so always white
			}
		}
		// PF Gen 2 - 3-Nov-11 EOM
		else if(regadd == 3000)	//stage flag for calibration
		{
			if(modbusfunction == WRITEPRESET) speedcompcoeffs.stageflag = pcmodbus.Data[NumReg];
			else { 
			// PF Gen 2 - 31-Oct-11 If direction of engine has not been learnt then return 12 "Cylinder firing order not determined" to PC
							// This is done here as to not affect internal SPU code looking at the register. The 12 was created in the PC orignally
				if (motion.forwardasternflag == -2) pcmodbus.Data[NumReg] = 12;
				else
				pcmodbus.Data[NumReg] = speedcompcoeffs.stageflag;
			// PF Gen 2 - 31-Oct-11 EOM
			}
		}
		else if(regadd == 3001)	//status of cal
		{
			if(modbusfunction == WRITEPRESET) speedcompcoeffs.status = pcmodbus.Data[NumReg];
			else pcmodbus.Data[NumReg] = speedcompcoeffs.status;
		}

		else if(regadd == 3013)	//learning timer (time left to run in minutes)
		{
			pcmodbus.Data[NumReg] = GetLearningTimeLeft();
		}
		else if(regadd == 3014)	//interval time left (time left to run in minutes)
		{
			pcmodbus.Data[NumReg] = GetIntervalTimeLeft();
		}
		else if(regadd == 3015)	//
		{
			pcmodbus.Data[NumReg] = GetPercentageLeft();
		}
		else if(regadd == 3016)	//read only - retrieve the number of rpmpoints in man table
		{
			pcmodbus.Data[NumReg] = calibration.rpmpoints;		
		}
		else if(regadd == 3017)	//valid points seen during fine cal
		{	
			pcmodbus.Data[NumReg] = calibration.validpoints;	//no of valid points seen during cal
		}
		else if(regadd >= 3018 && regadd < 3024)
		{
			ptr2 = (unsigned int*)&calibration.speedcalpoints[0][0];	//point to first lower val in table
			pcmodbus.Data[NumReg] = ptr2[regadd-3018];
		}
		else if(regadd == NEWMANAVAILFLAG)		//new table available for calibration
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				mancal.manupdateflag = FALSE;	//clear the flag
			}
			else pcmodbus.Data[NumReg] = mancal.manupdateflag;
			WriteMANCaltoNVMEM();
		}
		// PF Gen 2 - 14-Nov-11 Added in new structure to store time and date for calibration process
		else if(regadd == 3025)
		{
			PtrTypeFlag = INT;	
			Ptr = &calibrationtd.calcomplete.yrmnth;
			ProcessRegister(PtrTypeFlag,Ptr,NumReg);
			if(modbusfunction == WRITEPRESET) CalibrationtdUpdate(0);
		}
		else if(regadd == 3026)
		{		
			PtrTypeFlag = INT;	
			Ptr = &calibrationtd.calcomplete.datehrs;
			ProcessRegister(PtrTypeFlag,Ptr,NumReg);
			if(modbusfunction == WRITEPRESET) CalibrationtdUpdate(0);
		}
		else if(regadd == 3027)
		{
			PtrTypeFlag = INT;	
			Ptr = &calibrationtd.calcomplete.minssecs;
			ProcessRegister(PtrTypeFlag,Ptr,NumReg);
			if(modbusfunction == WRITEPRESET) CalibrationtdUpdate(0);
		}
		else if(regadd == 3028)
		{
			PtrTypeFlag = INT;	
			Ptr = &calibrationtd.verification.yrmnth;
			ProcessRegister(PtrTypeFlag,Ptr,NumReg);
			if(modbusfunction == WRITEPRESET) CalibrationtdUpdate(0);
		}
		else if(regadd == 3029)
		{		
			PtrTypeFlag = INT;	
			Ptr = &calibrationtd.verification.datehrs;
			ProcessRegister(PtrTypeFlag,Ptr,NumReg);
			if(modbusfunction == WRITEPRESET) CalibrationtdUpdate(0);
		}
		else if(regadd == 3030)
		{
			PtrTypeFlag = INT;	
			Ptr = &calibrationtd.verification.minssecs;
			ProcessRegister(PtrTypeFlag,Ptr,NumReg);
			if(modbusfunction == WRITEPRESET) CalibrationtdUpdate(0);
		}
		// PF Gen 2 - 14-Nov-11 EOM
		else if(regadd == 4096)
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				settings.caltableconfigtype = pcmodbus.Data[NumReg];
			}	
			else pcmodbus.Data[NumReg] = settings.caltableconfigtype;
		}
		else if(regadd >=4098 && regadd < 4154)	//data used to store calibration accumulation etc - used for debugging etc
		{
			if(settings.caltableconfigtype >= 1 & settings.caltableconfigtype < 151)	//return the accumulated value for each speed point
			{									 
				if(modbusfunction == WRITEPRESET)	//write to location
				{
					//write values to table and store to nvmem
				}
				else		//deal with 28 channels of data
				{
					//readback from non vol memory
					ReadAccCalNVMEM(settings.caltableconfigtype - 1);		//point to the speed point indexed from zero
					ptr2 = (unsigned int*)(ReadAccAverageVal(0,0));
					PtrTypeFlag = INT;
					if((regadd % 2) == 0) Ptr = &(ptr2[regadd-4098+1]);	//big endian returned
					else Ptr = &(ptr2[regadd-4098-1]);
				}
				ProcessRegister(PtrTypeFlag,Ptr,NumReg);

			}
			if(settings.caltableconfigtype >= 151 & settings.caltableconfigtype < 154)	//return the accumulated value for each speed point
			{									 
				ptr2 = (unsigned int*)ReadAverageSpeedAcc(0,settings.caltableconfigtype-151);	//enter with channel zero, ptr with offset to correct channel
				PtrTypeFlag = INT;
				if((regadd % 2) == 0) Ptr = &(ptr2[regadd-4098+1]);	//big endian returned
				else Ptr = &(ptr2[regadd-4098-1]);
				ProcessRegister(PtrTypeFlag,Ptr,NumReg);

			}
		}
		else if(regadd >=CALNUMPOINTS && regadd < CALNUMPOINTSEND)	//numpoints returned this is a 150 long values for each speed point - used for debugging
		{
			//return the number of points seen for speed point (150 values as longs)
			ptr2 = (unsigned int*)ReadNumPoints(0);		//return ptr to first value in table
			PtrTypeFlag = INT;
			if((regadd % 2) == 0) Ptr = &(ptr2[regadd-4154+1]);	//big endian returned
			else Ptr = &(ptr2[regadd-4154-1]);
			ProcessRegister(PtrTypeFlag,Ptr,NumReg);
		}
		else if(regadd >= FUNCENBSTART && regadd < FUNCENBEND)
		{
			ptr2 = (unsigned int *)&function.enabled;
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				ptr2[regadd - FUNCENBSTART] = pcmodbus.Data[NumReg];
				EnableNoiseFilter(function.enabled.sensornoiseremoval);		//call this function as we made need to precondition the filter
			}
			else pcmodbus.Data[NumReg] = ptr2[regadd - FUNCENBSTART];
		}
		//AJB 19-Aug-10
		else if(regadd >= REFLEVELSTART  && regadd <= REFLEVELEND && modbusfunction == READREG) pcmodbus.Data[NumReg] = manref[regadd-REFLEVELSTART].reflevel_int;
		else if(regadd >= PRESENTSTATELEVELSTART  && regadd <= PRESENTSTATELEVELEND && modbusfunction == READREG) pcmodbus.Data[NumReg] = manref[regadd-PRESENTSTATELEVELSTART].presentstate_int;
		else if(regadd >= REFVALUESTART  && regadd <= REFVALUEEND && modbusfunction == READREG) pcmodbus.Data[NumReg] = manref[regadd-REFVALUESTART].refvalue_int;
		else if(regadd >= CYLINDERSUMSTART  && regadd <= CYLINDERSUMEND  && modbusfunction == READREG) pcmodbus.Data[NumReg] = manrefsum[regadd-CYLINDERSUMSTART].cylsum;
		else if(regadd >= MBNEIGHBOURSUMSTART  && regadd <= MBNEIGHBOURSUMEND  && modbusfunction == READREG) pcmodbus.Data[NumReg] = manrefsum[regadd-MBNEIGHBOURSUMSTART].mbnsum;
		else if(regadd == SINGLEALARMLOWER && modbusfunction == READREG) pcmodbus.Data[NumReg] = damalarms.single[0];
		else if(regadd == CYLALARM && modbusfunction == READREG) pcmodbus.Data[NumReg] = damalarms.cylinder;
		else if(regadd == MBNEIGHBOURALARM && modbusfunction == READREG) pcmodbus.Data[NumReg] = damalarms.mbneighbour;
		else if(regadd == DELTARPM && modbusfunction == READREG) pcmodbus.Data[NumReg] 		= dynalarmlevels.deltarpm_int;
		else if(regadd == RPMAV && modbusfunction == READREG) pcmodbus.Data[NumReg] 		= dynalarmlevels.rpmav_int;
		else if(regadd == RPMPREV && modbusfunction == READREG) pcmodbus.Data[NumReg] 		= dynalarmlevels.deltarpmprev_int;
		else if(regadd == SINGLE && modbusfunction == READREG) pcmodbus.Data[NumReg] 		= dynalarmlevels.single;
		else if(regadd == CYL && modbusfunction == READREG) pcmodbus.Data[NumReg] 			= dynalarmlevels.cyl;
		else if(regadd == MBSUM && modbusfunction == READREG) pcmodbus.Data[NumReg]			= dynalarmlevels.mbsum;
		else if(regadd == SINGLEPREV && modbusfunction == READREG) pcmodbus.Data[NumReg] 	= dynalarmlevels.singleprev;
		else if(regadd == CYLPREV && modbusfunction == READREG) pcmodbus.Data[NumReg]		= dynalarmlevels.cylprev;
		else if(regadd == MBSUMPREV && modbusfunction == READREG) pcmodbus.Data[NumReg]		= dynalarmlevels.mbsumprev;
		else if(regadd == SINGLE1 && modbusfunction == READREG) pcmodbus.Data[NumReg] 		= dynalarmlevels.single1_int;
		else if(regadd == CYL1 && modbusfunction == READREG) pcmodbus.Data[NumReg] 			= dynalarmlevels.cyl1_int;
		else if(regadd == MBSUM1 && modbusfunction == READREG) pcmodbus.Data[NumReg] 		= dynalarmlevels.mbsum1_int;
		else if(regadd == SINGLE2 && modbusfunction == READREG) pcmodbus.Data[NumReg] 		= dynalarmlevels.single2_int;
		else if(regadd == CYL2 && modbusfunction == READREG) pcmodbus.Data[NumReg] 			= dynalarmlevels.cyl2_int;
		else if(regadd == MBSUM2 && modbusfunction == READREG) pcmodbus.Data[NumReg] 		= dynalarmlevels.mbsum2_int;
		else if(regadd == HITS && modbusfunction == READREG) pcmodbus.Data[NumReg] 			= dynalarmlevels.hits;
		else if(regadd == SINGLEALARMUPPER && modbusfunction == READREG) pcmodbus.Data[NumReg] = damalarms.single[1];
		//AJB 19-Aug-10 EOM
		// PF Gen 2 - 01-Mar-12 Added in correct access to dynalarmlevels.hits via long
		else if(regadd >= 4782 && regadd <= 4783)
		{
			if(regadd == 4782)
			{
					templong = (unsigned long)dynalarmlevels.hits;
					templong = (templong >> 16);		//get upper
					pcmodbus.Data[NumReg] = (unsigned int)templong;
			}
			if(regadd == 4783)
			{
				pcmodbus.Data[NumReg] = (unsigned int)dynalarmlevels.hits;
			}
		}
		// PF Gen 2 - 01-Mar-12 EOM
		else if(regadd >= DIRECTORYSTR && regadd < FILETRANSFERBUFFEREND)		//file transferring - read and write from files on the sd card
		{
			ProcessFileTransferral(regadd, NumReg);
		}
		else if(regadd == 4638 && modbusfunction == READREG) pcmodbus.Data[NumReg] = (unsigned int)(loadlevel.fmAinput*1000);
		else if(regadd == 4639 && modbusfunction == READREG) pcmodbus.Data[NumReg] = (unsigned int)(loadlevel.fLoadPercent*100);
// AJB 15-Feb-10 Reprogramming mod
// if reprogramming is enabled use the registers for transferral of data 
		else if(regadd >= PROGRAMMINGKEYUPPER && regadd <= SLAVECHECKCODES)		//reprogramming transfer regs
		{
			ProcessReprogrammingTransferral(regadd,NumReg,pcmodbus.Func, &pcmodbus.Data[NumReg]);
		}
// AJB 15-Feb-10 EOM
		//todo remove test code!
		// PF Gen 2 - 04-Jan-12 removed test code
		/*
		else if(regadd == 65510)
		{
			if(pcmodbus.Func == WRITEREG || pcmodbus.Func == WRITEPRESET)	//write to location
			{
				MBNeighbourDamageMonSlowDown(0,pcmodbus.Data[NumReg],50);
			}
		}
		else if(regadd == 65511)
		{
			if(pcmodbus.Func == WRITEREG || pcmodbus.Func == WRITEPRESET)	//write to location
			{
				CylDamageMonSlowDown(0,pcmodbus.Data[NumReg],50);
			}
		}
		else if(regadd == 65512)
		{
			if(pcmodbus.Func == WRITEREG || pcmodbus.Func == WRITEPRESET)	//write to location
			{
				SensorDamageMonSlowDown(0,pcmodbus.Data[NumReg],50);
			}
		}

		else if(regadd == 65513)
		{
			if(pcmodbus.Func == WRITEREG || pcmodbus.Func == WRITEPRESET)	//write to location
			{
				damalarms.single[0] = 0;
				damalarms.single[1] = 0;
				damalarms.cylinder = 0;
				damalarms.mbneighbour = 0;
				LoadDamagemonDefaults();
			}
		}
		*/
		// PF Gen 2 - 04-Jan-12 EOM
		else if(regadd == 65514)
		{
			if(clocktime.date <= 0x31) 
			{
				clocktime.date++;
				if(clocktime.date == 0x0a) clocktime.date = 0x10;
				if(clocktime.date == 0x1a) clocktime.date = 0x20;
				if(clocktime.date == 0x2a)clocktime.date = 0x30;
			}
			else
			{
				clocktime.date = 1;
				if(clocktime.month < 0x12)
				{
					clocktime.month++;
					if(clocktime.month == 0x0a) clocktime.month = 0x10;
				}
				else
				{
					clocktime.month = 1;
					clocktime.year++;
					if(clocktime.year == 0x0a) clocktime.year = 0x10;
				}
			}
			WriteClockData();
		}
		else if(regadd == 65533)		//reset the unit using the watchdog
		{
			if(modbusfunction == WRITEPRESET)	//write to location
			{
				if(pcmodbus.Data[NumReg] == 0xAA55) SPUUnitReset();
			}
		}
		else if(regadd == SLAVE_FIRMWAREVERSION)	//2nd from last register used as firmware version from slave
		{
			if(modbusfunction == READREG) pcmodbus.Data[NumReg] = GetSlaveVersion();
		}
		else if(regadd == FIRMWAREVERSION)	//last register used as firmware version
		{
			if(modbusfunction == READREG) pcmodbus.Data[NumReg] = versionreg;
		}
		else	//if not already dealt with in any of the above reigsters check the params
		{
			okflag = PCModifyParameter(regadd, NumReg);
			if(okflag == FALSE) pcmodbus.Data[NumReg] = 0;		//set the register to zero if not assigned
		}

		regadd++;
		NumReg++;
	}
}



void ProcessRegister(PtrTypeEnum PtrTypeFlag, void * Ptr, unsigned int NumReg)
{
unsigned int * InPtr = NULL;
unsigned int * OutPtr = NULL;

	if(pcmodbus.Func == WRITEREG || pcmodbus.Func == WRITEPRESET)	//write to location
	{
		InPtr = &pcmodbus.Data[NumReg];
		OutPtr = Ptr;
	}
	else	//read from location
	{
		if(Ptr == NULL) pcmodbus.Data[NumReg] = 0;
		else
		{
			InPtr = (unsigned int*)Ptr;
			OutPtr = &pcmodbus.Data[NumReg];
		}
	}
	if(InPtr != NULL && OutPtr != NULL)
	{
		switch(PtrTypeFlag)
		{
			case STRING:
				if(pcmodbus.Func == WRITEREG || pcmodbus.Func == WRITEPRESET)	//write to location
				{
					*OutPtr = *InPtr >> 8;
					*(OutPtr+1) = *InPtr & 0xFF;
				}
				else
				{
					pcmodbus.Data[NumReg] = *(unsigned int*)Ptr << 8;
					pcmodbus.Data[NumReg] += (*(unsigned int*)Ptr & 0xFF);
				}

			break;
			default:
				//do nothing just store value
				//on 16bit dsp this is OK for bytes and integers
				//currently only strings are handled separately
				//remember you cannot point to chars!!!
				*OutPtr = *InPtr;
			break;
		}
	}
}



void ProcessEngineRunT(unsigned int regadd, unsigned int NumReg)
{
// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - static unsigned long runtimeprev;
unsigned long temp;
// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - unsigned long temp2;
// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - char eventstring[EVENTMSG_LEN_INBYTES_PART2];

	if(regadd == ENGINERUNTIME)
	{
		if(pcmodbus.Func == WRITEREG || pcmodbus.Func == WRITEPRESET)
		{
			// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - runtimeprev = engine.runtime;
			temp = pcmodbus.Data[NumReg];
			temp <<= 16;
			engine.runtime = temp;
		}
		else
		{
			temp = (unsigned long)engine.runtime;
			temp = (temp >> 16);						//get upper
			pcmodbus.Data[NumReg] = (unsigned int)temp;
		}
	}
	else if(regadd == ENGINERUNTIME+1)
	{
		if(pcmodbus.Func == WRITEREG || pcmodbus.Func == WRITEPRESET)
		{
			temp = pcmodbus.Data[NumReg];
			engine.runtime += (temp & 0xFFFF);
			WriteEngineStructtoNVMEM();			//AJB 21-Sep-10 added to store immediately, if the runtime is altered from the PC
			//AJB 30-Sep-10 Added runtime event change log the change
			// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
			// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - temp2 = runtimeprev/60;		//previous runtime (in hours)
			// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - temp = engine.runtime/60;	//get into hours
			// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - sprintf(eventstring,"RunT change %lu,%lu",temp2,temp);
			// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - LogEvent(PARAMETER_CHANGE,HIGH_PRIORITY,NO,eventstring);	// log event to sd card on change	
		}
		else pcmodbus.Data[NumReg] = (unsigned int)engine.runtime;
	}
}

//The file transferral process allows files to be read/written to on the sd card
void ProcessFileTransferral(unsigned int regadd, unsigned int NumReg)
{
unsigned long temp;

	if(regadd >= DIRECTORYSTR && regadd < GETFIRSTFILENAMESTRING)		//deal with the directory name - transfer to fileregs
	{
		if(pcmodbus.Func == WRITEREG || pcmodbus.Func == WRITEPRESET) fileregs.directorystr[regadd-DIRECTORYSTR] = pcmodbus.Data[NumReg];
		else pcmodbus.Data[NumReg] = fileregs.directorystr[regadd-DIRECTORYSTR];
	}
	else if(regadd == GETFIRSTFILENAMESTRING)			//get the name of first file
	{
		if(pcmodbus.Func == READREG) GetFirstFileNameString();	//populates the fileregs.filenamestr
	}
	else if(regadd == GETNEXTFILENAMESTRING)			//get the next file name in the folder
	{
		if(pcmodbus.Func == READREG) GetNextFileNameString();	//populates the fileregs.filenamestr
	}
	else if(regadd >= FILENAMESTR && regadd < GETFILENUMWORDS)		//deal with the file name - transfer to fileregs
	{
		if(pcmodbus.Func == WRITEREG || pcmodbus.Func == WRITEPRESET) fileregs.filenamestr[regadd-FILENAMESTR] = pcmodbus.Data[NumReg];
		else
		{
			pcmodbus.Data[NumReg] = fileregs.filenamestr[regadd-FILENAMESTR];
		}
	}
	else if(regadd == GETFILENUMWORDS)
	{
		if(pcmodbus.Func == READREG)
		{
			temp = (unsigned long)GetFileNumWords();				//put value into temp
			temp = (temp >> 16);					//get upper
			pcmodbus.Data[NumReg] = (unsigned int)temp;
		}
	}
	else if(regadd == GETFILENUMWORDS+1)
	{
		if(pcmodbus.Func == READREG) pcmodbus.Data[NumReg] = (unsigned int)fileregs.getnumwords;		//return the lower int of the numwords in file
	}
	else if(regadd == SETNUMWORDS)
	{
		if(pcmodbus.Func == WRITEREG || pcmodbus.Func == WRITEPRESET) fileregs.setnumwords = pcmodbus.Data[NumReg];	//number of words to read
		else pcmodbus.Data[NumReg] = fileregs.setnumwords;
	}
	else if(regadd == SETFILEOFFSET)
	{
		if(pcmodbus.Func == WRITEREG || pcmodbus.Func == WRITEPRESET)
		{
			temp = pcmodbus.Data[NumReg];
			temp <<= 16;
			fileregs.setoffset = temp;
		}
		else
		{
			temp = (unsigned long)fileregs.setoffset;	//offset in words
			temp = (temp >> 16);						//get upper
			pcmodbus.Data[NumReg] = (unsigned int)temp;
		}
	}
	else if(regadd == SETFILEOFFSET+1)
	{
		if(pcmodbus.Func == WRITEREG || pcmodbus.Func == WRITEPRESET)
		{
			temp = pcmodbus.Data[NumReg];
			fileregs.setoffset += (temp & 0xFFFF);
		}
		else pcmodbus.Data[NumReg] = (unsigned int)fileregs.setoffset;
	}
	else if(regadd == READWRITEFLAG)
	{
		if(pcmodbus.Func == WRITEREG || pcmodbus.Func == WRITEPRESET) fileregs.readwriteflag = pcmodbus.Data[NumReg];	//set the flag (data will be copied from the sd to buffer or vice versa in main loop call)
		else pcmodbus.Data[NumReg] = fileregs.readwriteflag;
	}
	else if(regadd == READWRITEPROGRESS) pcmodbus.Data[NumReg] = fileregs.readwriteprogress;
	else if(regadd >= FILETRANSFERBUFFERSTART && regadd < FILETRANSFERBUFFEREND)	//
	{
		if(pcmodbus.Func == WRITEREG || pcmodbus.Func == WRITEPRESET) transferbuffer[regadd-FILETRANSFERBUFFERSTART] = pcmodbus.Data[NumReg];	//commit the byte to the buffer
		else pcmodbus.Data[NumReg] = transferbuffer[regadd-FILETRANSFERBUFFERSTART];
	}

}

