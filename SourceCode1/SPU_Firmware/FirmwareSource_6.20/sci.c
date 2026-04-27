/******************************************************************************
* FILENAME: SCI.C
* Serial Communications Interface Code
******************************************************************************/

#include <ctype.h>
#include "define.h"
#include "sci.h"
#include "core.h"
#include "globals.h"
#include "utils.h"
#include "pcmodbus.h"
#include "wioprim.h"
#include "slave485.h"
#include "setup.h"
#include "pccli.h" // PF Gen 2 - 02-Mar-12 added to allow string buffer to work

#define CLITOUARTA 0	//false to send to daughter board uart d

//see command file for actual location
#pragma DATA_SECTION(sciportA, ".sciportAregisters");
#pragma DATA_SECTION(sciportB, ".sciportBregisters");

volatile sciport sciportA;
volatile sciport sciportB;

// AJB 15-Feb-10 .commsection moved to .commssection1 and .commsection2 to allow for larger buffers
#pragma DATA_SECTION(receiveA,  ".commssection1");
#pragma DATA_SECTION(transmitA, ".commssection1");
#pragma DATA_SECTION(receiveB,  ".commssection2");
#pragma DATA_SECTION(transmitB, ".commssection2");
#pragma DATA_SECTION(receiveC,  ".commssection1");
// AJB 15-Feb-10 EOM

uartreadA receiveA;
uartwrite transmitA;

uartreadB receiveB;
uartwrite transmitB;

uartreadC receiveC;		//smaller buffer in structure for uartC
uartreadD receiveD;


unsigned int SendCharC(unsigned int c);
unsigned int SendCharD(unsigned int c);
char ReadCharfromUartD(void);


void Init485Drivers(void)
{
	EALLOW
		GPADIR |= 0x001F;	//setup first 5 pins as outputs
		GPBDIR |= 0x0300;
		GPFDIR |= 0x1800;
	EDIS
	gpb.selunion.bits.disp485rxen = 0;	//display receive on
	gpb.selunion.bits.disp485txen = 0;	//display transmit off
	gpf.selunion.bits.pc485rxen = 0;	//pc receive on
	gpf.selunion.bits.pc485txen = 0;	//pc transmit off

	COM_SELECT = 0;	//set low for XTSW+ this allows comms to be output from UARTA to 485 from comms to 2nd spu

	//set these high to begin
	ANAIN_SELECT1 = 1;
	ANAIN_SELECT2 = 1;
	ANAIN_SELECT3 = 1;
	PROGRAM_CS = 1;


}

void SerialPortASetup(void)
{

	EALLOW
	GPFDIR |= 0x10;
	GPFMUX |= 0x30;		//set up in peripheral mode rather than gpio
	PCLKCR |= 0x400;	//bit 10 set LSPCLK enabled for SCI
	//change this according to the SYSCLKOUT speed							
	//set up the low speed peripheral clock prescaler
	//binary 010 = SYSCLKOUT/4 for 150MHz SYSCLKOUT low LSPCLK = 37.5MHz
	LOSPCP = LSPCLK_PRE;		//(2 - is the default setting)
	EDIS
	NOPDelay(600);		//delay after chaning the clock speed to allow for resetting
	sciportA.sciccr = 0x07;	//set mode 1 stop bit, no parity, loopback disabled, idle line mode protocol
								//8 bit character
	sciportA.scictl1 = 0x23;	//rx error int disabled, sw reset mode for SCI, transmit feature disabled,
								//sleep mode disabled,tx enabled, rx enabled
								//NOTE MUST SET BIT 5 HIGH TO ENABLE THE SCI
	
	//baud = LSPCLK/((BRR+1)*8) error = 0.06% for 38400bps
	sciportA.scihbaud = SCIA_HBAUD_PRE;		////set higher value to zero
	sciportA.scilbaud = SCIA_LBAUD_PRE;	//this gives a baud rate of 38400bps

	sciportA.scifftx = 0x8000;	//fifo registers - not used
	sciportA.sciffrx = 0x00;
	sciportA.sciffct = 0x00;
	sciportA.scipri = 0x00; 	//occurences for emulation suspend
	
	sciportA.scictl2 |= 0x02;	//deal with interrupt enables (enable receive only as we are sending char at a time)
	
	receiveA.headptr = receiveA.tailptr = receiveA.buf;
	receiveA.eobuf = receiveA.buf + RXBUFFSIZE_A;

	receiveA.currentcharcount = 0;
	receiveA.previouscharcount = 0;

	transmitA.headptr = transmitA.tailptr = transmitA.buf;
	transmitA.eobuf = transmitA.buf + TXBUFFSIZE;

}


