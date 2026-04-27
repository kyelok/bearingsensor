/******************************************************************************
* FILENAME: setup.c
*
* Interrupt vectors, initial portion of the Interrupt Service Routines
* (ISRs), interrupt generation code, and control registers. 
******************************************************************************/

/*-----------------------------------------------------------------------------
* Despite the use of the DATA_SECTION pragma, we'll actually place the
* interrupt vector table in program memory. Using DATA_SECTION allows
* the compiler to treat the table as a normal C data structure.
* Note that this pragma must be at the very beginning of the file - before
* any non-pragma statements.
-----------------------------------------------------------------------------*/
//Remove this line when vectors are in flash and copied to PIE vector table
//loaded directly into correct section on ezDSP board
//#pragma DATA_SECTION(vec, ".vectors");

#include <string.h>
#include "core.h"
#include "setup.h"
#include "globals.h"
#include "sci.h"
#include "adc.h"
#include "utils.h"
#include "logging.h"
#include "mancal.h"
#include "man.h"
#include "wio.h"
#include "sdcard.h"

/*-----------------------------------------------------------------------------
* Interrupt vector table - see "CPU Interrupt Vectors and Priorities" in
* TMS320C28x DSP CPU and Instruction Set Reference Guide
-----------------------------------------------------------------------------*/
typedef void (*VECTORS)(); /* Defines a type VECTORS which is a pointer to a */
                           /* function that returns void; takes no arguments */

