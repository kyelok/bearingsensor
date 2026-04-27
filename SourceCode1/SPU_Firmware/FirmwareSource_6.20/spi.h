#ifndef spiH
#define spiH

#include "core.h"
//---------------------------------------------------------------------------
// SPI Individual Register Bit Definitions:
//
// SPI FIFO Transmit register bit    definitions:
struct  SPIFFTX_BITS {       // bit    description
   unsigned int TXFFIL:5;          // 4:0    Interrupt level
   unsigned int TXFFIENA:1;        // 5      Interrupt enable
   unsigned int TXFFINTCLR:1;      // 6      Clear INT flag
   unsigned int TXFFINT:1;         // 7      INT flag
   unsigned int TXFFST:5;          // 12:8   FIFO status
   unsigned int TXFIFO:1;          // 13     FIFO reset
   unsigned int SPIFFENA:1;        // 14     Enhancement enable
   unsigned int SPIRST:1;          // 15     Reset SPI
}; 

union SPIFFTX_REG {
   unsigned int               all;
   struct SPIFFTX_BITS  bit;
};

//--------------------------------------------
// SPI FIFO recieve register bit definitions:
// 
//
struct  SPIFFRX_BITS {       // bits   description
   unsigned int RXFFIL:5;          // 4:0    Interrupt level
   unsigned int RXFFIENA:1;        // 5      Interrupt enable
   unsigned int RXFFINTCLR:1;      // 6      Clear INT flag
   unsigned int RXFFINT:1;         // 7      INT flag
   unsigned int RXFFST:5;          // 12:8   FIFO status
   unsigned int RXFIFORESET:1;     // 13     FIFO reset
   unsigned int RXFFOVFCLR:1;      // 14     Clear overflow
   unsigned int RXFFOVF:1;         // 15     FIFO overflow

}; 

union SPIFFRX_REG {
   unsigned int               all;
   struct SPIFFRX_BITS  bit;
};

//--------------------------------------------
// SPI FIFO control register bit definitions:
// 
//
struct  SPIFFCT_BITS {       // bits   description
   unsigned int TXDLY:8;           // 7:0    FIFO transmit delay
   unsigned int rsvd:8;            // 15:8   reserved
};

union SPIFFCT_REG {
   unsigned int               all;
   struct SPIFFCT_BITS  bit;
};
   
//---------------------------------------------
// SPI configuration register bit definitions:
// 
//
struct  SPICCR_BITS {        // bits   description
   unsigned int SPICHAR:4;         // 3:0    Character length control
   unsigned int SPILBK:1;          // 4      Loop-back enable/disable
   unsigned int rsvd1:1;           // 5      reserved
   unsigned int CLKPOLARITY:1;     // 6      Clock polarity
   unsigned int SPISWRESET:1;      // 7      SPI SW Reset
   unsigned int rsvd2:8;           // 15:8   reserved   
};

union SPICCR_REG {
   unsigned int              all;
   struct SPICCR_BITS  bit;
};

//-------------------------------------------------
// SPI operation control register bit definitions:
// 
//
struct  SPICTL_BITS {        // bits   description
   unsigned int SPIINTENA:1;       // 0      Interrupt enable
   unsigned int TALK:1;            // 1      Master/Slave transmit enable
   unsigned int MASTER_SLAVE:1;    // 2      Network control mode
   unsigned int CLK_PHASE:1;       // 3      Clock phase select
   unsigned int OVERRUNINTENA:1;   // 4      Overrun interrupt enable
   unsigned int rsvd:11;           // 15:5   reserved      
};

union SPICTL_REG {
   unsigned int              all;
   struct SPICTL_BITS  bit;
};

//--------------------------------------
// SPI status register bit definitions:
// 
//
struct  SPISTS_BITS {        // bits   description
   unsigned int rsvd1:5;           // 4:0    reserved
   unsigned int BUFFULL_FLAG:1;    // 5      SPI transmit buffer full flag
   unsigned int INT_FLAG:1;        // 6      SPI interrupt flag
   unsigned int OVERRUN_FLAG:1;    // 7      SPI reciever overrun flag
   unsigned int rsvd2:8;           // 15:8   reserved   
};

union SPISTS_REG {
   unsigned int              all;
   struct SPISTS_BITS  bit;
}; 

