/******************************************************************************
* FILENAME: PCCLI.C
* Command Line Interface for passing data to the PC
******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "pccli.h"
#include "sci.h"
#include "core.h"
#include "utils.h"
#include "globals.h"
#include "setup.h"
#include "spi.h"
#include "adc.h"
#include "logging.h"
#include "version.h"
#include "mmc_mcf.h"
#include "fat.h"
#include "man.h"
#include "sdcard.h"
#include "mancal.h"
#include "alarms.h"
// AJB 15-Feb-10 Reprogramming mod
#include "reprog.h"

#define CMDBUFFSIZE 32	//32 bytes long for the command buffer used for cli commands received from PC
#define MAXCHARS (CMDBUFFSIZE)
#define CMDLEN 10			// Max command length
#define HELPSTRINGLEN 80

#define ESC 0x1B
#define DEL 0x7F
#define BS 0x08
#define CR 0x0D
#define LF 0x0A
#define SPACE 0x20
#define BACKSLASH 0x2F
#define BELL 0x07

#define RESTRICTEDHELPLIST 4		//items to display in the HELP command
// AJB 15-Feb-10 Reprogramming mod
#define HELPLISTSTART 6				//start position of help menu
// AJB 15-Feb-10 EOM
#define RESTRICTEDAMOTHELPLIST 32	//items to display in the AMOTHELP command // PF Gen 2 - 06-Feb-12 changed from 31
#define AMOTHELPLISTSTART HELPLISTSTART+RESTRICTEDHELPLIST		//start position of amot help menu

unsigned short CommandNum = 0;
unsigned short CommandLen = 0;
unsigned short CommandOffset = 0;
char *cmdbufptr = 0;
char *eocmdbuf = 0;
unsigned int rxcharcount = 0;
unsigned char rxchar = 0;
unsigned char RxCharacterFlag=FALSE;
unsigned int confirmation;

//Allocate into M0RAM - comms related
// AJB 15-Feb-10 Changed location from .commssection to .commssection1
#pragma DATA_SECTION(cmdbuf, ".commssection1");
#pragma DATA_SECTION(stringbuffer,".commssection1");
// AJB 15-Feb-10 EOM
char cmdbuf[CMDBUFFSIZE];
char stringbuffer[100];

typedef void (*CLIFuncType)(void);
typedef unsigned char clipromptstr[CMDLEN];
typedef unsigned char helpstr[HELPSTRINGLEN];

char AsciitoSingleChar(unsigned int i);
int AsciitoInt(unsigned int i);
unsigned int AsciitoBCD(unsigned int i);
void ConvertTime(unsigned int i);
void ConvertDate(unsigned int i);

typedef struct tag_CommandStruct
{
	clipromptstr Prompt;		//the string
	helpstr HelpStr;		//The string to be input to the help database
	CLIFuncType CLIFunc;	//function pointer to code to be called for this query
}CommandStruct;

char HandleCharExt(void);
char ParseCmd (char *cmdptr,char *cmd_length);
void HandleCmd(char cmd, char offset, char len);

void BCDTimetoAsciiOutonCLI(unsigned int *ptr);

//command function prototypes
void DummyFunc(void);
void HelpFunc(void);
//void AmotHelpFunc(void);
void FlashCheckFunc(void);
void DateSetFunc(void);
void TimeSetFunc(void);
void DisplayCalValuesFunc(void);
void InitSafeFunc(void);
void Cal18mAFunc(void);
//void CalPRTZeroFunc(void);
//void CalPRTFullScaleFunc(void);
void OPCheckFunc(void);
//void PRTReadFunc(void);
void OffsetFunc(void);
void ThresholdFunc(void);
void InputResultsFunc(void);
void RPMFunc(void);
//void WearFunc(void);
// PF Gen 2 - 04-Jan-12 Removed function definitions which do not have functions
// void MainLogRateFunc(void);
// void TrendLogRateFunc(void);
// PF Gen 2 - 04-Jan-12 EOM
//void ModbusAddressFunc(void);
//void Modbus2AddressFunc(void);
void FilterValFunc(void);
// PF Gen 2 - 02-Apr-12 removed function definition which has no function - void RpmLimitFunc(void);
void SensorScalingFactorFunc(void);
//void DSSSFunc(void);
void FactorySetFunc(void);

void BaudRateSelectFunc(void);

void MasterSlaveFunc(void);
void EventInfoFunc(void);
void FramWrTestFunc(void);
void FramReTestFunc(void);
void EnableOffsetFunc(void);
void EnableCompensationFunc(void);
void EnableNoisRemovalFunc(void);
//void EnableSensorDeviationFunc(void);
//void EnableCylinderAverageFunc(void);
void EnableCylinderDeviationFunc(void);
void EnableCheckRoughCalFunc(void);

// AJB 15-Feb-10 Reprogramming mod
void AT25DF041CheckFunc(void);

//void DisAnalogFunc(void);
//void SetAllFunc(void);
//void SetRPMFunc(void);
void SelectChannelFunc(void);
void SetCHValFunc(void);
void DebugSerialFunc(void);
void CommsCheckFunc(void);
void LoopTimeFunc(void);

// PF 04-Nov-09 SDShortDelete and SDLongDelete added
//void SDShortDelete(void);
//void SDLongDelete(void);

// PF 15-Oct-09
void CalLoop18mAFunc(void);

//void AlarmBitsDebug(void); // PF Gen 2 - 17-Jan-12

// PF 05-Oct-09 ENBSENDEV was misspelt in amothelp
// PF 15-Oct-09 added CALLOOP functionality
// PF 15-Oct-09 removed VINCHECK functionality
const CommandStruct Commands[] =	{
		{"FREAD"     ,"",FramReTestFunc},
//		{"FWRITE"    ,"",FramWrTestFunc},
// AJB 15-Feb-10 Changed function to NULL instead of FlashCheckFunc as flash is no longer onboard
		//{"FLASH"    ,"",NULL},	//not currently used (flash mem not on new hardware)
// AJB 15-Feb-10 Reprogramming mod
		{"AT25D"    ,"",AT25DF041CheckFunc},
// AJB 15-Feb-10 EOM
		{"FACTRYINIT"  ,"",FactorySetFunc},
		{"YES"      ,"",InitSafeFunc},
		{"HELP"     ,"------------------------HELP MENU-------------------------",HelpFunc},
		{"MASTER"   ,"MASTER                  STATUS OF UNIT AS MASTER OR SLAVE",MasterSlaveFunc},
		{"TIME"     ,"TIME=hh;mm;ss           SET THE TIME",TimeSetFunc},
		{"DATE"     ,"DATE=dd;mm;yy           SET THE DATE",DateSetFunc},
		//{"AMOTHELP" ,"------------------------HELP MENU-------------------------",AmotHelpFunc},
		{"CAL"      ,"CAL=x                   ENTER 1 TO 14 FOR 18mA CALIBRATION",Cal18mAFunc},
		//{"PRTZ"     ,"PRTZ=x                  ENTER 1 TO 4 FOR PRT ZERO CALIBRATION",CalPRTZeroFunc},
		//{"PRTF"     ,"PRTF=x                  ENTER 1 TO 4 FOR PRT FULLSCALE CALIBRATION",CalPRTFullScaleFunc},
		{"DISPCAL"  ,"DISPCAL                 DISPLAY THE CALIBRATION VALUES",DisplayCalValuesFunc},
		{"OFFSET"   ,"OFFSET                  SET THE OFFSET FOR PEAK DETECTION",OffsetFunc},
		{"THRESHOLD","THRESHOLD               SET THE THRESHOLD FOR PEAK DETECTION",ThresholdFunc},
		{"SENSCALE" ,"SENSCALE=xxxx           SENSOR SCALING FACTOR, ENTER 4 DIGITS",SensorScalingFactorFunc},
		//{"TEMPS"    ,"TEMPS                   VIEW THE PRT TEMPERTURE READINGS",PRTReadFunc},				
		{"RESULTS"  ,"RESULTS                 RAW INPUT CHANNEL RESULTS IN COUNTS",InputResultsFunc},
		{"RPM"      ,"RPM                     REVS PER MINUTE",RPMFunc},
		//{"WEAR"     ,"WEAR                    RAPID WEAR DEBUG",WearFunc},
		//{"EVENT"    ,"EVENT                   EVENT INFO FOR DEBUGGING",EventInfoFunc},
		{"COMMS"    ,"COMMS=x                 COMMUNICATIONS, SET TO ZERO TO CLEAR",CommsCheckFunc},
		{"ENBOFF"   ,"ENBOFF=x                ENABLE THE OFFSET MAN FUNCTION x=0,1",EnableOffsetFunc},
		{"ENBCOMP"  ,"ENBCOMP=x               ENABLE THE COMPENSATION FUNCTION x=0,1",EnableCompensationFunc},
		{"ENBNREM"  ,"ENBNREM=x               ENABLE NOISE REMOVAL FUNCTION  x=0,1",EnableNoisRemovalFunc},
		//{"ENBSENDEV","ENBSENDEV=x             ENABLE THE SENSOR DEVIATION FUNCTION x=0,1",EnableSensorDeviationFunc},
		//{"ENBCYLAV" ,"ENBCYLAV=x              ENABLE THE CYLINDER AVERAGE FUNCTION x=0,1",EnableCylinderAverageFunc},
		//{"ENBCYLDEV","ENBCYLDEV=x             ENABLE THE CYLINDER DEVIATION FUNCTION x=0,1",EnableCylinderDeviationFunc},
		{"ENBROUGH" ,"ENBROUGH=x              ENABLE THE ROUGH CAL USE IN FINE CAL x=0,1",EnableCheckRoughCalFunc},
		{"FILTER"   ,"FILTER=xxx              FILTER INPUTS. ENTER A VALUE 1 to 1000",FilterValFunc},
		//{"DISANA"   ,"DISANA=x                ENABLE/DISABLE THE ANALOGUE FRONT END FOR ALL CHANNELS",DisAnalogFunc},
		//{"SETALL"   ,"SETALL=xxxx             ENTER VALUE FOR ALL CHANNELS IN MICRONS 4 DIGITS",SetAllFunc},
		//{"SETRPM"   ,"SETRPM=xx               ENTER VALUE FOR THE RPM 2 DIGITS",SetRPMFunc},
		{"SELCH"    ,"SELCH=xx                ENTER VALUE TO SELECT A CHANNEL 1 to 28",SelectChannelFunc},
		{"CHVAL"    ,"CHVAL=xxxx              ENTER VALUE FOR SELECTED CHANNEL (4 DIGITS)",SetCHValFunc},
		{"DEBUG"    ,"DEBUG=x                 1=ENABLE,0=DISABLE",DebugSerialFunc},
		//{"LOOP"     ,"LOOP=x                  LOOP TIME VALUES",LoopTimeFunc},
		{"CALLOOP"  ,"CALLOOP=x               ENTER 1 TO 8 FOR 18mA LOOP CALIBRATION",CalLoop18mAFunc},
		//{"SDSHORT"  ,"SDSHORT                 RUN SD SHORT TERM LOG DELETION",SDShortDelete},
		//{"SDLONG"   ,"SDLONG                  RUN SD LONG TERM LOG DELETION",SDLongDelete},
		//{"BITALARMS","BITALARMS               BIT ALARMS/EVENT LIST",AlarmBitsDebug},	// PF Gen 2 - 17-Jan-12 Added to show alarms
		{"","",NULL}	//THIS LINE MUST BE AT THE END OF THE ARRAY, THIS IS THE TERMINATOR!
		};								   

const char *e[]= 	{
					"INVALID COMMAND",
					"INCORRECT VALUE ENTERED",
					"INCORRECT PASSWORD",
					"OK",
					"USE: "
					};				  

char const *prompt = ":>";


void CLIBanner(void);

void DummyFunc(void)
{
}

/*
// PF 04-Nov-09 Run the short term log file deletion routine
void SDShortDelete(void) {
	SDShortTermOldFileDeletion();
}

// PF 04-Nov-09 Run the long term log file deletion routine
void SDLongDelete(void) {
	SDOldLogFileDeletion(sdcarddir.lterm);
}
*/