const VECTORS vec[] =      /* Interrupt vector table (doesn't include RESET) */
{
    UnusedIsr,             /* INT1   - Maskable int 1            */
    UnusedIsr,             /* INT2   - Maskable int 2            */
    UnusedIsr,             /* INT3   - Maskable int 3            */
    UnusedIsr,             /* INT4   - Maskable int 4            */
    UnusedIsr,             /* INT5   - Maskable int 5            */
    UnusedIsr,             /* INT6   - Maskable int 6            */
    UnusedIsr,             /* INT7   - Maskable int 7            */
    UnusedIsr,             /* INT8   - Maskable int 8            */
    UnusedIsr,             /* INT9   - Maskable int 9            */
    UnusedIsr,             /* INT10  - Maskable int 10           */
    UnusedIsr,             /* INT11  - Maskable int 11           */
    UnusedIsr,             /* INT12  - Maskable int 12           */
    Int13Isr,              /* INT13  - Maskable int 13, timer 1  */
    Int14Isr,              /* INT14  - Maskable int 14, timer 2  */
    UnusedIsr,             /* DLOGINT- Maskable data-logging int */
    UnusedIsr,             /* RTOSINT- Maskable real-time OS int */
    UnusedIsr,             /* Reserved                           */
    SPIUart_XMNI,          /* NMI    - Nonmaskable interrupt     */
    UnusedIsr,             /* ILLEGAL- Illegal instruction trap  */
    UnusedIsr,             /* USER1  - User-defined sw int/trap  */
    UnusedIsr,             /* USER2  - User-defined sw int/trap  */
    UnusedIsr,             /* USER3  - User-defined sw int/trap  */
    UnusedIsr,             /* USER4  - User-defined sw int/trap  */
    UnusedIsr,             /* USER5  - User-defined sw int/trap  */
    UnusedIsr,             /* USER6  - User-defined sw int/trap  */
    UnusedIsr,             /* USER7  - User-defined sw int/trap  */
    UnusedIsr,             /* USER8  - User-defined sw int/trap  */
    UnusedIsr,             /* USER9  - User-defined sw int/trap  */
    UnusedIsr,             /* USER10 - User-defined sw int/trap  */
    UnusedIsr,             /* USER11 - User-defined sw int/trap  */
    UnusedIsr,             /* USER12 - User-defined sw int/trap  */

    UnusedIsr,             /* PIE int 1.1  */
    UnusedIsr,             /* PIE int 1.2  */
    UnusedIsr,             /* PIE int 1.3  */
    Int1Xint1Isr,          /* PIE int 1.4  XINT1 interrupt */
    Int1Xint2Isr,          /* PIE int 1.5  XINT2 interrupt */
    IntADCIsr,             /* PIE int 1.6  ADC interrupt   */
    Int1Isr,               /* PIE int 1.7, TINT0 (Timer 0) */
    UnusedIsr,             /* PIE int 1.8  */
    UnusedIsr,             /* PIE int 2.1  */
    UnusedIsr,             /* PIE int 2.2  */
    UnusedIsr,             /* PIE int 2.3  */
    UnusedIsr,             /* PIE int 2.4  */
    UnusedIsr,             /* PIE int 2.5  */
    UnusedIsr,             /* PIE int 2.6  */
    UnusedIsr,             /* PIE int 2.7, */
    UnusedIsr,             /* PIE int 2.8  */
	UnusedIsr,             /* PIE int 3.1  */
    UnusedIsr,             /* PIE int 3.2  */
    UnusedIsr,             /* PIE int 3.3  */
    UnusedIsr,             /* PIE int 3.4  */
    UnusedIsr,             /* PIE int 3.5  */
    UnusedIsr,             /* PIE int 3.6  */
    UnusedIsr,             /* PIE int 3.7, */
    UnusedIsr,             /* PIE int 3.8  */    
	UnusedIsr,             /* PIE int 4.1  */
    UnusedIsr,             /* PIE int 4.2  */
    UnusedIsr,             /* PIE int 4.3  */
    UnusedIsr,             /* PIE int 4.4  */
    UnusedIsr,             /* PIE int 4.5  */
    UnusedIsr,             /* PIE int 4.6  */
    UnusedIsr,             /* PIE int 4.7, */
    UnusedIsr,             /* PIE int 4.8  */    
	UnusedIsr,             /* PIE int 5.1  */
    UnusedIsr,             /* PIE int 5.2  */
    UnusedIsr,             /* PIE int 5.3  */
    UnusedIsr,             /* PIE int 5.4  */
    UnusedIsr,             /* PIE int 5.5  */
    UnusedIsr,             /* PIE int 5.6  */
    UnusedIsr,             /* PIE int 5.7, */
    UnusedIsr,             /* PIE int 5.8  */    
	UnusedIsr,             /* PIE int 6.1  */
    UnusedIsr,             /* PIE int 6.2  */
    UnusedIsr,             /* PIE int 6.3  */
    UnusedIsr,             /* PIE int 6.4  */
    UnusedIsr,             /* PIE int 6.5  */
    UnusedIsr,             /* PIE int 6.6  */
    UnusedIsr,             /* PIE int 6.7, */
    UnusedIsr,             /* PIE int 6.8  */    
	UnusedIsr,             /* PIE int 7.1  */
    UnusedIsr,             /* PIE int 7.2  */
    UnusedIsr,             /* PIE int 7.3  */
    UnusedIsr,             /* PIE int 7.4  */
    UnusedIsr,             /* PIE int 7.5  */
    UnusedIsr,             /* PIE int 7.6  */
    UnusedIsr,             /* PIE int 7.7, */
    UnusedIsr,             /* PIE int 7.8  */    
	UnusedIsr,             /* PIE int 8.1  */
    UnusedIsr,             /* PIE int 8.2  */
    UnusedIsr,             /* PIE int 8.3  */
    UnusedIsr,             /* PIE int 8.4  */
    UnusedIsr,             /* PIE int 8.5  */
    UnusedIsr,             /* PIE int 8.6  */
    UnusedIsr,             /* PIE int 8.7, */
    UnusedIsr,             /* PIE int 8.8  */    
	Int9SciRxIntA,		   /* PIE int 9.1  SCIRXINTA */
    UnusedIsr,		   /* PIE int 9.2  SCITXINTA */
    Int9SciRxIntB,    	   /* PIE int 9.3  SCIRXINTB */
    UnusedIsr,		   /* PIE int 9.4  SCITXINTB */
    UnusedIsr,             /* PIE int 9.3  */
    UnusedIsr,             /* PIE int 9.4  */
    UnusedIsr,             /* PIE int 9.5  */
    UnusedIsr,             /* PIE int 9.6  */
    UnusedIsr,             /* PIE int 9.7, */
    UnusedIsr,             /* PIE int 9.8  */    
};

/*-----------------------------------------------------------------------------
* 32-bit Timer
-----------------------------------------------------------------------------*/
typedef struct
{
    uint32 Timer;        // Timer Counter
    uint32 Period;       // Timer Period
    uint16 Control;      // Timer Control
    uint16 Rsvd;         // Reserved
    uint32 Prescale;     // Timer Pre-Scale
} C28X_TIMER;

