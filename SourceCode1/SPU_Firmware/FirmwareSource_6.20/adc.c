#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include "define.h"
#include "core.h"
#include "globals.h"
#include "sci.h"
#include "setup.h"
#include "adc.h"
#include "pccli.h"
#include "man.h"
#include "utils.h"
#include "alarms.h"
#include "logging.h"

#pragma DATA_SECTION(adcregs, ".adcregisters");
//New data sections to move variables relating to the ADC to free up ebss space
//AJB 19-Aug-10
//found some space so dont need to move this to the m1ram area!
/*#pragma DATA_SECTION(adcdata, ".adcsection1");
#pragma DATA_SECTION(inputs, ".adcsection1");
#pragma DATA_SECTION(counter, ".adcsection1");
#pragma DATA_SECTION(dcmodeprev, ".adcsection1");
#pragma DATA_SECTION(slowdownblipstate, ".adcsection1");
#pragma DATA_SECTION(proximityscalingfactor, ".adcsection1");
*/
//AJB 19-Aug-10 EOM

#define TWO_VOLT_INPUT (2730)		//if 4095 = 3V then this represents a 2V level
#define RAW_CHANNEL_OFFSET (int)4095		//this is the offset that all channels relate to at their calibration point

//Approx 33us per conversion with ADCclk at 6.25MHz
// ADC start parameters
#define ADC_MODCLK 0x3   // HSPCLK = SYSCLKOUT/2*ADC_MODCLK2 = 150/(2*3)         = 25MHz
#define ADC_CKPS   0x2   // ADC module clock = HSPCLK/2*ADC_CKPS   = 25MHz/(2*2) = 6.25MHz
#define ADC_SHCLK  0x0B  // S/H width in ADC module periods                      = 11 + 1 ADC clocks

#define ADCTRL1_REG 		((volatile uint16 *)0x7040)

#define TEMP_CHAN0 gpd.selunion.bits.ccselect1 = 0; gpd.selunion.bits.ccselect2 = 0;
#define TEMP_CHAN1 gpd.selunion.bits.ccselect1 = 1; gpd.selunion.bits.ccselect2 = 0;
#define TEMP_CHAN2 gpd.selunion.bits.ccselect1 = 0; gpd.selunion.bits.ccselect2 = 1;
#define TEMP_CHAN3 gpd.selunion.bits.ccselect1 = 1; gpd.selunion.bits.ccselect2 = 1;

// PF 15-Oct-09 new defines for analogue routines
#define ANALOG_SETTLE 10	//AJB 19-Aug-10 altered to longer settling time

#define ANALOG_CHAN0 	gpa.selunion.bits.anain_select1 = 0; gpa.selunion.bits.anain_select2 = 0; gpa.selunion.bits.anain_select3=0;
#define ANALOG_CHAN1 	gpa.selunion.bits.anain_select1 = 1; gpa.selunion.bits.anain_select2 = 0; gpa.selunion.bits.anain_select3=0;
#define ANALOG_CHAN2 	gpa.selunion.bits.anain_select1 = 0; gpa.selunion.bits.anain_select2 = 1; gpa.selunion.bits.anain_select3=0;
#define ANALOG_CHAN3 	gpa.selunion.bits.anain_select1 = 1; gpa.selunion.bits.anain_select2 = 1; gpa.selunion.bits.anain_select3=0;
#define ANALOG_CHAN4 	gpa.selunion.bits.anain_select1 = 0; gpa.selunion.bits.anain_select2 = 0; gpa.selunion.bits.anain_select3=1;
#define ANALOG_CHAN5 	gpa.selunion.bits.anain_select1 = 1; gpa.selunion.bits.anain_select2 = 0; gpa.selunion.bits.anain_select3=1;
#define ANALOG_CHAN6 	gpa.selunion.bits.anain_select1 = 0; gpa.selunion.bits.anain_select2 = 1; gpa.selunion.bits.anain_select3=1;
#define ANALOG_CHAN7 	gpa.selunion.bits.anain_select1 = 1; gpa.selunion.bits.anain_select2 = 1; gpa.selunion.bits.anain_select3=1;
// PF 15-Oct-09 EOM

#define CPP_0MA_AD_VALUE 60
#define CPP_20MA_AD_VALUE 4095

volatile struct ADC_REGS adcregs;

volatile adcdatastruct adcdata;
volatile inputstruct inputs;	// AJB 15-Feb-10 Changed to volatile for compilier optimisation

unsigned int counter;
int dcmodeprev[MAX_NUM_CHANNELS];
unsigned int slowdownblipstate;
float proximityscalingfactor;		// AJB 15-Feb-10 Added so calculation is not performed every cycle

//AJB 19-Aug-10
slemsettingsstruct slemsettings;
slemstruct slem;
rtcbatstruct rtcbat;
//AJB 19-Aug-10 EOM

cppstruct loadlevel;
cppsettingsstruct cppsettings;
sensorMovingstruct sensorMoving;

void DCMode(unsigned int chan);
void DCModeCalcs(void);
int PRTConversion(unsigned char i);

// AJB 15-Feb-10 Moved function define to adc.h ProximityScaling(unsigned int chan);

void ReadPRT(void);
void PulseCounterCheck(void);

void DCModeStoreVal(unsigned int chan, int value);
void DCModePeakHold(unsigned int chan, int value);
void DCuAPeakHold(unsigned int chan, int value);
void PeakConversion(void); // PF Gen 2 - 17-May-12 Changed routine name to PeakConversion

void CheckForwardAstern(void);
void ReadAnalog(void);	// PF 14-Oct-09 added readanalog function
void CalibrateLoop18mA(unsigned int chan);	// PF 15-Oct-09 added CalLoop18mA function

//AJB 19-Aug-10 added for SLEM input
void CheckSLEMRange(void);
void AnalogSLEM(void);
void SLEMAlarm(void);
//AJB 19-Aug-10 added for RTC Battery input
void RTCBattery(void);
void RTCLowBattAlarm(void);
//FF 07-Jan-2014 added CPP
void ProcessAnalogCpp(void);

unsigned int dcChan; // PF Gen 2 - 07-Dec-11 Added variable
unsigned int uArealtimeValue[MAX_NUM_CHANNELS];	// PF Gen 2 - 09-Dec-11 for realtime uA during dc peak hold
int umrealtimeValue[MAX_NUM_CHANNELS];	// PF Gen 2 - 09-Dec-11 for realtime microns during dc peak hold

// PF Gen 2 - 09-Dec-11 Added in functions for realtime uA and um
void SetRealtimeuAScaledValue(int chan,int valin);
unsigned int GetRealtimeuAScaledValue(int chan);
void SetRealtimePreCompValue(unsigned int chan, int val);
int GetRealtimePreCompValue(unsigned int chan);
// PF Gen 2 - 09-Dec-11 EOM

void DCModeAuto(unsigned rpm); // PF Gen 2 - 15-May-12 Added in dc mode automatic

dcmodechecksstruct dcmodechecks;	// PF Gen 2 - 13-Dec-11 Added in new structure to store time and date for calibration process

// PF Gen 2 - 13-Dec-11 Added in for dc mode
unsigned int DCModePeakReset[2];
unsigned int DCModeCylinderComparison;
unsigned int DCModeInRangeOK[2];
unsigned int DCModeInRangeIdeal[2];
// PF Gen 2 - 13-Dec-11 EOM

//---------------------------------------------------------------------------
// InitAdc: 
//---------------------------------------------------------------------------
// This function initializes ADC to a known state.
//
void InitADC(void)
{
unsigned int i;

	EALLOW
	HISPCP = ADC_MODCLK;	//high speed clock = SYSCLKOUT/6 = 25MHz
	PCLKCR |= 0x08;	//enable the hspclk for the adc module
	EDIS

    // To powerup the ADC the ADCENCLK bit should be set first to enable
    // clocks, followed by powering up the bandgap and reference circuitry.
    // After a 5ms delay the rest of the ADC can be powered up. After ADC
    // powerup, another 20us delay is required before performing the first
    // ADC conversion
	adcregs.ADCTRL3.bit.ADCBGRFDN = 0x3;	// Power up bandgap/reference circuitry
	timers.general = 2;
	while(timers.general != 0) settings.watchdog = 1;		//wait here for at least 5ms
	adcregs.ADCTRL3.bit.ADCPWDN = 1;		// Power up rest of ADC
	timers.general = 2;
	while(timers.general != 0) settings.watchdog = 1;		//wait here for 1 to 2ms	
	
   adcregs.ADCTRL1.bit.ACQ_PS = ADC_SHCLK;
   adcregs.ADCTRL3.bit.ADCCLKPS = ADC_CKPS;     
   adcregs.ADCTRL1.bit.SEQ_CASC = 1;        // 1  Cascaded mode
   adcregs.ADCCHSELSEQ1.bit.CONV00 =  0;
   adcregs.ADCCHSELSEQ1.bit.CONV01 =  1;
   adcregs.ADCCHSELSEQ1.bit.CONV02 =  2;
   adcregs.ADCCHSELSEQ1.bit.CONV03 =  3;
	adcregs.ADCCHSELSEQ2.bit.CONV04 = 4;
	adcregs.ADCCHSELSEQ2.bit.CONV05 = 5;
	adcregs.ADCCHSELSEQ2.bit.CONV06 = 6;
	adcregs.ADCCHSELSEQ2.bit.CONV07 = 7;   
	adcregs.ADCCHSELSEQ3.bit.CONV08 = 8;
	adcregs.ADCCHSELSEQ3.bit.CONV09 = 9;
	adcregs.ADCCHSELSEQ3.bit.CONV10 = 10;
	adcregs.ADCCHSELSEQ3.bit.CONV11 = 11;   
	adcregs.ADCCHSELSEQ4.bit.CONV12 = 12;
	adcregs.ADCCHSELSEQ4.bit.CONV13 = 13;
	adcregs.ADCCHSELSEQ4.bit.CONV14 = 14;
	adcregs.ADCCHSELSEQ4.bit.CONV15 = 15;   	
   
   adcregs.ADCMAXCONV.all = 15;			//do 1 conversion on channel all 16 channels

   adcregs.ADCTRL2.bit.INT_ENA_SEQ1 = 1;	//enable the interrupt for sequence 1
   adcregs.ADCTRL1.bit.CONT_RUN = 1;		// Setup continuous run	
   
   // Start SEQ1
	adcregs.ADCTRL2.bit.RST_SEQ1 = 1;
	adcregs.ADCTRL2.bit.SOC_SEQ1 = 1;		//go go go....
	
	for(i=0;i<MAX_NUM_CHANNELS_SPU;i++)
	{
		inputs.rawresults.chan[i] = 4095;
		adcdata.previous.chan[i] = 0;
		adcdata.previous.range[i] = 800;		//init to 800 counts this is near 4mA, do this as we are filtering immediately when looking for oor
		
		adcdata.ready[i] = TRUE;
		inputs.flags.chan[i] = NOTFOUND;	//clear flag
		timers.chantimeout[i] = 1000;		//set to 5 seconds	(5ms timer)
		timers.chanwait[i] = 0;

		inputs.rawresults.rpm[i] = 0;		//set to zero if the count is greater than limit
		
		inputs.rawresults.counterA[i] = MAXADC_RPMPULSECOUNT;
		inputs.rawresults.counterB[i] = MAXADC_RPMPULSECOUNT;
		inputs.flags.newrpm[i] = FALSE;
		rpmdata.stable[i] = FALSE;			//set flag to false set to true once rpm is stable
	}

	// inputs.flags.calnow = FALSE; // PF Gen 2 - 13-Dec-11 no longer used

	counter = 0;
	adcdata.flag = 0;
	rpmdata.previouscount = 0;
	rpmdata.sampleperiod = 0;
	rpmdata.period = 0;

	settings.dcmode = 0;		//clear the dc mode flag (set from modbus)
	settings.dcpause = FALSE;		//AJB 19-Aug-10 clear the pause flag (set from modbus)
	settings.anadebug.enb = 0;		//debug mode set off on startup
	settings.anadebug.chan = 0;		//channel set to 0 on startup

	motion.calerror = FALSE;
	motion.forwardasternflag = UNKNOWN_DIR;
	motion.counter = 0;
	motion.ready = FALSE;
	motion.recalnow = FALSE;
	motion.recheckdir = FALSE;
	timers.analogoor = (20*SECS_TO_MS_MULTIPLIER);	//initial delay to stop errors on start up

	slowdownblipstate = SLOWDOWN_OP_OK;

	// rtcbat.alarms.low = 0; // PF Gen 2 - 05-Mar-12 Removed so rtc low battery alarm clears if issue on power up
	
	// AJB 15-Feb-10 Function to set scaling
	SetProximityScalingValue();		//setup the scaling factor for proximityscaling()

}	


