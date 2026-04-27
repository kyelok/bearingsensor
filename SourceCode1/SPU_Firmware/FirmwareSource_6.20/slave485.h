#ifndef slave485H
#define slave485H

// AJB 15-Feb-10 Changed MAX_MODBUS2_DATAWORDS from 50 ,moved SLAVERESPONSEBUFSIZE and SLAVEREQUESTINTERVAL
#define MAX_MODBUS2_DATAWORDS 64
#define SLAVERESPONSEBUFSIZE 100
#define SLAVEREQUESTINTERVAL 60		//set to 300ms

#define SLAVEREQUESTINTERVALDCMODE 20		// PF Gen 2 - 06-Dec-11	added define for dc mode set to 100ms

//--------------------------------------------
typedef struct tag_slavecmdstruct
{
	unsigned int SlaveAddr;
	unsigned int Func;
	unsigned int StartAdd;
	unsigned int NoReg;
	unsigned int ByteCount;
	unsigned int Data[MAX_MODBUS2_DATAWORDS];
	unsigned int txmode;				//flag used when acting as master (used for retries)
	unsigned int slavelost;				//flag set if comms is lost to the slave device
	unsigned int slavenotready;			//flag set true if not ready to deal with data from slave
}slavecmdstruct;

extern slavecmdstruct slave485mb;
// AJB 15-Feb-10 Added variables receivingmode and slaveresponsemsg
extern unsigned int receivingmode;
extern unsigned int slaveresponsemsg[SLAVERESPONSEBUFSIZE];

void Slave485Init(void);
void Slave485Modbus(void);


void ReadChannelResults(void);
int ReadSlaveFlag(void);


#endif

