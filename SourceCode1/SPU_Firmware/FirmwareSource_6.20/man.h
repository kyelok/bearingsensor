#ifndef manH
#define manH


typedef struct tag_mbupdatestruct
{
	unsigned int status1;
}mbupdatestruct;


typedef struct tag_functionstruct
{
	struct
	{
		unsigned int applyoffset;
		unsigned int sensorcompensation;
		unsigned int sensornoiseremoval;
		unsigned int sensordeviation;
		unsigned int cylinderaverage;
		unsigned int cylinderdeviation;
		unsigned int useroughcal;			//enabled if rough cal is to be used in the fine cal
		unsigned int vincheckenabled;		//check if the vaoltage input function is enabled
	}enabled;
}functionstruct;

typedef struct tag_status1struct
{
	unsigned enabled  			:1;	//set from pc
	unsigned calmode  			:1;	//calmode - set from pc
	unsigned alarmmask			:1;	//mask set if the channel should not cause alarms
	unsigned dcmode 			:1;	//set from pc
	unsigned replaced 			:1;	//set to true when in replacement mode
	unsigned excludeslowroll	:1; // PF Gen 2 - 12-Jan-12 Set to true to be excluded from slow roll
	unsigned unused7 			:1;
	unsigned unused8 			:1;
	unsigned unused9 			:1;
	unsigned unused10 			:1;
	unsigned unused11 			:1;
	unsigned unused12 			:1;
	unsigned unused13 			:1;
	unsigned unused14 			:1;
	unsigned unused15 			:1;
	unsigned unused16 			:1;
}status1struct;

typedef struct tag_sensoralarmstruct
{
	unsigned failure  			:1;
	unsigned failurelatched		:1;
	unsigned slowdown  			:1;
	unsigned slowdownlatched	:1;
	unsigned alarm   			:1;
	unsigned alarmlatched		:1;
	unsigned devalarm 			:1;
	unsigned devalarmlatched	:1;
	unsigned devslow 			:1;
	unsigned devslowlatched		:1;
	unsigned calibration		:1;
	unsigned calibrationlatched	:1;
	unsigned prewarning			:1;
	unsigned prewarninglatched	:1;
	unsigned unused15 			:1;
	unsigned unused16 			:1;
}sensoralarmstruct;


typedef struct tag_sensorstruct
{
	status1struct status1;
	sensoralarmstruct status2;
	unsigned int newval;			//this is a flag to say a newvalue is ready for processing
	int val;						//temporary val passed in and out of man functions
	int immediateval;				//AJB 19-Aug-10 immediate initial value (without stability check from rpm)
	int initialval;					//scaled micron value no offset applied at this stage
	int precomp;					//precomp is the raw micron value obtained from the sensor with offset applied
	int postcomp;					//post speed compensation value
	float postfilter;				//held as a float
	int endresult;					//endresult is the final value passed out from the MAN procedure (normally the post filtered result)
	int deviation;					//sensor deviation per sensor
	int min;						//min sensor value seen across time period
	int max;						//max sensor value seen across time period
	int devmin;						//deviation minimum value across time period
	int devmax;						//deviation maximum across time period
	unsigned int rpm;				//report the rpm value for each sensor - for GEN2 there will be an rpm per sensor
	int prt;				//report tmperature per sensor for GEN2 - GEN1.5 will only use first four values
}sensorstruct;

//AJB 19-Aug-10 - new reference related structure for damage monitoring
typedef struct tag_manrefstruct
{
	float reflevel;						//immediate values stored as floats
	float presentstate;					//must be float otherwise when changing the value by such a small amount
	float refvalue;						//nothing will happen if it is not a float!
	int reflevel_int;					//AJB 19-Aug-10 reference level calculated for MAN code
	int presentstate_int;				//AJB 19-Aug-10 present state value (updates quickly)
	int refvalue_int;					//AJB 19-Aug-10 The reference value is the delta reflevel - presentstate
}manrefstruct;
//AJB 19-Aug-10 EOM

//AJB 19-Aug-10 - new reference related structure for damage monitoring
typedef struct tag_manrefsumstruct
{
	int cylsum;						//AJB 19-Aug-10 added cylinder sum for new MAN damage monitoring checks
	int mbnsum;						//main bearing neighbour sum
}manrefsumstruct;
//AJB 19-Aug-10 EOM

