//MAN Calibration implementation
//The following file contains the functions for calibrating the SPU

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "core.h"
#include "setup.h"
#include "sci.h"
#include "globals.h"
#include "spi.h"
#include "pccli.h"
#include "logging.h"
#include "PCModBus.h"
#include "mancal.h"
#include "man.h"
#include "sdcard.h"
#include "alarms.h"
#include "adc.h"

calibrationstruct calibration;
speedcompstruct speedcompcoeffs;
mancalstruct mancal;

unsigned int rpmpointtest;
unsigned int chanUT;
//11-12-2012 FF: Add variables
unsigned int bReadyToSampling = FALSE;
unsigned int bSamplingFinished = FALSE;
const unsigned long wThirtySecondInMs = 30 * SECS_TO_MS_MULTIPLIER;
unsigned long wFiveResulotionInMs;
unsigned int CalRpm;
volatile unsigned int iRepaidWearReset;
volatile unsigned int iStartRapidWear;
volatile unsigned int iFiveResDone;

void RealRoughCal(int index, unsigned int rpm);
void RoughCal(void);
void CalProgression(void);
void FirstStageCalCurve(void);
void SecondStageCalCurve(void);
void Stage3CalCurve(void);
void FineCalModeInit(void);
void FineCurveCal(void);
void FineCurveCalInterpolation(unsigned int numsamples);
void Interpolate(int chan,int offset, int interpoints, float intercept, float increment);
void ClearCalAveragingAlarm(void);
void AccumulateRoughCal(int index,unsigned int rpm);

void MANCalAlarm(unsigned int chan, int rpm,unsigned int val,int man1000input);

void WriteAccCalNVMEM(unsigned int rpmval);
void ReadAccCalNVMEM(unsigned int rpmval);
void WriteCalibrationStructtoNVMEM(void);
void ReadCalibrationStructfromNVMEM(void);
void WriteSpeedCompStructtoNVMEM(void);
void ReadSpeedCompStructfromNVMEM(void);
void WriteMANCaltoNVMEM(void);
void ReadMANCalfromNVMEM(void);

void WriteMAN1000NVMEM(unsigned int rpmval,unsigned int chan, int val);

//see define for the stage calibration flags relating to the stage currently in progress

//The table for storing the accumulated values for averaging over 500 hours is stored to NVMEMory
//This information is stored as an value added up over this time period and therefore needs to be stored as a long
//The data stored is written as a single value (long) to a specific location on the NVMEM

//The table is setup as 28 channels by 150 points.  This means the 28 channels for one speed point can be retrieved in one block
//Time calculation for retrieving data from one speed point: 28 * 4 bytes,  addressing FRAM 2byte + 1 byte read code
//Total bytes= 115 operating at 9.75Mhz the speed = 0.1us per bit, 115 *8 * 0.1us = 100us stream

//user aborted the calibration procedure from the PC
void CalAbort(void)
{
 // PF Gen 2 - 07-Mar-12 Old alarm system backend removal - char eventstring[EVENTMSG_LEN_INBYTES_PART2];
unsigned int i; // PF Gen 2 - 03-Nov-11

	 // PF Gen 2 - 07-Mar-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);

	// PF Gen 2 - 03-Nov-11 Remove all channels into calibration mode
	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		SetCalMode(i,DISABLED);
		WriteSensorStatustoNVMEM(i);
	}
	SensorStatustoSDCardFile();
	// PF Gen 2 - 03-Nov-11 EOM
	allsensors.flags.calmode = 0;	//aborted
	speedcompcoeffs.stageflag = CAL_ABORT;	//set flag to abort by user
	WriteSpeedCompStructtoNVMEM();			//save struct so flag is saved as aborted
	 // PF Gen 2 - 07-Mar-12 Old alarm system backend removal - LogEvent(CALIBRATION_ABORTED,HIGH_PRIORITY,NO,eventstring);	//no extra message to pass in for this event
	SetBitEvent(CALIBRATION_ABORTED_EVENT); // PF Gen 2 - 07-Mar-12 Old alarm system backend removal - calibration aborted event

	// Use the caompensation table before cal
	ReadMANCompTablefromSDCardFile();
	// Restore alarm level to normal mode
	SetupNormalModeAlarmLevels();
}

//Initialise variables etc on powerup.  Restore to state if power has been lost
void PowerUpCalInit(void)
{
	SetupNormalModeAlarmLevels();			//set to normal levels from the allsensors structure - may get set to cal levels if in learning mode
	ReadCalibrationStructfromNVMEM();		//calibration struct
	ReadMANCalfromNVMEM();
	PowerOutCalRecovery();
}

//Function to read back the average aaccumulated value stored in the calibration structure
//Enter with which channel and 0,1 or 2 for the speed ref points
//If reading data after loading into position y = 0 from nvmem, should always enter with position as zero
//The reutrn value is a pointer to the start of the array of longs
long * ReadAccAverageVal(unsigned int chan, unsigned int position)
{
	if(chan < MAX_NUM_CHANNELS && position < NUM_INITIAL_SPEED_REF)	return(&calibration.averagevalacc[position][chan]);
	else return(&calibration.averagevalacc[0][0]);
}

long * ReadAverageSpeedAcc(unsigned int chan, unsigned int position)
{
	if(position < NUM_INITIAL_SPEED_REF)	return(&calibration.averagespeedacc[position][0]);
	else return(&calibration.averagespeedacc[0][0]);
}

//return ptr to the number of points seen for each speed band (max 150 points)
unsigned long * ReadNumPoints(unsigned int position)
{
	if(position < NUM_SPEED_REF) return(&calibration.numpoints[position]);
	else return(&calibration.numpoints[0]);
}

//Write the speed compensation structure to non volatile memory
//This is information relating to calbiration for man spec
void WriteSpeedCompStructtoNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = SPEEDCOMPSTRUCT_OFFSET;

	//FRAM - do not need to check the status of the fram as it writes in real time and is never seen as busy
	ptr = (unsigned int*)&speedcompcoeffs;
	len = sizeof(speedcompstruct);
	WriteNVMemory(FRAM1,position,ptr,len);
	//update the general settings as this contains the speedcompcoeffs
	settings.sdcardupdate = SDGENERALUPDATE;		//update the sd card settings
}

//Read back from NVMEM
//This will be called on power up only - as this is held in ram
//Read back the information for the speed compensations coeffs
void ReadSpeedCompStructfromNVMEM(void)
{
unsigned int position;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = SPEEDCOMPSTRUCT_OFFSET;
	len = sizeof(speedcompstruct);
	//read adata from nvmemory (fram in this case!)
	ReadNVMemory(FRAM1,position,(unsigned int*)&speedcompcoeffs,len);

}

//Allowing for data unpacking and storage to ram etc it should be possible to retrieve or set the data for one speed point in 200us
//To address a particular set of 28 registers the offset address for the FRAM is as follows:
//Address = (RPM - RPMOffset) * (4*28)
//rpmval should be input as the value in the table withh offset already removed
void WriteAccCalNVMEM(unsigned int rpmval)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//position setup as 28 wide i.e. 28 channels, the data written will only relate to the number of channels installed on the system
	position = rpmval * (SIZEOF_AVERAGEVALACC_IN_BYTES);
	position += ACCTABLE_OFFSET;
	//FRAM - do not need to check the status of the fram as it writes in real time and is never seen as busy
	//This means we can werite the entire 112 bytes in one go anywhere into the FRAM
	ptr = (unsigned int*)&calibration.averagevalacc;
	len = SIZEOF_AVERAGEVALACC_IN_WORDS;	//size is set to the size of the array for 28 channels
	WriteNVMemory(FRAM1,position,ptr,len);
}

//Read the data from NVMEM relating to the accumlated values from each sensor
//This will read back upto 28 values in one go
void ReadAccCalNVMEM(unsigned int rpmval)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//position setup as 28 wide i.e. 28 channels, the data written will only relate to the ummber of channels installed on the system
	position = rpmval * (SIZEOF_AVERAGEVALACC_IN_BYTES);
	position += ACCTABLE_OFFSET;
	//FRAM - do not need to check the status of the fram as it write in real time and is never seen as busy
	ptr = (unsigned int*)&calibration.averagevalacc;
	len = SIZEOF_AVERAGEVALACC_IN_WORDS;	//size is set to the size of the array for 28 channels
	ReadNVMemory(FRAM1,position,ptr,len);
}

//These points are used to set the alarm should the values deviate outside of these limits when calibrating
//pass in the ref for the speed point to be read (this is 0 to 149)
//pass in channel 0 to 27
//pass in the value to write into the table

////// Write to FRAM2
////// Can be used to set alarm bit for each channel (0-27) at each RPM (0-149)
void WriteMAN1000NVMEM(unsigned int rpmval,unsigned int chan, int val)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//position setup as 28 wide i.e. 28 channels, the data written will only relate to the number of channels installed on the system
	//offset into table and then offset again relating to channel
	position = (rpmval * (SIZEOF_MAN1000_IN_BYTES)) + (chan*2);
	position += MAN1000TABLE_OFFSET;
	//FRAM - do not need to check the status of the fram as it writes in real time and is never seen as busy
	//This means we can werite the entire 112 bytes in one go anywhere into the FRAM
	ptr = (unsigned int*)&val;
	len = 1;	//size in words (single word to write in this case)
	WriteNVMemory(FRAM2,position,ptr,len);
}