//Set up the values from the slave to unset values (32767)
//This will be interpreted by the master and the values will not be updated on the master
//until they are set
void SlaveDefaultNotSet(void)
{
int i;
	for(i=0;i<MAX_NUM_CHANNELS_SPU;i++)
	{
		sensor[i].initialval = DEFAULT_NOTSET_VAL;	//set to 32767
		sensor[i].immediateval = DEFAULT_NOTSET_VAL;	//AJB 19-Aug-10  set to 32767
	}

}

/*-----------------------------------------------------------------------------
* interrupt void IntADCIsr(void)
*----------------------------------------------------------------------------*/
interrupt void IntADCIsr(void)
{
unsigned int lowthres;
unsigned int hithres;
volatile unsigned long *ptr; // AJB 15-Feb-10 Added pointer to speed up routine
	//test pin high
	//GPIO4 = 1;
	//extern cregister volatile uint IER;
	//IER |= Int1_IER;         /* Only enable INT1 probably already enabled!*/
	//delay, necessary as it takes one ADCCLK period to propagate, see arrata datasheet
	//as it takes about 8 SYSCLKOUT cycles to get into this interrupt the delay can be reduced
	// Software wait = (HISPCP*2) * (ADCCLKPS*2) * (CPS+1) cycles
	//               = (3*2)      * (1*2)        * (0+1)   = 12 c	
	
	adcregs.ADCST.all = 0x10;	//clear the interrupt
	
	adcdata.current.prt 	= adcregs.ADCRESULT14;
	adcdata.current.vin 	= adcregs.ADCRESULT15;	//get last channel relating to the voltage input

	//AJB 19-Aug-10 added blip control to enable or disable the blipping of the slow down output
	if(allsensors.bits.slowdowncntrl == 0)	//set to 1 to disable the blipping
	{
		//deal with the slow down output, this will blip the output for 234us on, every 0.5seconds (approx)
		settings.slowdowncounter--;
		if(settings.slowdowncounter > SLOW_DOWN_ON_PERIOD) slowdownblipstate = SLOWDOWN_OP_OK;
		else slowdownblipstate = SLOWDOWN_OP_FAULT;
	}

	if(settings.slowdowncounter == 0) settings.slowdowncounter = SLOW_DOWN_START_COUNT;
	if((settings.slowdowncondition ^ slowdownblipstate) != 0) alarmOP3 = SLOWDOWN_OP_FAULT;
	else alarmOP3 = SLOWDOWN_OP_OK; 

	lowthres = config.inputs.chanlowthreshold << 4;
	hithres = config.inputs.chanhighthreshold << 4;

	// AJB 15-Feb-10
	// change for more efficient method of incrementing the counters
	// increment the free running count per channel 
	// use ptr increments as this is less code and therefore quicker in the interrupt
	ptr = inputs.rawresults.counterA;
	*ptr +=1; ptr++;
	*ptr +=1; ptr++;
	*ptr +=1; ptr++;
	*ptr +=1; ptr++;
	*ptr +=1; ptr++;
	*ptr +=1; ptr++;
	*ptr +=1; ptr++;
	*ptr +=1; ptr++;
	*ptr +=1; ptr++;
	*ptr +=1; ptr++;
	*ptr +=1; ptr++;
	*ptr +=1; ptr++;
	*ptr +=1; ptr++;
	*ptr +=1;

	// AJB 15-Feb-10 EOM

	loopcheck.value++;		//remember as this is incrementing a float nubmer it will call a subby
	
	if(inputs.flags.chan[0] == NOTFOUND)	//all number are 16 bit left justified
	{
		if(adcregs.ADCRESULT7 > lowthres)	//chanthreshold is 16bit left justified
		{
			if(adcregs.ADCRESULT7 > adcdata.previous.chan[0]) adcdata.previous.chan[0] = adcregs.ADCRESULT7;
			else if(adcregs.ADCRESULT7 < adcdata.previous.chan[0] - hithres)
			{
				inputs.flags.chan[0] = FOUND;		//peak detected
				inputs.rawresults.counterB[0] = inputs.rawresults.counterA[0];	//transfer the count when channel peak detected
				inputs.rawresults.counterA[0] = 0;	//clear for next time
				inputs.flags.newrpm[0] = TRUE;
			}
		}
	}

	if(inputs.flags.chan[1] == NOTFOUND)
	{
		if(adcregs.ADCRESULT6 > lowthres)	//chanthreshold is 16bit left justified
		{
			if(adcregs.ADCRESULT6 > adcdata.previous.chan[1]) adcdata.previous.chan[1] = adcregs.ADCRESULT6;
			else if(adcregs.ADCRESULT6 < adcdata.previous.chan[1] - hithres)
			{
				inputs.flags.chan[1] = FOUND;		//peak detected
				inputs.rawresults.counterB[1] = inputs.rawresults.counterA[1];	//transfer the count when channel peak detected
				inputs.rawresults.counterA[1] = 0;	//clear for next time
				inputs.flags.newrpm[1] = TRUE;
			}
		}
	}
	if(inputs.flags.chan[2] == NOTFOUND)
	{
		if(adcregs.ADCRESULT5 > lowthres)	//chanthreshold is 16bit left justified
		{
			if(adcregs.ADCRESULT5> adcdata.previous.chan[2]) adcdata.previous.chan[2] = adcregs.ADCRESULT5;
			else if(adcregs.ADCRESULT5< adcdata.previous.chan[2] - hithres)
			{
				inputs.flags.chan[2] = FOUND;		//peak detected
			 	inputs.rawresults.counterB[2] = inputs.rawresults.counterA[2];	//transfer the count when channel peak detected
				inputs.rawresults.counterA[2] = 0;	//clear for next time
				inputs.flags.newrpm[2] = TRUE;
			}
		}
	}	
	if(inputs.flags.chan[3] == NOTFOUND)
	{
		if(adcregs.ADCRESULT4 > lowthres)	//chanthreshold is 16bit left justified
		{
			if(adcregs.ADCRESULT4 > adcdata.previous.chan[3]) adcdata.previous.chan[3] = adcregs.ADCRESULT4;
			else if(adcregs.ADCRESULT4 < adcdata.previous.chan[3] - hithres)
			{
				inputs.flags.chan[3] = FOUND;		//peak detected
			 	inputs.rawresults.counterB[3] = inputs.rawresults.counterA[3];	//transfer the count when channel peak detected
				inputs.rawresults.counterA[3] = 0;	//clear for next time
				inputs.flags.newrpm[3] = TRUE;
			}
		}
	}	
	if(inputs.flags.chan[4] == NOTFOUND)
	{
		if(adcregs.ADCRESULT3 > lowthres)	//chanthreshold is 16bit left justified
		{
			if(adcregs.ADCRESULT3 > adcdata.previous.chan[4]) adcdata.previous.chan[4] = adcregs.ADCRESULT3;
			else if(adcregs.ADCRESULT3 < adcdata.previous.chan[4] - hithres)
			{
				inputs.flags.chan[4] = FOUND;		//peak detected
			 	inputs.rawresults.counterB[4] = inputs.rawresults.counterA[4];	//transfer the count when channel peak detected
				inputs.rawresults.counterA[4] = 0;	//clear for next time
				inputs.flags.newrpm[4] = TRUE;
			}
		}
	}	
	if(inputs.flags.chan[5] == NOTFOUND)
	{
		if(adcregs.ADCRESULT2 > lowthres)	//chanthreshold is 16bit left justified
		{
			if(adcregs.ADCRESULT2 > adcdata.previous.chan[5]) adcdata.previous.chan[5] = adcregs.ADCRESULT2;
			else if(adcregs.ADCRESULT2 < adcdata.previous.chan[5] - hithres)
			{
				inputs.flags.chan[5] = FOUND;		//peak detected
			 	inputs.rawresults.counterB[5] = inputs.rawresults.counterA[5];	//transfer the count when channel peak detected
				inputs.rawresults.counterA[5] = 0;	//clear for next time
				inputs.flags.newrpm[5] = TRUE;
			}
		}
	}	
	if(inputs.flags.chan[6] == NOTFOUND)
	{
		if(adcregs.ADCRESULT1 > lowthres)	//chanthreshold is 16bit left justified
		{
			if(adcregs.ADCRESULT1 > adcdata.previous.chan[6]) adcdata.previous.chan[6] = adcregs.ADCRESULT1;
			else if(adcregs.ADCRESULT1 < adcdata.previous.chan[6] - hithres)
			{
				inputs.flags.chan[6] = FOUND;		//peak detected
			 	inputs.rawresults.counterB[6] = inputs.rawresults.counterA[6];	//transfer the count when channel peak detected
				inputs.rawresults.counterA[6] = 0;	//clear for next time
				inputs.flags.newrpm[6] = TRUE;
			}
		}
	}	
	if(inputs.flags.chan[7] == NOTFOUND)
	{
		if(adcregs.ADCRESULT0 > lowthres)	//chanthreshold is 16bit left justified
		{
			if(adcregs.ADCRESULT0 > adcdata.previous.chan[7]) adcdata.previous.chan[7] = adcregs.ADCRESULT0;
			else if(adcregs.ADCRESULT0 < adcdata.previous.chan[7] - hithres)
			{
				inputs.flags.chan[7] = FOUND;		//peak detected
			 	inputs.rawresults.counterB[7] = inputs.rawresults.counterA[7];	//transfer the count when channel peak detected
				inputs.rawresults.counterA[7] = 0;	//clear for next time
				inputs.flags.newrpm[7] = TRUE;
			}
		}
	}	
	if(inputs.flags.chan[8] == NOTFOUND)
	{
		if(adcregs.ADCRESULT8 > lowthres)	//chanthreshold is 16bit left justified
		{
			if(adcregs.ADCRESULT8 > adcdata.previous.chan[8]) adcdata.previous.chan[8] = adcregs.ADCRESULT8;
			else if(adcregs.ADCRESULT8 < adcdata.previous.chan[8] - hithres)
			{
				inputs.flags.chan[8] = FOUND;		//peak detected
			 	inputs.rawresults.counterB[8] = inputs.rawresults.counterA[8];	//transfer the count when channel peak detected
				inputs.rawresults.counterA[8] = 0;	//clear for next time
				inputs.flags.newrpm[8] = TRUE;
			}
		}
	}	
	if(inputs.flags.chan[9] == NOTFOUND)
	{
		if(adcregs.ADCRESULT9 > lowthres)	//chanthreshold is 16bit left justified
		{
			if(adcregs.ADCRESULT9 > adcdata.previous.chan[9]) adcdata.previous.chan[9] = adcregs.ADCRESULT9;
			else if(adcregs.ADCRESULT9 < adcdata.previous.chan[9] - hithres)
			{
				inputs.flags.chan[9] = FOUND;		//peak detected
			 	inputs.rawresults.counterB[9] = inputs.rawresults.counterA[9];	//transfer the count when channel peak detected
				inputs.rawresults.counterA[9] = 0;	//clear for next time
				inputs.flags.newrpm[9] = TRUE;
			}
		}
	}	
	if(inputs.flags.chan[10] == NOTFOUND)
	{
		if(adcregs.ADCRESULT10 > lowthres)	//chanthreshold is 16bit left justified
		{
			if(adcregs.ADCRESULT10 > adcdata.previous.chan[10]) adcdata.previous.chan[10] = adcregs.ADCRESULT10;
			else if(adcregs.ADCRESULT10 < adcdata.previous.chan[10] - hithres)
			{
				inputs.flags.chan[10] = FOUND;		//peak detected
			 	inputs.rawresults.counterB[10] = inputs.rawresults.counterA[10];	//transfer the count when channel peak detected
				inputs.rawresults.counterA[10] = 0;	//clear for next time
				inputs.flags.newrpm[10] = TRUE;
			}
		}
	}	
	if(inputs.flags.chan[11] == NOTFOUND)
	{
		if(adcregs.ADCRESULT11 > lowthres)	//chanthreshold is 16bit left justified
		{
			if(adcregs.ADCRESULT11 > adcdata.previous.chan[11]) adcdata.previous.chan[11] = adcregs.ADCRESULT11;
			else if(adcregs.ADCRESULT11 < adcdata.previous.chan[11] - hithres)
			{
				inputs.flags.chan[11] = FOUND;		//peak detected
			 	inputs.rawresults.counterB[11] = inputs.rawresults.counterA[11];	//transfer the count when channel peak detected
				inputs.rawresults.counterA[11] = 0;	//clear for next time
				inputs.flags.newrpm[11] = TRUE;
			}
		}
	}	
	if(inputs.flags.chan[12] == NOTFOUND)
	{
		if(adcregs.ADCRESULT12 > lowthres)	//chanthreshold is 16bit left justified
		{
			if(adcregs.ADCRESULT12 > adcdata.previous.chan[12]) adcdata.previous.chan[12] = adcregs.ADCRESULT12;
			else if(adcregs.ADCRESULT12 < adcdata.previous.chan[12] - hithres)
			{
				inputs.flags.chan[12] = FOUND;		//peak detected
			 	inputs.rawresults.counterB[12] = inputs.rawresults.counterA[12];	//transfer the count when channel peak detected
				inputs.rawresults.counterA[12] = 0;	//clear for next time
				inputs.flags.newrpm[12] = TRUE;
			}
		}
	}	
	if(inputs.flags.chan[13] == NOTFOUND)
	{
		if(adcregs.ADCRESULT13 > lowthres)	//chanthreshold is 16bit left justified
		{
			if(adcregs.ADCRESULT13 > adcdata.previous.chan[13]) adcdata.previous.chan[13] = adcregs.ADCRESULT13;
			else if(adcregs.ADCRESULT13 < adcdata.previous.chan[13] - hithres)
			{
				inputs.flags.chan[13] = FOUND;		//peak detected
			 	inputs.rawresults.counterB[13] = inputs.rawresults.counterA[13];	//transfer the count when channel peak detected
				inputs.rawresults.counterA[13] = 0;	//clear for next time
				inputs.flags.newrpm[13] = TRUE;
			}
		}
	}	

	//remember data is left justified
	inputs.flags.ready = 1;	//set on new collection
    PIEACK |= 1;	/* Acknowledge PIE group 1 int */
}

