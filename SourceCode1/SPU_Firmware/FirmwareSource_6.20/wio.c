//WIO.c - Water in oil source file
//
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "define.h"
#include "globals.h"
#include "pccli.h"
#include "wio.h"
#include "wioprim.h"
#include "slave485.h"
#include "logging.h"
#include "spi.h"
#include "alarms.h"
#include "adc.h"

int wio_OORflag;

waterinoilstruct waterinoil;
wiosettingsstruct wiosettings;

void WIOAlarm(void);
void WIOUpperAlarm(void);
void WIOCommsLost(void);

void WIOAnalog(void);
void WIOAnalogInput(void);
void CheckWIORange(void);

void WIOInit(void)
{
	waterinoil.temperature = 0;
	waterinoil.activity = 0;
	waterinoil.content = 0;
	waterinoil.temperature_int = 0;
	waterinoil.activity_int = 0;
	waterinoil.content_int = 0;

	wio_OORflag = 0;

	*((unsigned int*)&waterinoil.wioalarms) = 0;
	//read in the alarm structure for the wio
	ReadNVMemory(FRAM1,WIOALARMSTRUCT_OFFSET,(unsigned int*)&waterinoil.wioalarms,1);
}

//return a pointer to the start of the water in oil settings structure
//This returns a ptr as struct
wiosettingsstruct * WioSettingsStructPtr(void)
{	return(&wiosettings);	}

//return a pointer to the start of the water in oil structure
//This returns a ptr as struct
waterinoilstruct * WioStructPtr(void)
{	return(&waterinoil);	}

//AJB 19-Aug-10
void WIOAnalog(void)
{
	//enabled if set to 2 (1 for digital comms, 2 for analogue enabled)
	if(wiosettings.enabled == 2)
	{
		//check if fault condition on analogue input
		if(waterinoil.wioalarms.analoglow == FALSE && waterinoil.wioalarms.analoghigh == FALSE)
		{
			WIOAnalogInput();
		}
	}
}
//AJB 19-Aug-10 EOM

//AJB 19-Aug-10
//Water in oil analogue input
//Channel zero on separate analogue inputs
void WIOAnalogInput(void)
{
float temp;

	//The 4-20mA analogue input can only measure one value
	 
	temp = inputs.analog.value[WATER_IN_OIL_ANALOG_IN];
	if(temp <= 819) temp = 0;		//relates to 4mA, should never be lower than this unless in an error condition
	else
	{
		temp /= 4095;	//find the activity 0 to 1 value
		temp *=20;		//get 0 to 20mA
		temp -= 4;		//remove 4mA
		temp /= 16;		//divide by range (16mA once removed 4mA offset)
					//now have number 0 to 1 for the activity value
					//it is unlikely that 1 will be achievable if the input is already setup with 150R
					//it should be possible to get close to the maximum but not actually to 1
	}
	waterinoil.activity = temp;
	// PF Gen 2 - 24-Nov-11 Removed below calculation as not required
	// waterinoil.activity_int = FloattoIntRound(temp*10000);
}
//AJB 19-Aug-10 EOM