/*-----------------------------------------------------------------------------
* interrupt void UnusedIsr(void)
*  
* Interrupt service routine for unused interrupt - do nothing
*----------------------------------------------------------------------------*/
interrupt void UnusedIsr(void)
{
    return;
}


/*-----------------------------------------------------------------------------
* interrupt void Int1Xint1Isr(void)
* This is a free running rising edge triggered clock
*----------------------------------------------------------------------------*/
interrupt void Int1Xint1Isr(void)
{
extern cregister volatile uint IER;
	IER |= Int1_IER;         /* Only enable INT1 */
    PIEACK |= 1;			/* Acknowledge PIE group 1 int */
}


/*-----------------------------------------------------------------------------
* Non maskable interrupt
* Used for interrupt from external UART
*----------------------------------------------------------------------------*/
interrupt void SPIUart_XMNI(void)
{
	//interrupt from the SPI UART on receive only
	if(settings.spiinuse == 0)		//do not service if spi is in use
	{
		PerformSciRxIntC();
	}
	else receiveC.receiveINTR = 1;
}


/*-----------------------------------------------------------------------------
* interrupt void Int1Xint2Isr(void)
* This is a free running rising edge triggered clock
*----------------------------------------------------------------------------*/
interrupt void Int1Xint2Isr(void)
{
extern cregister volatile uint IER;
	IER |= Int1_IER;         /* Only enable INT1 */
	//RPM input
	rpmdata.count++;	//increment the count on new pulse
	if(timers.rpm >= 400)	//2 second timer
	{
		rpmdata.ready = TRUE;
		rpmdata.sampleperiod = timers.rpm;
		rpmdata.previouscount = rpmdata.count;
		timers.rpm = 0;
		rpmdata.count = 0;
	}
    PIEACK |= 1;			/* Acknowledge PIE group 1 int */
}


/*-----------------------------------------------------------------------------
* interrupt void Int1Isr(void)
*  
* Entry point for INT1's ISR - note that this does NOT enable interrupts or
* debug accesses - INT1's ISR can not be debugged in real-time.
*----------------------------------------------------------------------------*/
interrupt void Int1Isr(void)
{
extern cregister volatile uint IER;
	IER |= Int1_IER;         /* Only enable INT1 */
    PerformIsr1();
    PIEACK |= 1;	/* Acknowledge PIE group 1 int */
}

/*-----------------------------------------------------------------------------
* interrupt void Int13Isr(void)
*  
* Entry point for INT13's ISR - note that this enables interrupts and
* debug accesses - we'll only enable the IER for INT1, however.
*----------------------------------------------------------------------------*/
interrupt void Int13Isr(void)
{
    extern cregister volatile uint IER;
    IER |= Int1_IER;         /* Only enable INT1 */
    asm(" clrc INTM, DBGM    ; Enable global interrupts and debug accesses");
    PerformIsr13();
}

/*-----------------------------------------------------------------------------
* interrupt void Int14Isr(void)
*  
* Entry point for INT14's ISR - note that this enables interrupts and
* debug accesses, and does not modify the IER. This will leave INT1 and INT13
* enabled, but not INT14 (because an interrupt's enable bit is cleared in
* the IER when pushing the IER on the stack during the vector fetch).
*----------------------------------------------------------------------------*/
interrupt void Int14Isr(void)
{
	asm(" clrc INTM, DBGM    ; Enable global interrupts and debug accesses");
    PerformIsr14();
}


/*-----------------------------------------------------------------------------
* interrupt void Int9SciRxIntA(void)
*----------------------------------------------------------------------------*/
interrupt void Int9SciRxIntA(void)
{
extern cregister volatile uint IER;
	IER |= Int9_IER;         /* Only enable INT9 */
    PerformSciRxIntA();
    PIEACK |= 0x100;	/* Acknowledge PIE group 9 int */
}

/*-----------------------------------------------------------------------------
* interrupt void Int9SciTxIntA(void)
*----------------------------------------------------------------------------*/
interrupt void Int9SciTxIntA(void)
{
extern cregister volatile uint IER;
	IER |= Int9_IER;         /* Only enable INT9 */
    PerformSciTxIntA();
    PIEACK |= 0x100;	/* Acknowledge PIE group 9 int */
}