void SetupCLI(void)
{
	cmdbufptr = cmdbuf;
	eocmdbuf =  cmdbuf + CMDBUFFSIZE;
	CLIBanner();
	confirmation = 0;	//clear confirmation word
}


// PF 16-Oct-09 removed the ----- text from the clibanner() to save 132 words of code
void CLIBanner(void)
{
	sprintf(stringbuffer,"\r\n");
	CLITransmitBuffer(stringbuffer);
	sprintf(stringbuffer,"AMOT XTSW+ CLI\r\n");
	CLITransmitBuffer(stringbuffer);
	sprintf(stringbuffer,version);
	CLITransmitBuffer(stringbuffer);
	sprintf(stringbuffer,":>");
	CLITransmitBuffer(stringbuffer);
}

//*****************************************************************************
void HelpFunc(void)
{
short i=0;
	sprintf(stringbuffer,"\r\n");
	CLITransmitBuffer(stringbuffer);
	for(i=0;i<RESTRICTEDHELPLIST;i++)
	{
		sprintf(stringbuffer,"%s\r\n",Commands[i + HELPLISTSTART].HelpStr);
		CLITransmitBuffer(stringbuffer);
	}
}

//*****************************************************************************
/*
void AmotHelpFunc(void)
{
short i=0;
	sprintf(stringbuffer,"\r\n");
	CLITransmitBuffer(stringbuffer);
		for(i=0;i<RESTRICTEDAMOTHELPLIST;i++)
	{
		sprintf(stringbuffer,"%s\r\n",Commands[i + AMOTHELPLISTSTART].HelpStr);
		CLITransmitBuffer(stringbuffer);
	}
}
*/

