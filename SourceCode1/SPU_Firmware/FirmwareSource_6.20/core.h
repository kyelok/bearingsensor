/******************************************************************************
* FILENAME: CORE.H
******************************************************************************/
#ifndef coreH
#define coreH
/*---- Typedefs used throughout  ------------------------------------*/
typedef unsigned char uchar;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;

#define EALLOW	asm(" eallow             ; Enable accesses to PIE control registers");
#define EDIS	asm(" edis               ; Disable accesses to PIE control registers");


#define HI 1
#define LO 0

#define LPMCR0 *((volatile uint16 *)0x701E) /*lowe power modes lower register */

#define GPAQUAL *((volatile uint16 *)0x70C2)
#define GPADIR *((volatile uint16 *)0x70C1) /* GPIOA direction reg */
#define GPBDIR *((volatile uint16 *)0x70C5) /* GPIOB direction reg */
#define GPDDIR *((volatile uint16 *)0x70CD) /* GPIOD direction reg */
#define GPEDIR *((volatile uint16 *)0x70D1) /* GPIOE direction reg */
#define GPEQUAL *((volatile uint16 *)0x70D2)	//qualify the input over set period (eliminates noise)

#define GPGMUX *((volatile uint16 *)0x70D8) /* GPIOG MUX reg */


/*XINTF Registers */
#define XBANK *((volatile unsigned int *)0x0B38) /* XBANK REGISTER */

#define XTIMING0 *((volatile unsigned long *)0x0B20) /* XTIMING0 REGISTER */
#define XTIMING1 *((volatile unsigned long *)0x0B22) /* XTIMING1 REGISTER */
#define XTIMING2 *((volatile unsigned long *)0x0B24) /* XTIMING2 REGISTER */
#define XTIMING6 *((volatile unsigned long *)0x0B2C) /* XTIMING6 REGISTER */
#define XTIMING7 *((volatile unsigned long *)0x0B2E) /* XTIMING7 REGISTER */

#define XINTCNF2 *((volatile uint16 *)0x0B34) /*xintcnf2 reg  */
#define PLLCR *((volatile uint16 *)0x7021)

#define GPFMUX *((volatile uint16 *)0x70D4) /* GPIOF mux reg */
#define GPFDIR *((volatile uint16 *)0x70D5) /* GPIOF direction reg */
#define GPGDIR *((volatile uint16 *)0x70D9) /* GPIOG direction reg */
    
#if defined (__TMS320C27XX__) || defined (__TMS320C28XX__) || \
    defined (__TMS470__) || defined (_TMS320C5XX)
    /*-------------------------------------------------------------------------
    * The following is true for TMS320C27x, TMS320C28x, TMS320C54x, and TMS470R1x:
    *    signed short is 16-bits, 2s complement, -32768 to 32767
    *    unsigned short is 16-bits, binary, 0 to 65535
    *    signed long is 32-bits, 2s complement, -2147483648 to 2147483647
    *    unsigned long is 32-bits, binary, 0 to 4294967295
    *------------------------------------------------------------------------*/
    typedef short int16;
    typedef unsigned short uint16;
    typedef long int32;
    typedef unsigned long uint32;
#endif

#if defined (_TMS320C6X)
    /*------------------------------------------------------------------------
    * The following is true for TMS320C6x:
    *    signed short is 16-bits, 2s complement, -32768 to 32767
    *    unsigned short is 16-bits, binary, 0 to 65535
    *    signed int is 32-bits, 2s complement, -2147483648 to 2147483647
    *    unsigned int is 32-bits, binary, 0 to 4294967295
    *------------------------------------------------------------------------*/
    typedef short int16;
    typedef unsigned short uint16;
    typedef int int32;
    typedef unsigned int uint32;
#endif


//PORTS

typedef struct taggpaport
{
	union
	{
		unsigned int port;
		struct
		{
			unsigned anain_select1	:1;
			unsigned anain_select2	:1;
			unsigned anain_select3	:1;
			unsigned program_cs		:1;
			unsigned com_select		:1;
			unsigned s1 	  		:1;
			unsigned s2				:1;
			unsigned s3				:1;
			unsigned s4				:1;
			unsigned s5				:1;
			unsigned s6				:1;
			unsigned s7 			:1;
			unsigned s8 			:1;
			unsigned s9				:1;
			unsigned s10			:1;
			unsigned s11			:1;
		}bits;
	}selunion;
}gpaport;

