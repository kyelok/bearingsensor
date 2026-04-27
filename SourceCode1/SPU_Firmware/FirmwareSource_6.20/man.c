//man.c
//Functions relating the the real time calculations taking place to meet the MAN specification

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "pccli.h"
#include "sci.h"
#include "define.h"
#include "adc.h"
#include "logging.h"
#include "globals.h"
#include "man.h"
#include "mancal.h"
#include "alarms.h"
#include "sdcard.h"
#include "slave485.h"

mbupdatestruct mbupdate;
sensorstruct sensor[MAX_NUM_CHANNELS];
functionstruct function;
int sensortempval[MAX_NUM_CHANNELS];
prewarnstruct prewarn;
enginestruct engine;

offsetstruct offsetA;	//structure of offsets to go to NONVOL
offsetstruct offsetB;	//structure of offsets to go to NONVOL
int iSensorInRepalceMode = FALSE;
int iSensorInResetMode = FALSE;
int iSensorInRepalceTimer = FALSE;
int iSensorInRepalce = 100; //Initiate the replaced sensor
unsigned long wFiveRevTime = 0;
int iSensorToMonitor = 0; //Initiate the monitor sensor

int SensorSlowDowntatus = FALSE;
const unsigned int iDmPauseDeltaRpm = 15;
unsigned int iDmPause = FALSE;
unsigned int iBarred = FALSE;
unsigned int iDeltaRPM15 = FALSE;
unsigned int PauseAlarm = FALSE;

int cppRapidReset = 0;
int delatloadgreater7 = 0;

//set aside an area of ram for the speed comp table defined for man
//this will consume 4200 words in ram
#pragma DATA_SECTION(man_comptable, ".mancomp");
//28 columns and 150 rows of data
int man_comptable[150][28];

unsigned int modalsetcounters[MAX_NUM_CHANNELS];
unsigned int modalresetcounters[MAX_NUM_CHANNELS];
unsigned int checkmanalarms[MAX_NUM_CHANNELS];

//AJB 19-Aug-10
manrefsumstruct manrefsum[MAX_NUM_CYLINDERS];
manrefstruct manref[MAX_NUM_CHANNELS];
damagemonstruct damagemon;
dynamicalarmsstruct dynalarmlevels;
dynamicalarmsstruct loaddynalarmlevels;
damalarmsstruct damalarms;
//AJB 19-Aug-10 EOM

void WriteSensorStatustoNVMEM(unsigned int chan);
void ReadSensorStatusfromNVMEM(unsigned int chan);
void WriteAllSensorStructtoNVMEM(void);
void ReadAllSensorStructfromNVMEM(void);
void ReadMANCompTablefromNVMEM(void);

void WriteEngineStructtoNVMEM(void);
void ReadEngineStructfromNVMEM(void);

void SensorSlowDown(unsigned int chan, int val,unsigned int rpm);
void SensorAlarm(unsigned int chan, int val, unsigned int rpm);
void SensorDeviationSlowDown(unsigned int chan, int val, unsigned int rpm);
void SensorDeviationAlarm(unsigned int chan,int val, unsigned int rpm);
void CylinderDevAlarm(unsigned int num, int val, unsigned int rpm);

int SensorNoiseRemoval(unsigned int num,int val);
int NoiseFilterApplied(unsigned int chan, unsigned int rpm);
int SensorCompensation(unsigned int num, int val, unsigned int rpm);
int ApplyOffset(unsigned int num, int val);
int SensorDeviation(unsigned int num, int val);

void CylinderAverage(unsigned int num);
void CylinderDeviation(unsigned int num);

int GetRPMCompVal(unsigned int chan, unsigned int rpm);

void PrewarningAlarmReset(int chan);
void PreWarningCalc(void);
void EngineRunTimeUpdate(void);

//AJB 19-Aug-10
void MANRefCalcs(int numsens, int rpm);
int ApplyImmOffset(unsigned int num, int val);
int SensorImmCompensation(unsigned int num, int val, unsigned int rpm);
void CylinderSum(unsigned int numsens);
void MBNeighbourSum(int numsens);
void CylNeighbourRegSet(void);
void MBNeighbourRegSet(void);
void DynamicAlarmLevel(int rpm, float load);
float CalcAlarmLevel1(int level, float deltarpm);
float CalcAlarmLevel2(int level, float deltarpm);
float CalcAlarmLevel3(int level, float deltaLoad);
float CalcAlarmLevel4(int level, float deltaLoad);
void SensorDamageMonSlowDown(int chan,int val,int rpm);
void CylDamageMonSlowDown(unsigned int num, int val, unsigned int rpm);
void MBNeighbourDamageMonSlowDown(unsigned int num, int val, unsigned int rpm);
void ClearSensorDamageMonSlowDown(int chan);
void ClearCylDamageMonSlowDown(unsigned int num);
void ClearMBNeighbourDamageMonSlowDown(unsigned int num);
int FindMaxRPMAlarm(float val1, float val2);
//AJB 19-Aug-10 EOM

//Clear the man comp table to zero
//If called from the modbus registers, type is set to 1, otherwise set to 0
//Can be used on instialsion of new fram on daughter card
void ClearMANTable(int type) // PF Gen 2 - 29-May-12 Added in type
{
int i;
int j;

	for(i=0;i<NUM_SPEED_REF;i++)	//clear for all speed points
	{
		for(j=0;j<MAX_NUM_CHANNELS;j++)	//clear for all channels
		{
			man_comptable[i][j] = 0;
		}
	}
	WriteMANCompTabletoNVMEM();
	//clear now - do not set the flag for checking in the main loop
		// PF Gen 2 - 29-May-12 Added in check to see whether to write file instant or during main loop
	if (type == 0) { // Instant write
		MANCompTabletoSDCardFile((char *)&sdcarddir.configdir,0);	//sequence number always as zero
	} else { // Write during loop
		settings.sdcardupdate = SDMANCOMPTABLEUPDATE;
	}
	// PF Gen 2 - 29-May-12 EOM
}


// Clear the channels that are set for calibration.  if not set the channel is not cleared
void ClearSelectiveMANTable(void)
{
int i;
int j;
	//approx 50736 cycles - < 1ms completion time for all loops
	for(j=0;j<MAX_NUM_CHANNELS;j++)	//clear for all channels
	{
		//only clear the channel if it is cal mode
		if(sensor[j].status1.calmode == TRUE)
		{
			//clear for all speed points 
			for(i=0;i<NUM_SPEED_REF;i++) man_comptable[i][j] = 0;
		}
	}

	WriteMANCompTabletoNVMEM();
	MANCompTabletoSDCardFile((char *)&sdcarddir.configdir,0);	//sequence number always as zero
}

void SetupNormalModeAlarmLevels(void)
{
	settings.slowdownlevel 		= allsensors.slowdownlevel; 		 	//abs slow down level filtered val
	settings.alarmlevel 		= allsensors.alarmlevel;			 	//abs alarm limit used during running and cal (filtered val)
	settings.slowdowndevlevel 	= allsensors.slowdowndevlevel;			//slow down deviation level
	settings.alarmdevlevel 		= allsensors.alarmdevlevel;				//alarm deviaiton level
	settings.cylinderalarmlevel = allsensors.cylinderalarmlevel;		//cylinder alarm level
}

//carry out initialisation of the sensor related ram etc
void InitSensors(void)
{
unsigned int i;

	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		sensor[i].initialval = 0;
		sensor[i].precomp = 0;
		sensor[i].postcomp = 0;
		sensor[i].deviation = 0;
		sensor[i].newval = 0;
		sensor[i].postfilter = 0;
		sensor[i].endresult = 0;
		sensor[i].rpm = 0;
		sensor[i].prt = 0;
		sensortempval[i] = 0;
	}
	mbupdate.status1 = 0xFFFF;	
	iRepaidWearReset = FALSE;
}

//initialise the status 1 flags to zero
//Called on power up
//Necessary to clear all the flags to zero when the unit is in slave mode
//If in master mode this will be overwritten with the corect status from nvmem or sd card
void InitStatus1Flags(void)
{
unsigned int i;
unsigned int *ptr;

		for(i=0;i<MAX_NUM_CHANNELS;i++)
		{
			ptr = (unsigned int*)Status1Flags(i);
			*ptr = 0;
		}
}

//Set enabled or disabled, only 0 or 1 allowed
void SetSensorEnabled(unsigned int chan, int val)
{
	if(val == 1) sensor[chan].status1.enabled = 1;
	else sensor[chan].status1.enabled = 0;
}

//Check if a channel is enabled return the state
//State is zero or 1 only
unsigned int GetSensorEnabled(unsigned int chan)
{
	return(sensor[chan].status1.enabled);
}

//Set cal mode 0 or 1
void SetCalMode(unsigned int chan, int val)
{
	if(val == 1) sensor[chan].status1.calmode = ENABLED;
	else sensor[chan].status1.calmode = DISABLED;
}

//Set enabled or disabled, only 0 or 1 allowed
void SetAlarmMask(unsigned int chan, int val)
{
	if(val == 1) sensor[chan].status1.alarmmask = 1;
	else sensor[chan].status1.alarmmask = 0;
}


//State is zero or 1 only
unsigned int GetSensorAlarmMask(unsigned int chan)
{
	return(sensor[chan].status1.alarmmask);
}


//Retrieve the rpm as an integer
//Retrieve from the correct sensor, for gen1.5 this will be the same rpm for all
unsigned int GetRPM(unsigned int chan)
{
	//get the rpm from the first sensor and return
	// PF 02-Oct-09 Test if channel is disabled to return 0 rpm
	if (sensor[chan].status1.enabled == TRUE) {
		return(sensor[chan].rpm);
	} else {
		return(0);
	}

}

//Check if the rpm from the first channel is valid (i.e. is the channel operating correctly)
//If this not the case use the rpm from another channel
//Pass in unit to check SPU1 or 2, enter with 1 or 2 only
unsigned int GetCheckedRPM(int unit)
{
unsigned int * flagptr;
int i;
int min;

	if(unit == 2) min = allsensors.numsensorsspu1;
	else min = 0;	//default to spu 1
	for(i=min;i<(MAX_NUM_CHANNELS_SPU+min);i++)
	{
		flagptr = (unsigned int*)Status3Flags(i);		//get ptr to status3 for channel i
		if(*flagptr == 0) return(GetRPM(i)); 			//find decent value and return as rpm
	}
	return(0);	//return zero if we did not find a decent rpm from 14 channels!
}


//Modal rpm can be used to find out if any channel is out of range with its rpm reading
//This will be flagged up as an error within the status3flags
//Set flag to 1 to carry out calculation otherwise just return value
unsigned int GetModalRPM(int flag)
{
status3struct * flagptr;
unsigned int i;
unsigned int k;
int modal[MAX_NUM_CHANNELS][2];	//array for diffrent rpms and number at that rpm
unsigned int pos;
int rpmval;
static int rpmuse;
int modaluse;
int numsens;

	if(flag == 1)
	{

		pos = 0;

		for(i=0;i<allsensors.numsensors;i++)
		{
			//must be able to detect zero as a modal otherwise if one channels sees an rpm and the others dont zero is not used
			modal[i][0] = -1;	//seed negative to begin otherwise we will never detect 0 on the modal value
			modal[i][1] = 0;
		}
		//do not use spu 2 if comms is lost
		if(allsensors.numsensorsspu2 != 0 && slave485mb.slavenotready == FALSE) numsens = allsensors.numsensors;
		else numsens = allsensors.numsensorsspu1;
		for(i=0;i<numsens;i++)		//setup array with count of how many channels at single rpm
		{
			if(sensor[i].status1.enabled == TRUE)
			{
				rpmval = (int)GetRPM(i);
				k = 0;
				while(k < allsensors.numsensors && modal[k][0] != rpmval) k++;
				if(k == allsensors.numsensors)
				{
					modal[pos][0] = (unsigned int)rpmval;
					modal[pos][1]++;
					pos++;
				}
				else modal[k][1]++;
			}
		}
		rpmuse = (int)modal[0][0];
		modaluse = modal[0][1];
		for(i=1;i<allsensors.numsensors;i++)	//check for the most at a particular rpm and use the most popular value as reported rpm
		{
			if(modal[i][1] >= modaluse)
			{
				modaluse = modal[i][1];
				rpmuse = modal[i][0];
			}
		}
		if(rpmuse != 0)		//only check if modal is not zero
		{
			for(i=0;i<allsensors.numsensors;i++)
			{
				if(sensor[i].status1.enabled == TRUE)
				{
					rpmval = (int)GetRPM(i);
					flagptr = Status3Flags(i);		//get ptr to status3 for channel i
					//check if within usable range
					if(rpmval > (rpmuse+RPM_MODAL_OFFSET) || rpmval < rpmval-RPM_MODAL_OFFSET && rpmval != 0)
					{
						if(modalsetcounters[i] > 3)
						{
							flagptr->rpmoor = 1;
						}
						else
						{
							modalsetcounters[i]++;
						}
						modalresetcounters[i] = 0;	//clear the count - this is an exit count for the fault
					}
					else
					{
						modalsetcounters[i] = 0;
						if(modalresetcounters[i] > 10)	//will take 30secs at 20rpm
						{
							flagptr->rpmoor = 0;
						}
						else modalresetcounters[i]++;
					}
				}
				else flagptr->rpmoor = 0;	//clear down the oor flag if disabled
			}
		}
	}
	if(flag == 2)
	{
		rpmuse = 0;	//set to zero once all channels are zero
	}
	return((unsigned int)rpmuse);
}

//Set the rpm.  currently this is from the interrupt on the dsp
//This may change in the future for rpm retrieved on a per sensor basis
//This is set within the sensor structure for each channel
void SetRPM(unsigned int rpmin)
{
unsigned int i;

	for(i=0;i<MAX_NUM_CHANNELS_SPU;i++) SetRPMChan(i,rpmin);	//copy into all sensor structures for all channels
}

		 
//AJB 19-Aug-10 new function
//THis function is used without the rpm stable check
void SetImmScaledValue(unsigned int chan, int val)
{
	//trap in order to not cause the maths to go crazy anywhere further down the line
	if(val < SCALEDVAL_LIMIT) sensor[chan].immediateval = val;
	else sensor[chan].immediateval = SCALEDVAL_LIMIT;	//limit to 3500 microns
}
//AJB 19-Aug-10 EOM


//Set the scaled initial proximity value for a channel/
//Pass in the channel to store and the value as an integer
//Chan from 0 to 27
void SetScaledValue(unsigned int chan, int val)
{
	//trap in order to not cause the maths to go crazy anywhere further down the line
	if(val < SCALEDVAL_LIMIT) sensor[chan].initialval = val;
	else sensor[chan].initialval = SCALEDVAL_LIMIT;	//limit to 3500 microns
}

int GetScaledValue(unsigned int chan)
{ return(sensor[chan].initialval);}


int GetPreCompValue(unsigned int chan)
{
	if(sensor[chan].status1.enabled == FALSE) return(DISABLED_LOG_VALUE);
	// PF Gen 2 - 08-Dec-11 During DC mode disable analogue fault codes
	if(settings.dcmode == 0) {
		if(status3[chan].low 	 == TRUE) return(LOWLEVEL_LOG_VALUE);
		if(status3[chan].high 	 == TRUE) return(HILEVEL_LOG_VALUE);
		if(status3[chan].nopulse == TRUE) return(NO_PULSE_LOG_VALUE);
		if(status3[chan].rpmoor	 == TRUE) return(RPMOOR_LOG_VALUE);
	}
	return(sensor[chan].precomp);
	// PF Gen 2 - 08-Dec-11 EOM
}

//Set the precomp value - this is also used in dcmode and may contain the value being peak held
//Pass in the channel to store and the value as an integer
//Chan from 0 to 27
void SetPreCompValue(unsigned int chan, int val)
{
	if(val < SCALEDVAL_LIMIT) sensor[chan].precomp = val;
	else sensor[chan].precomp = SCALEDVAL_LIMIT;	//limit to SCALEDVAL_LIMIT microns
}


int GetPostCompValue(unsigned int chan)
{ return(sensor[chan].postcomp);}

int GetPostFilteredValue(unsigned int chan)
{
	return(FloattoIntRound(sensor[chan].postfilter)); //add on 0.5 so we dont loose resolution
}

