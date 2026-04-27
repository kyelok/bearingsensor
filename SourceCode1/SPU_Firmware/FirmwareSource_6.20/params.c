#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "define.h"
#include "params.h"
#include "PCModBus.h"
#include "crctable.h"
#include "core.h"
#include "globals.h"
#include "sci.h"
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
#include "utils.h"
#include "wioprim.h"
#include "slave485.h"
#include "sdcard.h"
#include "adc.h"

void Safe1Update(void);
void ConfigurationUpdate(void);
void SpeedCompStructUpdate(void);
void WioUpdate(void);
void SPU2ValUpdate(void);
void SetupAlarmLevels(void);
void UpdateAllSensor(void);
void SensorNumChanged(void); //PF Gen 2 - 10-May-12 Added in function SensorNumChanged

void DamageMonStructUpdate(void);	//AJB 19-Aug-10
void DamageMonENBChange(void);		//AJB 24-Sep-10
void SLEMUpdate(void);				//AJB 19-Aug-10
void CPPUpdate(void);
void SensorUpdate(void);

const parameterstruct parameters[NUM_PARAMETERS_IN_LIST] =
{
{997,LONGLRATELIMIT_LOW,LONGLRATELIMIT_HI,&config.sdsettings.longlrate,                            "Longlrate  ",WriteConfigStructtoNVMEM},
{998,SHORTLRATELIMIT_LOW,SHORTLRATELIMIT_HI,&config.sdsettings.shortlrate,                         "Shrtlrate  ",WriteConfigStructtoNVMEM},
{1001,RPMLIMIT_LOW,999,&allsensors.iBarredVibrationSpeedLow,								       "BARREDLOW  ",UpdateAllSensor},  // FF 3-April-2013 added barred speed band for alarm per new MAN algo
{1002,RPMLIMIT_LOW,999,&allsensors.iBarredVibrationSpeedHigh,								       "BARREDHIGH ",UpdateAllSensor},  // FF 3-April-2013 added barred speed band for alarm per new MAN algo
{1005,RPMLIMIT_LOW,999,&cppsettings.delatRpmPauseDelay,												"DELTARPM",CPPUpdate},  // FF 7-March-2014

{1012,RPMLIMIT_LOW,999,&allsensors.dsss,											               "DSSS       ",UpdateAllSensor},  // PF Gen 2 - 10-May-12 changed upper limit to 999
{1028,CHANLOWTHRESLIMIT_LOW,CHANLOWTHRESLIMIT_HI,&config.inputs.chanlowthreshold,                  "ChLowThres ",ConfigurationUpdate},
{1029,CHANHITHRESLIMIT_LOW,CHANHITHRESLIMIT_HI,&config.inputs.chanhighthreshold,                   "ChHiThres  ",ConfigurationUpdate},
{1030,SCALINGFACTOR_LOW,SCALINGFACTOR_HI,&config.inputs.sensorscalingfactor,                       "SensScl    ",ConfigurationUpdate},
{1032,TGRAPH_LOW,TGRAPH_HI,&config.trendmax.graphvalue,                                            "TGraphMax  ",WriteConfigStructtoNVMEM},
{1034,RPMLIMIT_LOW,RPMLIMIT_HI,&allsensors.rpmlimit,                                               "RPMLimit   ",UpdateAllSensor},
{1037,0,ALARMBITMAP,&config.alarmenable.bitmap,                                                    "AlarmBitmap",WriteConfigStructtoNVMEM},
{1045,0,WIOENABLED,&wiosettings.enabled,                                                           "WIOEnb     ",WioUpdate},
{1046,0,WIOALARMBITMAP,&wiosettings.alarmmask,                                                     "WIOAlrmBtmp",WioUpdate},
{1050,0,1,&slemsettings.enabled,                                          				           "SLEMEnable ",SLEMUpdate},
{1051,0,1,&slemsettings.alarmmask,                                        				           "SLEMAlrmask",SLEMUpdate},
{1052,MVFSD_LOW_LIMIT,MVFSD_HI_LIMIT,&slemsettings.mVfsd,                                          "SLEM mV FSD",SLEMUpdate},
{1053,0,1,(unsigned int*)&allsensors.bits,  	  							                       "BlipControl",SlowDownBlipControl},
{1054,SLEMALARM_LOW,SLEMALARM_HI,(unsigned int*)&slemsettings.alarmlevel,  				           "SLEMLevel  ",SLEMUpdate},
{1055,SLEMHYS_MIN,SLEMHYS_MAX,&slemsettings.hysteresis,     						 			   "SLEMHys",SLEMUpdate},					//AJB 21-Sep-10
{1056,SLEMDELAY_MIN,SLEMDELAY_MAX,&slemsettings.alarmdelay,										   "SLEMDelay",SLEMUpdate},					//AJB 21-Sep-10
{2048,0,NUMSENS_LIMIT,&allsensors.numsensors,                                                      "NumSens Tot",SensorNumChanged},			//PF Gen 2 - 10-May-12 Added in function SensorNumChanged
{2049,0,NUMSENSSPU_LIMIT,&allsensors.numsensorsspu1,                                               "NumSensSPU1",SensorNumChanged},			//PF Gen 2 - 10-May-12 Added in function SensorNumChanged
{2050,0,NUMSENSSPU_LIMIT,&allsensors.numsensorsspu2,                                               "NumSensSPU2",SPU2ValUpdate},
{2051,0,SENSORHYSTERESIS_LIMIT,(unsigned int*)&allsensors.sensorhysteresis,                        "SensHys    ",UpdateAllSensor},
{2052,CYLINDERHYSTERESIS_LOW,CYLINDERHYSTERESIS_HI,(unsigned int *)&allsensors.cylinderhysteresis, "CylHys     ",UpdateAllSensor},
{2053,SLOWDOWNLEVEL_LOW,SLOWDOWNLEVEL_HI,&allsensors.slowdownlevel,								   "SenSlowL   ",SetupAlarmLevels},
{2054,ALARMLEVEL_LOW,ALARMLEVEL_HI,&allsensors.alarmlevel,										   "SensAlrmL  ",SetupAlarmLevels},
{2055,SLOWDOWNDEVCALLEVEL_LOW,SLOWDOWNDEVCALLEVEL_HI,&allsensors.slowdowndevcallevel,			   "SlwCalL    ",SetupAlarmLevels},
{2056,ALARMDEVCALLEVEL_LOW,ALARMDEVCALLEVEL_HI,&allsensors.alarmdevcallevel,					   "AlrDevCL   ",SetupAlarmLevels},
{2057,SLOWDOWNDEVLEVEL_LOW,SLOWDOWNDEVLEVEL_HI,&allsensors.slowdowndevlevel,					   "SlwDevL    ",SetupAlarmLevels},
{2058,ALARMDEVLEVEL_LOW,ALARMDEVLEVEL_HI,&allsensors.alarmdevlevel,								   "AlrDevL    ",SetupAlarmLevels},
{2059,CYLINDERALARMLEVEL_LOW,CYLINDERALARMLEVEL_HI,&allsensors.cylinderalarmlevel,				   "CylArmL    ",SetupAlarmLevels},
{2062,NOMINALSPEED_LOW,NOMINALSPEED_HI,&allsensors.nominalspeed,								   "NomSpeed   ",SpeedCompStructUpdate},
{2064,WIOALARMUPPERLEVEL_LOW,WIOALARMUPPERLEVEL_HI,&wiosettings.alarmupperlevel,				   "WIOAlarmUL ",WioUpdate},
{2065,WIOALARMLEVEL_LOW,WIOALARMLEVEL_HI,&wiosettings.alarmlevel,								   "WIOAlarmL  ",WioUpdate},
{2066,WIOHYSTERESIS_LOW,WIOHYSTERESIS_HI,&wiosettings.hysteresis,								   "WIOHsytL   ",WioUpdate},
{2067,REFLASH_LOW,REFLASH_HI,&allsensors.reflash,												   "Reflash    ",UpdateAllSensor},
{2068,FILTERCOEF_LOW,FILTERCOEF_HI,&config.filter.inputtap,										   "Filtercoef ",WriteConfigStructtoNVMEM},
{2069,PREWARINGTIMER_LOW,PREWARINGTIMER_HI,&allsensors.prewarningtimer,							   "Prewarning ",UpdateAllSensor},
{2070,PREWARINGLEVEL_LOW,PREWARINGLEVEL_HI,&allsensors.prewarninglevel,							   "PreWarnL   ",UpdateAllSensor},
//note 2071,2072,2073,2074 - already used elsewhere
{2075,MAN_APPLIED_MIN_SAMPLES_LOW,MAN_APPLIED_MIN_SAMPLES_HI,&speedcompcoeffs.manappliedminsamples,"AppSamples ",SpeedCompStructUpdate},
{2076,SLOWDOWNLEVEL_LOW,SLOWDOWNLEVEL_HI,&allsensors.slowdowncallevel,							   "SlwCalL    ",SetupAlarmLevels},
{2077,ALARMLEVEL_LOW,ALARMLEVEL_HI,&allsensors.alarmcallevel,									   "AlrCalL    ",SetupAlarmLevels},
{2078,CYLINDERALARMLEVEL_LOW,CYLINDERALARMLEVEL_HI,&allsensors.cylinderalarmcallevel,			   "CylAlrCalL ",SetupAlarmLevels},
{2079,0,0,&settings.slowdownlevel,"",NULL},		//these should not be changed from the PC!!!
{2080,0,0,&settings.alarmlevel,"",NULL},		//here to be read only!
{2081,0,0,&settings.slowdowndevlevel,"",NULL},
{2082,0,0,&settings.alarmdevlevel,"",NULL},
{2083,0,0,&settings.cylinderalarmlevel,"",NULL},
{2084,0,65535,&wiosettings.scaledmin,															   "WIOScaleMin",WioUpdate},		// PF Gen 2 - 16-Nov-11
{2085,0,65535,&wiosettings.scaledmax,															   "WIOScaleMax",WioUpdate},		// PF Gen 2 - 16-Nov-11
{2086,0,65535,&wiosettings.units,																   "WIOUnits",WioUpdate},			// PF Gen 2 - 16-Nov-11
// PF Gen 2 - 13-Dec-11 DC mode checks
{2087,0,21000,&dcmodechecks.ideal.lo,															   "DCIdealLo",WriteDCModeChecksSettingstoNVMEM},
{2088,0,21000,&dcmodechecks.ideal.hi,															   "DCIdealHi",WriteDCModeChecksSettingstoNVMEM},
{2089,0,21000,&dcmodechecks.ok.lo,																   "DCOKLo",WriteDCModeChecksSettingstoNVMEM},
{2090,0,21000,&dcmodechecks.ok.hi,																   "DCOKHi",WriteDCModeChecksSettingstoNVMEM},
{2091,0,21000,&dcmodechecks.cylinderComparison.max,												   "DCCyCompMax",WriteDCModeChecksSettingstoNVMEM},
{2092,0,21000,&dcmodechecks.cylinderComparison.threshold,										   "DCCyCompThr",WriteDCModeChecksSettingstoNVMEM},
// PF Gen 2 - 13-Dec-11 EOM
{3002,SPEEDBAND_LOW,SPEEDBAND_HI,&speedcompcoeffs.speedbands[0][0],								   "SpeedBnd",SpeedCompStructUpdate},
{3003,SPEEDBAND_LOW,SPEEDBAND_HI,&speedcompcoeffs.speedbands[0][1],								   "SpeedBnd",SpeedCompStructUpdate},
{3004,SPEEDBAND_LOW,SPEEDBAND_HI,&speedcompcoeffs.speedbands[1][0],								   "SpeedBnd",SpeedCompStructUpdate},
{3005,SPEEDBAND_LOW,SPEEDBAND_HI,&speedcompcoeffs.speedbands[1][1],								   "SpeedBnd",SpeedCompStructUpdate},
{3006,SPEEDBAND_LOW,SPEEDBAND_HI,&speedcompcoeffs.speedbands[2][0],								   "SpeedBnd",SpeedCompStructUpdate},
{3007,SPEEDBAND_LOW,SPEEDBAND_HI,&speedcompcoeffs.speedbands[2][1],								   "SpeedBnd",SpeedCompStructUpdate},
{3008,SLOPECOEFF_LOW,SLOPECOEFF_HI,&speedcompcoeffs.slopecoeff,									   "SlopeCoef",SpeedCompStructUpdate},
{3009,INITIALTIMER_LOW,INITIALTIMER_HI,&speedcompcoeffs.initialtimer,							   "InitialT",SpeedCompStructUpdate},
{3010,LEARNINGMODETIMER_LOW,LEARNINGMODETIMER_HI,&speedcompcoeffs.learningmodetimer,			   "LearnT",SpeedCompStructUpdate},
{3011,INTERVALTIMER_LOW,INTERVALTIMER_HI,&speedcompcoeffs.intervaltimer,						   "IntervalT",SpeedCompStructUpdate},
{3012,NUMSAMPLES_LOW,NUMSAMPLES_HI,&speedcompcoeffs.numsamples,									   "NumSamples",SpeedCompStructUpdate},
//AJB 19-Aug-10 added damage monitoring params
{4616,CCSPLIT_LOW,CCSPLIT_HI,&damagemon.ccsplit,      											   "CCSplit",DamageMonStructUpdate},
{4617,KVALUE_LOW,KVALUE_HI,&damagemon.kvalue,      												   "KValue",DamageMonStructUpdate},
{4618,BETAVALUE_LOW,BETAVALUE_HI,&damagemon.betavalue,      									   "BetaVal",DamageMonStructUpdate},
{4619,RPMLEVELX_LOW,RPMLEVELX_HI,&damagemon.rpmlevelx,      									   "RPM X",DamageMonStructUpdate},
{4620,REFLEVELX_LOW,REFLEVELX_HI,&damagemon.reflevelx,      									   "REF X",DamageMonStructUpdate},
{4621,PRESENTSTATEX_LOW,PRESENTSTATEX_HI,&damagemon.presentstatex,      						   "PRESENT X",DamageMonStructUpdate},
{4622,ALARMLEVELSINGLE_LOW,ALARMLEVELSINGLE_HI,&damagemon.alarmlevelsingle,      				   "AlrmLvlSngl",DamageMonStructUpdate},
{4623,ALARMLEVELCYL_LOW,ALARMLEVELCYL_HI,&damagemon.alarmlevelcyl,      						   "AlrmLvlCyl",DamageMonStructUpdate},
{4624,ALARMLEVELMBSUM_LOW,ALARMLEVELMBSUM_HI,&damagemon.alarmlevelmbsum,      					   "AlrmLvlMBS",DamageMonStructUpdate},
{4625,CYLNEIGHBOUR_LOW,CYLNEIGHBOUR_HI,&damagemon.cylneighbour,      						       "CylNeighbr",DamageMonStructUpdate},
{4626,MBNEIGHBOUR_LOW,MBNEIGHBOUR_HI,&damagemon.mbneighbour,      								   "MBNeighbr",DamageMonStructUpdate},
{4627,CYLNEIGHBOURALARMS_LOW,CYLNEIGHBOURALARMS_HI,&damagemon.cylneighbouralarms,      			   "CylNAlrm",DamageMonStructUpdate},
{4628,MBNEIGHBOURALARMS_LOW,MBNEIGHBOURALARMS_HI,&damagemon.mbneighbouralarms,      			   "MBNAlrm",DamageMonStructUpdate},
{4629,DELTARPMLIMIT_LOW,DELTARPMLIMIT_HI,&damagemon.deltarpmlimit,     				 			   "DeltaRPMLim",DamageMonStructUpdate},
{4630,0,DAMAGEMONHYSTERESIS_LIMIT,&damagemon.hysteresis,										   "DamageHys",DamageMonStructUpdate},		//AJB 23-Aug-10
{4631,0,1,&damagemon.damagemonenb,																   "DamMonENB",DamageMonENBChange},			//AJB 24-Sep-10
{4632,RPMLIMIT_LOW,1,&cppsettings.iCppEnable,													   "CPPENABLE ",CPPUpdate},  // FF 7-Jan-2014 Added CPP enable/disable
{4633,RPMLIMIT_LOW,100,&cppsettings.iCppLowLimit,												   "CPPLow ",CPPUpdate},  // FF 7-Jan-2014 Added CPP 4mA to percent map
{4634,RPMLIMIT_LOW,110,&cppsettings.iCppHighLimit,												   "CPPHigh ",CPPUpdate},  // FF 7-Jan-2014 Added CPP 20mA to percent map
{4635,RPMLIMIT_LOW,100,&cppsettings.cppkvalue,													   "CPPKVALUE ",CPPUpdate},  // FF 7-Jan-2014 Added CPP 
{4636,RPMLIMIT_LOW,5000,&cppsettings.gammavalue,												   "CPPGAMMA ",CPPUpdate},  // FF 7-Jan-2014 Added CPP
{4637,RPMLIMIT_LOW,1000,&cppsettings.cpplevelx,														"CPPXVALUE ",CPPUpdate},  // FF 7-Jan-2014 Added CPP
{4640,RPMLIMIT_LOW,1000,&sensorMoving.calAlarmThreshhold,											"CALALARM",SensorUpdate}  // FF 25-Nov-2014
//AJB 19-Aug-10 EOM
};