void CommsCheckFunc(void)
{
int val;

	if( cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);	//index from zero
		if(val == 0)
		{
			ResetCommsCheck();
			WriteConfigStructtoNVMEM();
		}
	}
	else
	{
			sprintf(stringbuffer,"Com Regs:\r\n"); CLITransmitBuffer(stringbuffer);
			sprintf(stringbuffer,"WIOREQ:%lu\r\n",config.comms.wiorequest);	CLITransmitBuffer(stringbuffer);
			sprintf(stringbuffer,"WIOCLD:%lu\r\n",config.comms.wiocancelled); CLITransmitBuffer(stringbuffer);
			sprintf(stringbuffer,"WIOREC:%lu\r\n",config.comms.wioreceived); CLITransmitBuffer(stringbuffer);
			sprintf(stringbuffer,"SLVREQ:%lu\r\n",config.comms.slaverequest); CLITransmitBuffer(stringbuffer);
			sprintf(stringbuffer,"SLVREC:%lu\r\n",config.comms.slavereceived); CLITransmitBuffer(stringbuffer);
			sprintf(stringbuffer,"SLVRTY:%lu\r\n",config.comms.slaveretry); CLITransmitBuffer(stringbuffer);
			sprintf(stringbuffer,"PCREQT:%lu\r\n",config.comms.pcrequest); CLITransmitBuffer(stringbuffer);
			sprintf(stringbuffer,"PCTOUT:%lu\r\n",config.comms.pcreqtimeout); CLITransmitBuffer(stringbuffer);

	}
}

/*
// Removed spaces from Last: to correct spacing and save code space
void LoopTimeFunc(void)
{
int val;

	if( cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);	//index from zero
		if(val == 0)
		{
			ResetLoopCheck();
		}
	}
	else
	{
		sprintf(stringbuffer,"Min: %.2x:%.2x:%.2x Val: %f\r\n",loopcheck.min.hours,loopcheck.min.minutes,loopcheck.min.seconds,loopcheck.min.value);
		CLITransmitBuffer(stringbuffer);
		sprintf(stringbuffer,"Max: %.2x:%.2x:%.2x Val: %f\r\n",loopcheck.max.hours,loopcheck.max.minutes,loopcheck.max.seconds,loopcheck.max.value);
		CLITransmitBuffer(stringbuffer);
		sprintf(stringbuffer,"Last:         Val: %f\r\n",loopcheck.last.value);
		CLITransmitBuffer(stringbuffer);
	}
}
*/

/*
void EventInfoFunc(void)
{
	// PF 04-Nov-09 Shows eventlog id
	sprintf(stringbuffer,"EventID:%u,%u\r\n",eventlogvars.eventlogid,eventlogvars.eventlogwrapflag);
	CLITransmitBuffer(stringbuffer);
	// PF 04-Nov-09 EOM
}
*/
void FactorySetFunc(void)
{
	sprintf(stringbuffer,"Restore the factory defaults?\r\n");
	CLITransmitBuffer(stringbuffer);
	sprintf(stringbuffer,"Enter: YES to confirm\r\n");
	CLITransmitBuffer(stringbuffer);
	confirmation = 0xAA55;	//set pattern
}

