//Alarms - Sensor failure
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "pccli.h"
#include "sci.h"
#include "define.h"
#include "adc.h"
#include "logging.h"
#include "globals.h"
#include "man.h"
#include "alarms.h"
#include "wioprim.h"
#include "slave485.h"
#include "pcmodbus.h"
#include "wio.h"
// PF 23-Nov-09 include digout.h in alarms.c
#include "digout.h"

status3struct status3[MAX_NUM_CHANNELS]; //status relating to no pulse or less than 3mA or > 19mA
int noisefilterLOAD[MAX_NUM_CHANNELS];
int damagemonignore[MAX_NUM_CHANNELS];	//AJB 19-Aug-10 for damage monitoring filtering ignore

void SensorFailure(unsigned int chan);
void SPUComms(void);
void FramFailure(void);

// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - int NextAlarmEventFinder(unsigned int searchindex);

alarmsstruct alarms;

unsigned int bitalarmlist[33]; // PF Gen 2 - 16-Jan-12 Added in bit alarm list
//void debugBitAlarmList(void); // PF Gen 2 - 16-Jan-12 DEBUG

unsigned int biteventlist[16][3]; // PF Gen 2 - 06-Mar-12 eventlist
unsigned int biteventpos; // PF Gen 2 - 06-Mar-12 eventlist

bearingstatusstruct bearingstatus; // PF Gen 2 - 26-Mar-12
int CheckDMSingleBitSet(unsigned int index); // PF Gen 2 - 26-Mar-12 function to check damage single monitoring bits

void InitSystemAlarms(void)
{
int chan;
	//init the event log entry code on reset or power up

	eventlogentry.newalarmeventflag	= 0;			//set when there are new alarms waiting
	eventlogentry.eventcodestatus 	= 0;  			//current status bits
	eventlogentry.eventcode 		= 0;  			//current eventcode
	eventlogentry.currentindex 		= 0;  			//index for current eventcode
	eventlogentry.txalarmevents		= 0;  			//number of alarm events transmitted to the pc - incremented on ever new transmission

	// PF 13-Oct-09 Changed to initialise the value of noisefilterLOAD[chan] to 3 instead of 0 to bypass noise filter on power up
	for(chan=0;chan<MAX_NUM_CHANNELS;chan++)
	{
		noisefilterLOAD[chan] = 3;
	}

	// PF Gen 2 - 26-Mar-12 Added in loop to clear bearingstatus
	for(chan=0;chan<16;chan++) {
		bearingstatus.MainBearings [chan]=0;
	}
	// PF Gen 2 - 26-Mar-12 EOM
}

void ClearStatusFlagsforSlave(void)
{
unsigned int i;
unsigned int *ptr;

	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		ptr = (unsigned int *)Status3Flags(i);
		*ptr = 0;
	}
	ptr = (unsigned int *)GetAlarmFlags();
	*ptr = 0;
}

//Return the alarms flags relating to system alarms
//Return this as a ptr to the alarm field
alarmsstruct * GetAlarmFlags(void)
{
	return(&alarms);
}


//Return a pointer to the status 3 settings
//This can be used to access the analogue input related flags
status3struct * Status3Flags(unsigned int chan)
{
	return(&status3[chan]);
}

//clear the no pulse detected flag on a good pulse.
//set to 1 for no pulse seen
//For the analgoue inputs this is part of the adc.c source
void SetNoPulseFlag(unsigned int chan,unsigned int flag)
{
	if(flag == 1)
	{
		status3[chan].nopulse = 1;				// set bit
		SetRPMChan(chan,0);	
	}
	else status3[chan].nopulse = 0;						//clear to zero for no error
}

//Set the no pulse detected flag.  This will be called from adc.c for the analogue inputs
unsigned int GetNoPulseFlag(unsigned int chan)
{
	return(status3[chan].nopulse);
}

//System checks are related to the SPU
//Alarms relating to failure flags e.g. OOR on a sensor input
//No pulse detected etc
void SystemChecks(void)
{
unsigned int i;

	if(settings.anadebug.enb == FALSE)		//check if the debug mode is enabled
	{
		AnalogOOR();		//analogue out of range for 14 channels on the current system
							//the OOR will also be run on the slave spu and the values can be found in the sensor structure
	}
	//only carry out these system check s if we are a master unit.  If slave these will be sorted at the master end
	if(settings.mastermode == TRUE)
	{
		for(i=0;i<MAX_NUM_CHANNELS;i++)
		{
			SensorFailure(i);		//check if there is a sensor failure
		}
		SPUComms();
		FramFailure();
	}
}