int GetEndResultValue(unsigned int chan)
{
	// PF 01-Oct-09 Add line below to return disabled on sensor disabled rather than the condition of the input
	if(sensor[chan].status1.enabled == FALSE) return(DISABLED_LOG_VALUE);
	if(status3[chan].low 	 == TRUE) return(LOWLEVEL_LOG_VALUE);
	if(status3[chan].high 	 == TRUE) return(HILEVEL_LOG_VALUE);
	if(status3[chan].nopulse == TRUE) return(NO_PULSE_LOG_VALUE);
	if(status3[chan].rpmoor	 == TRUE) return(RPMOOR_LOG_VALUE);
	//if disabled end result will have been set in the manmodules			  
	return(sensor[chan].endresult);
}

int GetSensorDeviationValue(unsigned int chan)
{
	if(sensor[chan].status1.enabled == FALSE) return(DISABLED_LOG_VALUE);
	if(status3[chan].low 	 == TRUE) return(LOWLEVEL_LOG_VALUE);
	if(status3[chan].high 	 == TRUE) return(HILEVEL_LOG_VALUE);
	if(status3[chan].nopulse == TRUE) return(NO_PULSE_LOG_VALUE);
	if(status3[chan].rpmoor	 == TRUE) return(RPMOOR_LOG_VALUE);
	return(sensor[chan].deviation);
}


int GetCylinderAverageValue(unsigned int num)
{
	if(sensor[num*2].status1.enabled == FALSE || sensor[(num*2)+1].status1.enabled == FALSE)return(DISABLED_LOG_VALUE);		//set to disabled value if not enabled
	if(sensor[num*2].status1.replaced == TRUE || sensor[(num*2)+1].status1.replaced == TRUE)return(REPLACED_LOG_VALUE);
	if(status3[num*2].low 	 == TRUE  || status3[(num*2)+1].low) 			 				return(LOWLEVEL_LOG_VALUE);
	if(status3[num*2].high 	 == TRUE  || status3[(num*2)+1].high) 			 				return(HILEVEL_LOG_VALUE);
	if(status3[num*2].nopulse == TRUE || status3[(num*2)+1].nopulse == TRUE) 				return(NO_PULSE_LOG_VALUE);
	if(status3[num*2].rpmoorlatched == TRUE  || status3[(num*2)+1].rpmoorlatched) 			return(RPMOOR_LOG_VALUE);
	//replaced mode set if it is not an error condition
	return(cylinders[num].average);
}


int GetCylinderDeviationValue(unsigned int num)
{
	if(sensor[num*2].status1.enabled == FALSE || sensor[(num*2)+1].status1.enabled == FALSE)return(DISABLED_LOG_VALUE);		//set to disabled value if not enabled
	if(sensor[num*2].status1.replaced == TRUE || sensor[(num*2)+1].status1.replaced == TRUE)return(REPLACED_LOG_VALUE);
	if(status3[num*2].low 	 == TRUE  || status3[(num*2)+1].low) 			 				return(LOWLEVEL_LOG_VALUE);
	if(status3[num*2].high 	 == TRUE  || status3[(num*2)+1].high) 			 				return(HILEVEL_LOG_VALUE);
	if(status3[num*2].nopulse == TRUE || status3[(num*2)+1].nopulse == TRUE) 				return(NO_PULSE_LOG_VALUE);
	if(status3[num*2].rpmoorlatched == TRUE  || status3[(num*2)+1].rpmoorlatched) 			return(RPMOOR_LOG_VALUE);
	//replaced mode set if it is not an error condition
	return(cylinders[num].deviation);
}

//Return a pointer to the status 1 settings
//This pointer can be used to set enabled/disabled calmode and alarmmask
status1struct * Status1Flags(unsigned int chan)
{
	return(&sensor[chan].status1);
}

//Set the the rpm for a specified channel, this can be used for setting data from SPU2 (slave etc)
void SetRPMChan(unsigned int chan, unsigned int rpm)
{
	//trap out of range values for RPM
	if(rpm < RPM_TRAP) sensor[chan].rpm = rpm;
	else sensor[chan].rpm = 0;
	if(rpm == 0)
	{
		modalsetcounters[chan] = 0;		//reset to zero on the rpm being set to zero, used for rpm stability (OOR) checks
		checkmanalarms[chan] = 0;		//reset the man alarm checking counter (number of cycles before checking the man alarms)
	}
}


//return the status 1 word as an unsigned int
unsigned int ReadStatus1Int(unsigned int chan)
{
unsigned int *ptr;
unsigned int temp;

	ptr = (unsigned int*)&sensor[chan].status1;
	temp = *ptr;
	return(temp);
}

//Return the status 2 flags relating to alarms, slowdown latched etc.
//Return this as a ptr to the sensor alarm field
sensoralarmstruct * GetStatus2Flags(unsigned int chan)
{
	return(&sensor[chan].status2);
}

//return an int * to a position in the man table
//Enter with chan, and speed point reference
int * MANCompTable(unsigned int chan, unsigned int refpoint)
{
	if(chan < MAX_NUM_CHANNELS && refpoint < NUM_SPEED_REF) return(&man_comptable[refpoint][chan]);
	else return(&man_comptable[0][0]);
}

//Retrieve the rpm compensation value from the table
//Enter channel number from 0 and rpm point to retrieve
int GetRPMCompVal(unsigned int chan, unsigned int rpm)
{
	return(man_comptable[rpm][chan]);
}

//Function to initialise information relating the to MAN setup
//This function should be called on power up
void InitMAN(void)
{
unsigned int i;
unsigned int j;
unsigned int *ptr;

	//clear the structures relating to the 28 channels after this the status is loaded for each structure
	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		ptr = (unsigned int*)&sensor[i];
		for(j=0;j<sizeof(sensorstruct);j++) ptr[j] = 0;		//this will zero the sensors status2 (load back afterwards from FRAM)
		modalsetcounters[i] = 0;
		modalresetcounters[i] = 0;
		checkmanalarms[i] = 0;
	}

	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		ReadSensorStatusfromNVMEM(i);
		ReadOffsetAfromNVMEM(i);
		ReadOffsetBfromNVMEM(i);
	}
	ReadSpeedCompStructfromNVMEM();
	ReadMANCompTablefromNVMEM();
	ReadEngineStructfromNVMEM();

	for(i=0;i<MAX_NUM_CYLINDERS;i++)
	{
		cylinders[i].average = 0;
		cylinders[i].deviation = 0;
		ptr = (unsigned int*)&cylinders[i].status1;
		*ptr = 0;	//not used set to zero
	}

	mbupdate.status1 = 0xFFFF;
	SetRPM(0);	//clear to begin
	NominalSpeedUpdate();

	PreWarningPowerUpInit();		//init the prewarning checks

	//init the alarm flags, sensor alarm flags (status2), cylinder alarm flags (status2) and status 3 flags
	ReadNVMemory(FRAM1,ALARMSLATCHED_DATA_OFFSET,&alarms,1);
	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		//use i * 2, as pointer in bytes not words (always storing a word)
		ReadNVMemory(FRAM1,SENSORSTATUS2_ALARMSLATCHED_DATA_OFFSET+(i*2),&sensor[i].status2,1);				
		if(i < MAX_NUM_CHANNELS_SPU) ReadNVMemory(FRAM1,CYLINDERSTATUS2_ALARMSLATCHED_DATA_OFFSET+(i*2),&cylinders[i].status2,1);
		ReadNVMemory(FRAM1,STATUS3_ALARMSLATCHED_DATA_OFFSET+(i*2),&status3[i],1);	//
		status3[i].unused5 = 0;		//set the unused bits to zero	(otherwise if set never get cleared)
		status3[i].unused6 = 0;		//this will confuse the front end if bits are set
		status3[i].unused7 = 0;
		status3[i].unused8 = 0;
		status3[i].unused13 = 0;
		status3[i].unused14 = 0;
		status3[i].unused15 = 0;
		status3[i].unused16 = 0;
	}
	//AJB 19-Aug-10
	ReadNVMemory(FRAM1,DAMAGE_SINGLE_ALARMS_DATA_OFFSET,&damalarms.single,2);
	ReadNVMemory(FRAM1,DAMAGE_CYL_ALARMS_DATA_OFFSET,&damalarms.cylinder,1);
	ReadNVMemory(FRAM1,DAMAGE_MBSUM_ALARMS_DATA_OFFSET,&damalarms.mbneighbour,1);
	//AJB 19-Aug-10 EOM

}

//update the engine runtime once a minute - only when the engine is above 12RPM i.e. running
//Update at the same time as making the long term log entry - THis is on a 1 minutes basis from the real time clock
void EngineRunTimeUpdate(void)
{
unsigned int rpm;

	rpm = GetModalRPM(0);
	if(rpm > MINIMUM_RPM)	//check against the fixed minimum rpm, if greater, then clock this as ok
	{
		engine.runtime++;		//increment the runtime by 1 minute
		WriteEngineStructtoNVMEM();	//store the runtime back to fram
	}
}


void ReadEngineStructfromNVMEM(void)
{
unsigned int position;
unsigned int len;
unsigned int *ptr;

	position = ENGINESTRUCT_OFFSET;
	ptr = (unsigned int*)&engine;
	len = sizeof(enginestruct);
	ReadNVMemory(FRAM1,position,ptr,len);
}



void WriteEngineStructtoNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = ENGINESTRUCT_OFFSET;
	ptr = (unsigned int*)&engine;
	len = sizeof(enginestruct);
	WriteNVMemory(FRAM1,position,ptr,len);
}


//on updating the nominal speed from the modbus register update the min and max rpm
//fram updated from main loop
void NominalSpeedUpdate(void)
{
float speedband;
int i;
int j;

	allsensors.rpmmax = (unsigned int)((float)allsensors.nominalspeed * (UPPER_RPM_PERCENT));	//110% point
	allsensors.rpmmin = (unsigned int)((float)allsensors.nominalspeed * (LOWER_RPM_PERCENT));	//20% point
	
	for(j=0;j<3;j++)
	{
		for(i=0;i<2;i++)
		{
			speedband = speedcompcoeffs.speedbands[j][i];
			speedband *= allsensors.nominalspeed;
			speedband /= 100;		//divide by 100 as speedband stored as %
			calibration.speedcalpoints[j][i] = (unsigned int)speedband;
		}
	}
}

//Carry out checks for alarm conditions and failures
void MANAlarmChecks(unsigned int rpm)
{
unsigned int i;
unsigned int j;

	//checkmanalarms - set from the man moduels code only check the alarms every 10 iterations
	//this helps stop erroneous alarms if the channel goes unstable, sensor faulty etc.
	for(i=0;i<allsensors.numsensors;i++)
	{
		// PF 16-Nov-09 Added || sensor[i].status1.enabled == 0 to check alarms if channel is disabled
		if(checkmanalarms[i] >= MAN_ALARM_CHECK_CYCLES || sensor[i].status1.enabled == 0)
		{
			//the following alarms will latch and log an alarm - the status is found within the sensor related structure
			SensorAlarm(i,sensor[i].endresult,rpm);				//channel based alarm level check
			SensorDeviationAlarm(i,sensor[i].deviation,rpm);	//deviation alarm per channel, latched and logged
			SensorSlowDown(i,sensor[i].endresult,rpm);			//check if a channel needs to set the slow down alarm
			SensorDeviationSlowDown(i,sensor[i].deviation,rpm);	//check the deviation alarm per channel
			//12-14-2012 FF: DM pause is delta rpm higher than 15
			if(abs(manref[i].refvalue_int) > 0x3FFF) manref[i].refvalue_int = 0;
			if(iDmPause == TRUE || PauseAlarm == TRUE) { ClearSensorDamageMonSlowDown(i); }	//AJB 19-Aug-10 check the manref.refvalue per channel
			else { SensorDamageMonSlowDown(i,manref[i].refvalue_int,rpm); }
		}
	}
	j = 0;
	for(i=0;i<(allsensors.numsensors/2);i++)
	{
		// PF 06-Nov-09 changed && to || so cylinder alarms are checked even when checkmanalarm[??] are out of synch
		// PF 16-Nov-09 Added || sensor[j].status1.enabled == 0 || sensor[j+1].status1.enabled == 0 to check alarms if channel is disabled
		if((checkmanalarms[j] >= MAN_ALARM_CHECK_CYCLES) || (checkmanalarms[j+1] >= MAN_ALARM_CHECK_CYCLES) || sensor[j].status1.enabled == 0 || sensor[j+1].status1.enabled == 0)
		{
			CylinderDevAlarm(i,cylinders[i].deviation,rpm);	//cyclinder deviation check - check against cylinders and set the bits in the status within cylinders structure
			//12-14-2012 FF: DM pause is delta rpm higher than 15
			if(iDmPause == TRUE || PauseAlarm == TRUE) 
			{
				ClearCylDamageMonSlowDown(i);
				ClearMBNeighbourDamageMonSlowDown(i);				
			}
			else
			{
				CylDamageMonSlowDown(i,manrefsum[i].cylsum,rpm);		//AJB 19-Aug-10 check the cylinder sum value against alarm limit
				MBNeighbourDamageMonSlowDown(i,manrefsum[i].mbnsum,rpm);	//AJB 19-Aug-10 check the mb sum
			}
		}
		j++;	//bump twice for cylinders
		j++;
	}
	//clear the alarm checks once greater than MAN_ALARM_CHECK_CYCLES for rechecking in MAN_ALARM_CHECK_CYCLES cycles time
	for(i=0;i<allsensors.numsensors;i++)
	{
		if(checkmanalarms[i] >= MAN_ALARM_CHECK_CYCLES) checkmanalarms[i] = 0;
	}

}

//the noise filter can be switched on and off from the cli and from the modbus registers
//This function should be called in order to precondition the postfilter values when it is switched on
void EnableNoiseFilter(int flag)
{
int i;

	if(flag == FALSE)		//switch off the noise removal filter
	{
		function.enabled.sensornoiseremoval = FALSE;
		//postfilter values will be output as 32767
	}
	else					//switch on and precondition the postfilter values
	{						//must be preconditioned otherwise will recover from the 32767 value in the off state
		for(i=0;i<MAX_NUM_CHANNELS;i++) sensor[i].postfilter = sensor[i].endresult;	//set to the endrsult figure to precondition
		function.enabled.sensornoiseremoval = TRUE;
	}
}

