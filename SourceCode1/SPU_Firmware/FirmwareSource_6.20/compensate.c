#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "compensate.h"
#include "core.h"
#include "setup.h"
#include "sci.h"
#include "globals.h"
#include "spi.h"
#include "pccli.h"
#include "PCModBus.h"

//DELTA_T contians the - for -K in calculation
#define DELTA_T (double)-0.08	//80ms interval time for PRT reading
void SpeedCompensation(void);
void ZeroAveraging(void);


void InitCompensation(void)
{
unsigned int i;
	
	settings.configoperationcomplete = 0;
	settings.tableconfigtype = 0;	//set on modbus command
	
	for(i=0;i<14;i++)
	{
		inputs.speedcomp.chan[i] = 0;
		inputs.tempcomp.chan[i] = 0;
		inputs.compresults.chan[i] = 0;
		inputs.compresults.compprevious[i] = 0;
	}
}

//This takes the raw uncompensated data and applies the speed compensation to the
//data based on the table input for each channel
//This table contains raw atod counts to offset for each channel
void SpeedCompensation(void)
{
unsigned int i;
float error;
float speedcomprpm;
float interpolate;
float deltaspeed;

	for(i=0;i<14;i++)
	{
		/*	 -removed V2.10, 25/05/06, NOT CORRECT!  Now using next condtion shown below
		if(inputs.rawresults.rpm <= safe5.speedcomprpmtable[0])
		{
			error = (float)speedcomp.comparray[i][0];
			speedcomprpm = (float)safe5.speedcomprpmtable[0];
			interpolate = error/speedcomprpm;
			deltaspeed = (float)inputs.rawresults.rpm;
			interpolate *= deltaspeed;
		}*/
		if(inputs.rawresults.rpm <= safe5.speedcomprpmtable[1])
		{
			error = (float)speedcomp.comparray[i][1] - (float)speedcomp.comparray[i][0];
			speedcomprpm = (float)(safe5.speedcomprpmtable[1] - safe5.speedcomprpmtable[0]);
			interpolate = error/speedcomprpm;
			deltaspeed = (float)inputs.rawresults.rpm - (float)safe5.speedcomprpmtable[0];	//use floats as rpm could be less than first value in table
			interpolate *= deltaspeed;
			interpolate += speedcomp.comparray[i][0];				
		}
		else if(inputs.rawresults.rpm <= safe5.speedcomprpmtable[2])
		{
			error = (float)speedcomp.comparray[i][2] - (float)speedcomp.comparray[i][1];
			speedcomprpm = (float)(safe5.speedcomprpmtable[2] - safe5.speedcomprpmtable[1]);
			interpolate = error/speedcomprpm;
			deltaspeed = (float)(inputs.rawresults.rpm - safe5.speedcomprpmtable[1]);
			interpolate *= deltaspeed;
			interpolate += speedcomp.comparray[i][1];		
		}
		else if(inputs.rawresults.rpm <= safe5.speedcomprpmtable[3])
		{
			error = (float)speedcomp.comparray[i][3] - (float)speedcomp.comparray[i][2];
			speedcomprpm = (float)(safe5.speedcomprpmtable[3] - safe5.speedcomprpmtable[2]);
			interpolate = error/speedcomprpm;
			deltaspeed = (float)(inputs.rawresults.rpm - safe5.speedcomprpmtable[2]);
			interpolate *= deltaspeed;
			interpolate += speedcomp.comparray[i][2];
		}
		else if(inputs.rawresults.rpm <= safe5.speedcomprpmtable[4])
		{
			error = (float)speedcomp.comparray[i][4] - (float)speedcomp.comparray[i][3];
			speedcomprpm = (float)(safe5.speedcomprpmtable[4] - safe5.speedcomprpmtable[3]);
			interpolate = error/speedcomprpm;
			deltaspeed = (float)(inputs.rawresults.rpm - safe5.speedcomprpmtable[3]);
			interpolate *= deltaspeed;
			interpolate += speedcomp.comparray[i][3];
		}
		else if(inputs.rawresults.rpm <= safe5.speedcomprpmtable[5])
		{
			error = (float)speedcomp.comparray[i][5] - (float)speedcomp.comparray[i][4];
			speedcomprpm = (float)(safe5.speedcomprpmtable[5] - safe5.speedcomprpmtable[4]);
			interpolate = error/speedcomprpm;
			deltaspeed = (float)(inputs.rawresults.rpm - safe5.speedcomprpmtable[4]);
			interpolate *= deltaspeed;
			interpolate += speedcomp.comparray[i][4];
		}
		else if(inputs.rawresults.rpm <= safe5.speedcomprpmtable[6])
		{
			error = (float)speedcomp.comparray[i][6] - (float)speedcomp.comparray[i][5];
			speedcomprpm = (float)(safe5.speedcomprpmtable[6] - safe5.speedcomprpmtable[5]);
			interpolate = error/speedcomprpm;
			deltaspeed = (float)(inputs.rawresults.rpm - safe5.speedcomprpmtable[5]);
			interpolate *= deltaspeed;
			interpolate += speedcomp.comparray[i][5];
		}
		else if(inputs.rawresults.rpm <= safe5.speedcomprpmtable[7])
		{
			error = (float)speedcomp.comparray[i][7] - (float)speedcomp.comparray[i][6];
			speedcomprpm = (float)(safe5.speedcomprpmtable[7] - safe5.speedcomprpmtable[6]);
			interpolate = error/speedcomprpm;
			deltaspeed = (float)(inputs.rawresults.rpm - safe5.speedcomprpmtable[6]);
			interpolate *= deltaspeed;
			interpolate += speedcomp.comparray[i][6];		
		}
		else if(inputs.rawresults.rpm <= safe5.speedcomprpmtable[8])
		{
			error = (float)speedcomp.comparray[i][8] - (float)speedcomp.comparray[i][7];
			speedcomprpm = (float)(safe5.speedcomprpmtable[8] - safe5.speedcomprpmtable[7]);
			interpolate = error/speedcomprpm;
			deltaspeed = (float)(inputs.rawresults.rpm - safe5.speedcomprpmtable[7]);
			interpolate *= deltaspeed;
			interpolate += speedcomp.comparray[i][7];
		}
		//always use table position 9 if greater than position 8 rpm
		else //if(inputs.rawresults.rpm <= safe5.speedcomprpmtable[9])
		{
			error = (float)speedcomp.comparray[i][9] - (float)speedcomp.comparray[i][8];
			speedcomprpm = (float)(safe5.speedcomprpmtable[9] - safe5.speedcomprpmtable[8]);
			interpolate = error/speedcomprpm;
			deltaspeed = (float)(inputs.rawresults.rpm - safe5.speedcomprpmtable[8]);
			interpolate *= deltaspeed;
			interpolate += speedcomp.comparray[i][8];
		}
		//now have the error in microns in interpolate
		//subtract this error from the raw value
		//this assumes the Speed compensation table contains raw micron errors
		//e.g. if table value contains 10 = 0.01mm error
		interpolate += 0.5;	//add on 0.5 before converting to int
		//conversion will always round down, so adding 0.5 cures this
		
		//13/09/05 removed if statement as values are now signed
		//if(inputs.scaledrawresults.chan[i] > (int)interpolate)
		{
			//note: 13/09/05, changed to addition of speed compensation to raw value, also remain as signed value
			inputs.speedcomp.chan[i] = inputs.scaledrawresults.chan[i] + (int)interpolate;
		}
		//else inputs.speedcomp.chan[i] = 0;
	}
}