//Read the data from NVMEM relating to the man table stored after 100 points are seen at a particular speed point
//This will read back upto 28 values in one go
//These points are used to set the alarm should the values deviate outside of these limits when calibrating
//pass in the ref for the speed point to be read (this is 0 to 149)
int ReadMAN1000NVMEM(unsigned int rpmval, unsigned int chan)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;
int val;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//position setup as 28 wide i.e. 28 channels, the data written will only relate to the number of channels installed on the system
	//offset into table and then offset again relating to channel
	position = rpmval * (SIZEOF_MAN1000_IN_BYTES) + (chan*2);
	position += MAN1000TABLE_OFFSET;
	ptr = (unsigned int*)&val;					//read back a single integer and return this
	len = 1;									//size is set to 1 word
	ReadNVMemory(FRAM2,position,ptr,len);			

	return(val);	//return the integer value rad from the fram
}

//Store the entire calibration structure to nvmem
void WriteCalibrationStructtoNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = CALIBRATIONSTRUCT_OFFSET;

	//FRAM - do not need to check the status of the fram as it writes in real time and is never seen as busy
	//This means we can werite the entire xxx bytes in one go anywhere into the FRAM
	ptr = (unsigned int*)&calibration;
	len = sizeof(calibration);
	WriteNVMemory(FRAM1,position,ptr,len);
}


//Read back the calibration structure from NVMEM
//This will be called on power up only - as this is held in ram
void ReadCalibrationStructfromNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = CALIBRATIONSTRUCT_OFFSET;

	//FRAM - do not need to check the status of the fram as it write in real time and is never seen as busy
	//ReadfromMemoryFRAM1(position);
	ptr = (unsigned int*)&calibration;
	len = sizeof(calibration);
	ReadNVMemory(FRAM1,position,ptr,len);
}

//Write mancal structure to nvmem
void WriteMANCaltoNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = MANCALSTRUCT_OFFSET;

	//FRAM - do not need to check the status of the fram as it writes in real time and is never seen as busy
	//This means we can werite the entire 112 bytes in one go anywhere into the FRAM
	ptr = (unsigned int*)&mancal;
	len = sizeof(mancal);
	WriteNVMemory(FRAM1,position,ptr,len);
}

//Read back the man cal structure from NVMEM
//This will be called on power up only - as this is held in ram
void ReadMANCalfromNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = MANCALSTRUCT_OFFSET;

	//FRAM - do not need to check the status of the fram as it write in real time and is never seen as busy
	//ReadfromMemoryFRAM1(position);
	ptr = (unsigned int*)&mancal;
	len = sizeof(mancal);
	ReadNVMemory(FRAM1,position,ptr,len);
}


unsigned int GetPercentageLeft(void)
{
	if(speedcompcoeffs.stageflag < STAGE4_CAL)
	{
		//turn the time left into minutes and convert to percentage against the original timer
		mancal.percentleft = (unsigned int)((((float)timers.calibrate/(float)MINS_TO_MS_MULTIPLIER)/(float)speedcompcoeffs.initialtimer) *100);
	}
	else
	{
		mancal.percentleft = (unsigned int)((((float)timers.calibrate/(float)MINS_TO_MS_MULTIPLIER)/(float)speedcompcoeffs.learningmodetimer) *100);
	}
	return(mancal.percentleft);	//percentage of time remaining
}

//Report back the time left for calibration once into learning mode
unsigned int GetLearningTimeLeft(void)
{
	mancal.learningleft = timers.calibrate/60/200;
	mancal.learningleft +=1;	//add on 1 minute so it displays time left (otherwise as soon as counter sstarts to count down it will be into the minute below)
	if(timers.calibrate == 0) mancal.learningleft = 0;
	return(mancal.learningleft);	//change into minutes
}

//Report back the interval left 
unsigned int GetIntervalTimeLeft(void)
{	
	//calibrate2 contains the time left for the interval in ms
	//timers.calibrate2 = speedcompcoeffs.intervaltimer * 60 * 200;		//this should be the interval in hours e.g. 50 hours
	mancal.intervalleft = timers.calibrate2/60/200;
	if(mancal.intervalleft != 0)mancal.intervalleft +=1;	//add on 1 minute so it displays time left
	return(mancal.intervalleft);	//change into minutes
}

//Cal the powerout cal revovery if we have lost power douring a calibration.
//If the stage is still in rough cal this will start the rough cal again
//If we have reached fine cal the fine cal will carry on from whereever it left off
//This function should be called after the data has been loaded back from NVMEM
void PowerOutCalRecovery(void)
{
int i;
status1struct *ptr;

	if(speedcompcoeffs.stageflag < STAGE4_CAL && speedcompcoeffs.stageflag != 0)	//call the initcal to restart the rough calibration procedure
	{
		allsensors.flags.startcal = 1;	//start the cal again
		InitCal();
	}
	else if(speedcompcoeffs.stageflag == CAL_ABORT)	//if aborted do not restart!
	{
		allsensors.flags.startcal = 0;
		//leave as is
	}
	else if(speedcompcoeffs.stageflag < CAL_COMPLETE)	//if into fine cal then continue from where we left off
	{
		//times saved in minutes, turn back into 5ms interval timers
		timers.calibrate = (mancal.learningleft * MINS_TO_MS_MULTIPLIER);
		timers.calibrate2 = (mancal.intervalleft * MINS_TO_MS_MULTIPLIER);
		SetupLearningModeAlarmLevels();		//setup the alarm levels for learning calibration mode

		//SetupNormalModeAlarmLevels();
	}
	else	//stage = CAL_COMPLETE set to final stage if we have had a power out
	{
		speedcompcoeffs.stageflag = CAL_COMPLETE2;
		allsensors.flags.calmode = 0;
		WriteSpeedCompStructtoNVMEM();
		//clear the calbiration flags
		for(i=0;i<MAX_NUM_CHANNELS;i++)
		{
			ptr = Status1Flags(i);
			ptr->calmode = 0;
			WriteSensorStatustoNVMEM(i);
		}
		SensorStatustoSDCardFile();
		ClearCalAveragingAlarm();
		SetupNormalModeAlarmLevels();
	}

}

//setup the saved alarm and slow down levels from the saved registers
//This is for calbiration learning mode
void SetupLearningModeAlarmLevels(void)
{
	settings.slowdownlevel 		= allsensors.slowdowncallevel; 		 	//abs slow down level filtered val
	settings.alarmlevel 		= allsensors.alarmcallevel;			 	//abs alarm limit used during running and cal (filtered val)
	settings.slowdowndevlevel 	= allsensors.slowdowndevcallevel;		//slow down deviation level
	settings.alarmdevlevel 		= allsensors.alarmdevcallevel;			//alarm deviaiton level
	settings.cylinderalarmlevel = allsensors.cylinderalarmcallevel;		//cylinder alarm level
}

//Begin intial rough calibration
//This will calibrate at three speed points defined as:
//20-50% of nominal engine speed
//50-80%
//80-100%