void InitSafeFunc(void)
{
unsigned int i;

	if(confirmation == 0xAA55)	//check for confirmation
	{
		safe1.inputs.chanlowthreshold = config.inputs.chanlowthreshold = 1000;	 	//aprrox 5mA , remember saved as right justified
		safe1.inputs.chanhighthreshold = config.inputs.chanhighthreshold = 500;		//approx 2.6mA
		safe2.modbus.address = 1;					//default address
		allsensors.rpmlimit = 18;					//18rpm
		allsensors.dsss = 18;						//18rpm
		config.filter.inputtap = 500;				//default tap

		allsensors.alarmlevel = 500;				//default alarm level
		allsensors.slowdownlevel = 700;				//default slow down level
		safe2.log.mainrate = 0;						//mainlog off
		safe2.log.trendrate = 0;					//trend log off
		config.inputs.sensorscalingfactor = 3300;	//3.300mA = 1mm
		safe2.inputs.sensorscalingfactor = 3300;	//3.300mA = 1mm
		for(i=0;i<14;i++)
		{
			safe1.inputs.chan18ma[i] = 3880;		//set to full scale
			// PF 15-Oct-09 Added initialisation for analog18mA
			// AJB 15-Feb-10 Changed to use new xtswplusanacal structure
			//AJB 29-Oct-10 changed to 3280 (value seen for new channels with new REV'D' resistors fitted)
			xtswplusanacal.analog18ma[i] = 3280;		//set to full scale
		}
		//setup default for the battery input (do not change this as it effects all previous systems shipped)
		xtswplusanacal.analog18ma[3] = 3880;		//set to full scale
		for(i=0;i<MAX_NUM_PRT;i++)
		{
			safe2.inputs.calprtzero[i] = 2500;			//100ohm (0degC)
			safe2.inputs.calprtfullscale[i] = 3520;	//set to fullscale representing 100degC 138.51ohm
		}

		for(i=0;i<MAX_NUM_CHANNELS;i++)
		{
			offsetA.val[i] = 0;
			offsetB.val[i] = 0;
			WriteOffsetAtoNVMEM(i);
			WriteOffsetBtoNVMEM(i);
		}

		sdsettings.sequence = 0;
		SaveSDSettings();

		ClearMANTable(0);	//zero the man table // PF Gen 2 - 29-May-12 Added in parameter
		FRAMInit();			//initialise the FRAM
		SetAllEventMsgs();

		SaveSafeStruct1();
		SaveSafeStruct2();
		// AJB 15-Feb-10 Save new structure
		SaveXtswplusAnaCal();

		WriteConfigStructtoNVMEM();
		WriteAllSensorStructtoNVMEM();
		GeneralSettingstoSDCardFile();

		settings.ledflashflag = 1;	//SET TO FLASH
		sprintf(stringbuffer,"Factory Defaults Set\r\n");
		CLITransmitBuffer(stringbuffer);
		sprintf(stringbuffer,"Please RESET Unit\r\n");
		CLITransmitBuffer(stringbuffer);
		confirmation = 0;
	}
}
void InputResultsFunc(void)
{
unsigned int i;
	sprintf(stringbuffer,"Scaled Results\r\n");
	CLITransmitBuffer(stringbuffer);
	for(i=0;i<MAX_NUM_CHANNELS/2;i++)
	{
		sprintf(stringbuffer,"Ch %2u: %d %2u: %d\r\n",i+1,GetScaledValue(i),i+15,GetScaledValue(i+14));
		CLITransmitBuffer(stringbuffer);
	}

	// PF 14-Oct-09 added analogue display
	for(i=0;i<8;i++)
	{
		sprintf(stringbuffer,"An %2u: %d\r\n",i+1,inputs.analog.value[i]);
		CLITransmitBuffer(stringbuffer);
	}
	// PF 14-Oct-09 EOM

}

//Enable offset function

void EnableOffsetFunc(void)
{
unsigned int val;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);	//index from zero
		if(val == 0 || val == 1)
		{		
			function.enabled.applyoffset = val;
		}
	}
	else
	{
		sprintf(stringbuffer,"Offset fn %u\r\n",function.enabled.applyoffset);
		CLITransmitBuffer(stringbuffer);
	}
}


//Enable compensation function
void EnableCompensationFunc(void)
{
unsigned int val;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);	//index from zero
		if(val == 0 || val == 1)
		{
			function.enabled.sensorcompensation = val;
		}
	}
	else
	{
		sprintf(stringbuffer,"Sensor comp fn %u\r\n",function.enabled.sensorcompensation);
		CLITransmitBuffer(stringbuffer);
	}
}


void EnableNoisRemovalFunc(void)
{
unsigned int val;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);	//index from zero
		if(val == 0 || val == 1)
		{
			EnableNoiseFilter(val);
		}
	}
	else
	{
		sprintf(stringbuffer,"Noise fn %u\r\n",function.enabled.sensornoiseremoval);
		CLITransmitBuffer(stringbuffer);
	}
}


void EnableSensorDeviationFunc(void)
{
unsigned int val;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);	//index from zero
		if(val == 0 || val == 1)
		{
			function.enabled.sensordeviation = val;
		}
	}
	else
	{
		sprintf(stringbuffer,"Sensor Dev fn %u\r\n",function.enabled.sensordeviation);
		CLITransmitBuffer(stringbuffer);
	}
}
/*
void EnableCylinderAverageFunc(void)
{
unsigned int val;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);	//index from zero
		if(val == 0 || val == 1)
		{
			function.enabled.cylinderaverage = val;
		}
	}
	else
	{
		sprintf(stringbuffer,"Cyl Avg fn %u\r\n",function.enabled.cylinderaverage);
		CLITransmitBuffer(stringbuffer);
	}
}

void EnableCylinderDeviationFunc(void)
{
unsigned int val;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);	//index from zero
		if(val == 0 || val == 1)
		{
			function.enabled.cylinderdeviation = val;
		}
	}
	else
	{
		sprintf(stringbuffer,"Cyl Dev fn %u\r\n",function.enabled.cylinderdeviation);
		CLITransmitBuffer(stringbuffer);
	}
}
*/
void EnableCheckRoughCalFunc(void)
{
unsigned int val;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);	//index from zero
		if(val == 0 || val == 1)
		{
			function.enabled.useroughcal = val;
			
			if(val == 1)CheckRoughCalPoints(speedcompcoeffs.numsamples);
		}
	}
	else
	{
		sprintf(stringbuffer,"Rough used: %u\r\n",function.enabled.useroughcal);
		CLITransmitBuffer(stringbuffer);
	}
}

void DebugSerialFunc(void)
{
unsigned int val;
	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);	//index from zero
		if(val == 1)
		{
			settings.serialdebug = SERIAL_ENB;
		}
		else
		{
			settings.serialdebug = FALSE;
		}
	}
}

//Enable/disable the analogue front end and use input value from the CLI
/*
void DisAnalogFunc(void)
{
unsigned int val;
int i;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);	//index from zero
		if(val == 0)
		{
			settings.anadebug.enb = 0;
			for(i=0;i<MAX_NUM_CHANNELS;i++)SetScaledValue(i,0);	//set initial value in microns
		}
		if(val == 1)
		{
			settings.anadebug.enb = 1;
			InitSystemAlarms();
		}
	}
	else
	{
		sprintf(stringbuffer,"Analog DIS/ENB %u\r\n",settings.anadebug.enb);
		CLITransmitBuffer(stringbuffer);
	}
}

void SetAllFunc(void)
{
int val;
int i;
	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val =0;
		sscanf((char*)&cmdbuf[CommandLen + CommandOffset + 1], "%d", &val);
		if(val <= 9999 && val >=-1000 && settings.anadebug.enb == TRUE)
		{
			for(i=0;i<MAX_NUM_CHANNELS;i++) SetScaledValue(i,(int)val);	//set initial value in microns
		}
	}
}


void SetRPMFunc(void)
{
unsigned int val;
int i;
	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);	//index from zero
		if(val <= 200 && settings.anadebug.enb == TRUE)
		{
			allsensors.flags.newval = TRUE;		//set flag to say new value present when changing the rpm
			timers.debugupdate = 0;
			for(i=0;i<MAX_NUM_CHANNELS;i++) SetRPMChan(i, val);
		}
	}
}
*/
void SelectChannelFunc(void)
{
unsigned int val;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);	//index from zero
		if(val <= 28)
		{
			settings.anadebug.chan = val-1;		//index from zero
		}
	}
	else
	{
		sprintf(stringbuffer,"Ch = %u\r\n",settings.anadebug.chan+1);
		CLITransmitBuffer(stringbuffer);
	}
}