//Check and store funtion for parameters that can be altered from the PC
////Pass in the register to be modified
int PCModifyParameter(unsigned int reg, unsigned int NumReg)
{
int i;
char eventstring[EVENTMSG_LEN_INBYTES_PART2];

	i = 0;
	while(reg != parameters[i].reg && i < NUM_PARAMETERS_IN_LIST) i++;
	if(i == NUM_PARAMETERS_IN_LIST) return(0);		//return if we did not find the register in question
	
	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);

	if(pcmodbus.Func == WRITEPRESET || pcmodbus.Func == WRITEREG)	//write to location
	{

		if(*parameters[i].ptr != pcmodbus.Data[NumReg])
		{
			strcpy(eventstring,parameters[i].stringbuf);
			if(pcmodbus.Data[NumReg] >= parameters[i].lowlim && pcmodbus.Data[NumReg] <= parameters[i].hilim)
			{
				//point to position after initial string dependent on type
				//REMEMBER the string length of EVENTMSG_LEN_INBYTES_PART2 (max 12 chars) so 18 chars left!
				//		PARAM_STR_LEN-1 as last is a null, we must not have a null in the character string (for labview to parse correctly)
				sprintf(&eventstring[PARAM_STR_LEN-1],"old:%u new:%u",*parameters[i].ptr,pcmodbus.Data[NumReg]);
				*parameters[i].ptr = pcmodbus.Data[NumReg];
				if(parameters[i].paramfunc != NULL)		//call function if necessary, if null no function to call
				{
					parameters[i].paramfunc();
				}
			}
			else
			{
				//LEAVE AS OOR for out of range NOT ENOUGH CHARS FOR ANYTHING ELSE!!!
				sprintf(&eventstring[PARAM_STR_LEN],"OOR:%u :%u",pcmodbus.Data[NumReg],*parameters[i].ptr);
			}
			// PF Gen 2 - 07-Mar-12 Old alarm system backend removal - LogEvent(PARAMETER_CHANGE,HIGH_PRIORITY,NO,eventstring);	// log event to sd card on change	
		}
	}	
	else pcmodbus.Data[NumReg] = *parameters[i].ptr;

	return(TRUE);	//register found in params, return true
}