//Initial cal starts a timer in order to gather data at a predefined speed
void InitCal(void)
{
	unsigned int i;
	unsigned int j;
	float speedband;
	char eventstring[EVENTMSG_LEN_INBYTES_PART2];

	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);

	if(allsensors.flags.startcal == 1)		//start calibration if flag is set
	{
		bReadyToSampling = FALSE;
		bSamplingFinished = FALSE;

		iRepaidWearReset = FALSE;
		iStartRapidWear = FALSE;
		iFiveResDone = FALSE;

		//timer is a 5ms tick therefore take num minutes * 60 * 200
		timers.calibrate = 0;
		// PF Gen 2 - 14-Nov-11 Changed settings.timerrunning = FALSE
		settings.timerrunning = FALSE;	//flag set for timer to count down.  if false the timer will stop
		speedcompcoeffs.stageflag = STAGE1_START;						//first stage calibration

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
		calibration.rpmpoints = (allsensors.rpmmax - allsensors.rpmmin) + 1; // PF Gen 2 - 10-Jan-12 Added + 1 to sort out kink at end of calibration line
		for(j=0;j<MAX_NUM_CHANNELS;j++)
		{			
			for(i=0;i<3;i++)
			{
				//assuming the max speed can be 184 rpm the integer register will allow for 65535/184 = 356 minutes
				calibration.averagespeedacc[i][j] = 0;		//clear the speed accumulation, this will be the addition of speed for x minutes
				calibration.averagevalacc[i][j] = 0;		//clear the accumulation stores
			}
		}
		//numpoints used for each rpm point.  THis is the count of the number of values seen at this rpm
		for(i=0;i<NUM_SPEED_REF;i++) calibration.numpoints[i] = 0;
		//clear down the rough cal new points (only three points is a count of the number of points seen in the band)
		calibration.roughnumpoints[0] = 0;
		calibration.roughnumpoints[1] = 0;
		calibration.roughnumpoints[2] = 0;

		// PF Gen 2 - 03-Nov-11 Set all channels into calibration mode
		for(i=0;i<MAX_NUM_CHANNELS;i++)
		{
			SetCalMode(i,ENABLED);
			WriteSensorStatustoNVMEM(i);
			fRapidWearAverage[i] = 0;
		}
		SensorStatustoSDCardFile();
		// PF Gen 2 - 03-Nov-11 EOM

		allsensors.flags.calmode = 1;	//set bit to show we are calibrating

		SetupLearningModeAlarmLevels();		//setup the alarm levels for learning calibration mode
		
		ClearCalibrationAlarms();		//clear any latched alarms to begin
		//individual bits in sensors struct should be set for channels in calibration mode
		WriteSpeedCompStructtoNVMEM();		//speedcompcoeffs - store after changes to nonvol
		WriteCalibrationStructtoNVMEM();	//store all changes relating to the start of calibration

		PrewarnReset();	//reset the prewarning settings
		// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - LogEvent(FULL_AUTO_CALIBRATION,HIGH_PRIORITY,NO,eventstring);	//no extra message to pass in for this event
		SetBitEvent(FULL_AUTO_CALIBRATION_EVENT); // PF Gen 2 - 07-Mar-12 Old alarm system backend removal - calibration init event

		allsensors.flags.startcal = 0;		//knock down flag (set from modbus)
		mancal.manupdateflag = FALSE;

		ClearManCompSequence();		//clear the sequence counter for the man files to be written to the sd card
		ClearSelectiveMANTable();	//clear channels enabled for calibration
		ClearEventCodeListArea(); // 12-14-2012 FF: clear alarms, this will clear any locked in alarms

		CalibrationtdUpdate(3);		// PF Gen 2 - 14-Nov-11 Zero calibration time and date

		//12-14-2012 FF: Need to initialize these values every time when cal is restarted
		// Patched 2026-04-28: split loop into two to fix Bug Lv-005 (manrefsum[]
		// is only MAX_NUM_CYLINDERS=14 entries; the original loop wrote indices
		// 14..27 past the end, corrupting adjacent BSS memory). See
		// host/docs/LEGACY_BUGS.md.
		for(i=0;i<MAX_NUM_CHANNELS;i++)
		{
			manref[i].reflevel = 0;
			manref[i].reflevel_int = 0;
			manref[i].presentstate = 0;
			manref[i].presentstate_int = 0;
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
	}
}

//Carry out a particular stage based in where we are in the calibration procedure
//Function to be called from the main loop
void MANCalibrationStages(void)
{
	if(allsensors.flags.calmode == 1)	//check if calibrating
	{
		CalProgression();	//progress through the stages when the calibrate timer is at zero
		switch(speedcompcoeffs.stageflag)
		{
			case(STAGE1_CAL):		//carry out the collection of data based on the band 1 speed, once the time is up CalProgression will populate the table
				RoughCal();
			break;
			case(STAGE2_CAL):		//collect the data for band 2 during a time period
				RoughCal();
			break;
			case(STAGE3_CAL):		//band 3 once time is up the extrapolation and interpolation will be carried out
				 RoughCal();
			break;
			case(STAGE4_CAL):		//carry out call on speed point related info, once 1000 points at one speed point have been found, move on ot time based cal (STAGE5)
				if(motion.forwardasternflag == FORWARD) FineCurveCal();
				else settings.timerrunning = FALSE;
			break;
			case(STAGE5_CAL):		//fine cal over the time period of 500 hours in 50 blocks. time periods for interval and overall time can be changed from modbus registers
				if(motion.forwardasternflag == FORWARD) FineCurveCal();
				else settings.timerrunning = FALSE;
			break;
		} 
	}
}

//Add on the new point for enabled channels in cal mode
//Used for the three stages of rough calibration
void AccumulateRoughCal(int index,unsigned int rpm)
{
int i;
unsigned int j;
long precompval;
float avval;

	//calculate j which will point to the value in the table to update
	j = rpm - allsensors.rpmmin;
	if(j < NUM_SPEED_REF)
	{
		if(iBarred == FALSE && iDeltaRPM15 == FALSE)
		{
			calibration.numpoints[j]++;	//increment the num points count for a particular RPM

			for(i=0;i<MAX_NUM_CHANNELS;i++)
			{
				if(sensor[i].status1.enabled == TRUE && sensor[i].status1.calmode == TRUE)	//check if this channel is enabled and in calibration mode
				{
					//AJB 19-Oct-10
					precompval = (long)GetPreCompValue(i);
					//do not add in when in error
					if(precompval > -32000)	//check it is not an error code
					{
						calibration.averagevalacc[index][i] += precompval;
					}
					else
					{
						//Added 29-Oct-2010
						//added so that the average value is used whilst the channel is in a fail code mode
						//get the average last known good value from the accumulated value
						//do not carry out if the numpoints is zero, so we do not divide by zero
						if(calibration.roughnumpoints[index] != 0)
						{
							avval = (float)calibration.averagevalacc[index][i]/(float)calibration.roughnumpoints[index];
							calibration.averagevalacc[index][i] += FloattoIntRound(avval);
						}
					}
					//AJB 19-Oct-10 EOM

				}
			}
			calibration.averagespeedacc[index][0] += (long)rpm;	//add on the rpm	 only using index 0 for 2d array (not per channel)
			calibration.roughnumpoints[index]++;	//rough cal points for first speed point
		}
	}
}

void RealRoughCal(int index, unsigned int rpm)
{	
	settings.timerrunning = TRUE;
	if(timers.calibrate >= (speedcompcoeffs.initialtimer * MINS_TO_MS_MULTIPLIER))
	{		
		if(index != 0) { iRepaidWearReset = TRUE; }
		//sprintf(stringbuffer,"\r\nStage %d: in 5 revolution at:%ld timer",index+1, timers.calibrate);  DebugStringOut(stringbuffer);	// DEBUG
	}
	else
	{
		if(allsensors.flags.newval == TRUE)
		{
			AccumulateRoughCal(index,rpm);
		}

		if(timers.calibrate <= wThirtySecondInMs)
		{
			if(bSamplingFinished == FALSE)
			{
				CalRpm = rpm;
				//sprintf(stringbuffer,"\r\nStage %d: 30sec start from:%ld timer\n",index+1, timers.calibrate);  DebugStringOut(stringbuffer);	// DEBUG
				bSamplingFinished = TRUE;
				if(index==0) { FirstStageCalCurve(); }
				else if(index == 1) { SecondStageCalCurve(); }
				else { Stage3CalCurve(); } //sprintf(stringbuffer,"\r\nStage %d curve updated\n",index+1);  DebugStringOut(stringbuffer); }
				mancal.manupdateflag = TRUE;

				bReadyToSampling = FALSE;
			}

			if(timers.calibrate >= (wThirtySecondInMs - (unsigned long)(5 * 60 / (double)(CalRpm) * SECS_TO_MS_MULTIPLIER))) 
			{
				if(index == 0 && timers.calibrate < 5500) {iStartRapidWear = TRUE; iRepaidWearReset = TRUE;} // Give a little delay to start collect data
				else iRepaidWearReset = TRUE;
				//if(index == 2) { sprintf(stringbuffer,"\r\nStage %d: 30 sec at:%ld timer\n",index, timers.calibrate);  DebugStringOut(stringbuffer); }
			}
			else
			{
				iRepaidWearReset = FALSE;				
				/*
				if(bReadyToSampling == FALSE)
				{
					sprintf(stringbuffer,"\r\nStage %d: 30sec end at:%ld ms",index, timers.calibrate);  DebugStringOut(stringbuffer);	// DEBUG
					bReadyToSampling = TRUE;
				}
				*/
			}
		}
		else { iRepaidWearReset = FALSE; }

		/*
		if(bReadyToSampling == FALSE)
		{
			sprintf(stringbuffer,"\r\nStage %d: RPM stable end at:%ld ms",index, timers.calibrate);  DebugStringOut(stringbuffer);	// DEBUG
			bReadyToSampling = TRUE;
		}
		*/
	}
}