/*-----------------------------------------------------------------------------
* interrupt void Int9SciRxIntB(void)
*----------------------------------------------------------------------------*/
interrupt void Int9SciRxIntB(void)
{
extern cregister volatile uint IER;
	IER |= Int9_IER;         /* Only enable INT9 */
    PerformSciRxIntB();
    PIEACK |= 0x100;	/* Acknowledge PIE group 9 int */
}

/*-----------------------------------------------------------------------------
* interrupt void Int9SciTxIntB(void)
*----------------------------------------------------------------------------*/
interrupt void Int9SciTxIntB(void)
{
extern cregister volatile uint IER;

	IER |= Int9_IER;         /* Only enable INT9 */
    PerformSciTxIntB();
    PIEACK |= 0x100;	/* Acknowledge PIE group 9 int */
}


/*-----------------------------------------------------------------------------
* void SetupInterruptsandTimers(void)
*  
* This consists of
* configuring the function generator to generate interrupts, and then
* setting the IER/DBGIER registers. Then the INTM and DBGM bits of ST1 are
* cleared, thus enabling interrupts and real-time debug.
*----------------------------------------------------------------------------*/
void SetupInterruptsandTimers(void)
{
unsigned int sizestruct;
unsigned int i;
unsigned int *ptr;

    volatile C28X_TIMER * Timer0 = (C28X_TIMER *)0xc00;
    volatile C28X_TIMER * Timer1 = (C28X_TIMER *)0xc08;
    volatile C28X_TIMER * Timer2 = (C28X_TIMER *)0xc10;

    extern cregister volatile uint IER;
	settings.watchdog = 1;
    EALLOW

#if WATCHDOG_ENABLED
    WDCR = ENABLE_WD; 	//enable the watchdog if needed
#else
    WDCR = DISABLE_WD;		//watchdog disabled
#endif
	
	WatchdogKick();
    //this will need kicking regularly! - approx 256ms with 30Mhz xtal

    /*-------------------------------------------------------------------------
    * Cause INT1 to occur every 150000 cycles, INT13 every 15000 cycles,
    * and INT14 every 150,000 cycles. 
    * 150,000 gives a 1ms tick if SYSCLKOUT = XCLKIN*5 where XCLKIN = 30MHz
    * 750,000 gives a 5ms tick if SYSCLKOUT = XCLKIN*5 where XCLKIN = 30MHz
    *------------------------------------------------------------------------*/
    Timer0->Timer = 750000;
    Timer0->Period = 750000;
    Timer0->Prescale = 0;
    Timer0->Control = 0x4820;

    Timer1->Timer = 750000;
    Timer1->Period = 750000;
    Timer1->Prescale = 0;
    Timer1->Control = 0x0820;	//timer 1 setup,but not enabled (will not interrupt)

    Timer2->Timer = 750000;
    Timer2->Period = 750000;
    Timer2->Prescale = 0;
    Timer2->Control = 0x0820;	//timer 2 setup,but not enabled (will not interrupt)
    
    /* Enable the XINT1 interrupt rising edge triggered */
    XINT2CR = 0x05;		//setup for rising edge triggered interrupt enabled
    GPEQUAL = 0xFF;		//set to eliminate noise spikes seen as rpm pulses
    					//SYSCLKOUT/510 with 150Mhz = 3.4us
	//non-maskable interrupt bit2=polarity,bit1=select,bit0=enable
	//NMI used for external UART, interrupt on tx empty and receive char
	XMNICR = 0x0001;	//Falling edge triggered,timer1 connected to INT13, interrupt enabled
	
    /* Enable PIE */
    PIEIER1 = 0x70; /* PIE int 1.7, 1.6 (ADC) AND xint2 interrupt (1.5)*/
    PIEIER9 = 0x0F;	/* Enable PIE int 9.1, and 9.2 for SCIA rx and tx & SCIB 9.3 9.4 */
    PIECTRL |= 1;

    EDIS
    
    /*-------------------------------------------------------------------------
    * Now enable the interrupts. Setting the IER register is easy, since the
    * compiler supports this as a control register. The DBGIER register is
    * not yet support, so we need to use assembly.
    *------------------------------------------------------------------------*/
    IER |= Int1_IER | Int9_IER;
    //IER |= Int1_IER | Int9_IER | Int13_IER | Int14_IER;
    //asm(" mov  *SP++, #0x1101 ; Want to enable INT1 and INT13 in the DBGIER.");
    //asm(" pop  DBGIER         ; ...register");    
    //do not enable debug accesses
    //asm(" clrc INTM, DBGM     ; Enable global interrupts and debug accesses");
    asm(" clrc INTM		     ; Enable global interrupts");
    
    //SET TIMERS TO ZERO

	// 19-Oct-09 removed individual timer zeroing from SetupInterruptsandTimers() as done by loop below
	sizestruct = sizeof(timersstruct);
	ptr = (unsigned int*)&timers;
	for(i=0;i<sizestruct;i++)
	{
		ptr[i] = 0;
	}
	
	timers.slaverqst = 200;	//set to 1sec to begin

	timers.startup = 5*SECS_TO_MS_MULTIPLIER;	//allow to stabalise for 5 seconds

	settings.watchdog = 1;
    return;
}

