#ifndef loggingH
#define loggingH

#include "define.h"
#include "fat.h"

#define MAX_LOGGING_BUFFER 264
#define MAXTRENDLOGRECORDS 49152
#define MAXMAINLOGRECORDS 146712
#define MAXEVENTLOGRECORDS 2976

#define STARTOFEVENTLOG 12910656
#define STARTOFTRENDLOG 12976128	//chip 4 currently used for trend log

#define LOGGINGREGUSED 22	//22 ints (for history and fast trend log, raw or compensated data)
#define EVENTREGUSED 6
#define EVENTREGSPACE 11

typedef struct tag_loggingstruct
{
//ptr stored in nonvol memory every time it is changed (use RAM in the clock IC)
//AJB 19-Aug-10 - removed unused logging variables (taking up space in RAM!)
//unsigned long mainptr;	//ptr to main log 12.31MB 12910656 bytes
//unsigned int mainwrapflag;	//flag indicating if the log is full adn overwriting
//unsigned long trendptr;	//ptr to trend log 4.125MB
//unsigned int trendwrapflag;	//flag indicating if the log is full adn overwriting
//place the array last in the structure this will not be backed up into the nonvol
//unsigned int readwritemode;	//set the log read write mode flag.  Set to write to update the flash over the pc485 
//unsigned int mainarrayptr;	//ptr value to the temporary ram logging array
//unsigned int mainarrayout[MAX_LOGGING_BUFFER];	//set up as 264 words of data
//unsigned int trendarrayptr;	//ptr value to the temporary ram logging array
//unsigned int trendarrayout[MAX_LOGGING_BUFFER];	//set up as 264 words of data
//unsigned int arrayin[MAX_LOGGING_BUFFER];	//set up as 264 words of data
//unsigned long recordptr;		//record ptr set from zero to 146712, or 49152 (for trend)
//unsigned int arrayrecordptr;	//set array record ptr to 0 to 5 (6 records in array)
//unsigned int selection;		//set for reading from main or trend log
//unsigned int eventwrapflag;		//flag indicating if the log is full and overwriting
//unsigned long eventptr;
//unsigned long eventrecordptr;	//record ptr set from zero to 2976
//unsigned int eventarrayptr;		//ptr value to the temporary ram logging array
//unsigned int eventarray[MAX_LOGGING_BUFFER];	//set up as 264 words of data
//unsigned int compprevious[14];	//this stores the previous compensated data
								//used when rpm is between WECA rpmlimit and DSSS
//unsigned int reload;			//used as a flag if the arrayin data has been corrupted, and needs reloading from flash								
//AJB 19-Aug-10 EOM
unsigned int nothing;
}loggingstruct;

//event log variables structure - place all variables pertaining to event log in this structure
//this will be stored to nv memory
typedef struct tag_eventlogvarsstruct
{
	unsigned int eventlogid;	//number for the last event to be logged (index from zero)
	unsigned int msgqueue;		//number of messages in queue
	unsigned int eventlogwrapflag;	//set once the event log has wrapped i.e. has 65536 records
}eventlogvarsstruct;

typedef struct tag_eventlogstruct
{
unsigned int eventid;									//integer value
unsigned int datetime[EVENT_DATETIME_LEN_INWORDS];		//contains timedate as a string
unsigned int msgstring[EVENTMSG_LEN_INWORDS];			//string
unsigned int msgstring2[EVENTMSG_LEN_INWORDS_PART2];	//string
unsigned int ackdatetime[EVENT_DATETIME_LEN_INWORDS];	//string
unsigned int ackstring[EVENT_ACK_STRING_LEN_INWORDS];	//string
unsigned int newalarmeventflag;							//set when there are new alarms waiting
unsigned int eventcodestatus;							//current status bits
unsigned int eventcode;									//current eventcode
unsigned int currentindex;								//index for current eventcode
unsigned int txalarmevents;								//number of alarm events transmitted to the pc - incremented on ever new transmission
}eventlogstruct;

typedef enum tag_eventcodeenum
{
	NO_EVENT,
	CAL_EVENT,
	ALARM_EVENT,
	WARNING_EVENT,
	SENSORFAIL_EVENT,
	SDCARDFAIL_EVENT
}eventcodeenum;


extern loggingstruct logging;
extern eventlogvarsstruct eventlogvars;		//event log variables
extern eventlogstruct eventlogentry;

void UpdateLog(void);
// void ClearMainLog(void); 
// void ClearTrendLog(void);
// void ClearEventLog(void);
void SetupEventRecordPointers(void);
void PowerupLoggingInit(void);
void ReadFlashLogRecords(void);
void ReadEventLogRecords(void);
void EventLogtoFlash(void);
void SetupLogWriteBack(void);
void UpdateLogWriteBack(unsigned int pos, unsigned int rawcomp);

// void ReplacementEvents(int num); // PF Gen 2 - 07-Mar-12 Replacement events no longer needed as done in PC
void SetupEventReadBack(unsigned int eventid);
unsigned int ReadEvent(unsigned int add);
// void LogEvent(unsigned int mid,int priority, int ackreqd,char *stringptr); // PF Gen 2 - 07-Mar-12 Old event system backend removal - 
// void EventAck(unsigned int eventid, unsigned int *ackstringptr);	// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - 

void ClearMSGQueue(void);
void MSGQueueNumfromPC(unsigned int val);
void ClearAlarmListandEventLog(void);
unsigned int ReadEventLogID(void);
unsigned int ReadMSGQueueNum(void);
unsigned int ReadLastEventID(void);

void ReadEventLogVarsStructfromNVMEM(void);

#endif