/*
void WearFunc(void)
{
	unsigned int val;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);	//index from zero
		if(val < 28)
		{
			sprintf(stringbuffer,"\r\n>>Sensor:%d, Fast:%2.2f, Slow:%2.2f, Rapid Wear:%2.2f<<\r\n",val,manref[val].presentstate,manref[val].reflevel,manref[val].refvalue); CLITransmitBuffer(stringbuffer);					
		}
		///
		else if(val >= 28 && val < 56)
		{			
			offsetA.val[val-28] = 10;
			damagemonignore[val-28] = 3; //ignore after changing the offset							
			iSensorInRepalce = val-28;
			iSensorInRepalceMode = TRUE;
			iSensorInRepalceTimer = TRUE;
		}
		///
	}
	else
	{
		sprintf(stringbuffer,"Ch = %u\r\n",settings.anadebug.chan+1);
		CLITransmitBuffer(stringbuffer);
	}
}
*/

void SetCHValFunc(void)
{
int val;
	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = 0;
		sscanf((char*)&cmdbuf[CommandLen + CommandOffset + 1], "%d", &val);
		if(val <= 9999 && val >=-1000 && settings.anadebug.enb == TRUE)
		{
			SetScaledValue(settings.anadebug.chan,(int)val);	//set initial value in microns
		}
	}
}


void MasterSlaveFunc(void)
{

	sprintf(stringbuffer,"Master=1/Slave=0\r\n");
	CLITransmitBuffer(stringbuffer);
	sprintf(stringbuffer,"Unit:%u\r\n",settings.mastermode);
	CLITransmitBuffer(stringbuffer);
}

void SensorScalingFactorFunc(void)
{
unsigned int val;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);	//index from zero
		config.inputs.sensorscalingfactor = safe2.inputs.sensorscalingfactor = val;		//ave for the slave unit
		if(settings.mastermode == TRUE) WriteConfigStructtoNVMEM();
		SaveSafeStruct2();	
	}
	else
	{
		sprintf(stringbuffer,"Sen Scaling Factor: %u\r\n",config.inputs.sensorscalingfactor);
		CLITransmitBuffer(stringbuffer);
	}
}

void RPMFunc(void)
{
	sprintf(stringbuffer,"Mode: %u RPM1: %u  RPM2: %u\r\n",GetModalRPM(0),GetCheckedRPM(1),GetCheckedRPM(2));
	CLITransmitBuffer(stringbuffer);
}


// PF 19-Oct-09 removed the ---- text from the DisplayCalValuesFunc() to save code, and a couple of spaces from messages
void DisplayCalValuesFunc(void)
{
unsigned int i;
	ReadAllFromEEPROM();		//readback and display
	sprintf(stringbuffer,"Calib Coeffs\r\n");
	CLITransmitBuffer(stringbuffer);
	sprintf(stringbuffer,"Ch Lo Thold:%u\r\n",config.inputs.chanlowthreshold);
	CLITransmitBuffer(stringbuffer);
	sprintf(stringbuffer,"Ch Hi Thold Offset:%u\r\n",config.inputs.chanhighthreshold);
	CLITransmitBuffer(stringbuffer);
	for(i=0;i<MAX_NUM_CHANNELS_SPU;i++)
	{
		sprintf(stringbuffer,"Ch %2u, 18mA: %u\r\n",i+1,safe1.inputs.chan18ma[i]);
		CLITransmitBuffer(stringbuffer);
	}
	// PF 15-Oct-09 added display of analog18ma calibration
	for(i=0;i<8;i++) {
		// AJB 15-Feb-10 Use new analogue calibration structure
		sprintf(stringbuffer,"An %2u, 18mA: %u\r\n",i+1,xtswplusanacal.analog18ma[i]);
		CLITransmitBuffer(stringbuffer);
	}
	// PF 15-Oct-09 EOM
	for(i=0;i<MAX_NUM_PRT;i++)
	{
		sprintf(stringbuffer,"PRT %2u, Zero/Fullscale: %u   %u\r\n",i+1,safe2.inputs.calprtzero[i],safe2.inputs.calprtfullscale[i]);
		CLITransmitBuffer(stringbuffer);
	}
}

void OffsetFunc(void)
{
unsigned int val;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);	//index from zero
		config.inputs.chanhighthreshold =  safe1.inputs.chanhighthreshold = val;
		if(settings.mastermode == TRUE) WriteConfigStructtoNVMEM();
		SaveSafeStruct1();
	}
	else
	{
		sprintf(stringbuffer,"Offset: %u\r\n",config.inputs.chanhighthreshold);
		CLITransmitBuffer(stringbuffer);
	}
}

void ThresholdFunc(void)
{
unsigned int val;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);	//index from zero
		config.inputs.chanlowthreshold =  safe1.inputs.chanlowthreshold = val;
		if(settings.mastermode == TRUE) WriteConfigStructtoNVMEM();
		SaveSafeStruct1();
	}
	else
	{
		sprintf(stringbuffer,"Threshold: %u\r\n",config.inputs.chanlowthreshold);
		CLITransmitBuffer(stringbuffer);
	}
}

void Cal18mAFunc(void)
{
unsigned int chan;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		chan = AsciitoInt(CommandLen + CommandOffset+1) - 1;	//index from zero
		if(chan < 14)
		{
			Calibrate18mA(chan);
			sprintf(stringbuffer,"%u\r\n",safe1.inputs.chan18ma[chan]);
			CLITransmitBuffer(stringbuffer);
		}
	}
	else
	{
		sprintf(stringbuffer,"ERROR!\r\n");
		CLITransmitBuffer(stringbuffer);
	}
}

