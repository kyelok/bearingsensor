/******************************************************************************
* FILENAME: DIGOUT.C
* Digital output ports (opto isolated)
******************************************************************************/

// PF 23-Nov-09 Included stdio.h, stdlib.h, string.h
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
// PF 23-Nov-09 EOM
#include "sci.h"
#include "core.h"
#include "globals.h"
#include "utils.h"
#include "digout.h"
#include "setup.h"
#include "man.h"
#include "alarms.h"
#include "wio.h"
#include "adc.h"
// PF 23-Nov-09 Include pccli.h to digout.c
#include "pccli.h"

// PF 23-Nov-09 Added in AlarmTestEvent to create events for alarm output testing mode change
// PF Gen 2 - 07-Mar-12 Old event system backend removal - void AlarmTestEvent(void);
void AliveStatus(void);
void AlarmLevelOP(void);
void SlowDownLevelOP(void);

digoutstruct digout;
sensoralarmstruct statusprevious[MAX_NUM_CHANNELS];	//record the previous state used for reflashing the digital outputs
unsigned int cylinderalarm[MAX_NUM_CYLINDERS];		//store the report for the digital output for the cylinder alarm
unsigned int wioalarmprev;
unsigned int wioalarmupperprev;

//Alive status related
unsigned int sdcardprev;
unsigned int slavefailureprev;
unsigned int framfailprev;
unsigned int pccommsfailureprev;
unsigned int wiocommsprev;
unsigned int wioanaloglowprev;
unsigned int wioanaloghighprev;
unsigned int slemprev;			//AJB 19-Aug-10
unsigned int slemoorprev;	 	//AJB 19-Aug-10
unsigned int damagesingleprev[2];	//AJB 19-Aug-10
unsigned int damagecylprev;		//AJB 19-Aug-10
unsigned int damagembnprev;		//AJB 19-Aug-10
unsigned int rtcbatprev;		//AJB 21-Sep-10
unsigned int tempprev;			//07-25-2013 FF: add for temperature

//Initialise the outputs to healthy state
//Call on power up
void InitOP(void)
{
unsigned int *ptr;
int i;

	EALLOW
	GPFDIR |= 0xC0;		//op1 and op2 setup
	GPBDIR |= 0x8000;	//op3 setup
	EDIS

	alarmOP1 = ALARM_OP_OK;
	alarmOP2 = ALARM_OP_OK;		//all off (open collector, so set high)
	alarmOP3 = SLOWDOWN_OP_OK;

	digout.outputtestmode = 0;
	digout.previousstatus = 0;
	digout.previousslowdown = 0;		//previous contains a count based on all slowdown latched values from all sensors
	digout.previousalarm = 0;			//previous contains a count based on all alarm latched values from all sensors
	digout.slowdownreflash = 0;		//bit set to 1 if in reflash mode
	digout.alarmreflash = 0;			//bit set to 1 if in feflash mode

	timers.alarmreflash = 0;

	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		ptr = (unsigned int*)&statusprevious[i];
		*ptr = 0;	//clear the alar flags for reflashing the outputs
	}

	for(i=0;i<MAX_NUM_CYLINDERS;i++)
	{
		cylinderalarm[i] = 0;
	}

	damagesingleprev[0] 	= 0;	//AJB 19-Aug-10
	damagesingleprev[1] 	= 0;	//AJB 19-Aug-10
	damagecylprev 		= 0;	//AJB 19-Aug-10
	damagembnprev 		= 0;	//AJB 19-Aug-10

	wioalarmprev = 0;
	wioalarmupperprev 	= 0;
	sdcardprev 			= 0;
	slavefailureprev 	= 0;
	framfailprev 		= 0;
	pccommsfailureprev 	= 0;
	wiocommsprev 		= 0;
	slemprev			= 0;	//AJB 19-Aug-10
	slemoorprev			= 0;	

	wioanaloglowprev 	= 0;
	wioanaloghighprev 	= 0;



	settings.slowdowncounter = SLOW_DOWN_START_COUNT;
	settings.slowdowncondition = SLOWDOWN_OP_OK;
}