//Carry out temp compensation when reading channel zero temperature
//This must be done at the same interval as sampling
void TempCompensation(void)
{
unsigned int i;
double power;
double currenttemp;
	for(i=0;i<14;i++)
	{
		if((inputs.flags.failure &((unsigned int)1) << i) == 0)
		{
			//02/11/05 - removed the rpmlimit check, this calculation is now carried out continously
			//there is no need for this to stop due to the rpm limit

			//remember delta_t is negative
			power = (1/(double)safe3.thermalK[i])*DELTA_T;
			currenttemp = (double)inputs.rawresults.prt[0]/10;
			inputs.tempcomp.chan[i] = currenttemp - ((currenttemp - inputs.tempcomp.chan[i])*exp(power));
			//check if out of range, if so seed with current temperature, if >5 set to current temp, it will be <5 on power-up
			if(inputs.tempcomp.chan[i] > 100 || inputs.tempcomp.chan[i] < 5)
			{
				inputs.tempcomp.chan[i] = currenttemp;
			}
		}
	}
}

void ApplySpeedTempCompensation(void)
{
unsigned int i;
unsigned int mask;
double compSc;
double compoffset;
double speedcomp;
double result;
	if(safe2.inputs.runmode == 0)		//run mode, apply compensation
	{
		SpeedCompensation();
		if(inputs.rawresults.rpm >= safe2.inputs.rpmlimit)
		{
			mask = 0x01;	//set as 1 for first channel check
			for(i=0;i<14;i++)
			{
				if((safe2.alarms.chanmask & mask) == 0)	//is channel disabled?
				{
					//15/06/06
					//if channel has been user disabled then set the comp result to zero
					//this stops the pc showing amber or red for errors etc
					inputs.compresults.chan[i] = inputs.compresults.compprevious[i] = 0;	//set to zero microns
				}
				else if((inputs.flags.failure &((unsigned int)1) << i) == 0)
				{
					compSc = (1/(double)safe4.compSc[i]) * 1000;
					compoffset = (double)safe5.compoffset[i];		//in microns
					speedcomp = (double)inputs.speedcomp.chan[i];	//in microns
					//REMEMBER: speedcomp values can be -ve, normally postive!
					//as the engine speed increases the peak heights decrease, thefore an addition realting to speed is included
					//co p offset is defined once the engine is up to speed, and running temp, thefore an
					//addition of compensation for temperature is included
					//temp compensation is SUBTRACTED!! 11/10/05
					if(safe2.tempcomp.OnOff != 0)	//03/11/05 - check if applying the temp compensation
					{
						result = speedcomp - (inputs.tempcomp.chan[i]*compSc) + compoffset;
					}
					else result = speedcomp + compoffset;
					result += 0.5;	//add 0.5 to cure rounding error
					//CHANGED TO SIGNED AND CAP RESULTS AT -50microns, note added 24/08/05
					if(result > -50.0)		//cap values at -50 microns
					{
						inputs.compresults.chan[i] = (int)result;
						//comp previous is used once below the rpm limit, stops duff data being reported
						inputs.compresults.compprevious[i] = (int)result;
					}
					else if(safe2.capvalues.compensation == 0)	//data not capped
					{
						inputs.compresults.chan[i] = (int)result;
						//comp previous is used once below the rpm limit, stops duff data being reported
						inputs.compresults.compprevious[i] = (int)result;
					}
					else if(safe2.capvalues.compensation == 1)	//data capped
					{
						inputs.compresults.chan[i] = inputs.compresults.compprevious[i] = -50;
					}
					//todo: add the zero averaging here, carried out when above rpm limit on compensated data
					//average over a time period, timer decrmented in timercheck(when above rpm limit)
					ZeroAveraging();
				}
				mask <<=1;
			}
		}
		else
		{
			//use last decent result
			for(i=0;i<14;i++)
			{
				inputs.compresults.chan[i] = inputs.compresults.compprevious[i];
			}
		}
	}
	else		//if cal mode, route the scaled comp values to the compresults stores
	{
		for(i=0;i<14;i++)
		{
			inputs.compresults.chan[i] = inputs.compresults.compprevious[i] = inputs.scaledrawresults.chan[i];
		}
	}
}


