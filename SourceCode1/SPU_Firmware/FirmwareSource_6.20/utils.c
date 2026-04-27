/******************************************************************************
* FILENAME: UTILS.C
* Various Application Utilities
******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "core.h"
#include "globals.h"
#include "utils.h"
#include "setup.h"
#include "sci.h"
#include "pccli.h"
#include "define.h"
#include "man.h"
#include "mancal.h"
#include "sdcard.h"
#include "alarms.h"
#include "logging.h"
#include "wio.h" // PF Gen 2 - 24-Nov-11 Added wio.h
#include "adc.h" // PF Gen 2 - 05-Mar-12 Added adc.h

rpmstruct rpmdata;

const char monthlst[13][4] = { // PF Gen 2 - 21-Dec-11 Added month 13 for when realtime clock fails
{"Jan"},
{"Feb"},
{"Mar"},
{"Apr"},
{"May"},
{"Jun"},
{"Jul"},
{"Aug"},
{"Sep"},
{"Oct"},
{"Nov"},
{"Dec"},
{"FFF"},
};


const configcheckstruct configchecklist[NUM_CONFIGCHECK_IN_LIST] =
{
{FILTERCOEF_LOW,FILTERCOEF_HI,FILTERCOEF_DEFAULT,&config.filter.inputtap},
{0,ALARMBITMAP,ALARMBITMAP_DEFAULT,&config.alarmenable.bitmap},
{TGRAPH_LOW,TGRAPH_HI,TGRAPH_DEFAULT,&config.trendmax.graphvalue},
{CHANLOWTHRESLIMIT_LOW,CHANLOWTHRESLIMIT_HI,CHANLOWTHRESLIMIT_DEFAULT,&config.inputs.chanlowthreshold},
{CHANHITHRESLIMIT_LOW,CHANHITHRESLIMIT_HI,CHANHITHRESLIMIT_DEFAULT,&config.inputs.chanhighthreshold},
{SCALINGFACTOR_LOW,SCALINGFACTOR_HI,SCALINGFACTOR_DEFAULT,&config.inputs.sensorscalingfactor},
{SHORTLRATELIMIT_LOW,SHORTLRATELIMIT_HI,SHORTLRATELIMIT_DEFAULT,&config.sdsettings.shortlrate},
{LONGLRATELIMIT_LOW,LONGLRATELIMIT_HI,LONGLRATELIMIT_DEFAULT,&config.sdsettings.longlrate}
};



//Using the AtoD time as a timer interrupt this will be set once every 33.2us
void LoopCheck(void)
{
float value;

	value = (float)loopcheck.value * ADCINTERRUPTINTERVAL;
	if(value < loopcheck.min.value)
	{
		loopcheck.min.hours =  clocktime.hours;
		loopcheck.min.minutes = clocktime.minutes;
		loopcheck.min.seconds = clocktime.seconds;
		loopcheck.min.value = value;
	}
	if(value > loopcheck.max.value)
	{
		loopcheck.max.hours =  clocktime.hours;
		loopcheck.max.minutes = clocktime.minutes;
		loopcheck.max.seconds = clocktime.seconds;
		loopcheck.max.value = value;
	}
	//setup the current value
	{
		loopcheck.last.value = value;
	}
	loopcheck.value = 0;
}


void ResetCommsCheck(void)
{
	config.comms.wiorequest 	= 0;
	config.comms.wiocancelled 	= 0;
	config.comms.wioreceived 	= 0;
	config.comms.slaverequest 	= 0;
	config.comms.slavereceived 	= 0;
	config.comms.slaveretry 	= 0;
	config.comms.pcrequest 		= 0;
	config.comms.pcreqtimeout	= 0;
}

//Reset the loop timers to zero
void ResetLoopCheck(void)
{
int i;
int size;
unsigned int *ptr;

			size = sizeof(loopcheck);
			ptr = (unsigned int*)&loopcheck;
			for(i=0;i<size;i++)
			{
				*ptr++ = 0;
			}
			loopcheck.min.value = (float)DEFAULT_UNSIGNEDLONG_UPPER;		//set to max to begin
}

//SD Card Busy call
//Call this function during the sd card busy state
//This will update the timers (not in interrupt) and the analogue services
//A flag is raised whilst the dc mode is in operation to stop recursive function calling
//If in dc mode the callis not made whilst sd card is in progress
void SDBusyCalls(void)
{
	if(settings.dcmode == FALSE && settings.initprogress == FALSE)
	{
		AnalogueInputScaleAllChannels();
	}
}

//Setup on startup to all switched on (not vincheck)
//This will mean all the functons take place
void FunctionEnabledSetup(void)
{
	//set all functions to enabled to begin
	function.enabled.applyoffset = TRUE;
	function.enabled.sensorcompensation = TRUE;
	function.enabled.sensornoiseremoval = TRUE;
	function.enabled.sensordeviation = TRUE;
	function.enabled.cylinderaverage = TRUE;
	function.enabled.cylinderdeviation = TRUE;
	function.enabled.useroughcal = TRUE;

	//do not use this (not on all hardware)
	function.enabled.vincheckenabled = FALSE;

}

//Reset the unit by timing out on the watchdog
void SPUUnitReset(void)
{
	EALLOW
	WDCR = ENABLE_WD;
	EDIS
	WatchdogKick();
	settings.ledflashflag = 0;	//switch off flash
	LED1 = 1;					//blip the output
	NOPDelay(10);
	LED1 = 0;
	while(TRUE);	//wait for reset
}

//This function should be called from the main loop 
//This will check the time every 5 minutes against the last time held in fram.
//If this is seen to be older than the time in fram
//The time is read back from fram and an event logged against the fault
//Once updated the value is stored back to fram
void ClockProcessing(void)
{
unsigned long timestamp;
// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - char eventstring[EVENTMSG_LEN_INBYTES_PART2];
//unsigned long testval;

	if(alarms.framfailure == FALSE)
	{
		//check if the time has reached zero
		if(timers.clocktofram == 0)
		{
			sprintf(stringbuffer,"Clocktime %.2x/%.2x/%.2x %.2x:%.2x:%.2x %.8lx\r\n",
				clocktime.date,clocktime.month,clocktime.year,clocktime.hours,clocktime.minutes,clocktime.seconds,clocktime.framstamp
				); DebugStringOut(stringbuffer); // DEBUG

			timers.clocktofram = TIME_TO_FRAM_UPDATE;	//set off the 5 minute timer
			timestamp = BuildTimeStamp();

			sprintf(stringbuffer,"Clocktime %.2x/%.2x/%.2x %.2x:%.2x:%.2x %.8lx\r\n",
				clocktime.date,clocktime.month,clocktime.year,clocktime.hours,clocktime.minutes,clocktime.seconds,clocktime.framstamp,timestamp
				); DebugStringOut(stringbuffer); // DEBUG

			ClearAlarmEvent(RTCFAIL);	// PF Gen 2 - 08-Mar-12 Added in alarm clear so if the alarm occurs it is visible for at least the time between calls

			if(clocktime.framstamp == 0xFFFFFFFF || clocktime.framstamp == 0) clocktime.framstamp = timestamp;
			if(timestamp < clocktime.framstamp || timestamp > (clocktime.framstamp + ONE_YEAR_INSECS))	//check against the time out of fram
			{
				sprintf(stringbuffer,"Clock RTC Failure\r\n"); DebugStringOut(stringbuffer); // DEBUG
				//set the alarm event before logging the event as logging increments the eventid
				SetAlarmEvent(RTCFAIL);
				//error condition - checking on time being older than last record or 5 years in advance from previous record (which cannot be right!)
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(RTC_FAULT,HIGH_PRIORITY,YES,eventstring);	//no extra string for the rtc failure
				ReloadTimeFromFram();	//get the time back from fram overload the data in ram
				WriteClockData();
				clocktime.clockerr = TRUE;	//set flag to true
			}
			timestamp = BuildTimeStamp(); // PF Gen 2 - 08-Mar-12 To fix timestamp on restoration of clock from fram.
			clocktime.framstamp = timestamp;		//copy to the structure
			//save the current time from the RTC to the fram
			SaveTimetoFram();
		}
	}
}

void ReloadTimeFromFram(void)
{
unsigned int *ptr;
unsigned int len;

	sprintf(stringbuffer,"ReloadTimeFromFram pre %.2x/%.2x/%.2x %.2x:%.2x:%.2x %.8lx\r\n",
				clocktime.date,clocktime.month,clocktime.year,clocktime.hours,clocktime.minutes,clocktime.seconds,clocktime.framstamp);	DebugStringOut(stringbuffer); // DEBUG

	ptr = (unsigned int*)&clocktime;
	len = sizeof(clockstruct);
	ReadNVMemory(FRAM1,FRAM_RTC_DATA,ptr,len);

	sprintf(stringbuffer,"ReloadTimeFromFram post %.2x/%.2x/%.2x %.2x:%.2x:%.2x %.8lx\r\n",
				clocktime.date,clocktime.month,clocktime.year,clocktime.hours,clocktime.minutes,clocktime.seconds,clocktime.framstamp);	DebugStringOut(stringbuffer); // DEBUG
}

void SaveTimetoFram(void)
{
unsigned int size;
unsigned int *ptr;

	sprintf(stringbuffer,"SaveTimetoFram %.2x/%.2x/%.2x %.2x:%.2x:%.2x %.8lx\r\n",
				clocktime.date,clocktime.month,clocktime.year,clocktime.hours,clocktime.minutes,clocktime.seconds,clocktime.framstamp);	DebugStringOut(stringbuffer); // DEBUG

	ptr = (unsigned int*)&clocktime;
 	size = sizeof(clockstruct);
	WriteNVMemory(FRAM1,FRAM_RTC_DATA,ptr,size);

}

//FRAM Initialisation
//Setup variables for FRAM that are not setup from the PC
void FRAMInit(void)
{
int i;

	ClearAlarmListandEventLog();
	ClearMSGQueue();
	SetWIOAlarmMask(0);	//alarm mask set to zero for WIO alarms enabled
	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		offsetA.val[i] = 0;
		offsetB.val[i] = 0;
	}
	speedcompcoeffs.stageflag = 0;		//reset to zero
	WriteSpeedCompStructtoNVMEM();		//save struct so flag is saved
	ClearMANTable(0);	// PF Gen 2 - 29-May-12 Added in parameter
}

//The following function will load all the settings from the sd card into the fram
//This will setup the fram if it has not already been configured - called at startup
//If the magicnumber is not set this will load all settings from sd if possible
void LoadFRAMfromSD(void)
{
int i;

	sdsettings.readstatus.sensorstatus 	= FALSE;
	sdsettings.readstatus.settings 		= FALSE;
	sdsettings.readstatus.offsets 		= FALSE;
	sdsettings.readstatus.mantable 		= FALSE;
	sdsettings.readstatus.calibtd		= FALSE; // PF Gen 2 - 14-Nov-11

	PowerUpReadSD();
	//after reading from the sd card
	//if the sd card has been read correctly (check the flags set within the sdsettings structure)
	//setup the fram with the reading now held in ram
	//this will include:
	//generalsettings
	//sensorstatus
	//offsets
	//mantable
	
	if(sdsettings.readstatus.settings == TRUE)
	{
		if (wiosettings.scaledmax == 0) wiosettings.scaledmax = 10000;	// PF Gen 2 - 24-Nov-11 check the new wio settings
		
		//allsensors, speedcompcoeffs,wiosettings
		WriteAllSensorStructtoNVMEM();
		WriteConfigStructtoNVMEM();
		WriteWIOSettingstoNVMEM();
		WriteDamagemontoNVMEM();
		WriteSLEMSettingstoNVMEM();
		WriteCPPSettingstoNVMEM();
		WriteSensorSettingstoNVMEM();
		WriteSpeedCompStructtoNVMEM();
		WriteDCModeChecksSettingstoNVMEM(); // PF Gen 2 - 13-Dec-11
		Fram1MagicNumberWrite();	//set the magic number when updating the all sensors struct in the fram
	}
	if(sdsettings.readstatus.sensorstatus == TRUE)
	{
		for(i=0;i<MAX_NUM_CHANNELS;i++) WriteSensorStatustoNVMEM(i);
	}
	if(sdsettings.readstatus.offsets == TRUE)
	{
		for(i=0;i<MAX_NUM_CHANNELS;i++)
		{
			WriteOffsetAtoNVMEM(i);
			WriteOffsetBtoNVMEM(i);
		}
	}

	if(sdsettings.readstatus.mantable == TRUE) WriteMANCompTabletoNVMEM();		//save the man compensation table to FRAM 

	// PF Gen 2 - 14-Nov-11 save calibration structure
	if(sdsettings.readstatus.calibtd == TRUE) WriteCalibrationtdStructtoNVMEM();
	// PF Gen 2 - 14-Nov-11 EOM

	//fram read
	//this will  take place in initman()
	//if the fram is setup correctly then read the data in from fram
	//on startup the sd card read will com e after this as the sd card takes priority

}


//Write the config struct to the fram
void WriteConfigStructtoNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = CONFIGSTRUCT_OFFSET;
	ptr = (unsigned int*)&config;
	len = sizeof(configstruct);
	WriteNVMemory(FRAM1,position,ptr,len);
	//update the sdcard general file with changes
	settings.sdcardupdate = SDGENERALUPDATE;		//update the sd card settings
}

//Read back from NVMEM
//This will be called on power up only - as this is held in ram
void ReadConfigStructfromNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table

	position = CONFIGSTRUCT_OFFSET;
	ptr = (unsigned int*)&config;
	len = sizeof(configstruct);
	ReadNVMemory(FRAM1,position,ptr,len);
	ConfigCheckVal();
}


//Call this functino to check the values for the configstructure are within sensible limits.  if not use the default value
void ConfigCheckVal(void)
{
int i;

	for(i=0;i<NUM_CONFIGCHECK_IN_LIST;i++)
	{
		if(*configchecklist[i].ptr < configchecklist[i].lowlim || *configchecklist[i].ptr > configchecklist[i].hilim)
			{
				*configchecklist[i].ptr = configchecklist[i].defaultval;
			}
	}
}


//Round a vlaue and send back as a integer from a floating point
int FloattoIntRound(float val)
{
	if(val >= 0) val += 0.5;	//add on 0.5 for rounding
	else val -= 0.5;
	return((int)val);
}


//*****************************************************************************
//Calculate a single integer checksum
//Return checksum as an integer
//Adding up the data passed in as an integer stream
//*****************************************************************************
unsigned int CalcUIntChecksum(unsigned int* ptr,unsigned int len)
{
unsigned int checksum;

	checksum = 0;
	while(len--)
	{
		checksum += (*ptr);	//add up all ints
		ptr++;
	}
	return(checksum);
}



//Input a ptr to the timestamp in BCD int format
//e.g. yrmnth, dayhr, minsec
//Will output into static stringbuffer
// DD/MM/YY,Hr:Mn:Sc,
void BCDTimetoAscii(unsigned int *ptr)
{
unsigned char hours;
unsigned char mins;
unsigned char secs;
unsigned char date;
unsigned char month;
unsigned char year;

	year  = ptr[0] >> 8;	//get yr
	month = ptr[0] & 0xFF;	//get mnth
	date  = ptr[1] >> 8;	//get date
	hours = ptr[1] & 0xFF;	//get hours
	mins  = ptr[2] >> 8;	//get mins
	secs  = ptr[2] & 0xFF;	//get secs
	sprintf(stringbuffer,"%.2x/%.2x/%.2x,%.2x:%.2x:%.2x,",date,month,year,hours,mins,secs);
}


//Convert the int array into a byte array
//Used to convert string as ints into string as bytes
//Length passed in for integers
void StringInttoByteArray(char *dest,unsigned int * source,unsigned int len)
{
int i;
int j;
int flag;

	j=0;
	flag = FALSE;	//set flag if zero found, this will clear rest of buffer
	for(i=0;i<len;i++)
	{
		if(source[i] == 0 && flag == FALSE) flag = TRUE;	//set to true once a zero has been seen
		if(flag == FALSE)
		{
			dest[j] = (char)(source[i] >> 8);
			j++;
			dest[j] = (char)(source[i] & 0xFF);
			j++;
		}
		else
		{
			dest[j] = 0;
			j++;
			dest[j] = 0;
			j++;
		}
	}
}

void StringBytetoIntArray(unsigned int *dest,char * source,unsigned int len)
{
int i;
int j;
int flag;

	j=0;
	flag = FALSE;
	for(i=0;i<len;i++)
	{
		if(source[j] == 0 && flag == FALSE) flag = TRUE;	//set to true once a zero has been seen
		if(flag == FALSE)
		{
			dest[i] = (unsigned int)source[j] << 8;
			j++;
			if(source[j] == 0 && flag == FALSE) flag = TRUE;	//set to true once a zero has been seen
			dest[i] += ((unsigned int)source[j] & 0xFF);
			j++;
		}
		else
		{
			dest[i] = 0;	//clear unused words to zero
		}
	}
}


void BytetoIntArray(unsigned int *dest,char * source,unsigned int len)
{
int i;
int j;

	j=0;
	for(i=0;i<len;i++)
	{
		dest[i] = (unsigned int)source[j] << 8;
		j++;
		dest[i] += ((unsigned int)source[j] & 0xFF);
		j++;
	}
}


void InttoByteArray(char *dest,unsigned int * source,unsigned int len)
{
int i;
int j;

	j=0;
	for(i=0;i<len;i++)
	{
		dest[j] = (char)(source[i] >> 8);
		j++;
		dest[j] = (char)(source[i] & 0xFF);
		j++;
	}
}
                      
//Cal LED will be on solid when calibrating the inputs
//It will be flashing when the unit is running normally
void CalLEDSetup(void)
{
	EALLOW
	GPDDIR |= 0x02;		//SET AS OUTPUT
	EDIS
	LED1 = TRUE;	//start with led on
	settings.ledflashflag = 1;	//switch on led flash
}


//master mode switch used to determine whether this is a master or slave unit
void MasterModeSwitch(void)
{
static unsigned int mastermodeswitchprevious;
unsigned int i;
	//check the switch on an interval to debounce it.  This will reflect the master or slave mode
	if(timers.mastermodebutton == 0)
	{
		timers.mastermodebutton = MASTERMODEINTERVAL;
		if(mastermodeswitchprevious == MASTERM && MASTERMODESWITCH == 0) settings.mastermode = TRUE;
		else if(MASTERMODESWITCH == 0) mastermodeswitchprevious = MASTERM;
		else if(mastermodeswitchprevious == SLAVEM && MASTERMODESWITCH == 1)
		{
			for(i=0;i<MAX_NUM_CHANNELS_SPU;i++)SetSensorEnabled(i,ENABLED);
			settings.mastermode = FALSE;
			//if the unit is configured as a slave, set it up with 14 channels even if it does not have 14 fitted
			allsensors.numsensors = 14;
			allsensors.numsensorsspu1 = 14;
			allsensors.numsensorsspu2 = 0;
		}
		else if(MASTERMODESWITCH == 1) mastermodeswitchprevious = SLAVEM;
	}
}


//Delay of longer than 4us assuming 6.6666ns SYSCLK
void NOPDelay(unsigned int val)
{
unsigned int i;
	for(i=0;i<val;i++)
	{
		asm(" NOP");
	}
}


//Pass in a pointerto the value for the month in bcd
//Ptr passed in to the storage location for the string
void MonthtoStr(char *ptrin,int val)		//convert the month into a string of 3 character and null
{
char *ptr;
int i;
	switch(val)
	{
		case 1:
			ptr = (char*)&monthlst[0][0];
		break;
		case 2:					    
			ptr = (char*)&monthlst[1][0];
		break;
		case 3:
			ptr = (char*)&monthlst[2][0];
		break;
		case 4:
			ptr = (char*)&monthlst[3][0];
		break;
		case 5:
			ptr = (char*)&monthlst[4][0];
		break;
		case 6:
			ptr = (char*)&monthlst[5][0];
		break;
		case 7:
			ptr = (char*)&monthlst[6][0];
		break;
		case 8:
			ptr = (char*)&monthlst[7][0];
		break;
		case 9:
			ptr = (char*)&monthlst[8][0];
		break;
		case 0x10:
			ptr = (char*)&monthlst[9][0];
		break;
		case 0x11:
			ptr = (char*)&monthlst[10][0];
		break;
		case 0x12:
			ptr = (char*)&monthlst[11][0];
		break;
		// PF Gen 2 - 21-Dec-11 Added in default case so if the realtime clock fails we know what gets put into eventlog
		default:
			ptr = (char*)&monthlst[12][0];
		break;
		// PF Gen 2 - 21-Dec-11 EOM
	}
	for(i=0;i<3;i++)	//copy the three characters
	{
		ptrin[i] = ptr[i];
	}
	ptrin[3] = 0;	//null

}


//Convert the input number into a cylinder string
//e.g. input zero is converted to 1A, 5 is converted to 3B
void InputNumtoString(char *ptrin,int num)
{
int oddeven;

	oddeven = num %2;	//find if A or B if remainder then it is B
	if(oddeven == 0) ptrin[2] = 'A';
	else ptrin[2] = 'B';
	
	if(num < 18)
	{
		ptrin[0] = ' ';
		ptrin[1] = (num/2)+1 + '0' ;	//set the ascii number 1 to 9
	}
	else
	{
		ptrin[0] = '1';
		ptrin[1] = ((num-18)/2) + '0' ;	//set the ascii number 10 to 14
	}
	ptrin[3] = 0;	//set null terminator
}

//This can be read from the modbus
//package the data and time into integer format
//Yr/Mnth
//Date/Hrs
//Mins/Secs
void DateTimetoInt(void)
{
	livetime.yrmnth = clocktime.year << 8;
	livetime.yrmnth += clocktime.month & 0xFF;
	livetime.datehrs = clocktime.date << 8;
	livetime.datehrs += clocktime.hours & 0xFF;
	livetime.minssecs = clocktime.minutes << 8;
	livetime.minssecs += clocktime.seconds & 0xFF;

	//logtime saved as time now with the seconds rounded to 10 sec intervals;
	logtime.yrmnth = livetime.yrmnth;
	logtime.datehrs = livetime.datehrs;

	logtime.minssecs = clocktime.minutes << 8;
	logtime.minssecs += (clocktime.seconds & 0xF0);		//log in 10 second increments only

}

//Takes new live data for year and month and update clock
void YearMonthUpdate(void)
{
	clocktime.year = livetime.yrmnth >> 8;
	clocktime.month = livetime.yrmnth & 0xFF;
	WriteYrMnthData();
}

//Takes new live data for date and hours and update clock
void DateHoursUpdate(void)
{
	clocktime.date = livetime.datehrs >> 8;
	clocktime.hours = livetime.datehrs & 0xFF;
	WriteDateHrsData();
}

//Takes new live data for Mins and seconds and update clock
void MinsSecsUpdate(void)
{
	clocktime.minutes = livetime.minssecs >> 8;
	clocktime.seconds = livetime.minssecs & 0xFF;
	WriteMinsSecsData();
}

void RPMCalc(void)
{
//float temp;

	PulseRPMCalc();		//calculate the rpm from the ADC interrupt counts (based on detecting each pulse)
	if(rpmdata.ready == TRUE)
	{
		//do not set value on first pulse seen as it needs two pulses, therefore clear ready flag
		rpmdata.ready = FALSE;
		timers.rpmtimeout = RPMTIMEOUT;		//set timeout for setting the rpm to zero
	}
	else if (timers.rpmtimeout == 0)		//if we have not seen any pulses on channel 1 clear the rpm count
	{
		//clear down all stores associated with calculating the rpm
		rpmdata.sampleperiod = 0;
		rpmdata.previouscount = 0;
		//do not clear this otherwise it will never start! timers.rpm = 0;
		rpmdata.count = 0;
		if(settings.anadebug.enb == TRUE) DebugAnaUpdate();
	}
}



//create an update for the new val flag based on the rpm
//This will work off of a timer to recreate the update rate equiv to rpm
void DebugAnaUpdate(void)
{
unsigned int temprpm;
float val;
	//analogue debug enabled set up the time based on this
	if(settings.anadebug.enb == TRUE)
	{
		if(timers.debugupdate == 0)
		{
			temprpm = GetModalRPM(0);		
			if(temprpm != 0)
			{
				allsensors.flags.newval = TRUE;
			}
			val = 60/(float)temprpm;
			timers.debugupdate = (unsigned int)(val * (float)SECS_TO_MS_MULTIPLIER);
		}
	}
}

void UpdateNonVolSafeCheck(void)
{
unsigned int i;

	if(settings.updatesafe != 0)
	{
		switch(settings.updatesafe)
		{
			case SAFE1UPDATE:
	        	SaveSafeStruct1();
				settings.updatesafe = 0;
				settings.configoperationcomplete = 0;
			break;
			case SAFE2UPDATE:
	        	SaveSafeStruct2();
				settings.updatesafe = 0;
				settings.configoperationcomplete = 0;
			break;
			case SDSETTINGSUPDATE:
				SaveSDSettings();
				settings.updatesafe = 0;
			break;
			case OFFSETAUPDATE:
				for(i=0;i<MAX_NUM_CHANNELS;i++) WriteOffsetAtoNVMEM(i);
				settings.sdcardupdate = SDOFFSETSUPDATE;
				settings.updatesafe = 0;
				settings.configoperationcomplete = 0;
			break;
			case OFFSETBUPDATE:
				for(i=0;i<MAX_NUM_CHANNELS;i++) WriteOffsetBtoNVMEM(i);
				settings.sdcardupdate = SDOFFSETSUPDATE;
				settings.updatesafe = 0;
				settings.configoperationcomplete = 0;
			break;
			case SPEEDCOMPSTRUCTUPDATE:
				WriteSpeedCompStructtoNVMEM();
			break;
			case MANCOMPTABLE:
				WriteMANCompTabletoNVMEM();
			break;
		}
		//in adc.c, if ignore is set the incoming pulse is ignored in case we have missed the peak
		settings.ignore = 0x3FFF;		//set the ignore flags, next incoming pulse train is ignored
		settings.updatesafe = 0;		//knock down flag once particular safe has been updated
	}
	
}


//AJB 19-Aug-10
//Bit checking in a bit field
//Returns bit value 1 or 0
//Enter with position referenced from zero
int CheckBitSet(unsigned int bitfield,unsigned int pos)
{
unsigned int bitset;

	bitset = 1;
	bitset <<= pos;
	if((bitfield & bitset) == 0) return(0);
	else return(1);
}
//AJB 19-Aug-10 EOM

//AJB 19-Aug-10
//Set the bit ON at pos in the bitfield
unsigned int BitSet(unsigned int bitfield,unsigned int pos)
{
unsigned int bitset;
	  
	bitset = 1;
	bitset <<= pos;
	bitfield |= bitset;

	return(bitfield);
}
//AJB 19-Aug-10 EOM

//AJB 19-Aug-10
//Set the bit OFF at pos in the bitfield
unsigned int BitClear(unsigned int bitfield,unsigned int pos)
{
unsigned int bitset;

	bitset = 1;
	bitset <<= pos;
	bitset = ~bitset;	//invert the 32bits
	bitfield &= bitset;
	return(bitfield);
}
//AJB 19-Aug-10 EOM


//Enter with a bcd character in the lower part of the integer
unsigned int BCDtoInt(unsigned int bcd)
{
unsigned int temp1;
unsigned int temp2;

	temp1 = temp2 = (bcd & 0x00FF);
	temp1 >>= 4;
	temp2 &= 0x000F;
	return((temp1*10)+temp2);
}

// PF Gen 2 - 14-Nov-11 update calibration
// Type 0 - write values to NVMEM and SD
// Type 1 - Current date/time to the Cal complete registers
// Type 2 - Current date/time to the Verification registers
// Type 3 - Zero cal complete and verification registers
void CalibrationtdUpdate(int type)
{
	// sprintf(stringbuffer,"CaltdUpdate:%d\r\n",type); DebugStringOut(stringbuffer);

	if (type == 1) {
		calibrationtd.calcomplete.yrmnth = clocktime.year << 8;
		calibrationtd.calcomplete.yrmnth += clocktime.month & 0xFF;
		calibrationtd.calcomplete.datehrs = clocktime.date << 8;
		calibrationtd.calcomplete.datehrs += clocktime.hours & 0xFF;
		calibrationtd.calcomplete.minssecs = clocktime.minutes << 8;
		calibrationtd.calcomplete.minssecs += clocktime.seconds & 0xFF;
	}
	if (type == 2) {
		calibrationtd.verification.yrmnth = clocktime.year << 8;
		calibrationtd.verification.yrmnth += clocktime.month & 0xFF;
		calibrationtd.verification.datehrs = clocktime.date << 8;
		calibrationtd.verification.datehrs += clocktime.hours & 0xFF;
		calibrationtd.verification.minssecs = clocktime.minutes << 8;
		calibrationtd.verification.minssecs += clocktime.seconds & 0xFF;
	}
	if (type == 3) {
		calibrationtd.calcomplete.yrmnth = 0;
		calibrationtd.calcomplete.datehrs = 0;
		calibrationtd.calcomplete.minssecs = 0;
		calibrationtd.verification.yrmnth = 0;
		calibrationtd.verification.datehrs = 0;
		calibrationtd.verification.minssecs = 0;
	}
	// Write to NVMEM and SD
	WriteCalibrationtdStructtoNVMEM();
	settings.sdcardupdate = SDCALIBRATIONUPDATE;		//update the sd card settings

}

//Write the calibrationtd struct to the fram
void WriteCalibrationtdStructtoNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	// Calculate the checksum
	calibrationtd.chksum = CalcUIntChecksum((unsigned int*)&calibrationtd,6);

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = CALIBRATIONTD_DATA_OFFSET;
	ptr = (unsigned int*)&calibrationtd;
	len = sizeof(calibrationdatetimestruct);
	WriteNVMemory(FRAM1,position,ptr,len);

}


//Read the calibrationtd struct to the fram
//This will be called on power up only - as this is held in ram
void ReadCalibrationtdStructfromNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;
unsigned int chksum1;
calibrationdatetimestruct calibrationTemptd;

	// Calculate the position to point to in nonvolatile memory
	position = CALIBRATIONTD_DATA_OFFSET;
	ptr = (unsigned int*)&calibrationTemptd;
	len = sizeof(calibrationdatetimestruct);

	// Read from NVMEM and calculate checksum
	ReadNVMemory(FRAM1,position,ptr,len);
	chksum1 = CalcUIntChecksum((unsigned int*)&calibrationTemptd,6);

	if (calibrationTemptd.chksum == chksum1) {	// If the chksum is good then read into calibrationtd, else it is bad then zero the data
		ptr = (unsigned int*)&calibrationtd;
		ReadNVMemory(FRAM1,position,ptr,len);
	} else { 
		CalibrationtdUpdate(3); // Zero calibration time and date
	}

}

// PF Gen 2 - 14-Nov-11 EOM

// PF Gen 2 - 13-Dec-11 Added function to conglomerate reading from Fram on powerup
void LoadFRAMpowerup(void)
{

		ReadEventLogVarsStructfromNVMEM();
		ReadWIOSettingsfromNVMEM();
		ReadDamagemonfromNVMEM();
		ReadSLEMSettingsfromNVMEM();
		ReadCPPSettingsfromNVMEM();
		ReadCalibrationtdStructfromNVMEM(); // PF Gen 2 - 14-Nov-11
		ReadDCModeChecksSettingsfromNVMEM(); // PF Gen 2 - 13-Dec-11

		ReadNVMemory(FRAM1,RTCBAT_ALARMS_DATA_OFFSET,(unsigned int*)&rtcbat.alarms,1); // PF Gen 2 - 05-Mar-11

		ReadAlarmListfromNVMEM(); // PF Gen 2 - 01-Feb-12

		sprintf(stringbuffer,"f."); DebugStringOut(stringbuffer);

}
// PF Gen 2 - 13-Dec-11 EOM

// PF Gen 2 - 17-Jan-12
//Read the alarmlist to the fram
//This will be called on power up only - as this is held in ram
void ReadAlarmListfromNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;
unsigned int chksum1;
unsigned int bitalarmlistNVMEM[33];
unsigned int i;

	// Calculate the position to point to in nonvolatile memory
	position = BITALARMLIST_DATA_OFFSET;
	ptr = (unsigned int*)&bitalarmlistNVMEM;
	len = sizeof(bitalarmlistNVMEM);

	// Read from NVMEM and calculate checksum
	ReadNVMemory(FRAM2,position,ptr,len);
	chksum1 = CalcUIntChecksum((unsigned int*)&bitalarmlistNVMEM,32);

	if (bitalarmlistNVMEM[32] == chksum1) {	// If the chksum is good then read into alarmlist, else it is bad then zero the data
		ptr = (unsigned int*)&bitalarmlist;
		ReadNVMemory(FRAM2,position,ptr,len);
	} else { 

		for (i=0;i<32;i++) {
			bitalarmlist[i] = 0;
		}

		WriteAlarmListtoNVMEM();
	}

}

//Write the alarmlist struct to the fram
void WriteAlarmListtoNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;
unsigned int chksum;

	// Calculate the checksum
	chksum = CalcUIntChecksum((unsigned int*)&bitalarmlist,32);
	bitalarmlist[32] = chksum;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = BITALARMLIST_DATA_OFFSET;
	ptr = (unsigned int*)&bitalarmlist;
	len = sizeof(bitalarmlist);
	WriteNVMemory(FRAM2,position,ptr,len);

}

// PF Gen 2 - 17-Jan-12 EOM


// PF Gen 2 - 06-Mar-12 Clear event list
void ClearBitEventList(void) {
unsigned int i,j;

	for (i=0;i<16;i++) {
		for (j=0;j<3;j++) {
			biteventlist[i][j]=0;
		}
	}

	timers.biteventchange = BITEVENCHANGE;
	biteventpos = 0;

}
// PF Gen 2 - 06-Mar-12 EOM