//Process the digital ooutputs for the two state opto isolated SSR
void ProcessDigitalOP(void)
{

	// PF 23-Nov-09 Added call to AlarmTestEvent()
	// PF Gen 2 - 07-Mar-12 Old event system backend removal - 	AlarmTestEvent();
	AliveStatus();
	AlarmLevelOP();
	SlowDownLevelOP();
}


//AJB 19-Aug-10
//Control for the slow down blip, allow switching off of the blip from a modbus register
void SlowDownBlipControl(void)
{
	slowdownblipstate = SLOWDOWN_OP_OK;		//set to ok to begin
	settings.sdcardupdate = SDGENERALUPDATE;	//save to non volatile memory and the sd card
}
//AJB 19-Aug-10 EOM


// PF Gen 2 - 07-Mar-12 Old event system backend removal - 
/*
// PF 23-Nov-09 Added in AlarmTestEvent to create events for alarm output testing mode change
void AlarmTestEvent(void) {

	char eventstring[EVENTMSG_LEN_INBYTES_PART2];

	if (digout.previousstatus != digout.outputtestmode) {
		memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
		if (digout.outputtestmode == 0) {
			sprintf(eventstring,"Disabled - Normal Mode");
		} else {
			sprintf(eventstring,"Enabled - Test Mode");
		}
		LogEvent(DIGOUTTEST,HIGH_PRIORITY,NO,eventstring);
	}
	digout.previousstatus = digout.outputtestmode;
}
*/
// PF Gen 2 - 07-Mar-12 Old event system backend removal - 

// PF 23-Nov-09 EOM

//Alive output - setup the first of the three open collector ouptuts for basic alive status
//This will go open when there is a problem with the SD card
void AliveStatus(void)
{
int seton;
int noalarms;

	if(digout.outputtestmode != TRUE)
	{
	    if((config.alarmenable.bitmap & 0x01) != 0)	//check if alarm is disabled
	    {
			if(timers.statusreflash == 0)
			{
				seton = FALSE;	//clear to begin
				noalarms = TRUE;
				if(settings.sdcarderr != 0)
				{ 
					noalarms = FALSE;
					if(sdcardprev == FALSE) 			seton = TRUE; sdcardprev = TRUE;
				}
				else sdcardprev = FALSE;
				if(alarms.slavefailurelatched == TRUE)
				{
					noalarms = FALSE;
					if(slavefailureprev == FALSE) 		seton = TRUE; slavefailureprev = TRUE;
				}
				else slavefailureprev = FALSE;

				if(alarms.framfailurelatched == TRUE)
				{
					noalarms = FALSE;
					if(framfailprev == FALSE) 			seton = TRUE; framfailprev = TRUE;
				}
				else framfailprev = FALSE;
				if(alarms.pccommsfailurelatched == TRUE)
				{
					noalarms = FALSE;
					if(pccommsfailureprev == FALSE) 	seton = TRUE; pccommsfailureprev = TRUE;
				}
				else pccommsfailureprev = FALSE;
				if(waterinoil.wioalarms.commslatched == TRUE)
				{
					noalarms = FALSE;
					if(wiocommsprev == FALSE) 			seton = TRUE; wiocommsprev = TRUE;
				}
				else wiocommsprev = FALSE;
				//AJB 30-Sep-10 added for analog high and low checking (OOR)
				if(waterinoil.wioalarms.analoglow == TRUE)
				{
					noalarms = FALSE;
					if(wioanaloglowprev == FALSE) 			seton = TRUE; wioanaloglowprev = TRUE;
				}
				else wioanaloglowprev = FALSE;
				if(waterinoil.wioalarms.analoghigh == TRUE)
				{
					noalarms = FALSE;
					if(wioanaloghighprev == FALSE) 			seton = TRUE; wioanaloghighprev = TRUE;
				}
				else wioanaloghighprev = FALSE;
				//AJB 30-Sep-10 

				//AJB 19-Aug-10
				if(slem.alarms.oor == TRUE)		   //slem OOR
				{
					noalarms = FALSE;
					if(slemoorprev == FALSE)	seton = TRUE; slemoorprev = TRUE;
				}
				else slemoorprev = FALSE;
				//AJB 19-Aug-10 EOM
				//AJB 21-Sep-10
				if(rtcbat.alarms.low == TRUE)		   //battery low
				{
					noalarms = FALSE;
					if(rtcbatprev == FALSE)	seton = TRUE; rtcbatprev = TRUE;
				}
				else rtcbatprev = FALSE;
				//AJB 21-Sep-10 EOM
				if(seton == TRUE)
				{
					if(alarmOP1 == ALARM_OP_OK) alarmOP1 = ALARM_OP_FAULT;		// output on (set low)
					else		//reflash condition
					{
						alarmOP1 = ALARM_OP_OK;
						timers.statusreflash = allsensors.reflash * SECS_TO_MS_MULTIPLIER;		//set for 5ms timer (value entered in seconds)
					}
				}
				else if(noalarms == TRUE)	alarmOP1 = ALARM_OP_OK;	//no alarms so output is ok
				else alarmOP1 = ALARM_OP_FAULT;
			}
		}
		else alarmOP1 = ALARM_OP_OK;		//switch off as alarmOP1 is disabled
	}
}

