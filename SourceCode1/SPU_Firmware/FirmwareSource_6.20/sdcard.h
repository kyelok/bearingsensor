//sdcard header file
#ifndef sdcardH
#define sdcardH


//contains the SD card information
typedef struct tag_shorttermlogstruct
{
	unsigned long setupvalue;				//set to 0x12345678 once configured. if not configured setup for first time
	struct
	{
		char fileext[4];					//file extension, usually csv
		char currentfilename[12];			//file name currently being used
		unsigned long lastlogtimeinsecs;	//store the time in seconds when the last log was created
		unsigned int currentdate;
		struct
		{
			unsigned n1 :1;
			unsigned n2 :1;
			unsigned n3 :1;
			unsigned unused1 :1;
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

		}alarmevent;
	}sdcard;
	//maintain copies of the last two filenames
	struct
	{
		char filenamen1[12];				//file name -1
		char filenamen2[12];				//file name -2
	}sdshorttermfilenames;
}shorttermlogstruct;

typedef struct tag_longtermlogstruct
{
	struct
	{
		char fileext[4];					//file extension, usually csv
		char currentfilename[12];			//file name currently being used
		unsigned long lastlogtimeinsecs;	//store the time in seconds when the last log was created
		unsigned int logfilecreated;		//flag set once weekly file is created
	}sdcard;
}longtermlogstruct;


typedef struct tag_asciilogstruct
{
	struct
	{
		char fileext[4];					//file extension, usually csv
		char currentfilename[12];			//file name currently being used
		unsigned long lastlogtimeinsecs;	//store the time in seconds when the last log was created
	}sdcard;
}asciilogstruct;

//contains the SD card information
typedef struct tag_mansdstruct
{
	struct
	{
		char logdirname[8];					//storage for directory name, used for logging
		unsigned int sequence;				//number used to sequence file names e.g. man1 man2, man3 etc
		char fileext[4];					//file extension, usually csv
		char currentfilename[12];			//file name currently being used
	}sdcard;
}mansdstruct;

extern mansdstruct mansd;

typedef struct tag_sdsettingsstruct
{
	unsigned int present;
	unsigned int sequence;
	unsigned int errornum;		//on error this will contian a number relating to the type of error
	struct
	{
		int settings 		:1;
		int sensorstatus 	:1;
		int offsets			:1;
		int mantable		:1;
		int calibtd			:1;	// PF Gen 2 - 14-Nov-11 Added calibtd
		int unused6			:1;
		int unused7			:1;
		int unused8			:1;
		int unused9			:1;
		int unused10		:1;
		int unused11		:1;
		int unused12		:1;
		int unused13		:1;
		int unused14		:1;
		int unused15		:1;
		int unused16		:1;
	}readstatus;
}sdsettingsstruct;



typedef struct tag_sdfilestruct
{
	unsigned int year1;
	unsigned int month1;
	unsigned int date1;
	unsigned int yearn;
	unsigned int monthn;
	unsigned int daten;
	unsigned int readyear;
	unsigned int readmonth;
	unsigned int readdate;
	F_FILE *file;
	char readbuffer[MAX_SDREADBUFFER_LEN];				//used to read in ascii data from file (or binary!)
	unsigned long entryposition;		//point to the next log entry in the buffer
	unsigned int logtype;				//select the short term or long term log
	
	unsigned int directorystr[MAX_DIRNAME_LEN];			//directory name - stored as ints (i.e. two chars per int)
	unsigned int filenamestr[MAX_FILENAME_LEN];			//filename - stored as ints (i.e. two chars per int)
	unsigned long getnumwords;							//file length in words
	unsigned int setnumwords;							//set number of words to read from the file
	unsigned long setoffset;								//offset into file (in words)
	unsigned int readwriteflag;							//set to 1 for reading from sd to buffer, set to 2 for buffer to sd
	unsigned int readwriteprogress;						//flag set whilst operation in progress - cleared once complete
	//pointer to the next place in the readbuffer for the next (256 chars  - (preve chars read)) from file
}sdfilestruct;



typedef struct tag_sdcarddirstruct
{	//+1 for the NULL
char firstcaldir[MAX_DIRNAME_LEN_BYTES+1];
char roughcaldir[MAX_DIRNAME_LEN_BYTES+1];
char finecaldir[MAX_DIRNAME_LEN_BYTES+1];
char configdir[MAX_DIRNAME_LEN_BYTES+1];
char sterm[MAX_DIRNAME_LEN_BYTES+1];		//short term logging directory
char lterm[MAX_DIRNAME_LEN_BYTES+1];		//long term logging directory
}sdcarddirstruct;

typedef const char Messages[EVENTMSG_LEN_INBYTES+2];
extern Messages *pMsgList[NUM_EVENTS_IN_LIST];

extern sdfilestruct fileregs;
extern const sdcarddirstruct sdcarddir;
extern shorttermlogstruct shortterm;
extern longtermlogstruct longterm;
extern sdsettingsstruct sdsettings;

int FindFirstLogFile(const char * ptr);

unsigned int * ReadSDNextEntry(const char *ptr);
unsigned int * ReadSDEntryN(unsigned int n, const char *ptr);
unsigned int * ReadSDBuffer(unsigned int offset);

void ModifiySDEntryPosbyN(unsigned int n);
void ResetSDEntryPos(void);

int SDEventMessageUpdate(unsigned int mid, unsigned int *msgptr);
int SDReadEventMessage(unsigned int mid, unsigned int *msgptr);
int SDEventLogDelete(void);

int SDCardInitialise(void);
int SDShortTermLogUpdate(void);
int SDLongTermLogUpdate(void);
void ClearManCompSequence(void);
int MANCompTabletoSDCardFile(const char *dirptr,unsigned int sequence);
int EventLogtoSDCard(void);
int SDcardOpenFileforReading(void);
int SdcardReadFile(void);
void SaveSDSettings(void);
void PowerUpReadSD(void);
int SDShortTermOldFileDeletion(void);
int SDLongTermOldFileDeletion(const char *ptr);

void SetAllEventMsgs(void);
// PF Gen 2 - 08-Mar-12 Old event system backend removal - int SDEventUpdate(unsigned int eventid, unsigned int *msgptr);
int SDReadEvent(unsigned int eventid, unsigned int *msgptr);
// PF Gen 2 - 08-Mar-12 Old event system backend removal - int SDAckUpdate(unsigned int eventid, unsigned int *msgptr);
int SDCalcEventLogID(void);

void ProcessSDCard(void);

void SDCardLogUpdate(void);
void SDCardUpdate(void);
int OffsetstoSDCardFile(void);
int SensorStatustoSDCardFile(void);
int GeneralSettingstoSDCardFile(void);

int SDOpenBinforReading(const char *ptr);
int SDReadBinaryLogFile(void);

int ReadWriteTransferBuffer(void);
int GetFirstFileNameString(void);
int GetNextFileNameString(void);
long GetFileNumWords(void);

unsigned long BuildTimeStamp(void);

int CalibrationtdtoSDCardFile(void);	// PF Gen 2 - 14-Nov-11 Calibration to sd card
void RunTimeMinUpdate(void);	// PF Gen 2 - 10-May-12 routine to update runtime

#endif


