#ifndef globalsH
#define globalsH

#include "define.h"
#include "fat.h"

typedef struct tag_timers
{
// unsigned long mainlograte;	// PF Gen 2 - 04-Jan-12 Removed spare timer
// unsigned long trendlograte;	// PF Gen 2 - 04-Jan-12 Removed spare timer
unsigned int update;
unsigned int general;
unsigned int rxcharTimeout;
unsigned int wiorxtimeout;
unsigned int wiomasterrxtimeout;
unsigned int masterrxtimeout;
unsigned int slaverxtimeout;
unsigned int sectick;
unsigned int ledflash;
unsigned int prtsettle;
unsigned int chantimeout[14];	//timeouts for 14 analog channels
unsigned int chanwait[14];
unsigned int pcrxtimeout;
unsigned int pctxtimeout;
unsigned int spistatus;
unsigned int rpm;
unsigned int slaverqst;
// unsigned int test;		// PF Gen 2 - 04-Jan-12 Removed spare timer
unsigned int mastermodebutton;
unsigned int dcmode;
unsigned long calibrate;
unsigned long calibrate2;
unsigned int alarmreflash;
unsigned int slowdownreflash;
// unsigned int maxmintimer; 	// PF Gen 2 - 04-Jan-12 Removed spare timer
// unsigned int sdshortterm;	// PF Gen 2 - 04-Jan-12 Removed spare timer
// unsigned int sdlongterm;		// PF Gen 2 - 04-Jan-12 Removed spare timer
unsigned int wiorqst;
unsigned int rpmtimeout;
unsigned int analogoor;
unsigned int motioncal;
unsigned int framcheck;
unsigned int pcmodbus;
unsigned int statusreflash;
unsigned long prewarn;
unsigned int clocktofram;
unsigned int debugrapidfast;
// unsigned int engrunt;	// PF Gen 2 - 04-Jan-12 Removed spare timer
unsigned int debugupdate;
unsigned int dircountdown;
unsigned int startup;
// PF 14-Oct-09 added analogsettle timer
unsigned int analogsettle;
// AJB 15-Feb-10 Reprogramming mod
unsigned int reprogram;
unsigned int reprogramtimeout;
// AJB 15-Feb-10 EOM
unsigned int dcmodestayalive;	// PF Gen 2 - 04-Jan-12 Added in new timer
unsigned int biteventchange;	// PF Gen 2 - 06-Mar-12 Added in new timer
unsigned int iSensorReplace;	// 11-27-2012 FF: add for replace sensor
unsigned long deltarpm15Delay;
}timersstruct;


typedef struct tag_clockstruct
{
	unsigned int WPstate;
	unsigned int seconds;
	unsigned int minutes;
	unsigned int hours;
	unsigned int day;
	unsigned int date;
	unsigned int month;
	unsigned int year;
	unsigned int control;		//control byte from clock
	unsigned long framstamp;	//stamp in seconds since year 2000
	unsigned int clockerr;		//set to true on error
}clockstruct;



//COnfiguration structure of various settings relatin to spu
typedef struct tag_configstruct
{
	struct
	{
		unsigned int inputtap;	//value between 1 and 500 representing the strength of the filter applied to the ips
	}filter;
	struct
	{
		unsigned int bitmap;
	}alarmenable;
	struct
	{
		unsigned int graphvalue;
	}trendmax;
	struct
	{
		unsigned int chanlowthreshold;		//in atod counts left justified (e.g. represents say 5mA)
		unsigned int chanhighthreshold; 	//upper limit (e.g. represents 1mA, i.e.1mA less than peak detected)
		unsigned int sensorscalingfactor;	//scaling for channels
	}inputs;
	struct
	{
		unsigned int shortlrate;		//short term sd card log rate
		unsigned int longlrate;			//long term sd card log rate
	}sdsettings;
	struct
	{
		unsigned long wiorequest;
		unsigned long wiocancelled;
		unsigned long wioreceived;
		unsigned long slaverequest;
		unsigned long slavereceived;
		unsigned long slaveretry;
		unsigned long pcrequest;
		unsigned long pcreqtimeout;
	}comms;
}configstruct;