//AJB 19-Aug-10
//Function to load back the reference levels from fram on startup
void StartupRefReload(void)
{
unsigned long magic;
int i;
int tempbuf1[MAX_NUM_CHANNELS];
int tempbuf2[MAX_NUM_CHANNELS];

  	magic = MAGIC_NUMBER;	//send 0x12345678
  	ReadNVMemory(FRAM2,REFFLAG_DATA_OFFSET,(unsigned int*)&magic,2);			//read magic num
	if(magic == MAGIC_NUMBER)
	{
		ReadNVMemory(FRAM2,REFLEVEL_DATA_OFFSET,&tempbuf1,28);			//read the 28 channel ref levels
		ReadNVMemory(FRAM2,PRESENTSTATE_DATA_OFFSET,&tempbuf2,28);		//read the 28 channel present state levels
		for(i=0;i<MAX_NUM_CHANNELS;i++)
		{
			manref[i].reflevel = (float)tempbuf1[i];	//cast value to a float
			manref[i].reflevel_int = tempbuf1[i];
			manref[i].presentstate = (float)tempbuf2[i];
			manref[i].presentstate_int = tempbuf2[i];
			damagemonignore[i] = 0;		//AJB 19-Aug-10 zero to begin as will load values from fram
		}
	}
	else	//set to zero if no previous value found
	{
		for(i=0;i<MAX_NUM_CHANNELS;i++)
		{
			manref[i].reflevel = 0;
			manref[i].reflevel_int = 0;
			manref[i].presentstate = 0;
			manref[i].presentstate_int = 0;
			damagemonignore[i] = 3;			//AJB 19-Aug-10 allow the values to filter through initially
		}
	}
	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		manref[i].refvalue = 0;
		manref[i].refvalue_int = 0;
	}

	for(i=0;i<MAX_NUM_CYLINDERS;i++)
	{
		manrefsum[i].cylsum = 0;
		manrefsum[i].mbnsum = 0;
	}

	dynalarmlevels.deltarpm 	= 0;
	dynalarmlevels.deltarpm_int	= 0;
	dynalarmlevels.rpmav 		= 0;
	dynalarmlevels.rpmav_int	= 0;
	dynalarmlevels.deltarpmprev 		= 0;
	dynalarmlevels.deltarpmprev_int		= 0;
	dynalarmlevels.single 		= damagemon.alarmlevelsingle;
	dynalarmlevels.cyl 			= damagemon.alarmlevelcyl;
	dynalarmlevels.mbsum 		= damagemon.alarmlevelmbsum;
	dynalarmlevels.singleprev 	= damagemon.alarmlevelsingle;
	dynalarmlevels.cylprev 		= damagemon.alarmlevelcyl;
	dynalarmlevels.mbsumprev 	= damagemon.alarmlevelmbsum;
	dynalarmlevels.single1		= damagemon.alarmlevelsingle;
	dynalarmlevels.cyl1			= damagemon.alarmlevelcyl;
	dynalarmlevels.mbsum1		= damagemon.alarmlevelmbsum;
	dynalarmlevels.single2		= damagemon.alarmlevelsingle;
	dynalarmlevels.cyl2			= damagemon.alarmlevelcyl;
	dynalarmlevels.mbsum2		= damagemon.alarmlevelmbsum;
	dynalarmlevels.single1_int	= damagemon.alarmlevelsingle;
	dynalarmlevels.cyl1_int	  	= damagemon.alarmlevelcyl;
	dynalarmlevels.mbsum1_int 	= damagemon.alarmlevelmbsum;
	dynalarmlevels.single2_int	= damagemon.alarmlevelsingle;
	dynalarmlevels.cyl2_int	  	= damagemon.alarmlevelcyl;
	dynalarmlevels.mbsum2_int 	= damagemon.alarmlevelmbsum;
	dynalarmlevels.hits			= 0;

	loaddynalarmlevels.deltarpm = 0;
	loaddynalarmlevels.deltarpm_int = 0;
	loaddynalarmlevels.deltarpmprev = 0;
	loaddynalarmlevels.deltarpmprev_int = 0;
	loaddynalarmlevels.single 		= damagemon.alarmlevelsingle;
	loaddynalarmlevels.cyl 			= damagemon.alarmlevelcyl;
	loaddynalarmlevels.mbsum 		= damagemon.alarmlevelmbsum;
	loaddynalarmlevels.singleprev 	= damagemon.alarmlevelsingle;
	loaddynalarmlevels.cylprev 		= damagemon.alarmlevelcyl;
	loaddynalarmlevels.mbsumprev 	= damagemon.alarmlevelmbsum;
	loaddynalarmlevels.single1		= damagemon.alarmlevelsingle;
	loaddynalarmlevels.cyl1			= damagemon.alarmlevelcyl;
	loaddynalarmlevels.mbsum1		= damagemon.alarmlevelmbsum;
	loaddynalarmlevels.single2		= damagemon.alarmlevelsingle;
	loaddynalarmlevels.cyl2			= damagemon.alarmlevelcyl;
	loaddynalarmlevels.mbsum2		= damagemon.alarmlevelmbsum;
	loaddynalarmlevels.single1_int	= damagemon.alarmlevelsingle;
	loaddynalarmlevels.cyl1_int	  	= damagemon.alarmlevelcyl;
	loaddynalarmlevels.mbsum1_int 	= damagemon.alarmlevelmbsum;
	loaddynalarmlevels.single2_int	= damagemon.alarmlevelsingle;
	loaddynalarmlevels.cyl2_int	  	= damagemon.alarmlevelcyl;
	loaddynalarmlevels.mbsum2_int 	= damagemon.alarmlevelmbsum;
	loaddynalarmlevels.hits			= 0;
	
	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		fSpeedCompensated5Total[i] = 0;
		fSpeedCompensated5Avg[i] = 0;
	}
	wSpeedCompensated5Cnt = 0;

	CylNeighbourRegSet();
	MBNeighbourRegSet();
}
//AJB 19-Aug-10 EOM



//AJB 19-Aug-10
void CylNeighbourRegSet(void)
{
int i;
int condition;
int alarmcondition;
unsigned int bitset;

	damagemon.cylneighbour = 0;
	damagemon.cylneighbouralarms = 0;
	bitset = 1;	//bit to shift
	for(i=0;i<MAX_NUM_CYLINDERS;i++)
	{
		condition = 0;
		alarmcondition = 0;
		if(sensor[i*2].status1.enabled != 0 && sensor[(i*2)+1].status1.enabled != 0)	//check if this channel is enabled
		{
			//check if in failure mode (bit will be set if so)
			if(sensor[i*2].status2.failure == 1 || sensor[(i*2)+1].status2.failure == 1)
			{
				condition = 1;
				alarmcondition = 1;
			}
			if(sensor[i*2].status1.replaced == 1 || sensor[(i*2)+1].status1.replaced == 1)
			{
				condition = 1;
				alarmcondition = 1;
			}
			if(sensor[i*2].status1.alarmmask == 1 || sensor[(i*2)+1].status1.alarmmask == 1)
			{
				alarmcondition = 1;
			}
		}
		else
		{
			condition = 1;
			alarmcondition = 1;
		}

		if(condition == 0)	//only allow if not in failure or replaced mode and enabled
		{
			damagemon.cylneighbour |= bitset;		//set the bit if OK
		}
		if(alarmcondition == 0)	//only allow if not in failure or replaced mode and enabled
		{
			damagemon.cylneighbouralarms |= bitset;		//set the bit if OK
		}
		bitset <<= 1;	//shift relating to cylinder
	}
}
//AJB 19-Aug-10 EOM


//AJB 19-Aug-10
void MBNeighbourRegSet(void)
{
int i;
int j;
int condition;
int alarmcondition;
unsigned int bitset;

	damagemon.mbneighbour = 0;			//set to zero to begin
	damagemon.mbneighbouralarms = 0;	//set to zero to begin
	bitset = 1;	//bit to shift
	j = 1;
	for(i=1;i<MAX_NUM_CYLINDERS;i++)
	{
		condition = 0;
		alarmcondition = 0;
		if(sensor[j].status1.enabled != 0 && sensor[j+1].status1.enabled != 0)	//check if this channel is enabled
		{
			//check if in failure mode (bit will be set if so)
			if(sensor[j].status2.failure == 1 || sensor[j+1].status2.failure == 1)
			{
				alarmcondition = 1;
				condition = 1;
			}
			if(sensor[j].status1.replaced == 1 || sensor[j+1].status1.replaced == 1)
			{
				alarmcondition = 1;
				condition = 1;
			}
			if(sensor[j].status1.alarmmask == 1 || sensor[j+1].status1.alarmmask == 1)
			{
				alarmcondition = 1;
			}
			if(damagemon.ccsplit == i)
			{
				alarmcondition = 1;
				condition = 1;		//split define at position i therefore set to zero for this point
			}
		}
		else
		{
			alarmcondition = 1;
			condition = 1;
		}

		if(condition == 0)	//only allow if not in failure or replaced mode and enabled
		{
			damagemon.mbneighbour |= bitset;		//set the bit if OK
		}
		if(alarmcondition == 0)
		{
			damagemon.mbneighbouralarms |= bitset;		//set the bit if OK
		}
		bitset <<= 1;	//shift relating to mbsum bit
		j+=2;
	}
}
//AJB 19-Aug-10 EOM

//AJB 19-Aug-10 added for MAN damage monitoring
void CylinderSum(unsigned int numsens)
{
int i;
unsigned int bitset;

	bitset = 1;	//set to first bit to begin
	for(i=0;i<numsens/2;i++) 
	{
		if(abs(manref[i*2].refvalue_int) > 0x3FFF) manref[i*2].refvalue_int = 0;
		if(abs(manref[(i*2)+1].refvalue_int) > 0x3FFF) manref[(i*2)+1].refvalue_int = 0;

		if((damagemon.cylneighbour & bitset) != 0) //check if this channel is enabled and not in failure
		{
			manrefsum[i].cylsum = manref[i*2].refvalue_int + manref[(i*2)+1].refvalue_int;
		}
		else manrefsum[i].cylsum = 0;
		bitset <<= 1;	//shift relating to cylinder
	}
}
//AJB 19-Aug-10 EOM


//AJB 19-Aug-10 added for MAN damage monitoring
//Input from 1 NOT from 0 as zero will never be possible as it is at the end of the engine mount
//For 12 cylinder go from 1 to 11 (i.e. numsens/2) for i=1;i<numens/2;i++
//If there is a split this will be reflected in the mbneighbour value
void MBNeighbourSum(int numsens)
{
unsigned int bitset;
int i;
int j;
int k;
	//mbneighbour is confiured from the first pair of sensors fo mb summing
	//	  1 2 3 4 5 6 7 8 9 10
	//	| | | |	| |	| |	| |	|
	//	 x   x   x   x   x   x   x   x   x
	bitset = 1;	//set to first bit to begin
	j = 1;
	k = 0;
	for(i=1;i<numsens/2;i++)
	{
		if(abs(manref[j].refvalue_int) > 0x3FFF) manref[j].refvalue_int = 0;
		if(abs(manref[j+1].refvalue_int) > 0x3FFF) manref[j+1].refvalue_int = 0;

		if((damagemon.mbneighbour & bitset) != 0) //check if this channels are enabled and not in failure
		{			
			manrefsum[k].mbnsum = manref[j].refvalue_int + manref[j+1].refvalue_int;
		}
		else manrefsum[k].mbnsum = 0;
		bitset <<= 1;
		k++;
		j+=2;
	}
}
//AJB 19-Aug-10 EOM

//AJB 19-Aug-10 Immediate Offset calculation (without rpm stability)
int ApplyImmOffset(unsigned int num, int val)
{

	if(settings.dcmode == FALSE)		//not in dc mode so use offset on value
	{
		val = val - offsetA.val[num] - offsetB.val[num];
	}
	return(val);
}
//AJB 19-Aug-10 EOM


//AJB 19-Aug-10 immediate compensation (without stability for RPM)
int SensorImmCompensation(unsigned int num, int val, unsigned int rpm)
{
int rpmoffset;

	//calculate the offset intot the rpm table
	rpmoffset = rpm - allsensors.rpmmin;
	if(rpmoffset < 0) rpmoffset = 0;
	//apply compensaton between min and max within the table
	if(rpm >= allsensors.rpmmax) rpmoffset = allsensors.rpmmax - allsensors.rpmmin - 1;		//highest point in table used if above limit

	//the offset due to speed is a positive value and therefore will be shown as larger wear for higher speeds.
	//This hsold be removed from the precompensated value
	val = val - GetRPMCompVal(num,rpmoffset);	//remove the offset due to speed
	return(val);
}
//AJB 19-Aug-10 EOM



//AJB 19-Aug-10
//Pass in the number of sensors
//and the RPM
void MANRefCalcs(int numsens, int rpm)
{
int i;
unsigned long magic;
float reflevelx;
float presentstatex;
float reflevel;
float presentstate;
float refvalue;
int sensorimmval[MAX_NUM_CHANNELS];

	CylNeighbourRegSet();
	MBNeighbourRegSet();

	for(i=0;i<numsens;i++) sensorimmval[i] = ApplyImmOffset(i,sensor[i].immediateval);	//pass in the immedaite value (no stability check)
	for(i=0;i<numsens;i++) sensorimmval[i] = SensorImmCompensation(i,sensorimmval[i],rpm);		//compensate the channel based on the speed of the engine
	//sprintf(stringbuffer,"\r\n>>>>>Sensor 1 raw data :%d",sensorimmval[0]);  DebugStringOut(stringbuffer);
	reflevelx = damagemon.reflevelx; 
	reflevelx /= 100000;	//divide down as stored as * 100000 e.g. 0.0001 (default) as 10
	presentstatex = damagemon.presentstatex;
	presentstatex /= 100000; //divide down as stored as * 100000 e.g. 0.2 (default) as 20000
	
	//When offset has been sent from software
	if((iSensorInRepalceMode == TRUE || iSensorInResetMode == TRUE ) && (iSensorInRepalceTimer == TRUE))
	{
		//when RPM is in range
		if((rpm < allsensors.rpmmax) && (rpm >= (allsensors.rpmmin)))
		{
			wFiveRevTime = (unsigned long)(5 * 60 / (double)(rpm) * SECS_TO_MS_MULTIPLIER);			
			timers.iSensorReplace = wFiveRevTime + 200; //5 revolution + 1 second
			iSensorInRepalceTimer = FALSE;
		}
		else
		{
			damagemonignore[iSensorInRepalce] = 3;
		}
	}
	
	wSpeedCompensated5Cnt++;

	for(i=0;i<numsens;i++)
	{
		if(sensor[i].status1.enabled == 1  && sensor[i].status2.failure == 0 && modalsetcounters[i] == 0)	//channel must be enabled and not in failure, and rpm must be stable
		{						
			fSpeedCompensated5Total[i] += (float)sensorimmval[i];
			if(wSpeedCompensated5Cnt > 5 )
			{
				fSpeedCompensated5Total[i] -= fSpeedCompensated5Avg[i];
				fSpeedCompensated5Avg[i] = fSpeedCompensated5Total[i] / 5;
			}			

			//iValidSensorTrack++;
			//11-15-2012 FF: New MAN algorithm is changed here
			if((speedcompcoeffs.stageflag < STAGE1_CAL) || (iStartRapidWear!=TRUE && speedcompcoeffs.stageflag == STAGE1_CAL))	damagemonignore[i] = 3; //ignore until rough cal is completed			

			if(damagemonignore[i] != 0)	//ignore filtering for x iterations e.g. after sensor failure, replacemtn offset change etc
			{
				//set to immediate value now
				reflevel = (float)sensorimmval[i];
				presentstate = (float)sensorimmval[i];	
				fRapidFast[i] = 0;
				fRapidSlow[i] = 0;				
				iVauleCount[i] = 0;				
				damagemonignore[i]--;	//decrement the counter so next iteration will use filter
			}
			else
			{					
				if(((allsensors.flags.calmode == TRUE) && (iRepaidWearReset == TRUE)) || (((timers.iSensorReplace !=0) && (timers.iSensorReplace < wFiveRevTime)) && (((iSensorInRepalce==i) && (iSensorInRepalceMode == TRUE)) || (iSensorInResetMode == TRUE))) )
				{
					fRapidFast[i] += (float)sensorimmval[i];
					iVauleCount[i]++;
					//sprintf(stringbuffer,"\r\n==1==\r\n");  DebugStringOut(stringbuffer);
					//sprintf(stringbuffer,"\r\nSensor:%d, RapidFast:%f, iVauleCount:%d\r\n", i,fRapidFast[i],iVauleCount[i]);  DebugStringOut(stringbuffer);	// DEBUG
				}
				else
				{
					if(SensorSlowDowntatus == FALSE && iDmPause == FALSE)
					{
						//values stored to nearest micron (difference calculation done on float value to keep accuracy)
						reflevel = ((float)(manref[i].reflevel)*(1.0 - reflevelx)) + ((float)sensorimmval[i] * reflevelx);
						presentstate = ((float)(manref[i].presentstate)*(1.0 - presentstatex)) + ((float)sensorimmval[i] * presentstatex);
						//if(i==0) sprintf(stringbuffer,"\r\nfast:%.3f, slow:%.3f\r\n", reflevel, presentstate);  DebugStringOut(stringbuffer);
						//if(speedcompcoeffs.stageflag > STAGE4_CAL && (timers.debugrapidfast == 0) && (i==iSensorToMonitor)) { sprintf(stringbuffer,"\r\n>>Sensor:%d, Fast:%2.2f, Slow:%2.2f, Compd Signal:%d, rpm:%d, Offset:%d, MAN:%d<<\r\n",i,presentstate,reflevel,sensorimmval[i],rpm,offsetA.val[i],man_comptable[rpm][i]);  DebugStringOut(stringbuffer); timers.debugrapidfast = TIME_TO_FRAM_UPDATE;}
						//sprintf(stringbuffer,"\r\n==2==\r\n");  DebugStringOut(stringbuffer);
					}
					else
					{
						reflevel = (float)sensorimmval[i];
						presentstate = (float)sensorimmval[i];
						//sprintf(stringbuffer,"\r\n==3==\r\n");  DebugStringOut(stringbuffer);
					}

					//Stop moving average in barred rpm range
					if((allsensors.iBarredVibrationSpeedLow != 0) && (rpm >= allsensors.iBarredVibrationSpeedLow) && (rpm <= allsensors.iBarredVibrationSpeedHigh)) {;}
					else
					{					
						if(iDmPause == TRUE) {;}
						else { fRapidWearAverage[i] = ((float)manref[i].presentstate - (float)manref[i].reflevel) * 0.85 + (presentstate - reflevel) * 0.15; }
					}
					//if(i==0) sprintf(stringbuffer,"\r\nAverage:%.3f\r\n", fRapidWearAverage[0]);  DebugStringOut(stringbuffer);

					//Apply reset
					if(iVauleCount[i]!=0)
					{
						if((allsensors.flags.calmode == TRUE) || ((iSensorInRepalceMode == TRUE) && (iSensorInRepalce==i)))
						{
							fRapidFast[i] = fRapidFast[i] / (float)iVauleCount[i];
							if(speedcompcoeffs.stageflag == STAGE1_CAL) fRapidWearAverage[i] = 0;
							//fRapidWearAverage = ((float)manref[i].presentstate - (float)manref[i].reflevel) * 0.85 + (presentstate - reflevel) * 0.15;
							fRapidSlow[i] = fRapidFast[i] - fRapidWearAverage[i];	
							reflevel = fRapidSlow[i];
							presentstate = fRapidFast[i];
							//sprintf(stringbuffer,"\r\n>>RESET Sensor:%d RapidFast:%2.2f RapidSlow:%2.2f RapidWearAverage:%2.2f<<\r\n",i,fRapidFast[i],fRapidSlow[i],fRapidWearAverage[i]);  DebugStringOut(stringbuffer);	// DEBUG
							//Reset						
							fRapidFast[i] = 0;
							fRapidSlow[i] = 0;							
							iVauleCount[i] = 0;

							//Replace mode is done
							iSensorInRepalce = 100;
							iSensorInResetMode = FALSE;
							iSensorInRepalceMode = FALSE;							
						}
					}

					//CPP rapid value reset
					if(cppRapidReset == 1)
					{											
						fRapidFast[i] = fSpeedCompensated5Avg[i];
						fRapidSlow[i] = fSpeedCompensated5Avg[i];	
						reflevel = fRapidSlow[i];
						presentstate = fRapidFast[i];
						//sprintf(stringbuffer,"\r\n**** CPP reset **** rapid is %.3f\r\n\r\n", fSpeedCompensated5Avg[i]);  DebugStringOut(stringbuffer);	// DEBUG						
					}
				}					
			}			
			
			manref[i].reflevel = reflevel;
			manref[i].reflevel_int = FloattoIntRound(reflevel);

			manref[i].presentstate = presentstate;
			manref[i].presentstate_int = FloattoIntRound(presentstate);
			refvalue = presentstate - reflevel;
			manref[i].refvalue = refvalue;
			manref[i].refvalue_int = FloattoIntRound(refvalue);
		}
		else	//if not enabled or in failure set variables to zero
		{
			manref[i].reflevel = 0;
			manref[i].presentstate = 0;
			manref[i].refvalue = 0;
			manref[i].reflevel_int = 0;
			manref[i].presentstate_int = 0;
			manref[i].refvalue_int = 0;
		}		

		//store the integer values (reloaded on power up into the float and int stores
		WriteNVMemory(FRAM2,REFLEVEL_DATA_OFFSET+(i*2),&manref[i].reflevel_int,1);			//store the channel ref levels
		WriteNVMemory(FRAM2,PRESENTSTATE_DATA_OFFSET+(i*2),&manref[i].presentstate_int,1);	//store the channel present state levels
	}

	//sprintf(stringbuffer,"\r\nslow:%.3f, fast:%.3f\r\n\r\n", manref[0].reflevel, manref[0].presentstate);  DebugStringOut(stringbuffer);

	if(cppRapidReset == 1)
	{
		//sprintf(stringbuffer,"\r\n**** CPP reset **** rapid is %.3f\r\n\r\n", fSpeedCompensated5Avg[0]);  DebugStringOut(stringbuffer);	// DEBUG						
		cppRapidReset = 0;
		wSpeedCompensated5Cnt = 0;
		fSpeedCompensated5Total[i] = 0;
		fSpeedCompensated5Avg[i] = 0;
	}

	//write the magic number to the fram
  	magic = MAGIC_NUMBER;	//send 0x12345678
  	WriteNVMemory(FRAM2,REFFLAG_DATA_OFFSET,(unsigned int*)&magic,2);			//set the magic number so if we restart we can reload the values from fram for ref levels

	//calculate the reference level for the cylinder pair
	CylinderSum(numsens);

	//calculate the reference level for the MB neighbour pair
	MBNeighbourSum(numsens);
}
//AJB 19-Aug-10 EOM


