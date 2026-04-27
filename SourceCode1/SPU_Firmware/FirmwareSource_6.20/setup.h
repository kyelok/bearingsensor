/******************************************************************************
* FILENAME: setup.H
*
* This includes the
* interrupt vectors, initial portion of the Interrupt Service Routines
* (ISRs), interrupt generation code, and control registers. 
******************************************************************************/
#ifndef setupH
#define setupH

#define FOPT		*((volatile uint16 *)0x0A80) /* Flash option register ENPIPE bit 0*/

#define PIECTRL     *((volatile uint16 *)0xce0) /* PIE Control reg      */
#define PIEACK      *((volatile uint16 *)0xce1) /* PIE Acknowledge reg  */
#define PIEIER1     *((volatile uint16 *)0xce2) /* PIE Int Enable 1 reg */
#define PIEIER9     *((volatile uint16 *)0xcf2) /* PIE Int Enable 9 reg */

#define XINT1CR     *((volatile uint16 *)0x7070)	/* XINT 1 enable reg */
#define XINT2CR     *((volatile uint16 *)0x7071)	/* XINT 2 enable reg */
#define XMNICR      *((volatile uint16 *)0x7077)	/* XMNI enable reg */

#define WDKEY        *((volatile uint16 *)0x7025) /* WD Key */      
#define WDCR        *((volatile uint16 *)0x7029) /* WD Control reg */      

#define ENABLE_WD   0x002F	//enabled (maximum divider)
#define DISABLE_WD  0x006F	//disabled (prescaler set /64
//watchdog will be 512/64 therefore from 30Mhz OSCCLK = 30Mhz/512/64 = 915.5Hz = 1ms
//then the 8bit counter will 256ms before watchdog reset
//therefore must kick it regularly!!!!

/*-----------------------------------------------------------------------------
* Constants used in programming the C28x.
-----------------------------------------------------------------------------*/
#define Int1_IER  0x0001          /* Enable INT1 for IER, DBIGER */
#define Int9_IER  0x0100		 /* Enable INT9 for IER, DBIGER */
#define Int13_IER 0x1000         /* Enable INT13 for IER, DBIGER */
#define Int14_IER 0x2000         /* Enable INT14 for IER, DBIGER */

/*---- Function prototypes --------------------------------------------------*/
interrupt void UnusedIsr(void);
interrupt void SPIUart_XMNI(void);
interrupt void Int1Xint1Isr(void);
interrupt void Int1Xint2Isr(void);
interrupt void Int1Isr(void);
interrupt void Int13Isr(void);
interrupt void Int14Isr(void);
interrupt void Int9SciTxIntA(void);
interrupt void Int9SciRxIntA(void);
interrupt void Int9SciRxIntB(void);
interrupt void Int9SciTxIntB(void);
void SetupInterruptsandTimers(void);
void SetupPIEVectors(void);
void TimingSetup(void);
void FlashSetup(void);
void InternalRamSetup(void);

void SetupWatchdog(void);
void AllSensorInit(void);
void SetupDefaultSettings(void);
void SetupSensorStatusDefaults(void);
void SetupOffsetDefaults(void);

#endif
/* EOF */