typedef struct tag_loopcheckstruct
{
	struct
	{
		unsigned int hours;
		unsigned int minutes;
		unsigned int seconds;
		float value;
	}min;
	struct
	{
		unsigned int hours;
		unsigned int minutes;
		unsigned int seconds;
		float value;
	}max;
	struct
	{
		float value;
	}last;
	float value;
}loopcheckstruct;


typedef struct tag_settingsstruct
{
	unsigned int watchdog;
	unsigned int ledflashflag;
	unsigned int updatesafe;
	unsigned int tableconfigtype;			//contians which lookup table the modbus reg's refer to
	unsigned int caltableconfigtype;		//contains lookup value for accumulation etc for calibration (used in debugging)
	unsigned int eventmsgid;
	unsigned int configoperationcomplete;	//set to 1 when dat in table is valid, cleared by SPU when update complete
	unsigned int sdcarderr;
	unsigned int sderase;
	unsigned int sdreinit;
	unsigned int sdcardupdate;
	unsigned int cardreadflag;
	unsigned int ignore;
	unsigned int dcmode;
	unsigned int spiinuse;					//set when using spi (External uart uses this to check status of spi)
	unsigned int dcpeakhold;
	unsigned int dcpause;					//AJB 19-Aug-10	(new mode for pausing during dc mode)
	unsigned int mastermode;
	unsigned int updatescaling;
	unsigned int forwardasternflag;			//flag set for astern
	unsigned int initprogress;
	unsigned int dircountdown;
	unsigned int slowdowncounter;			//counter used in the adc interrupt for counting down when to blip the pin for slow down condition
	unsigned int slowdowncondition;
	unsigned int slowdownlevel;				//abs slow down level filtered val
	unsigned int alarmlevel;				//abs alarm limit used during running and cal (filtered val)
	unsigned int slowdowndevlevel;			//slow down deviation level
	unsigned int alarmdevlevel;				//alarm deviaiton level
	unsigned int cylinderalarmlevel;		//cylinder alarm level
	//07-25-2013 FF: add these two flags
	unsigned int temperaturealarm;			//alarm from temperature sensors
	unsigned int temperatureslowdown;		//slowdown from temperature sensors

	struct
	{
		unsigned int enb;
		unsigned int chan;
	}anadebug;
	unsigned int serialdebug;
	unsigned int timerrunning;		//flag set when the timer is running, this stops when outside the speed bands for rough cal, finecal also for prewarning
	unsigned int rpm;				//hardware rpm figure - not used for algorithms dispaly only
}settingsstruct;

extern settingsstruct settings;

//Structure containing variables to be saved to NONVOL
//Includes calibration info
//safe1 contains the 4-20mA peak cal info
//Add new variables to the end of the structure, inserting into the structure will mean errors on software updates.
typedef struct tag_safestruct1struct
{
	struct
	{
		unsigned int chanlowthreshold;		//in atod counts left justified (e.g. represents say 5mA)
		unsigned int chanhighthreshold; 	//upper limit (e.g. represents 1mA, i.e.1mA less than peak detected)
		unsigned int chan18ma[14];			//16bit val stored for 18mA calibration
		unsigned int notused[14];			// AJB 15-Feb-10 do not use these here...leave blank for compatability to gen1
	}inputs;
	struct
	{
		unsigned int enabled;
	}watchdog;
}safestruct1struct;


// AJB 09-Feb-10 Added for the new hardware analogue channel calibration.  These cal factors must be placed outside of used areas for
// backwards compatability
typedef struct tag_xtswplusanastruct
{
	unsigned int analog18ma[14];		//16bit val stored for analog 18mA calibration
}xtswplusanastruct;
// AJB 09-Feb-10 EOM