void SerialPortBSetup(void)
{

	EALLOW
	GPGDIR |= 0x10;
	GPGMUX |= 0x30;		//set up in peripheral mode rather than gpio
	PCLKCR |= 0x800;	//bit 11 set LSPCLK enabled for SCI-B
	//change this according to the SYSCLKOUT speed							
	//set up the low speed peripheral clock prescaler
	//binary 010 = SYSCLKOUT/4 for 150MHz SYSCLKOUT low LSPCLK = 37.5MHz
	LOSPCP = LSPCLK_PRE;		//set to speed defined in define.h
	EDIS
	NOPDelay(600);		//delay after chaning the clock speed to allow for resetting
	sciportB.sciccr = 0x07;	//set mode 1 stop bits, no parity, loopback disabled, idle line mode protocol
								//8 bit character
	sciportB.scictl1 = 0x23;	//rx error int disabled, sw reset mode for SCI, transmit feature disabled,
								//sleep mode disabled,tx enabled, rx enabled
								//NOTE MUST SET BIT 5 HIGH TO ENABLE THE SCI

	//NOTE ON BAUD RATE:
	//Tests have shown at 38400 it takes approx 8-9ms to request and receive a 44 byte packet on the modbus
	//overall a packet takes 32ms packet to packet using a labview progrm to request and store each packet
	
	//at 460800bps it taks 3.5ms currently to request and receive a packet
	//overall it take 18-19ms packet to packet!
	
	//baud = LSPCLK/((BRR+1)*8) error = 0.06% for 38400bps
	
	sciportB.scihbaud = SCIB_HBAUD_PRE;		//this gives a baud rate of 38400bps
	sciportB.scilbaud = SCIB_LBAUD_PRE;		//this gives a baud rate of 38400bps

	sciportB.scifftx = 0x8000;	//fifo registers - not used
	sciportB.sciffrx = 0x00;
	sciportB.sciffct = 0x00;
	sciportB.scipri = 0x00; 	//occurences for emulation suspend
	
	sciportB.scictl2 |= 0x03;	//deal with interrupt enables
	//485 turnaround does not permit the use of interrupts as we must know that last char has gone before turnaround of 485
	sciportB.scictl2 |= 0x02;	//deal with interrupt enables (enable receive only as we are sending char at a time)

	receiveB.headptr = receiveB.tailptr = receiveB.buf;
	receiveB.eobuf = receiveB.buf + RXBUFFSIZE_B;
	receiveB.charcount = 0;

	transmitB.headptr = transmitB.tailptr = transmitB.buf;
	transmitB.eobuf = transmitB.buf + TXBUFFSIZE;

	timers.pcmodbus = PCCOMMS_ERROR_TIMEOUT;	//set timer, will timeout if nothing sent for a while
	pcmodbus.errorflag = FALSE;

	safe2.modbus.address = 1;					//default address - always use this address for spu

}

//Transmit interrupt has gone high
//If we have more to send then send it
void PerformSciTxIntA(void)
{
	//check if txrdy set to 1, if so load next character
	if((sciportA.scictl2 & TXRDY) != 0)
	{
		if (transmitA.headptr != transmitA.tailptr)
		{
			sciportA.scitxbuf = *transmitA.tailptr;		//send character at the pointer
			if(++transmitA.tailptr == transmitA.eobuf)transmitA.tailptr = transmitA.buf;
		}	
	}
	
}

