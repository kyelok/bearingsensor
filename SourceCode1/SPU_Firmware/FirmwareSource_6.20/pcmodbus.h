#ifndef pcmodbusH
#define pcmodbusH

#define MAX_PC_DATAWORDS 266

typedef enum tag_pcmodbuscodeenum
{
	//not all here in enums table some hard coded in pcmodbus...oh dear naughty naughty :-)
	ALARMSTRUCTTOPC				= 480,
	RTC_DAYUPDATE				= 512,
	NEWALARMEVENT				= 640,
	EVENTCODELISTSTATUS			= 641,
	EVENTCODELISTID				= 642,
	PCEVENTIDRETURN				= 643,
	READALLALARMEVENTS			= 644,
	CLEARALARMLISTAREA			= 645,
	REPLACEMENTEVENTS			= 646,
	ENGINERUNTIME				= 2071,
	ENG20PERCENTRPM				= 2073,
	DIRECTIONCALERROR			= 2074,
	MAN_APPLIED_MIN_SAMPLES		= 2075,
	NEWMANAVAILFLAG				= 3024,
	CALNUMPOINTS 				= 4154,
	CALNUMPOINTSEND 			= 4455,
	FUNCENBSTART				= 4608,
	FUNCENBEND					= 4615,
	DAMAGEMONSTART              = 4616,
	DAMAGEMONEND				= 4628,
	REFLEVELSTART				= 4650,
	REFLEVELEND					= 4677,
	PRESENTSTATELEVELSTART		= 4678,
	PRESENTSTATELEVELEND 		= 4705,
	REFVALUESTART				= 4706,
	REFVALUEEND					= 4733,
	CYLINDERSUMSTART			= 4734,
	CYLINDERSUMEND				= 4747,
	MBNEIGHBOURSUMSTART			= 4748,
	MBNEIGHBOURSUMEND			= 4761,
	SINGLEALARMLOWER		   	= 4762,
	CYLALARM					= 4763,
	MBNEIGHBOURALARM			= 4764,
	DELTARPM					= 4765,
	RPMAV						= 4766,
	RPMPREV						= 4767,
	SINGLE						= 4768,
	CYL							= 4769,
	MBSUM						= 4770,
	SINGLEPREV					= 4771,
	CYLPREV						= 4772,
	MBSUMPREV					= 4773,
	SINGLE1						= 4774,
	CYL1						= 4775,
	MBSUM1						= 4776,
	SINGLE2						= 4777,
	CYL2						= 4778,
	MBSUM2						= 4779,
	HITS						= 4780,
	SINGLEALARMUPPER		   	= 4781,
	DIRECTORYSTR 				= 8192,
	GETFIRSTFILENAMESTRING 		= 8196,
	GETNEXTFILENAMESTRING 		= 8197,
 	FILENAMESTR 				= 8198,
	GETFILENUMWORDS 			= 8204,
	SETNUMWORDS 				= 8206,
	SETFILEOFFSET 				= 8207,
	READWRITEFLAG 				= 8209,
	READWRITEPROGRESS 			= 8211,
	FILETRANSFERBUFFERSTART		= 8212,	//assign 127 reigsters for the trasnfer (this is 254 bytes)
// AJB 15-Feb-10 Reprogramming mod
	FILETRANSFERBUFFEREND 		= 8339,
	PROGRAMMINGKEYUPPER			= 8400,
	PROGRAMMINGKEYLOWER			= 8401,
	PROGRAMSTATUS				= 8402,
	ERASESPIFLASH				= 8403,
	DATABLOCKSIZE				= 8404,
	DATABLOCKSPIADDUPPER		= 8405,
	DATABLOCKSPIADDLOWER		= 8406,
	DATABLOCKSTART				= 8407,
	DATABLOCKEND				= 8534,
	SLAVECHECKCODES				= 8535
// AJB 15-Feb-10 EOM
}pcmodbuscodeenum;

//cannot enumerate beyond 32767
#define SLAVE_FIRMWAREVERSION 65534
#define FIRMWAREVERSION 65535

extern unsigned char modbusrxchar;

//--------------------------------------------
typedef struct tag_PCCmdStruct
{
	unsigned char SlaveAddr;
	unsigned char Func;
	unsigned int StartAdd;
	unsigned int NoReg;
	unsigned int ByteCount;
	unsigned int Data[MAX_PC_DATAWORDS];
	unsigned int errorflag;			//errorflag set if we have not transmitted anything for a while
}PCCmdStruct;

//--------------------------------------------
typedef struct tag_BearingWearReg
{
	unsigned int StartAdd;
	unsigned int EndAdd;
	char (*Func)(void);
}BearingWearReg;

typedef struct tag_modbusupdatestruct
{
	unsigned char live;		//flag used to signify update needed
	unsigned char logging;
}modbusupdatestruct;

// AJB 15-Feb-10 Added modbuscmdbuf
extern unsigned int modbuscmdbuf[266];
extern PCCmdStruct pcmodbus;
extern modbusupdatestruct modbusupdate;

extern unsigned char modbusrxchar;

void CalcCRC(unsigned int * ptr,unsigned int len,unsigned int * crc);
void PCModBus(void);
int ReadPCCommsFlag(void);

#endif

