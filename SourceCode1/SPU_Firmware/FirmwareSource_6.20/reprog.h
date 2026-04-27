#ifndef reprogH
#define reprogH


//Structure used for all stuff related to reprogramming
//used before code is run from RAM
typedef struct tag_reprogramstruct
{
	struct
	{
		unsigned int programgo;
		unsigned int status;
		unsigned int erase;
		unsigned long address;	//spi block address
		unsigned int size;		//spi block size to program into flash
	}spi;
	unsigned long programkey;
	unsigned int reprogramnow;
	unsigned int slavecmdok;	//set once the slave has responded from modbus command
	unsigned int slavestatus;
	unsigned int slavetx;
	unsigned int slaverx;
	unsigned int slaveset;
}reprogramstruct;

extern reprogramstruct reprogram;

int TestFuncLowerMem(void);
int ProgramCheckFunc(void);
void ReprogrammingCalls(void);
void ReprogramStartupInit(void);
void Reprogramming(void);
void TxRegtoSlave(void);
void RxStatusfromSlave(void);
void CheckEraseProgress(void);
void ProgramSPIFlashBlock(void);
void ProcessReprogrammingTransferral(unsigned int regadd, unsigned int NumReg,unsigned int func,unsigned int* databuf);
void TxNowtoSlave(void);
#endif