//once the initial stage has begun the rough cal will store all values within the speed band and average across this band
//This will only carry anything out if a newvalue has been seen
//Stores a value for each channel once newval is set
void RoughCal(void)
{
	unsigned int rpm;
			
	//Don't calculate RPM here, just read it, since it's calculated in MANModules(void)
	rpm = GetModalRPM(0);
	if(motion.forwardasternflag == FORWARD)		//allow unknown incase we have a faulty sensor (this will effect the direction)
	{		
		switch(speedcompcoeffs.stageflag)
		{			
			case (STAGE1_CAL):
				if(rpm >= calibration.speedcalpoints[0][0] && rpm <= calibration.speedcalpoints[0][1])	//do not use value if outside of limits
				{
					RealRoughCal(0, rpm);					
				}
				else
				{
					settings.timerrunning = FALSE;	//set flag to false outside three bands
				}
				
			break;
			
			
			case (STAGE2_CAL):
				if(rpm >= calibration.speedcalpoints[1][0] && rpm <= calibration.speedcalpoints[1][1])	//do not use value if outside of limits
				{
					RealRoughCal(1, rpm);
				}
				else settings.timerrunning = FALSE;	//set flag to false outside three bands
				
			break;
			
			
			case (STAGE3_CAL):
				if(rpm >= calibration.speedcalpoints[2][0] && rpm <= calibration.speedcalpoints[2][1])	//do not use value if outside of limits
				{
					RealRoughCal(2, rpm);	
				}
				else settings.timerrunning = FALSE;	//set flag to false outside three bands
				
			break;

			//default:
				//break;
		}
	}
	else settings.timerrunning = FALSE;	//set flag to false if we are not going forward
}

//Check where we are in terms of the timer for the rough cal and the stage completion
//Three stages for each speed band
//Once the time for the stage is complete move on to next stage
//The timer will not start to countdown until we have moved into the next speed band
//Once the rough cal is comlete the fine cal will be started the timer for this has a default of 500 hours
void CalProgression(void)
{
	unsigned int rpm;
	unsigned int i;
	status1struct *ptr;		

// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - char eventstring[EVENTMSG_LEN_INBYTES_PART2];

	if(timers.calibrate == 0)		//timeup for stage
	{

		// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
		rpm = GetModalRPM(0);
		switch(speedcompcoeffs.stageflag)
		{
			case(STAGE1_START):		//wait until we get to the first speed band
				settings.timerrunning = FALSE;	// PF Gen 2 - 14-Nov-11
				bSamplingFinished = FALSE;
				bReadyToSampling = FALSE;
				for(i=0;i<MAX_NUM_CHANNELS;i++) damagemonignore[i] = 3;
				if(damagemonignore[0] == 0) ClearEventCodeListArea();
				if(rpm >= calibration.speedcalpoints[0][0] && rpm <= calibration.speedcalpoints[0][1])	//ok once into band
				{					
					//log event on entering the first speed band
					// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - sprintf(eventstring,"Stage 1 Learning");
					// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - LogEvent(CAL_STAGE,HIGH_PRIORITY,NO,eventstring);					

					//set up timer for next speed band		
					CalRpm = rpm;					
					wFiveResulotionInMs = (unsigned long)(5 * 60 / (double)(rpm) * SECS_TO_MS_MULTIPLIER);
					timers.calibrate = speedcompcoeffs.initialtimer * MINS_TO_MS_MULTIPLIER + wFiveResulotionInMs;	//setup speed in 5ms tick, this will be a long					
					//sprintf(stringbuffer,"\r\n====Stage 1 Start - RPM:%d, RPM stable start:%ld ms\n",rpm,timers.calibrate);  DebugStringOut(stringbuffer);	// DEBUG
					speedcompcoeffs.stageflag = STAGE1_CAL;	//set to next stage
					SetBitEvent(CAL_STAGE_1_START_EVENT); // PF Gen 2 - 07-Mar-12 Old alarm system backend removal - calibration stage event
				}
			break;
			case(STAGE1_CAL):		//first stage calibration
				settings.timerrunning = FALSE;	// PF Gen 2 - 14-Nov-11
				//at this stage once we have an initial speed averaged point, we can populate the table to be stored to FRAM
				//FirstStageCalCurve();	//populate the table and store
				speedcompcoeffs.stageflag = STAGE1_COMPLETE;	//set to next stage
				//mancal.manupdateflag = TRUE;
				//sprintf(stringbuffer,"\r\nStage 1 complete\n");  DebugStringOut(stringbuffer);	// DEBUG
			break;
			case(STAGE1_COMPLETE):	//wait until we get to the next speed band
				settings.timerrunning = FALSE;	// PF Gen 2 - 14-Nov-11
				bSamplingFinished = FALSE;
				bReadyToSampling = FALSE;
				if(rpm >= calibration.speedcalpoints[1][0] && rpm <= calibration.speedcalpoints[1][1])	//ok once into next band
				{
					//log event on entering the 2nd speed band
					// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - sprintf(eventstring,"Stage 2 Learning");
					// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - LogEvent(CAL_STAGE,HIGH_PRIORITY,NO,eventstring);
					
					//set up timer for next speed band
					CalRpm = rpm;					
					wFiveResulotionInMs = (unsigned long)(5 * 60 / (double)(rpm) * SECS_TO_MS_MULTIPLIER);
					timers.calibrate = speedcompcoeffs.initialtimer * MINS_TO_MS_MULTIPLIER + wFiveResulotionInMs;	//setup speed in 5ms tick, this will be a long					
					//sprintf(stringbuffer,"\r\n====Stage 2 Start - RPM:%d, RPM stable start:%ld ms\n",rpm,timers.calibrate);  DebugStringOut(stringbuffer);	// DEBUG
					speedcompcoeffs.stageflag = STAGE2_CAL;	//set to next stage
					SetBitEvent(CAL_STAGE_2_START_EVENT); // PF Gen 2 - 07-Mar-12 Old alarm system backend removal - calibration stage event
				}
			break;
			case(STAGE2_CAL):		//stage 2 complete, nothing to do except start timer for next band, once into band
				settings.timerrunning = FALSE;	// PF Gen 2 - 14-Nov-11
				//SecondStageCalCurve();
				speedcompcoeffs.stageflag = STAGE2_COMPLETE;	//set to next stage
				//mancal.manupdateflag = TRUE;
				//sprintf(stringbuffer,"\r\nStage 2 complete\n");  DebugStringOut(stringbuffer);	// DEBUG
			break;
			case(STAGE2_COMPLETE):	//wait until we get to the next speed band
				settings.timerrunning = FALSE;	// PF Gen 2 - 14-Nov-11
				bSamplingFinished = FALSE;
				bReadyToSampling = FALSE;
				if(rpm >= calibration.speedcalpoints[2][0] && rpm <= calibration.speedcalpoints[2][1])	//ok once into next band
				{
					//log event on entering the 3rd speed band
					// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - sprintf(eventstring,"Stage 3 Learning");
					// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - LogEvent(CAL_STAGE,HIGH_PRIORITY,NO,eventstring);
					
					//set up timer for next speed band
					CalRpm = rpm;					
					wFiveResulotionInMs = (unsigned long)(5 * 60 / (double)(rpm) * SECS_TO_MS_MULTIPLIER);
					timers.calibrate = speedcompcoeffs.initialtimer * MINS_TO_MS_MULTIPLIER + wFiveResulotionInMs;	//setup speed in 5ms tick, this will be a long					
					//sprintf(stringbuffer,"\r\n====Stage 3 Start - RPM:%d, 5R time:%ld, RPM stable start:%ld ms\n",rpm, wFiveResulotionInMs,timers.calibrate);  DebugStringOut(stringbuffer);	// DEBUG
					speedcompcoeffs.stageflag = STAGE3_CAL;	//set to next stage
					SetBitEvent(CAL_STAGE_3_START_EVENT); // PF Gen 2 - 07-Mar-12 Old alarm system backend removal - calibration stage event
				}
			break;
			case(STAGE3_CAL):		//stage 3 calibration last stage for rough cal, once we have this we can interpolate!!
				//Stage3CalCurve();	//fill table now we have three data points in three different speed bands
				speedcompcoeffs.stageflag = STAGE4_CAL;	//set to next stage
				WriteSpeedCompStructtoNVMEM();
				FineCalModeInit();		//initiliase the timer etc and start the process of fine cal
				//mancal.manupdateflag = TRUE;
				//for(i=0;i<MAX_NUM_CHANNELS;i++) { sprintf(stringbuffer,"\r\n>>Sensor:%d - RapidFast:%f - RapidSlow:%f - RapidWearAverage:%f<<\r\n",i,manref[i].presentstate,manref[i].reflevel,manref[i].refvalue);  DebugStringOut(stringbuffer);}
				//sprintf(stringbuffer,"\r\nStage 3 complete\n");  DebugStringOut(stringbuffer);	// DEBUG
			break;
			case(STAGE4_CAL):
				//nothing to do time related here
				//if the learning mode timer (e.g. 500 hours) has ended and we are here, it means we did not see
				//numpoints for anypoint in the table!  Move on the stage5_cal and allow to complete
				speedcompcoeffs.stageflag = STAGE5_CAL;
			break;
			case(STAGE5_CAL):	//once stage 5 is complete we have finished, 500 hours etc is up
				//use the modbus configured value (this could be as low as 1 sample to deem it valid)
				FineCurveCalInterpolation(speedcompcoeffs.manappliedminsamples);	//check there is at least x sample at the speedpoint
												//carry out final cal and store the table - this is the best table we can get!
												//man_comptable is now fully populated based on the data we have found
												//if data was not obtained for a cal point the interpolated value will have been used
				MANCompTabletoSDCardFile((char *)&sdcarddir.finecaldir,sdsettings.sequence++);
				MANCompTabletoSDCardFile((char *)&sdcarddir.configdir,0);						//sequence number always as zero
				//save the table to the sd card in the config directory.
				//This can be used if the sd card is swapped.
				WriteMANCompTabletoNVMEM();		//save the man compensation table to FRAM
			
				speedcompcoeffs.stageflag = CAL_COMPLETE;
				WriteSpeedCompStructtoNVMEM();
				timers.calibrate = 30*SECS_TO_MS_MULTIPLIER;
				SetupNormalModeAlarmLevels();
				//log event on fine calibration completed
				mancal.manupdateflag = TRUE;
				ClearCalAveragingAlarm();		//clear down any calibration alarm for look up averagin during cal time
				// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - sprintf(eventstring,"Engine Learning Completed");
				// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - LogEvent(CAL_STAGE,HIGH_PRIORITY,NO,eventstring);
				SetBitEvent(CAL_COMPLETE_EVENT); // PF Gen 2 - 07-Mar-12 Old alarm system backend removal - calibration stage event
			break;
			case(CAL_COMPLETE):		//once we get here the timeout after completion has finished
									//this will be reflected at the PC end
				speedcompcoeffs.stageflag = CAL_COMPLETE2;
				allsensors.flags.calmode = 0;
				WriteSpeedCompStructtoNVMEM();
				//clear the calibration status bits and save to nvmem and sd card
				for(i=0;i<MAX_NUM_CHANNELS;i++)
				{
					ptr = Status1Flags(i);
					ptr->calmode = 0;
					WriteSensorStatustoNVMEM(i);
				}
				SensorStatustoSDCardFile();
				SetupNormalModeAlarmLevels();
				PreWarningInit();		//initialise the prewarning checks. this will take place over 6 hours etc and calculate the average deviation
				CalibrationtdUpdate(1); // PF Gen 2 - 14-Nov-11 Update cal complete time/date
				//all done once here
				break;
			
			default:
				break;
		}
	}
}


