#ifndef mancalH
#define mancalH

extern unsigned int rpmpointtest;
extern unsigned int chanUT;


//Space required for the calibration structure
//644 words * 2 = 1288 bytes
//Update this and check it fits for the space allocated in FRAM
typedef struct tag_calibrationstruct
{
	unsigned int rpmpoints;				//number of rpm points in the table
	unsigned int speedcalpoints[NUM_INITIAL_SPEED_REF][2];	//store for values calucalted as init begins, upper and lower
	unsigned long roughnumpoints[NUM_ROUGH_CAL_PTS];		//number of points used in the rough cal (should be three)
	//numpoints is used in rough cal and main calibration first three stores used for rough cal
	//it is a long as for 500 hours this will be a very big number!
	unsigned long numpoints[NUM_SPEED_REF];			//store for the number of points seen within a speed band or speed point
	//note! not actually using 28 separate speed averages for rough cal - so if need space this can be reduced to 1d array of three values only
	long averagespeedacc[NUM_INITIAL_SPEED_REF][MAX_NUM_CHANNELS];
	long averagevalacc[NUM_INITIAL_SPEED_REF][MAX_NUM_CHANNELS];
	unsigned int validpoints;			//store for how many valid speed points have been seen during calibration
	unsigned int rpmatcal[NUM_INITIAL_SPEED_REF];					//3 points for the rough calibration. store for use during fine cal
	int manroughcalpts[NUM_INITIAL_SPEED_REF][MAX_NUM_CHANNELS];	//3 points afte rough cal in microns. used in fine cal if the points do not exist whilst fine cal in progress
	int manroughmin[MAX_NUM_CHANNELS];		//storage of all channels minimum value from the rough cal
	int manroughmax[MAX_NUM_CHANNELS];		//storage of all channels maximum value from the rough cal
}calibrationstruct;


//Coeffs relating to the speed compensation
typedef struct tag_speedcompstruct
{
	unsigned int stageflag;				//store a flag relating to which stage of calibration we are on
	unsigned int status;				//the status will reflect zero for pass and 1 for any failure during a stage
	unsigned int speedbands[3][2];		//define 3 speeds upper and lower % limits based on engine speed
	unsigned int slopecoeff;			//figure defining the micron change from 20 to 110% of engine speed
	unsigned int initialtimer;			//rough cal timer default 10 mins
	unsigned int learningmodetimer;		//default say 500 hours	(input in hours)
	unsigned int intervaltimer;			//interval is e.g. 50 hours
	unsigned int numsamples;			//numsamples to collect e.g. default 1000
	unsigned int learningleft;			//time left in learning mode (reported in minutes)
	unsigned int intervalleft;			//time remaining within the current interval in minutes
	unsigned int manappliedminsamples;	//must have more than this number of samples at a speed point in order for it to be valid
	unsigned int unused1;
	unsigned int unused2;
	unsigned int unused3;
	unsigned int unused4;
	unsigned int unused5;
	unsigned int unused6;
	unsigned int unused7;
	unsigned int unused8;
	unsigned int unused9;
	//remove unused variables as new ones added
}speedcompstruct;
// 25 ints allowed for structure size

typedef struct tag_mancalstruct
{
	unsigned int learningleft;
	unsigned int intervalleft; //how much left in 50 hours
	unsigned int percentleft;
	unsigned int manupdateflag;		//set flag when a new table is available for the PC
}mancalstruct;


extern mancalstruct mancal;
extern calibrationstruct calibration;
extern speedcompstruct speedcompcoeffs;

extern volatile unsigned int iRepaidWearReset;
extern volatile unsigned int iStartRapidWear;
extern volatile unsigned int iFiveResDone;

void PowerUpCalInit(void);
void PowerOutCalRecovery(void);
void CalAbort(void);
void InitCal(void);
void MANCalibrationStages(void);
long * ReadAccAverageVal(unsigned int chan, unsigned int position);
long * ReadAverageSpeedAcc(unsigned int chan, unsigned int position);
unsigned long * ReadNumPoints(unsigned int position);
unsigned int GetLearningTimeLeft(void);
unsigned int GetIntervalTimeLeft(void);
unsigned int GetPercentageLeft(void);
void ClearCalibrationAlarms(void);
void CheckRoughCalPoints(unsigned int numsamples);
int ReadMAN1000NVMEM(unsigned int rpmval, unsigned int chan);
void SetupLearningModeAlarmLevels(void);

#endif



