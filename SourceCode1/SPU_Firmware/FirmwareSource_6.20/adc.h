//###########################################################################
//
// FILE:   adc.h
//
// TITLE:  DSP281x Device ADC Register Definitions.
//
//###########################################################################
//
//  Ver | dd mmm yyyy | Who  | Description of changes
// =====|=============|======|===============================================
//  1.00| 11 Sep 2003 | L.H. | Changes since previous version (v.58 Alpha)
//      |             |      | Separated the MAX_CONV bit fields into two
//      |             |      | MAX_CONV1  // 3:0
//      |             |      | MAX_CONV2  // 6:4
//      |             |      | Added SEQ_OVRD bit to ADCTRL1 for RevC and after silicon
//###########################################################################

#ifndef adcH
#define adcH

interrupt void IntADCIsr(void);
void InitADC(void);
void InitScalingFactor(void);
void Calibrate18mA(unsigned int chan);
void SetupConstantCurrentMux(void);

void SetupScaling(void);
volatile unsigned int * ADCChanPtr(unsigned int chan);

//GEN1.5 new functions
void AnalogueInputScaleAllChannels(void);
void AnalogOOR(void);
void DCModeInit(void);
void DCModeClear(void);
int GetVoltageStatus(void);
void SaveAnalogSettings(void);
void SetuAScaledValue(int chan,int valin);
unsigned int GetuASCaledValue(int chan);
void InitMotionCal(void);
void SetupMotionDir(void);
void PulseRPMCalc(void);
void ClearEngineDirCal(void);
void SlaveDefaultNotSet(void);
// AJB 15-Feb-10 Added new functions
void SetProximityScalingValue(void);
void ProximityScaling(unsigned int chan);
// AJB 15-Feb-10 EOM

//AJB 19-Aug-10
void WriteSLEMSettingstoNVMEM(void);
void ReadSLEMSettingsfromNVMEM(void);
void LoadSLEMDefaults(void);
//AJB 19-Aug-10 EOM

void WriteCPPSettingstoNVMEM(void);
void ReadCPPSettingsfromNVMEM(void);
void LoadCPPDefaults(void);

void WriteSensorSettingstoNVMEM(void);
void ReadSensorSettingsfromNVMEM(void);
void LoadSensorDefaults(void);

// PF Gen 2 - 13-Dec-11 Added in load DC mode checks
void WriteDCModeChecksSettingstoNVMEM(void);
void ReadDCModeChecksSettingsfromNVMEM(void);
void LoadDCModeChecksDefaults(void);
int  PeakResetBitStatus(unsigned int chan);
void PeakResetBitClear(unsigned int chan);
void DCModeChecks(void);
// PF Gen 2 - 13-Dec-11 EOM

#define HISPCP *((volatile unsigned int *)0x701A) /* HSPCLK */

//---------------------------------------------------------------------------
// ADC Individual Register Bit Definitions:

struct ADCTRL1_BITS {     // bits  description
    unsigned int  rsvd1:4;      // 3:0   reserved
    unsigned int  SEQ_CASC:1;   // 4     Cascaded sequencer mode
    unsigned int  SEQ_OVRD:1;   // 5     Sequencer override 
    unsigned int  CONT_RUN:1;   // 6     Continuous run
    unsigned int  CPS:1;        // 7     ADC core clock pre-scalar
    unsigned int  ACQ_PS:4;     // 11:8  Acquisition window size
      unsigned int  SUSMOD:2;     // 13:12 Emulation suspend mode
    unsigned int  RESET:1;      // 14    ADC reset
    unsigned int  rsvd2:1;      // 15    reserved
};


union ADCTRL1_REG {
   unsigned int                all;
   struct ADCTRL1_BITS   bit;
};


struct ADCTRL2_BITS {         // bits  description
    unsigned int  EVB_SOC_SEQ2:1;   // 0     Event manager B SOC mask for SEQ2
    unsigned int  rsvd1:1;          // 1     reserved
    unsigned int  INT_MOD_SEQ2:1;   // 2     SEQ2 Interrupt mode
    unsigned int  INT_ENA_SEQ2:1;   // 3     SEQ2 Interrupt enable
    unsigned int  rsvd2:1;          // 4     reserved
    unsigned int  SOC_SEQ2:1;       // 5     Start of conversion for SEQ2
    unsigned int  RST_SEQ2:1;       // 6     Reset SEQ2
    unsigned int  EXT_SOC_SEQ1:1;   // 7     External start of conversion for SEQ1
    unsigned int  EVA_SOC_SEQ1:1;   // 8     Event manager A SOC mask for SEQ1
    unsigned int  rsvd3:1;          // 9     reserved
    unsigned int  INT_MOD_SEQ1:1;   // 10    SEQ1 Interrupt mode
    unsigned int  INT_ENA_SEQ1:1;   // 11    SEQ1 Interrupt enable
    unsigned int  rsvd4:1;          // 12    reserved
    unsigned int  SOC_SEQ1:1;       // 13    Start of conversion trigger for SEQ1
    unsigned int  RST_SEQ1:1;       // 14    Restart sequencer 1   
    unsigned int  EVB_SOC_SEQ:1;    // 15    EVB SOC enable
};