//ASSUMPTIONS:
//The following functon uses the input slopecoeff (nput as a positive value)
//It is assumed the value gets more positive with RPM and should therefore be subtracted with increase in rpm to give the correct result

//Set up the calibration table in FRAM for all of the sensors installed on the system
//The first point should be in the first band say 20 to 50% band
//From this figure the value intput for the engine slope based on speed can be used to populate the table
//Once this is complete the values can be used straight away in the speed compensation
//The table populated in RAM can be copied to the values in NVMEM
void FirstStageCalCurve(void)
{
unsigned int i;
unsigned int rpmmax;	//rpmmax takes the nominal engine speed and uses the 110% point
unsigned int rpmmin;	//rpmmin is the 20% speed point
float increment;		//incmrement based on input mm change value for engine
float lowerpoint;		//first point once we have established rpm above lower value (e.g. above the 20% point)
float rpmoffset;		//rpm offset above the 20% point for the average calculated rpm for first band
float avrpm;
float avval;
sensoralarmstruct flags;

	rpmmax = (unsigned int)((float)allsensors.nominalspeed * (UPPER_RPM_PERCENT));	//110% point
	rpmmin = (unsigned int)((float)allsensors.nominalspeed * (LOWER_RPM_PERCENT));	//20% point
	increment = (float)speedcompcoeffs.slopecoeff/(rpmmax-rpmmin);		//incremental change in microns from 20% to 110%

	avrpm = (float)calibration.averagespeedacc[0][0]/(float)calibration.roughnumpoints[0];	//setup the average rpm

	rpmoffset = avrpm - (float)rpmmin;		//find how far above we are in rpm

	for(i=0;i<MAX_NUM_CHANNELS;i++)	 
	{
		flags = *(GetStatus2Flags(i));
		if(sensor[i].status1.enabled == TRUE)	//check if this channel is enabled
		{
			if(sensor[i].status1.calmode == TRUE && flags.failure == 0)	//check this channel is being calibrated and not in fail mode
			{
				avval = (float)calibration.averagevalacc[0][i]/(float)calibration.roughnumpoints[0]; 	//band1 value
				
				//set the increment value to the 20% value so we can extrapolate from that point
				lowerpoint = avval - (increment*rpmoffset);	//now have the lowest point (e.g. 20%) and can use incrment from here to store in the table

				//build the table on a channel basis using the incremental figure for each rpm
				//i is channel, numpoints is from min to max, intercept at lower point
				Interpolate(i,0,(int)(rpmmax-rpmmin),lowerpoint,increment);
			}
		}
		settings.watchdog = 1;
	}
	MANCompTabletoSDCardFile((char *)&sdcarddir.firstcaldir,sdsettings.sequence++);
	MANCompTabletoSDCardFile((char *)&sdcarddir.configdir,0);						//sequence number always as zero
	WriteMANCompTabletoNVMEM();		//save the man compensation table to FRAM 
}

//11-12-2012 FF: Add second point interpolation per new MAN spec
//Interpolate and extrapolate based on the the two data points recorded
void SecondStageCalCurve(void)
{
	unsigned int i;
	unsigned int rpmmax;	//rpmmax takes the nominal engine speed and uses the 110% point
	unsigned int rpmmin;	//rpmmin is the 20% speed point
	float increment;		//value used to interpolate and fill the table
	float lowerpoint;		//first point once we have established rpm above lower value (e.g. above the 20% point)
	float rpmoffset;	//rpm offset above the 20% point for the average calculated rpm for first band
	float avrpm[2];		
	float avval[2];
	sensoralarmstruct flags;

	rpmmax = (unsigned int)((float)allsensors.nominalspeed * UPPER_RPM_PERCENT);	//110% point
	rpmmin = (unsigned int)((float)allsensors.nominalspeed * LOWER_RPM_PERCENT);	//20% point

	//dont worry about second index for av speed as it will always be zero
	avrpm[0] = (float)calibration.averagespeedacc[0][0]/(float)calibration.roughnumpoints[0];	//setup the average rpm
	rpmoffset = avrpm[0] - (float)rpmmin;		//find how far above we are in rpm

	avrpm[0] = (float)calibration.averagespeedacc[0][0]/(float)calibration.roughnumpoints[0];	//band1 rpm
	avrpm[1] = (float)calibration.averagespeedacc[1][0]/(float)calibration.roughnumpoints[1];	//band2 rpm		

	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		flags = *(GetStatus2Flags(i));
		if(sensor[i].status1.enabled == TRUE)	//check if this channel is enabled
		{
			if(sensor[i].status1.calmode == TRUE && flags.failure == 0)	//check this channel is being calibrated and not in fail mode
			{
				avval[0] = (float)calibration.averagevalacc[0][i]/(float)calibration.roughnumpoints[0];		 	//band1 value
				avval[1] = (float)calibration.averagevalacc[1][i]/(float)calibration.roughnumpoints[1];	 		//band2 value

				//calculate the increment from lowest point to the band2 rpm point, this will extrapolate from the rpm
				//calculated first first speed point down to lowest point and interpolate up to band2 value
			   	increment = (avval[1]-avval[0])/(avrpm[1]-avrpm[0]);	//change per rpm
				//set the increment value to the 20% value so we can extrapolate from that point
				lowerpoint = avval[0] - (increment*rpmoffset);	//now have the lowest point (e.g. 20%) and can use incrment from here to store in the table
				//build the table on a channel basis using the incremental figure for each rpm
				//i is channel, numpoints is from min to max, intercept at lower point
				//0 for the table start point (no offset)
				Interpolate(i,0,(int)(rpmmax-rpmmin),lowerpoint,increment);												
			}
			settings.watchdog = 1;
		}
	}
	MANCompTabletoSDCardFile((char *)&sdcarddir.firstcaldir,sdsettings.sequence++);
	MANCompTabletoSDCardFile((char *)&sdcarddir.configdir,0);						//sequence number always as zero
	WriteMANCompTabletoNVMEM();		//save the man compensation table to FRAM 
}