//------------------------------------------------
// SPI priority control register bit definitions:
// 
//
struct  SPIPRI_BITS {        // bits   description
   unsigned int rsvd1:4;           // 3:0    reserved
   unsigned int FREE:1;            // 4      Free emulation mode control
   unsigned int SOFT:1;            // 5      Soft emulation mode control
   unsigned int PRIORITY:1;        // 6      Interrupt priority select
   unsigned int rsvd2:9;           // 15:7   reserved
};

union SPIPRI_REG {
   unsigned int              all;
   struct SPIPRI_BITS  bit;
};       

//---------------------------------------------------------------------------
// SPI Register File:
//
struct  SPI_REGS { 
   union SPICCR_REG     SPICCR;      // Configuration register 
   union SPICTL_REG     SPICTL;      // Operation control register
   union SPISTS_REG     SPISTS;      // Status register
   unsigned int               rsvd1;       // reserved
   unsigned int               SPIBRR;      // Baud Rate
   unsigned int               rsvd2;       // reserved
   unsigned int               SPIRXEMU;    // Emulation buffer
   unsigned int               SPIRXBUF;    // Serial input buffer
   unsigned int               SPITXBUF;    // Serial output buffer
   unsigned int               SPIDAT;      // Serial data 
   union SPIFFTX_REG    SPIFFTX;     // FIFO transmit register
   union SPIFFRX_REG    SPIFFRX;     // FIFO recieve register
   union SPIFFCT_REG    SPIFFCT;     // FIFO control register
   unsigned int               rsvd3[2];    // reserved
   union SPIPRI_REG     SPIPRI;      // FIFO Priority control
};


typedef struct tag_flashflags
{
unsigned int flash1;
unsigned int flash2;
unsigned int flash3;
unsigned int flash4;
}flashflags;

extern flashflags flashcheck;

extern volatile struct SPI_REGS spiregs;

void InitSPI(void);

void SaveSafeStruct1(void);
void SaveSafeStruct2(void);
void SaveSafeStruct3(void);
void SaveSafeStruct4(void);
void SaveSafeStruct5(void);
// AJB 15-Feb-10 New function added to save analogue calibration
void SaveXtswplusAnaCal(void);

//void SaveSDSafeStruct(sdsafestruct *ptr, unsigned int position)	;

void SaveFirmwareStruct(void);


void ReadAllFromEEPROM(void);

void WriteClockData(void);
void WriteYrMnthData(void);
void WriteDateHrsData(void);
void WriteMinsSecsData(void);

void ReadClockControl(void);
void ReadClockData(void);
void SelectRTC(void);
void WriteLoggingPtrstoRTCRam(void);
void ReadLoggingPtrsFromRTCRam(void);

void SelectEEprom1(void);
void DeselectEEprom1(void);
void WriteEnableEEprom1(void);
void WriteStatusRegEEprom1(unsigned int wrbyte);
void WritetoMemoryEEprom1(unsigned int addy);
unsigned int ReadEEprom1StatusReg(void);
void ReadMemoryEEprom1(unsigned int addy);

void Fram1ChipCheck(void);
void WriteNVMemory(unsigned int choice,unsigned int position,unsigned int *ptr, unsigned int len);
void ReadNVMemory(unsigned int choice,unsigned int position,unsigned int *ptr, unsigned int len);
void ReadfromMemoryFRAM(unsigned int choice,unsigned int addy);
void WritetoMemoryFRAM(unsigned int choice,unsigned int addy);

void TransmitByte(unsigned int byteout);
unsigned int ReceiveByte(void);
unsigned int ReceiveByteUART_C(void);
void WriteUartConfig_C(unsigned int num);

void CheckFlash(void);
// unsigned int ReadFlash(unsigned long addr, unsigned int *ptr);
// unsigned int WriteBuffertoFlash(unsigned long addr, unsigned int *ptr);

void WaitforUartTxComplete_C(void);
unsigned int ReadDataFromUart_C(void);
void WriteBytetoUart_C(unsigned int databyte);

void SelectUart_C(void);
void DeselectUart_C(void);
void WriteUartConfig_C(unsigned int num);
void WaitforUartTxComplete_C(void);
void WriteBytetoUart_C(unsigned int databyte);
unsigned int ReadDataFromUart_C(void);
unsigned int ReceiveByteUART(void);
void SelectUart_D(void);
void DeselectUart_D(void);
void WriteUartConfig_D(unsigned int num);
void WaitforUartTxComplete_D(void);
void WriteBytetoUart_D(unsigned int databyte);
unsigned int ReadDataFromUart_D(void);


void ReadTest(void);
void WriteTest(void);

int Fram1MagicNumberRead(void);
void Fram1MagicNumberWrite(void);


#endif  // end