extern volatile gpaport gpa;

typedef struct taggpbport
{
	union
	{
		unsigned int port;
		struct
		{
			unsigned s12			:1;
			unsigned s13			:1;
			unsigned s14			:1;
			unsigned s15			:1;
			unsigned s16			:1;
			unsigned s17			:1;
			unsigned s18			:1;
			unsigned s19			:1;
			unsigned disp485txen	:1;
			unsigned disp485rxen	:1;
			unsigned gpio1	 		:1;
			unsigned gpio2 			:1;
			unsigned gpio3 			:1;
			unsigned gpio4			:1;
			unsigned rtccs			:1;
			unsigned op3			:1;
		}bits;
	}selunion;
}gpbport;

extern volatile gpbport gpb;

typedef struct taggpdport
{
	union
	{
		unsigned int port;
		struct
		{
			unsigned modeswitch	:1;
			unsigned led1		:1;
			unsigned bit2		:1;
			unsigned bit3		:1;
			unsigned bit4  		:1;
			unsigned ccselect1  :1;
			unsigned ccselect2  :1;
			unsigned bit7  		:1;
			unsigned bit8  		:1;
			unsigned bit9  		:1;
			unsigned bit10 		:1;
			unsigned bit11 		:1;
			unsigned bit12 		:1;
			unsigned bit13 		:1;
			unsigned bit14 		:1;
			unsigned bit15 		:1;
		}bits;
	}selunion;
}gpdport;

extern volatile gpdport gpd;

typedef struct taggpeport
{
	union
	{
		unsigned int port;
		struct
		{
			unsigned macint		:1;
			unsigned rpm1		:1;
			unsigned uartirq	:1;
			unsigned bit3  		:1;
			unsigned bit4  		:1;
			unsigned bit5  		:1;
			unsigned bit6  		:1;
			unsigned bit7  		:1;
			unsigned bit8  		:1;
			unsigned bit9  		:1;
			unsigned bit10 		:1;
			unsigned bit11 		:1;
			unsigned bit12 		:1;
			unsigned bit13 		:1;
			unsigned bit14 		:1;
			unsigned bit15 		:1;
		}bits;
	}selunion;
}gpeport;

extern volatile gpeport gpe;

typedef struct taggpfport
{
	union
	{
		unsigned int port;
		struct
		{
			unsigned spimo		:1;
			unsigned spimi		:1;
			unsigned spiclk		:1;
			unsigned spiste		:1;
			unsigned scitxa		:1;
			unsigned scirxa		:1;
			unsigned op1		:1;
			unsigned op2		:1;
			unsigned spiselect1	:1;
			unsigned spiselect2	:1;
			unsigned spiselect3	:1;
			unsigned pc485rxen	:1;
			unsigned pc485txen	:1;
			unsigned modeselect	:1;
			unsigned xf_xplldis :1;
			unsigned notused3	:1;
		}bits;
	}selunion;
}gpfport;

extern volatile gpfport gpf;


typedef struct taggpgport
{
	union
	{
		unsigned int port;
		struct
		{
			unsigned bit0  	:1;
			unsigned bit1  	:1;
			unsigned bit2 	:1;
			unsigned bit3 	:1;
			unsigned scitxb	:1;
			unsigned scirxb	:1;
			unsigned bit6 	:1;
			unsigned bit7  	:1;
			unsigned bit8  	:1;
			unsigned bit9  	:1;
			unsigned bit10 	:1;
			unsigned bit11 	:1;
			unsigned bit12 	:1;
			unsigned bit13 	:1;
			unsigned bit14 	:1;
			unsigned bit15 	:1;
		}bits;
	}selunion;
}gpgport;

extern volatile gpgport gpg;

/*---- Function prototypes --------------------------------------------------*/
void PerformIsr1(void);
void PerformIsr13(void);
void PerformIsr14(void);

void TimerCheck(void);
void WatchdogKick(void);

#endif
/* EOF */