// PF 15-Oct-09 added CalLoop18mA function
// Don't allow channel 3 as it is the battery channel
void CalLoop18mAFunc(void)
{
unsigned int chan;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		chan = AsciitoInt(CommandLen + CommandOffset+1) - 1;	//index from zero
		//AJB 02-Sep-10 changed to allow cal of battery input, very important on a lithium coin cell!!!!
		if(chan <8)
		{
			//due to very slow filtering and bridge resitance on divder it is easier to take the current value from the input
			//This should be set up with 2.7V and allowed to settle over time (probably 30 seconds)
			if(chan == 3)
			{
				xtswplusanacal.analog18ma[3] = inputs.analog.value[3];
				SaveXtswplusAnaCal();
			}
			else
			{
				CalibrateLoop18mA(chan);
			}
			// AJB 15-Feb-10 Used new analogue calibration structure
			sprintf(stringbuffer,"%u\r\n",xtswplusanacal.analog18ma[chan]);
			CLITransmitBuffer(stringbuffer);
		} else {
			sprintf(stringbuffer,"Invalid channel!\r\n");
			CLITransmitBuffer(stringbuffer);
		}

	}
	else
	{
		sprintf(stringbuffer,"ERROR!\r\n");
		CLITransmitBuffer(stringbuffer);
	}
}
// PF 15-Oct-09 EOM


void FilterValFunc(void)
{
unsigned int val;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);
		if(val == 0 || val > 1000)
		{
			sprintf(stringbuffer,"Error! Enter 1 to 1000 only\r\n");
			CLITransmitBuffer(stringbuffer);
		}
		else
		{
			config.filter.inputtap = (unsigned int)val;
			SaveSafeStruct2();	//store to non-vol
			settings.sdcardupdate = SDGENERALUPDATE;		//update the sd card settings
		}
	}
	else
	{
		val = config.filter.inputtap;
		sprintf(stringbuffer,"Filter coeff: %u\r\n",val);
		CLITransmitBuffer(stringbuffer);
	}
}

/*
void CalPRTZeroFunc(void)
{
unsigned int chan;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		chan = AsciitoInt(CommandLen + CommandOffset+1) - 1;	//index from zero
		if(chan < MAX_NUM_PRT)
		{
			CalibratePRT(0,chan);
			sprintf(stringbuffer,"%u\r\n",safe2.inputs.calprtzero[chan]);
			CLITransmitBuffer(stringbuffer);
		}
	}
	else
	{
		sprintf(stringbuffer,"ERROR!\r\n");
		CLITransmitBuffer(stringbuffer);
	}
}


void CalPRTFullScaleFunc(void)
{
unsigned int chan;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		chan = AsciitoInt(CommandLen + CommandOffset+1) - 1;	//index from zero
		if(chan < MAX_NUM_PRT)
		{
			CalibratePRT(1,chan);
			sprintf(stringbuffer,"%u\r\n",safe2.inputs.calprtfullscale[chan]);
			CLITransmitBuffer(stringbuffer);
		}
	}
	else
	{
		sprintf(stringbuffer,"ERROR!\r\n");
		CLITransmitBuffer(stringbuffer);
	}
}

void PRTReadFunc(void)
{
float temperature[4];
unsigned int i;

	for(i=0;i<MAX_NUM_PRT;i++)
	{
		temperature[i] = (float)sensor[i].prt;
		temperature[i] /= 10;
	}
	sprintf(stringbuffer,"Temp. Vals:\r\n");
	CLITransmitBuffer(stringbuffer);
	sprintf(stringbuffer,"%.1f  %.1f  %.1f  %.1f\r\n",temperature[0],temperature[1],temperature[2],temperature[3]);
	CLITransmitBuffer(stringbuffer);
}
*/
// PF 10-Nov-09 Changed TimeSetFunc() to optimize space
void TimeSetFunc(void)
{
	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		ConvertTime(CommandLen + CommandOffset+1);
		WriteClockData();
	}
	ReadClockData();
	sprintf(stringbuffer,"%.2x:%.2x:%.2x\r\n",clocktime.hours,clocktime.minutes,clocktime.seconds);
	CLITransmitBuffer(stringbuffer);
}

// PF 10-Nov-09 Changed DateSetFunc() to optimize space
void DateSetFunc(void)
{
	if( cmdbuf[CommandLen + CommandOffset] == '=')
	{
		ConvertDate(CommandLen + CommandOffset+1);
		WriteClockData();
	}
	ReadClockData();
	sprintf(stringbuffer,"%.2x/%.2x/%.2x  Day:%.1x\r\n",clocktime.date,clocktime.month,clocktime.year,clocktime.day);
	CLITransmitBuffer(stringbuffer);			
}

/*
void FramWrTestFunc(void)
{
int i;
unsigned int val;
unsigned long valueout;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		val = AsciitoInt(CommandLen + CommandOffset+1);
		if(val == 0)
		{
			sprintf(stringbuffer,"Clearing FRAM1/FRAM2\r\n");
			CLITransmitBuffer(stringbuffer);
			valueout = 0;
			for(i=0;i<16384;i++)
			{
				WriteNVMemory(FRAM1,i*2,(unsigned int*)&valueout,1);
				settings.watchdog = 1;	//kick the dog in the timer interrupt
			}
			for(i=0;i<16384;i++)
			{
				WriteNVMemory(FRAM2,i*2,(unsigned int*)&valueout,1);
				settings.watchdog = 1;	//kick the dog in the timer interrupt
			}
		}
		else
		{
			val -= 1;
			sprintf(stringbuffer,"Writing FRAM\r\n");
			CLITransmitBuffer(stringbuffer);

	  		valueout = MAGIC_NUMBER;	//send 0x12345678
		  	WriteNVMemory(val,FRAMMAGICNUMBER_POS,(unsigned int*)&valueout,2);
		}

	}
}
*/

void FramReTestFunc(void)
{
unsigned int valuein[2];
unsigned int val;

	if(cmdbuf[CommandLen + CommandOffset] == '=')
	{
		sprintf(stringbuffer,"Reading FRAM\r\n");
		CLITransmitBuffer(stringbuffer);
		val = AsciitoInt(CommandLen + CommandOffset+1) - 1;	//index from zero

		valuein[0] = 0;
		valuein[1] = 0;
		ReadNVMemory(val,FRAMMAGICNUMBER_POS,valuein,2);

		sprintf(stringbuffer," %x%x\r\n",valuein[1],valuein[0]);
		CLITransmitBuffer(stringbuffer);
	}
}