void DamageMonENBChange(void)
{
int i;
	if(damagemon.damagemonenb == TRUE)
	{
		for(i=0;i<allsensors.numsensors;i++)
		{
			damagemonignore[i] = 3; //ignore after changing the state
		}
	}
	else	//when switching off clear the alarm fields
	{
			for(i=0;i<allsensors.numsensors;i++)
			{
				//tidy up and clear to zero if disabled
				manref[i].reflevel = 0;
				manref[i].presentstate = 0;
				manref[i].refvalue = 0;
				manref[i].reflevel_int = 0;
				manref[i].presentstate_int = 0;
				manref[i].refvalue_int = 0;
				ClearAlarmEvent(DAMAGESINGLESLOWDOWN+i);			//clear the in alarm bit for the fault
			}
			damalarms.single[0] = 0;
			damalarms.single[1] = 0;
			WriteNVMemory(FRAM1,DAMAGE_SINGLE_ALARMS_DATA_OFFSET,&damalarms.single,2);
			//clear down cylinder alarms
			for(i=0;i<allsensors.numsensors/2;i++)
			{
				manrefsum[i].cylsum = 0;
				ClearAlarmEvent(DAMAGECYLSLOWDOWN+i);			//clear the in alarm bit for the fault
			}
			damalarms.cylinder = 0;
			WriteNVMemory(FRAM1,DAMAGE_CYL_ALARMS_DATA_OFFSET,&damalarms.cylinder,1);
			//clear down the mbsum alarms
			for(i=0;i<allsensors.numsensors/2;i++)
			{
				manrefsum[i].mbnsum = 0;
				ClearAlarmEvent(DAMAGEMBSUMSLOWDOWN+i);			//clear the in alarm bit for the fault
			}
			damalarms.mbneighbour = 0;
			WriteNVMemory(FRAM1,DAMAGE_MBSUM_ALARMS_DATA_OFFSET,&damalarms.mbneighbour,1);

	}
	DamageMonStructUpdate();
}