//AJB 19-Aug-10
//Calculate the moving alarm levels for the Damage Monitoring algorithms
void DynamicAlarmLevel(int rpm, float load)
{
float rpmav;
float rpmlevelx;
float deltarpm;
	float initdeltarpm;

	float loadav;
	float loadlevelx;
	float initdeltaload;
	float deltaload;	
	
	
	//calculate delta rpm
	dynalarmlevels.hits++;	//increment the number of hits
	rpmlevelx = (float)damagemon.rpmlevelx / 100000;	//stored as x100,000
	//see MANModules for the zeroing of the dynalarmlevels.rpmav
	rpmav = ((float)dynalarmlevels.rpmav * (1.0-rpmlevelx)) + (rpmlevelx*(float)rpm);
	initdeltarpm = fabs((float)rpm - rpmav);
	deltarpm = initdeltarpm;
	if(deltarpm > damagemon.deltarpmlimit) deltarpm = damagemon.deltarpmlimit;
	//sprintf(stringbuffer,"\r\ncpp enable:%d  cpp low:%d, cpp high:%d\r\n", cppsettings.iCppEnable, cppsettings.iCppLowLimit, cppsettings.iCppHighLimit); DebugStringOut(stringbuffer);	
	//sprintf(stringbuffer,"\r\nRPM:%d, Avg-rpm:%.3f, delta-rpm:%.3f, adj-delta-rpm:%.3f", rpm, rpmav, initdeltarpm, deltarpm);	DebugStringOut(stringbuffer);// DEBUG

	dynalarmlevels.rpmav 		= rpmav;
	dynalarmlevels.rpmav_int	= FloattoIntRound(rpmav);
	dynalarmlevels.deltarpm 	= deltarpm;
	dynalarmlevels.deltarpm_int	= FloattoIntRound(deltarpm);

	//calculate delta load
	loaddynalarmlevels.hits++;	//increment the number of hits
	//loadlevelx = (float)damagemon.cpplevelx / 100000;	//stored as x100,000
	loadlevelx = (float) cppsettings.cpplevelx / 100.0;
	loadav = ((float)loaddynalarmlevels.rpmav * (1.0-loadlevelx)) + (loadlevelx*load);
	initdeltaload = fabs(load - loadav);		
	deltaload = initdeltaload;
	if(deltaload > 12) deltaload = 12;
	else if(deltaload < 0.5) deltaload = 0;

	//sprintf(stringbuffer,"\r\ncpp cnt:%d  mA:%.3f, load:%.2f, avg:%.3f, delta:%.3f, adj delta:%.3f\r\n", loadlevel.iAtodValue, loadlevel.fmAinput, load, loadav, initdeltaload, deltaload); DebugStringOut(stringbuffer);
	//sprintf(stringbuffer,"\r\ncpp k value:%d, gamma:%d, x:%.3f\r\n", cppsettings.cppkvalue, cppsettings.gammavalue, loadlevelx); //DebugStringOut(stringbuffer);	
	//sprintf(stringbuffer,"\r\ncpp k value:%d, gamma:%d, x:%.3f, 18mA value:%d, factor:%.3f\r\n", cppsettings.cppkvalue, cppsettings.gammavalue, loadlevelx, xtswplusanacal.analog18ma[2], inputs.analog.scalefactor[2]); //DebugStringOut(stringbuffer);	
	
	loaddynalarmlevels.rpmav 		= loadav;
	loaddynalarmlevels.rpmav_int	= FloattoIntRound(loadav);
	loaddynalarmlevels.deltarpm 	= deltaload;
	loaddynalarmlevels.deltarpm_int	= FloattoIntRound(deltaload);	
	

	//sprintf(stringbuffer,"\r\nPause:%d, RPM:%d, rpmav:%.3f, Deltarpm=%.3f, single:%d, cycle:%d, mem:%d, timer:%lu\r\n\r\n", iDmPause, rpm, rpmav, initdeltarpm, manref[0].refvalue_int, manrefsum[0].cylsum, manrefsum[0].mbnsum, timers.deltarpm15Delay);  DebugStringOut(stringbuffer);
	//sprintf(stringbuffer,"\r\nRPM:%d, Deltarpm=%.3f, timer:%lu\r\n\r\n", rpm, initdeltarpm, timers.deltarpm15Delay);  DebugStringOut(stringbuffer);
	//12-14-2012 FF: If delta rpm is higher than 15, damage monitoring pause
	if(initdeltarpm > iDmPauseDeltaRpm) 
	{ 
		iDmPause = TRUE;
		iDeltaRPM15 = TRUE;
	
		if(rpm > 1) timers.deltarpm15Delay = (unsigned long)cppsettings.delatRpmPauseDelay * 60UL * 200UL / (unsigned long)rpm; //5ms timer
		else timers.deltarpm15Delay = 24000; //2minutes		
		//sprintf(stringbuffer,"\r\nRPM:%d, rpmav:%.3f, Deltarpm=%.3f, delay:%d, timer:%lu\r\n\r\n", rpm, rpmav, initdeltarpm, cppsettings.delatRpmPauseDelay, timers.deltarpm15Delay);  DebugStringOut(stringbuffer);
	}
	else
	{
		iDeltaRPM15 = FALSE;
		if(timers.deltarpm15Delay == 0)
		{
			iDmPause = FALSE;
			//sprintf(stringbuffer,"\r\npause:%d\r\n\r\n", iDmPause);  DebugStringOut(stringbuffer);
			//Alarm 1 and Alarm 2 calculted from delta rpm
			dynalarmlevels.single1		= CalcAlarmLevel1(damagemon.alarmlevelsingle,deltarpm);
			dynalarmlevels.single1_int	= FloattoIntRound(dynalarmlevels.single1);
			dynalarmlevels.cyl1 		= CalcAlarmLevel1(damagemon.alarmlevelcyl,deltarpm);
			dynalarmlevels.cyl1_int		= FloattoIntRound(dynalarmlevels.cyl1);
			dynalarmlevels.mbsum1 		= CalcAlarmLevel1(damagemon.alarmlevelmbsum,deltarpm);
			dynalarmlevels.mbsum1_int	= FloattoIntRound(dynalarmlevels.mbsum);
			dynalarmlevels.single2		= CalcAlarmLevel2(damagemon.alarmlevelsingle,dynalarmlevels.deltarpmprev);
			dynalarmlevels.single2_int	= FloattoIntRound(dynalarmlevels.single2);
			dynalarmlevels.cyl2 		= CalcAlarmLevel2(damagemon.alarmlevelcyl,dynalarmlevels.deltarpmprev);
			dynalarmlevels.cyl2_int		= FloattoIntRound(dynalarmlevels.cyl2);
			dynalarmlevels.mbsum2 		= CalcAlarmLevel2(damagemon.alarmlevelmbsum,dynalarmlevels.deltarpmprev);
			dynalarmlevels.mbsum2_int	= FloattoIntRound(dynalarmlevels.mbsum2);

			//sprintf(stringbuffer,"\r\nAlarm1 single:%d   Alarm1 cylinder:%d   Alarm1 mbsum:%d \r\n", dynalarmlevels.single1_int, dynalarmlevels.cyl1_int, dynalarmlevels.mbsum1_int);	DebugStringOut(stringbuffer);// DEBUG
			//sprintf(stringbuffer,"Alarm2 single:%d   Alarm2 cylinder:%d   Alarm2 mbsum:%d \r\n", dynalarmlevels.single2_int, dynalarmlevels.cyl2_int, dynalarmlevels.mbsum2_int);	DebugStringOut(stringbuffer);// DEBUG

			if(fabs(dynalarmlevels.single1) > fabs(dynalarmlevels.single2))
			{
				dynalarmlevels.hits = 0;	//reset hits when alarm 1 is higher than alarm level 2
				dynalarmlevels.singleprev 	= dynalarmlevels.single;
				dynalarmlevels.cylprev 		= dynalarmlevels.cyl;
				dynalarmlevels.mbsumprev 	= dynalarmlevels.mbsum;
				dynalarmlevels.deltarpmprev = deltarpm;
				dynalarmlevels.deltarpmprev_int = FloattoIntRound(dynalarmlevels.deltarpmprev);
			}
	
			//find max from alarm 1 and alarm 2, float values (return as a integer)		
			dynalarmlevels.single 	= FindMaxRPMAlarm(dynalarmlevels.single1,dynalarmlevels.single2);
			dynalarmlevels.cyl		= FindMaxRPMAlarm(dynalarmlevels.cyl1,dynalarmlevels.cyl2);
			dynalarmlevels.mbsum 	= FindMaxRPMAlarm(dynalarmlevels.mbsum1,dynalarmlevels.mbsum2);

			//sprintf(stringbuffer,"Max(Alarm1, Alarm2) single:%d   cylinder:%d   mbsum:%d \r\n", dynalarmlevels.single, dynalarmlevels.cyl, dynalarmlevels.mbsum);	DebugStringOut(stringbuffer);// DEBUG

			if(cppsettings.iCppEnable != 0)
			{
				//Alarm 3 and Alarm 4 calculted from delta load
				loaddynalarmlevels.single1		= CalcAlarmLevel3(damagemon.alarmlevelsingle, deltaload);
				loaddynalarmlevels.single1_int	= FloattoIntRound(loaddynalarmlevels.single1);
				loaddynalarmlevels.cyl1 		= CalcAlarmLevel3(damagemon.alarmlevelcyl, deltaload);
				loaddynalarmlevels.cyl1_int		= FloattoIntRound(loaddynalarmlevels.cyl1);
				loaddynalarmlevels.mbsum1 		= CalcAlarmLevel3(damagemon.alarmlevelmbsum, deltaload);
				loaddynalarmlevels.mbsum1_int	= FloattoIntRound(loaddynalarmlevels.mbsum);
				loaddynalarmlevels.single2		= CalcAlarmLevel4(damagemon.alarmlevelsingle,loaddynalarmlevels.deltarpmprev);
				loaddynalarmlevels.single2_int	= FloattoIntRound(loaddynalarmlevels.single2);
				loaddynalarmlevels.cyl2 		= CalcAlarmLevel4(damagemon.alarmlevelcyl,loaddynalarmlevels.deltarpmprev);
				loaddynalarmlevels.cyl2_int		= FloattoIntRound(loaddynalarmlevels.cyl2);
				loaddynalarmlevels.mbsum2 		= CalcAlarmLevel4(damagemon.alarmlevelmbsum,loaddynalarmlevels.deltarpmprev);
				loaddynalarmlevels.mbsum2_int	= FloattoIntRound(loaddynalarmlevels.mbsum2);

				//sprintf(stringbuffer,"\r\nAlarm3 single:%d   Alarm3 cylinder:%d   Alarm3 mbsum:%d \r\n", loaddynalarmlevels.single1_int, loaddynalarmlevels.cyl1_int, loaddynalarmlevels.mbsum1_int);	DebugStringOut(stringbuffer);// DEBUG
				//sprintf(stringbuffer,"Alarm4 single:%d   Alarm4 cylinder:%d   Alarm4 mbsum:%d \r\n", loaddynalarmlevels.single2_int, loaddynalarmlevels.cyl2_int, loaddynalarmlevels.mbsum2_int);	DebugStringOut(stringbuffer);// DEBUG

				if(fabs(loaddynalarmlevels.single1) > fabs(loaddynalarmlevels.single2))
				{
					loaddynalarmlevels.hits = 0;	//reset hits when alarm 1 is higher than alarm level 2
					loaddynalarmlevels.singleprev 	= loaddynalarmlevels.single;
					loaddynalarmlevels.cylprev 		= loaddynalarmlevels.cyl;
					loaddynalarmlevels.mbsumprev 	= loaddynalarmlevels.mbsum;
					loaddynalarmlevels.deltarpmprev = deltaload;
					loaddynalarmlevels.deltarpmprev_int = FloattoIntRound(loaddynalarmlevels.deltarpmprev);
				}

				//find max from alarm 3 and alarm 4, float values (return as a integer)		
				loaddynalarmlevels.single = FindMaxRPMAlarm(loaddynalarmlevels.single1,loaddynalarmlevels.single2);
				loaddynalarmlevels.cyl = FindMaxRPMAlarm(loaddynalarmlevels.cyl1,loaddynalarmlevels.cyl2);
				loaddynalarmlevels.mbsum = FindMaxRPMAlarm(loaddynalarmlevels.mbsum1,loaddynalarmlevels.mbsum2);
	
				//sprintf(stringbuffer,"Max(Alarm3, Alarm4) single:%d   cylinder:%d   mbsum:%d \r\n", loaddynalarmlevels.single, loaddynalarmlevels.cyl, loaddynalarmlevels.mbsum);	DebugStringOut(stringbuffer);// DEBUG
		
				//find max from alarm 1, alarm 2, alarm 3 and alarm 4, float values (return as a integer)
				dynalarmlevels.single 	= FindMaxRPMAlarm((float)dynalarmlevels.single, (float)loaddynalarmlevels.single);
				dynalarmlevels.cyl		= FindMaxRPMAlarm((float)dynalarmlevels.cyl, (float)loaddynalarmlevels.cyl);
				dynalarmlevels.mbsum 	= FindMaxRPMAlarm((float)dynalarmlevels.mbsum, (float)loaddynalarmlevels.mbsum);
				//sprintf(stringbuffer,"\r\nMax(Alarm1, Alarm2, Alarm3, Alarm4) single:%d   cylinder:%d   mbsum:%d \r\n\r\n", dynalarmlevels.single, dynalarmlevels.cyl, dynalarmlevels.mbsum);	DebugStringOut(stringbuffer);// DEBUG
						
				if(loaddynalarmlevels.deltarpm_int > 7) { delatloadgreater7 = 1; iDmPause = TRUE;}
				//sprintf(stringbuffer,"\r\ndelta:%d   delta7:%d\r\n\r\n", loaddynalarmlevels.deltarpm_int, delatloadgreater7);	DebugStringOut(stringbuffer);// DEBUG
				if(delatloadgreater7 == 1 && loaddynalarmlevels.deltarpm_int < 4)
				{
					delatloadgreater7 = 0;
					cppRapidReset = 1;
					iDmPause = FALSE;
					//sprintf(stringbuffer,"\r\n**** CPP reset ****\r\n\r\n");  DebugStringOut(stringbuffer);	// DEBUG
				}
			}
		}		
	}

}
//AJB 19-Aug-10 EOM