//Decide if the unit is a slave or master
//If slave use the scaling factor out of safe2
//must be done after reading the status of the mode switch SW1, for master/slave
void InitScalingFactor(void)
{
	if(settings.mastermode == FALSE)
	{
		//copy after reading from the safe2 on eeprom
		config.inputs.sensorscalingfactor = safe2.inputs.sensorscalingfactor;
		if(safe1.inputs.chanlowthreshold >= 4095)
		{
			//reset values if out of range (possible from gen 1 as this was stored left justified)
			config.inputs.chanlowthreshold =  safe1.inputs.chanlowthreshold = 1000;
			config.inputs.chanhighthreshold = safe1.inputs.chanhighthreshold = 500;
		}
		config.inputs.chanlowthreshold =  safe1.inputs.chanlowthreshold;
		config.inputs.chanhighthreshold = safe1.inputs.chanhighthreshold;
	}
	SetProximityScalingValue();			// AJB 15-Feb-10 Calculate the proximity scaling factor
}


//Read the values directly from the adc, this will scale the values and place them in the structure for that sensor
void DCMode(unsigned int chan)
{
unsigned int i;
int temp;
volatile unsigned int *ptr;
float val1;
// AJB 15-Feb-10 Removed float scalingfactor and associated calculation as relaced with proximityscalingfactor
// which is precalculated to speed up operation

	//collect the data in dc mode on a timer.  do not do this all the time otherwise the processor has no time to do anything else!

	if(timers.dcmode == 0)
    {
	    ptr = ADCChanPtr(chan);
		temp = *ptr >> 4;
		inputs.flags.ready = 0;
		for(i=0;i<100;i++)	//average 100 samples
		{
			while(inputs.flags.ready == 0) settings.watchdog = 1;
			temp = temp + (((int)(*ptr >>4) - temp)/4);
			inputs.flags.ready = 0;
		}
		//store the peak value found when rotating at dc speeds
		if(temp > inputs.rawresults.current[chan]) inputs.rawresults.current[chan] = temp;	//store the raw current value (used for dc level peak detect)
		val1 = ((float)temp) * inputs.scale.chan[chan];
		//value at this point scaled 0 to 4095 for 0 to 20mA
		val1 -= MA_SCALED_OFFSET;			//subtract the fixed value relating to 14mA		//(float)inputs.scale.peakoffset[chan];
		inputs.rawresults.chan[chan] = (unsigned int)val1;
		// AJB 15-Feb-10 Now using proximityscalingfactor instead of scalingfactor
		val1 *= proximityscalingfactor;						//apply scaling to get into microns
		SetScaledValue(chan,(int)val1);		//apply scaling
		//reset the timer if on the last channel on the spu
		//AJB 26-Aug-10 changed dcmode timer to 2 (for max 10ms scan rate) - make sure we dont miss the peak!
		if(chan == 13) timers.dcmode = 2;	//set to 10ms scan rate
	}

}

void DCModeInit(void)
{
unsigned int i;
status1struct *ptr; //SLD Gen 2 11-Sep-12 Added

	DebugStringOut("Code - DCModeInit\r\n"); // PF DEBUG
	
	settings.dcmode = TRUE;	//set into dc mode
	settings.dcpause = 0;	//AJB 19-Aug-10		added pause mode
	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		dcmodeprev[i] = -5000;	// PF Gen 2 - 08-Dec-11 Changed to -5000 to be consistant with elsewhere
		SetScaledValue(i,-5000); // PF Gen 2 - 08-Dec-11 Added in init of values on DC mode
		
		ptr = Status1Flags(i); //SLD Gen 2 11-Sep-12 Added
		ptr->dcmode = 0; //SLD Gen 2 11-Sep-12 Added. Reset Peak Cal flag
	}
	//clear the stored values so the highest point can be detected
	for(i=0;i<MAX_NUM_SINGLE_SPU;i++) inputs.rawresults.current[i] = 0;	//clear ready for dc peak detection
	//AJB 26-Aug-10 added dcmode timer to zero
	timers.dcmode = 0;		//set to zero so on entering dc mode value is immediately set

	// PF Gen 2 - 16-Dec-11 dc mode checks/individual peak resets
	DCModePeakReset[0] = 0;
	DCModePeakReset[1] = 0;
	DCModeCylinderComparison = 0;
	DCModeInRangeOK[0] = 0;
	DCModeInRangeOK[1] = 0;
	DCModeInRangeIdeal[0] = 0;
	DCModeInRangeIdeal[1] = 0;
	// PF Gen 2 - 16-Dec-11 EOM

	timers.dcmodestayalive = DCMODESTAYALIVE; // PF Gen 2 - 04-Jan-12 added in initialisation of dc mode stay alive

}

//clear after dropping out of dc mode
void DCModeClear(void)
{

	DebugStringOut("Code - DCModeClear\r\n"); // PF DEBUG

	// PF Gen 2 - 04-Jan-12 Changed routine to just perform neccesary dc mode clear
	/*
	unsigned int i;
	if(settings.dcmode == 0)
	{
		for(i=0;i<allsensors.numsensors;i++)
		{
			//must save as offset otherwise when next pulse is seen it will not start from correct value
			//the filter will then take a long time to recover back
			SetScaledValue(i,offsetA.val[i]);		//apply scaling reset to zero (or whatever offset is)
		}
		
		settings.dcpeakhold = 0;
	}
	*/
	settings.dcmode = 0;
	settings.dcpeakhold = 0;
	timers.dcmodestayalive = 0; //SLD Gen 2 10-Sep-2012 Added to clear stay alive timer if DCModeClear is called from ModBus

}

//Storage and peak mode functions relating to the dcmode
void DCModeCalcs(void)
{
unsigned int i;
int val1;

	if(settings.dcmode == TRUE)		//store the offset if we are in dcmode
	{
		for(i=0;i<allsensors.numsensors;i++)
		{
			val1 = GetScaledValue(i);
			DCModePeakHold(i,val1);
			//storing the value which should be peak held and stored in dcmodeprevious local stores
			DCModeStoreVal(i,dcmodeprev[i]);		//store value if necessary (this is checked within the function)
		}
		
	}
	
}


//check if in dcmode - and whether to store the value to nvmem
//this will store the value if the bit is set from the modbus for dcmode enabled within the status structure
void DCModeStoreVal(unsigned int chan, int value)
{
status1struct *ptr;
// PF Gen 2 - 07-Mar-12 Old event system backend removal - char eventstring[EVENTMSG_LEN_INBYTES_PART2];
// PF Gen 2 - 07-Mar-12 Old event system backend removal - int temp;
// PF Gen 2 - 07-Mar-12 Old event system backend removal - char chanstr[4];	//3 character for the channel number e.g. 1A (followed by a null)

	if(settings.dcmode == TRUE)		//store the offset if we are in dcmode
	{
		ptr = Status1Flags(chan);
		// PF Gen 2 - 12-Jan-12 Added in ptr->excludeslowroll for excluding channels from slowroll
		if(ptr->enabled == TRUE && ptr->dcmode == TRUE && settings.dcpeakhold == TRUE && ptr->excludeslowroll == FALSE)	//check if the sensor is enabled, is so store the precomp value
																	//should be in dc mode to store the offset
		{
			offsetA.val[chan] = value;
			sprintf(stringbuffer,"Peak Store:%u,%d\r\n",chan,value); DebugStringOut(stringbuffer);	// PF DEBUG
			//store the offset to non volatile memory (this is done as a function call for all channels 
			WriteOffsetAtoNVMEM(chan);
			settings.sdcardupdate = SDOFFSETSUPDATE;	//checked in main loop and updated on sd card

			// PF Gen 2 - 07-Mar-12 Old event system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
			// PF Gen 2 - 07-Mar-12 Old event system backend removal - temp = (int)value;
			// PF Gen 2 - 07-Mar-12 Old event system backend removal - InputNumtoString(chanstr,chan);
			// PF Gen 2 - 07-Mar-12 Old event system backend removal - sprintf(eventstring,"Ch%s, %d microns",chanstr,temp);
			// PF Gen 2 - 07-Mar-12 Old event system backend removal - LogEvent(OFFSET_ADJUST,HIGH_PRIORITY,NO,eventstring);
			SetBitEvent(OFFSET_ADJUST_EVENT + chan); // PF Gen 2 - 07-Mar-12 Old alarm system backend removal - Offset adjust

			ptr->dcmode = 0;	//reset once stored the dc value otherwise we will endlessly write to sd!!
			WriteSensorStatustoNVMEM(chan); //SLD Gen 2 11-Sep-12 Added. Update dcmode in NVMEM
			//settings.sdcardupdate = SDSTATUSUPDATE; //SLD Gen 2 11-Sep-12 Added. Update dcmode on SD Card //12-10-12 FF: Software has sent the status update, does not need here anymore
			
			dcmodeprev[chan] = offsetA.val[chan];
			SetPreCompValue(chan,0);		//set to zero once value is set
			sensor[chan].postcomp = 0;		//clear the postcomp values after setting dc offsets
			sensor[chan].postfilter = 0;	//clear the postcomp values after setting dc offsets
			sensor[chan].endresult = 0;		//clear the end result value returned to PC etc
			damagemonignore[chan] = 3; 		//ignore after changing the offset
		}
	}
}