void Safe1Update(void)
{
	settings.updatesafe = SAFE1UPDATE;		//update the safe in main loop
}

//AJB 19-Aug-10
void SLEMUpdate(void)
{
	WriteSLEMSettingstoNVMEM();
}
//AJB 19-Aug-10 EOM

void CPPUpdate(void)
{
	WriteCPPSettingstoNVMEM();	
}

void SensorUpdate(void)
{	
	WriteSensorSettingstoNVMEM();
}

//AJB 19-Aug-10
//Save to NVMEM on change
void DamageMonStructUpdate(void)
{
	WriteDamagemontoNVMEM();
}
//AJB 19-Aug-10 EOM


void ConfigurationUpdate(void)
{
	settings.updatesafe = SAFE2UPDATE;		//update the safe in main loop
	settings.updatescaling = TRUE;
	WriteConfigStructtoNVMEM();
}


void SpeedCompStructUpdate(void)
{	
	NominalSpeedUpdate();
	//settings.updatesafe = SPEEDCOMPSTRUCTUPDATE;
	settings.sdcardupdate = SDGENERALUPDATE;
}

void WioUpdate(void)
{
	static unsigned int PreviousWIOEnabledState = 0xFFFF; //SLD Gen 2 - 20-Sep-2012
	 
	//AJB 05-Oct-10
	//make sure that when switching from digital to analogue ro vice versa alarms are cleared down
	//this should never be the case, but make sure there are not stuck alarms!
	//digital or analog chosen
	
	//SLD Gen 2 - 20-Sep-2012 Always run to clear alarms if a change is made to the enabled setting.
	if (wiosettings.enabled != PreviousWIOEnabledState)
	//if(wiosettings.enabled == 1 || wiosettings.enabled == 2) //SLD Gen 2 - 20-Sep-2012
	{
		PreviousWIOEnabledState = wiosettings.enabled; //SLD Gen 2 - 20-Sep-2012
		WIOCommsOORClearDown();
	}
	//AJB 05-Oct-10 EOM
	WriteWIOSettingstoNVMEM();
}