//Interpolate and extrapolate based on the the three data points recorded
//This will fill the values across the speed comp table for all channels
void Stage3CalCurve(void)
{
unsigned int i;
unsigned int k;
unsigned int rpmmax;	//rpmmax takes the nominal engine speed and uses the 110% point
unsigned int rpmmin;	//rpmmin is the 20% speed point
float increment;		//value used to interpolate and fill the table
float lowerpoint;		//first point once we have established rpm above lower value (e.g. above the 20% point)
float rpmoffset;	//rpm offset above the 20% point for the average calculated rpm for first band
float avrpm[3];	
int intavrpm[3];	
float avval[3];
sensoralarmstruct flags;

	rpmmax = (unsigned int)((float)allsensors.nominalspeed * UPPER_RPM_PERCENT);	//110% point
	rpmmin = (unsigned int)((float)allsensors.nominalspeed * LOWER_RPM_PERCENT);	//20% point

	//dont worry about second index for av speed as it will always be zero
	avrpm[0] = (float)calibration.averagespeedacc[0][0]/(float)calibration.roughnumpoints[0];	//setup the average rpm
	rpmoffset = avrpm[0] - (float)rpmmin;		//find how far above we are in rpm

	avrpm[0] = (float)calibration.averagespeedacc[0][0]/(float)calibration.roughnumpoints[0];	//band1 rpm
	avrpm[1] = (float)calibration.averagespeedacc[1][0]/(float)calibration.roughnumpoints[1];	//band2 rpm
	avrpm[2] = (float)calibration.averagespeedacc[2][0]/(float)calibration.roughnumpoints[2];	//band3 rpm

	intavrpm[0] = FloattoIntRound(avrpm[0]);
	intavrpm[1] = FloattoIntRound(avrpm[1]);
	intavrpm[2] = FloattoIntRound(avrpm[2]);

	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		flags = *(GetStatus2Flags(i));
		if(sensor[i].status1.enabled == TRUE)	//check if this channel is enabled
		{
			if(sensor[i].status1.calmode == TRUE && flags.failure == 0)	//check this channel is being calibrated and not in fail mode
			{
				avval[0] = (float)calibration.averagevalacc[0][i]/(float)calibration.roughnumpoints[0];		 	//band1 value
				avval[1] = (float)calibration.averagevalacc[1][i]/(float)calibration.roughnumpoints[1];	 		//band2 value
				avval[2] = (float)calibration.averagevalacc[2][i]/(float)calibration.roughnumpoints[2];	 		//band3 value

				//calculate the increment from lowest point to the band2 rpm point, this will extrapolate from the rpm
				//calculated first first speed point down to lowest point and interpolate up to band2 value
			   	increment = (avval[1]-avval[0])/(avrpm[1]-avrpm[0]);	//change per rpm
				//set the increment value to the 20% value so we can extrapolate from that point
				lowerpoint = avval[0] - (increment*rpmoffset);	//now have the lowest point (e.g. 20%) and can use incrment from here to store in the table
				//build the table on a channel basis using the incremental figure for each rpm
				//i is channel, numpoints is from min to max, intercept at lower point
				//0 for the table start point (no offset)
				Interpolate(i,0,(int)(intavrpm[1]-rpmmin),lowerpoint,increment);
				//calculate the increment from band2 point upwards based on the slope between 2 & 3
			   	increment = (avval[2]-avval[1])/(avrpm[2]-avrpm[1]);	//change per rpm
				//set the increment value to the mid value so we can extrapolate from that point
				lowerpoint = avval[1];		//starting from avval[1] point interpolate and extrapolate from here
				//build the table on a channel basis using the incremental figure for each rpm
				k = (unsigned int)(intavrpm[1]-(float)rpmmin);	//start point for table after for loop above.

				//k for the table start point (with offset)
				Interpolate(i,k,(int)(rpmmax-intavrpm[1]),lowerpoint,increment);

				//store the rough calibration points to be used during fine cal
				//use val with  0.5 as values are a float going into an int
				calibration.rpmatcal[0]  = (unsigned int)intavrpm[0];
				calibration.rpmatcal[1]  = (unsigned int)intavrpm[1];
				calibration.rpmatcal[2]  = (unsigned int)intavrpm[2];
	
				//store the minimum and maximum values seen in the table, from extrapolation.
				//These will be used in the fine cal if these points have not been determined during the fine cal process
				calibration.manroughmin[i] = man_comptable[0][i];	//store bottom point
				calibration.manroughmax[i] = man_comptable[calibration.rpmpoints-1][i];	//store top point
				//check for positive or negative
				calibration.manroughcalpts[0][i]  = FloattoIntRound(avval[0]);
				calibration.manroughcalpts[1][i]  = FloattoIntRound(avval[1]);
				calibration.manroughcalpts[2][i]  = FloattoIntRound(avval[2]);
				settings.watchdog = 1;
			}
		}
	}
	MANCompTabletoSDCardFile((char*)&sdcarddir.roughcaldir,sdsettings.sequence++);
	//create file in config directory then rename and create again - therefore we always have a backup file
	MANCompTabletoSDCardFile((char *)&sdcarddir.configdir,0);						//sequence number always as zero
	WriteMANCompTabletoNVMEM();		//save the man compensation table to FRAM 
}

//Pass in the channel to interpolate, the number of points from x to y, the intercept (or lowerpoint) and the increment per point
//offset is the offset into thte man table from zero
void Interpolate(int chan,int offset, int interpoints, float intercept, float increment)
{
int i;
int j;
float intern;

	j = offset;	//rpm offset saved as j
	// PF 23-Sep-09 Changed line below to <= from < to include final point on interpolation
	for(i=0;i<=interpoints;i++)
	{
		intern = intercept + (increment * (float)i);
		man_comptable[j][chan] = FloattoIntRound(intern);
		j++;
	}
}

//Initiliase the fine cal mode to setup timers etc
void FineCalModeInit(void)
{
unsigned int i;
unsigned int j;
// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - char eventstring[EVENTMSG_LEN_INBYTES_PART2];

	// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);

	ClearManCompSequence();		//clear the sequence counter for the man files to be written to the sd card
	timers.calibrate = speedcompcoeffs.learningmodetimer * MINS_TO_MS_MULTIPLIER;	//setup the 5ms tick based on hours  x mins * 200 per sec e.g 50 hours = 30000 minutes
	timers.calibrate2 = speedcompcoeffs.intervaltimer * MINS_TO_MS_MULTIPLIER;		//this should be the interval entered in minutes e.g. 50 hours = 3000
	settings.timerrunning = TRUE;	//make sure timer is running
	for(i=0;i<NUM_SPEED_REF;i++)
	{
		calibration.numpoints[i]= 0;
	}
	for(i=0;i<NUM_INITIAL_SPEED_REF;i++)
	{
		for(j=0;j<MAX_NUM_CHANNELS;j++)
		{
			calibration.averagevalacc[i][j] = 0;	//clear for all channels
			calibration.averagespeedacc[i][j] = 0;	//clear for all channels - not actually used in fine cal but clear anyway
		}
	}
	//clear the accumulation registers in the FRAM
	//this will write data realting to the speed into the table held in fram - this table is not held in ram
	//therefore the table calibration.averagespeedacc[0][i] where reflects the chANNEL WILL WRITE TO 150 points in fram
	for(i=0;i<NUM_SPEED_REF;i++)
	{
		WriteAccCalNVMEM(i);
		for(j=0;j<MAX_NUM_CHANNELS;j++)
		{
			WriteMAN1000NVMEM(i,j,0);	//clear the man1000 table stored in the fram - clear for all speed points
		}
	}
	calibration.validpoints = 0;	//set to 1 once first 1000 points seen at any speed point, incremented once 1000 points seen at various speed points

	//log event on entering the fine calibration
	// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - sprintf(eventstring,"Fine Learning Started");
	// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - LogEvent(CAL_STAGE,HIGH_PRIORITY,NO,eventstring);
	SetBitEvent(CAL_FINE_START_EVENT); // PF Gen 2 - 07-Mar-12 Old alarm system backend removal - calibration stage event
}