//AJB 19-Aug-10
typedef struct tag_damalarmsstruct
{
	unsigned int single[2];		//assigned for 28 bits (upper 4 bits not used) (assignment split at 16)
	unsigned int cylinder;
	unsigned int mbneighbour;
}damalarmsstruct;
//AJB 19-Aug-10 EOM

//AJB 19-Aug-10 New damage monitoring structure
typedef struct tag_damagemonstruct
{
	unsigned int ccsplit;
	unsigned int kvalue;						//K value for rpm calculation
	unsigned int betavalue;						//Beta value for rpm calc
	unsigned int rpmlevelx;						//rpm level x value
	unsigned int reflevelx;						//x factor for ref
	unsigned int presentstatex;					//x factor for present state
	unsigned int alarmlevelsingle;				//alarm level for single sensor
	unsigned int alarmlevelcyl;					//alarm level for cylinder sum
	unsigned int alarmlevelmbsum;				//alarm levelfor summation of mb neighbour
	unsigned int cylneighbour;					//cylinder neighbour in use field
	unsigned int mbneighbour;					//mb neighbour in use field
	unsigned int cylneighbouralarms;			//cylinder neighbour in use field
	unsigned int mbneighbouralarms;				//mb neighbour in use field
	unsigned int deltarpmlimit;					//delta rpm limit (e.g. 4RPM)
	unsigned int hysteresis;					//Alarm level reset hysteresis (below current fixed alarm limit)
	unsigned int damagemonenb;					//Damage monitoring enabling - enabled when set to 1
}damagemonstruct;
//AJB 19-Aug-10 EOM

//AJB 19-Aug-10 New damage monitoring dynamic alarms
typedef struct tag_dynamicalarmsstruct
{
	float rpmav;			//average rpm based on filter
	float single1;			//alarm level 1 current
	float cyl1;				//cylinder alarm level 1 current
	float mbsum1;			//mbsum level 1 current
	float single2;			//alarm level 2 current
	float cyl2;				//
	float mbsum2; 			//
	float deltarpmprev;	   	//delta rpm previous (caused increase)	
	float deltarpm;			//current change in rpm	
	int deltarpm_int;		//current change in rpm (as integer)	
	int rpmav_int;			//average rpm based on filter (as integer)
	int deltarpmprev_int;  	//delta rpm previous (caused increase)	
	int single;				//single alarm level current (from max)
	int cyl;				//cylinder sum alarm level current
	int mbsum;				//mb neighbour sum alarm level current
	int singleprev;			//single previous alarm level
	int cylprev;			//cylinder previous alarm level
	int mbsumprev;			//mb neighbour sum previous alarm level
	int single1_int;		//alarm level 1 current
	int cyl1_int;			//cylinder alarm level 1 current
	int mbsum1_int;			//mbsum level 1 current
	int single2_int;		//alarm level 2 current
	int cyl2_int;			//
	int mbsum2_int;			//
	unsigned long hits;		//number of hits since increase
	
}dynamicalarmsstruct;
//AJB 19-Aug-10 EOM


//offset struct contains the Compensation Offset
typedef struct tag_offsetstruct
{
	int val[MAX_NUM_CHANNELS];		
}offsetstruct;

//structure for the prewarning settings and checks
typedef struct tag_prewarnstruct
{
	int prelevel[MAX_NUM_CHANNELS];		//storage for the calculation done after cal, must be saved
	int average[MAX_NUM_CHANNELS];		//averagin value after 6 hours
	long calcacc[MAX_NUM_CHANNELS];		//accumulation of 6 hours
	long points[MAX_NUM_CHANNELS];		//summation of points over the 6 hour period
	int prewarncompleteflag;			//pre warning completion flag set once the initial 6 hours is complete
	int init;							//set if this is the first init averaging
}prewarnstruct;

extern unsigned int modalsetcounters[MAX_NUM_CHANNELS];
extern unsigned int modalresetcounters[MAX_NUM_CHANNELS];
extern prewarnstruct prewarn;

extern offsetstruct offsetA;	//set the offset to reset the value to zero micron output when setting up on turning gear
extern offsetstruct offsetB;	//offset to add after compensation to apply a wear value, can be used when replacing sensors etc
extern sensorstruct sensor[MAX_NUM_CHANNELS];
extern int iSensorInRepalceMode;
extern int iSensorInResetMode;
extern int iSensorInRepalceTimer;
extern int iSensorInRepalce;
extern unsigned long wFiveRevTime;
extern int iSensorToMonitor;