//AJB 19-Aug-10
//Calculate the alarm level 1 for single, cyl and mbsum
float CalcAlarmLevel1(int level, float deltarpm)
{
float kvalue;
float alarm1;

	kvalue = (float)damagemon.kvalue / 100000;				//stored as x100,000
	alarm1 = (float)level * (1 + (deltarpm * kvalue));	//set alarm level 1
	return(alarm1);

}
//AJB 19-Aug-10 EOM

//AJB 19-Aug-10
//Calculate the alarm level 2 for single, cyl and mbsum
float CalcAlarmLevel2(int level, float deltarpm)
{
float kvalue;
float alarm2;
float tempval;

	kvalue = (float)damagemon.kvalue / 100000;				//stored as x100,000
	tempval = (float)dynalarmlevels.hits/(float)damagemon.betavalue;
	tempval *= -1;
	alarm2 = (float)level * (1 + (deltarpm * kvalue* (exp(tempval))));	//set alarm level 2
	return(alarm2);

}
//AJB 19-Aug-10 EOM

//AJB 19-Aug-10
//Return the maximum value from val1, or val2
int FindMaxRPMAlarm(float val1, float val2)
{
	if(fabs(val1) >= fabs(val2)) return (FloattoIntRound(val1));
	else return (FloattoIntRound(val2));
}
//AJB 19-Aug-10 EOM

//FF 08-Jan-14
//Calculate the alarm level 3 for single, cyl and mbsum
float CalcAlarmLevel3(int level, float deltaLoad)
{
float kvalue;
float alarm3;	
	kvalue = (float)cppsettings.cppkvalue;
	alarm3 = (float)level * (1 + (deltaLoad / kvalue));	//set alarm level 3
	//sprintf(stringbuffer,"level:%d   deltaLoad:%.3f  kvalue:%d  alarm3:%.3f \r\n", level, deltaLoad, FloattoIntRound(kvalue), alarm3);	DebugStringOut(stringbuffer);// DEBUG
	return(alarm3);
}
//FF 08-Jan-14 EOM

//FF 08-Jan-14
//Calculate the alarm level 4 for single, cyl and mbsum
float CalcAlarmLevel4(int level, float deltaLoad)
{
	float kvalue;
	float alarm4;
	float tempval;	
	kvalue = (float)cppsettings.cppkvalue;
	tempval = (float)loaddynalarmlevels.hits/(float)cppsettings.gammavalue;
	tempval *= -1;
	alarm4 = (float)level * (1 + ((deltaLoad / kvalue) * (exp(tempval))));	//set alarm level 4
	//sprintf(stringbuffer,"level:%d   deltaLoad:%.3f  kvalue:%d  gammer:%d  hits:%lu  alarm4:%.3f \r\n", level, deltaLoad, FloattoIntRound(kvalue), damagemon.gammavalue, loaddynalarmlevels.hits, alarm4);	DebugStringOut(stringbuffer);// DEBUG
	return(alarm4);
}
//FF 08-Jan-14 EOM