//Receive interrupt has gone high
void PerformSciRxIntA(void)
{
	//AJB 19-Aug-10
	//whilst transmit is in progress we do not want to deal with receive (as this would not be real data)
	//performing a reset of the SCI at this point will cause the ongoing transmit to fail!
	if(DB485_TXRXEN == DB485_RECEIVE)
	{
		if((sciportA.scirxst & 0x80) != FALSE)	//rx error, deal with error
		{
			//this could be a framing error, break detect error, overrun error, or parity error
			sciportA.scictl1 &= ~0x20;	//sw reset for sci
			sciportA.scictl1 |= 0x20;	//out of reset
		}
		else
		{
			receiveA.buf[receiveA.currentcharcount] = sciportA.scirxbuf;			// Read incoming data
			//increment the pointer on receiving new characters (cleared when the incoming data is processed)
			//reading the rxbuf clears the scirxst bits rxrdy etc...
			if (++receiveA.currentcharcount >= RXBUFFSIZE_A) receiveA.currentcharcount = 0;
			//use below for cli if cli is being used on UART A
			if (++receiveA.headptr == receiveA.eobuf) receiveA.headptr = receiveA.buf;
		}
	}
}

//Transmit interrupt has gone high
//If we have more to send then send it
void PerformSciTxIntB(void)
{
	//check if txrdy set to 1, if so load next character
	if((sciportB.scictl2 & TXRDY) != 0)
	{
		if (transmitB.headptr != transmitB.tailptr)
		{
			sciportB.scitxbuf = *transmitB.tailptr;		//send character at the pointer
			if(++transmitB.tailptr == transmitB.eobuf)transmitB.tailptr = transmitB.buf;
		}	
	}
	
}

//Receive interrupt has gone high
void PerformSciRxIntB(void)
{
	//AJB 19-Aug-10
	//whilst transmit is in progress we do not want to deal with receive (as this would not be real data)
	//performing a reset of the SCI at this point will cause the ongoing transmit to fail!
	if(gpf.selunion.bits.pc485txen == 0)	//do not deal with the interrupt if we are transmitting
	{
		if((sciportB.scirxst & 0x80) != FALSE)	//rx error, deal with error
		{
			//this could be a framing error, break detect error, overrun error, or parity error
			sciportB.scictl1 &= ~0x20;	//sw reset for sci
			sciportB.scictl1 |= 0x20;	//out of reset
		}
		else
		{
			*receiveB.headptr = sciportB.scirxbuf;			// Read incoming data
			receiveB.currentcharcount++;	//increment the pointer on receiving new characters (cleared when the incoming data is processed)
			//reading the rxbuf clears the scirxst bits rxrdy etc...
			if (++receiveB.headptr == receiveB.eobuf) receiveB.headptr = receiveB.buf;
			//set timout whilst receiving. once received this will count down
			//must respond within timout, otherwise do not send anything
			timers.pctxtimeout = PCTXTIMEOUT;		//set timer to timeout limit decremented every 1ms
		}
	}
	//AJB 19-Aug-10 EOM
}


//Receive interrupt has gone low from external port (on daughter card UART D)
void PerformSciRxIntD(void)
{

	if(DB_UART_IRQ == DBUART_RECEIVE_STATE)
	{
		*receiveD.headptr = (ReadDataFromUart_D()) & 0x00FF;	// Read incoming data
		receiveD.currentcharcount++;	//increment the pointer on receiving new characters (cleared when the incoming data is processed)
		//reading the rxbuf clears the scirxst bits rxrdy etc...
		if (++receiveD.headptr == receiveD.eobuf) receiveD.headptr = receiveD.buf;
	}

}

