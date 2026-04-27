/******************************************************************************
* FILENAME: sci.H
******************************************************************************/
#ifndef sciH
#define sciH


#include "core.h"

#define PCLKCR *((volatile uint16 *)0x701C) /* LSPCLK enabled for SCI */
#define LOSPCP *((volatile uint16 *)0x701B) /* LSPCLK prescaler */
#define TXENA 0x02	//bit 1
#define TXRDY 0x80	//bit 7

// AJB 15-Feb-10 Changed RXBUFFSIZE_A from 128 to 140, and RXBUFFSIZE_B from 64 to 140
#define RXBUFFSIZE_A 140	//should never receive more than 140bytes in one go
#define RXBUFFSIZE_B 140
#define TXBUFFSIZE 5	//as we are transmitting, char by char dont need big buffer

#define UARTCRXBUFFSIZE 100
#define UARTDRXBUFFSIZE 20

typedef struct tag_sciport
{
uint16 sciccr;    /* SCI-A Communications Control Register */ 
uint16 scictl1;   /* SCI-A Control Register 1 */ 
uint16 scihbaud;  /* SCI-A high Baud Register*/ 
uint16 scilbaud;  /* SCI-A low Baud Register*/ 
uint16 scictl2;   /* SCI-A Control Register 2 */ 
uint16 scirxst;   /* SCI-A Receive Status Register */ 
uint16 scirxemu;  /* SCI-A Receive Emulation Data Buffer Register */ 
uint16 scirxbuf;  /* SCI-A Receive Data Buffer Register */ 
uint16 dummy;
uint16 scitxbuf;  /* SCI-A Transmit Data Buffer Register */ 
uint16 scifftx;  /* SCI-A FIFO Transmit Register */ 
uint16 sciffrx;   /* SCI-A FIFO Receive Register */ 
uint16 sciffct;   /* SCI-A FIFO Control Register */ 
uint16 scipri;    /* SCI-A Priority Control Register */
}sciport;


typedef struct tag_uartreadA
{
unsigned int *headptr;
unsigned int *tailptr;
unsigned int *eobuf;
unsigned int charcount;
unsigned int currentcharcount;
unsigned int previouscharcount;
unsigned int buf [RXBUFFSIZE_A];
char uartcharrx;
}uartreadA;


typedef struct tag_uartreadB
{
unsigned int *headptr;
unsigned int *tailptr;
unsigned int *eobuf;
unsigned int charcount;
unsigned int currentcharcount;
unsigned int previouscharcount;
unsigned int buf [RXBUFFSIZE_B];
char uartcharrx;
}uartreadB;


typedef struct tag_uartreadC
{
unsigned int receiveINTR;		//receive interrupt flag
unsigned int currentcharcount;
unsigned int previouscharcount;
unsigned int buf[UARTCRXBUFFSIZE];
char uartcharrx;
}uartreadC;

typedef struct tag_uartreadD
{
unsigned int *headptr;
unsigned int *tailptr;
unsigned int *eobuf;
unsigned int receiveINTR;		//receive interrupt flag
unsigned int currentcharcount;
unsigned int previouscharcount;
unsigned int buf[UARTDRXBUFFSIZE];
char uartcharrx;
}uartreadD;


typedef struct tag_uartwrite
{
unsigned char *headptr;
unsigned char *tailptr;
unsigned char *eobuf;
unsigned char buf[TXBUFFSIZE];
}uartwrite;

extern volatile sciport sciportB;

extern uartreadA receiveA;
extern uartreadB receiveB;
extern uartreadC receiveC;
extern uartreadD receiveD;

void Init485Drivers(void);
void SerialPortBBaudRate(void);
void SerialPortASetup(void);
void SerialPortBSetup(void);
void SerialPortCSetup(void);
void SerialPortDSetup(void);
void PerformSciTxIntA(void);
void PerformSciRxIntA(void);
void PerformSciTxIntB(void);
void PerformSciRxIntB(void);
void PerformSciRxIntC(void);
void PerformSciRxIntD(void);
void DebugStringOut(char* ptr);
void MastertoSlaveSendBuffer(unsigned int* ptr, unsigned int count);
void LoadSendBufferA(unsigned int* ptr, unsigned int count);
void LoadSendBufferB(unsigned int* ptr, unsigned int count);
void LoadSendBufferC(unsigned int* ptr, unsigned int count);
void CLITransmitBuffer(char* ptr);
char ReadCharfromUartA(void);
char ReadCharfromUartB(void);
char ReadCharfromUartC(void);
char ReadCLIChar(void);
char SendCLIChar(char c);
void clearCommsErrors(void); // PF Gen 2 - 01-Mar-12 Added in function to clear comms errors


#endif

/* EOF */