//copy the function pointers for the PIE vectors
void SetupPIEVectors(void)
{
volatile unsigned int i;
volatile unsigned long *source = (void *) &vec;
volatile unsigned long *dest = (void *) 0x0d02;	//load to PIE vector table
		
	EALLOW;	
	for(i=0; i < sizeof(vec); i++)
		*dest++ = *source++;	
	EDIS;
}


void TimingSetup(void)
{
// AJB 15-Feb-10 Added variable i
long i;

	EALLOW
	//XINTCNF2 BIT 16, if 0 then XTIMCLK = SYSCLKOUT or 1 XTIMCLK = SYSCLKOUT/2
	//BIT 3, if 0 XCLKOUT is enabled, 1 disabled
	//BIT 2, if 0 XCLKOUT = XTIMCLK, 1 XTIMCLK/2
	//RESET CONDITION XCLKOUT will be SYSCLKOUT/4 as BIT 16, BIT2 set
	XINTCNF2 |= 0x0008;	//switch off xclkout (not currently using it)
	PLLCR = 10;			//set to 10 for SYSCLKOUT = XCLKIN*5 = 150MHz

// AJB 15-Feb-10 added for phase locked lop locking before continuing (added to make sure speed is locked before any other alteration
// e.g. adc, sci etc
	// Wait for PLL to lock
	// Each time through this loop takes ~14 cycles
	// PLL Lock time is 131072 Cycles
	for(i= 0; i< 131072/14; i++)
	{
		WDKEY = 0x0055;
		WDKEY = 0x00AA;
	}
// AJB 15-Feb-10 EOM
	
	XTIMING0 &= 0xFFFFBFFF;
	XTIMING1 &= 0xFFFFBFFF;

	//USING XTIMING2 at 1:1
	//XTIMCLK = SYSCLKOUT (SYSCLKOUT = 150MHz)
	//NO XREADY
	//XTIMCLK = 6.666ns
	//XLEAD TIME SET TO  1 XTIMCLK = 6.66ns
	//XACTIVE TIME SET TO 1 XTIMCLK (1+ 1WAIT)= 13.33ns
	//XTRAIL TIME SET TO 0 XTIMCLK = 0ns	
	XTIMING2 = 0x00031224;

	XTIMING6 &= 0xFFFFBFFF;
	XTIMING7 &= 0xFFFFBFFF;
	XBANK = 0x003E;					//set up xtimclk waits for crossing into zone 6 (bank selected as zone 6)
	EDIS
}


/* All settings realted to the setup of the internal flashd should go in here */
void FlashSetup(void)
{
	EALLOW;
	FOPT |= 0x0001;	//set the flash pipeline active (BIT0 ENPIPE)
	EDIS;
}

void InternalRamSetup(void)
{
	EALLOW
	*((volatile uint16 *)0x0950) = 0x300;
	*((volatile uint16 *)0x0951) = 0x300;
	*((volatile uint16 *)0x0952) = 0x300;
	*((volatile uint16 *)0x0953) = 0x300;
	*((volatile uint16 *)0x0954) = 0x300;
	EDIS
}