//Check the rough calibration points when the fine cal is in progress
//This will check if the rough calibrationpoints should be inserted into the man table
//Function should be called after checking the fine cal at all points
void CheckRoughCalPoints(unsigned int numsamples)
{
int checkpts[3];
int i;
int j;
int flag1[3];
int min;
int max;
int pos;

	//set up check pts based on lowest point in the table - the tolerance used for search
	//e.g. search may be -2 points, rpmcal point = 40 rpm, rpmmin = 20, so checkptlow = 18
	checkpts[0] = (int)calibration.rpmatcal[0] - (int)MANROUGH_NUM_PTS_TOL - (int)allsensors.rpmmin;
	checkpts[1] = (int)calibration.rpmatcal[1] - (int)MANROUGH_NUM_PTS_TOL - (int)allsensors.rpmmin;
	checkpts[2] = (int)calibration.rpmatcal[2] - (int)MANROUGH_NUM_PTS_TOL - (int)allsensors.rpmmin;

	//check we are not out of range
	if(checkpts[0] < 0) checkpts[0] = calibration.rpmatcal[0] - allsensors.rpmmin;
	if(checkpts[1] < 0) checkpts[1] = calibration.rpmatcal[1] - allsensors.rpmmin;
	if(checkpts[2] < 0) checkpts[2] = calibration.rpmatcal[2] - allsensors.rpmmin;

	//flags should all be cleared before testing
	for(i=0;i<NUM_INITIAL_SPEED_REF;i++)
	{
		flag1[i] = FALSE;
	}
	//test for values at all 3 speed points
	for(j=0;j<NUM_INITIAL_SPEED_REF;j++)
	{
		min = checkpts[j];
		//end check point is tolerance for actual speed point e.g. 40-2
		max = checkpts[j] + (MANROUGH_NUM_PTS_TOL*2);
		//lower check points (e.g. -2 say 38rpm 39 rpm) checked to upper point e.g. 38+4 = 42 (check 42 as well)
		for(i=min;i<=max;i++)
		{
			if(calibration.numpoints[i] >= numsamples)	//check if more than requested number of samples seen around the rough cal points
			{
				flag1[j] = TRUE;			//point found
			}
		}
	}
	//if flags 1 or 2 of the flags at the rough cal point are zero then use the rough cal point in the man table
	for(i=0;i<NUM_INITIAL_SPEED_REF;i++)
	{
		pos = calibration.rpmatcal[i] - allsensors.rpmmin;
		if(flag1[i] == FALSE)
		{
			for(j=0;j<allsensors.numsensors;j++)
			{
				if(sensor[j].status1.enabled == TRUE && sensor[j].status1.calmode == TRUE)	//check if this channel is enabled and in calibration mode
				{
					//copy for all 28 sensors at the speed point in question
					man_comptable[pos][j] = calibration.manroughcalpts[i][j];
				}
			}
		}
	}

	//use the rpm min and max in checks, if these do not exist in the table add them in.
	//this will stop the slope being misinterpreted at top and bottom
	//allsensors.rpmmax
	//allsensors.rpmmin
	//check the lowest point and highest point in the table.  If these are not populated insert the rought cal points back at top and bottom

	if(calibration.numpoints[0] < numsamples && calibration.numpoints[1] < numsamples && calibration.numpoints[2] < numsamples)
	{
		for(j=0;j<allsensors.numsensors;j++)
		{
			if(sensor[j].status1.enabled == TRUE && sensor[j].status1.calmode == TRUE)	//check if this channel is enabled and in calibration mode
			{
				//copy for all 28 sensors at the speed point in question (minimum point)
				man_comptable[0][j] = calibration.manroughmin[j];
			}
		}
	}
	if(calibration.numpoints[calibration.rpmpoints-1] < numsamples && calibration.numpoints[calibration.rpmpoints-2] < numsamples && calibration.numpoints[calibration.rpmpoints-3] < numsamples)
	{
		for(j=0;j<allsensors.numsensors;j++)
		{
			if(sensor[j].status1.enabled == TRUE && sensor[j].status1.calmode == TRUE)	//check if this channel is enabled and in calibration mode
			{
				//copy for all 28 sensors at the speed point in question (maximum point)
				man_comptable[calibration.rpmpoints-1][j] = calibration.manroughmax[j];
			}
		}
	}

}


//Fine curve calibration looks for 1000 values (default) and calculates the offset for each rpm speed point
//This is a maximum of 150 speed points for max speed engine
//This function will collect the data and add to an average stored in nonvolatile memory
//Function uses the calibration.averagevalacc[0][x] to store data, the columns relate to the sensors and rows are set to zero
void FineCurveCal(void)
{
unsigned int i;
unsigned int j;
unsigned int rpm;
float avval;
float numpoints;
long precompval;

	rpm = GetModalRPM(0);
	if(allsensors.flags.newval == TRUE)	//check if we have new values to update
	{
		settings.timerrunning = TRUE;
				
		//calculate i which will point to the value in the table to update
		i = rpm - allsensors.rpmmin;		//this will wrap as rpm is unsigned (this is ok but do not allow filling of table outside range)
		if(i < NUM_SPEED_REF)	//check in range
		{
			if(iBarred == FALSE && iDeltaRPM15 == FALSE)
			{
				//upper limit as a macro - e.g. 400,000
				if(calibration.numpoints[i] < ACCUMULATE_MAX)		//upper limit check so we dont end up wrapping on a long when accumulating the value
				{
					calibration.numpoints[i]++;	//increment the num points count for a particular RPM
					ReadAccCalNVMEM(i);	//read back the rpm val for a particular RPM, this will read 28 points from NVMEM and place in calibration.averagevalacc[0][x]
					for(j=0;j<allsensors.numsensors;j++)
					{
						if(sensor[j].status1.enabled == TRUE && sensor[j].status1.calmode == TRUE)	//check if this channel is enabled and in calibration mode
						{
							//AJB 19-Oct-10
							precompval = (long)GetPreCompValue(j);
							//do not add in when in error
							if(precompval > -32000)	//check it is not an error code
							{
							   calibration.averagevalacc[0][j] += precompval;	//add on the new obtained value
							}
							else
							{
								//Added 29-Oct-2010
								//added so that the average value is used whilst the channel is in a fail code mode
								//get the average last known good value from the accumulated value
								//do not carry out if the numpoints is zero, so we do not divide by zero
								if(calibration.numpoints[i] != 1)	//check for 1 as have already incremented this (then take off 1 in maths)
								{
									avval = (float)calibration.averagevalacc[0][j]/(float)(calibration.numpoints[i]-1);
									calibration.averagevalacc[0][j] += FloattoIntRound(avval);
								}
							}
							//AJB 19-Oct-10 EOM
						}
					}	  	
					WriteAccCalNVMEM(i);		//store the 28 accumulated values to NVMEM at point i relating to speed point
					//carry out the store to ram once we have seen 1000 at a speed point
					if(calibration.numpoints[i] == speedcompcoeffs.numsamples)	//check if we have retrieved 1000 (or numsamples) at a particular speed point
					{
						for(j=0;j<allsensors.numsensors;j++)
						{
							if(sensor[j].status1.enabled == TRUE && sensor[j].status1.calmode == TRUE)	//check if this channel is enabled and in calibration mode
							{
								avval = (float)calibration.averagevalacc[0][j];
								numpoints = (float)calibration.numpoints[i];
								avval /= numpoints;		//get average as a float
								man_comptable[i][j] = FloattoIntRound(avval);
							}
						}
						calibration.validpoints++;	//increment the number of speed points seen once at the numsamples value
						//set to stage 5 this will cal over time (default 500 hours) set once seen numsamples at any speed point
						//carry on adding the values to the table once over numsamples have been seen at any speed point
						speedcompcoeffs.stageflag = STAGE5_CAL;
						WriteSpeedCompStructtoNVMEM();
	
						FineCurveCalInterpolation(speedcompcoeffs.numsamples);					
						WriteMANCompTabletoNVMEM();
						MANCompTabletoSDCardFile((char *)&sdcarddir.finecaldir,sdsettings.sequence++);	//store to fincal directory every interval					
						MANCompTabletoSDCardFile((char *)&sdcarddir.configdir,0);
	
						mancal.manupdateflag = TRUE;
						iSensorInResetMode = TRUE;
						iSensorInRepalceTimer = TRUE;
						//sprintf(stringbuffer,"\r\n==1000points==\r\n");  DebugStringOut(stringbuffer);	// DEBUG
					}
				}
			}
		}
		//This still in 500 hours run until timers.calibrate reaches to 0.
		if(speedcompcoeffs.stageflag == STAGE5_CAL)		//now into looking at data over time, checking every 50 hours etc
		{
			if(timers.calibrate2 == 0)	//check if we have been running for 50 hours (or interval time)
			{
				
				FineCurveCalInterpolation(speedcompcoeffs.numsamples);
				timers.calibrate2 = speedcompcoeffs.intervaltimer * MINS_TO_MS_MULTIPLIER;		//this should be the interval in hours e.g. 50 hours
				WriteMANCompTabletoNVMEM();
				MANCompTabletoSDCardFile((char *)&sdcarddir.finecaldir,sdsettings.sequence++);	//store to fincal directory every interval
				//create file in config directory then rename and create again - therefore we always have a backup file
				MANCompTabletoSDCardFile((char *)&sdcarddir.configdir,0);						//sequence number always as zero
				mancal.manupdateflag = TRUE;

				iSensorInResetMode = TRUE;
				iSensorInRepalceTimer = TRUE;
				//sprintf(stringbuffer,"\r\n==50hours==\r\n");  DebugStringOut(stringbuffer);	// DEBUG
			}
		}
		WriteCalibrationStructtoNVMEM();
		GetLearningTimeLeft();
		GetIntervalTimeLeft();
		WriteMANCaltoNVMEM();
	}
	else if(rpm == 0) //check the rpm if zero, do not allow the timer to tick down
	{
		settings.timerrunning = FALSE;
	}
}



//Store the alarm to the event log on the SD card and raise the event for digital output checking
void MANCalAlarm(unsigned int chan, int rpm,unsigned int val,int man1000input)
{
sensoralarmstruct *ptr;
char eventstring[EVENTMSG_LEN_INBYTES_PART2];
// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - char chanstr[4];

	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);

	//set the alarm event before logging the event as logging increments the eventid
	SetAlarmEvent(MANCALALARM+chan);

	//store to event log etc on sd card all alarms raised per channel
	// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - InputNumtoString(chanstr,chan);
	// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Ch%s,%urpm,%dum,%dum",chanstr,rpm,man1000input,val);
	// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(LOOK_UP_AVERAGE_ERROR,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event

	ptr = GetStatus2Flags(chan);	//pass in the channel and a pointer to the sensor alarm structure flags will be returned
	ptr->calibration = 1;			//set flag
	ptr->calibrationlatched = 1;	//latch alarm
}