// AJB 15-Feb-10 Added a check for the hardware flash eeprom
//Check the at25 flash memory device is present and working
//This will carry out an erase, a write, and a read
//After the operation the device is erased
void AT25DF041CheckFunc(void)
{
int error;
int busy;

	sprintf(stringbuffer,"Erasing AT25DF041 check...");	CLITransmitBuffer(stringbuffer);
	EraseSPIFlash();
	reprogram.spi.status = 0;
	reprogram.spi.erase = 0;
	busy = 1;
	//timer kicked off in erasespiflash
	while(busy != 0 && timers.reprogram != 0)	//check busy and when finished check errors
	{
		busy = CheckSPIBusy();
		settings.watchdog = 1;
	}
	if(timers.reprogram == 0) error = TRUE;		//timer should not have reached zero
	else error = CheckEraseProgError();
	if(error == TRUE)
	{
		sprintf(stringbuffer,"FAILED\r\n");	CLITransmitBuffer(stringbuffer);
		return;
	}
	else
	{
		sprintf(stringbuffer,"PASS\r\n"); CLITransmitBuffer(stringbuffer);
	}

	sprintf(stringbuffer,"Programming AT25DF041 check...");
	CLITransmitBuffer(stringbuffer);
	if(ProgramCheckFunc() != 0) sprintf(stringbuffer,"FAIL\r\n");
	else sprintf(stringbuffer,"PASS\r\n");
	CLITransmitBuffer(stringbuffer);

	sprintf(stringbuffer,"Erasing AT25DF041 check...");	CLITransmitBuffer(stringbuffer);

	EraseSPIFlash();
	reprogram.spi.status = 0;
	reprogram.spi.erase = 0;
	busy = 1;
	//timer kicked off in erasespiflash
	while(busy != 0 && timers.reprogram != 0)	//check busy and when finished check errors
	{
		busy = CheckSPIBusy();
		settings.watchdog = 1;
	}
	if(timers.reprogram == 0) error = TRUE;		//timer should not have reached zero
	else error = CheckEraseProgError();
	if(error == TRUE)
	{
		sprintf(stringbuffer,"FAILED\r\n");	CLITransmitBuffer(stringbuffer);
		return;
	}
	else
	{
		sprintf(stringbuffer,"PASS\r\n"); CLITransmitBuffer(stringbuffer);
	}
}
// AJB 15-Feb-10 EOM
/*
// AJB 15-Feb-10 Removed function as flash is no longer installed on boards
#if 0	// - removed for testing of reprogramming

void FlashCheckFunc(void)
{
	CheckFlash();
	if(flashcheck.flash1 == 39)	sprintf(stringbuffer,"Flash1: %u OK\r\n",flashcheck.flash1);
	else sprintf(stringbuffer,"Flash1: %u FAIL\r\n",flashcheck.flash1);
	CLITransmitBuffer(stringbuffer);
	if(flashcheck.flash2 == 39) sprintf(stringbuffer,"Flash2: %u OK\r\n",flashcheck.flash2);
	else sprintf(stringbuffer,"Flash2: %u FAIL\r\n",flashcheck.flash2);
	CLITransmitBuffer(stringbuffer);
	if(flashcheck.flash3 == 39) sprintf(stringbuffer,"Flash3: %u OK\r\n",flashcheck.flash3);       
	else sprintf(stringbuffer,"Flash3: %u FAIL\r\n",flashcheck.flash3);
	CLITransmitBuffer(stringbuffer);
	if(flashcheck.flash4 == 39) sprintf(stringbuffer,"Flash4: %u OK\r\n",flashcheck.flash4);
	else sprintf(stringbuffer,"Flash4: %u FAIL\r\n",flashcheck.flash4);
	CLITransmitBuffer(stringbuffer);
}

#endif
*/
//********************************************************************************************
//Low level CLI functions - Alter with care!

			
//*****************************************************************************
// Checks the character received and acts on it.  Sets a "command ready" flag 
// when a CR is entered.  Repeats the last command if / entered.
//*****************************************************************************/
char HandleCharExt(void)
{
char cmd_rdy_flag = FALSE;				// initialise to command not ready

	switch (rxchar)
	{
	case BACKSLASH:				  	// repeats the last command	 
		cmd_rdy_flag = TRUE;
	break;

	case ESC:
		cmdbufptr = cmdbuf;
		rxcharcount = 0;                        
	break;

	case BS:					// handle backspace
	   	if (rxcharcount > 0)
		{
			rxcharcount--;
			cmdbufptr--;
			SendCLIChar(BS);
			SendCLIChar(SPACE);
			SendCLIChar(BS);
		}
		else
		{
			SendCLIChar(BELL);	      	// warn user if too many backspaces
		}
	break;

	case DEL:
		if (rxcharcount > 0)
		{
			rxcharcount--;
			cmdbufptr--;
			SendCLIChar(BS);
			SendCLIChar(SPACE);
			SendCLIChar(BS);
		}
		else
		{
			SendCLIChar(BELL);     // warn user if too many deletions
		}
	break;
	
	case CR:
		sprintf(stringbuffer,"\r\n");  
		CLITransmitBuffer(stringbuffer);
		*cmdbufptr = '\0';		// terminates command string with null
		cmd_rdy_flag = TRUE;
		cmdbufptr = cmdbuf;		// set pointer to start of buffer
		rxcharcount = 0;
	break;

	default:
		if (rxcharcount >= MAXCHARS)			// warn user if too many characters are entered
		{
			SendCLIChar(BELL);
   		}
		else
		{
			rxcharcount++; 
			*cmdbufptr = rxchar;
			cmdbufptr++;
			SendCLIChar(rxchar);		        // echos back
		}
	break;
	}	
	return cmd_rdy_flag;
}