void AllSensorInit(void)
{
	allsensors.flags.newval = FALSE;
	allsensors.slowdownack = 0;			//ack back from pc
	allsensors.alarmack = 0;
	allsensors.maxmintimer = 60;		//default to 60 minutes
}


// PAF 26-Feb-10 Changed

// allsensors.sensorhysteresis to 50 was 100
// allsensors.cylinderhysteresis to 50 was 100
// allsensors.rpmlimit to 20 was 12
// allsensors.dss to 20 was 12
// config.trendmax.graphvalue to 110 was 100
// speedcompcoeffs.speedbands[0][0] to 20 was 28
// speedcompcoeffs.speedbands[0][1] to 34 was 32
// speedcompcoeffs.speedbands[1][0] to 54 was 58
// speedcompcoeffs.speedbands[1][1] to 67 was 62
// speedcompcoeffs.speedbands[2][0] to 87 was 78
// speedcompcoeffs.speedbands[2][1] to 100 was 82
// speedcompcoeffs.slopecoeff to 150 was 350
// speedcompcoeffs.manappliedminsamples to 100 was 1
// wiosettings.alarmupperlevel to 90 was 100
// wiosettings.alarmlevel to 50 was 99
// wiosettings.hysteresis to 5 was 10


void SetupDefaultSettings(void)
{
int i;
unsigned long timestamp;

	allsensors.numsensors = 0;	//set to 0 sensors i.e. 1 spu

	allsensors.numsensorsspu1 = 0;		//number of sensor installed on spu1
	allsensors.numsensorsspu2 = 0;		//number of sensor installed on spu2
	allsensors.nominalspeed = 100;		//nominal speed of engine e.g. 100RPM
	allsensors.rpmmin = 20;				//store the rpm minimum in %, this wil be the lowest point to calibrate to e.g. 20% of nominal
	allsensors.rpmmax = 110;			//store the rpm maximum in %, this is the highest point in the table
	allsensors.reflash = 10;			//set the reflash rate for the digital outputs (in seconds)
	allsensors.sensorhysteresis = 50;	
	allsensors.cylinderhysteresis = 50;

	allsensors.alarmlevel = 500;
	allsensors.alarmdevlevel = 400;
	allsensors.cylinderalarmlevel = 300;
	allsensors.slowdownlevel = 700;
	allsensors.slowdowndevlevel = 500;

	allsensors.alarmcallevel = 800;
	allsensors.alarmdevcallevel = 500;
	allsensors.cylinderalarmcallevel = 400;
	allsensors.slowdowncallevel = 900;
	allsensors.slowdowndevcallevel = 700;

	allsensors.flags.calmode = 0;
	allsensors.flags.startcal = 0;
	allsensors.maxmintimer = 60;		//store for the maximum and minimum timer in minutes, this will reflect how long to look for max a min value
	allsensors.slowdownack = 0;
	allsensors.alarmack = 0;
	allsensors.rpmlimit = 18; //SLD Gen 2 17-Sep-12 Changed from 20 to 18 to match InitSafeFunc()
	allsensors.dsss = 18; //SLD Gen 2 17-Sep-12 Changed from 20 to 18 to match InitSafeFunc()
	allsensors.enginedircal = FALSE;
	allsensors.prewarninglevel = 250;
	allsensors.prewarningtimer = 360;

	allsensors.iBarredVibrationSpeedLow = 0;
	allsensors.iBarredVibrationSpeedHigh = 0;

	//AJB 19-Aug-10
	allsensors.bits.slowdowncntrl = 0;		//blipping is switched on by default (1 = off)

	prewarn.prewarncompleteflag = FALSE;	//set once at the end of learning

	for(i=0;i<MAX_NUM_CHANNELS_SPU;i++) allsensors.dirorder[i] = 0;	//store as cylinder number, ref from zero

	config.inputs.sensorscalingfactor = 3300;	//3.300mA = 1mm
	safe2.inputs.sensorscalingfactor = 3300;	//3.300mA = 1mm	for slave
	config.alarmenable.bitmap = 0x07;	//all alarm outputs enabled
	config.trendmax.graphvalue = 110;	//maximum rpm value to show on the labview trned graph
   	config.filter.inputtap = 500;
	safe1.inputs.chanlowthreshold 	= config.inputs.chanlowthreshold 	= 1000;	//aprrox 5mA , remember saved as right justified
	safe1.inputs.chanhighthreshold 	= config.inputs.chanhighthreshold	= 500;	//approx 2.6mA
	config.sdsettings.shortlrate = 10;		//10 sec interval - no longer used
	config.sdsettings.longlrate = 60;		//1 min interval - no longer used

	speedcompcoeffs.stageflag = 0;
	speedcompcoeffs.status = 0;
	speedcompcoeffs.speedbands[0][0] = 20;	// Band 1 Lower (%)
	speedcompcoeffs.speedbands[0][1] = 34;	// Band 1 Upper (%)
	speedcompcoeffs.speedbands[1][0] = 54;	// Band 2 Lower (%)
	speedcompcoeffs.speedbands[1][1] = 67;	// Band 2 Upper (%)
	speedcompcoeffs.speedbands[2][0] = 87;	// Band 3 Lower (%)
	speedcompcoeffs.speedbands[2][1] = 100;	// Band 3 Upper (%)

	speedcompcoeffs.slopecoeff = 150;	// Initial slope in microns
	speedcompcoeffs.initialtimer = 10;	// Rough learning band timer in minutes
	speedcompcoeffs.learningmodetimer = 30000;	// Set in minutes - MAN 500 hours
	speedcompcoeffs.intervaltimer = 3000;		// Set in minutes - MAN 50 hours
	speedcompcoeffs.numsamples = 1000;			// ISRP (Number of samples) - MAN 1000
	speedcompcoeffs.learningleft = 30000;		// Set in minutes - MAN 500 hours
	speedcompcoeffs.intervalleft = 3000;		// Set in minutes - MAN 50 hours
	speedcompcoeffs.manappliedminsamples = 100;	// Final MAN Min applied samples - MAN 1 (AMOT set to 100)

	wiosettings.enabled = 0;	//water in oil disabled
	wiosettings.alarmmask = 0;
	// PF Gen 2 - 24-Nov-11 changed defaults from 90 to 9000, 50 to 5000, 5 to 500
	wiosettings.alarmupperlevel = 9000;
	wiosettings.alarmlevel = 5000;
	wiosettings.hysteresis = 500;
	// PF Gen 2 - 24-Nov-11

	LoadDamagemonDefaults();
	LoadSLEMDefaults();
	LoadCPPDefaults();
	LoadSensorDefaults();
	timestamp = BuildTimeStamp();
	clocktime.framstamp = timestamp;		//copy to the structure
	SaveTimetoFram();


	sdsettings.present = TRUE;


	SDCardInitialise();
	SaveSDSettings();

	ClearAlarmListandEventLog();

	SaveSafeStruct1();
	GeneralSettingstoSDCardFile();
	WriteConfigStructtoNVMEM();
	WriteSpeedCompStructtoNVMEM();
	WriteAllSensorStructtoNVMEM();
	WriteWIOSettingstoNVMEM();
	WriteDamagemontoNVMEM();
	WriteSLEMSettingstoNVMEM();
	WriteCPPSettingstoNVMEM();
	WriteSensorSettingstoNVMEM();

	PrewarnReset();					//reset all to defaults

	ClearEventCodeListArea();			//clear the event code list in fram
}


void SetupSensorStatusDefaults(void)
{
int i;

	InitStatus1Flags();

	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		if(i < MAX_NUM_CHANNELS_SPU) SetSensorEnabled(i,ENABLED);
		else SetSensorEnabled(i,DISABLED);
		SetCalMode(i,DISABLED);
		SetAlarmMask(i,DISABLED);
		WriteSensorStatustoNVMEM(i);
	}
	SensorStatustoSDCardFile();
}


void SetupOffsetDefaults(void)
{
int i;

	for(i=0;i<MAX_NUM_CHANNELS;i++)
	{
		offsetA.val[i] = 0;
		offsetB.val[i] = 0;
	}
	OffsetstoSDCardFile();
	for(i=0;i<MAX_NUM_CHANNELS;i++) WriteOffsetAtoNVMEM(i);
	for(i=0;i<MAX_NUM_CHANNELS;i++) WriteOffsetBtoNVMEM(i);
}