//if the peak hold mode is enabled, the reported value will be held.
//when off the value is passed through
//dcmodeprev is a local variable (see top of file)
//display with the offset applied
void DCModePeakHold(unsigned int chan, int value)
{
int temp;

	//AJB 19-Aug-10
	//added pause test
	if(settings.dcmode == TRUE && settings.dcpause == FALSE)		//store the offset if we are in dcmode
	{
		if(settings.dcpeakhold == TRUE)
		{
			if(value > dcmodeprev[chan]) // PF Gen 2 - 06-Dec-11 changed to > instead of >=
			{
				dcmodeprev[chan] = value;		//store the previous value for next time
				temp = value - offsetA.val[chan];
				SetPreCompValue(chan,temp);		//display with offset applied
				//SetRealtimePreCompValue(chan,temp); //SLD Gen 2 - 10-Sep-12 Move outside of peak hold
				SetuAScaledValue(chan,value);
				sprintf(stringbuffer,"Ch-pk:%u,%d\r\n",chan,value); DebugStringOut(stringbuffer);	// PF DEBUG
			}
			// PF Gen 2 - 13-Dec-11 added in peak reset code
			if (PeakResetBitStatus(chan) == 1) { // Reset individual peak resets
				dcmodeprev[chan] = -5000;
				SetScaledValue(chan,-5000);
				sprintf(stringbuffer,"Ch:%u pk-reset\r\n",chan); DebugStringOut(stringbuffer);	// PF DEBUG
				PeakResetBitClear(chan);
			}
			// PF Gen 2 - 13-Dec-11 EOM
		}
		else
		{
			//apply offset to the value and display (i.e. place in precomp stores for pc use
			temp = value - offsetA.val[chan];
			SetPreCompValue(chan,temp);
			SetRealtimePreCompValue(chan,temp);
			SetuAScaledValue(chan,value);
			dcmodeprev[chan] = -5000;			//clear the previous value	i.e.set low
		}
		// PF Gen 2 - 09-Dec-11 added for realtime uA during peak hold
		temp = value - offsetA.val[chan];
		SetRealtimeuAScaledValue(chan,value);
		// PF Gen 2 - 09-Dec-11 EOM
		SetRealtimePreCompValue(chan,temp); //SLD Gen 2 - 10-Sep-12 Move outside of peak hold so that the real time always updates

	}
}

//Convert the microns values into uA for the peaks detected in normal mode
void PeakConversion(void)
{
int i;
int value;
	
		for(i=0;i<allsensors.numsensors;i++)
		{
			value = GetScaledValue(i);
			SetuAScaledValue(i,value);
			SetRealtimeuAScaledValue(i,value); // PF Gen 2 - 01-May-12 so actual uA is updated all the time
			SetRealtimePreCompValue(i, sensor[i].precomp); // PF Gen 2 - 17-May-12 added in realtime um
		}
}

//Scale up to MAX_NUM_CHANNELS
//Read the analogue PRT channels and process
void AnalogueInputScaleAllChannels(void)
{
// unsigned int i; // PF Gen 2 - 07-Dec-11 Removed i as no longer used
unsigned int rpm;

	// PF Gen 2 - 07-Dec-11 Only perform DC channel once per cycle of main loop
	rpm = GetModalRPM(0);
	DCModeAuto(rpm);
	if(settings.dcmode == TRUE && rpm < MINIMUM_RPM)		//check dc levels and not peaks
	{
		if (dcChan >= allsensors.numsensorsspu1) dcChan=0;
		DCMode(dcChan);
		dcChan++;
	}
	/* orignal DC slow roll code
	for(i=0;i<allsensors.numsensorsspu1;i++)
	{
		// sprintf(stringbuffer,"%u,",i); DebugStringOut(stringbuffer);
		rpm = GetModalRPM(0);
		if(settings.dcmode == TRUE && rpm < MINIMUM_RPM)		//check dc levels and not peaks
		{
			DCMode(i);
		}
	}
	*/
	// PF Gen 2 - 07-Dec-11 EOM

	// PF Gen 2 - 04-Jan-12 exit dc mode if no interaction with registers for x seconds on master
	if (settings.mastermode == TRUE && settings.dcmode == TRUE && timers.dcmodestayalive == 0) {
		DCModeClear();
	}
	// PF Gen 2 - 04-Jan-12 EOM

	if(settings.anadebug.enb == FALSE && settings.dcmode == FALSE)		//check if the debug mode is enabled
	{
		PulseCounterCheck();
	}

	//ReadPRT();
	GetVoltageStatus();

	// PF 14-Oct-09 Added call to readanalog();
	ReadAnalog();
	
	//uA stuff done within the dcmode calcs when in dc mode
	//scale back to uA for passing to the pc.  This is done for the maximum number of sensors installed on the system
	//this will include both spu's
	if(settings.dcmode == TRUE)	DCModeCalcs();
	DCModeChecks();

	//convert for all channels (up to 28)
	//only convert the values when in normal mode not dc mode
	if(settings.dcmode == FALSE) PeakConversion();
	
	// PF 01-Oct-09 Added && settings.anadebug.enb == FALSE to allow disana to work
	if(settings.mastermode == TRUE && settings.anadebug.enb == FALSE)
	{
		CheckForwardAstern();
	}
	else motion.forwardasternflag = FORWARD;	//always set as forward for the slave system
}


// AJB 15-Feb-10
// Set this value from the stored configuration value config value is in uA per mm
// e.g. 3300 = 3300uA/mm
// Set this so it does not have to be calculated every time we enter the proximityscaling function saved as a float
void SetProximityScalingValue(void)
{
	proximityscalingfactor = (1/((float)config.inputs.sensorscalingfactor*COUNTS_PER_MA))*1000000;
}
// AJB 15-Feb-10 EOM

//For GENV1.5 Scale data.  This scales the data into microns
//No other processing carried out on data at this point
//Essentially convert raw count from ADC into microns
//Function entered with the channel number to be processed
//No value returned
void ProximityScaling(unsigned int chan)
{
float val1;
// AJB 15-Feb-10 Removed float scalingfactor as replaced by Proximityscalingfactor global variable
float temp;
unsigned int chanval;
int oddeven;
int numcyl;
status3struct *flagptr;

	//scaling takes the Proximityscalingfactor which is x mA/mm e.g. 3970 = 3.97mA per mm
	//and multiples by counts per mA and inverts to get microns per count
	//note value is multiplied by 1000000 to get in microns

	// AJB 15-Feb-10 Removed scalingfactor calculation

	if(settings.dcmode == FALSE)
	{
		if(adcdata.ready[chan] == TRUE)
		{
			//do not process a channel if the rpm is not stable see utils.c for rpm
			//make sure channel is less than the number of channels on spu
			if(sensor[chan].status1.enabled == TRUE && chan < allsensors.numsensorsspu1)	//check channel is enabled and the rpm is currently stable
			{
				oddeven = chan % 2;	//check if on odd or even channel
				if(allsensors.enginedircal == TRUE)	//set once calibrated
				{

					if(oddeven == 0)
					{
						if(motion.ready == FALSE)
						{
							//only check two channels to determine direction (these should be on separate cylinders)
							motion.order[motion.counter] = chan;	//store the channel coming in
							motion.counter++;				
							//only need to check two channels to determine order
							if(motion.counter >= 2) motion.ready = TRUE;	//set flag once we have the order currently
						}
					}
				}
				else	//calibrate and set the order
				{
					numcyl = allsensors.numsensorsspu1/2;
					if(oddeven == 0)
					{
						//store the order for all cylinders as they occur
						if(motion.counter < numcyl)
						{
							adcdata.direction[motion.counter] = chan;		//used to cal to direction
							motion.counter++;	//increment until all channels seen for order
						}
					}
				}
				//AJB 19-Aug-10	 - code moved out of the stable check so we can produce the rpm for the new man checks wihtout the stability code effecting the timing
				inputs.rawresults.current[chan] = adcdata.previous.chan[chan] >> 4;			//store the raw current value (used for peak full-speed peak detect)
				val1 = ((float)(adcdata.previous.chan[chan]>>4)) * inputs.scale.chan[chan];	//scale value 0 to 4095 for 0 to 20mA(may actually be > 4095, depending on where 18mA cal point is)
				val1 -= MA_SCALED_OFFSET;										//subtract the default offset for 14mA from the new value (after scaling)
				//value has already been scaled 0 to 4095 and therefore can take of 2457, this equal 12mAs
				//the value now in val1 is the mA change from 12mA this can be scaled as a micron value
				
				//AJB 15-Feb-10 Now using proximityscalingfactor instead of scalingfactor
				temp = val1 * proximityscalingfactor;						//apply scaling to get into microns
				flagptr = Status3Flags(chan);			//get ptr to status3 for channel i
				//new code to produce the result independent of the rpmstable check
				if(flagptr->rpmoor == 0) SetImmScaledValue(chan,(int)temp);		//apply immediate scaling
				//AJB 19-Aug-10 EOM

				if(rpmdata.stable[chan] == TRUE)
				{

					if(settings.anadebug.enb == FALSE)		//check if the debug mode is enabled
					{
						if(flagptr->rpmoor == 0) SetScaledValue(chan,(int)temp);		//apply scaling
					}
					SetNoPulseFlag(chan,0);		//clear the no pulse flag, this is not a global so use function call

				}
			}
			//values are trapped below 20RPM and held at last good value above this limit
			
			//GEN1.5 altered the method for determination of missing pulse
			//Now looking for a count - this means we can determine a missing pulse on all channels including chan 1
			adcdata.previous.chan[chan] = 0;
			adcdata.ready[chan] = FALSE;
			adcdata.count[chan]++;		//everytime a pulse is seen increment a count
		}
		else
		{
			//detect the channel value less than the lowerthreshold - this will reset so the next pulse can be detected
			
			chanval = *ADCChanPtr(chan);
			//once below the threshold reset to notfound
			if(chanval < (config.inputs.chanlowthreshold << 4))	//chanthreshold  lowthres is 16bit left justified
			{
				adcdata.ready[chan] = TRUE;
				inputs.flags.chan[chan] = NOTFOUND;	//clear flag
			}
		}
	}
	// PF Gen 2 - 14-May-12 Added in clear of flags in dc mode so rpm can be detected
	else { 
			chanval = *ADCChanPtr(chan);
			//once below the threshold reset to notfound
			if(chanval < (config.inputs.chanlowthreshold << 4))	//chanthreshold  lowthres is 16bit left justified
			{
				adcdata.ready[chan] = TRUE;
				inputs.flags.chan[chan] = NOTFOUND;	//clear flag
			}
	}
	// PF Gen 2 - 14-May-12 EOM
}

//store the scaled value this is used at PC end
//Pass in the micron value with the 14mA default offset, this can then be turned back into mA
//values are stored within the inputs structure
void SetuAScaledValue(int chan,int valin)
{
float uAval;
float scalingfactor;

	scalingfactor = (float)config.inputs.sensorscalingfactor/1000;	//turn scaling factor into uA per um
	//multiply to turn microns into uA
	uAval = valin * scalingfactor;
	uAval += FOURTEEN_MA_OFFSET_IN_UA;
	//store the value in uA
	inputs.amps.value[chan] = (unsigned int)uAval;
}

//return the scaled uA value for use at PC
unsigned int GetuASCaledValue(int chan)
{	return(inputs.amps.value[chan]);		}


//If the count remains at zero for a channel then flag an error
//This is checked against the sensors enabled on the SPU
//The count is increment on every revolution and looking for a count of 5 per channel 
void PulseCounterCheck(void)
{
unsigned int i;
unsigned int count;	
unsigned int check;
unsigned int sumcount;
status3struct *flagptr;

	count = 0;	//zero the count to begin
	sumcount = 0;
	//check the number of channels enabled, this will be used to determine the summed count from all channels

	for(i=0;i<allsensors.numsensorsspu1;i++)
	{
		// PF 11-Nov-09 added sumcount into sensor enabled conditional test
		if(GetSensorEnabled(i) == TRUE) {
			count++;
			sumcount += adcdata.count[i];
		}
	}

	check = count * NUM_COUNT_CHECK_PER_CHAN;		//setup the number to check for
	if(sumcount > check)		//check if count is > than limit
	{
		for(i=0;i<allsensors.numsensorsspu1;i++)
		{
			if(GetSensorEnabled(i) == TRUE)
			{
				if(adcdata.count[i] == 0)
				{
					flagptr = Status3Flags(i);
					//check if OOR, dont set missing pulse if out of range
					if(flagptr->low == FALSE && flagptr->high == FALSE)
					{
						SetNoPulseFlag(i,1);	//set the no pulse if we have not seen any pulses on this channel
					}
				}
			}
			else SetNoPulseFlag(i,0);	//clear the no pulse flag if chan is disabled
			adcdata.count[i] = 0;	//clear the count for next time
		}
	}
}

