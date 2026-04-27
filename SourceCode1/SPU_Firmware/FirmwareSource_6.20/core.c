/******************************************************************************
* FILENAME: CORE.C
*
*
* It consists of a loop which performs an FIR filter and three interrupt
* service routines (ISRs). Of the three ISRs, one is not time-critical
* (ISR14) and can be held off indefinitely. Another, ISR1, is extremely
* time-critical and must be serviced, even while in another ISR. ISR13
* is time-critical, but will not preempt ISR1.
*
*     Code              Priority        Background/foreground  Interruptible?
*     ---------         --------------  ---------------------  --------------
*     main loop         lowest          background             Yes
*     ISR14             second lowest   background             Yes
*     ISR13             second highest  foreground             Yes
*     ISR1              highest         foreground             No
* 
* IMPORTANT NOTE:
* The DSP is set to operate at 150MHz with XTIMCLK = SYSCLKOUT/2
* XCLKOUT is XTIMCLK/2 i.e. 37.5MHz
******************************************************************************/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "core.h"
#include "setup.h"
#include "sci.h"
#include "globals.h"
#include "spi.h"
#include "PCModBus.h"
#include "wioprim.h"
#include "slave485.h"
#include "pccli.h"
#include "digout.h"
#include "sdcard.h"
#include "wio.h"
#include "mancal.h"
#include "logging.h"
#include "version.h"
#include "adc.h"
#include "reprog.h" // AJB 15-Feb-10 Added reprog.h
#include "alarms.h" // PF Gen 2 - 07-Mar-12

//see command file for actual location
#pragma DATA_SECTION(gpa, ".gparegisters");
#pragma DATA_SECTION(gpb, ".gpbregisters");
#pragma DATA_SECTION(gpd, ".gpdregisters");
#pragma DATA_SECTION(gpe, ".gperegisters");
#pragma DATA_SECTION(gpf, ".gpfregisters");
#pragma DATA_SECTION(gpg, ".gpgregisters");

volatile gpaport gpa;	//data port for the Realtek ethernet
volatile gpbport gpb;
volatile gpdport gpd;
volatile gpeport gpe;
volatile gpfport gpf;
volatile gpgport gpg;

/*----------------------------------------------------------------------------
* Global variables which monitor interrupt service routine (ISR) activity.
*----------------------------------------------------------------------------*/
typedef enum { NoIsrActive, Isr1Active, Isr13Active, Isr14Active} ISR_LIST;
static volatile ISR_LIST WhatIsrActive = NoIsrActive;
static volatile uint32 Isr1 = 0;
static volatile uint32 Isr13 = 0;
static volatile uint32 Isr14 = 0;

void StartupDelay(void);