//check all sensors for alarm level exceeded
//if we have a latched alarm from a sensor or deviation on a sensor the alarm output is set
//If another alarm comes up whilst the alarm is still active, the alarm reflash timer is started
//Once the alarm has been acked from the PC the output will return to healthy
void AlarmLevelOP(void)
{
unsigned int i;
unsigned int seton;
sensoralarmstruct flags;
waterinoilstruct *wioptr;
int noalarms;

	if(digout.outputtestmode != TRUE)
	{
	    //13/09/05, now checking the alarm enable disable bitmap, if disabled transitor is a steady ON
	    if((config.alarmenable.bitmap & 0x02) != 0)	//check if alarm is disabled
	    {
			//07-25-2013 FF: add for temperature support
			if(settings.temperaturealarm == TRUE)	   //temperature alarm
			{
				alarmOP2 = ALARM_OP_FAULT;
			}
			else
			{
				if(timers.alarmreflash == 0)
				{
					noalarms = TRUE;
					seton = FALSE;	//clear to begin
					for(i=0;i<allsensors.numsensors;i++)
					{
						flags = *(GetStatus2Flags(i));
						//check the latched conditions for each condition and set the output to faulty for any alarm
						//the reflash will occur after a set time and this code will not be entered until the reflash time has ended
						if(flags.alarmlatched == TRUE)
						{ 
							noalarms = FALSE;
							if(statusprevious[i].alarmlatched == FALSE) 		seton = TRUE; statusprevious[i].alarmlatched = TRUE;
						}
						else statusprevious[i].alarmlatched = FALSE;
						if(flags.devalarmlatched == TRUE)
						{
							noalarms = FALSE;
							if(statusprevious[i].devalarmlatched == FALSE) 		seton = TRUE; statusprevious[i].devalarmlatched = TRUE;
						}
						else statusprevious[i].devalarmlatched = FALSE;
						if(flags.failurelatched == TRUE)
						{
							noalarms = FALSE;
							 if(statusprevious[i].failurelatched == FALSE) 		seton = TRUE; statusprevious[i].failurelatched = TRUE;
						}
						else statusprevious[i].failurelatched = FALSE;
						if(flags.calibrationlatched == TRUE)
						{
							noalarms = FALSE;
							 if(statusprevious[i].calibrationlatched == FALSE)	seton = TRUE; statusprevious[i].calibrationlatched = TRUE;
						}
						else statusprevious[i].calibrationlatched = FALSE;
						if(flags.prewarninglatched == TRUE)
						{
							noalarms = FALSE;
							if(statusprevious[i].prewarninglatched == FALSE)	seton = TRUE; statusprevious[i].prewarninglatched = TRUE;
						}
						else statusprevious[i].prewarninglatched = FALSE;
					}
					for(i=0;i<allsensors.numsensors/2;i++)		//number of cylinders is num sensors / 2
					{
						if(cylinders[i].status2.alarmlatched == TRUE)
						{
							noalarms = FALSE;
							if(cylinderalarm[i] == FALSE)	seton = TRUE; cylinderalarm[i] = TRUE;
						}
						else cylinderalarm[i] = FALSE;
					}
					if(WIOEnabled() != 0)	//AJB 19-Aug-10 changed to check for non-zero value
					{
						wioptr = WioStructPtr();
						if(wioptr->wioalarms.alarmlatched == TRUE)
						{
							noalarms = FALSE;
							if(wioalarmprev == FALSE)	seton = TRUE; wioalarmprev = TRUE;
						}
						else wioalarmprev = FALSE;
						if(wioptr->wioalarms.alarmupperlatched == TRUE)		//deal with the upper alarm level
						{
							noalarms = FALSE;
							if(wioalarmupperprev == FALSE)	seton = TRUE; wioalarmupperprev = TRUE;
						}
						else wioalarmupperprev = FALSE;
					}
					//AJB 19-Aug-10
					if(slem.alarms.alarm == TRUE)	   //slem alarm
					{
						noalarms = FALSE;
						if(slemprev == FALSE)	seton = TRUE; slemprev = TRUE;
					}
					else slemprev = FALSE;					

					//AJB 19-Aug-10 EOM
					if(seton == TRUE)
					{
						if(alarmOP2 == ALARM_OP_OK)
						{
							alarmOP2 = ALARM_OP_FAULT;		//2nd output on (set low)
						}
						else	//reflash condition
						{
							alarmOP2 = ALARM_OP_OK;
							timers.alarmreflash = allsensors.reflash * SECS_TO_MS_MULTIPLIER;		//set for 5ms timer (value entered in seconds)
						}
					}
					else if(noalarms == TRUE)	alarmOP2 = ALARM_OP_OK;	//no alarms so output is ok
					else alarmOP2 = ALARM_OP_FAULT;
				}
			}
		}
		else alarmOP2 = ALARM_OP_OK;		//switch off as alarmOP2 is disabled
	}
}