//safe2 contains the PRT cal coeffs
//Not notused fields must be maintained in order to keep sync with hardware already in the field
//DO NOT CHANGE THE POSITION OF COEFFICIENTS
typedef struct tag_safestruct2struct
{
	struct
	{
		unsigned int calprtzero[4];			//represents 100 oh input (0degC)
		unsigned int calprtfullscale[4];	//represents 175.86ohm (200degC)
		unsigned int sensorscalingfactor;	//scaling for 14 channels
		unsigned int unused1;
		unsigned int unused2;
	}inputs;
	struct
	{
		unsigned int mainrate;		//not used gen1.5
		unsigned int trendrate;		//not used gen1.5
		unsigned int unused1;
	}log;
	struct
	{
		unsigned int address;
	}modbus;
	struct
	{
		unsigned int inputtap;	//value between 1 and 500 representing the strength of the filter applied to the ips
		unsigned int unused1;
	}filter;
	struct
	{
		unsigned int notused1;
		unsigned int notused2;
		unsigned int notused3;
	}alarms;
	struct
	{
		unsigned int rate;
	}modbusbaud;
	struct
	{
		unsigned int notused1;
		unsigned int notused2;
	}modbus2;
	struct
	{
		unsigned int notused1;
		unsigned int notused2;
		unsigned int notused3;
		unsigned int notused4;
	}sync;
	struct
	{
		unsigned int bitmap;
	}alarmenable;
	struct
	{
		unsigned int graphvalue;
	}trendmax;
	struct
	{
		unsigned int notused1;
	}tempcomp;
}safestruct2struct;

typedef struct tag_allsensorstruct
{
	unsigned int numsensors;		//number of sensor installed on the system max 28
	unsigned int numsensorsspu1;	//number of sensor installed on spu1
	unsigned int numsensorsspu2;	//number of sensor installed on spu2
	unsigned int nominalspeed;			//nominal speed of engine e.g. 100RPM
	unsigned int rpmmin;				//store the rpm minimum, this wil be the lowest point to calibrate to e.g. 20% of nominal
	unsigned int rpmmax;				//store the rpm maximum, this is the highest point in the table
	unsigned int reflash;		//set the reflash rate for the digital outputs
	//setup hysteresis values relating to sensors alarms, slow down
	int sensorhysteresis;	
	int cylinderhysteresis;
	unsigned int slowdownlevel;
	unsigned int alarmlevel;
	unsigned int slowdowndevcallevel;
	unsigned int alarmdevcallevel;
	unsigned int slowdowndevlevel;
	unsigned int alarmdevlevel;
	unsigned int cylinderalarmlevel;
	struct
	{
		unsigned newval 			:1;	//bit set when new val is ready
		unsigned calmode 			:1;	//set when in calmode
		unsigned startcal			:1;	//begin a calibration (this will trigger initcal)
		unsigned newvalspu2			:1;	//new value from slave spu
		unsigned unused 			:12;	//unused bits

	}flags;
	unsigned int slowdownack;	//ack back from pc
	unsigned int alarmack;		//ack back from pc
	unsigned int maxmintimer;	//store for the maximum and minimum timer in minutes, this will reflect how long to look for max a min value
	unsigned int enginedircal;	//store for whether the engine direction has been determined
	unsigned int dirorder[MAX_NUM_CHANNELS_SPU];	//direction order 14 values showing the order of firing
	unsigned int prewarningtimer;	//pre warning timer set in minutes for the deviation pre warning check
	unsigned int prewarninglevel;	//pre warning limit
	unsigned int rpmlimit;			//rpmlimit
	unsigned int dsss;				//data storage set point
	unsigned int slowdowncallevel;	//slow down level for absolute value during learning
	unsigned int alarmcallevel;		//abs alarm level during learning
	unsigned int cylinderalarmcallevel;	//alarm cyl	level during learning
	struct
	{
		unsigned int slowdowncntrl		:1;			//AJB 19-Aug-10 slow down blip control, allow the blipping of the output to be switched off
		unsigned int unused				:15;
	}bits;
	unsigned int iBarredVibrationSpeedLow;
	unsigned int iBarredVibrationSpeedHigh;	
	//unused variables - delete as new stuff added
}allsensorstruct;
//size should not exceed 45 ints as this will effect the size allocated on the sd card


