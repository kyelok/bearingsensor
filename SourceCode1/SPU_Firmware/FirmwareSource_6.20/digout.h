
#ifndef digoutH
#define digoutH
typedef struct
{
	unsigned int outputtestmode;	
	unsigned int previousstatus;		// PF 23-Nov-09 changed unused digout.previousstatus to be alarmtest previous state
	unsigned int previousslowdown;		//previous contains a count based on all slowdown latched values from all sensors
	unsigned int previousalarm;			//previous contains a count based on all alarm latched values from all sensors
	unsigned int slowdownreflash;		//bit set to 1 if in reflash mode
	unsigned int alarmreflash;			//bit set to 1 if in feflash mode
	unsigned int statusreflash;			//flash the status output
}digoutstruct;

extern digoutstruct digout;



void InitOP(void);
void InitOffboardGPIO(void);

void ProcessDigitalOP(void);
void SlowDownBlipControl(void);

#endif