//check all sensors for slow down level exceeded
//if we have a latched slow down alarm from a sensor or deviation on a sensor the alarm output is set
//If another alarm comes up whilst the alarm is still active, the alarm reflash timer is started
//Once the alarm has been acked from the PC the output will return to healthy

void SlowDownLevelOP(void)
{
unsigned int i;
unsigned int seton;
sensoralarmstruct flags;
int noalarms;

	if(digout.outputtestmode != TRUE)
	{
	    //13/09/05, now checking the alarm enable disable bitmap, if disabled transitor is a steady ON
	    if((config.alarmenable.bitmap & 0x04) != 0)	//check if alarm is disabled
	    {
			//07-25-2013 FF: add for temperature support
			if(settings.temperatureslowdown == TRUE)	   //temperature alarm
			{
				settings.slowdowncondition = SLOWDOWN_OP_FAULT;
			}
			else
			{
				if(timers.slowdownreflash == 0)
				{
					noalarms = TRUE;
					seton = FALSE;	//clear to begin
					for(i=0;i<allsensors.numsensors;i++)
					{
						flags = *(GetStatus2Flags(i));

						if(flags.slowdownlatched == TRUE)
						{ 
							noalarms = FALSE;
							if(statusprevious[i].slowdownlatched == FALSE) 		seton = TRUE; statusprevious[i].slowdownlatched = TRUE;
						}
						else statusprevious[i].slowdownlatched = FALSE;
						if(flags.devslowlatched == TRUE)
						{
							noalarms = FALSE;
							if(statusprevious[i].devslowlatched == FALSE) 		seton = TRUE; statusprevious[i].devslowlatched = TRUE;
						}
						else statusprevious[i].devslowlatched = FALSE;

						//AJB 19-Aug-10 added new checks for new slow downs
						if(i < 16)
						{
							if(CheckBitSet(damalarms.single[0],i) == TRUE)
							{
								noalarms = FALSE;
								if(CheckBitSet(damagesingleprev[0],i) == FALSE) 		seton = TRUE; damagesingleprev[0] = BitSet(damagesingleprev[0],i);
							}
							else damagesingleprev[0] = BitClear(damagesingleprev[0],i);
						}
						else
						{
							//AJB 21-Sep-10 changed to i-16
							if(CheckBitSet(damalarms.single[1],(i-16)) == TRUE)
							{
								noalarms = FALSE;
								if(CheckBitSet(damagesingleprev[1],(i-16)) == FALSE) 		seton = TRUE; damagesingleprev[1] = BitSet(damagesingleprev[1],(i-16));
							}
							else damagesingleprev[1] = BitClear(damagesingleprev[1],(i-16));
						}
						//AJB 19-Aug-10 EOM
					}
					//AJB 19-Aug-10 added new checks for new slow downs
					for(i=0;i<allsensors.numsensors/2;i++)	//do for number of cylinders
					{
						if(CheckBitSet(damalarms.cylinder,i) == TRUE)
						{
							noalarms = FALSE;
							if(CheckBitSet(damagecylprev,i) == FALSE) 		seton = TRUE; damagecylprev = BitSet(damagecylprev,i);
						}
						else damagecylprev = BitClear(damagecylprev,i);
						if(CheckBitSet(damalarms.mbneighbour,i) == TRUE)
						{
							noalarms = FALSE;
							if(CheckBitSet(damagembnprev,i) == FALSE) 		seton = TRUE; damagembnprev = BitSet(damagembnprev,i);
						}
						else damagembnprev = BitClear(damagembnprev,i);
						//AJB 19-Aug-10 EOM
					}					

					if(seton == TRUE)
					{
						if(settings.slowdowncondition == SLOWDOWN_OP_OK) settings.slowdowncondition = SLOWDOWN_OP_FAULT;
						else		//reflash condition
						{
							settings.slowdowncondition = SLOWDOWN_OP_OK;
							//do not set here, this will be done in timer interrupt  alarmOP3 = SLOWDOWN_OP_OK;
							timers.slowdownreflash = allsensors.reflash * SECS_TO_MS_MULTIPLIER;		//set for 5ms timer (value entered in seconds)
						}
					}
					else if(noalarms == TRUE)
					{
						settings.slowdowncondition = SLOWDOWN_OP_OK;
						//do not set here, this will be done in adc interrupt alarmOP3 = SLOWDOWN_OP_OK;	//no alarms so output is ok
					}
					else settings.slowdowncondition = SLOWDOWN_OP_FAULT;
				}
			}
		}
		else
		{
			settings.slowdowncondition = SLOWDOWN_OP_OK;
			//do not set here, this will be done in adc interrupt 
			//alarmOP3 = SLOWDOWN_OP_OK;		//switch off as alarmOP3 is disabled
		}
	}
}


//Call on power up to set the GPIO pins available on the daughter connectors to 1
//Set to one as if they are used as CS# this will be the off state
void InitOffboardGPIO(void)
{
	EALLOW
	//note: gpio3 is used on gen1.5 for the daughter board IRQ for external uart
	//MUST BE AN INPUT BIT 12
	GPBDIR |= 0x2C00;	//gpio1,2,4 as o/ps
	EDIS
	
	//clear all o/ps
	GPIO1 = 1;		//using this for FRAM so leave high for deselected
	GPIO2 = 1;		//2nd fram not currently used - set this high

	GPIO4 = 0;	//DB485_TXRXEN	leave as low for receive mode on daughter board 485

}