/*-----------------------------------------------------------------------------
* int main(void)
----------------------------------------------------------------------------*/
int main(void)
{
volatile int KeepRunning = 1;
volatile unsigned char charrx;
char eventstring[EVENTMSG_LEN_INBYTES_PART2];

	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);

	settings.initprogress = TRUE;	//set flag for initialisation
    SetupPIEVectors();	//add when loading code to flash memory
    InternalRamSetup();
    FlashSetup();
    TimingSetup();
    SetupInterruptsandTimers();
    Init485Drivers();
	// PF 12-Oct-09 remarked line below to stop false readings on power-up
    // InitADC();
    CalLEDSetup();
    InitOP();
    
    InitOffboardGPIO();
    SetupConstantCurrentMux();
    InitSPI();
    SerialPortASetup();
    SerialPortBSetup();    

	WIO485Init();
	Slave485Init();
	timers.startup = 10 *SECS_TO_MS_MULTIPLIER;	//10 seconds to allow everthing to stabilise
	while(timers.startup != 0) settings.watchdog = 1;	//kick the dog in the timer interrupt	//wait

	//this should help if the power is unstable and resetting on power up.  Stops reading/writing
	//to SD card until the power is definitely up and ready!
	// AJB 15-Feb-10 Reprogramming mod
	ReprogramStartupInit();	//clear variables used during reprogramming
	// AJB 15-Feb-10 EOM
	ReadClockData();	//must read before init on sd card
	settings.watchdog = 1;
	InitStatus1Flags();
	settings.watchdog = 1;
	InitSensors();
	settings.watchdog = 1;
	AllSensorInit();
	settings.watchdog = 1;
	InitSystemAlarms();
	settings.watchdog = 1;
	FunctionEnabledSetup();
	settings.watchdog = 1;
	//readallfromeeprom this is the on board nvmem.  read this to setup the calibration for analogue inputs etc
    ReadAllFromEEPROM();
   	ReadClockData();	//read clock at startup
	SetupScaling();		//must be after readsafestructs!
	MasterModeSwitch();
	while(timers.mastermodebutton != 0) settings.watchdog = 1;	//kick the dog in the timer interrupt //wait for the master mode switch to debounce and read again
	MasterModeSwitch();
	//do not setup the external uart too early..otherwise it will not setup the baud rate correctly!
	SerialPortCSetup();
	settings.watchdog = 1;
	SerialPortDSetup();		//cli for the slave spu
	settings.watchdog = 1;
	SetupCLI();			//add when using the CLI

	if(settings.mastermode == TRUE)		//do not process these modules if in slave mode
	{
		sdsettings.present = 1;			//AJB 19-Aug-10 added to make sure on power up the sd card is always enabled
		sprintf(stringbuffer,"Init.\r\n");
		DebugStringOut(stringbuffer);

		ReadAllSensorStructfromNVMEM();
		sprintf(stringbuffer,"Total sensor number: %u, slave sensor:%u\r\n", allsensors.numsensors,allsensors.numsensorsspu2);
		DebugStringOut(stringbuffer);

		ReadConfigStructfromNVMEM();

	    //ReadLoggingPtrsFromRTCRam(); AJB 19-Aug-10 - removed as no flash memory on XTSW+
    	ReadClockData();	//read clock every second	- must read clock early on in order for timestamp to be loaded
							//e.g. used in SetupDefaultSettings later on first load
		//see the initman for loading of data from the fram - this will load into ram
		InitMAN();			//initiliase the man information relating to speed compensation and channels etc
						//this will load data from nv mem into ram etc
		sprintf(stringbuffer,"1.");
		DebugStringOut(stringbuffer);

		LoadFRAMpowerup(); // PF Gen 2 - 13-Dec-11 Added function to conglomerate load from FRAM
		ClearBitEventList(); // PF Gen 2 - 06-Mar-12 Added function to clear bit event list

		StartupDelay();
		sprintf(stringbuffer,"2.");
		DebugStringOut(stringbuffer);
		SDCardInitialise();
		sprintf(stringbuffer,"3.");
		DebugStringOut(stringbuffer);

		//LOAD DATA FROM SD CARD INTO THE FRAM
		LoadFRAMfromSD();
		ClearEventCodeListArea(); //clear alarm list

		sprintf(stringbuffer,"Total sensor number: %u, slave sensor:%u\r\n", allsensors.numsensors,allsensors.numsensorsspu2);
		DebugStringOut(stringbuffer);

		sprintf(stringbuffer,"4.");
		DebugStringOut(stringbuffer);
		//CALL power up read last - so the sd takes priority
		//PowerUpReadSD();	//this function must be called last (we must have the settings loaded form chip NVMEM
							//this will overwrite the settings as the SD card data takes priority
		//do not call the cal init before the sd has been setup

		PowerUpCalInit();	//power up cal initilisation
		WIOInit();
		sprintf(stringbuffer,"5.");
		DebugStringOut(stringbuffer);
		// PF Gen 2 - 08-Mar-12 changed the system so it would not read from fram unless it had to
		// ReloadTimeFromFram();	//load the timestamp from fram (actually loads whole structure for time from fram
    	ReadClockData();	//read clock every second
		ClockProcessing();
		// PF Gen 2 - 08-Mar-12 EOM
		NominalSpeedUpdate();
		StartupRefReload();		//AJB 19-Aug-10 added for setting up the damage monitoring variables
		SDCalcEventLogID();
		//this will copy the event messages from the constant arrays onto the sd card (useful for checking the list of events!)
		SetAllEventMsgs();

		//read the clock and check the clock value against the value from fram.  the value in fram should be checked before any
		//event are logged in case it has a duff value
    	ReadClockData();	//read clock every second
		ClockProcessing();
		sprintf(stringbuffer,"6.\r\n");
		DebugStringOut(stringbuffer);
	 	// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - LogEvent(POWER_ON,HIGH_PRIORITY,NO,eventstring);	//extra string for firmware difference contains SPU1
		SetBitEvent(POWERON_EVENT); // PF Gen 2 - 06-Mar-12 Old alarm system backend removal - Power on event

		//string on the CLI
		sprintf(stringbuffer,"Done\r\n");
		DebugStringOut(stringbuffer);

	}
	else
	{
		InitScalingFactor();		//initialise for the slave
		ClearStatusFlagsforSlave();
		SlaveDefaultNotSet();  		//set up the slave values to a default not set value - this allows the values to be
							   		//set up on the slave before the master interprets them
	}
	ResetLoopCheck();		//clear loop check on power up
	ResetCommsCheck();

	// PF 12-Oct-09 added line to allow pulse detection once everything is setup
	InitADC();

	settings.initprogress = FALSE;		//init now cleared - init complete (used in things like spibusy etc)
	timers.startup = 5 *SECS_TO_MS_MULTIPLIER;	//5 seconds to allow everthing to stabilise
	SetWIOAlarmMask(0);	//do not mask the water in oil alarms

	while ( KeepRunning )       /* Run until the user sets KeepRunning to 0  */
    {
		LoopCheck();
		MasterModeSwitch();		//check the mode switch and change mode if necessary
    	TimerCheck();
    	RPMCalc();
    	ReadClockData();	//read clock every second
		//AnalogueInputScaleAllChannels();	//read and scale, process no pulses, and deal with 4 prt channels
		Slave485Modbus();
		if(reprogram.programkey != 0x12343333)
		{
			AnalogueInputScaleAllChannels();	//read and scale, process no pulses, and deal with 4 prt channels
			//PcCLI();				//add when using CLI
			clearCommsErrors();		// PF Gen 2 - 01-Mar-12 Added in function to clear comms errors
			bitEventIncrement();	// PF Gen 2 - 06-Mar-12 Added in function to increment bit event
		}
		PcCLI();				//add when using CLI
		//mastermode is now determined from the dip switch on the PCB - cannot be determined via software!
		if(settings.mastermode == TRUE)		//do not process these modules if in slave mode
		{
// AJB 15-Feb-10 Reprogramming mode code added (order changed relating to reprogramming addition
    		PCModBus();
			ClockProcessing();
			ProcessDigitalOP();

			if(reprogram.programkey != 0x12343333)	//check key for uploading mode, if this is set, cease these operations
			{
				WaterinOil();			//read in the water in oil from the external uart
				WIOChecks();
				InitCal();				//start the calibration if the flag has been set from the modbus register
				MANModules();			//man code all answers are stored within the sensors structures per channel
				ProcessSDCard();		//deal with all sd card related functions
			  	SDCardLogUpdate();
				RunTimeMinUpdate();		// PF Gen 2 - 10-May-12
			  	UpdateNonVolSafeCheck();
				SDCardUpdate();
				Fram1ChipCheck();
				BearingStatus();		// PF 26-Mar-12 Added in bearing status update
				FirmwareComparison();			//check the version from the master and slave spus
			}
		}
		if(reprogram.programkey != 0x12343333)	//check key for uploading mode, if this is set, cease these operations
		{
			SystemChecks();			//check failure and alarm states - check AFTER the MAN modules so if the rpm is unstable this will be set first
									//this allows the analog oor checks to happen after the rpm, OOR check.  ORDER IS IMPORTANT
		}
								
		ReprogrammingCalls();	//calls used when programming the flash on spi etc on master and slave
// AJB 15-Feb-10 EOM
	   	settings.watchdog = 1;	//kick the dog in the timer interrupt
    }
    return 0;
}