//Carry out zero averaging on channels selected
void ZeroAveraging(void)
{
unsigned int i;

	if(inputs.flags.zeroavstart == 1)	//if set to one set-up for zero averaging
	{
		inputs.flags.zeroavstart = 0;
		inputs.flags.zeroav = 1;		//set to one after start
		inputs.compresults.averagecount = 0;		
		for(i=0;i<14;i++)
		{
			inputs.compresults.zeroav[i] = 0;
			if((inputs.flags.calpeaks & (1<<i)) !=0)	//clear the offset values, if we are
			{											//recalculating peak offset adjustment
				safe5.compoffset[i] = 0;
			}
		}
		//test over 2min
		//timers.zeroav =   24000;		//TEST - based on 5ms tick
		timers.zeroav = 720000;		//based on 5ms tick, this is 1 hr averaging		
		timers.nextav = 400;		//average values every 2 seconds
		settings.updatesafe = 5;	//save zeroed values to non vol		
		
	}
	else if(inputs.flags.zeroav == 1)	//already in zero averaging mode
	{
		if(timers.nextav == 0)	//average on 2 second basis
		{
			timers.nextav = 400;	//set to 2 secs
			
			if(timers.zeroav != 0)
			{
				inputs.compresults.averagecount++;			//increment the count for all channels
				for(i=0;i<14;i++)
				{
					if((inputs.flags.calpeaks & (1<<i)) !=0)
					{
						inputs.compresults.zeroav[i] += (long)inputs.compresults.chan[i];
					}
				}
			}
			else //averaging end after 1 hr (above rpm limit)
			{
				inputs.flags.zeroav = 0;	//clear the flag at end of zero averaging
				for(i=0;i<14;i++)			//set up the offset values for averaged channels
				{
					if((inputs.flags.calpeaks & (1<<i)) !=0)
					{
						safe5.compoffset[i]  = inputs.compresults.zeroav[i]/inputs.compresults.averagecount;
						//limit the offset to +- 100 (assume if outside then in error)
						if(safe5.compoffset[i] > 100) safe5.compoffset[i] = 100;
						else if(safe5.compoffset[i] < -100) safe5.compoffset[i] = -100;
						safe5.compoffset[i] *= -1;	//invert the sign of the offset so when added it zeros the channel
					}
				}
				settings.updatesafe = 5;	//save new offsets to non vol		
			}
		}
	}

}


