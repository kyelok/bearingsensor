#ifndef alarmsH
#define alarmsH


//alarms structure relating to system set alarms

typedef struct tag_alarmsstruct
{
	unsigned slavefailure			:1;		//set when the loss of comms to spu2 has been established
	unsigned slavefailurelatched 	:1;
	unsigned framfailure 			:1;
	unsigned framfailurelatched 	:1;
	unsigned pccommsfailure			:1;
	unsigned pccommsfailurelatched	:1;
	unsigned unused7 				:1;
	unsigned unused8				:1;
	unsigned unused9 :1;
	unsigned unused10 :1;
	unsigned unused11 :1;
	unsigned unused12 :1;
	unsigned unused13 :1;
	unsigned unused14 :1;
	unsigned unused15 :1;
	unsigned unused16 :1;
}alarmsstruct;

typedef struct tag_status3struct
{
	unsigned nopulse		:1; //for analogue system this is set if no pulse has been detected
	unsigned low			:1; //set for less than 3mA
	unsigned high			:1; //set for > 19mA
	unsigned rpmoor 		:1;
	unsigned unused5 		:1;
	unsigned unused6 		:1;
	unsigned unused7 		:1;
	unsigned unused8 		:1;
	unsigned nopulselatched :1;
	unsigned lowlatched 	:1;
	unsigned highlatched 	:1;
	unsigned rpmoorlatched 	:1;
	unsigned unused13 		:1;
	unsigned unused14 		:1;
	unsigned unused15 		:1;
	unsigned unused16 		:1;
}status3struct;

extern int noisefilterLOAD[MAX_NUM_CHANNELS];
extern int damagemonignore[MAX_NUM_CHANNELS];	//AJB 19-Aug-10 for damage monitoring filtering ignore
extern status3struct status3[MAX_NUM_CHANNELS]; //status relating to no pulse or less than 3mA or > 19mA
extern alarmsstruct alarms;

status3struct * Status3Flags(unsigned int chan);
void InitSystemAlarms(void);
void SystemChecks(void);
void SetNoPulseFlag(unsigned int chan,unsigned int flag);
unsigned int GetNoPulseFlag(unsigned int chan);
alarmsstruct * GetAlarmFlags(void);

extern unsigned int bitalarmlist[33]; // PF Gen 2 - 16-Jan-12 Added in bit alarm list
extern unsigned int biteventlist[16][3]; // PF Gen 2 - 06-Mar-12 eventlist
extern unsigned int biteventpos; // PF Gen 2 - 06-Mar-12 eventlist


//enum mlist used to access the list from the FRAM.  This is an offset into the eventcode section of fram
//Use the channel number to offset into each section
//e.g. for cylinder 5 == (CYLINDERDEV+4)*4  (*4 as stored as longs (4 bytes)) this will give the offset into fram
typedef enum tag_alarmcode
{
	SENSORABS 			= 0,		//28 	assign space for 28 absoulte sensor alarms
	SENSORSLOWDOWN 		= 28,		//28	sensor slow down alarms
	NOSENSPULSE			= 56,		//28	no pulse alarms
	LOWPULSE 			= 84,		//28	low pulse alarms
	HIPULSE 			= 112,		//28	high pulse alarms
	SENSORDEV 			= 140,		//28	sensor deviation alarms
	SENSORDEVSLOWDOWN 	= 168,		//28	sensordevslowdown alarms
	SENSORPREWARN 		= 196,		//28	sensor prewarning alarms
	MANCALALARM 		= 224,		//28	man calbiration alarm
	CYLINDERDEV		 	= 252,		//14	cylinder deviation alarms
	WIOALARM 			= 266,		//1		water in oil alarm
	WIOCOMMS 			= 267,		//1		water in oil comms failure
	SPU2COMMS 			= 268,		//1		spu2 (slave comms failure)
	RTCFAIL 			= 269,		//1		RTC failure
	FRAMFAIL 			= 270,		//1		FRAM failure
	RPMOOR				= 271,		//28	rpm seen out of modal range
	WIOALARMUPPER		= 299,		//1		water in oil upper alarm
	DAMAGESINGLESLOWDOWN= 300,		//28	Damage Monitoring Slow down
	DAMAGECYLSLOWDOWN	= 328,		//14    Cylinder sum slow down
	DAMAGEMBSUMSLOWDOWN = 342,		//14    MB Neighbour sum slow down
	SLEMOORLO			= 356,		//1		SLEM Out of Range // PF Gen 2 - 26-Jan-12 changed define from SLEMOOR
	RTCBATLOW			= 357,		//1		RTC Battery Low
	SLEMALARM			= 358,		//1		SLEM ALARM LEVEL Reached
	WIOANALOGLO			= 359,		//PF Gen 2 - 26-Jan-12 added new alarm code
	WIOANALOGHI			= 360,		//PF Gen 2 - 26-Jan-12 added new alarm code
	SLEMOORHI			= 361,		//PF Gen 2 - 26-Jan-12 added new alarm code
	SDCARDERRORALARM	= 362		//PF Gen 2 - 30-Apr-12 added new alarm code
//always update the NUM_ALARMEVENTS in define.h when adding to the enum
//total space required in bytes = 1200
//stored on the second FRAM device
//allocate spave on fram for 2048 bytes allowing for 512 indexing of eventcode
}alarmcodeenum;

