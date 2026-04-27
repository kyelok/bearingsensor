#ifndef wioH
#define wioH


typedef struct tag_wioalarmstruct
{
	unsigned alarmupper			:1;
	unsigned alarmupperlatched	:1;
	unsigned alarm   			:1;
	unsigned alarmlatched		:1;
	unsigned comms	 			:1;
	unsigned commslatched		:1;
	unsigned analoglow 			:1;
	unsigned analoghigh			:1;
	unsigned unused9 			:1;
	unsigned unused10 			:1;
	unsigned unused11 			:1;
	unsigned unused12 			:1;
	unsigned unused13 			:1;
	unsigned unused14 			:1;
	unsigned unused15 			:1;
	unsigned unused16 			:1;
}wioalarmstruct;


typedef struct tag_waterinoilstruct
{
unsigned int netadd;	//network addres on the 485 network
float temperature;
float activity;
float content;
int temperature_int;		//values stored as an integer
int activity_int;
int content_int;
wioalarmstruct wioalarms;
}waterinoilstruct;

typedef struct tag_wiosettingsstruct
{
unsigned int enabled;	//digital comms enabled = 1, analog enabled = 2
unsigned int alarmmask;	//set if wio not to cause alarms
unsigned int alarmupperlevel;
unsigned int alarmlevel;
unsigned int hysteresis;
unsigned int scaledmin;	// PF Gen 2 - 16-Nov-11 Changed from unused to WIO Scaled Min
unsigned int scaledmax;	// PF Gen 2 - 16-Nov-11 Changed from unused to WIO Scaled Max
unsigned int units;		// PF Gen 2 - 16-Nov-11 Changed from unused to WIO Units
unsigned int unused1;
unsigned int unused2;
}wiosettingsstruct;
//10 ints allocated to sdcard
//max 32 ints allowed

extern waterinoilstruct waterinoil;
extern wiosettingsstruct wiosettings;

wiosettingsstruct * WioSettingsStructPtr(void);
int WIOTemperatureWord(void);
int WIOActivityWord(void);
int WIOPPMWord(void);
waterinoilstruct * WioStructPtr(void);
int WIOEnabled(void);
void WIOChecks(void);
void SetWIOAlarmMask(int val);
void ReadWIOSettingsfromNVMEM(void);
void WriteWIOSettingstoNVMEM(void);

void WIOCommsOORClearDown(void);

void WIOInit(void);

extern unsigned int wioerrorcode;	// PF Gen 2 - 07-Mar-12 Added so error code is accessable via modbus

#endif