char SendChar(char c)
{
	sciportA.scictl1 |= TXENA; 		//make sure transmit is enabled
	*transmitA.headptr = c;				//load into send buffer
	if(++transmitA.headptr == transmitA.eobuf) transmitA.headptr = transmitA.buf; //reset pointer if at end of buffer	
	//Remove the following while loop if proper hand shaking between pc and dsp
	while((sciportA.scictl2 & TXRDY) == 0) settings.watchdog = 1;	//wait here until character sent
	if((sciportA.scictl2 & TXRDY) != 0)
	{	//send first character in string
		sciportA.scictl2 &= ~0x01;	//disable transmit interrupt, this stops an interrupt occuring
										//whilst sending the first character.  If this is not done
										//an interrupt may occur at the end of the transmit buffer
										//causing an extra character to be sent! (This happens before the
										//next line of code. i.e. the tailptr has not been reset yet!)
		sciportA.scitxbuf = *transmitA.tailptr;		//send character at the pointer
		if(++transmitA.tailptr == transmitA.eobuf) transmitA.tailptr = transmitA.buf;	//increment tail ptr reset if necessary
	}
	return(c);
}

char SendCharB(char c)
{
	sciportB.scictl1 |= TXENA; 		//make sure transmit is enabled
	*transmitB.headptr = c;				//load into send buffer
	if(++transmitB.headptr == transmitB.eobuf) transmitB.headptr = transmitB.buf; //reset pointer if at end of buffer	
	
	//for the purposes of 485 send char and wait
	while((sciportB.scictl2 & TXRDY) == 0)settings.watchdog = 1;	//wait here until character sent
	
	if((sciportB.scictl2 & TXRDY) != 0)
	{	//send first character in string
		sciportB.scictl2 &= ~0x01;	//disable transmit interrupt, this stops an interrupt occuring
										//whilst sending the first character.  If this is not done
										//an interrupt may occur at the end of the transmit buffer
										//causing an extra character to be sent! (This happens before the
										//next line of code. i.e. the tailptr has not been reset yet!)
		sciportB.scitxbuf = *transmitB.tailptr;		//send character at the pointer
		if(++transmitB.tailptr == transmitB.eobuf) transmitB.tailptr = transmitB.buf;	//increment tail ptr reset if necessary
	}
	timers.pcmodbus = PCCOMMS_ERROR_TIMEOUT;	//set timer, will timeout if nothing sent for a while
	pcmodbus.errorflag = FALSE;
	return(c);
}


char SendCLIChar(char c)
{
	if(CLITOUARTA == FALSE) SendCharD(c);
	else SendChar(c);
	return(c);
}

void CLITransmitBuffer(char* ptr)
{
unsigned int i;
	i = 0;
	while(ptr[i] != 0)	//check for null
	{
		if(CLITOUARTA == FALSE) SendCharD(ptr[i]);
		else SendChar(ptr[i]);

		i++;
		settings.watchdog = 1;
	}
}

//Used for sending debugging commands to the serial
void DebugStringOut(char* ptr)
{
	if(settings.serialdebug == SERIAL_ENB)
	{
		//removed the send if not using the debug out
		CLITransmitBuffer(ptr);
	}
}


//Send buffer for uart a.  This is sent to the slave SPU on UART1 from the DSP
//FOR GEN1.5 this will go via the converter on the daughter board
void MastertoSlaveSendBuffer(unsigned int* ptr, unsigned int count)
{
unsigned int i;

	DB485_TXRXEN = DB485_TRANSMIT;

    NOPDelay(600);	//small delay before sending
    NOPDelay(600);	//small delay before sending
    NOPDelay(600);	//small delay before sending

	for(i=0;i<count;i++)
	{
		SendChar((char)ptr[i]);
		settings.watchdog = 1;
	}
	if(DB485_COMMS_RATE < 6)	//for baud rates below 38400bps, not ready to switch off transmit yet!!
	{
		timers.pctxtimeout = 5;	//at least 20ms wait
		while(timers.pctxtimeout != 0) settings.watchdog = 1;	//kick the dog in the timer interrupt, wait here before dropping the transmit enable
	}
	NOPDelay(600);	//small delay after sending
	NOPDelay(600);	//small delay after sending
	NOPDelay(600);	//small delay after sending
	NOPDelay(600);	//small delay after sending

	DB485_TXRXEN = DB485_RECEIVE;

	//perform SCI reset in case we received any error condition (on the receive), whilst transmitting
	//this has been seen to occur if the receive line falls low whilst in transmit (this ipin is floating)
	//when the MAX3535 is not in receive mode
	sciportA.scictl1 &= ~0x20;	//sw reset for sci
	sciportA.scictl1 |= 0x20;	//out of reset


}