void FramFailure(void)
{
// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - char eventstring[EVENTMSG_LEN_INBYTES_PART2];

	if(alarms.framfailure == TRUE && alarms.framfailurelatched == FALSE)
	{
		// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
		alarms.framfailurelatched = TRUE;
		//set the alarm event before logging the event as logging increments the eventid
		SetAlarmEvent(FRAMFAIL);
		// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(FRAM_FAULT1,HIGH_PRIORITY,YES,eventstring);	//no extra string for the loss of comms message
		WriteNVMemory(FRAM1,ALARMSLATCHED_DATA_OFFSET,&alarms,1);
	}
	else if(alarms.framfailure == FALSE && (CheckAlarmBitSet(FRAMFAIL) == 1 || alarms.framfailurelatched == TRUE))	// PF Gen 2 - 17-May-12 Checked alarm bits in addition
	{
		ClearAlarmEvent(FRAMFAIL);		//clear the in alarm bit for the fault
		// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
	 	// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"FRAM Comms Restored");
		// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(FRAM_FAULT1,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
		alarms.framfailure = FALSE;			//clear the failure flag
		alarms.framfailurelatched = FALSE;
		WriteNVMemory(FRAM1,ALARMSLATCHED_DATA_OFFSET,&alarms,1);
	}
}