//AJB 19-Aug-10
//CHeck if the water in oil analogue value is in range
void CheckWIORange(void)
{
char eventstring[EVENTMSG_LEN_INBYTES_PART2];
float temp;

	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);

	if(wiosettings.enabled == 2 && timers.startup == 0)
	{

		temp = inputs.analog.value[WATER_IN_OIL_ANALOG_IN];
		temp /= 4095;
		temp *= 20;		//scale back for 0-20mA
		//check if less than 3mA or >= 21mA
		if(temp >= 21.0 || temp <= 3.0)
		{
			if(temp <= 3.0)		//less than 3mA
			{
				//AJB 21-Sep-10
				waterinoil.wioalarms.analoglow = TRUE;		//for pc ref only
				//values returned on modbus
				waterinoil.activity_int 	= LOWLEVEL_LOG_VALUE;
				waterinoil.activity = -1; //SLD Gen 2 20-Sep-2012 Added to Prevent WIOActivityWord() from setting wio_OORflag
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Input Low");
			}
			if(temp >= 21.0)	//> 21.0mA
			{
				waterinoil.wioalarms.analoghigh = TRUE;	//for pc ref only
				//values returned on modbus
				waterinoil.activity_int 	= HILEVEL_LOG_VALUE;
				waterinoil.activity = -1; //SLD Gen 2 20-Sep-2012 Added to Prevent WIOActivityWord() from setting wio_OORflag
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Input High");
				//AJB 21-Sep-10 EOM
			}
			if(wio_OORflag == FALSE)
			{
				//water in oil value out range
				wio_OORflag = TRUE;
				// PF Gen 2 - 19-Jan-12 New WIO alarms
				if (waterinoil.wioalarms.analoglow == TRUE) {
					SetAlarmEvent(WIOANALOGLO);
					DebugStringOut("WIO: OOR LOW\n"); //SLD
				} else {
					SetAlarmEvent(WIOANALOGHI);
				}
				// PF Gen 2 - 19-Jan-12 EOM
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - SetAlarmEvent(eventlogvars.eventlogid,WIOCOMMS,UNACK_ON_YELLOW);
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(WIO_COMMS,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event
				WriteNVMemory(FRAM1,WIOALARMSTRUCT_OFFSET,(unsigned int*)&waterinoil.wioalarms,1);
			}
		}
		else
		{
			if(wio_OORflag == TRUE)
			{
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - ClearAlarmEvent(WIOCOMMS,FALSE);						//clear the in alarm bit for the fault
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"RTN");
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(WIO_COMMS,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
				// PF Gen 2 - 19-Jan-12 New WIO alarm clearing
				ClearAlarmEvent(WIOANALOGLO);
				ClearAlarmEvent(WIOANALOGHI);
				// PF Gen 2 - 19-Jan-12 EOM
				wio_OORflag = FALSE;		//value OK as it is within allowed range
				wiolost = FALSE;			//of in range set to false
				waterinoil.wioalarms.analoglow = FALSE;		//this value is not used but can be seen by the PC if required
				waterinoil.wioalarms.analoghigh = FALSE;		//this value is not used but can be seen by the PC if required
				WriteNVMemory(FRAM1,WIOALARMSTRUCT_OFFSET,(unsigned int*)&waterinoil.wioalarms,1);
				DebugStringOut("WIO: BACK IN 4-20mA Range\n"); //SLD
			}

		}
	}
	
	if(wiosettings.enabled == 0 && timers.startup == 0)	//clear down if not enabled in case we had an event before it was disabled!
	{
		if(wio_OORflag == TRUE)
		{
			WIOCommsOORClearDown();
		}
	}
}
//AJB 19-Aug-10 EOM

//AJB 05-Oct-10
void WIOCommsOORClearDown(void)
{
	ClearAlarmEvent(WIOCOMMS);						//clear the in alarm bit for the fault
	// PF Gen 2 - 19-Jan-12 New WIO alarm clearing
	ClearAlarmEvent(WIOANALOGLO);
	ClearAlarmEvent(WIOANALOGHI);
	// PF Gen 2 - 19-Jan-12 EOM

	//clear for analog
	wio_OORflag = FALSE;		//value OK as it is within allowed range
	wiolost = FALSE;			//of in range set to false
	waterinoil.wioalarms.analoglow = FALSE;		//this value is not used but can be seen by the PC if required
	waterinoil.wioalarms.analoghigh = FALSE;		//this value is not used but can be seen by the PC if required

	//clear for digital
	waterinoil.wioalarms.comms = FALSE;
	waterinoil.wioalarms.commslatched = FALSE; //clear once restored comms
	WriteNVMemory(FRAM1,WIOALARMSTRUCT_OFFSET,(unsigned int*)&waterinoil.wioalarms,1);
	
	DebugStringOut("WIO: COMMS & OOR Clear\n"); //SLD
}

//function to return the temperature as a word of data rather than a float
int WIOTemperatureWord(void)
{
int temp;
	if(wiosettings.enabled == 1 && waterinoil.wioalarms.commslatched == FALSE)
	{
		//check sensible value
		if(waterinoil.temperature < (float)200.0 && waterinoil.temperature >= (float)0.0)	//check limits for WIO)
		{
			//cast as int * 10 s 24.5 deg = 245
			temp = (int)(waterinoil.temperature * 10);
			waterinoil.temperature_int = temp;	//save value as a integer
		}
	}
	//return the last known good value if the new value is OOR
	//the new value is occasionally returned by the WIO incorrectly.  Guard against this by returning the last good value
	
	if(wiosettings.enabled == 0)
		waterinoil.temperature_int = 0; //SLD Gen 2 - 19-Sep-12 Added. Return zero if not enabled
		
	return(waterinoil.temperature_int);

}