typedef struct tag_engingestruct
{
	unsigned long runtime;		//engine runtime in minutes
}enginestruct;



typedef struct tag_cylinderstruct
{
	struct
	{
		unsigned alarmack 		:1;	//ack back from pc
 		unsigned unused2 :1;
		unsigned unused3 :1;
		unsigned unused4 :1;
		unsigned unused5 :1;
		unsigned unused6 :1;
		unsigned unused7 :1;
		unsigned unused8 :1;
		unsigned unused9 :1;
		unsigned unused10 :1;
		unsigned unused11 :1;
		unsigned unused12 :1;
		unsigned unused13 :1;
		unsigned unused14 :1;
		unsigned unused15 :1;
		unsigned unused16 :1;
	}status1;
	struct
	{
		unsigned alarm   		:1;	//alarm bit set for cylinder alarm
 		unsigned alarmlatched 	:1;	//set once the alarm has been latched
		unsigned unused3 :1;
		unsigned unused4 :1;
		unsigned unused5 :1;
		unsigned unused6 :1;
		unsigned unused7 :1;
		unsigned unused8 :1;
		unsigned unused9 :1;
		unsigned unused10 :1;
		unsigned unused11 :1;
		unsigned unused12 :1;
		unsigned unused13 :1;
		unsigned unused14 :1;
		unsigned unused15 :1;
		unsigned unused16 :1;
	}status2;
	int average;		//average of two sensors
	int deviation;		//deviation cylinder to cylinder
}cylinderstruct;


typedef struct tag_motionstruct
{
unsigned int counter;
unsigned int ready;
int order[2];
int forwardasternflag;
int forwardasternflagprev;
int recalnow;	//flag set when cal needed
int calerror;
int recheckdir;
}motionstruct;



typedef struct tag_livestruct
{
	unsigned int yrmnth;
	unsigned int datehrs;
	unsigned int minssecs;
}livestruct;

// PF Gen 2 - 14-Nov-11 Added in new structure to store time and date for calibration process
typedef struct tag_calibrationdatetimestruct
{
	struct
	{
		unsigned int yrmnth;
		unsigned int datehrs;
		unsigned int minssecs;
	}calcomplete;
	struct
	{
		unsigned int yrmnth;
		unsigned int datehrs;
		unsigned int minssecs;
	}verification;
	unsigned int chksum;
}calibrationdatetimestruct;
// PF Gen 2 - 14-Nov-11 EOM



extern motionstruct motion;
extern livestruct livetime;		//live time storage as ints
extern livestruct logtime;		//live time storage with seconds rounded

extern calibrationdatetimestruct calibrationtd;	// PF Gen 2 - 14-Nov-11 Added in new structure to store time and date for calibration process

extern safestruct1struct safe1;			//structure 1 to go to NONVOL
extern safestruct2struct safe2;
// AJB 09-Feb-10 New structure for analogue calibration
extern xtswplusanastruct xtswplusanacal;

extern clockstruct clocktime;			//default clock store
extern volatile timersstruct timers;

extern allsensorstruct allsensors;
extern enginestruct engine;
extern cylinderstruct cylinders[MAX_NUM_CHANNELS/2];	//half the number of channels (two sensors per cylinder)
extern configstruct config;	//config structure of various settings saved to fram and sd card
extern unsigned int transferbuffer[TRANSFER_LENGTH_INWORDS];
extern loopcheckstruct loopcheck;
#endif



