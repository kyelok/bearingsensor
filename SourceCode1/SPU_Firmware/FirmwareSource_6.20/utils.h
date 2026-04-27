#ifndef utilsH
#define utilsH

#include "DEFINE.H"


//rpm structure
typedef struct
{
	int count;
	int ready;
	int previouscount;
	int sampleperiod;
	int period;
	int stable[MAX_NUM_CHANNELS_SPU];
}rpmstruct;

typedef void (*F_CONFIGFUNC)(void);

typedef struct tag_configcheckstruct
{
	int lowlim;
	unsigned int hilim;
	int defaultval;
	unsigned int *ptr;
}configcheckstruct;


extern configcheckstruct configcheck;

extern rpmstruct rpmdata;

void SDBusyCalls(void);
void MasterModeSwitch(void);
void MonthtoStr(char *ptr,int val);
void InputNumtoString(char *ptrin,int num);
void BCDTimetoAscii(unsigned int *ptr);
void NOPDelay(unsigned int val);
void CalLEDSetup(void);
// void CalSwitch(void);
void DateTimetoInt(void);
void RPMCalc(void);
void UpdateNonVolSafeCheck(void);
unsigned int BCDtoInt(unsigned int bcd);
void FRAMInit(void);
void LoadFRAMfromSD(void);
void FunctionEnabledSetup(void);
void ReloadTimeFromFram(void);
void ClockProcessing(void);
void SaveTimetoFram(void);
void ResetLoopCheck(void);
void ResetCommsCheck(void);

void ReadConfigStructfromNVMEM(void);
void WriteConfigStructtoNVMEM(void);
void ConfigCheckVal(void);

void InttoByteArray(char *dest,unsigned int * source,unsigned int len);
void BytetoIntArray(unsigned int *dest,char * source,unsigned int len);
void StringBytetoIntArray(unsigned int *dest,char * source,unsigned int len);
void StringInttoByteArray(char *dest,unsigned int * source,unsigned int len);
unsigned int CalcUIntChecksum(unsigned int* ptr,unsigned int len);
void SPUUnitReset(void);
void DebugAnaUpdate(void);
void LoopCheck(void);

int CheckBitSet(unsigned int bitfield,unsigned int pos);			//AJB 19-Aug-10
unsigned int BitSet(unsigned int bitfield,unsigned int pos);		//AJB 19-Aug-10
unsigned int BitClear(unsigned int bitfield,unsigned int pos);	//AJB 19-Aug-10

// PF Gen 2 - 14-Nov-11 calibration
void CalibrationtdUpdate(int type);
void WriteCalibrationtdStructtoNVMEM(void);
void ReadCalibrationtdStructfromNVMEM(void);
// PF Gen 2 - 14-Nov-11 EOM

void LoadFRAMpowerup(void); // PF Gen 2 - 13-Dec-11 Added to conglomerate read functions
void ReadAlarmListfromNVMEM(void); // PF Gen 2 - 17-Jan-12 Added to read alarm list from NVMEM
void WriteAlarmListtoNVMEM(void); // PF Gen 2 - 17-Jan-12 Added to write alarm list to NVMEM

void ClearBitEventList(void); // PF Gen 2 - 06-Mar-12 Added to clear bit event list

#endif