union ADCTRL2_REG {
   unsigned int                all;
   struct ADCTRL2_BITS   bit;
};


struct ADCASEQSR_BITS {       // bits   description
    unsigned int  SEQ1_STATE:4;     // 3:0    SEQ1 state
    unsigned int  SEQ2_STATE:3;     // 6:4    SEQ2 state
    unsigned int  rsvd1:1;          // 7      reserved
    unsigned int  SEQ_CNTR:4;       // 11:8   Sequencing counter status 
    unsigned int  rsvd2:4;          // 15:12  reserved  
};

union ADCASEQSR_REG {
   unsigned int                 all;
   struct ADCASEQSR_BITS  bit;
};


struct ADCMAXCONV_BITS {      // bits  description
    unsigned int  MAX_CONV1:4;      // 3:0   Max number of conversions
    unsigned int  MAX_CONV2:3;      // 6:4   Max number of conversions    
    unsigned int  rsvd1:9;          // 15:7  reserved 
};

union ADCMAXCONV_REG {
   unsigned int                  all;
   struct ADCMAXCONV_BITS  bit;
};


struct ADCCHSELSEQ1_BITS {    // bits   description
    unsigned int  CONV00:4;         // 3:0    Conversion selection 00
    unsigned int  CONV01:4;         // 7:4    Conversion selection 01
    unsigned int  CONV02:4;         // 11:8   Conversion selection 02
    unsigned int  CONV03:4;         // 15:12  Conversion selection 03
};

union  ADCCHSELSEQ1_REG{
   unsigned int                    all;
   struct ADCCHSELSEQ1_BITS  bit;
};

struct ADCCHSELSEQ2_BITS {    // bits   description
    unsigned int  CONV04:4;         // 3:0    Conversion selection 04
    unsigned int  CONV05:4;         // 7:4    Conversion selection 05
    unsigned int  CONV06:4;         // 11:8   Conversion selection 06
    unsigned int  CONV07:4;         // 15:12  Conversion selection 07
};

union  ADCCHSELSEQ2_REG{
   unsigned int                    all;
   struct ADCCHSELSEQ2_BITS  bit;
};

struct ADCCHSELSEQ3_BITS {    // bits   description
    unsigned int  CONV08:4;         // 3:0    Conversion selection 08
    unsigned int  CONV09:4;         // 7:4    Conversion selection 09
    unsigned int  CONV10:4;         // 11:8   Conversion selection 10
    unsigned int  CONV11:4;         // 15:12  Conversion selection 11
};

union  ADCCHSELSEQ3_REG{
   unsigned int                    all;
   struct ADCCHSELSEQ3_BITS  bit;
};

struct ADCCHSELSEQ4_BITS {    // bits   description
    unsigned int  CONV12:4;         // 3:0    Conversion selection 12
    unsigned int  CONV13:4;         // 7:4    Conversion selection 13
    unsigned int  CONV14:4;         // 11:8   Conversion selection 14
    unsigned int  CONV15:4;         // 15:12  Conversion selection 15
};

union  ADCCHSELSEQ4_REG {
   unsigned int                    all;
   struct ADCCHSELSEQ4_BITS  bit;
};

struct ADCTRL3_BITS {         // bits   description
    unsigned int   SMODE_SEL:1;     // 0      Sampling mode select
    unsigned int   ADCCLKPS:4;      // 4:1    ADC core clock divider
    unsigned int   ADCPWDN:1;       // 5      ADC powerdown
    unsigned int   ADCBGRFDN:2;     // 7:6    ADC bandgap/ref power down
    unsigned int   rsvd1:8;         // 15:8   reserved
}; 

union  ADCTRL3_REG {
   unsigned int                all;
   struct ADCTRL3_BITS   bit;
};


struct ADCST_BITS {           // bits   description
    unsigned int   INT_SEQ1:1;      // 0      SEQ1 Interrupt flag  
    unsigned int   INT_SEQ2:1;      // 1      SEQ2 Interrupt flag
    unsigned int   SEQ1_BSY:1;      // 2      SEQ1 busy status
    unsigned int   SEQ2_BSY:1;      // 3      SEQ2 busy status
    unsigned int   INT_SEQ1_CLR:1;  // 4      SEQ1 Interrupt clear
    unsigned int   INT_SEQ2_CLR:1;  // 5      SEQ2 Interrupt clear
    unsigned int   EOS_BUF1:1;      // 6      End of sequence buffer1
    unsigned int   EOS_BUF2:1;      // 7      End of sequence buffer2
    unsigned int   rsvd1:8;         // 15:8   reserved
};