//Calculate the rpm per channel based on a count from the ADC interrupt
//The RPM is set to zero if the count has reached a value of greater than MAXADC_RPMPULSECOUNT
void PulseRPMCalc(void)
{
int i;
unsigned int * flagptr;
float tempcount;
float temprpm;
int chanfornewval;
int allzerorpmflag;
int rpmcleardown;

	chanfornewval = DEFAULT_NOT_USED_VAL;
	i = 0;
	while(i < allsensors.numsensorsspu1 && chanfornewval == DEFAULT_NOT_USED_VAL)
	{
		flagptr = (unsigned int*)Status3Flags(i);		//get ptr to status3 for channel
		//only check on enabled channels
		if(*flagptr == 0 && sensor[i].status1.enabled == TRUE) chanfornewval = i;
		i++;
	}

	if(chanfornewval == DEFAULT_NOT_USED_VAL)	//did not find a good channel on spu1, check from spu2 if using two spu's
	{

		if(allsensors.numsensorsspu2 != 0)
		{
			//use 2nd spu newval flag
			allsensors.flags.newval = allsensors.flags.newvalspu2;	//set newval flag based on 2nd spu value
			allsensors.flags.newvalspu2 = FALSE;					//clear flag from 2nd spu
		}
		else chanfornewval = 0;
	}


	for(i=0;i<allsensors.numsensorsspu1;i++)
	{
		rpmcleardown = FALSE;
		if(GetSensorEnabled(i) == TRUE)
		{
			if(inputs.rawresults.counterA[i] < MAXADC_RPMPULSECOUNT && inputs.rawresults.counterB[i] != 0 && inputs.rawresults.counterB[i] < MAXADC_RPMPULSECOUNT)
			{
				if(inputs.flags.newrpm[i] == TRUE)
				{

					//check if problem on first channel if so need to set newval flag from another channel
					//this only needs to be done once as if we are here and seen a newrpm we must have seen a pulse
					inputs.flags.newrpm[i] = FALSE;		//clear flag as when processing the new pulse

					if(inputs.flags.rpmstart[i] <3) inputs.flags.rpmstart[i]++;
					if(inputs.flags.rpmstart[i] >= 3)
					{
						tempcount = (float)inputs.rawresults.counterB[i];
						temprpm = (1/(tempcount * ADCINTERRUPTINTERVAL))*60;	//convert to rpm
						temprpm = FloattoIntRound(temprpm);		//keep accuracy
						if((unsigned int)temprpm >= (inputs.rawresults.rpm[i]-2) && (unsigned int)temprpm <= (inputs.rawresults.rpm[i]+2))
						{
							//set flag to say rpm is stable and ok for use
							if(rpmdata.stable[i] == FALSE)
							{
							}
							if(inputs.flags.startupcounter[i] < 3) inputs.flags.startupcounter[i]++;
							rpmdata.stable[i] = TRUE;
						}
						else //rpm is not stable therefore dont use the values for calculation
						{
							if(rpmdata.stable[i] == TRUE)
							{
								
							}
							rpmdata.stable[i] = FALSE;
						}
						if(inputs.flags.startupcounter[i] >= 3)
						{
							if(chanfornewval == i) allsensors.flags.newval = TRUE;	//do not set the newval flag until 3 revs after stablility is achieved
						} 
						inputs.rawresults.rpm[i] = (unsigned int)temprpm;
						SetRPMChan(i,inputs.rawresults.rpm[i]);	//set for all channels
					}
				}
			}
			else rpmcleardown = TRUE;
		}
		else	rpmcleardown = TRUE; //sensor disabled so clear down channel rpm values
		if(rpmcleardown == TRUE)	//clear down for this channel
		{
		 	inputs.flags.newrpm[i] = FALSE;
			inputs.rawresults.rpm[i] = 0;	//set to zero if the count is greater than limit
			inputs.rawresults.counterA[i] = 0;
			inputs.rawresults.counterB[i] = 0;
			inputs.flags.rpmstart[i] = 0;
			inputs.flags.startupcounter[i] = 0;
			rpmdata.stable[i] = FALSE;		//set flag to false set to true once rpm is stable
			if(settings.anadebug.enb == FALSE) SetRPMChan(i,0);		//set to zero for all channels
		}
	}
	allzerorpmflag = TRUE;
	for(i=0;i<allsensors.numsensors;i++)
	{
		 if(GetRPM(i) != 0) allzerorpmflag = FALSE;
	}
	if(allzerorpmflag == TRUE) GetModalRPM(2);	//clear modal for output
}

//Reset the status of the engine back to not set
void ClearEngineDirCal(void)
{
int i;
// PF Gen 2 - 07-Mar-12 Old event system backend removal - char eventstring[EVENTMSG_LEN_INBYTES_PART2];

	// PF Gen 2 - 31-Oct-11 Initialise direction register with 32767 instead of 0
	for(i=0;i<MAX_NUM_CHANNELS_SPU;i++) adcdata.direction[i] = 32767;
	for(i=0;i<(MAX_NUM_CHANNELS_SPU/2);i++) allsensors.dirorder[i] = 32767;		//set all to zero
	// PF Gen 2 - 31-Oct-11 EOM

	motion.counter = 0;
	motion.ready = FALSE;
	motion.forwardasternflag = DIR_NOTSET;
	motion.recheckdir = FALSE;
	allsensors.enginedircal = FALSE;

	WriteAllSensorStructtoNVMEM();		//store the allsensors setting for not cal dir
	GeneralSettingstoSDCardFile();

	// PF Gen 2 - 07-Mar-12 Old event system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
	// PF Gen 2 - 07-Mar-12 Old event system backend removal - sprintf(eventstring,"Clearing Firing Order");
	// PF Gen 2 - 07-Mar-12 Old event system backend removal - LogEvent(DIRECTION_CAL,HIGH_PRIORITY,NO,eventstring);	//no extra string and ACK not required
	SetBitEvent(DIRECTIONCAL_CLEAR_EVENT); // PF Gen 2 - 06-Mar-12 Old event system backend removal - Clearing firing order
}

//Initialise the motion calibration to determine the firing order for the cylinders
void InitMotionCal(void)
{
// PF Gen 2 - 07-Mar-12 Old event system backend removal - char eventstring[EVENTMSG_LEN_INBYTES_PART2];

	if(GetModalRPM(0) >= allsensors.rpmlimit)		//must be greater than rpmlimit to determine order
	{
		ClearEngineDirCal();
		timers.motioncal = 10*SECS_TO_MS_MULTIPLIER;	//calibrate the direction over 10 seconds
		motion.recalnow = TRUE;

		// PF Gen 2 - 07-Mar-12 Old event system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
		// PF Gen 2 - 07-Mar-12 Old event system backend removal - sprintf(eventstring,"Determining Order");
		// PF Gen 2 - 07-Mar-12 Old event system backend removal - LogEvent(DIRECTION_CAL,HIGH_PRIORITY,NO,eventstring);	//no extra string and ACK not required
		SetBitEvent(DIRECTIONCAL_DETERMINE_EVENT); // PF Gen 2 - 06-Mar-12 Old event system backend removal - Determine firing order
	}
}

//Set up the forward astern array
//Use the adcdata.dircount these should be setup to give the number of pulses seen on each cylinder
void SetupMotionDir(void)
{
int i;
int numcyl;

	if(timers.motioncal == 0)	//initial timer for collecting pulses
	{
		numcyl = (int)allsensors.numsensorsspu1/2;		//set up as number of cylinders
		//itterate for all cylinders to set the order
		for(i=0;i<numcyl;i++)
		{
			allsensors.dirorder[i] = adcdata.direction[i];
		}
		allsensors.enginedircal = TRUE;
		motion.counter = 0;
		motion.ready = FALSE;
		motion.recalnow = FALSE;
		motion.recheckdir = TRUE;	//set to recheck the direction from the next revolution of the engine
		WriteAllSensorStructtoNVMEM();
		GeneralSettingstoSDCardFile();
	}
}

//Check the engine direction and set a flag for forward or astern
void CheckForwardAstern(void)
{
int i;
int numcyl;

	if(GetModalRPM(0) != 0)	//only check when moving
	{
		if(motion.recalnow == TRUE) SetupMotionDir();
		else
		{
			//ready to check forward/astern
			numcyl = allsensors.numsensorsspu1/2;	//number to check for (half number fitted as only checking evens)
			if(allsensors.enginedircal == TRUE)
			{
				if(motion.ready == TRUE)
				{
					motion.ready = FALSE;
					motion.counter = 0;
					i = 0;
					while(motion.order[0] != allsensors.dirorder[i] && i < numcyl) i++;
					if(i == numcyl)
					{
						//cannot determine direction so return as previous
						return;
					}
					//07/01/09 - new direction code start here
					if(i == 0)	//beginning of array look for next and last value in array
					{
						if(motion.order[1] == allsensors.dirorder[1]) motion.forwardasternflag = FORWARD;
						else if(motion.order[1] == allsensors.dirorder[numcyl-1]) motion.forwardasternflag = ASTERN;
						//not using the else condition - this means the last determined state will remain even if a sensor goes faulty --else motion.forwardasternflag = UNKNOWN_DIR;
					}
					else if( i == (numcyl-1)) //look at first value in array and previous value
					{
						if(motion.order[1] == allsensors.dirorder[0]) motion.forwardasternflag = FORWARD;
						else if(motion.order[1] == allsensors.dirorder[i-1]) motion.forwardasternflag = ASTERN;
						//not using the else condition - this means the last determined state will remain even if a sensor goes faulty --else motion.forwardasternflag = UNKNOWN_DIR;
					}
					else
					{
						if(motion.order[1] == allsensors.dirorder[i+1]) motion.forwardasternflag = FORWARD;
						else if(motion.order[1] == allsensors.dirorder[i-1]) motion.forwardasternflag = ASTERN;
						//not using the else condition - this means the last determined state will remain even if a sensor goes faulty --else motion.forwardasternflag = UNKNOWN_DIR;
					}

					if(motion.recheckdir == TRUE)		//recheck the direction
					{
						motion.recheckdir = FALSE;
						if(motion.forwardasternflag == ASTERN)	//PROBLEM cal is not valid must be carried out again - abort learning mode
						{
							motion.calerror = TRUE;
							CalAbort();
							ClearSelectiveMANTable();	//clear channels enabled for calibration
						}
					}
				}
			}
			else motion.forwardasternflag = DIR_NOTSET;		//not set yet
		}
	}
	else if(allsensors.enginedircal == TRUE)	//if engine cal complete and rpm zero set to unknown
	{
		motion.forwardasternflag = UNKNOWN_DIR;				//FORWARD;	//set forward if not moving
		motion.ready = FALSE;								//must clear down from previous otherwise on next start dir could be incorrect
		motion.counter = 0;
	}
	//unkown state is STOPPED, may be unkown for a few cycles until rpm is determined.
	else motion.forwardasternflag = DIR_NOTSET;		//not set yet
}


//Check if the analog input is out of range.  This will be < 3mA or > 19mA
void AnalogOOR(void)
{
int temp;
volatile unsigned int *ptr;
unsigned int i;
int checkrange;
status3struct *flagptr;

	if(timers.analogoor == 0)		//timer for oor checks, only carry this out every 5 seconds
	{
		timers.analogoor = 5*ONE_SEC_TIMEOUT;		//allows rpm OOR check in modalrpm to be calculated, dont want to set low if it is unstable
		CheckWIORange();
		CheckSLEMRange();
		for(i=0;i<allsensors.numsensorsspu1;i++)	//range checking on the current 14 channels only
		{
			flagptr = Status3Flags(i);
			if(sensor[i].status1.enabled == TRUE)	//only check if enabled
			{
				ptr = ADCChanPtr(i);
				temp = (int)(*ptr >> 4);
				adcdata.previous.range[i] += ((temp - adcdata.previous.range[i])/4);
				if(settings.mastermode == FALSE) checkrange = TRUE;
				else if(modalsetcounters[i] == 0) checkrange = TRUE;	//only allow if the rpm is not unstable on this channel
				//check 3 to 19mA range
				if(adcdata.previous.range[i] < (int)(adcdata.countspermA.chan[i]*3) && checkrange == TRUE)
				{
					//not using counter as need one counter per channel better to know immediately if channel is out of range

					flagptr->low = 1;	//set flag for low condition once seen this for a duration
					if(settings.anadebug.enb == FALSE)
					{
						SetRPMChan(i,0);		//set to zero for all channels (except first channel as this is done in hardware)
					}
				}
				else
				{
					flagptr->low = 0;
				}
				if(adcdata.previous.range[i] > (int)(adcdata.countspermA.chan[i]*19) && checkrange == TRUE)
				{
					flagptr->high = 1;	//set flag for high condition once seen this for a duration
					if(settings.anadebug.enb == FALSE) SetRPMChan(i,0);		//set to zero for all channels (except first channel as this is done in hardware)
				}
				else
				{
					flagptr->high = 0;
				}
			}
			else
			{
				flagptr->low = 0;
				flagptr->high = 0;
			}
		}
	}
}