//Call if the numer of sensors for spu 2 has been updated
//This will allow alarms to be cnacelled if they have arised for dual spu
void SPU2ValUpdate(void)
{
// PF Gen 2 - 10-May-12 Old alarm system backend removal - char eventstring[EVENTMSG_LEN_INBYTES_PART2];

	// PF Gen 2 - 10-May-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
	//clear on update
	slave485mb.slavelost = FALSE;
	if(CheckAlarmBitSet(SPU2COMMS) == 1 || alarms.slavefailurelatched == TRUE)		// PF Gen 2 - 17-May-12 Checked alarm bits in addition
	{
	 	// PF Gen 2 - 10-May-12 Old alarm system backend removal - sprintf(eventstring,"Comms Restored to SPU2");
		ClearAlarmEvent(SPU2COMMS);		//clear the in alarm bit for the fault
		alarms.slavefailure = FALSE;			//clear the failure flag for comms
		alarms.slavefailurelatched = FALSE;
	}
	
	SensorNumChanged(); // PF Gen 2 - 10-May-12 Call SensorNumChanged
}

void SetupAlarmLevels(void)
{
	if(allsensors.flags.calmode == TRUE)
	{
		SetupLearningModeAlarmLevels();
	}
	else SetupNormalModeAlarmLevels();

}

// PF Gen 2 - 10-May-12 Added in function SensorNumChanged
// If the number of sensor are changed calculate the total number then clear the alarms
void SensorNumChanged(void) {

	allsensors.numsensors = allsensors.numsensorsspu1 +	allsensors.numsensorsspu2; // Added in calculation as LabVIEW was writing behind the scenes
	ClearEventCodeListArea(); // This will clear any locked in alarms
	UpdateAllSensor();
}

void UpdateAllSensor(void)
{
	settings.sdcardupdate = SDGENERALUPDATE;
}