//this will provide a delay of 500ms fixed
//this can be used to provide a delay before talking to the sd card
void StartupDelay(void)
{
	timers.general = DELAY500MSEC;
	while(timers.general != 0) settings.watchdog = 1;	//kick the dog in the timer interrupt, wait here for timer to expire
}

//Check timers for update in the main loop
void TimerCheck(void)
{
//unsigned int i;

	//PLACE NON CRITICAL TIMERS IN THIS FUNCTION - all critical timers should be placed in the timer interrupt
	if(timers.update != 0)
	{
		//flash the CAL led to show normal operation
	    if(timers.ledflash == 0 && settings.ledflashflag != 0)
	    {
	    	timers.ledflash = HALF_SEC_TIMEOUT;		//set to flash at 0.5secs on/off
	    	if(settings.ledflashflag == 1)
	    	{

	    		settings.ledflashflag = 2;
	    		LED1 = 1;		//led on
	    		
	    	}
	    	else
	    	{
	    		settings.ledflashflag = 1;
				LED1 = 0;									//led off
	    	}
	    }
	    timers.update = 0;	//clear set in timers interrupt
    }
	
}



/*-----------------------------------------------------------------------------
* void PerformIsr1(void)
*
* Indicate that Isr1 is being performed, and increment the number of times
* it has been performed.
*----------------------------------------------------------------------------*/
void PerformIsr1(void)
{

	timers.update = 1;		//set to update timers called from main loop
	if(timers.startup != 0)				timers.startup--;
	if(timers.general != 0)				timers.general--;
	if(timers.sectick != 0)				timers.sectick--;	
    if(timers.ledflash != 0)			timers.ledflash--;
    if(timers.prtsettle != 0)			timers.prtsettle--;
    if(timers.pcrxtimeout != 0)			timers.pcrxtimeout--;
    if(timers.pctxtimeout != 0)			timers.pctxtimeout--;

	if(timers.pcmodbus != 0)			timers.pcmodbus--;
	if(timers.rxcharTimeout != 0)		timers.rxcharTimeout--;

	if(timers.wiorxtimeout != 0)		timers.wiorxtimeout--;
    if(timers.spistatus != 0)			timers.spistatus--;
	if(timers.dcmode != 0)				timers.dcmode--;
	if(timers.clocktofram != 0) 		timers.clocktofram--;
	if(timers.debugrapidfast != 0) 		timers.debugrapidfast--;

	//only decrement the counter when timerrunning is true, set to false when outside the speed bands for roughcal
	//also true for fine cal.  do not countdown if engine is stationary
	if(settings.timerrunning == TRUE)
	{
		if(timers.calibrate != 0) timers.calibrate--;
		if(timers.calibrate2 != 0) timers.calibrate2--;
		if(timers.prewarn != 0) timers.prewarn--;
	}
	// if(timers.maxmintimer != 0) timers.maxmintimer--; 	// PF Gen 2 - 04-Jan-12 Removed spare timer
	if(timers.rpmtimeout != 0)			timers.rpmtimeout--;
	if(timers.deltarpm15Delay != 0)	timers.deltarpm15Delay--;

	if(timers.slaverxtimeout != 0) timers.slaverxtimeout--;
	if(timers.masterrxtimeout != 0) timers.masterrxtimeout--;
	if(timers.wiorqst != 0) timers.wiorqst--;
	if(timers.wiomasterrxtimeout != 0) timers.wiomasterrxtimeout--;
	if(timers.slaverqst != 0) timers.slaverqst--;
	if(timers.mastermodebutton != 0) timers.mastermodebutton--;
	if(timers.analogoor != 0) timers.analogoor--;
	if(timers.motioncal != 0) timers.motioncal--;
	if(timers.framcheck != 0) timers.framcheck--;
	if(timers.debugupdate != 0) timers.debugupdate--;
	if(timers.statusreflash != 0) timers.statusreflash--;
	if(timers.alarmreflash != 0) timers.alarmreflash--;
	if(timers.slowdownreflash != 0) timers.slowdownreflash--;
	if(timers.dircountdown != 0) timers.dircountdown--;
	if(timers.analogsettle !=0) timers.analogsettle--;	// PF 14-Oct-09 Added analogsettle timer
	if(timers.dcmodestayalive != 0) timers.dcmodestayalive--; 	// PF Gen 2 - 04-Jan-12 Added timer for dc mode
	if(timers.biteventchange !=0 ) timers.biteventchange--;	// PF Gen 2 - 06-Mar-12 Added timer for bit event

// AJB 15-Feb-10 Reprogramming mod new timers
	if(timers.reprogram != 0)	timers.reprogram--;
	if(timers.reprogramtimeout != 0)	timers.reprogramtimeout--;
	if(timers.iSensorReplace != 0) timers.iSensorReplace--;
	
// AJB 15-Feb-10 EOM
    // timers.test++; 	// PF Gen 2 - 04-Jan-12 Removed spare timer
    timers.rpm++;	//increment the rpm timer, cleared on a new pulse

	if(inputs.flags.chan[0] == FOUND) ProximityScaling(0);
	if(inputs.flags.chan[1] == FOUND) ProximityScaling(1);
	if(inputs.flags.chan[2] == FOUND) ProximityScaling(2);
	if(inputs.flags.chan[3] == FOUND) ProximityScaling(3);
	if(inputs.flags.chan[4] == FOUND) ProximityScaling(4);
	if(inputs.flags.chan[5] == FOUND) ProximityScaling(5);
	if(inputs.flags.chan[6] == FOUND) ProximityScaling(6);
	if(inputs.flags.chan[7] == FOUND) ProximityScaling(7);
	if(inputs.flags.chan[8] == FOUND) ProximityScaling(8);
	if(inputs.flags.chan[9] == FOUND) ProximityScaling(9);
	if(inputs.flags.chan[10] == FOUND) ProximityScaling(10);
	if(inputs.flags.chan[11] == FOUND) ProximityScaling(11);
	if(inputs.flags.chan[12] == FOUND) ProximityScaling(12);
	if(inputs.flags.chan[13] == FOUND) ProximityScaling(13);

	if(settings.watchdog == 1) WatchdogKick();

}

//Kick the dog!
void WatchdogKick(void)
{
EALLOW
	WDKEY = 0x55;
	WDKEY = 0xAA;
EDIS

	settings.watchdog = 0;
}

/*-----------------------------------------------------------------------------
* void PerformIsr13(void)
*
* Indicate that Isr13 is being performed, and increment the number of times
* it has been performed.
*----------------------------------------------------------------------------*/
void PerformIsr13(void)
{
	WhatIsrActive = Isr13Active;
    Isr13++;
    WhatIsrActive = NoIsrActive;
}

/*-----------------------------------------------------------------------------
* void PerformIsr14(void)
*
* Indicate that Isr14 is being performed, and increment the number of times
* it has been performed. Every so often, take a longer time than normal
* to introduce some variability into the system timing.
*----------------------------------------------------------------------------*/
void PerformIsr14(void)
{
    WhatIsrActive = Isr14Active;
    Isr14++;
    WhatIsrActive = NoIsrActive;
}


/* EOF */