void LoadSendBufferB(unsigned int* ptr, unsigned int count)
{
unsigned int i;

	gpf.selunion.bits.pc485rxen = 1;	//pc receive off
    gpf.selunion.bits.pc485txen = 1;	//pc transmit on
    NOPDelay(600);	//small delay before sending
    NOPDelay(600);	//small delay before sending
    NOPDelay(600);	//small delay before sending

	for(i=0;i<count;i++)
	{
		SendCharB((char)ptr[i]);
		settings.watchdog = 1;
	}
	if(PC_COMMS_RATE < 6)	//for baud rates below 38400bps, not ready to switch off transmit yet!!
	{
		timers.pctxtimeout = 5;	//at least 20ms wait
		while(timers.pctxtimeout != 0) settings.watchdog = 1;	//kick the dog in the timer interrupt, wait here before dropping the transmit enable
	}
	NOPDelay(600);	//small delay after sending
	NOPDelay(600);	//small delay after sending
	NOPDelay(600);	//small delay after sending
	NOPDelay(600);	//small delay after sending
	gpf.selunion.bits.pc485txen = 0;	//pc transmit off
	gpf.selunion.bits.pc485rxen = 0;	//pc receive on
	NOPDelay(300);	//small delay after sending
	//AJB 19-Aug-10
	//perform SCI reset in case we received any error condition (on the receive), whilst transmitting
	//this has been seen to occur if the receive line falls low whilst in transmit (this pin is floating)
	//when the MAX3535 is not in receive mode
	//sciportB.scictl1 &= ~0x20;	//sw reset for sci
	//sciportB.scictl1 |= 0x20;	//out of reset

}

//read back the cli character depending on mode (master or slave)
char ReadCLIChar(void)
{
char flag;

	if(CLITOUARTA == TRUE)
	{
		flag = ReadCharfromUartA();
		if(flag == TRUE) return(toupper(receiveA.uartcharrx));
		else return 0;
	}
	else
	{
		flag = ReadCharfromUartD();
		if(flag == TRUE) return(toupper(receiveD.uartcharrx));
		else return 0;
	}

}

//Checks for a received character
//Returns the character received
char ReadCharfromUartA(void)
{
unsigned char charrx;
	charrx = 0;
	if (receiveA.headptr != receiveA.tailptr)				// compare head and tail pointers
	{
		charrx = TRUE;		//toupper(*receiveA.tailptr);
		receiveA.uartcharrx = *receiveA.tailptr;
		if (++receiveA.tailptr == receiveA.eobuf) receiveA.tailptr = receiveA.buf;	// reset pointer if end of buffer
	}
	return(charrx);
}

//Checks for a received character
//Returns true if character received
//modbusrxchar contains new char
char ReadCharfromUartB(void)
{
unsigned char charrx;
	charrx = 0;
	if (receiveB.headptr != receiveB.tailptr)				// compare head and tail pointers
	{
		charrx = 1; //set if new char received
		modbusrxchar = *receiveB.tailptr;
		if (++receiveB.tailptr == receiveB.eobuf) receiveB.tailptr = receiveB.buf;	// reset pointer if end of buffer
	}
	return(charrx);
}