//Comms between pc and SPU and between SPU and slave
void SPUComms(void)
{
 // PF Gen 2 - 07-Mar-12 Old alarm system backend removal - char eventstring[EVENTMSG_LEN_INBYTES_PART2];

	 // PF Gen 2 - 07-Mar-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);

	if(slave485mb.slavelost == TRUE)
	{
		alarms.slavefailure = TRUE;
		if(alarms.slavefailurelatched == 0)	//latch only once
		{
			alarms.slavefailurelatched = TRUE; // PF Gen 2 - 25-Jan-12 Changed to true for consistency
			//set the alarm event before logging the event as logging increments the eventid
			SetAlarmEvent(SPU2COMMS);
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(LOSS_OF_COMMS_SPU2,HIGH_PRIORITY,YES,eventstring);	//no extra string for the loss of comms message
			WriteNVMemory(FRAM1,ALARMSLATCHED_DATA_OFFSET,&alarms,1);
		}
	}
	else
	{

		if(CheckAlarmBitSet(SPU2COMMS) == 1 || alarms.slavefailurelatched == TRUE)		// PF Gen 2 - 17-May-12 Checked alarm bits in addition
		{
		 	// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Comms Restored to SPU2");
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(LOSS_OF_COMMS_SPU2,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
			ClearAlarmEvent(SPU2COMMS);		//clear the in alarm bit for the fault
			alarms.slavefailure = FALSE;			//clear the failure flag for comms
			alarms.slavefailurelatched = FALSE;
			WriteNVMemory(FRAM1,ALARMSLATCHED_DATA_OFFSET,&alarms,1);
		}
	}

	// PF 20-Oct-09 zero eventstring to avoid corruption
	// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);

	if(ReadPCCommsFlag() == TRUE)
	{
		alarms.pccommsfailure = TRUE;
		if(alarms.pccommsfailurelatched == 0)	//latch only once
		{
			alarms.pccommsfailurelatched = 1;
			 // PF Gen 2 - 07-Mar-12 Old alarm system backend removal - LogEvent(PCCOMMSFAILURE,HIGH_PRIORITY,NO,eventstring);
			WriteNVMemory(FRAM1,ALARMSLATCHED_DATA_OFFSET,&alarms,1);
			// PF 23-Nov-09 Clear the digital output test mode on PC comms failure
			digout.outputtestmode = 0;
		}
	}
	else
	{
		if(alarms.pccommsfailurelatched == TRUE)
		{
			// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - sprintf(eventstring,"RTN");
			// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - LogEvent(PCCOMMSFAILURE,HIGH_PRIORITY,NO,eventstring);
			// PF 20-Oct-09 Changed SPUComms() on Pc comms failure to update alarms.pccommsfailurelatched and then update NVMemory
			alarms.pccommsfailurelatched = FALSE;
			WriteNVMemory(FRAM1,ALARMSLATCHED_DATA_OFFSET,&alarms,1);
		}
		alarms.pccommsfailure = FALSE;			//clear the failure flag for comms
	}
}

//Set the failure bit and latch the alarm if in failure mode
void SensorFailure(unsigned int chan)
{
sensoralarmstruct *ptr;
// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - char eventstring[EVENTMSG_LEN_INBYTES_PART2];
char chanstr[4];
int framlatchedupdate;

	framlatchedupdate = FALSE;

	ptr = GetStatus2Flags(chan);
	if(GetSensorAlarmMask(chan) == 0 && timers.startup == 0)	//is channel enabled and not masked
	{
		InputNumtoString(chanstr,chan);
		//check for no pulse, low mA or high mA
		if(status3[chan].rpmoor == 1 && sensor[chan].status1.enabled == TRUE)
		{
			ptr->failure = 1;
			if(status3[chan].rpmoorlatched == 0)	//latch only once
			{
				status3[chan].rpmoorlatched = TRUE; // PF Gen 2 - 25-Jan-12 Changed to true for consistency
				//set the alarm event before logging the event as logging increments the eventid
				SetAlarmEvent(RPMOOR+chan);
				ptr->failurelatched = TRUE; // PF Gen 2 - 25-Jan-12 Changed to true for consistency
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Unstable Ch%s",chanstr);
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(SENSOR_FAILURE,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event
				framlatchedupdate = TRUE;
			}
		}
		else
		{
			if(CheckAlarmBitSet(RPMOOR+chan) == 1 || status3[chan].rpmoorlatched == TRUE)	// PF Gen 2 - 17-May-12 Checked alarm bits in addition
			{
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Unstable,Ch%s RTN",chanstr);
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(SENSOR_FAILURE,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
				ClearAlarmEvent(RPMOOR+chan);		//clear the in alarm bit for the fault
				// PF 11-Nov-09 Added clear of condition so on sensor disable alarm output works correctly
				status3[chan].rpmoor = 0;
				status3[chan].rpmoorlatched 	= 0;
				noisefilterLOAD[chan] = 3;	//set counter for RTN used in noise filter
				damagemonignore[chan] = 3;	//AJB 19-Aug-10 after returning set to 3 to ignore filtering
				framlatchedupdate = TRUE;
			}
		}
		if(status3[chan].nopulse == 1 && sensor[chan].status1.enabled == TRUE)
		{
			
			ptr->failure = 1;
			if(status3[chan].nopulselatched == 0)	//latch only once
			{
				status3[chan].nopulselatched = TRUE; // PF Gen 2 - 25-Jan-12 Changed to true for consistency
				ptr->failurelatched = TRUE; // PF Gen 2 - 25-Jan-12 Changed to true for consistency
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
				//set the alarm event before logging the event as logging increments the eventid
				SetAlarmEvent(NOSENSPULSE+chan);
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"No pulse on Ch%s",chanstr);
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(SENSOR_FAILURE,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event
				framlatchedupdate = TRUE;
			}
		}
		else
		{
			if(CheckAlarmBitSet(NOSENSPULSE+chan) == 1 || status3[chan].nopulselatched == TRUE) //&& sensor[chan].rpm != 0)	//check the channels rpm is not zero in order to reset		// PF Gen 2 - 17-May-12 Checked alarm bits in addition
			{																	//this is necessary to clear if set from comms failure to spu2
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"No pulse,Ch%s RTN",chanstr);
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(SENSOR_FAILURE,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
				ClearAlarmEvent(NOSENSPULSE+chan);		//clear the in alarm bit for the fault
				// PF 11-Nov-09 Added clear of condition so on sensor disable alarm output works correctly
				status3[chan].nopulse = 0;
				status3[chan].nopulselatched 	= 0;
				noisefilterLOAD[chan] = 3;	//set value for counter used in noise filter
				damagemonignore[chan] = 3;	//AJB 19-Aug-10 ignore filter initially
				framlatchedupdate = TRUE;
			}
		}
		if(status3[chan].low == 1 && status3[chan].rpmoorlatched == 0 && sensor[chan].status1.enabled == TRUE)	//if rpm oor latched do not check for low level
		{																//low may be detected if it is an intermmitent connection and this will be flagged as rpmoor
			ptr->failure = 1;
			if(status3[chan].lowlatched == 0)	//latch only once
			{
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
				status3[chan].lowlatched = TRUE; // PF Gen 2 - 25-Jan-12 Changed to true for consistency
				//set the alarm event before logging the event as logging increments the eventid
				SetAlarmEvent(LOWPULSE+chan);
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Low, Ch%s",chanstr);
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(SENSOR_FAILURE,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event
				ptr->failurelatched = TRUE; // PF Gen 2 - 25-Jan-12 Changed to true for consistency
				//clear no pulse if now low
				ClearAlarmEvent(NOSENSPULSE+chan);		//clear the in alarm bit for the fault
				//clear unstable if low level now seen
				ClearAlarmEvent(RPMOOR+chan);				//clear the in alarm bit for the fault
				framlatchedupdate = TRUE;
			}
		}
		else
		{
			// PF 17-Nov-09 remove status3[chan].low == 0 &&  from low clear
			if(CheckAlarmBitSet(LOWPULSE+chan) == 1 || status3[chan].lowlatched == TRUE)	// PF Gen 2 - 17-May-12 Checked alarm bits in addition
			{
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Low, Ch%s RTN",chanstr);
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(SENSOR_FAILURE,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
				ClearAlarmEvent(LOWPULSE+chan);		//clear the in alarm bit for the fault
				// PF 11-Nov-09 Added clear of condition so on sensor disable alarm output works correctly
				status3[chan].low = 0;
				status3[chan].lowlatched 	= 0;
				status3[chan].nopulse = 0;		//clear the no pulse flag, when low is cleared (in case set)
				noisefilterLOAD[chan] = 3;	//set for counter used in noise filter
				damagemonignore[chan] = 3;	//AJB 19-Aug-10 ignore filter for 3 iterations

				framlatchedupdate = TRUE;
			}
		}
		if(status3[chan].high == 1 && status3[chan].rpmoorlatched == 0 && sensor[chan].status1.enabled == TRUE)
		{
			ptr->failure = 1;
			if(status3[chan].highlatched == 0)	//latch only once
			{
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
				status3[chan].highlatched = TRUE; // PF Gen 2 - 25-Jan-12 Changed to true for consistency
				//set the alarm event before logging the event as logging increments the eventid
				SetAlarmEvent(HIPULSE+chan);
				ptr->failurelatched = TRUE; // PF Gen 2 - 25-Jan-12 Changed to true for consistency
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"High, Ch%s",chanstr);
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(SENSOR_FAILURE,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event
				//clear no pulse if now high
				ClearAlarmEvent(NOSENSPULSE+chan);		//clear the in alarm bit for the fault
				//clear unstable if high level now seen
				ClearAlarmEvent(RPMOOR+chan);				//clear the in alarm bit for the fault
				framlatchedupdate = TRUE;
			}
		}
		else
		{
			// PF 17-Nov-09 remove status3[chan].high == 0 && from high clear
			if(CheckAlarmBitSet(HIPULSE+chan) == 1 || status3[chan].highlatched == TRUE)	// PF Gen 2 - 17-May-12 Checked alarm bits in addition
			{
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"High, Ch%s RTN",chanstr);
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(SENSOR_FAILURE,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
				ClearAlarmEvent(HIPULSE+chan);		//clear the in alarm bit for the fault
				// PF 11-Nov-09 Added clear of condition so on sensor disable alarm output works correctly
				status3[chan].high = 0;
				status3[chan].highlatched 	= 0;
				noisefilterLOAD[chan] = 3;	//set coutner used in noise filter
				damagemonignore[chan] = 3;	//AJB 19-Aug-10 ignore filter for 3 iterations
				framlatchedupdate = TRUE;
			}
		}

		if(status3[chan].high == 0 && status3[chan].low == 0 && status3[chan].nopulse == 0 && status3[chan].rpmoor == 0)
		{
			if(ptr->failurelatched == TRUE)
			{
				ptr->failure 					= 0;
				ptr->failurelatched 			= 0;
				framlatchedupdate = TRUE;
			}
		}
		if(framlatchedupdate == TRUE)	//fram update required for both status 2 and status3
		{
			//update to bits for no pulse etc
			WriteNVMemory(FRAM1,STATUS3_ALARMSLATCHED_DATA_OFFSET+(chan*2),&status3[chan],1);
			//update to failure status etc
			WriteNVMemory(FRAM1,SENSORSTATUS2_ALARMSLATCHED_DATA_OFFSET+(chan*2),ptr,1);
		}
	}
}


//Clear the eventcode list to zero for all
//This will clear down the fram area - called on first initialisation
void ClearEventCodeListArea(void)
{
unsigned int i;
unsigned int *ptr;

	DebugStringOut("Code - ClearEventCodeListArea\r\n"); // PF DEBUG

// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - 
/*
	for(i=0;i<ALARMEVENTCODE_SIZE_INBYTES/4;i++)
	{
		WriteEventCodeNVMEM(i,0,0);	//clear down the entire section for the event code log
	}
*/
	// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - EOM

	eventlogentry.newalarmeventflag = TRUE;		//set true after clearing the event list
	eventlogentry.eventcodestatus = 0xFFFF;		//set all to ff
	eventlogentry.eventcode = 0;			
	eventlogentry.currentindex = 0;		
	eventlogentry.txalarmevents = 0;		

	// PF Gen 2 - 01-Feb-12 clear fram area for bits
	for (i=0;i<32;i++) {
		bitalarmlist[i] = 0;
	}
	WriteAlarmListtoNVMEM();
	// PF Gen 2 - 01-Feb-12 EOM

	//clear all structures for alarm/slow down bits
	//if the alarm still exists the alarm will be raised again
	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		ptr = (unsigned int*)&sensor[i].status2;
		*ptr = 0;	//clear the status
		WriteNVMemory(FRAM1,SENSORSTATUS2_ALARMSLATCHED_DATA_OFFSET+(i*2),&sensor[i].status2,1);
		ptr = (unsigned int*)&status3[i];
		*ptr = 0;
		WriteNVMemory(FRAM1,STATUS3_ALARMSLATCHED_DATA_OFFSET+(i*2),&status3[i],1);
	}
	for(i=0;i<MAX_NUM_CHANNELS/2;i++)
	{
		ptr = (unsigned int*)&cylinders[i].status2;
		*ptr = 0;	//clear the status 
		WriteNVMemory(FRAM1,CYLINDERSTATUS2_ALARMSLATCHED_DATA_OFFSET+(i*2),&cylinders[i].status2,1);
	}
	ptr = (unsigned int*)&alarms;
	*ptr = 0;	//clear the status 
	WriteNVMemory(FRAM1,ALARMSLATCHED_DATA_OFFSET,&alarms,1);
	ptr = (unsigned int*)&waterinoil.wioalarms;
	*ptr = 0;	//clear the status 
	WriteNVMemory(FRAM1,WIOALARMSTRUCT_OFFSET,(unsigned int*)&waterinoil.wioalarms,1);
}

// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - 
/*
//To address a particular set of 28 registers the offset address for the FRAM is as follows:
//Address = (alarmcodeenum+n)*4
//e.g. for cylinder 5 == (CYLINDERDEV+4)*4  (*4 as stored as longs (4 bytes)) this will give the offset into fram
//code val should = alarmcodeenum+n
void WriteEventCodeNVMEM(unsigned int codepos, unsigned int id, unsigned int status)
{
unsigned int position;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	position = codepos * (SIZEOF_EVENTCODEVAL_IN_BYTES);
	position += ALARMEVENTCODE_OFFSET;
	//FRAM - do not need to check the status of the fram as it writes in real time and is never seen as busy
	WriteNVMemory(FRAM2,position,(unsigned int*)&status,1);		//write the status (integer)
	//position +2 as writing as an int
	WriteNVMemory(FRAM2,position+2,(unsigned int*)&id,1);		//write the id (integer)
}
*/
// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - EOM

// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - 
/*
//Pass in the position and the destination address.  The destination shold be for the id and the status words
void ReadEventCodeNVMEM(unsigned int codepos, unsigned int *dest)
{
unsigned int position;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	position = codepos * (SIZEOF_EVENTCODEVAL_IN_BYTES);
	position += ALARMEVENTCODE_OFFSET;
	//FRAM - do not need to check the status of the fram as it writes in real time and is never seen as busy
	ReadNVMemory(FRAM2,position,dest,2);		//read the status (integer),read the id (integer)
}
*/
// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - EOM

//Setup and read the first event code in the list
//This will search for the first event and return a pointer to the eventid and status bits
//This bits will also be set within the 
unsigned int * ReadFirstEventCode(void)
{
unsigned int firsteventfound;	//flag

	eventlogentry.txalarmevents = 0;	//reset to zero on new searching for first event in list

	// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - 
	// firsteventfound = NextAlarmEventFinder(0);
	firsteventfound = FALSE;
	// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - EOM

	if(firsteventfound == FALSE)	//check for the first event in the list
									//did not find an alarm event set index to zero and set the value to 0XFFFF and 0
	{
		eventlogentry.eventcodestatus = 0xFFFF;	//set to ffff
		eventlogentry.eventcode = 0;
		return(&eventlogentry.eventcodestatus);	//return address to status int
	}

	return(0);
}

//on receiving the correct id back from the pc update to point to the next eventid and status bits in the list
//Pass in the event id and check this against the last id sent from the eventlogentry structure
void AlarmEventIDInc(unsigned int eventidin)
{
	// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - 
		eventlogentry.eventcodestatus = 0xFFFF;	//set to ffff
		eventlogentry.eventcode = 0;
/*

unsigned int i;
unsigned int nexteventfound;	//flag

	if(eventidin == eventlogentry.eventcode)	//matching event ids from pc and last sent
	{
		i = eventlogentry.currentindex + 1;	//increment by one for next check
		nexteventfound = NextAlarmEventFinder(i);
		if(nexteventfound == FALSE)
		{
			eventlogentry.eventcodestatus = 0xFFFF;	//set to ffff
			eventlogentry.eventcode = eventlogentry.txalarmevents;	//set to the number of event transmitted
		}
	}
*/
	// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - EOM

}

// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - 
/*
//search for the next event or first event in the list
//Pass in the index to being on (e.g. zero for first find)
int NextAlarmEventFinder(unsigned int searchindex)
{
unsigned int i;
unsigned int nexteventfound;	//flag
unsigned int result[2];			//data back from the FRAM

	nexteventfound = FALSE;
	i = searchindex;
	while(i < NUM_ALARMEVENTS && nexteventfound == FALSE)
	{
		ReadEventCodeNVMEM(i,(unsigned int*)result);
		if(result[0] != 0 || result[1] != 0)	//check the status and eventid
		{
			nexteventfound = TRUE;
			break;	//found the next event in the list
		}
		i++;
		settings.watchdog = 1;	//kick the dog in the timer interrupt
	}
	if(nexteventfound == TRUE)		//check for the next event in the list
	{
		eventlogentry.currentindex = i;
		eventlogentry.eventcodestatus = result[0];
		eventlogentry.eventcode = result[1];
		sprintf(stringbuffer,"%u %u %u\r\n",eventlogentry.currentindex,eventlogentry.eventcodestatus,eventlogentry.eventcode); DebugStringOut(stringbuffer);
		return(TRUE);	//event found
	}
	else	//did not find an alarm event set index to zero and set the value to 0XFFFF and 0
	{
		eventlogentry.eventcodestatus = 0xFFFF;	//set to ffff
		eventlogentry.eventcode = 0;
		sprintf(stringbuffer,"%u %u %u\r\n",eventlogentry.currentindex,eventlogentry.eventcodestatus,eventlogentry.eventcode); DebugStringOut(stringbuffer);
		return(FALSE);	//not found
	}
}
*/
// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - EOM

// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - 
/*
//Search the list and set a status bit for the eventid
//This will search the entire list for the eventid starting from 0 ending NUM_ALARMEVENTS
//pass in the eventid the mask for the bit and the bit status on or off
void SetStatusforAlarmEvent(unsigned int eventid,unsigned int alarmmask, unsigned int onoff)
{
unsigned int i;
unsigned int eventfound;	//flag
unsigned int result[2];		//data back from the FRAM
unsigned int status;

	eventfound = FALSE;
	i = 0;
	while(i < NUM_ALARMEVENTS && eventfound == FALSE)
	{
		ReadEventCodeNVMEM(i,result);
		if(result[1] == eventid)	//check the eventid
		{
			eventfound = TRUE;
			status = result[0];
			if(onoff == TRUE) status |= alarmmask;	//set the bit
			else status &= ~alarmmask;				//clear the bit (inverse of mask)
			WriteEventCodeNVMEM(i,eventid,status);
			eventlogentry.newalarmeventflag = TRUE;
			break;	//found the next event in the list and acked it
		}
		i++;
		settings.watchdog = 1;	//kick the dog in the timer interrupt
	}
}
*/

//Set the eventid into the alarm event list, pass in the index for the event
//Also set the flag to say a new event has occurred
void SetAlarmEvent(unsigned int index) // PF Gen 2 - 08-Mar-12 Remove unsigned int eventid // PF Gen 2 - 17-May-12 removed unsigned int status
{
	unsigned int word;
	unsigned int bit;

	word = index / 16;
	bit = index % 16;

	if (word < 33) { 
		sprintf(stringbuffer,"SetAlarmEvent:%u %u %u\r\n",word,bit,index); DebugStringOut(stringbuffer);	// DEBUG
		bitalarmlist[word] = BitSet(bitalarmlist[word],bit);
		WriteAlarmListtoNVMEM();
	}

	// PF Gen 2 - 16-Jan-12 EOM

}

//clear the alrm event on the index
//This should be called after the event has returned to normal
//An ack check will make sure this event can be knocked down
//clear down set to true to clear the alarm completely, regardless of the ACK state
void ClearAlarmEvent(unsigned int index) // PF Gen 2 - 17-May-12 removed cleardown
{
// PF Gen 2 - 26-Jan-12 Old alarm system backend removal - 	unsigned int result[2];			//data back from the FRAM

	unsigned int word;
	unsigned int bit;

	word = index / 16;
	bit = index % 16;

	if (word < 33) { 

		sprintf(stringbuffer,"ClearAlarmEvent:%u %u %u\r\n",word,bit,index); DebugStringOut(stringbuffer);	// DEBUG
		bitalarmlist[word] = BitClear(bitalarmlist[word],bit);
		WriteAlarmListtoNVMEM();
	}
	
	// PF Gen 2 - 16-Jan-12 EOM

}

// PF Gen 2 - 26-Jan-12 Old alarm system backend removal - 
/*
//Clear the bit relating the the sensor being in alarm
void ClearAlarmEventBit(unsigned int index)
{
unsigned int result[2];			//data back from the FRAM

		ReadEventCodeNVMEM(index,result);
		//sprintf(stringbuffer,"clearbit index: %u result %u %u\r\n",index,result[0],result[1]);
		//DebugStringOut(stringbuffer);
		result[0] &= ~ALARM_ACTIVE_MASK;
		WriteEventCodeNVMEM(index,result[1],result[0]);
		eventlogentry.newalarmeventflag = TRUE;			//set flag as a bit has been cleared
}
*/
// PF Gen 2 - 26-Jan-12 Old alarm system backend removal - EOM


// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - 
/*
//Search the list and clear the eventid and status bits (only if the event has been acked)
//This will search the entire list for the eventid starting from 0 ending NUM_ALARMEVENTS
//pass in the eventid, the ack bit will be checked first
void ClearAlarmEventonID(unsigned int eventid)
{
unsigned int i;
unsigned int eventfound;		//flag
unsigned int result[2];			//data back from the FRAM

	eventfound = FALSE;
	i = 0;
	while(i < NUM_ALARMEVENTS && eventfound == FALSE)
	{
		ReadEventCodeNVMEM(i,result);
		if(result[1] == eventid)	//check the eventid
		{
			eventfound = TRUE;
			if((result[0] & ALARM_ACK_MASK) != 0 && (result[0] & ALARM_ACTIVE_MASK) == 0)		//check the ack has been set
			{
				WriteEventCodeNVMEM(i,0,0);				//clear down the eventid and status bits
				break;	//found the next event in the list and acked it
			}
			eventlogentry.newalarmeventflag = TRUE;
		}
		i++;
		settings.watchdog = 1;	//kick the dog in the timer interrupt
	}

}
*/
// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - EOM

/*
// PF Gen 2 - 16-Jan-12
void debugBitAlarmList(void) {

unsigned int z;
unsigned int i;
unsigned int alarmword;

	CLITransmitBuffer("Alarms:\r\n");

	for (i = 0;i<32;i++) {

		alarmword = bitalarmlist[i];

		sprintf(stringbuffer,"%u %.4x: ",i,alarmword);
		for (z = 32768; z > 0; z >>= 1)
		{
			strcat(stringbuffer, ((alarmword & z) == z) ? "1" : "0");
		}
		strcat(stringbuffer,"\r\n");
		CLITransmitBuffer(stringbuffer);

	}

	CLITransmitBuffer("Events:\r\n");

	for (i = 0;i<16;i++) {

		alarmword = BitEventCompiled(i);

		sprintf(stringbuffer,"%u %.4x: ",i,alarmword);
		for (z = 32768; z > 0; z >>= 1)
		{
			strcat(stringbuffer, ((alarmword & z) == z) ? "1" : "0");
		}
		strcat(stringbuffer,"\r\n");
		CLITransmitBuffer(stringbuffer);

	}
	
}
*/
// PF Gen 2 - 16-Jan-12 EOM

// PF Gen 2 - 06-Mar-12 Added in function to change position of bit event store
// This routine every 10 seconds changes where the bit events are stored so to stretch out the bits by 20 seconds
void bitEventIncrement(void) {

	unsigned int i;

	if (timers.biteventchange == 0) { // When the time expires move on to next storage and clear the new area

		timers.biteventchange = BITEVENCHANGE;
		biteventpos++;

		if (biteventpos == 3) biteventpos=0;

		for (i=0;i<16;i++) {
			biteventlist[i][biteventpos]=0;
		}

	}

}

void SetBitEvent(unsigned int index)
{
	unsigned int word;
	unsigned int bit;

	word = index / 16;
	bit = index % 16;

	sprintf(stringbuffer,"SetBitEvent:%u %u %u\r\n",word,bit,index); DebugStringOut(stringbuffer);	// DEBUG

	if (word < 16) {
		biteventlist[word][biteventpos] = BitSet(biteventlist[word][biteventpos],bit);
	}

}

void ClearBitEvent(unsigned int index)
{
	unsigned int word;
	unsigned int bit;

	word = index / 16;
	bit = index % 16;

	sprintf(stringbuffer,"ClearBitEvent:%u %u %u\r\n",word,bit,index); DebugStringOut(stringbuffer);	// DEBUG

	if (word < 16) {
		biteventlist[word][biteventpos] = BitClear(biteventlist[word][biteventpos],bit);
	}
	
}

// This routine ORs the 3 bit event lists so stretching bit events
unsigned int BitEventCompiled(unsigned int index) {

	if (index < 16) {
		return(biteventlist[index][0] | biteventlist[index][1] | biteventlist[index][2]);
	}
	return(0);

}

// PF Gen 2 - 06-Mar-12 EOM

// PF Gen 2 - 27-Mar-12 Function to create bearing status
void BearingStatus(void) {
int cyl,chan,mbn;
int numMainBearings,mainBearing;

/*
Bit
0	Green	Normal							(0x000)
1	Yellow	Alarm							(0x001)
2	Red	Slowdown							(0x002)
3	Blue	Disabled						(0x004)
4	Magenta	Sensor adjustment				(0x008)
5		Pre-warning							(0x010)
6	Blue	Sensor failure					(0x020)
7	Blue	Sensor failure – no pulse		(0x040)
8	Blue	Sensor failure – low level		(0x080)
9	Blue	Sensor failure – high level		(0x100)
10	Blue	Sensor failure – rpm OOR		(0x200)
*/

// Only 0,1,2 states are used at the moment

// Crosshead & crankpin
	for (cyl=0;cyl<=13;cyl++) {

		chan = cyl * 2;

		bearingstatus.CrossHeadBearings[cyl] = 0;

		// Failure
		if (sensor[chan].status2.failure && sensor[chan + 1].status2.failure) {
			bearingstatus.CrossHeadBearings[cyl] = 0x020;
		}

		// Alarm
		if (sensor[chan].status2.alarm || sensor[chan + 1].status2.alarm ||
			sensor[chan].status2.devalarm || sensor[chan + 1].status2.devalarm ||
			cylinders[cyl].status2.alarm) {

			bearingstatus.CrossHeadBearings[cyl] = 0x001;
		}

		// Slowdown
		if (sensor[chan].status2.slowdown || sensor[chan + 1].status2.slowdown ||
			sensor[chan].status2.devslow || sensor[chan + 1].status2.devslow ||
			CheckDMSingleBitSet(chan) || CheckDMSingleBitSet(chan + 1) ||
			CheckBitSet(damalarms.cylinder,cyl)
			) {
			bearingstatus.CrossHeadBearings[cyl] = 0x002;
		}

		// Disabled
		if (sensor[chan].status1.enabled != TRUE && sensor[chan + 1].status1.enabled != TRUE) {
			bearingstatus.CrossHeadBearings[cyl] = 0x004;
		}

		// Crankpin same as crosshead
		bearingstatus.CrankPinBearings[cyl] =  bearingstatus.CrossHeadBearings[cyl];

	}

	// Calculate the number of main bearings and add one if there is a crankcase split
	numMainBearings = allsensors.numsensors /2;
	if (damagemon.ccsplit != 0) numMainBearings++;

	chan = 0;
	mbn = 0;

	// Main bearing status
	for (mainBearing=0;mainBearing <= numMainBearings;mainBearing++) {

		bearingstatus.MainBearings[mainBearing] = 0;

		if (mainBearing == 0 || mainBearing == numMainBearings || (damagemon.ccsplit != 0 && (mainBearing == damagemon.ccsplit || mainBearing == damagemon.ccsplit + 1))) {

			// Failure
			if (sensor[chan].status2.failure) {
				bearingstatus.MainBearings[mainBearing] = 0x020;
			}

			// Alarm
			if (sensor[chan].status2.alarm || sensor[chan].status2.devalarm) {
				bearingstatus.MainBearings[mainBearing] = 0x001;
			}

			// Slowdown
			if (sensor[chan].status2.slowdown || sensor[chan].status2.devslow || CheckDMSingleBitSet(chan) ) {
				bearingstatus.MainBearings[mainBearing] = 0x002;
			}

			// Disabled
			if (sensor[chan].status1.enabled != TRUE) {
				bearingstatus.MainBearings[mainBearing] = 0x004;
			}

			chan++;

			if (mainBearing == damagemon.ccsplit + 1) mbn++;

		} else {

			// Failure
			if (sensor[chan].status2.failure && sensor[chan + 1].status2.failure) {
				bearingstatus.MainBearings[mainBearing] = 0x020;
			}

			// Alarm
			if ((sensor[chan].status2.alarm && sensor[chan + 1].status2.alarm) || (sensor[chan].status2.devalarm && sensor[chan + 1].status2.devalarm)) {
				bearingstatus.MainBearings[mainBearing] = 0x001;
			}

			// Slowdown
			if ((sensor[chan].status2.slowdown && sensor[chan + 1].status2.slowdown) ||
				(sensor[chan].status2.devslow && sensor[chan + 1].status2.devslow) ||
				(CheckDMSingleBitSet(chan) && CheckDMSingleBitSet(chan + 1)) ||
				CheckBitSet(damalarms.mbneighbour,mbn)) {
				bearingstatus.MainBearings[mainBearing] = 0x002;
			}

			// Disabled
			if (sensor[chan].status1.enabled != TRUE && sensor[chan + 1].status1.enabled != TRUE) {
				bearingstatus.MainBearings[mainBearing] = 0x004;
			}

			chan = chan + 2;
			mbn++;
		}

	}
}

// Check if the damage monitoring bit is set
int CheckDMSingleBitSet(unsigned int index)
{
	if (index < 16) return(CheckBitSet(damalarms.single[0],index));
	if (index >= 16 && index <32) return(CheckBitSet(damalarms.single[1],index-16));
	return(0);
}

// PF Gen 2 - 27-Mar-12 EOM


//PF Gen 2 - 30-Apr-12 
// Check if the alarm bit is set
int CheckAlarmBitSet(unsigned int index)
{
	unsigned int word;
	unsigned int bit;

	word = index / 16;
	bit = index % 16;

	if (word < 33) {
		return(CheckBitSet(bitalarmlist[word],bit));
	}
	return(0);
}
//PF Gen 2 - 30-Apr-12 EOM