union  ADCST_REG {
   unsigned int             all;
   struct ADCST_BITS  bit;
};


struct ADC_REGS {
    union ADCTRL1_REG      ADCTRL1;       // ADC Control 1
    union ADCTRL2_REG      ADCTRL2;       // ADC Control 2
    union ADCMAXCONV_REG   ADCMAXCONV;    // Max conversions
    union ADCCHSELSEQ1_REG ADCCHSELSEQ1;  // Channel select sequencing control 1
    union ADCCHSELSEQ2_REG ADCCHSELSEQ2;  // Channel select sequencing control 2
    union ADCCHSELSEQ3_REG ADCCHSELSEQ3;  // Channel select sequencing control 3
    union ADCCHSELSEQ4_REG ADCCHSELSEQ4;  // Channel select sequencing control 4
    union ADCASEQSR_REG    ADCASEQSR;     // Autosequence status register
    unsigned int                 ADCRESULT0;    // Conversion Result Buffer 0
    unsigned int                 ADCRESULT1;    // Conversion Result Buffer 1
    unsigned int                 ADCRESULT2;    // Conversion Result Buffer 2
    unsigned int                 ADCRESULT3;    // Conversion Result Buffer 3
    unsigned int                 ADCRESULT4;    // Conversion Result Buffer 4
    unsigned int                 ADCRESULT5;    // Conversion Result Buffer 5
    unsigned int                 ADCRESULT6;    // Conversion Result Buffer 6
    unsigned int                 ADCRESULT7;    // Conversion Result Buffer 7
    unsigned int                 ADCRESULT8;    // Conversion Result Buffer 8
    unsigned int                 ADCRESULT9;    // Conversion Result Buffer 9
    unsigned int                 ADCRESULT10;   // Conversion Result Buffer 10
    unsigned int                 ADCRESULT11;   // Conversion Result Buffer 11
    unsigned int                 ADCRESULT12;   // Conversion Result Buffer 12
    unsigned int                 ADCRESULT13;   // Conversion Result Buffer 13
    unsigned int                 ADCRESULT14;   // Conversion Result Buffer 14
    unsigned int                 ADCRESULT15;   // Conversion Result Buffer 15
    union ADCTRL3_REG      ADCTRL3;       // ADC Control 3  
    union ADCST_REG        ADCST;         // ADC Status Register
};


//---------------------------------------------------------------------------
// ADC External References & Function Declarations:
//
extern volatile struct ADC_REGS adcregs;


//store the adc value for the battery
typedef struct tag_adcdatastruct
{
	struct
	{
		unsigned int prt;
		unsigned int vin;			//voltage input (dc)
	}current;
	struct
	{
		unsigned int chan[MAX_NUM_CHANNELS_SPU];	//14 analog 4-20mA inputs
		int range[MAX_NUM_CHANNELS_SPU];	//sotre the value for range checking, this is used for filtering the input
		unsigned int prt;
	}previous;	
	struct
	{
		unsigned int chan[MAX_NUM_CHANNELS_SPU];	//count per mA for each channel on the SPU
	}countspermA;
	unsigned int ready[MAX_NUM_CHANNELS_SPU];		//set after detecting peak and timeout
	unsigned int count[MAX_NUM_CHANNELS_SPU];
	unsigned int direction[MAX_NUM_CHANNELS_SPU];	//setup for recording the channel order when calibratin
	unsigned int flag;
}adcdatastruct;