//function to return the activity as a word of data rather than a float
int WIOActivityWord(void)
{
int temp;
char eventstring[EVENTMSG_LEN_INBYTES_PART2];
static int wio_oorcount;

	//SLD Gen 2 - 19-Sep-2012 Water Activity can be returned by Comms or the analogue input
	if(wiosettings.enabled >= 1 && waterinoil.wioalarms.commslatched == FALSE) //SLD Gen 2 - 19-Sep-2012 Changed == 1 to >=1 
	{
		//clear array to begin, this will be passed to logging so must be clear for parts not used
		memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);

		//check sensible value
		if(waterinoil.activity <= (float)1.0 && waterinoil.activity >= (float)0.0)	//check limits for WIO
		{
			wio_OORflag = FALSE;
			wio_oorcount = 0;				//set to zero on a good value being seen from the water in oil

			//cast to int
			temp = (int)(waterinoil.activity *10000); // PF Gen 2 - 24-Nov-11 Changed to 10000 instead of 1000 for more resolution
			waterinoil.activity_int = temp;	//save value as a integer

		}
		else
		{
			wio_oorcount++;		//increment the count on a duff value being seen
			if(wio_OORflag == FALSE)
			{
				//water in oil value out range print on cli
				wio_OORflag = TRUE;
			}
			// PF Gen 2 - 07-Mar-12 Old event system backend removal - 
			/*
			if(wio_oorcount == 5)	//if we have seen 5 out of range values set an alarm to be picked up in the log
			{
				sprintf(eventstring,"Out Of Range val from WIO");
				LogEvent(WIO_ALARM,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
			}
			*/
			// PF Gen 2 - 07-Mar-12 Old event system backend removal - EOM
		}
	}
	
	if(wiosettings.enabled == 0)
		waterinoil.activity_int = 0; //SLD Gen 2 - 19-Sep-12 Added. Return zero if not enabled
		
	return(waterinoil.activity_int);
}



//function to return the ppm as a word of data rather than a float
int WIOPPMWord(void)
{
int temp;

	if(wiosettings.enabled == 1 && waterinoil.wioalarms.commslatched == FALSE)
	{
		//check sensible value
		if(waterinoil.content < (float)10000.0 && waterinoil.content >= (float)0.0)	//check limits for WIO)
		{
			//cast to int
			temp = (int)(waterinoil.content);
			waterinoil.content_int = temp;	//save value as a integer
		}
	}
	//return the last known good value if the new value is OOR
	//the new value is occasionally returned by the WIO incorrectly.  Guard against this by returning the last good value

	if(wiosettings.enabled == 0)
		waterinoil.content_int = 0; //SLD Gen 2 - 19-Sep-12 Added. Return zero if not enabled
		
	return(waterinoil.content_int);
}

int WIOEnabled(void)
{
	//check the water in oil is enabled
	return(wiosettings.enabled);
}


//set/clear the alarm mask for WIO
void SetWIOAlarmMask(int val)
{
	if(val == 1) wiosettings.alarmmask = TRUE;
	else wiosettings.alarmmask = FALSE;
	WriteWIOSettingstoNVMEM();
}

//Carry out all check on the water in oil realting to alarm levels, slow down etc
void WIOChecks(void)
{
	WIOAnalog();		//AJB 19-Aug-10 carry out the water in oil analogue method
	WIOAlarm();
	WIOUpperAlarm();
	WIOCommsLost();
}