//On power up the scaling values are calculated from the stored cal values
//For GEN1.5 storing the peakoffset value as the scaled 12mA value
//The actual offset will be stored separately to reset to zero microns
void SetupScaling(void)
{
float temp20ma;
unsigned int i;
	for(i=0;i<MAX_NUM_CHANNELS_SPU;i++)
	{
		temp20ma = (float)safe1.inputs.chan18ma[i]/18;
		adcdata.countspermA.chan[i] = (unsigned int)temp20ma;
		temp20ma *= 20;	//now have 20 ma cal value (actually calibrating at 18mA,as 20mA is off ADC scale)
		inputs.scale.chan[i] = (float)ADC_MAX_VAL/temp20ma;	//scale used to turn all values in to 0 to maxval (4095)
	}

	
	// PF 15-Oct-09 added analog18ma
	// AJB 09-Feb-10 Moved analog18ma to new struct (xtswplusanacal) for backward compatability
	SaveSafeStruct1();	//store to nonvol
	SaveXtswplusAnaCal();	// AJB 09-Feb-10 Store xtsw+ analogue channel cal to different structure
	for (i=0;i<8;i++) {
		// AJB 09-Feb-10 Use xtswplusanacal structure instead of safe1
		temp20ma = (float)xtswplusanacal.analog18ma[i]/18;
		temp20ma *= 20;	//now have 20 ma cal value (actually calibrating at 18mA,as 20mA is off ADC scale)
		inputs.analog.scalefactor[i] = (float)ADC_MAX_VAL/temp20ma;	//scale used to turn all values in to 0 to maxval (4095)
	}
	// PF 15-Oct-09 EOM
}

void Calibrate18mA(unsigned int chan)
{
unsigned int i;
int temp;
volatile unsigned int *ptr;
    
    ptr = ADCChanPtr(chan);
	temp = *ptr >> 4;
	inputs.flags.ready = 0;
	for(i=0;i<20000;i++)	//average 20000 samples
	{
		while(inputs.flags.ready == 0) settings.watchdog = 1;
		temp = temp + (((int)(*ptr >>4) - temp)/8);
		inputs.flags.ready = 0;
	}
	safe1.inputs.chan18ma[chan] = (unsigned int)temp;
	SaveSafeStruct1();	//store to nonvol
}

volatile unsigned int * ADCChanPtr(unsigned int chan)
{
volatile unsigned int *ptr;

	switch(chan)
	{
		case 0:
			ptr = &adcregs.ADCRESULT7;
		break;
		case 1:
			ptr = &adcregs.ADCRESULT6;
		break;
		case 2:
			ptr = &adcregs.ADCRESULT5;
		break;
		case 3:
			ptr = &adcregs.ADCRESULT4;
		break;
		case 4:
			ptr = &adcregs.ADCRESULT3;
		break;
		case 5:
			ptr = &adcregs.ADCRESULT2;
		break;
		case 6:
			ptr = &adcregs.ADCRESULT1;
		break;
		case 7:
			ptr = &adcregs.ADCRESULT0;
		break;
		case 8:
			ptr = &adcregs.ADCRESULT8;
		break;		
		case 9:
			ptr = &adcregs.ADCRESULT9;
		break;
		case 10:
			ptr = &adcregs.ADCRESULT10;
		break;
		case 11:
			ptr = &adcregs.ADCRESULT11;
		break;
		case 12:
			ptr = &adcregs.ADCRESULT12;
		break;
		case 13:
			ptr = &adcregs.ADCRESULT13;
		break;
	}
	return(ptr);
}


void SetupConstantCurrentMux(void)
{
	EALLOW
	GPDDIR |= 0x60;		//ccselect1, ccselect2 set as op
	EDIS
	TEMP_CHAN0  //setup point to first prt input

	//on analuge system only four channels to be set
	sensor[0].prt = 0;
	sensor[1].prt = 0;
	sensor[2].prt = 0;
	sensor[3].prt = 0;

	timers.prtsettle = 0;
	inputs.prtchan = 0;	//chan 0

	//PF 14-Oct-09 added initialisation for analog
	inputs.analog.value[0] = -32767;
	inputs.analog.value[1] = -32767;
	inputs.analog.value[2] = -32767;
	inputs.analog.value[3] = -32767;
	inputs.analog.value[4] = -32767;
	inputs.analog.value[5] = -32767;
	inputs.analog.value[6] = -32767;
	inputs.analog.value[7] = -32767;
	inputs.analog.chan = 0;
	// PF 14-Oct-09 EOM
	// PF 16-Oct-09 initialise timer & IO selection bits for analogue
	ANALOG_CHAN0;
	timers.analogsettle = ANALOG_SETTLE;
	// PF 16-Oct-09 EOM

}

//Calbirate the zero of fullscale
//Enter with zero for zero calibration
//1 for fullscale
void CalibratePRT(unsigned int zeroorfullscale, unsigned int chan)
{
unsigned int i;
int temp;

	switch(chan)
	{
		case 0:
			TEMP_CHAN0;
		break;
		case 1:
			TEMP_CHAN1;
		break;
		case 2:
			TEMP_CHAN2;
		break;				
		case 3:
			TEMP_CHAN3;
		break;		
	}
								//0.5secs
	timers.prtsettle = 100;		//allow channel to settle before using reading
	while(timers.prtsettle != 0) settings.watchdog = 1;		//wait for settling
	
	temp = (int)(adcdata.current.prt>>4);
	inputs.flags.ready = 0;
	for(i=0;i<20000;i++)	//average 20000 samples
	{
		while(inputs.flags.ready == 0) settings.watchdog = 1;
		temp = temp + (((int)(adcdata.current.prt>>4) - temp)/8);
		inputs.flags.ready = 0;
	}
	if(zeroorfullscale == 0) safe2.inputs.calprtzero[chan] = (unsigned int)temp;
	else safe2.inputs.calprtfullscale[chan] = (unsigned int)temp;
	SaveSafeStruct2();	//store to nonvol
}

void ReadPRT(void)
{
float temp;
float previous;
float newval;
	if(timers.prtsettle == 0)
	{
	    temp = (float)PRTConversion(inputs.prtchan);
		previous = (float)sensor[inputs.prtchan].prt;
		if(previous < 100)	//check for less than 10degC, this will be true on power-up
	    {
			sensor[inputs.prtchan].prt = (int)temp;
		}
		else
		{
    		newval = previous + ((temp - previous)/8);
			sensor[inputs.prtchan].prt = (int)newval;
		}
	  	if(inputs.prtchan < 3) inputs.prtchan++;
		else inputs.prtchan = 0;
		switch(inputs.prtchan)
		{
			case 0:
				TEMP_CHAN0;
			break;
			case 1:
				TEMP_CHAN1;
			break;
			case 2:
				TEMP_CHAN2;
			break;				
			case 3:
				TEMP_CHAN3;
			break;		
		}
		timers.prtsettle = PRT_SETTLE;		//allow channel to settle before using reading
	}
}



//The following equation is used to calculate the temperature from scaled incoming value
//As this is a second order polynomial for +temps then Rt = R0(1+At+Bt*Bt)
//Rt = the resistance measurement
//R0 is the resitance at 0degC = 100.0ohms this is stored in calzero
//A = 3.9083x10-3
//B = -5.775 x 10-7
//C = -4.183x10-12
//AS quadratic can use (-b+squareroot(b*b-4ac))/2a
//b = R0*A Ro = 10000 	b = 39.083
//a = Ro*B				a = -0.005775
//c = R0-Rt				c = 10000 - Rt
int PRTConversion(unsigned char i)
{
#define b (float)39.083
#define a (float)-0.005775
float c;
float temp;
float val;
float rawscaler;
float answer;
  
	//find gain for PRT i.e. PRT is 0degC = 10000, 100degC = 13851
	//										100.0 ohm		138.51ohm
	rawscaler = (float)3851/((float)(safe2.inputs.calprtfullscale[i] - safe2.inputs.calprtzero[i]));
	val = ((float)((float)(adcdata.current.prt>>4) - (float)safe2.inputs.calprtzero[i]) * rawscaler) + 10000;
	c = 10000 - val;
	temp = (b*b) - (4*a*c);
	answer = (sqrt(temp) - b)/(2*a);
	answer *= 10;	//set as an integer
	if(answer < 0 ) answer = LOWLEVEL_LOG_VALUE;	//less than 100ohms
	if(answer > 1250) answer = HILEVEL_LOG_VALUE;	//trap greater than 125.0, floating input o/c
	return((int)answer);
#undef b
#undef a
}


// PF 15-Oct-09 Changed GetVoltageStatus() routine to always return OK
int GetVoltageStatus(void)
{
	//no hardware to measure the voltage on the input side and super cap removed from board for XTSW+
	//therefore cannot determine the voltage..assume OK as off 24V non interruptible source
	// inputs.flags.voltageok = OK; // PF Gen 2 - no longer used variable
	return(OK);
}

// PF 14-Oct-09 Read analogue routine added
// PF 15-Oct-09 CalibrateLoop18mA routine added

// Read the analog inputs via the multiplexer
void ReadAnalog(void)
{
float temp;
float previous;
float newval;
float filtercoef;

	if(timers.analogsettle == 0)
	{
		//AJB 19-Aug-10 Battery input not scaled using 18mA cal figures
		if(inputs.analog.chan == 3)	//on input 3 (indexed from zero)
		{
			temp = (float)(adcdata.current.vin >> 4);
			filtercoef = 25;		//slow filter for the battery this does not need to react quickly
		}
		else
		{
			// Scale the analogue input using the scaling factor calc'd from 18mA calib point
			temp = (float)(adcdata.current.vin >> 4) * inputs.analog.scalefactor[inputs.analog.chan];
			filtercoef = 4;
		}
		previous = (float)inputs.analog.value[inputs.analog.chan];
		// The initial powerup value for the inputs.analog.value[x] is -32767 so bypass filter
		if(previous == -32767)
		{
			inputs.analog.value[inputs.analog.chan] = (int)temp;
		}
		else
		{
			newval = previous + ((temp - previous)/filtercoef);
			inputs.analog.value[inputs.analog.chan] = (int)newval;
		}
  		if(inputs.analog.chan < 7) inputs.analog.chan++;
		else inputs.analog.chan = 0;
		// Choose which channel to read via the multiplexer
		switch(inputs.analog.chan)
		{
			case 0:
				ANALOG_CHAN0;
			break;
			case 1:
				ANALOG_CHAN1;
			break;
			case 2:
				ANALOG_CHAN2;
			break;				
			case 3:
				ANALOG_CHAN3;
			break;		
			case 4:
				ANALOG_CHAN4;
			break;		
			case 5:
				ANALOG_CHAN5;
			break;		
			case 6:
				ANALOG_CHAN6;
			break;		
			case 7:
				ANALOG_CHAN7;
			break;		
		}
		timers.analogsettle = ANALOG_SETTLE;		//allow channel to settle before using reading
		
		//process the analog slem and the rtc reading every 50ms				
		RTCBattery();		//AJB 19-Aug-10

		if(settings.mastermode == TRUE) 
		{
			AnalogSLEM();		//AJB 19-Aug-10
			ProcessAnalogCpp();
		}
	}
}