typedef struct tag_inputstruct
{
	struct
	{
		unsigned int ready;
		unsigned int chan[MAX_NUM_CHANNELS_SPU];
		// PF Gen 2 - 13-Dec-11 removed obsolete variables
		//		unsigned int calnow;
		//		unsigned int calnowprev;
		//		unsigned int calpeaks1;		//cal peaks word bitmap for inputs 1 to 14 used on SPU1
		//		unsigned int calpeaks2;		//cal peaks word bitmap for inputs 15 to 28 on SPU2
		//		int voltageok;		//this flag will be cleared if the voltage input drop below a predefined level
		// PF Gen 2 - 13-Dec-11 EOM
		unsigned int newrpm[MAX_NUM_CHANNELS_SPU];		//flag set when next pulse is seen for rpm
		unsigned int rpmstart[MAX_NUM_CHANNELS_SPU];	//counter from the start of seeing the first pulse - once five pulses have been seen the value will be used
		unsigned int startupcounter[MAX_NUM_CHANNELS_SPU];		//counter used for stability and setting the newval flag
	}flags;
	struct
	{
						//value scaled to 65535 for peak
		float chan[14];	//combined 20mA calibration and peak calibration
		int peakoffset[14];	//value to add to every scaled channel value sets peak height to 4095 for all channels
	}scale;
	struct
	{
		unsigned int current[MAX_NUM_CHANNELS_SPU];
		unsigned int chan[MAX_NUM_CHANNELS_SPU];
		unsigned long counterA[MAX_NUM_CHANNELS_SPU];	//14 counters for running count when working out rpm from pulse detection
		unsigned long counterB[MAX_NUM_CHANNELS_SPU];	//14 counters for storage of count when working out pulse detection
		unsigned int rpm[MAX_NUM_CHANNELS_SPU];			//pulse calcualted rpm
	}rawresults;
	struct
	{
		unsigned int value[MAX_NUM_CHANNELS];
	}amps;
	unsigned int prtchan;
	// PF 14-Oct-09 Added analog inputs structure
	struct
	{
		int value[8];
		unsigned int chan;
		// PF 15-Oct-09 Added scalefactor
		float scalefactor[8];
	}analog;
	// PF 14-Oct-09 EOM
}inputstruct;

//AJB 19-Aug-10
typedef struct tag_slemsettingsstruct
{
	unsigned int enabled;
	unsigned int alarmmask;
	int alarmlevel;
	unsigned int mVfsd;
	unsigned int hysteresis;	//AJB 21-Sep-10 added hysteresis for slem
	unsigned int alarmdelay;	//AJB 21-Sep-10 added alarm delay (number input in seconds)
}slemsettingsstruct;

typedef struct tag_slemsstruct
{

	int mV;
	struct
	{
		unsigned int oor	:1;
		unsigned int alarm	:1;
		unsigned int unused :14;
	}alarms;
	unsigned int levelcount;		//level count used to count if above limit for xx seconds

}slemstruct;

typedef struct tag_rtcbatstruct
{

	int mV;
	struct
	{
		unsigned int low;		//set for low battery level
	}alarms;

}rtcbatstruct;

typedef struct tag_cppstruct
{

	int iAtodValue;
	float fmAinput;
	float fLoadPercent;	
}cppstruct;

typedef struct tag_cppsettingsstruct
{

	unsigned int iCppEnable;
	unsigned int iCppLowLimit;
	unsigned int iCppHighLimit;

	unsigned int cppkvalue;						//K value for cpp calculation
	unsigned int gammavalue;					//gamma value for cpp calc
	unsigned int cpplevelx;						//cpp level x value

	unsigned int delatRpmPauseDelay;
	unsigned int calAlarmThreshhold;
	unsigned int unused2;
	unsigned int unused3;
	unsigned int unused4;
	unsigned int unused5;
	unsigned int unused6;
	unsigned int unused7;
	unsigned int unused8;
	unsigned int unused9;
}cppsettingsstruct;

typedef struct tag_sensorMoving
{
	unsigned int calAlarmThreshhold;
	unsigned int unusedByte;
}sensorMovingstruct;

// PF Gen 2 - 13-Dec-11 Added in new structure to store dc mode check setpoints
typedef struct tag_dcmodechecksstruct
{
	struct
	{
		unsigned int lo;
		unsigned int hi;
	}ideal;
	struct
	{
		unsigned int lo;
		unsigned int hi;
	}ok;
	struct
	{
		unsigned int max;
		unsigned int threshold;
	}cylinderComparison;
	unsigned int unused1;
	unsigned int unused2;
	unsigned int unused3;
	unsigned int unused4;
	unsigned int unused5;
	unsigned int unused6;
	unsigned int unused7;
	unsigned int unused8;
	unsigned int unused9;
}dcmodechecksstruct;
// PF Gen 2 - 13-Dec-11 EOM

extern unsigned int slowdownblipstate;		//AJB 19-Aug-10 added so can access from digout.c
extern slemsettingsstruct slemsettings;
extern slemstruct slem;
extern rtcbatstruct rtcbat;
extern cppsettingsstruct cppsettings;
extern sensorMovingstruct sensorMoving;
extern cppstruct loadlevel;
//AJB 19-Aug-10 EOM

extern dcmodechecksstruct dcmodechecks;	// PF Gen 2 - 13-Dec-11 Added in new structure to store time and date for calibration process

// PF Gen 2 - 13-Dec-11 Added in for dc mode
extern unsigned int DCModePeakReset[2];
extern unsigned int DCModeCylinderComparison;
extern unsigned int DCModeInRangeOK[2];
extern unsigned int DCModeInRangeIdeal[2];
// PF Gen 2 - 13-Dec-11 EOM

//AJB 15-Feb-10 Changed to volatile for compiler optimisation
extern volatile inputstruct inputs;
#endif  // end of DSP281x_ADC_H definition