char ReadCharfromUartD(void)
{
unsigned char charrx;

	charrx = 0;

	//read in the data on a polled basis - ideally this should be in an interrupt
	PerformSciRxIntD();

	if (receiveD.headptr != receiveD.tailptr)				// compare head and tail pointers
	{
		charrx = TRUE;		//toupper(*receiveA.tailptr);
		receiveD.uartcharrx = *receiveD.tailptr;
		if (++receiveD.tailptr == receiveD.eobuf) receiveD.tailptr = receiveD.buf;	// reset pointer if end of buffer
	}
	return(charrx);
}

void SerialPortCSetup(void)
{
	receiveC.currentcharcount = 0;
	receiveC.previouscharcount = 0;
	gpb.selunion.bits.disp485txen = 0;	//transmit off
	gpb.selunion.bits.disp485rxen = 0;	//receive on
	WriteUartConfig_C(SLAVE_485_BAUD_SPU);
	ReadDataFromUart_C();
	receiveC.receiveINTR = 0;
	receiveC.currentcharcount = 0;
	receiveC.previouscharcount = 0;
}

void SerialPortDSetup(void)
{
	receiveD.currentcharcount = 0;
	receiveD.previouscharcount = 0;
	WriteUartConfig_D(0);
	ReadDataFromUart_D();
	receiveD.receiveINTR = 0;
	receiveD.currentcharcount = 0;
	receiveD.previouscharcount = 0;

	receiveD.headptr = receiveD.tailptr = receiveD.buf;
	receiveD.eobuf = receiveD.buf + UARTDRXBUFFSIZE;
}

//Third UART, external SPI uart
unsigned int SendCharC(unsigned int c)
{
	WriteBytetoUart_C(c);
	return(c);
}

//Fourth UART, external SPI uart
unsigned int SendCharD(unsigned int c)
{
	WriteBytetoUart_D(c);
	return(c);
}

void LoadSendBufferC(unsigned int* ptr, unsigned int count)
{
unsigned int i;

	gpb.selunion.bits.disp485txen = 1;	//receive off
    gpb.selunion.bits.disp485rxen = 1;	//transmit on
    NOPDelay(600);	//small delay before sending
    NOPDelay(600);	//small delay before sending
    NOPDelay(600);	//small delay before sending
	for(i=0;i<count;i++)
	{
		SendCharC(ptr[i]);
		settings.watchdog = 1;
	}
	WaitforUartTxComplete_C();
	NOPDelay(600);	//small delay after sending
	NOPDelay(600);	//small delay after sending
	NOPDelay(600);	//small delay after sending
	NOPDelay(600);	//small delay after sending
	gpb.selunion.bits.disp485txen = 0;	//transmit off
	gpb.selunion.bits.disp485rxen = 0;	//receive on
}

//Receive interrupt from SPI UART
void PerformSciRxIntC(void)
{
	receiveC.buf[receiveC.currentcharcount] = (ReadDataFromUart_C()) & 0x00FF;	// Read incoming data
	//reading the rxbuf clears the scirxst bits rxrdy etc...
	//cannot receive more than 100 chars in one go, due to buffer size
	//this is enough for the standard read or write register commands
	if (++receiveC.currentcharcount >= UARTCRXBUFFSIZE) receiveC.currentcharcount = 0;
}


// PF Gen 2 - 01-Mar-12 Added in function to clear comms errors
void clearCommsErrors(void)
{

	if((sciportA.scirxst & 0x80) != FALSE)	//rx error, deal with error
	{
		DebugStringOut("Reset Port A\r\n"); // DEBUG
		//this could be a framing error, break detect error, overrun error, or parity error
		sciportA.scictl1 &= ~0x20;	//sw reset for sci
		sciportA.scictl1 |= 0x20;	//out of reset
	}

	if((sciportB.scirxst & 0x80) != FALSE)	//rx error, deal with error
	{
		DebugStringOut("Reset Port B\r\n"); // DEBUG
		//this could be a framing error, break detect error, overrun error, or parity error
		sciportB.scictl1 &= ~0x20;	//sw reset for sci
		sciportB.scictl1 |= 0x20;	//out of reset
	}
}
// PF Gen 2 - 01-Mar-12 EOM