//Call at calibration completion
void ClearCalAveragingAlarm(void)
{
int i;
	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		ClearAlarmEvent(MANCALALARM+i);		//clear the calalarm for all 
	}
}


void ClearCalibrationAlarms(void)
{
sensoralarmstruct *ptr;
unsigned int i;
	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		ptr = GetStatus2Flags(i);		//pass in the channel and a pointer to the sensor alarm structure flags will be returned
		ptr->calibration = 0;			//clear flags
		ptr->calibrationlatched = 0;
		ClearAlarmEvent(SENSORPREWARN+i);			//clear the in alarm bit for the fault
		ptr->prewarning = 0;
		ptr->prewarninglatched = 0;			
		WriteNVMemory(FRAM1,SENSORSTATUS2_ALARMSLATCHED_DATA_OFFSET+(i*2),(unsigned int*)ptr,1);
	}

}

//Once the 500hours has elapsed the table can be filled with all values based on the total number of points collected
//at each RPM speed point
//As certain points may not be available these will be interpolated and extrapolated to fill in the gaps
//Pass into the function whether to interpolate values for less than speedcompcoeffs.numsamples, if zero is passed in the check will be as long as there is a point in the table
void FineCurveCalInterpolation(unsigned int numsamples)
{
float val1;
unsigned int j;
unsigned int k;
unsigned int m;
unsigned int n;
float avval;
int endoftableflag;
int man1000point;
int lower;
int upper;
int numberpoints;
float increment;
float intercept;
int	interceptfixed;
int pointcounter;
int okinterpolate;
float testlow;
float testhigh;

	pointcounter = 0;
	for(k=0;k<calibration.rpmpoints;k++)
	{
		if(calibration.numpoints[k] >= numsamples)	//check if a speed point is not equal to zero (or >= numsamples to check for)
		{
			pointcounter++;
		}
	}
	okinterpolate = FALSE;
	if(function.enabled.useroughcal == FALSE && pointcounter >= 2) okinterpolate = TRUE;	//if rough cal is not enabled, but at least two points reaches >=1000
	else if(function.enabled.useroughcal == TRUE) okinterpolate = TRUE;	//if rough cal is enabled
	if(okinterpolate == TRUE)
	{
		for(k=0;k<calibration.rpmpoints;k++)
		{

			ReadAccCalNVMEM(k);	//read back the rpm val for a particular RPM, this will read 28 points from NVMEM and place in calibration.averagevalacc[x][0]
			for(j=0;j<allsensors.numsensors;j++)
			{
				if(sensor[j].status1.enabled == TRUE && sensor[j].status1.calmode == TRUE)	//check if this channel is enabled and in calibration mode
				{
					if(calibration.numpoints[k] >= numsamples)	//check if a speed point is not equal to zero (or >= numsamples to check for)
					{
						avval = (float)calibration.averagevalacc[0][j]/(float)calibration.numpoints[k];
						man1000point = ReadMAN1000NVMEM(k,j);	//read man1000 table from fram for this speed point and this channel
						
						if(man1000point == 0)	//check if the value already assigned - if not store in the table
						{
							man1000point = FloattoIntRound(avval);
							WriteMAN1000NVMEM(k,j,man1000point);
							//noisefilterLOAD[j] = 3;		//set to count to load the value now in to the filter (otherwise filter on with zero in it)
						}
						testlow = (float)(man1000point - (int)sensorMoving.calAlarmThreshhold);
						testhigh = (float)(man1000point + (int)sensorMoving.calAlarmThreshhold);
						sprintf(stringbuffer,"\r\nAvv: %f - reg: %d - man1000point:%d - low:%f - high:%f \r\n", avval, sensorMoving.calAlarmThreshhold,man1000point, testlow, testhigh);  DebugStringOut(stringbuffer);
						//if((avval < (float)(man1000point + (int)sensorMoving.calAlarmThreshhold)) && (avval > (float)(man1000point - (int)sensorMoving.calAlarmThreshhold)))	//check has not changed by 200microns
						if((avval < (float)(man1000point + (int)sensorMoving.calAlarmThreshhold)) && (avval > (float)(man1000point - (int)sensorMoving.calAlarmThreshhold)))	//check has not changed by 200microns
						{
							man_comptable[k][j] = FloattoIntRound(avval);
						}
						else
						{
							//store to event log etc on sd card all alarms raised per channel
							MANCalAlarm(j,k+allsensors.rpmmin,(int)avval,man1000point);	//raise alarm on calibration event
						}
					}
					else man_comptable[k][j] = DEFAULT_NOT_USED_VAL;		//set to full scale for signed integer, this will be checked later
				}
			}
		}
		//fill in the table with rough cal points if these are not currently in the table with some tolerance around the point
		MANCompTabletoSDCardFile((char *)&sdcarddir.finecaldir,sdsettings.sequence++);	//store to fincal directory every interval
		if(function.enabled.useroughcal == TRUE) CheckRoughCalPoints(numsamples);
		MANCompTabletoSDCardFile((char *)&sdcarddir.finecaldir,sdsettings.sequence++);	//store to fincal directory every interval

		//at this point we should now have a table filled with averaged values over time x.  Any speed point that has not bee caculated can be checked and data interpolated
		for(j=0;j<allsensors.numsensors;j++)
		{
			if(sensor[j].status1.enabled == TRUE && sensor[j].status1.calmode == TRUE)	//check if this channel is enabled and in calibration mode
			{
				k = 0;
				while(k < calibration.rpmpoints)
				{
					endoftableflag = FALSE;
					interceptfixed = FALSE;
					if(man_comptable[k][j] == DEFAULT_NOT_USED_VAL)	//check if value in table is valid, interpolate if not valid 
					{
						m = 0;
						if(k != (calibration.rpmpoints -1))	//check if we are at end of table
						{
							m = 1;
							while(man_comptable[k+m][j] == DEFAULT_NOT_USED_VAL && ((k+m)!= (calibration.rpmpoints-1))) m++;	//find the first value that has been set in the table (above where we are)
							if(man_comptable[k+m][j] == DEFAULT_NOT_USED_VAL) endoftableflag = TRUE;	//raise an error and do not interpolate if we have reached the end of the table
						}
					
						if(k == 0) //if k == 0 extrapolate down from value found
						{
							//find n relating to the next point filled in, this will allow us to extrapolate to the first point in the table
							n = 1;
							while((man_comptable[m+n][j] == DEFAULT_NOT_USED_VAL) && ((m+n)!= (calibration.rpmpoints-1))) n++;	//find 2nd value after first one found above where we are! this is used to extrapolate the data
							lower = m;				//lower point found (index)
							upper = m+n;			//upper point found	(index)
							numberpoints = n;		//number of points to interpolate across
							interceptfixed = FALSE;
							if(j == 0)
							{
								sprintf(stringbuffer,"k=0 l%d,u%d,num%d\r\n",lower,upper,numberpoints);
								DebugStringOut(stringbuffer);
							}
						}
						else if(endoftableflag == TRUE)	//last value in table == 32768 therefore extrapolate from last points filled in
						{	//need to check this in ase we do not have the last point in the table from rough cal
							//once we have reached the last point all other points in the table should be complete and therefore
							//we can use n-1, n-2 values
							lower = k-2;			//lower point found (index)
							upper = k-1;			//upper point found	(index)
							numberpoints = 1;		//number of points to interpolate across
							m +=2;					//m is already calculated above this, add 2 for end point and stepped k back by 1 to cover full range
							k--;					//step k back by one to interpolate from k-1 not from k
							intercept = (float)man_comptable[upper][j];	//current point -1
							interceptfixed = TRUE;
						}
						else	//check if k is not zero then interpolate between two points
						{
							if(man_comptable[k-1][j] != DEFAULT_NOT_USED_VAL && man_comptable[k+m][j] != DEFAULT_NOT_USED_VAL)
							{
								lower = k-1;			//lower point found (index)
								upper = k+m;			//upper point found	(index)
								numberpoints = m+1;		//number of points to interpolate across
								intercept = man_comptable[lower][j];	//current point -1
								interceptfixed = TRUE;
								k--;		//decrement k so we start interpolating from the correct point
								m++;		//increment m so we calculate across the correct number of points
							}
						}

						val1 = (float)man_comptable[lower][j];
						increment = (float)man_comptable[upper][j] - val1;
						increment /= (float)(numberpoints);		//value showing difference per rpm between two speed points found
						if(interceptfixed == FALSE) intercept = val1 - (increment*m);	//now have the lowest point, m is first point found and valid (saved in val1) 
						//pass in j for chan,k = offset starting position in table, m number points to interpolate and increment
						Interpolate(j, k, m, intercept, increment);
						k += (m-1);		//set k as we have now filled in by interpolation all points until next known value
					}
					k++;
					settings.watchdog = 1;	//kick the dog in the timer interrupt
				}
			}
		}
	}
}