//AJB 19-Aug-10
//Calculate the voltage in mV for the RTC battery
//Calculations based on the input scaled for Vo = 0.88*Vi
//Assuming the max input is 3.41V in counts = 4095
//Therefore 1201.2 Counts per Volt
//0.83mV per count (scaling factor to get into mV = 1.2012 (RTC_BATTERY_MV_SCALING)
//Battery Level for Lithium Manganese dioxide type will remain level for most of its life
//Check for a voltage collapse toward 2.5V indicating battery is dying
//Based on actual reading the scaling factor should be 1.1267 tried with 3V input

//The blurb above is not used as the input will now be calibrated, as super accuracy on a RTC battery voltage is important
//Chemistry/ physics of a lithium battery will mean it wil remain at a constant voltage and then fall away
//quickly, therefore the only thing the measurement will tell you is if it is dying, it is not a gradual voltage drop over time
void RTCBattery(void)
{
float temp;

	//AJB 02-Sep-10 use the analogue input cal value to scale the input
	//Assume the input was calibrated at 3.23V
	temp = (float)3230/(float)xtswplusanacal.analog18ma[3];	//mV per count

	temp *= (float)inputs.analog.value[3];
	rtcbat.mV = FloattoIntRound(temp);
	//process the alarm after the initial timer ahs timed out, allowfor setting and propogation to registers
	if(timers.startup == 0)	RTCLowBattAlarm();
}


//Low battery alarm level setting for the RTC
void RTCLowBattAlarm(void)
{
// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - char eventstring[EVENTMSG_LEN_INBYTES_PART2];

	// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);

	if(rtcbat.mV <= 2200 && rtcbat.alarms.low == FALSE)	//check for less than 2.2V 
	{
		//set the alarm event before logging the event as logging increments the eventid
		SetAlarmEvent(RTCBATLOW);
		rtcbat.alarms.low = 1;
		// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(RTCBAT_LOW,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event
		WriteNVMemory(FRAM1,RTCBAT_ALARMS_DATA_OFFSET,(unsigned int*)&rtcbat.alarms,1);
	}
	else if(rtcbat.mV >= 2500 && (CheckAlarmBitSet(RTCBATLOW) == 1 || rtcbat.alarms.low == TRUE))	//reset when great than 2.5V	// PF Gen 2 - 17-May-12 Checked alarm bits in addition
	{
		// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"RTN");
		// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(RTCBAT_LOW,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
		ClearAlarmEvent(RTCBATLOW);						//clear the in alarm bit for the fault
		rtcbat.alarms.low = FALSE;
		WriteNVMemory(FRAM1,RTCBAT_ALARMS_DATA_OFFSET,(unsigned int*)&rtcbat.alarms,1);
	}
}
//AJB 19-Aug-10 EOM


void ProcessAnalogCpp(void)
{
	float temp;
	float scaling;	
	//float adReadPermA;
	//float cppmAinput;
	float percent;
	int tempCnt = inputs.analog.value[CPP_ANALOG_IN] - 60;
	if(tempCnt < 0) tempCnt = 0;

	//adReadPermA = (CPP_20MA_AD_VALUE - CPP_0MA_AD_VALUE) / 20;
	if(cppsettings.iCppEnable != 0)
	{		
		temp = (float)tempCnt;							
		//sprintf(stringbuffer,"raw ad:%f, atoD:%d, 18mA value:%d, factor:%d\r\n",temp, inputs.analog.value[CPP_ANALOG_IN], xtswplusanacal.analog18ma[CPP_ANALOG_IN],inputs.analog.scalefactor[CPP_ANALOG_IN]); DebugStringOut(stringbuffer);		
		//adReadPermA *= 1;

		temp /= (CPP_20MA_AD_VALUE - 60);			
		temp *= 20;		//now in mA	

		if(temp >= 4)
		{
			percent = (temp-4) / 16;
			if(percent > 100) percent = 100;
		}
		else percent = 0;
				
		scaling = (float)cppsettings.iCppHighLimit - (float)cppsettings.iCppLowLimit;	//find scaling factor
		percent *= scaling; 
		percent += (float)cppsettings.iCppLowLimit;
		loadlevel.fLoadPercent = percent;
		loadlevel.iAtodValue = tempCnt;
		loadlevel.fmAinput = temp;
		//sprintf(stringbuffer,"\r factor ad:%f, mA:%f, atoD:%d\r\n",temp, loadlevel.fmAinput,loadlevel.iAtodValue); DebugStringOut(stringbuffer);		
	}
	else
	{
		loadlevel.fLoadPercent = 0;
	}

}

//AJB 19-Aug-10
//Uses the 2nd analog input for SLEM
void AnalogSLEM(void)
{
float temp;
float scaling;

	if(slemsettings.enabled != 0)
	{
		if(slem.alarms.oor == FALSE)
		{
			temp = inputs.analog.value[SLEM_ANALOG_IN];
			if(temp <= 819) temp = 0;		//relates to 4mA, should never be lower than this unless in an error condition
			else
			{
				temp /= 4095;
				temp *= 20;		//now in mA
				temp -= 4;		//remove the 4mA offset
			}
			//mVfsd = fullscale mV value e.g fullscale = 20mV, therefore 20mA = 20mV
			scaling = (float)slemsettings.mVfsd/(float)16;	//find scaling factor to get from 16mA fullscale range to mvFSD value
			temp *= scaling;	//scale value for mV 
			slem.mV = FloattoIntRound(temp);
			if(timers.startup == 0)	SLEMAlarm();
		}
	}
	else
	{
		if(CheckAlarmBitSet(SLEMALARM) == 1 || slem.alarms.alarm == TRUE)	// PF Gen 2 - 17-May-12 Checked alarm bits in addition
		{
			ClearAlarmEvent(SLEMALARM);						//clear the in alarm bit for the fault
			WriteNVMemory(FRAM1,SLEM_ALARMS_DATA_OFFSET,(unsigned int*)&slem.alarms,1);
			slem.alarms.alarm = 0;
		}
		slem.alarms.unused = 0;		//clear unused bits by default
		slem.mV = 0;
	}

}
//AJB 19-Aug-10 EOM


//AJB 19-Aug-10
//SLEM Alarm

//todo add in slem alarm level to message output
void SLEMAlarm(void)
{
// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - char eventstring[EVENTMSG_LEN_INBYTES_PART2];
int alarmlevelreturn;
unsigned long delay;

	if(slemsettings.alarmmask == FALSE)
	{
		//AJB 21-Sep-10 added delay
		delay = (unsigned long)slemsettings.alarmdelay * 20;	//multiply by 20 as updated at 50ms intervals (so 20 per sec)
		alarmlevelreturn = slemsettings.alarmlevel - slemsettings.hysteresis;	//AJB 21-Sep-10, hysteresis value can now be altered
		if(slem.mV >= slemsettings.alarmlevel)
		{
			slem.levelcount++;
		}

		// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);

		//check when the slemlevelcount is above 600 (collected at 50ms) therefore this will mean it has been
		//continously high for 30 seconds (delay is configurable)
		if(slem.mV >= slemsettings.alarmlevel && slem.levelcount >= delay && slem.alarms.alarm == FALSE)	//check not already in alarm
		{
			//set the alarm event before logging the event as logging increments the eventid
			SetAlarmEvent(SLEMALARM);
			slem.alarms.alarm = TRUE; // PF 25-Jan-12 Changed to true
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"%d mV",slemsettings.alarmlevel);
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(SLEM_ALARM,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event
			WriteNVMemory(FRAM1,SLEM_ALARMS_DATA_OFFSET,(unsigned int*)&slem.alarms,1);
		}
		else if(slem.mV <= alarmlevelreturn && (CheckAlarmBitSet(SLEMALARM) == 1 || slem.alarms.alarm == TRUE))	//reset	// PF Gen 2 - 17-May-12 Checked alarm bits in addition
		{
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"RTN");
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(SLEM_ALARM,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
			ClearAlarmEvent(SLEMALARM);						//clear the in alarm bit for the fault
			slem.alarms.alarm = FALSE;
			WriteNVMemory(FRAM1,SLEM_ALARMS_DATA_OFFSET,(unsigned int*)&slem.alarms,1);
		}
		if(slem.mV < slemsettings.alarmlevel) slem.levelcount = 0;	//reset if not above the alarm limit
	}
}
//AJB 19-Aug-10 EOM

//AJB 19-Aug-10
void CheckSLEMRange(void)
{
char eventstring[EVENTMSG_LEN_INBYTES_PART2];
float temp;
int slemOOR;

	if(slemsettings.enabled != 0 && slemsettings.alarmmask == FALSE && timers.startup == 0)
	{
		memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
		
		temp = inputs.analog.value[SLEM_ANALOG_IN];
		temp /= 4095;
		temp *= 20;		//scale back for 0-20mA
		
		slemOOR = FALSE;
		//check if less than 3mA or >= 21.0mA
		if(temp <= 3.0)
		{
			//AJB 21=Sep-10
			slemOOR = TRUE;
			slem.mV = LOWLEVEL_LOG_VALUE;
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Input Low");
		}
		if(temp >= 21.0)
		{
			slemOOR = TRUE;
			slem.mV = HILEVEL_LOG_VALUE;
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"Input High");
			//AJB 21=Sep-10 EOM
		}
		
		if(slemOOR == TRUE)	//out of range
		{
			if(slem.alarms.oor == FALSE)	//latch only once
			{
				// PF Gen 2 - 26-Jan-12 Added new slem alarms
				if (slem.mV == LOWLEVEL_LOG_VALUE) {
					SetAlarmEvent(SLEMOORLO);
				} else {
					SetAlarmEvent(SLEMOORHI);
				}
				// PF Gen 2 - 26-Jan-12 EOM
				//set the alarm event before logging the event as logging increments the eventid
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - SetAlarmEvent(SLEMOOR,UNACK_ON_YELLOW);
				slem.alarms.oor = TRUE; // PF Gen 2 - 25-Jan-12 Changed to true for consistency
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(SLEM_OOR,HIGH_PRIORITY,YES,eventstring);	//pass in ptr to the string for this event
				WriteNVMemory(FRAM1,SLEM_ALARMS_DATA_OFFSET,(unsigned int*)&slem.alarms,1);
			}
		}
		else if(slemOOR == FALSE)
		{
			if(CheckAlarmBitSet(SLEMOORHI) == 1 || CheckAlarmBitSet(SLEMOORLO) == 1 || slem.alarms.oor == TRUE)	// PF Gen 2 - 17-May-12 Checked alarm bits in addition
			{
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - sprintf(eventstring,"RTN");
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - LogEvent(SLEM_OOR,HIGH_PRIORITY,NO,eventstring);	//pass in ptr to the string for this event
				// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - ClearAlarmEvent(SLEMOOR,FALSE);						//clear the in alarm bit for the fault
				// PF Gen 2 - 26-Jan-12 Added new slem alarms
				ClearAlarmEvent(SLEMOORHI);
				ClearAlarmEvent(SLEMOORLO);
				// PF Gen 2 - 26-Jan-12 EOM
				slem.alarms.oor = FALSE;
				WriteNVMemory(FRAM1,SLEM_ALARMS_DATA_OFFSET,(unsigned int*)&slem.alarms,1);
			}
		}
	}
	else
	{
		if(CheckAlarmBitSet(SLEMOORHI) == 1 || CheckAlarmBitSet(SLEMOORLO) == 1 || slem.alarms.oor == TRUE)	// PF Gen 2 - 17-May-12 Checked alarm bits in addition
		{
			// PF Gen 2 - 19-Jan-12 Old alarm system backend removal - ClearAlarmEvent(SLEMOOR,FALSE);						//clear the in alarm bit for the fault
			// PF Gen 2 - 26-Jan-12 Added new slem alarms
			ClearAlarmEvent(SLEMOORHI);
			ClearAlarmEvent(SLEMOORLO);
			// PF Gen 2 - 26-Jan-12 EOM
			WriteNVMemory(FRAM1,SLEM_ALARMS_DATA_OFFSET,(unsigned int*)&slem.alarms,1);
		}
		slemOOR = FALSE;
		slem.alarms.oor = FALSE;
	}

}
//AJB 19-Aug-10 EOM