//Water in oil upper alarm setting
//set the latch and this will be checked within the digout
void WIOUpperAlarm(void)
{
int val;
char eventstring[EVENTMSG_LEN_INBYTES_PART2];
unsigned int alarmupperl;
unsigned int hys;

	//clear array to begin, this will be passed to logging so must be clear for parts not used
	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
	//AJB 19-Aug-10 altered for water in oil to come from either comms or analogue input
	if(WIOEnabled() != 0 && wiosettings.alarmmask == FALSE && waterinoil.wioalarms.commslatched == FALSE)
	{
		//for analogue method the WIOActivityWord will not effect the number already calculated from the analogue method
		val = WIOActivityWord();
		if(val != DEFAULT_INT_ERROR_VAL && val != LOWLEVEL_LOG_VALUE && val != HILEVEL_LOG_VALUE)
		{
			// PF Gen 2 - 24-Nov-11 Removed *10 on limit and hysteresis as all the same scale (0 - 10000) now
			alarmupperl = wiosettings.alarmupperlevel;
			hys = wiosettings.hysteresis;
			// PF Gen 2 - 24-Nov-11 EOM
			if(val >= alarmupperl)	//check activity against slow down level
			{
				waterinoil.wioalarms.alarmupper = TRUE;
				if(waterinoil.wioalarms.alarmupperlatched == FALSE)	//latch only once
				{
					//set the alarm event before logging the event as logging increments the eventid
					SetAlarmEvent(WIOALARMUPPER);
				 	waterinoil.wioalarms.alarmupperlatched = 1;
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Level 2 %u%%",wiosettings.alarmupperlevel/100);	// PF Gen 2 - 24-Nov-11 /100 to correct displayed value
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(WIO_UPPERALARM,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event
					WriteNVMemory(FRAM1,WIOALARMSTRUCT_OFFSET,(unsigned int*)&waterinoil.wioalarms,1);
				}
			}
			else if(val < (int)(alarmupperl - hys))
			{
				if(CheckAlarmBitSet(WIOALARMUPPER) == 1 || waterinoil.wioalarms.alarmupperlatched == TRUE)	// PF Gen 2 - 17-May-12 Checked alarm bits in addition
				{
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"RTN");
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(WIO_UPPERALARM,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
					ClearAlarmEvent(WIOALARMUPPER);			//clear the in alarm bit for the fault
					waterinoil.wioalarms.alarmupper = FALSE;
					waterinoil.wioalarms.alarmupperlatched = FALSE; //clear once below hysteresis point
					WriteNVMemory(FRAM1,WIOALARMSTRUCT_OFFSET,(unsigned int*)&waterinoil.wioalarms,1);
				}
			}
		}
	}
	else
	{
		if(CheckAlarmBitSet(WIOALARMUPPER) == 1 ||waterinoil.wioalarms.alarmupperlatched == TRUE)	// PF Gen 2 - 17-May-12 Checked alarm bits in addition
		{
			ClearAlarmEvent(WIOALARMUPPER);			//clear the in alarm bit for the fault
			waterinoil.wioalarms.alarmupper = FALSE;
			waterinoil.wioalarms.alarmupperlatched = FALSE; //clear once below hysteresis point
			WriteNVMemory(FRAM1,WIOALARMSTRUCT_OFFSET,(unsigned int*)&waterinoil.wioalarms,1);
		}
	}
}


//Water in oil alarm setting
//set the latch and this will be checked within the digout
void WIOAlarm(void)
{
int val;
char eventstring[EVENTMSG_LEN_INBYTES_PART2];
unsigned int alarml;
unsigned int hys;

	//clear array to begin, this will be passed to logging so must be clear for parts not used
	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);

	//AJB 19-Aug-10 altered for water in oil to come from either comms or analogue input
	if(WIOEnabled() != 0 && wiosettings.alarmmask == FALSE && waterinoil.wioalarms.commslatched == FALSE)
	{
		//WIOActivityWord will have no effect on value if using analogue input
		val = WIOActivityWord();
		if(val != DEFAULT_INT_ERROR_VAL && val != LOWLEVEL_LOG_VALUE && val != HILEVEL_LOG_VALUE)	//AJB 21-Sep-10
		{
			// PF Gen 2 - 24-Nov-11 Removed *10 on limit and hysteresis as all the same scale (0 - 10000) now
			alarml = wiosettings.alarmlevel;
			hys = wiosettings.hysteresis;
			// PF Gen 2 - 24-Nov-11 EOM
			if(val >= alarml)	//check activity against slow down level
			{
				waterinoil.wioalarms.alarm = TRUE;
				if(waterinoil.wioalarms.alarmlatched == FALSE)	//latch only once
				{
					//set the alarm event before logging the event as logging increments the eventid
					SetAlarmEvent(WIOALARM);
				 	waterinoil.wioalarms.alarmlatched = 1;
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Level 1 %u%%",wiosettings.alarmlevel/100);		// PF Gen 2 - 24-Nov-11 /100 to correct displayed value
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(WIO_ALARM,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event
					WriteNVMemory(FRAM1,WIOALARMSTRUCT_OFFSET,(unsigned int*)&waterinoil.wioalarms,1);
				}
			}
			else if(val < (int)(alarml - hys))
			{
				if(waterinoil.wioalarms.alarmlatched == TRUE)
				{
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"RTN");
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(WIO_ALARM,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
					ClearAlarmEvent(WIOALARM);			//clear the in alarm bit for the fault
					waterinoil.wioalarms.alarm = FALSE;
					waterinoil.wioalarms.alarmlatched = FALSE; //clear once below hysteresis point
					WriteNVMemory(FRAM1,WIOALARMSTRUCT_OFFSET,(unsigned int*)&waterinoil.wioalarms,1);
				}
			}
		}
	}
	else if(CheckAlarmBitSet(WIOALARM) == 1 || waterinoil.wioalarms.alarmlatched == TRUE)	// PF Gen 2 - 17-May-12 Checked alarm bits in addition
	{
		ClearAlarmEvent(WIOALARM);			//clear the in alarm bit for the fault
		waterinoil.wioalarms.alarm = FALSE;
		waterinoil.wioalarms.alarmlatched = FALSE; //clear once below hysteresis point
		WriteNVMemory(FRAM1,WIOALARMSTRUCT_OFFSET,(unsigned int*)&waterinoil.wioalarms,1);
	}

}


void WIOCommsLost(void)
{
char eventstring[EVENTMSG_LEN_INBYTES_PART2];

	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);

	if(WIOEnabled() != 0 && wiosettings.alarmmask == FALSE)
	{
		if(wiolost == TRUE)	//lost comms to WIO
		{
			waterinoil.wioalarms.comms = TRUE;
			if(waterinoil.wioalarms.commslatched == FALSE)	//latch only once
			{
				//set the alarm event before logging the event as logging increments the eventid
				SetAlarmEvent(WIOCOMMS);
				//set to zero
				waterinoil.activity = 0;
				waterinoil.temperature = 0;
				waterinoil.content = 0;
				//values returned on modbus
				waterinoil.activity_int 	= DEFAULT_INT_ERROR_VAL;
				waterinoil.temperature_int 	= DEFAULT_INT_ERROR_VAL;
				waterinoil.content_int 		= DEFAULT_INT_ERROR_VAL;
			 	waterinoil.wioalarms.commslatched = 1;
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(WIO_COMMS,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event
				WriteNVMemory(FRAM1,WIOALARMSTRUCT_OFFSET,(unsigned int*)&waterinoil.wioalarms,1);
			}
		}
		else if(wiolost == FALSE)
		{
			if(CheckAlarmBitSet(WIOCOMMS) == 1 || waterinoil.wioalarms.commslatched == TRUE)	// PF Gen 2 - 17-May-12 Checked alarm bits in addition
			{
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"RTN");
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(WIO_COMMS,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
				ClearAlarmEvent(WIOCOMMS);						//clear the in alarm bit for the fault
				waterinoil.wioalarms.comms = FALSE;
				waterinoil.wioalarms.commslatched = FALSE; //clear once restored comms
				WriteNVMemory(FRAM1,WIOALARMSTRUCT_OFFSET,(unsigned int*)&waterinoil.wioalarms,1);
			}
		}
	}
	else if(waterinoil.wioalarms.commslatched == TRUE)
	{
		WIOCommsOORClearDown();
	} 
}

//Write the WIO settings to NVmemory
void WriteWIOSettingstoNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = WIOSETTINGS_OFFSET;
	ptr = (unsigned int*)&wiosettings;
	len = sizeof(wiosettingsstruct);
	WriteNVMemory(FRAM1,position,ptr,len);
	//update the sdcard general file with changes for WIO
	settings.sdcardupdate = SDGENERALUPDATE;		//update the sd card settings
}

//Read back from NVMEM
//This will be called on power up only - as this is held in ram
void ReadWIOSettingsfromNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table

	position = WIOSETTINGS_OFFSET;
	ptr = (unsigned int*)&wiosettings;
	len = sizeof(wiosettingsstruct);
	ReadNVMemory(FRAM1,position,ptr,len);
}


