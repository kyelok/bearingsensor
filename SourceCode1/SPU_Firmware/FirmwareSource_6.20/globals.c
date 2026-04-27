
#include "core.h"
#include "globals.h"


volatile timersstruct timers;
settingsstruct settings;	//settings used during powered up state (not backed up)
safestruct1struct safe1;	//structure 1 to go to NONVOL
safestruct2struct safe2;	//structure 2 to go to NONVOL
// AJB 15-Feb-10 Added new xtswplusanastruct
xtswplusanastruct xtswplusanacal;
//safestruct3struct safe3;	//structure 3 to go to NONVOL
//safestruct4struct safe4;	//structure 4 to go to NONVOL
//sdsafestruct safe6;


//safestructspeedcompstruct speedcomp;
clockstruct clocktime;	//default clock store
livestruct livetime;
livestruct logtime;		//log time (interval rounded for seconds) to nearest 10 seconds
motionstruct motion;

calibrationdatetimestruct calibrationtd;	// PF Gen 2 - 14-Nov-11 Added in new structure to store time and date for calibration process

allsensorstruct allsensors;
configstruct config;

cylinderstruct cylinders[MAX_NUM_CHANNELS/2];	//half the number of channels (two sensors per cylinder)
loopcheckstruct loopcheck;

unsigned int transferbuffer[TRANSFER_LENGTH_INWORDS];