//*****************************************************************************
// Checks that the command in the command buffer matches a valid command.
// Returns the position in the command lookup table of a valid command.
// Otherwise, returns -1 
//*****************************************************************************/
char ParseCmd (char *cmdptr,char *cmd_length)
{
unsigned char i=0;
	*cmd_length = strcspn(cmdptr,"=?, '\0'");			// check for length of command
									//looking for =, ? SPACE or NULL
	if(*cmd_length < 3)
		return -2;						//return -2 on return being pressed

	while(Commands[i].Prompt[0] != 0)
	{
		settings.watchdog = 1;
		if (strncmp ((const char*)Commands[i].Prompt,(const char*)cmdptr,*cmd_length) == 0)       	// checks for valid command
		{
			return i;		//returns array position of command
		}
		i++;
	}	
	return -1;
}                                          


//*****************************************************************************
// Processes valid terminal commands.
//*****************************************************************************
void HandleCmd(char cmd, char offset, char len)
{
	if(cmd == -1) 
	{
   		sprintf(stringbuffer,"ERROR!\r\n");
   		CLITransmitBuffer(stringbuffer);
   	}
   	else if(cmd == -2) return;			//return on no string entry
	else
	{
	   	CommandNum = cmd;				//static local store
		CommandLen = len;				//static local store
		CommandOffset = offset;			//static command offset
		Commands[cmd].CLIFunc();		//call the CLI function
	}
}


//*****************************************************************************
// Called on each pass through the main loop to process serial input
// NB parse_cmd returns the length of the command - this is to allow variable
// length commands in the future.
//*****************************************************************************
void PcCLI(void)
{
char cmd;
char len;
char * cmdptr = NULL;
char cmdoffset=0;

	rxchar = ReadCLIChar();

	if (rxchar != FALSE)
	{
		if(RxCharacterFlag == FALSE)
		{
			RxCharacterFlag = TRUE;			//set flag to true on receiving first character
			timers.rxcharTimeout = 4000;		//set 20 second timeout
		}
		if (HandleCharExt() == TRUE)
		{
			RxCharacterFlag = FALSE;		//reset flag on something sensible
			cmdptr = cmdbuf;				//set to start of buffer
			do
			{					   
				cmd = ParseCmd(cmdptr,&len);
				HandleCmd(cmd, cmdoffset,len);
				while(*cmdptr != ' ' && *cmdptr != ',' && *cmdptr != 0)
				{
					cmdptr++;
					cmdoffset++;
				}
				if(*cmdptr == ' '|| *cmdptr == ',')
				{
					cmdptr++;	//point to next command on same line
					cmdoffset++;
				}
				
			}while(*cmdptr != 0);	//continue until carriage return seen
			sprintf(stringbuffer,"%s",prompt);	//finish with the prompt
			CLITransmitBuffer(stringbuffer);
		}
	}
	if(RxCharacterFlag == TRUE && timers.rxcharTimeout == 0)	//we have timed out
	{
		cmdbufptr = cmdbuf;		// set pointer to start of buffer
		cmdbuf[0] = 0;				//reset to null
		rxcharcount = 0;			
		RxCharacterFlag = FALSE;
		sprintf(stringbuffer,"\r\n%s",prompt);	//return to a prompt
		CLITransmitBuffer(stringbuffer);
	}

}

//converts a character pointed to by i into a single char value 0 to 127
//the value input must be 0 to 9 only
char AsciitoSingleChar(unsigned int i)
{
return(cmdbuf[i] - 0x30);
}

//convert up to a 4 digit decimal to an int i.e. 0 to 9999
int AsciitoInt(unsigned int i)
{
int len;
int temp1 = 0;
int temp2 = 0;

	if(cmdbuf[i] != 0)
	{
		len = strlen(&cmdbuf[i]);
		if(len == 4)
		{
			temp1 = cmdbuf[i] - '0';	
			temp1 *= 1000;
			temp2 = cmdbuf[i+1] - '0';
			temp2 *= 100;
			temp1 += temp2;
			temp2 = cmdbuf[i+2] - '0';
			temp2 *= 10;
			temp1 += temp2;
			temp2 = cmdbuf[i+3] - '0';
			temp1 += temp2;
		}		
		else if(len == 3)
		{
			temp1 = cmdbuf[i] - '0';	
			temp1 *= 100;
			temp2 = cmdbuf[i+1] - '0';
			temp2 *= 10;
			temp1 += temp2;
			temp2 = cmdbuf[i+2] - '0';
			temp1 += temp2;
		}
		else if(len == 2)
		{
			temp1 = cmdbuf[i] - '0';
			temp1 *= 10;
			temp2 = cmdbuf[i+1] - '0';
			temp1 += temp2;			
		}
		else //len == 1
		{
			temp1 = cmdbuf[i] - '0';
		}		
	}
	return(temp1);
}

//convert the time input in ascii to BCD and store in
//			clocktime.hours = hour;
//			clocktime.minutes = mins;
//			clocktime.seconds = secs;
void ConvertTime(unsigned int i)
{
	clocktime.hours = AsciitoBCD(i);
	clocktime.minutes = AsciitoBCD(i+3);
	clocktime.seconds = AsciitoBCD(i+6);
}

//convert the date input in ascii to BCD and store
void ConvertDate(unsigned int i)
{
	clocktime.date = AsciitoBCD(i);
	clocktime.month = AsciitoBCD(i+3);
	clocktime.year = AsciitoBCD(i+6);
	clocktime.day = cmdbuf[i+9] - '0';	//convert character from position 9 (as the day)
}

//used to convert the time or date from ascii input to BCD
//i should point to the position of first number in cmd buffer
unsigned int AsciitoBCD(unsigned int i)
{
unsigned int temp1 = 0;
unsigned int temp2 = 0;

	if(cmdbuf[i] != 0)
	{
		temp1 = cmdbuf[i] - '0';
		temp2 = cmdbuf[i+1] - '0';
		temp1 <<= 4;
		temp1 += temp2;			
	}
	return(temp1);
}

//Input a ptr to the timestamp in BCD int format
//e.g. yrmnth, dayhr, minsec
//Will output to the rs232 serial in the following format,
// DD/MM/YY Hr:Mn:Sc
void BCDTimetoAsciiOutonCLI(unsigned int *ptr)
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
	CLITransmitBuffer(stringbuffer);	
}


//void AlarmBitsDebug(void) { debugBitAlarmList(); } // PF Gen 2 - 17-Jan-12 