extern unsigned int iBarred;
extern unsigned int iDeltaRPM15;

static float fRapidFast[MAX_NUM_CHANNELS];
static float fRapidSlow[MAX_NUM_CHANNELS];
static int iVauleCount[MAX_NUM_CHANNELS];
static float fRapidWearAverage[MAX_NUM_CHANNELS];
static float fSpeedCompensated5Total[MAX_NUM_CHANNELS];
static float fSpeedCompensated5Past[MAX_NUM_CHANNELS][5];
static unsigned long wSpeedCompensated5Cnt;
static float fSpeedCompensated5Avg[MAX_NUM_CHANNELS];

extern mbupdatestruct mbupdate;
extern functionstruct function;			//function enabled disabled structure - saved to EEPROM
extern int man_comptable[150][28];

extern manrefstruct manref[MAX_NUM_CHANNELS];			//AJB 19-Aug-10 new
extern manrefsumstruct manrefsum[MAX_NUM_CYLINDERS];	//AJB 19-Aug-10 new
extern damagemonstruct damagemon;						//AJB 19-Aug-10 new
extern dynamicalarmsstruct dynalarmlevels;				//AJB 19-Aug-10 new
extern damalarmsstruct damalarms;						//AJB 19-Aug-10 new

// PF 16-Nov-09 Added extern unsigned int checkmanalarms[MAX_NUM_CHANNELS];
extern unsigned int checkmanalarms[MAX_NUM_CHANNELS];

void SetupNormalModeAlarmLevels(void);
void ClearMANTable(int type); // PF Gen 2 - 29-May-12 Added in type
void InitSensors(void);
void InitStatus1Flags(void);
void InitMAN(void);
void NominalSpeedUpdate(void);
void MANAlarmChecks(unsigned int rpm);
void MANModules(void);
void StartupRefReload(void);
void WriteDamagemontoNVMEM(void);
void ReadDamagemonfromNVMEM(void);

void PreWarningInit(void);
void PreWarningPowerUpInit(void);
void PreWarnLevelReset(void);

void EnableNoiseFilter(int flag);
void SetSensorEnabled(unsigned int chan, int val);
unsigned int GetSensorEnabled(unsigned int chan);

void SetCalMode(unsigned int chan, int val);
unsigned int GetSensorAlarmMask(unsigned int chan);
void SetAlarmMask(unsigned int chan, int val);

unsigned int GetCheckedRPM(int unit);
void SetRPMChan(unsigned int chan, unsigned int rpm);
unsigned int GetRPM(unsigned int chan);
void SetRPM(unsigned int rpmin);
unsigned int GetModalRPM(int flag);
void SetImmScaledValue(unsigned int chan, int val);
void SetScaledValue(unsigned int chan, int val);
int GetScaledValue(unsigned int chan);
int GetPreCompValue(unsigned int chan);
void SetPreCompValue(unsigned int chan, int val);

int GetPostCompValue(unsigned int chan);
int GetPostFilteredValue(unsigned int chan);
int GetEndResultValue(unsigned int chan);
int GetSensorDeviationValue(unsigned int chan);
int GetCylinderAverageValue(unsigned int num);
int GetCylinderDeviationValue(unsigned int num);
status1struct * Status1Flags(unsigned int chan);
sensoralarmstruct * GetStatus2Flags(unsigned int chan);
unsigned int ReadStatus1Int(unsigned int chan);

int * MANCompTable(unsigned int chan, unsigned int refpoint);
void ClearSelectiveMANTable(void);

void ModbusUpdateSensorStatus(void);
void WriteSensorStatustoNVMEM(unsigned int chan);
void ReadSensorStatusfromNVMEM(unsigned int chan);
void WriteMANCompTabletoNVMEM(void);
void ReadPrewarnStructfromNVMEM(void);
void WritePrewarnStructtoNVMEM(void);

void WriteOffsetAtoNVMEM(unsigned int chan);
void ReadOffsetAfromNVMEM(unsigned int chan);
void WriteOffsetBtoNVMEM(unsigned int chan);
void ReadOffsetBfromNVMEM(unsigned int chan);

#endif