//AJB 19-Aug-10
//
void SensorDamageMonSlowDown(int chan,int val,int rpm)
{
char eventstring[EVENTMSG_LEN_INBYTES_PART2];
int level;
int absval;			//absolute value
// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - char chanstr[4];	//3 character for the channel number e.g. 1A (followed by a null)
int clearAlarm = FALSE;
unsigned int damalarmssingle;
unsigned int index;

	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);

	if(rpm >= allsensors.rpmlimit && timers.startup == 0)	//check if above rpm limit
	{
		if(sensor[chan].status1.enabled == 1  && sensor[chan].status1.alarmmask == 0)	//is channel enabled and not masked
		{
			level = dynalarmlevels.single;
			absval = abs(val);		//check +- against the slow down level
			if((absval >= level) && sensor[chan].status2.failure == 0)
			{
				if(chan <16)
				{
					//AJB 21-Sep-10 (changed for i-16)
					damalarmssingle = damalarms.single[0];
					index = chan;
				}
				else
				{
					//AJB 21-Sep-10 (changed for i-16)
					damalarmssingle = damalarms.single[1];
					index = chan-16;
				}
				if(CheckBitSet(damalarmssingle,index) == 0)
				{
					//set the alarm event before logging the event as logging increments the eventid
					SetAlarmEvent(DAMAGESINGLESLOWDOWN+chan);
					if(chan <16) damalarms.single[0] = BitSet(damalarms.single[0],chan);	//set the bit in the field
					else damalarms.single[1] = BitSet(damalarms.single[1],chan-16);	//set the bit in the field
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - InputNumtoString(chanstr,chan);
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - if(val < 0)	sprintf(eventstring,"Ch%s, -%d microns",chanstr,level);
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - else sprintf(eventstring,"Ch%s, %d microns",chanstr,level);
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(DAMAGE_SINGLE_SLOWDOWN,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event
					WriteNVMemory(FRAM1,DAMAGE_SINGLE_ALARMS_DATA_OFFSET,&damalarms.single,2);

					SensorSlowDowntatus = TRUE;
				}
			}
			else if(absval <= (int)(damagemon.alarmlevelsingle - damagemon.hysteresis))
			{
				clearAlarm = TRUE;
			}
		}
	}

	// If the alarm is to be cleared or sensor disabled or alarmmask enabled then clear the alarm
	if (clearAlarm == TRUE || sensor[chan].status1.enabled == 0 || sensor[chan].status1.alarmmask == 1)
	{
		if(chan <16)
		{
			//AJB 21-Sep-10 added index
			damalarmssingle = damalarms.single[0];
			index = chan;
		}
		else
		{
			damalarmssingle = damalarms.single[1];
			index = chan-16;
		}
		if(CheckBitSet(damalarmssingle,index) == TRUE)
		{
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - InputNumtoString(chanstr,chan);
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Ch%s RTN",chanstr);
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(DAMAGE_SINGLE_SLOWDOWN,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
			ClearAlarmEvent(DAMAGESINGLESLOWDOWN+chan);			//clear the in alarm bit for the fault
			if(chan <16)damalarms.single[0] = BitClear(damalarms.single[0],chan);
			else damalarms.single[1] = BitClear(damalarms.single[1],chan-16);
			WriteNVMemory(FRAM1,DAMAGE_SINGLE_ALARMS_DATA_OFFSET,&damalarms.single,2);

			SensorSlowDowntatus = FALSE;
		}
	}	
}
//AJB 19-Aug-10 EOM

void ClearSensorDamageMonSlowDown(int chan)
{
	unsigned int index;
	unsigned int damalarmssingle;

	// If the alarm is to be cleared or sensor disabled or alarmmask enabled then clear the alarm
	if (sensor[chan].status1.enabled == 0 || sensor[chan].status1.alarmmask == 1)
	{
		if(chan <16)
		{
			//AJB 21-Sep-10 added index
			damalarmssingle = damalarms.single[0];
			index = chan;
		}
		else
		{
			damalarmssingle = damalarms.single[1];
			index = chan-16;
		}
		if(CheckBitSet(damalarmssingle,index) == TRUE)
		{
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - InputNumtoString(chanstr,chan);
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Ch%s RTN",chanstr);
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(DAMAGE_SINGLE_SLOWDOWN,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
			ClearAlarmEvent(DAMAGESINGLESLOWDOWN+chan);			//clear the in alarm bit for the fault
			if(chan <16)damalarms.single[0] = BitClear(damalarms.single[0],chan);
			else damalarms.single[1] = BitClear(damalarms.single[1],chan-16);
			WriteNVMemory(FRAM1,DAMAGE_SINGLE_ALARMS_DATA_OFFSET,&damalarms.single,2);

			SensorSlowDowntatus = FALSE;
		}
	}	
}

//AJB 19-Aug-10
void CylDamageMonSlowDown(unsigned int num, int val, unsigned int rpm)
{
char eventstring[EVENTMSG_LEN_INBYTES_PART2];
int level;
int absval;
int clearAlarm = FALSE;
unsigned int bitset;

	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
	bitset = 1;	//set to first bit to begin
	bitset <<= num;	//shift relating to cylinder
	if(rpm >= allsensors.rpmlimit && timers.startup == 0)	//check if above rpm limit
	{
		if((damagemon.cylneighbouralarms & bitset) != 0) //check if this channel is enabled and not in failure
		{
			level = dynalarmlevels.cyl;
			absval = abs(val);
			if(absval >= level)
			{
				if(CheckBitSet(damalarms.cylinder,num) == 0)
				{
					//set the alarm event before logging the event as logging increments the eventid
					SetAlarmEvent(DAMAGECYLSLOWDOWN+num);
					damalarms.cylinder = BitSet(damalarms.cylinder,num);
					//cyl num reported not sensor!
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - if(val < 0) sprintf(eventstring,"Cyl %d, -%d microns",num+1,level);	//reference as 1 to 14 for cylinders
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - else sprintf(eventstring,"Cyl %d, %d microns",num+1,level);			//reference as 1 to 14 for cylinders
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(DAMAGE_CYL_SLOWDOWN,HIGH_PRIORITY,YES,eventstring);		//pass in ptr to the string for this event

					WriteNVMemory(FRAM1,DAMAGE_CYL_ALARMS_DATA_OFFSET,&damalarms.cylinder,1);

					SensorSlowDowntatus = TRUE;
				}
			}
			else if(absval <= (int)(damagemon.alarmlevelcyl - damagemon.hysteresis))
			{
				clearAlarm = TRUE;
			}
		}
	}
	//clear the alarm
	if (clearAlarm == TRUE || (damagemon.cylneighbouralarms & bitset) == 0)
	{
		if(CheckBitSet(damalarms.cylinder,num) == TRUE)
		{
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Cyl %d RTN",num+1);	//reference as 1 to 14 for cylinders
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(DAMAGE_CYL_SLOWDOWN,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
			ClearAlarmEvent(DAMAGECYLSLOWDOWN+num);			//clear the in alarm bit for the fault
			damalarms.cylinder = BitClear(damalarms.cylinder,num);
			WriteNVMemory(FRAM1,DAMAGE_CYL_ALARMS_DATA_OFFSET,&damalarms.cylinder,1);

			SensorSlowDowntatus = FALSE;
		}
	}
}
//AJB 19-Aug-10 EOM

void ClearCylDamageMonSlowDown(unsigned int num)
{
	unsigned int bitset;

	bitset = 1;	//set to first bit to begin
	bitset <<= num;	//shift relating to cylinder
	//clear the alarm
	if ((damagemon.cylneighbouralarms & bitset) == 0)
	{
		if(CheckBitSet(damalarms.cylinder,num) == TRUE)
		{
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Cyl %d RTN",num+1);	//reference as 1 to 14 for cylinders
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(DAMAGE_CYL_SLOWDOWN,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
			ClearAlarmEvent(DAMAGECYLSLOWDOWN+num);			//clear the in alarm bit for the fault
			damalarms.cylinder = BitClear(damalarms.cylinder,num);
			WriteNVMemory(FRAM1,DAMAGE_CYL_ALARMS_DATA_OFFSET,&damalarms.cylinder,1);

			SensorSlowDowntatus = FALSE;
		}
	}
}
//AJB 19-Aug-10
void MBNeighbourDamageMonSlowDown(unsigned int num, int val, unsigned int rpm)
{
char eventstring[EVENTMSG_LEN_INBYTES_PART2];
int level;
int absval;
int clearAlarm = FALSE;
unsigned int bitset;

	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
	bitset = 1;	//set to first bit to begin
	bitset <<= num;	//shift relating to cylinder
	if(rpm >= allsensors.rpmlimit && timers.startup == 0)	//check if above rpm limit
	{
		if((damagemon.mbneighbouralarms & bitset) != 0) //check if this channel is enabled and not in failure
		{
			level = dynalarmlevels.mbsum;
			absval = abs(val);
			if(absval >= level)
			{
				if(CheckBitSet(damalarms.mbneighbour,num) == 0)
				{
					//set the alarm event before logging the event as logging increments the eventid
					SetAlarmEvent(DAMAGEMBSUMSLOWDOWN+num);
					damalarms.mbneighbour = BitSet(damalarms.mbneighbour,num);
					//MBN num reported not sensor!
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - if(val < 0) sprintf(eventstring,"MBN %d, -%d microns",num+2,level);	//reference as 2 to 14 (1 and 15) are at each end)
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - else sprintf(eventstring,"MBN %d, %d microns",num+2,level);			//reference as 2 to 14 for mbneighbour, hence + 2
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(DAMAGE_MBSUM_SLOWDOWN,HIGH_PRIORITY,YES,eventstring);		//pass in ptr to the string for this event

					WriteNVMemory(FRAM1,DAMAGE_MBSUM_ALARMS_DATA_OFFSET,&damalarms.mbneighbour,1);

					SensorSlowDowntatus = TRUE;
				}
			}
			else if(absval <= (int)(damagemon.alarmlevelmbsum - damagemon.hysteresis))
			{
				clearAlarm = TRUE;
			}
		}
	}
	//clear the alarm
	if (clearAlarm == TRUE || (damagemon.mbneighbouralarms & bitset) == 0)
	{
		if(CheckBitSet(damalarms.mbneighbour,num) == TRUE)
		{
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"MBN %d RTN",num+2);	//reference as 2 to 14 (hence + 2) cannot do 1 and 15
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(DAMAGE_MBSUM_SLOWDOWN,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
			ClearAlarmEvent(DAMAGEMBSUMSLOWDOWN+num);			//clear the in alarm bit for the fault
			damalarms.mbneighbour = BitClear(damalarms.mbneighbour,num);
			WriteNVMemory(FRAM1,DAMAGE_MBSUM_ALARMS_DATA_OFFSET,&damalarms.mbneighbour,1);

			SensorSlowDowntatus = FALSE;
		}
	}
}
//AJB 19-Aug-10 EOM

void ClearMBNeighbourDamageMonSlowDown(unsigned int num)
{
	unsigned int bitset;
	
	bitset = 1;	//set to first bit to begin
	bitset <<= num;	//shift relating to cylinder
	
	//clear the alarm
	if ((damagemon.mbneighbouralarms & bitset) == 0)
	{
		if(CheckBitSet(damalarms.mbneighbour,num) == TRUE)
		{
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"MBN %d RTN",num+2);	//reference as 2 to 14 (hence + 2) cannot do 1 and 15
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(DAMAGE_MBSUM_SLOWDOWN,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
			ClearAlarmEvent(DAMAGEMBSUMSLOWDOWN+num);			//clear the in alarm bit for the fault
			damalarms.mbneighbour = BitClear(damalarms.mbneighbour,num);
			WriteNVMemory(FRAM1,DAMAGE_MBSUM_ALARMS_DATA_OFFSET,&damalarms.mbneighbour,1);

			SensorSlowDowntatus = FALSE;
		}
	}
}

//AJB 19-Aug-10
//Write the WIO settings to NVmemory
void WriteDamagemontoNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory
	//this is positioned after the acc table
	position = DAMAGEMONSTRUCT_DATA_OFFSET;
	ptr = (unsigned int*)&damagemon;
	len = sizeof(damagemonstruct);
	WriteNVMemory(FRAM1,position,ptr,len);

	CylNeighbourRegSet();		//update on changes to the structure
	MBNeighbourRegSet();

	//update the sdcard general file with changes for WIO
	settings.sdcardupdate = SDGENERALUPDATE;		//update the sd card settings
}

//Read back from NVMEM
//This will be called on power up only - as this is held in ram
void ReadDamagemonfromNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory
	//this is positioned after the acc table

	position = DAMAGEMONSTRUCT_DATA_OFFSET;
	ptr = (unsigned int*)&damagemon;
	len = sizeof(damagemonstruct);
	ReadNVMemory(FRAM1,position,ptr,len);
}
//AJB 19-Aug-10 EOM

//AJB 19-Aug-10
void LoadDamagemonDefaults(void)
{
	//default damage mon ON
	damagemon.damagemonenb = TRUE;		//24-Sep-10 - enable the damage monitoring algos
	damagemon.alarmlevelsingle = 250;	//AJB 21-Sep-10
	damagemon.alarmlevelcyl = 180;		//AJB 29-Oct-10
	damagemon.alarmlevelmbsum = 250;	//AJB 21-Sep-10

	damagemon.ccsplit = 0;	//no split defined
	damagemon.kvalue = 12500;
	damagemon.betavalue = 300;		//AJB 21-Sep-10
	damagemon.rpmlevelx = 300;
	damagemon.reflevelx = 10;
	damagemon.presentstatex = 20000;
	damagemon.cylneighbour = 0;
	damagemon.mbneighbour = 0;
	damagemon.cylneighbouralarms = 0;
	damagemon.mbneighbouralarms = 0;

	damagemon.deltarpmlimit = 4;
	damagemon.hysteresis = 50;		//set at 50 micron default	

	//set all to zero when loading defaults
	//this should only happen when the variables are not present on the sd or factory init
	damalarms.single[0] = 0;
	damalarms.single[1] = 0;	
	damalarms.cylinder = 0;
	damalarms.mbneighbour = 0;

	WriteNVMemory(FRAM1,DAMAGE_SINGLE_ALARMS_DATA_OFFSET,&damalarms.single,2);
	WriteNVMemory(FRAM1,DAMAGE_CYL_ALARMS_DATA_OFFSET,&damalarms.cylinder,1);
	WriteNVMemory(FRAM1,DAMAGE_MBSUM_ALARMS_DATA_OFFSET,&damalarms.mbneighbour,1);

	WriteDamagemontoNVMEM();

}
//AJB 19-Aug-10 EOM



//The following function should be called from the main loop
//This contains the modules for the MAN sepcification
//All data is collected directly from the golbal registers within each module and returned to the global registers
void MANModules(void)
{
unsigned int i;
unsigned int rpm;
int flag1;
int numsens;

	//do not carry out any of this if we are in dc mode.  the man corrections should not be applied whilst in this mode
	if(settings.dcmode == FALSE) MANCalibrationStages();	//check and carry out man calibration
	if(allsensors.flags.calmode == FALSE)	//check not in cal mode
	{
		iRepaidWearReset = FALSE;
		if(GetModalRPM(0) != 0)
		{
			//set the flag to true.  this is needed for prewarning timer to count whilst engine is running
			settings.timerrunning = TRUE;	
		}
		else settings.timerrunning = FALSE;		//set to false as engine is not running
	}
	if(allsensors.flags.newval == TRUE)	//set when a new value is ready
	{

		rpm = 0;
		rpm =  GetModalRPM(1);		//carry out modal rpm set to 1

		flag1 = FALSE;
		//check flag when in calmode, only allow forward to be processed
		if(allsensors.flags.calmode == TRUE)
		{
			if(motion.forwardasternflag == FORWARD) flag1 = TRUE;	//must be forwar in cal mode
		}
		//non calmode senario
		else if(motion.forwardasternflag == FORWARD || motion.forwardasternflag == DIR_NOTSET) flag1 = TRUE;		//allow unknown and not set (otherwise we never show anything!)
		if(flag1 == TRUE && settings.dcmode == FALSE)
		{
			if(allsensors.numsensorsspu2 != 0 && slave485mb.slavenotready == FALSE) numsens = allsensors.numsensors;
			else numsens = allsensors.numsensorsspu1;

			/*
			Dynamic alarm
			*/		
			DynamicAlarmLevel(rpm, loadlevel.fLoadPercent);				//AJB 19-Aug-10 new code for dynamic alarm level calculations
			if(rpm >= allsensors.rpmmin)
			{
				/*
				Repaid wear
				*/
				if(damagemon.damagemonenb == TRUE)	//24-Sep-10
				{
					//only carry out if the damage monitoring is enabled
					MANRefCalcs(numsens,rpm);		//AJB 19-Aug-10 new code setting the Reference value and the present state value
				}
				/*
				Sensor offset
				*/
				for(i=0;i<numsens;i++)
				{
					//checkmanalarms - based on modalsetcounters from modalrpm, if in error do not process alarms
					if(modalsetcounters[i] != 0) checkmanalarms[i] = 0;		//set to zero if not stable
					else checkmanalarms[i]++;								//increment a flag to check the man alarms
					sensortempval[i] = sensor[i].initialval;	//pass in the initial value into the generic val store
					if(function.enabled.applyoffset == TRUE) sensortempval[i] = ApplyOffset(i,sensortempval[i]);
					else sensor[i].precomp = DEFAULT_NOT_USED_VAL;
				}
				/*
				Man speed compensate
				*/
				for(i=0;i<numsens;i++)
				{
					if(function.enabled.sensorcompensation == TRUE) sensortempval[i] = SensorCompensation(i,sensortempval[i],rpm);		//compensate the channel based on the speed of the engine
					else sensor[i].postcomp = DEFAULT_NOT_USED_VAL;
				}
				/*
				Man noise removal
				*/
				for(i=0;i<numsens;i++)
				{
					if(modalsetcounters[i] == 0)	//do nothing to the values if the rpm has gone unstable, endresult and postfilter will not alter
					{
						if(function.enabled.sensornoiseremoval == TRUE)
						{
							if(NoiseFilterApplied(i,rpm) == TRUE)
							{
								sensor[i].endresult = sensortempval[i] = SensorNoiseRemoval(i,sensortempval[i]);		//take the postcompensated value for each channel and filter it
							}
							else sensor[i].endresult = sensortempval[i];
						}
						else
						{
							sensor[i].postfilter = DEFAULT_NOT_USED_VAL;
							sensor[i].endresult = sensortempval[i];			//end result set so we can pass it back to pc
						}
					}
					//just clear the end result so as not to display the values whilst disabled
					if(sensor[i].status1.enabled == FALSE) sensor[i].endresult = DISABLED_LOG_VALUE;	//set to disabled log value, if channel is disabled
				}

				/*
				Man slow wear
				*/
				for(i=0;i<numsens;i++)
				{
					if(function.enabled.sensordeviation == TRUE) sensortempval[i] = SensorDeviation(i,sensortempval[i]);			//calculate the deviation per sensor
					else sensor[i].deviation = DEFAULT_NOT_USED_VAL;
				}
				for(i=0;i<(numsens/2);i++)
				{
					if(function.enabled.cylinderaverage == TRUE) CylinderAverage(i);			//calculate the average for each cylinder
					else cylinders[i].average = DEFAULT_NOT_USED_VAL;
				}
				for(i=0;i<(numsens/2);i++)
				{
					if(function.enabled.cylinderdeviation == TRUE && function.enabled.cylinderaverage == TRUE) CylinderDeviation(i);		//calculate the deviation per cylinder  = sensors/2
					else cylinders[i].deviation = DEFAULT_NOT_USED_VAL;
				}
				/*
				Prewarning
				*/
				//prewarning MUST be called when a new value is available, it also processes the first time averaging for prewarning
				if(allsensors.flags.calmode == 0) PreWarningCalc();	//carry out the prewarning clac on a new value (do this after the deviation has been calcualted for this pulse
				/*
				Alarm check
				*/				
				if((allsensors.iBarredVibrationSpeedLow != 0) && (rpm >= allsensors.iBarredVibrationSpeedLow) && (rpm <= allsensors.iBarredVibrationSpeedHigh))
				{
					unsigned int i;
					unsigned int *ptr;
					//03-04-2013 FF: Refer alarmlist - total.xls from Paul
					for (i=0;i<3;i++) {
						bitalarmlist[i] = 0; //sensor, cylinder alarm/slowdown mask bit for software display
					}	
					bitalarmlist[3] &= 0xFF00;
					bitalarmlist[8] &= 0x0FFF;
					for (i=9;i<14;i++) {
						bitalarmlist[i] = 0;
					}
					bitalarmlist[15] &= 0x0FFF;
					bitalarmlist[16] &= 0xFC00;
					bitalarmlist[18] &= 0x0FFF;
					for (i=19;i<22;i++) {
						bitalarmlist[i] = 0;
					}
					bitalarmlist[22] &= 0xFFF0;

					for(i=0;i<MAX_NUM_CHANNELS;i++)
					{
						ptr = (unsigned int*)&sensor[i].status2;
						*ptr = 0;	//clear the status		
						ptr = (unsigned int*)&status3[i];
						*ptr = 0;		
					}
					for(i=0;i<MAX_NUM_CHANNELS/2;i++)
					{
						ptr = (unsigned int*)&cylinders[i].status2;
						*ptr = 0;	//clear the status 		
					}					
					
					iBarred = TRUE;
				}	//check the alarms when a new value has been seen
				else
				{
					iBarred = FALSE;
					if(speedcompcoeffs.stageflag <= STAGE1_CAL || speedcompcoeffs.stageflag == CAL_ABORT) {PauseAlarm = TRUE;}
					else {PauseAlarm = FALSE;}
					MANAlarmChecks(rpm); 
				}
			}
		}
		allsensors.flags.newval = FALSE;	//clear the flag to zero once processed the new data pulse
		//clear so we can set on the next input from the sensor/(i.e. next revolution)
	}
	//AJB added 08/09/2016 V6.20
	//08-09-2016 AB: Added a check on the rpm against the allsensors rpmlimit.  If lower than this clear down the rpmaverage otherwise if(initdeltarpm > iDmPauseDeltaRpm)  will never be true!
	////AJB added 12/09/2016 V6.20 changed to getmodalrpm here 
	rpm = GetModalRPM(0);
	if(rpm <= allsensors.rpmlimit)
	{
		//sprintf(stringbuffer,"RPM:%u %u\r\n",rpm, allsensors.rpmlimit);	CLITransmitBuffer(stringbuffer);
		dynalarmlevels.rpmav = 0;
	}
}

//Sensor slow down checking per sensor value
//sensor[chan].postfilter pass in val
void SensorSlowDown(unsigned int chan, int val,unsigned int rpm)
{
char eventstring[EVENTMSG_LEN_INBYTES_PART2];
int level;
int absval;	//absolute value
// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - char chanstr[4];	//3 character for the channel number e.g. 1A (followed by a null)
// PF 09-Nov-09 Added clearAlarm
int clearAlarm = FALSE;

	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);

	// PF 30-Sep-09 added && timers.startup == 0
	if(rpm >= allsensors.rpmlimit && timers.startup == 0)	//check if above rpm limit
	{
		if(sensor[chan].status1.enabled == 1  && sensor[chan].status1.alarmmask == 0)	//is channel enabled and not masked
		{
			level = (int)settings.slowdownlevel;
			absval = abs(val);		//check +- against the slow down level
			if((absval >= level) && sensor[chan].status2.failure == 0)
			{
				sensor[chan].status2.slowdown = TRUE; // PF Gen 2 - 25-Jan-12 Changed to true for consistency
				if(sensor[chan].status2.slowdownlatched == 0)	//latch only once
				{
					//set the alarm event before logging the event as logging increments the eventid
					SetAlarmEvent(SENSORSLOWDOWN+chan);
					sensor[chan].status2.slowdownlatched = TRUE; // PF Gen 2 - 25-Jan-12 Changed to true for consistency
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - InputNumtoString(chanstr,chan);
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - if(val < 0)	sprintf(eventstring,"Ch%s, -%d microns",chanstr,level);
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - else sprintf(eventstring,"Ch%s, %d microns",chanstr,level);
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(SENSOR_SLOWDOWN,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event
					WriteNVMemory(FRAM1,SENSORSTATUS2_ALARMSLATCHED_DATA_OFFSET+(chan*2),&sensor[chan].status2,1);
				}
			}
			// PF 30-Sep-09 Changed val to absval below to make hysteresis work
			// PF 30-Sep-09 changed setting.slowdownlevel to level
			else if(absval <= (int)(level - allsensors.sensorhysteresis))
			{
				// PF 09-Nov-09 added clearAlarm and moved orignal contents to clearAlarm test at end of routine
				clearAlarm = TRUE;
			}
		}
	}

	// PF 09-Nov-09
	// If the alarm is to be cleared or sensor disabled or alarmmask enabled then clear the alarm
	if (clearAlarm == TRUE || sensor[chan].status1.enabled == 0 || sensor[chan].status1.alarmmask == 1 || PauseAlarm == TRUE) {
		if(CheckAlarmBitSet(SENSORSLOWDOWN+chan) == 1 || sensor[chan].status2.slowdownlatched == TRUE)	// PF Gen 2 - 17-May-12 Checked alarm bits in addition
		{
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - InputNumtoString(chanstr,chan);
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Ch%s RTN",chanstr);
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(SENSOR_SLOWDOWN,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
			ClearAlarmEvent(SENSORSLOWDOWN+chan);			//clear the in alarm bit for the fault
			sensor[chan].status2.slowdown = 0;	//clear once below hysteresis point
			sensor[chan].status2.slowdownlatched = 0;					
			WriteNVMemory(FRAM1,SENSORSTATUS2_ALARMSLATCHED_DATA_OFFSET+(chan*2),&sensor[chan].status2,1);
		}
	}
	// EOM
}

//Sensor alarm limit per sensor
//Pass in the value to check against the alarm limits
//sensor[chan].postfilter - value to check alarm limit against
// PF 30-Sep-09 changed routine to use level like SensorSlowDown to make the routine consistent and error immune
void SensorAlarm(unsigned int chan, int val, unsigned int rpm)
{
char eventstring[EVENTMSG_LEN_INBYTES_PART2];
int level;
// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - char chanstr[4];
int absval;	//absolute value
// PF 09-Nov-09 Added clearAlarm
int clearAlarm = FALSE;

	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
	if(rpm >= allsensors.rpmlimit && timers.startup == 0)	//check if above rpm limit
	{
		if(sensor[chan].status1.enabled == 1  && sensor[chan].status1.alarmmask == 0)	//is channel enabled and not masked
		{
			level = (int)settings.alarmlevel;
			absval = abs(val);	//check +- against the alarm level
			if((absval >= level)  && sensor[chan].status2.failure == 0)
			{
				sensor[chan].status2.alarm = TRUE; // PF Gen 2 - 25-Jan-12 Changed to true for consistency
				if(sensor[chan].status2.alarmlatched == 0)	//latch only once
				{
					//set the alarm event before logging the event as logging increments the eventid
					SetAlarmEvent(SENSORABS+chan);
					sensor[chan].status2.alarmlatched = TRUE; // PF Gen 2 - 25-Jan-12 Changed to true for consistency
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - InputNumtoString(chanstr,chan);
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - if(val < 0)	sprintf(eventstring,"Ch%s, -%d microns",chanstr,level);	//show negative point
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - else 	sprintf(eventstring,"Ch%s, %d microns",chanstr,level);
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(SENSOR_ALARM,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event
					WriteNVMemory(FRAM1,SENSORSTATUS2_ALARMSLATCHED_DATA_OFFSET+(chan*2),&sensor[chan].status2,1);
				}
			}
			// PF 30-Sep-09 Changed val to absval below to make hysteresis work
			// PF 30-Sep-09 changed setting.alarmlevel to level
			else if(absval <= (int)(level - allsensors.sensorhysteresis))
			{
				// PF 09-Nov-09 added clearAlarm and moved orignal contents to clearAlarm test at end of routine
				clearAlarm = TRUE;
			}
		}
	}
	// PF 09-Nov-09
	// If the alarm is to be cleared or sensor disabled or alarmmask enabled then clear the alarm
	if (clearAlarm == TRUE || sensor[chan].status1.enabled == 0 || sensor[chan].status1.alarmmask == 1 || PauseAlarm == TRUE) {
		if(CheckAlarmBitSet(SENSORABS+chan) == 1 || sensor[chan].status2.alarmlatched == TRUE) // PF Gen 2 - 17-May-12 Checked alarm bits in addition
		{
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - InputNumtoString(chanstr,chan);
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Ch%s RTN",chanstr);
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(SENSOR_ALARM,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
			ClearAlarmEvent(SENSORABS+chan);			//clear the in alarm bit for the fault
			sensor[chan].status2.alarm = 0;	//clear once below hysteresis point
			sensor[chan].status2.alarmlatched = 0;
			WriteNVMemory(FRAM1,SENSORSTATUS2_ALARMSLATCHED_DATA_OFFSET+(chan*2),&sensor[chan].status2,1);
		}
	}
	// EOM
}


//Sensor deviation slow down
//Pass in value to check against deivation limits
//sensor[chan].deviation
void SensorDeviationSlowDown(unsigned int chan, int val, unsigned int rpm)
{
int level;
char eventstring[EVENTMSG_LEN_INBYTES_PART2];
// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - char chanstr[4];
int absval;	//absolute value
// PF 09-Nov-09 Added clearAlarm
int clearAlarm = FALSE;

	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
	if(rpm >= allsensors.rpmlimit && timers.startup == 0)	//check if above rpm limit
	{
		if(sensor[chan].status1.enabled == 1  && sensor[chan].status1.alarmmask == 0 && function.enabled.sensordeviation == TRUE)	//is channel enabled and not masked
		{
			level = (int)settings.slowdowndevlevel;
			absval = abs(val);
			if(absval >= level) //val should be compared to level, val should be deviation
			{
				sensor[chan].status2.devslow = TRUE; // PF Gen 2 - 25-Jan-12 Changed to true for consistency
				if(sensor[chan].status2.devslowlatched == 0)	//latch only once
				{
					//set the alarm event before logging the event as logging increments the eventid
					SetAlarmEvent(SENSORDEVSLOWDOWN+chan);
					sensor[chan].status2.devslowlatched = TRUE; // PF Gen 2 - 25-Jan-12 Changed to true for consistency
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - InputNumtoString(chanstr,chan);
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - if(val < 0) sprintf(eventstring,"Ch%s, -%d microns",chanstr,level);
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - else sprintf(eventstring,"Ch%s, %d microns",chanstr,level);
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(DEVSENSOR_SLOWDOWN,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event
					WriteNVMemory(FRAM1,SENSORSTATUS2_ALARMSLATCHED_DATA_OFFSET+(chan*2),&sensor[chan].status2,1);
				}
			}
			else if(absval <= (int)(level - allsensors.sensorhysteresis))
			{
				// PF 09-Nov-09 added clearAlarm and moved orignal contents to clearAlarm test at end of routine
				clearAlarm = TRUE;
			}
		}
	}
	// PF 09-Nov-09
	// If the alarm is to be cleared or sensor disabled or alarmmask enabled then clear the alarm
	if (clearAlarm == TRUE || sensor[chan].status1.enabled == 0 || sensor[chan].status1.alarmmask == 1 || PauseAlarm == TRUE) {
		if(CheckAlarmBitSet(SENSORDEVSLOWDOWN+chan) == 1 || sensor[chan].status2.devslowlatched == TRUE)	// PF Gen 2 - 17-May-12 Checked alarm bits in addition
		{
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - InputNumtoString(chanstr,chan);
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Ch%s RTN",chanstr);
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(DEVSENSOR_SLOWDOWN,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
			ClearAlarmEvent(SENSORDEVSLOWDOWN+chan);			//clear the in alarm bit for the fault
			sensor[chan].status2.devslow = 0;	//clear once below hysteresis point
			sensor[chan].status2.devslowlatched = 0;
			WriteNVMemory(FRAM1,SENSORSTATUS2_ALARMSLATCHED_DATA_OFFSET+(chan*2),&sensor[chan].status2,1);
		}
	}
	// EOM
}

//Sensor deviation alarm
//sensor[chan].deviation - pass in the deviation value
void SensorDeviationAlarm(unsigned int chan,int val, unsigned int rpm)
{
int level;
char eventstring[EVENTMSG_LEN_INBYTES_PART2];
// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - char chanstr[4];
int absval;
// PF 09-Nov-09 Added clearAlarm
int clearAlarm = FALSE;

	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
	if(rpm >= allsensors.rpmlimit && timers.startup == 0)	//check if above rpm limit
	{
		if(sensor[chan].status1.enabled == 1  && sensor[chan].status1.alarmmask == 0 && function.enabled.sensordeviation == TRUE)	//is channel enabled and not masked
		{
			level = (int)settings.alarmdevlevel;
			absval = abs(val);
			if(absval >= level)
			{
				sensor[chan].status2.devalarm = TRUE; // PF Gen 2 - 25-Jan-12 Changed to true for consistency
				if(sensor[chan].status2.devalarmlatched == 0)	//latch only once
				{
					//set the alarm event before logging the event as logging increments the eventid
					SetAlarmEvent(SENSORDEV+chan);
					sensor[chan].status2.devalarmlatched = TRUE; // PF Gen 2 - 25-Jan-12 Changed to true for consistency
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - InputNumtoString(chanstr,chan);
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - if(val < 0)	sprintf(eventstring,"Ch%s, -%d microns",chanstr,level);
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - else sprintf(eventstring,"Ch%s, %d microns",chanstr,level);
					// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(DEVSENSOR_ALARM,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event

					WriteNVMemory(FRAM1,SENSORSTATUS2_ALARMSLATCHED_DATA_OFFSET+(chan*2),&sensor[chan].status2,1);
				}
			}
			else if(absval <= (int)(level - allsensors.sensorhysteresis))
			{
				// PF 09-Nov-09 added clearAlarm and moved orignal contents to clearAlarm test at end of routine
				clearAlarm = TRUE;
			}
		}
	}
	// PF 09-Nov-09
	// If the alarm is to be cleared or sensor disabled or alarmmask enabled then clear the alarm
	if (clearAlarm == TRUE || sensor[chan].status1.enabled == 0 || sensor[chan].status1.alarmmask == 1 || PauseAlarm == TRUE) {
		if(CheckAlarmBitSet(SENSORDEV+chan) == 1 || sensor[chan].status2.devalarmlatched == TRUE)	// PF Gen 2 - 17-May-12 Checked alarm bits in addition
		{
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - InputNumtoString(chanstr,chan);
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Ch%s RTN",chanstr);
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(DEVSENSOR_ALARM,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
			ClearAlarmEvent(SENSORDEV+chan);			//clear the in alarm bit for the fault
			sensor[chan].status2.devalarm = 0;	//clear once below hysteresis point
			sensor[chan].status2.devalarmlatched = 0;
			WriteNVMemory(FRAM1,SENSORSTATUS2_ALARMSLATCHED_DATA_OFFSET+(chan*2),&sensor[chan].status2,1);
		}
	}
	// EOM

}

//Deviaton alarm per cylinder
//enter with 0 to 14
//cylinders[num].deviation pass in the cylinder deviation as val
void CylinderDevAlarm(unsigned int num, int val, unsigned int rpm)
{
char eventstring[EVENTMSG_LEN_INBYTES_PART2];
int level;
int absval;
// PF 09-Nov-09 Added clearAlarm
int clearAlarm = FALSE;

	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
	if(rpm >= allsensors.rpmlimit && function.enabled.cylinderdeviation == TRUE && function.enabled.cylinderaverage == TRUE && timers.startup == 0)	//check if above rpm limit
	{
		//two ifs checking both sensors relating to the cylinder deviation
		//cannot set alarms if one or both sensors are masked or disabled
		if(sensor[num*2].status1.enabled == 1  && sensor[num*2].status1.alarmmask == 0)	//is channel enabled and not masked
		{
			if(sensor[(num*2)+1].status1.enabled == 1  && sensor[(num*2)+1].status1.alarmmask == 0)	//is channel enabled and not masked
			{
				level = (int)settings.cylinderalarmlevel;
				absval = abs(val);
				if(absval >= level)
				{
					cylinders[num].status2.alarm = 1;
					if(cylinders[num].status2.alarmlatched == 0)	//latch only once
					{
						//set the alarm event before logging the event as logging increments the eventid
						SetAlarmEvent(CYLINDERDEV+num);
						cylinders[num].status2.alarmlatched = 1;
						//cyl num reported not sensor!
						// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - if(val < 0) sprintf(eventstring,"Cyl %d, -%d microns",num+1,level);	//reference as 1 to 14 for cylinders
						// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - else sprintf(eventstring,"Cyl %d, %d microns",num+1,level);	//reference as 1 to 14 for cylinders
						// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(CYLINDERDEV_ALARM,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event

						WriteNVMemory(FRAM1,CYLINDERSTATUS2_ALARMSLATCHED_DATA_OFFSET+(num*2),&cylinders[num].status2,1);
					}
				}
				else if(absval <= (int)(settings.cylinderalarmlevel - allsensors.cylinderhysteresis))
				{
					// PF 09-Nov-09 added clearAlarm and moved orignal contents to clearAlarm test at end of routine
					clearAlarm = TRUE;
				}
			}
		}
	}
	// PF 09-Nov-09
	// If the alarm is to be cleared or sensor disabled or alarmmask enabled then clear the alarm
	if (clearAlarm == TRUE || sensor[num*2].status1.enabled == 0 || sensor[num*2].status1.alarmmask == 1 || sensor[(num*2)+1].status1.enabled == 0 || sensor[(num*2)+1].status1.alarmmask == 1 || PauseAlarm == TRUE) {
		if(CheckAlarmBitSet(CYLINDERDEV+num) == 1 || cylinders[num].status2.alarmlatched == TRUE) // PF Gen 2 - 17-May-12 Checked alarm bits in addition
		{
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Cyl %d RTN",num+1);	//reference as 1 to 14 for cylinders
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(CYLINDERDEV_ALARM,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
			ClearAlarmEvent(CYLINDERDEV+num);			//clear the in alarm bit for the fault
			cylinders[num].status2.alarm = 0;	//clear once below hysteresis point
			cylinders[num].status2.alarmlatched = 0;
			WriteNVMemory(FRAM1,CYLINDERSTATUS2_ALARMSLATCHED_DATA_OFFSET+(num*2),&cylinders[num].status2,1);
		}
	}
	// EOM
}


//Store the man compensation table to non volatile FRAM
void WriteMANCompTabletoNVMEM(void)
{
unsigned int position;
unsigned int size;
unsigned int *ptr;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = MANCOMP_TABLE;
 	size = MAN_COMPTABLESIZE_INWORDS;
	ptr = (unsigned int*)man_comptable;
	WriteNVMemory(FRAM1,position,ptr,size);
}

//Read back the compensaton table from NVMEM
//This will be called on power up only - as this is held in ram
void ReadMANCompTablefromNVMEM(void)
{

unsigned int position;
unsigned int len;
unsigned int *ptr;

	position = MANCOMP_TABLE;
	ptr = (unsigned int*)&man_comptable;
	len = MAN_COMPTABLESIZE_INWORDS;
	ReadNVMemory(FRAM1,position,ptr,len);
}

//Store the all sensors structure to non vol FRAM
//Each will be offset by: 1 word	//1word of status per channel
void WriteAllSensorStructtoNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = ALLSENSORSTRUCT_OFFSET;
	ptr = (unsigned int*)&allsensors;
	len = sizeof(allsensorstruct);
	WriteNVMemory(FRAM1,position,ptr,len);
}

//Read back from NVMEM
//This will be called on power up only - as this is held in ram
void ReadAllSensorStructfromNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table

	position = ALLSENSORSTRUCT_OFFSET;
	ptr = (unsigned int*)&allsensors;
	len = sizeof(allsensorstruct);
	ReadNVMemory(FRAM1,position,ptr,len);

}

//Store the sensor status to non vol FRAM
//Enter with the channel number to store to FRAM enter 0 to 27
//Each will be offset by: 1 word	//1word of status per channel
void WriteSensorStatustoNVMEM(unsigned int chan)
{
unsigned int position;
unsigned int *ptr;
unsigned int size;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = SENSORSTATUS_OFFSET+(chan*2);	//*2 as we are addressing in bytes and not words

	//FRAM - do not need to check the status of the fram as it writes in real time and is never seen as busy
	//This means we can werite the entire 112 bytes in one go anywhere into the FRAM
	ptr = (unsigned int*)&sensor[chan].status1;

	size = 1;	//1 word for sensor status
	WriteNVMemory(FRAM1,position,ptr,size);
}


//Read back the sensor status from NVMEM
//This will be called on power up only - as this is held in ram
void ReadSensorStatusfromNVMEM(unsigned int chan)
{
unsigned int position;
unsigned int *ptr;
unsigned int size;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = SENSORSTATUS_OFFSET + (chan* 2);		//*2 as we are addressing in bytes and not words
	ptr = (unsigned int*)&sensor[chan].status1;
	size = 1;	//1 word only for sensor status

	ReadNVMemory(FRAM1,position,ptr,size);
}



//Store the offset A to non vol FRAM
//Enter with the channel number to store to FRAM enter 0 to 27
//Each will be offset by: 1 word	//1word of status per channel
void WriteOffsetAtoNVMEM(unsigned int chan)
{
unsigned int position;
unsigned int *ptr;
unsigned int size;
	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = OFFSETA_OFFSET + (chan *2);	//address in bytes not words

	//FRAM - do not need to check the status of the fram as it writes in real time and is never seen as busy
	//This means we can werite the entire 112 bytes in one go anywhere into the FRAM
	ptr = (unsigned int*)&(offsetA);
	ptr += chan;
	size = 1;	//1 word for offset
	WriteNVMemory(FRAM1,position,ptr,size);

}

//Read back the offset A from NVMEM
//This will be called on power up only - as this is held in ram
void ReadOffsetAfromNVMEM(unsigned int chan)
{
unsigned int position;
unsigned int *ptr;
unsigned int size;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = OFFSETA_OFFSET + (chan* 2);	//address in bytes not words;
	ptr = (unsigned int*)&offsetA;
	ptr += chan;
	size = 1;	//1 word only for offset
	ReadNVMemory(FRAM1,position,ptr,size);
}

//Store the offset B to non vol FRAM
//Enter with the channel number to store to FRAM enter 0 to 27
//Each will be offset by: 1 word	//1word of status per channel
void WriteOffsetBtoNVMEM(unsigned int chan)
{
unsigned int position;
unsigned int *ptr;
unsigned int size;
	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = OFFSETB_OFFSET+(chan*2);	//address in bytes not words;

	//FRAM - do not need to check the status of the fram as it writes in real time and is never seen as busy
	//This means we can werite the entire 112 bytes in one go anywhere into the FRAM
	ptr = (unsigned int*)&offsetB;
	ptr += chan;
	size = 1;	//1 word for offset
	WriteNVMemory(FRAM1,position,ptr,size);

}

//Read back the offset A from NVMEM
//This will be called on power up only - as this is held in ram
void ReadOffsetBfromNVMEM(unsigned int chan)
{
unsigned int position;
unsigned int *ptr;
unsigned int size;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = OFFSETB_OFFSET + (chan*2);	//address in bytes not words;
	ptr = (unsigned int*)&offsetB;
	ptr += chan;
	size = 1;	//1 word only for offset
	ReadNVMemory(FRAM1,position,ptr,size);
}


//GEN1.5 etc
//The following function implements an RC type first stage noise filter as defined by the following equation.
//x is a factor degined between 2-5% i.e. 0.02 to 0.05 and can be input in tenths
//Input value stored in safe2.filter.inputtap;	//enter as percentage to two dp e.g. 500 = 0.05
//Newfil = Oldfil * (1-x) + Newval* x
//Enter with channel number to filter
//Use global registers to take incoming val filter and store
int SensorNoiseRemoval(unsigned int num, int val)
{
float previous;
float current;
float filtertap;

	current = (float)val;		//value output after speed compensation, pre filter
	if(noisefilterLOAD[num] != 0) //set to value, if RTN after a failure - used to ignore filter for one iteration
	{
		previous = current;	
		noisefilterLOAD[num]--;	//decrement the counter so next iteration will use filter
	}
	else previous = (float)sensor[num].postfilter;

	filtertap = (float)config.filter.inputtap / (float)10000;	//get as 0.02 to 0.05 figure
	previous += (filtertap*(current - previous));
	sensor[num].postfilter = previous;	//value held as a float
	val = FloattoIntRound(previous);
	
	return(val);
}

//Check if to apply the noise filter based on whether we have enough data from the cal table
//This will only be carried out if we have 1000 points or more from fine cal  i.e. not when still using rough points
//The function will return whether to use the filter i.e. TRUE
int NoiseFilterApplied(unsigned int chan,unsigned int rpm)
{
//int i;
//int man1000point;

	if(allsensors.flags.calmode == TRUE)		//check if in cal mode - if so do not apply the filter when 1000 points have not been seen
	{
		return(iStartRapidWear);
		
		/*
		//calculate i which will point to the value in the table to update
		i = rpm - allsensors.rpmmin;
		if(i > allsensors.rpmmax) i = (allsensors.rpmmax - allsensors.rpmmin) - 1;	//set to last point in table if rpm is above limit

		man1000point = 0;
		if(rpm >= allsensors.rpmmin)	man1000point = ReadMAN1000NVMEM(i,chan);	//read man1000 table from fram for this speed point and this channel
		if(man1000point == 0)	//check if the value already assigned if zero not assigned
		{
			return(FALSE);		//do not use the filter if at this speed and not seen 1000 points
		}
		else
		{
			return(TRUE);

		}
		*/
	}
	else return(TRUE);		//not in cal mode, so use the filter
}

//Carry out the sensor to sensor deviation
//This will check what channels are enalbed and not in failure mode or not currenlty being calibrated
//d(Sn) = Sn - (S1 + S2 + S3 + S4 + S5)/5
//The return value is sotred in the sensordeviation structure
//num relates to channel zero indexed
int SensorDeviation(unsigned int num, int val)
{
unsigned int i;
unsigned int j;
long sum;
float floatav;
float dev;
		
		dev = 0;
		//not if the alarm is masked for this channel the deivation will not be caulcated (during times such as replacment)
		if(sensor[num].status1.enabled == 1  && sensor[num].status1.replaced == 0)	//channel must be enabled and replaced must not be true
		{
			//check if in failure mode (bit will be set if so
			if(sensor[num].status2.failure == 0)
			{
				j = 0;		//count for averaging of remaining channels in operation
				sum = 0;
				for(i=0;i< allsensors.numsensors;i++)
				{
					if(num != i)
					{
						if((sensor[i].status1.enabled != 0) && (sensor[i].status2.failure == 0) && (sensor[i].status1.replaced == 0))	//chan can be used in calc
						{
							j++;
							sum += (long)sensor[i].endresult;
						}
					}
				}
				floatav = (float)sum / (float)j;
				dev = (float)val - floatav;	//deviation for this channel from all others
				sensor[num].deviation = FloattoIntRound(dev);
			}
			else sensor[num].deviation = 0;	//set to zero for failure, cannot work out deviation
		}
		else sensor[num].deviation = 0;	//set to zero if channel not enabled

	return(sensor[num].deviation);
}

//Cylinder average calculates a value based on the two sensors fitted per cyclinder
//This will account for the fore and aft motion which causes the deviaton between two sensors on a cylinder
//Calculated as Av(C3) = S5+S6/2
//The number of outputs relating to the number of cylinders
//num = the cylinder number not the sensor number
void CylinderAverage(unsigned int num)
{
float temp;
int condition;

	if(sensor[num*2].status1.enabled != 0 && sensor[(num*2)+1].status1.enabled != 0)	//check if this channel is enabled
	{
		//check if in failure mode (bit will be set if so
		condition = 0;
		if(sensor[num*2].status2.failure == 1 || sensor[(num*2)+1].status2.failure == 1)   condition = 1;
		if(sensor[num*2].status1.replaced == 1 || sensor[(num*2)+1].status1.replaced == 1) condition = 1;
		if(condition == 0)	//only allow if not in failure or replaced mode
		{
			temp = ((float)sensor[num*2].endresult + (float)sensor[(num*2)+1].endresult)/2;	//float maths
			cylinders[num].average = FloattoIntRound(temp);
		}
		else
		{
			cylinders[num].average = 0;	//set to zero if one channel is in failure or replaced
		}
	}
	else cylinders[num].average = 0;
}


//Cylinder deviation calculates a value based on the two sensors fitted per cyclinder looking at the deviation cylinder to cylinder
//Calculated as Dev(C3) = avg(C3) - (S1+S2+S3+S4+S7+S8)/6
//num = the cylinder number not the sensor number
void CylinderDeviation(unsigned int num)
{
unsigned int i;
unsigned int j;
float average;

	if((sensor[num*2].status1.enabled != 0) && (sensor[(num*2)+1].status1.enabled != 0))	//check if this channel is enabled
	{
		//check if in replacement mode
		if(sensor[num*2].status1.replaced == 0 && sensor[(num*2)+1].status1.replaced == 0)	//replaced bit check
		{
			//check if in failure mode (bit will be set if failed)
			if((sensor[num*2].status2.failure == 0) && (sensor[(num*2)+1].status2.failure == 0))
			{
				j = 0;		//count for averaging of remaining channels in operation
				average = 0;
				for(i=0;i <allsensors.numsensors;i++)
				{
					if(((num*2) != i) && (((num*2)+1) != i))
					{
						if((sensor[i].status1.enabled != 0) && (sensor[i].status2.failure == 0) && (sensor[i].status1.replaced == 0))	//chan can be used in calc
						{
							j++;
							average += sensor[i].endresult;
						}
					}
				}
				average /= j;	//find average of other sensors
				average = (float)cylinders[num].average - average;
				cylinders[num].deviation = FloattoIntRound(average);
			}
			else cylinders[num].deviation = 0;
		}
		else cylinders[num].deviation = 0;
	}
	else cylinders[num].deviation = 0;
}

//Enter the function with the channel number to calibrate starting from zero
//The value is obtained directly from the sensor structure pertaining to the channel requested
//The compensated value will be stored to the sensor structure for that channel
//Value returned after compensation, pass in the value to modify
int SensorCompensation(unsigned int num, int val, unsigned int rpm)
{
int rpmoffset;

	//calculate the offset intot the rpm table
	rpmoffset = rpm - allsensors.rpmmin;
	if(rpmoffset < 0) rpmoffset = 0;
	//apply compensaton between min and max within the table
	if(rpm >= allsensors.rpmmax) rpmoffset = allsensors.rpmmax - allsensors.rpmmin - 1;		//highest point in table used if above limit

	//the offset due to speed is a positive value and therefore will be shown as larger wear for higher speeds.
	//This hsold be removed from the precompensated value
	val = sensor[num].postcomp = (val - GetRPMCompVal(num,rpmoffset));	//remove the offset due to speed
	return(val);
}



//apply the offset relating to offset a and offset b registesrs
//OffsetA is stored if we are in DC mode - i.e. calculate the offset to store to zero the sensors when on turning gear
//OffsetB is an additional offset that can be set from the PC
//Apply per channel - enter with the channel number
//Pass the value to be modified into the function. modified value will be returned
int ApplyOffset(unsigned int num, int val)
{

	if(settings.dcmode == FALSE)		//not in dc mode so use offset on value
	{
		val = val - offsetA.val[num] - offsetB.val[num];
	}
	sensor[num].precomp = val;		//save to structure for channel
	return(val);
}



//Pre warning power up init should be called on power up to load prewarning structure back from non vol
//Checks done to find out if this is clear in FRAM if so set all to zero - check done on two flags that should only be 0 or 1
void PreWarningPowerUpInit(void)
{

	ReadPrewarnStructfromNVMEM();
	//reset the timer and carry on
	/* Lv-010 fix: cast forces 32-bit arithmetic so the multiplication
	 * doesn't overflow the 16-bit `int` on TI C2000. With prewarningtimer=360
	 * the RHS evaluates to 4,320,000 ticks (~6 h at 5 ms/tick); the previous
	 * unmodified expression overflowed mod 65,536 to 60,160 (~5 min). */
	timers.prewarn = (unsigned long)allsensors.prewarningtimer * 60UL * SECS_TO_MS_MULTIPLIER;//set in minutes
}

//Used to reset all prewarning conditions.
//May be set if calibration is re-entered
//Call on starting a new calibration and on init the start of the prewarning cal.
void PrewarnReset(void)
{
int i;

	timers.prewarn = 0;
	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		//init all back to initial value
		prewarn.prelevel[i] = allsensors.prewarninglevel;	//set to the initial level for all sensors e.g. 250um
		prewarn.average[i] = 0;		//average over 6 hour period
		prewarn.calcacc[i] = 0;
		prewarn.points[i] = 0;
		if(sensor[i].status2.prewarninglatched == TRUE) PrewarningAlarmReset(i);
	}
	WritePrewarnStructtoNVMEM();		//save to non vol

}

//function called when initialisaiton of the pre warning averaging is required
//this will reset the average and calcualte a new average over a 6 hour period (or time set in allsensors.prewarningtimer)
void PreWarningInit(void)
{	
// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - char eventstring[EVENTMSG_LEN_INBYTES_PART2];

	prewarn.prewarncompleteflag = TRUE;	//pre warning 6 hour averaging completed when this flag is set to true
	PrewarnReset();
	/* Lv-010 fix: cast forces 32-bit arithmetic so the multiplication
	 * doesn't overflow the 16-bit `int` on TI C2000. With prewarningtimer=360
	 * the RHS evaluates to 4,320,000 ticks (~6 h at 5 ms/tick); the previous
	 * unmodified expression overflowed mod 65,536 to 60,160 (~5 min). */
	timers.prewarn = (unsigned long)allsensors.prewarningtimer * 60UL * SECS_TO_MS_MULTIPLIER;//set in minutes
	// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
	// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - LogEvent(PREWARN_INITIATED,HIGH_PRIORITY,NO,eventstring);	//no extra message to pass in for this event
	SetBitEvent(PREWARN_INIT_EVENT); // PF Gen 2 - 07-Mar-12 Old alarm system backend removal - prewarn reset

}

//Change from the modbus to push the level up by the 
//These are set individually from the modbus regisers and then written to NVMEM by this function
//this is only done when a sensor is replaced or adjusted
//e.g. if a sensor is replaced/adjusted it will need to be reset to the initial level
void PreWarnLevelReset(void)
{
int i;
	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		if(sensor[i].status1.replaced == TRUE)
		{
			prewarn.prelevel[i] = allsensors.prewarninglevel;
		}
	}
	WritePrewarnStructtoNVMEM();
}

//carry out the checks for the prewarning calculation
//This will vary depending on whether this is first occurence
//Function should be called when a new value is available
void PreWarningCalc(void)
{
int i;
int dev;
char eventstring[EVENTMSG_LEN_INBYTES_PART2];
// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - char chanstr[4];	//3 character for the channel number e.g. 1A (followed by a null)
int prewarnval;

	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);

	if(prewarn.prewarncompleteflag == TRUE)
	{
		if(timers.prewarn != 0)		//add up over time
		{
			for(i=0;i<allsensors.numsensors;i++)
			{
				//process channel if no failure and enabled
				if(sensor[i].status1.enabled == 1 && sensor[i].status2.failure == 0)
				{
					dev = GetEndResultValue(i);
					prewarn.calcacc[i] += (long)dev;		//add on the deviation for the summation over the time period
					prewarn.points[i]++;	//increment the count on processing a new value
				}
			}
		}
		else if(timers.prewarn == 0)		//prewarning time zero start averaging and compare at this point
		{
			for(i=0;i<allsensors.numsensors;i++)
			{
				// PF 30-Sep-09 added in && sensor[i].status1.alarmmask == 0 to alarm mask pre-warning
				if(sensor[i].status1.enabled == 1 && sensor[i].status2.failure == 0 && sensor[i].status1.replaced == 0 && sensor[i].status1.alarmmask == 0)
				{
					if(prewarn.points[i] != 0)
					{
						prewarn.average[i] = (int)((long)prewarn.calcacc[i]/(long)prewarn.points[i]);		//find the average
					}
					else prewarn.average[i] = 0;
					//error checking +- checking
					prewarnval = abs(prewarn.average[i]);	//get absolute of current value
					// PF 30-Sep-09 removed prewarnval -= prewarn.prelevel[i]; and changed > 0 test to implement like rest of setpoints
					if(prewarnval >= prewarn.prelevel[i])	//check absolue for exceeded level (levels may be different for each sensor) 
					{
						sensor[i].status2.prewarning = 1;
						if(sensor[i].status2.prewarninglatched == 0)	//latch only once
						{
							//set the alarm event before logging the event as logging increments the eventid
							SetAlarmEvent(SENSORPREWARN+i);
							sensor[i].status2.prewarninglatched = 1;
							// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - InputNumtoString(chanstr,i);
							// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Ch%s,Level:%dum",chanstr,prewarn.prelevel[i]);
							// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(SENSOR_PREWARN,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event
							WriteNVMemory(FRAM1,SENSORSTATUS2_ALARMSLATCHED_DATA_OFFSET+(i*2),&sensor[i].status2,1);
							prewarn.prelevel[i] += allsensors.prewarninglevel;	//increase by same amount again!!
							//NOTE:  Alarm will be locked in for duration of next averaging period.
						}
					}
					else
					{
						if(sensor[i].status2.prewarninglatched == TRUE) PrewarningAlarmReset(i);
					}
				}
				// PF 10-Nov-09 On channel disabled/alarm mask clear alarm
				if(sensor[i].status1.enabled == 0 || sensor[i].status1.alarmmask == 1) {
					if(sensor[i].status2.prewarninglatched == TRUE) PrewarningAlarmReset(i);
				}
				// PF 10-Nov-09 EOM
				prewarn.calcacc[i] = 0;	
				prewarn.points[i] = 0;
			}
			/* Lv-010 fix: cast forces 32-bit arithmetic so the multiplication
	 * doesn't overflow the 16-bit `int` on TI C2000. With prewarningtimer=360
	 * the RHS evaluates to 4,320,000 ticks (~6 h at 5 ms/tick); the previous
	 * unmodified expression overflowed mod 65,536 to 60,160 (~5 min). */
	timers.prewarn = (unsigned long)allsensors.prewarningtimer * 60UL * SECS_TO_MS_MULTIPLIER;//set in minutes
			WritePrewarnStructtoNVMEM();
		}
	}
}


//Clear down the prewarning alarm - either when the average returns to normal
//or on init from the user
void PrewarningAlarmReset(int chan)
{

// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - char eventstring[EVENTMSG_LEN_INBYTES_PART2];
// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - char chanstr[4];	//3 character for the channel number e.g. 1A (followed by a null)

// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - 	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - InputNumtoString(chanstr,chan);
// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - 	sprintf(eventstring,"Ch%s,Level:%dum RTN",chanstr,prewarn.prelevel[chan]);
// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - 	LogEvent(SENSOR_PREWARN,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
	ClearAlarmEvent(SENSORPREWARN+chan);			//clear the in alarm bit for the fault
	sensor[chan].status2.prewarning = 0;
	sensor[chan].status2.prewarninglatched = 0;
	WriteNVMemory(FRAM1,SENSORSTATUS2_ALARMSLATCHED_DATA_OFFSET+(chan*2),&sensor[chan].status2,1);
}

//Store the prewarning structure to non vol FRAM
void WritePrewarnStructtoNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	position = PREWARNSTRUCT_OFFSET;
	ptr = (unsigned int*)&prewarn;
	len = sizeof(prewarnstruct);
	WriteNVMemory(FRAM2,position,ptr,len);
}

//Read back from NVMEM
//This will be called on power up only - as this is held in ram
void ReadPrewarnStructfromNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table

	position = PREWARNSTRUCT_OFFSET;
	ptr = (unsigned int*)&prewarn;
	len = sizeof(prewarnstruct);
	ReadNVMemory(FRAM2,position,ptr,len);

}