//AJB 19-Aug-10
void WriteSLEMSettingstoNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory
	//this is positioned after the acc table
	position = SLEMSETTINGSSTRUCT_OFFSET;
	ptr = (unsigned int*)&slemsettings;
	len = sizeof(slemsettingsstruct);
	WriteNVMemory(FRAM1,position,ptr,len);
	//update the sdcard general file with changes for WIO
	settings.sdcardupdate = SDGENERALUPDATE;		//update the sd card settings
}

//Read back from NVMEM
//This will be called on power up only - as this is held in ram
void ReadSLEMSettingsfromNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory
	//this is positioned after the acc table
	position = SLEMSETTINGSSTRUCT_OFFSET;
	ptr = (unsigned int*)&slemsettings;
	len = sizeof(slemsettingsstruct);
	ReadNVMemory(FRAM1,position,ptr,len);

	ReadNVMemory(FRAM1,SLEM_ALARMS_DATA_OFFSET,(unsigned int*)&slem.alarms,1);
}
			 
//AJB 19-Aug-10 EOM


//AJB 19-Aug-10
void LoadSLEMDefaults(void)
{
	slemsettings.alarmmask = 0;
	slemsettings.enabled = 0;
	slemsettings.mVfsd = 300;		//300mV FSD defined
	slemsettings.alarmlevel = 80;	//80 mV alarm level
	slemsettings.alarmdelay = 30;	//30 second delay
	slemsettings.hysteresis = 16;	//16mV hysteresis

	//set all to zero when loading defaults
	//this should only happen when the variables are not present on the sd or factory init
	*(unsigned int*)&slem.alarms = 0;
	WriteNVMemory(FRAM1,SLEM_ALARMS_DATA_OFFSET,(unsigned int*)&slem.alarms,1);

	WriteSLEMSettingstoNVMEM();

}
//AJB 19-Aug-10 EOM

void WriteCPPSettingstoNVMEM(void)
{
	unsigned int position;
	unsigned int *ptr;
	unsigned int len;

	//calculate the position to point to in nonvolatile memory
	//this is positioned after the acc table
	position = CPPSETTINGSSTRUCT_OFFSET;
	ptr = (unsigned int*)&cppsettings;
	len = sizeof(cppsettingsstruct);
	WriteNVMemory(FRAM1,position,ptr,len);
	//update the sdcard general file with changes for WIO
	settings.sdcardupdate = SDGENERALUPDATE;		//update the sd card settings
}

//Read back from NVMEM
//This will be called on power up only - as this is held in ram
void ReadCPPSettingsfromNVMEM(void)
{
	unsigned int position;
	unsigned int *ptr;
	unsigned int len;

	//calculate the position to point to in nonvolatile memory
	//this is positioned after the acc table
	position = CPPSETTINGSSTRUCT_OFFSET;
	ptr = (unsigned int*)&cppsettings;
	len = sizeof(cppsettingsstruct);
	ReadNVMemory(FRAM1,position,ptr,len);
}

void WriteSensorSettingstoNVMEM(void)
{
	unsigned int position;
	unsigned int *ptr;
	unsigned int len;

	//calculate the position to point to in nonvolatile memory
	//this is positioned after the acc table
	position = SENSORMOVINGSTRUCT_OFFSET;
	ptr = (unsigned int*)&sensorMoving;
	len = sizeof(sensorMovingstruct);
	WriteNVMemory(FRAM1,position,ptr,len);
	//update the sdcard general file with changes for WIO
	settings.sdcardupdate = SDGENERALUPDATE;		//update the sd card settings
}

//Read back from NVMEM
//This will be called on power up only - as this is held in ram
void ReadSensorSettingsfromNVMEM(void)
{
	unsigned int position;
	unsigned int *ptr;
	unsigned int len;

	//calculate the position to point to in nonvolatile memory
	//this is positioned after the acc table
	position = SENSORMOVINGSTRUCT_OFFSET;
	ptr = (unsigned int*)&sensorMoving;
	len = sizeof(sensorMovingstruct);
	ReadNVMemory(FRAM1,position,ptr,len);
}

void LoadCPPDefaults(void)
{
	cppsettings.iCppEnable = 0;
	cppsettings.iCppLowLimit = 0;
	cppsettings.iCppHighLimit = 100;

	cppsettings.cppkvalue = 15;
	cppsettings.gammavalue = 1000;
	cppsettings.cpplevelx = 2;
	cppsettings.delatRpmPauseDelay = 300;	
		
	WriteCPPSettingstoNVMEM();	
}

void LoadSensorDefaults(void)
{	
	sensorMoving.calAlarmThreshhold = 200;			
	WriteSensorSettingstoNVMEM();
}

// Calibrate analogue inputs.
void CalibrateLoop18mA(unsigned int chan) {

unsigned int i;
int temp;
	// Choose which channel to read via the multiplexer
	switch(chan)
	{
			case 0:
				ANALOG_CHAN0;
			break;
			case 1:
				ANALOG_CHAN1;
			break;
			case 2:
				ANALOG_CHAN2;
			break;				
			case 3:
				ANALOG_CHAN3;
			break;		
			case 4:
				ANALOG_CHAN4;
			break;		
			case 5:
				ANALOG_CHAN5;
			break;		
			case 6:
				ANALOG_CHAN6;
			break;		
			case 7:
				ANALOG_CHAN7;
			break;		
	}
	timers.analogsettle = 100;		//allow channel to settle before using reading
	while(timers.analogsettle != 0) settings.watchdog = 1;		//wait for settling
	
	temp = (int)(adcdata.current.vin>>4);
	inputs.flags.ready = 0;
	for(i=0;i<20000;i++)	//average 20000 samples
	{
		while(inputs.flags.ready == 0) settings.watchdog = 1;
		temp = temp + (((int)(adcdata.current.vin>>4) - temp)/8);
		inputs.flags.ready = 0;
	}

	// AJB 15-Feb-10 Changed to use xtswplusanacal struct
	xtswplusanacal.analog18ma[chan] = (unsigned int)temp;
	SaveXtswplusAnaCal();
	// AJB 15-Feb-10 EOM

	// Allow the normal routine which reads analogues to read the correct channel as the MUX will be pointing at this new channel
	inputs.analog.chan = chan;

	// Call the routine to setup the scaling without powerup
	SetupScaling();

}
// PF 15-Oct-09 EOM

// PF Gen 2 - 09-Dec-11 Added realtime uA and um
void SetRealtimeuAScaledValue(int chan,int valin)
{
	float uAval;
	float scalingfactor;

	scalingfactor = (float)config.inputs.sensorscalingfactor/1000;	//turn scaling factor into uA per um
	//multiply to turn microns into uA
	uAval = (valin * scalingfactor) + FOURTEEN_MA_OFFSET_IN_UA;;
	uArealtimeValue[chan] = (unsigned int)uAval;
}

unsigned int GetRealtimeuAScaledValue(int chan)
{	
	return(uArealtimeValue[chan]);
}

void SetRealtimePreCompValue(unsigned int chan, int val)
{
	if(val < SCALEDVAL_LIMIT) umrealtimeValue[chan] = val;
	else umrealtimeValue[chan] = SCALEDVAL_LIMIT;	//limit to SCALEDVAL_LIMIT microns
}

int GetRealtimePreCompValue(unsigned int chan)
{
	if(sensor[chan].status1.enabled == FALSE) return(DISABLED_LOG_VALUE);
	if(settings.dcmode == 0) {
		if(status3[chan].low 	 == TRUE) return(LOWLEVEL_LOG_VALUE);
		if(status3[chan].high 	 == TRUE) return(HILEVEL_LOG_VALUE);
		if(status3[chan].nopulse == TRUE) return(NO_PULSE_LOG_VALUE);
		if(status3[chan].rpmoor	 == TRUE) return(RPMOOR_LOG_VALUE);
	}
	return(umrealtimeValue[chan]);
	// PF Gen 2 - 08-Dec-11 EOM
}


// PF Gen 2 - 09-Dec-11 EOM

// PF Gen 2 - 13-Dec-11 load dc mode checks to/from nvmem and defaults
void WriteDCModeChecksSettingstoNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory
	//this is positioned after the acc table
	position = DCMODECHECKSTRUCT_OFFSET;
	ptr = (unsigned int*)&dcmodechecks;
	len = sizeof(dcmodechecksstruct);
	WriteNVMemory(FRAM1,position,ptr,len);
	//update the sdcard general file with changes for WIO
	settings.sdcardupdate = SDGENERALUPDATE;		//update the sd card settings
}

//Read back from NVMEM
//This will be called on power up only - as this is held in ram
void ReadDCModeChecksSettingsfromNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory
	//this is positioned after the acc table
	position = DCMODECHECKSTRUCT_OFFSET;
	ptr = (unsigned int*)&dcmodechecks;
	len = sizeof(dcmodechecksstruct);
	ReadNVMemory(FRAM1,position,ptr,len);
}
			 
void LoadDCModeChecksDefaults(void)
{

	dcmodechecks.ideal.lo = 13000;
	dcmodechecks.ideal.hi = 15000;
	dcmodechecks.ok.lo = 11000;
	dcmodechecks.ok.hi = 16000;
	dcmodechecks.cylinderComparison.max = 8000;
	dcmodechecks.cylinderComparison.threshold = 7000;

	WriteDCModeChecksSettingstoNVMEM();

}

// Function takes channel and returns state of bit
int  PeakResetBitStatus(unsigned int chan) {

	if (chan <=15) return(CheckBitSet(DCModePeakReset[0],chan));
	if (chan >= 16 && chan <=31) return(CheckBitSet(DCModePeakReset[1],chan - 16));

	return(-1);

}

// Function takes channel and returns state of bit
void  PeakResetBitClear(unsigned int chan) {

	if (chan <=15) DCModePeakReset[0] = BitClear(DCModePeakReset[0],chan);
	if (chan >= 16 && chan <=31) DCModePeakReset[1] = BitClear(DCModePeakReset[1],chan - 16);

}

void DCModeChecks(void) {

unsigned int cyl;
unsigned int channel1;
unsigned int channel2;
int chComparison;

unsigned int chan;
unsigned int uAValue;

unsigned int word;
unsigned int bit;

	// Check cylinders are within x uA
	for(cyl=0;cyl<allsensors.numsensors/2;cyl++)
	{
		channel1 = GetRealtimeuAScaledValue(cyl * 2);
		channel2 = GetRealtimeuAScaledValue((cyl * 2) + 1);

		if (channel1 >= dcmodechecks.cylinderComparison.threshold || channel2 >= dcmodechecks.cylinderComparison.threshold) { // Only check when above threshold
			chComparison = abs(channel1 - channel2);
			if (chComparison < dcmodechecks.cylinderComparison.max) {
				DCModeCylinderComparison = BitSet(DCModeCylinderComparison,cyl);
			} else {
				DCModeCylinderComparison = BitClear(DCModeCylinderComparison,cyl);
			}
			
		}
	}


	// Check channels are in range
	for(chan=0;chan<allsensors.numsensors;chan++) {

		uAValue = GetuASCaledValue(chan);

		if (chan <=15) { word=0; bit=chan; } else { word=1; bit=chan-16;}

		if (uAValue >= dcmodechecks.ok.lo && uAValue <= dcmodechecks.ok.hi) {
			DCModeInRangeOK[word] = BitSet(DCModeInRangeOK[word],bit);
		} else {
			DCModeInRangeOK[word] = BitClear(DCModeInRangeOK[word],bit);
		}

		if (uAValue >= dcmodechecks.ideal.lo && uAValue <= dcmodechecks.ideal.hi) {
			DCModeInRangeIdeal[word] = BitSet(DCModeInRangeIdeal[word],bit);
		} else {
			DCModeInRangeIdeal[word] = BitClear(DCModeInRangeIdeal[word],bit);
		}

	}

}

// PF Gen 2 - 13-Dec-11 EOM

// PF Gen 2 - 15-May-12 Added in dc mode automatic
void DCModeAuto(unsigned rpm) {

	if (settings.mastermode == TRUE && timers.dcmodestayalive != 0) {
		if (rpm < MINIMUM_RPM) {
			if (settings.dcmode == FALSE) {
				settings.dcmode = TRUE;
				settings.dcpeakhold = TRUE;		
				DCModeInit();
			}
		} else {
			if (settings.dcmode == TRUE) {
				DCModeClear();
			}
		}
	}

}

// PF Gen 2 - 15-May-12 EOM