void ClearEventCodeListArea(void);
// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - void WriteEventCodeNVMEM(unsigned int codepos, unsigned int id, unsigned int status);
// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - void ReadEventCodeNVMEM(unsigned int codepos, unsigned int *dest);
unsigned int * ReadFirstEventCode(void);
void AlarmEventIDInc(unsigned int eventidin);
// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - void SetStatusforAlarmEvent(unsigned int eventid,unsigned int alarmmask, unsigned int onoff);
void SetAlarmEvent(unsigned int index); // PF Gen 2 - 08-Mar-12 Remove unsigned int eventid // PF Gen 2 - 17-May-12 removed unsigned int status
// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - void ClearAlarmEventonID(unsigned int eventid);
// PF Gen 2 - 26-Jan-12 Old alarm system backend removal - void ClearAlarmEventBit(unsigned int index);
void ClearAlarmEvent(unsigned int index); // PF Gen 2 - 17-May-12 removed cleardown
void ClearStatusFlagsforSlave(void);

void bitEventIncrement(void); // PF Gen 2 - 06-Mar-12 Added in function to change position of bit event store
void SetBitEvent(unsigned int index);  // PF Gen 2 - 06-Mar-12 Added in function to store bit
void ClearBitEvent(unsigned int index);   // PF Gen 2 - 06-Mar-12 Added in function to clear bit
unsigned int BitEventCompiled(unsigned int index); // PF Gen 2 - 06-Mar-12 Added in function to combine bit events
void BearingStatus(void); // PF Gen 2 - 27-Mar-12 Added in function to create bearing statuses
int CheckAlarmBitSet(unsigned int index); //PF Gen 2 - 30-Apr-12 Alarm bit check

// PF Gen 2 - 07-Mar-12 added new logevent codes for digital event system
typedef enum tag_logeventcode
{
	POWERON_EVENT					= 0,
	DIRECTIONCAL_CLEAR_EVENT		= 1,
	DIRECTIONCAL_DETERMINE_EVENT	= 2,
	PREWARN_INIT_EVENT				= 3,
	CALIBRATION_ABORTED_EVENT		= 4,
	FULL_AUTO_CALIBRATION_EVENT		= 5,
	CAL_STAGE_1_START_EVENT			= 6,
	CAL_STAGE_2_START_EVENT			= 7,
	CAL_STAGE_3_START_EVENT			= 8,
	CAL_COMPLETE_EVENT				= 9,
	CAL_FINE_START_EVENT			= 10,
	OFFSET_ADJUST_EVENT				= 11,	// 28
	WIO_ERROR_CODE_EVENT			= 39

}logeventcodeenum;
// PF Gen 2 - 07-Mar-12 EOM


// PF Gen 2 - 26-Mar-12
// Structure for bearing status
typedef struct tag_bearingstatusstruct
{
	unsigned int MainBearings[16];
	unsigned int CrankPinBearings[14];
	unsigned int CrossHeadBearings[14];
} bearingstatusstruct;

extern bearingstatusstruct bearingstatus;
// PF Gen 2 - 26-Mar-12 EOM

#endif


