#ifndef _MMC_MCF_C_
#define _MMC_MCF_C_

/****************************************************************************
 *
 *            Copyright (c) 2003 by HCC Embedded 
 *
 * This software is copyrighted by and is the sole property of 
 * HCC.  All rights, title, ownership, or other interests
 * in the software remain the property of HCC.  This
 * software may only be used in accordance with the corresponding
 * license agreement.  Any unauthorized use, duplication, transmission,  
 * distribution, or disclosure of this software is expressly forbidden.
 *
 * This Copyright notice may not be removed or modified without prior
 * written consent of HCC.
 *
 * HCC reserves the right to modify this software without notice.
 *
 * HCC Embedded
 * Budapest 1132
 * Victor Hugo Utca 11-15
 * Hungary
 *
 * Tel:  +36 (1) 450 1302
 * Fax:  +36 (1) 450 1303
 * http: www.hcc-embedded.com
 * email: info@hcc-embedded.com
 *
 ***************************************************************************/
#include <stdio.h>
#include <string.h>
#include "mmc_mcf.h"
#include "core.h"
#include "globals.h"
#include "spi.h"
#include "sci.h"
#include "pccli.h"
#include "adc.h"
#include "utils.h"

#define CLKIN 9375000	//clkin set to 9.375MHz

#ifdef HCC_HW

/****************************************************************************
 *
 * port defintions
 *
 ***************************************************************************/
#ifdef FAT_CONF_5282

#define CLKIN 66350000

#define IPSBAR 0x40000000
/****************************** SPI *************************************/
#define QMR (*(volatile unsigned short *)(IPSBAR+0x340))
#define QDLYR (*(volatile unsigned short *)(IPSBAR+0x344))
#define QWR (*(volatile unsigned short *)(IPSBAR+0x348))
#define QIR (*(volatile unsigned short *)(IPSBAR+0x34c))
#define QAR (*(volatile unsigned short *)(IPSBAR+0x350))
#define QDR (*(volatile unsigned short *)(IPSBAR+0x354))


/***************************** PORT *************************************/
#define PORTQ_DIR (*(volatile unsigned char *)(IPSBAR+0x100021))
#define PORTQ_ASSIGN (*(volatile unsigned char *)(IPSBAR+0x100059))
#define PORTQ_DATA ((volatile unsigned char *)(IPSBAR+0x100035))

#define SPIPORT_DIR PORTQ_DIR
#define SPIPORT_ASSIGN PORTQ_ASSIGN
#define SPIPORT_WP PORTQ_DATA
#define SPIPORT_CD PORTQ_DATA

#define SPIWP  (1<<4)  /* write protect */
#define SPICD  (1<<6)  /* card detect */

#else

#define CLKIN 62500000

#define MBAR 0x10000000

/****************************** SPI *************************************/
#define QMR (*(volatile unsigned short *)(MBAR+0xa0))
#define QDLYR (*(volatile unsigned short *)(MBAR+0xa4))
#define QWR (*(volatile unsigned short *)(MBAR+0xa8))
#define QIR (*(volatile unsigned short *)(MBAR+0xac))
#define QAR (*(volatile unsigned short *)(MBAR+0xb0))
#define QDR (*(volatile unsigned short *)(MBAR+0xb4))

#define CPTQP ((QWR&0xf0)>>4)

/***************************** PORT *************************************/
#define PORTA_CTRL (*(volatile unsigned long *)(MBAR+0x80))
#define PORTD_CTRL (*(volatile unsigned long *)(MBAR+0x98))
#define PORTA_DIR (*(volatile unsigned short *)(MBAR+0x84))
#define PORTA_DATA_WP ((volatile unsigned char *)(MBAR+0x86))
#define PORTA_DATA_CD ((volatile unsigned char *)(MBAR+0x87))

#define SPIPORT_CTRL PORTA_CTRL
#define SPIPORT_DIR PORTA_DIR
#define SPIPORT_WP PORTA_DATA_WP
#define SPIPORT_CD PORTA_DATA_CD

#define SPIWP  (1<<3)  /* write protect */
#define SPICD  (1<<7)  /* card detect */

#endif

/* #define spiCS */

#endif

//set-up a dummy card detect port, assume card is always present
static unsigned char carddetectport;
#define SPIPORT_CD ((unsigned char *)&carddetectport)
#define SPICD (0x01)	//define as bit 0

static unsigned char wpport;
#define SPIPORT_WP ((volatile unsigned char *)&wpport)
#define SPIWP 0x01


/* Structure definition for multiple device support */
typedef struct {
  int cs;	/* CS of SPI device */
  int use;	/* actual entry in use? */
  int active;	/* actual entry is active? */

  int initok;	/* successfully initialized */
  int sd;	/* actual card is sd or mmc */
  unsigned long speed;	/* speed setting */

  volatile unsigned char *cd_port;	/* card detect port */
  unsigned long cd_bit;			/* card detect bit */
  volatile unsigned char *wp_port;	/* write protect port */
  unsigned long wp_bit;			/* write protect bit */
} t_MmcDrv;

t_MmcDrv MmcDrv[] = {
  { 0, 0, 0,  0, 0, 0,  SPIPORT_CD, SPICD, SPIPORT_WP, SPIWP },	/* Card on CS0 */
};

#define MMCDRV_CNT (sizeof(MmcDrv)/sizeof(t_MmcDrv))

static void spiInit(void);
static int spiSDinit(void *user_ptr);

/****************************************************************************
 *
 * SD card info type structure specification
 *
 ***************************************************************************/
typedef struct {
long CSD_STR;  
long SPEC_VERS;

long TAAC;     
long NSAC;     
long TRANSPEED;
long CCC;      
long R_BL_LEN; 
long R_BL_PART;
long WR_BL_MIS;
long RD_BL_MIS;
long DSR_IMP;  

long CSIZE;    
long RC_MIN;   
long RC_MAX;   
long WC_MAX;   
long WC_MIN;   
long C_SIZE_M; 
long ERASE_G_S;
long ERASE_G_M;
long WP_G_S;   
long WP_G_EN;  
long DEF_ECC;  
long R2W_FACT; 
long WR_BL_LEN;
long WR_BL_PAR;

long C_PR_APP; 
long F_FORMATG;
long COPY;     
long P_WR_PROT;
long T_WR_PROT;
long F_FORMAT; 
long ECC;      
long CRC7;   
  
} MMC_TYPE;

static MMC_TYPE g_mmc_type;
#define SPIBRR 		*((volatile uint16 *)0x7044)  /* SPI Baud rate reg*/


int TestSD(void)
{
	spiregs.SPICCR.bit.CLKPOLARITY = 1;
	SPIBRR = SDCARDINIT_SPIBRR;					//set for divide by 120 (LOSPCP/(BRR+1)) LOSPCP set to 37.5MHz
	ReceiveByte();	//dummy receive to get clock in correct polarity before setting chipselect low
	spiInit();
	return(spiSDinit(&MmcDrv[0]));
}


/****************************************************************************
 *
 * spiCSlow
 *
 * Set ChipSelect to low active
 *
 ***************************************************************************/
static void spiCSlow(void)
{
	//spiregs.SPICCR.bit.CLKPOLARITY = 0;
	//SPIBRR = 37;					//set for divide by 37 (LOSPCP/(BRR+1)) LOSPCP set to 37.5MHz
	//ReceiveByte();	//dummy receive to get clock in correct polarity before setting eeprom chipselect low
	//gpf.selunion.bits.spiselect1 = 0;
	//gpf.selunion.bits.spiselect2 = 0;
	//gpf.selunion.bits.spiselect3 = 1;
	//Set bit low using an AND so they all switch simultaneously

	settings.spiinuse = 1;	//set flag for uart interrupt to check
							//clear when settings cs high
	
	*(unsigned int*)&gpf &= 0xFCFF;	
}

/****************************************************************************
 *
 * spiCShi
 *
 * Set ChipSelect to high inactive
 *
 ***************************************************************************/
static void spiCShi(void)
{
long a=1000000;
	gpb.selunion.bits.rtccs = 0;		//RTC chip select is active high
	*(unsigned int*)&gpf |= 0x0700;		//set all high so pointing at y7
	
	//ALWAYS LEAVE IT SET UP IN WITH CLK POLARITY SET FOR WRITING/READING FLASH
	
	//removed on test
	//spiregs.SPICCR.bit.CLKPOLARITY = 1;	//data output on FALLING edge, input on RISING (NON-standard mode)
	
	//ReceiveByte();	//dummy receive to make sure clock is in correct state for next time
   while (a--);	//delay
   if(receiveC.receiveINTR == 1)		//if set dummy read to clear the interrupt
   {
	   config.comms.wiocancelled++;	//cancelled receive - increment the counter
	   ReadDataFromUart_C();
	   ReadDataFromUart_C();
	   receiveC.receiveINTR = 0;	//clear after dummy
   }
	settings.spiinuse = 0;	//spi no longer in use
}


unsigned long CRCtbl[ 256 ];
unsigned long crc16( unsigned long crc, unsigned char c)
{
long a;
unsigned long character;

	character = (unsigned long)c & 0x000000FF;
    crc = crc ^ (character << 8UL);

    for( a=0; a<8; a++ ) {

        if( crc & 0x8000 )
            crc = (crc << 1) ^ 0x1021;
        else
            crc = crc << 1;
    }
   return crc;
}

void spitxbyte(unsigned char ch)
{
	//debugging code
	//sprintf(stringbuffer,"spitx: %u\r\n",(unsigned int)(ch&0x00FF));
	//DebugStringOut(stringbuffer);
	TransmitByte((unsigned int)(ch&0x00FF));
}


void spitxword(unsigned short data16)
{
unsigned int byte1;
unsigned int byte2;

	byte1 = data16;
	byte1 >>= 8;
	byte1 &= 0x00FF;
	TransmitByte(byte1);
	byte2 = data16;
	byte2 &= 0x00FF;
	TransmitByte(byte2);
}

void spitxlong(unsigned long data32)
{
unsigned long byte1;

	byte1 = data32;
	byte1 >>= 24;
	byte1 &= 0x00FF;
	//debugging code
	//sprintf(stringbuffer,"txlong1:%lu\r\n",byte1);
	//DebugStringOut(stringbuffer);		
	TransmitByte((unsigned int)byte1);
	byte1 = data32;
	byte1 >>= 16;
	byte1 &= 0x00FF;
	//sprintf(stringbuffer,"txlong2:%lu\r\n",byte1);
	//DebugStringOut(stringbuffer);		
	TransmitByte((unsigned int)byte1);
	byte1 = data32;
	byte1 >>= 8;
	byte1 &= 0x00FF;
	//sprintf(stringbuffer,"txlong3:%lu\r\n",byte1);
	//DebugStringOut(stringbuffer);		
	TransmitByte((unsigned int)byte1);
	byte1 = data32 & 0x00FF;
	//sprintf(stringbuffer,"txlong4:%lu\r\n",byte1);
	//DebugStringOut(stringbuffer);		
	TransmitByte((unsigned int)byte1);
}


static unsigned long rxdata=0;
static unsigned long bitcou=0;

long spigetbit(void) {
unsigned long bytein;
	if (!bitcou)
	{
		bytein = ReceiveByte();
		//debugging code
		bitcou=8;
		rxdata=(bytein)<<24;
   }
   if (bitcou) {
      bitcou--;
      if (rxdata&0x80000000) {
         rxdata<<=1;
         return 1;
      }
      rxdata<<=1;
      return 0;
   }
   else return 1;
}


unsigned long spigetbit32(void) {
//unsigned long ret=rxdata;
unsigned long ret=0;
unsigned long bytein1;
unsigned long bytein2;
unsigned long bytein3;
unsigned long bytein4;

	bytein1 = ReceiveByte();
	bytein1 &= 0x00FF;
	bytein2 = ReceiveByte();
	bytein2 &= 0x00FF;
	bytein3 = ReceiveByte();
	bytein3 &= 0x00FF;
	bytein4 = ReceiveByte();
	bytein4 &= 0x00FF;
	
	rxdata =  (bytein1 << 24);
	rxdata += (bytein2 << 16);
	rxdata += (bytein3 << 8);
	rxdata += (bytein4);

	//ajb changed
   //ret|=rxdata>>bitcou;
   //rxdata<<=(32-bitcou);
	ret = rxdata;
   return ret;
}

/****************************************************************************
 *
 * spiInit
 *
 * Init SPI ports, directions
 *
 ***************************************************************************/
static void spiInit(void) 
{
  long a;

  for ( a = 0; a < 256; a++ ) 
  {
    CRCtbl[a]=crc16(0, (unsigned char)a );
  }
  
  (void)memset(&g_mmc_type,0,sizeof(MMC_TYPE));

	rxdata=0;		//init to zero
	bitcou=0;
	carddetectport=0;
	wpport=0;
}


/****************************************************************************
 * Change SPI settings according to the driver specified in user_ptr.
 ***************************************************************************/
void spi_drv_change (void *user_ptr)
{
t_MmcDrv *p=(t_MmcDrv *)user_ptr;
//commented out by AJB 23/09/05
/*
  
  unsigned short qdr_val;
  unsigned int i;

  for (i=0;i<MMCDRV_CNT;MmcDrv[i++].active=0);
  qdr_val=0x8000+((0xf-(1<<(p->cs)))<<8);


  QAR=0x20;
  QDR=qdr_val;
  QDR=qdr_val;
  QDR=qdr_val;
  QDR=qdr_val;
  QMR=p->speed;
*/  
  p->active=1;
}


/****************************************************************************
 *
 * spiDataBits
 *
 * Receive any bits on spi and calculates crc16 on incoming data
 *
 * INPUTS
 *
 * bits - how many bits need to be received
 * pcrc - pointer to crc
 *
 * RETURNS
 *
 * received any bits data 
 *
 ***************************************************************************/

static long spiDataBits(long bits,unsigned long *pcrc) {
long a;
long data=0;
unsigned long crc=*pcrc;
   for (a=0; a<bits; a++) {   
      data<<=1;

      if ( spigetbit() ) {
         crc^=0x8000;
         data|=1;
      }

      if( crc & 0x8000 ) crc = (crc << 1) ^ 0x1021;
      else crc = crc << 1;

   }

   *pcrc=crc;

   return data;
}

/****************************************************************************
 *
 * spiWaitStartBit
 *
 * Wait data start bit on spi and send one more clock
 *
 * RETURNS
 *
 * 0 - if received
 * other if time out
 *
 ***************************************************************************/
static int spiWaitStartBit(void) {
/*
long a=1000000;   
   while (a--) {
      if (!spigetbit()) return 0;
   }
   return 1;
*/
	timers.spistatus = 51;	//at least 250ms wait
	while(timers.spistatus != 0)
	{
		if (!spigetbit()) return 0;
		//removed on test - 090305 TimerCheck();
		settings.watchdog = 1;	//kick the dog in the timer interrupt
	}
	return 1;
}

/****************************************************************************
 *
 * spiWaitBusy
 *
 * Wait until SPI datain line goes hi
 *
 * RETURNS
 *
 * 0 - if ok
 * other if time out
 *
 ***************************************************************************/
static int spiWaitBusy(void) {
/*
long a=1000000;
   while(--a)
   {
     if (spigetbit()) return 0;
   }
   return 1;
*/ 

	//	SDBusyCalls();			//commented out for version 4.6a 100309, do not need to call this when sd card in use
	//NormaliseandFilter(); //not used gen 1.5
	timers.spistatus = 51;	//at least 250ms wait - very slow cards may need this!
	while(timers.spistatus != 0)
	{
		if (spigetbit()) return 0;
		settings.watchdog = 1;	//kick the dog in the timer interrupt
	}
	return 1;
}

/****************************************************************************
 *
 * spiCmd
 *
 * Send command to SPI, it adds startbit and stopbit and calculates crc7 also
 * sent, and Wait response start bit on spi and r1 response
 *
 * INPUTS
 *
 * cmd - command to send
 * data - argument of the command
 *
 * RETURNS
 *
 * r1 if received or 0xff if any error
 *
 ***************************************************************************/

static long spiCmd(unsigned long cmd,unsigned long data) {
register long a;
register long crc7=0;

   if (spiWaitBusy())
   {
   		//test code
   		//sprintf(stringbuffer,"Busy\r\n");
		//DebugStringOut(stringbuffer);
       return 0xff; /* error */
   }

   cmd|=0xffffff40; /* add start bit and 1 */
   spitxlong(cmd);  /* send cmd and some fake bits before it */

   for (a=0; a<8; a++) {     /* send start and cmd */

      if (cmd & 0x80) {
         crc7^=0x40;
      }

      cmd<<=1;

      if( crc7 & 0x40 ) crc7 = (crc7 << 1) ^ 0x09;
      else crc7 = crc7 << 1;
   }

   spitxlong(data);  /* send data */
   for (a=0; a<32; a++) {   /* send 32bit argument */
      if (data & 0x80000000) {
         crc7^=0x40;
      }

      data<<=1;

      if( crc7 & 0x40 ) crc7 = (crc7 << 1) ^ 0x09;
      else crc7 = crc7 << 1;
   }

   crc7<<=1;  /* set crc7 into correct position */
   crc7|=1;   /* add endbit   */

	//sprintf(stringbuffer,"crc7:%lu\r\n",crc7);
	//DebugStringOut(stringbuffer);
   spitxbyte((unsigned char)crc7); /* send crc7 and endbit */

   if (spiWaitStartBit()==0)
   {
     for (a=0;a<7;a++)
     {
       data<<=1;
       data|=spigetbit();
     }
     //sprintf(stringbuffer,"data:%lu\r\n",data);
	 //DebugStringOut(stringbuffer);
     return(data);
   }
   return 0xff;
}

/****************************************************************************
 *
 * spiGetDataBlock
 *
 * Getting a datablock from SD
 *
 * INPUTS
 *
 * dwaddr - long pointer where to store received data (512bytes)
 * addr - address where to start read card, it has to be sector aligned
 * cnt - number of sectors
 *
 * RETURNS
 *
 * 0 - if successful
 * other if any error (crc,timeouts)
 *
 ***************************************************************************/
static int spiGetDataBlock(unsigned char *dwaddr,unsigned long addr,int cnt,void *user_ptr) {
register unsigned long crc;
int multi;
t_MmcDrv *p=(t_MmcDrv *)user_ptr;


//	if (!p->initok) 
//		{ return MMC_ERR_NOTINITIALIZED; } /* card is not initialized */
//
//   if (((t_MmcDrv *)p)->active==0) spi_drv_change(p);

//   if (*(p->cd_port) & (p->cd_bit)) 
//		{ return MMC_ERR_NOTPLUGGED; } /* card is missing */


   spiCSlow();

   if (cnt>1) multi=1; else multi=0;

   if (spiWaitBusy()) 
   {
     spiCShi();
     //sprintf(stringbuffer,"MMC_ERR_BUSY1\r\n");
	 //DebugStringOut(stringbuffer);
     return MMC_ERR_BUSY;
   }

   if (multi && p->sd==0)
   {
     if (spiCmd(23,cnt))
     {
       spiCShi();
       p->initok=0;
     //sprintf(stringbuffer,"MMC_ERR_CMD1\r\n");
	 //DebugStringOut(stringbuffer);       
       return MMC_ERR_CMD;
     }
   }

   if (spiCmd(multi?18:17,addr)) 
   {
     spiCShi();
     p->initok=0;
     //sprintf(stringbuffer,"MMC_ERR_CMD2\r\n");
	 //DebugStringOut(stringbuffer);            
     return MMC_ERR_CMD;
   }
   
   for (;cnt;cnt--)
   {
      register long a;
      register unsigned long *crctable=CRCtbl;
      
      crc=0;

      if (spiWaitStartBit()) {
         spiCShi();
             //sprintf(stringbuffer,"MMC_ERR_STARTBIT3\r\n");
	 		//DebugStringOut(stringbuffer);            
         return MMC_ERR_STARTBIT;
      }

      for (a=0; a<128; a++) {  /* get data 128long 512bytes */
         register unsigned long data=spigetbit32();
            //sprintf(stringbuffer,"%lu\r\n",data);
	 		//DebugStringOut(stringbuffer);            
         //AJB, (remember, data is word aligned so a char takes up an int in memory!)
         //store four chars and inc the pointers as storing, clear the upper char of each word!
         *dwaddr++= (data >> 24) &0x000000FF;
         *dwaddr++= (data >> 16) &0x000000FF;
         *dwaddr++= (data >> 8) &0x000000FF;
         *dwaddr++= data &0x000000FF;

         crc = ( crc << 8UL ) ^ crctable[ ( (crc >> 8UL) ^ (data>>24)) & 0x0FFUL  ];
         crc = ( crc << 8UL ) ^ crctable[ ( (crc >> 8UL) ^ (data>>16)) & 0x0FFUL  ];
         crc = ( crc << 8UL ) ^ crctable[ ( (crc >> 8UL) ^ (data>>8)) & 0x0FFUL  ];
         crc = ( crc << 8UL ) ^ crctable[ ( (crc >> 8UL) ^ data) & 0x0FFUL  ];
      }


      for (a=0; a<16; a++) {   /* check crc in next two bytes */
         if ( spigetbit() ) {
            crc^=0x8000;
         }

         if( crc & 0x8000 ) crc = (crc << 1) ^ 0x1021;
         else crc = crc << 1;
      }

      if (crc)
      {
        spiCShi();
        //sprintf(stringbuffer,"MMC_ERR_CRC5\r\n");
	 	//DebugStringOut(stringbuffer);            
        return MMC_ERR_CRC;
      }
   }

   if (multi && p->sd)
   {
     if (spiCmd(12,0)) 
     {
       spiCShi();
       p->initok=0;
        //sprintf(stringbuffer,"MMC_ERR_CMD6\r\n");
	 	//DebugStringOut(stringbuffer);            
       return MMC_ERR_CMD;
     }
   }
   return MMC_NO_ERROR;
}


/****************************************************************************
 *
 * spiSetDataBlock
 *
 * Write data into SD
 *
 * INPUTS
 *
 * dwaddr - long pointer where original data is (512bytes)
 * addr - where to store in the card (address has to be sector aligned)
 *
 * RETURNS
 *
 * 0 - if successful
 * other if any error
 *
 ***************************************************************************/
static int spiSetDataBlock(unsigned char *dwaddr,unsigned long addr,int cnt,void *user_ptr) {
register unsigned long crc;
int multi;
t_MmcDrv *p=(t_MmcDrv *)user_ptr;

   //if (!p->initok) return MMC_ERR_NOTINITIALIZED;/* card is not initialized */

   //if (((t_MmcDrv *)p)->active==0) spi_drv_change(p);

   //if (*(p->cd_port) & (p->cd_bit)) return MMC_ERR_NOTPLUGGED;/* card is missing */
   //if (*(p->wp_port) & (p->wp_bit)) return MMC_ERR_WRITEPROTECT; /* write protected!! */


   spiCSlow();

   if (cnt>1) multi=1; else multi=0;

   if (spiWaitBusy()) 
   {
     spiCShi();
     //sprintf(stringbuffer,"MMC_ERR_BUSY\r\n");
	 //DebugStringOut(stringbuffer);
     return MMC_ERR_BUSY;
   }

   if (multi && p->sd==0)
   {
     if (spiCmd(23,cnt))
     {
       spiCShi();
       p->initok=0;
     //sprintf(stringbuffer,"MMC_ERR_CMD\r\n");
	 //DebugStringOut(stringbuffer);
       return MMC_ERR_CMD;
     }
   }

   if (spiCmd(multi?25:24,addr)) 
   {
     spiCShi();
     p->initok=0;
     //sprintf(stringbuffer,"MMC_ERR_CMD2\r\n");
	 //DebugStringOut(stringbuffer);
     return MMC_ERR_CMD;
   }

   for (;cnt;cnt--)
   {
      register long a;
      register unsigned long *crctable=CRCtbl;
      register unsigned long data;
	  register unsigned long temp;	
      crc=0;
      if (multi && p->sd) spitxlong(0xfffffffc);
                     else spitxlong(0xfffffffe); /* startbit */

      for (a=0; a<128; a++) { /* sends 128long 512bytes */
      	//ajb added code bleow, as it is a word aligned processor!
        temp = *dwaddr++;
        data =  (temp << 24);
        temp = *dwaddr++;
		data += (temp << 16);
		temp = *dwaddr++;
		data += (temp << 8);
		temp = *dwaddr++;
		data += (temp&0xFF);
         //data=*dwaddr++;

         spitxlong(data);

         crc = ( crc << 8UL ) ^ crctable[ ( (crc >> 8UL) ^ (data>>24)) & 0x0FFUL  ];
         crc = ( crc << 8UL ) ^ crctable[ ( (crc >> 8UL) ^ (data>>16)) & 0x0FFUL  ];
         crc = ( crc << 8UL ) ^ crctable[ ( (crc >> 8UL) ^ (data>>8)) & 0x0FFUL  ];
         crc = ( crc << 8UL ) ^ crctable[ ( (crc >> 8UL) ^ data) & 0x0FFUL  ];
      }

      spitxword((unsigned short)crc);

      if (spiWaitStartBit()) {
         spiCShi();
     //sprintf(stringbuffer,"MMC_ERR_STARTBIT\r\n");
	 //DebugStringOut(stringbuffer);
         return MMC_ERR_STARTBIT;
      }

      data=0;
      for (a=0; a<4; a++) {   /* get data ack */
         data<<=1;
         if (spigetbit()) data|=1;
      }

      data &= 0x1f; /* keep valid bits */

      if (data != 0x05) { /* read accepted? */
         spiCShi();
         //sprintf(stringbuffer,"MMC_ERR_WRITE\r\n");
	 //DebugStringOut(stringbuffer);
         return MMC_ERR_WRITE; /*(int)((data<<8)+1);*/
      }

      if (spiWaitBusy()) {
         spiCShi();
         //sprintf(stringbuffer,"MMC_ERR_BUSY2\r\n");
	 //DebugStringOut(stringbuffer);
         return MMC_ERR_BUSY;
      }
   }

   if (multi && p->sd)
   {
     spitxlong(0xfffffdff); /* startbit */
     if (spiWaitBusy()) 
     {
       spiCShi();
       //sprintf(stringbuffer,"MMC_ERR_BUSY3\r\n");
	 //DebugStringOut(stringbuffer);
       return MMC_ERR_BUSY;
     }
   }

   spiCShi();
   return MMC_NO_ERROR;
}

/****************************************************************************
 *
 * mmc_readsector
 *
 * read one sector from the card
 *
 * INPUTS
 *
 * data - pointer where to store data
 * sector - which sector is needed
 * p - user_ptr
 *
 * RETURNS
 *
 * 0 - if successful
 * other if any error
 *
 ***************************************************************************/
int mmc_readsector(void *data,unsigned long sector,void *p) {
   //return spiGetDataBlock((unsigned long*)data,sector*512,1,p);
   //ajb altered
   return spiGetDataBlock((unsigned char*)data,sector*512,1,p);
}

/****************************************************************************
 * mmc_readmultiplesector
 * Reads multiple sectors
 *
 * INPUT - same as mmc_readsector
 *         cnt - number of sectors to read
 ***************************************************************************/
int mmc_readmultiplesector(void *data,unsigned long sector,int cnt,void *p) {
   //return spiGetDataBlock((unsigned long*)data,sector*512,cnt,p);
   //ajb altered
   return spiGetDataBlock((unsigned char*)data,sector*512,cnt,p);
}

/****************************************************************************
 *
 * mmc_writesector
 *
 * write one sector into the card
 *
 * INPUTS
 *
 * data - pointer where original data is
 * sector - which sector needs to be written
 * p -user_ptr
 *
 * RETURNS
 *
 * 0 - if successful
 * other if any error
 *
 ***************************************************************************/
int mmc_writesector(void *data,unsigned long sector,void *p) {
   return spiSetDataBlock((unsigned char*)data,sector*512,1,p);
}

/****************************************************************************
 * mmc_writemultiplesector
 * Writes multiple sectors
 *
 * INPUT - same as mmc_writesector
 *         cnt - number of sectors to write
 ***************************************************************************/
int mmc_writemultiplesector(void *data,unsigned long sector,int cnt,void *p) {
   return spiSetDataBlock((unsigned char*)data,sector*512,cnt,p);
}






/****************************************************************************
 *
 * spiCSDBlock
 *
 * Get Card Specific Data
 *
 * RETURNS
 *
 * 0 - if successful
 * other if any error
 *
 ***************************************************************************/

static int spiCSDBlock(void *user_ptr) {
unsigned long crc;
unsigned long time;
t_MmcDrv *p=(t_MmcDrv *)user_ptr;

   spiCSlow();
   if (spiCmd(9,0)) {
      spiCShi();
      return MMC_ERR_CMD; /* r1 any error */
   }

   if (spiWaitStartBit()) {
      spiCShi();
      return MMC_ERR_STARTBIT;
   }

   crc=0;

   g_mmc_type.CSD_STR  =spiDataBits(2,&crc);
   g_mmc_type.SPEC_VERS=spiDataBits(4,&crc);
            (void)spiDataBits(2,&crc); /* reserved */

   g_mmc_type.TAAC     =spiDataBits(8,&crc);
   g_mmc_type.NSAC     =spiDataBits(8,&crc);
   g_mmc_type.TRANSPEED=spiDataBits(8,&crc);
   //sprintf(stringbuffer,"transpeed:%lu\r\n",g_mmc_type.TRANSPEED);
	//DebugStringOut(stringbuffer);
   g_mmc_type.CCC      =spiDataBits(12,&crc);
   g_mmc_type.R_BL_LEN =spiDataBits(4,&crc);
   g_mmc_type.R_BL_PART=spiDataBits(1,&crc);
   g_mmc_type.WR_BL_MIS=spiDataBits(1,&crc);
   g_mmc_type.RD_BL_MIS=spiDataBits(1,&crc);
   g_mmc_type.DSR_IMP  =spiDataBits(1,&crc);
            (void)spiDataBits(2,&crc); /* reserved */

   g_mmc_type.CSIZE    =spiDataBits(12,&crc);
   g_mmc_type.RC_MIN   =spiDataBits(3,&crc);
   g_mmc_type.RC_MAX   =spiDataBits(3,&crc);
   g_mmc_type.WC_MAX   =spiDataBits(3,&crc);
   g_mmc_type.WC_MIN   =spiDataBits(3,&crc);
   g_mmc_type.C_SIZE_M =spiDataBits(3,&crc);
   g_mmc_type.ERASE_G_S=spiDataBits(5,&crc);
   g_mmc_type.ERASE_G_M=spiDataBits(5,&crc);
   g_mmc_type.WP_G_S   =spiDataBits(5,&crc);
   g_mmc_type.WP_G_EN  =spiDataBits(1,&crc);
   g_mmc_type.DEF_ECC  =spiDataBits(2,&crc);
   g_mmc_type.R2W_FACT =spiDataBits(3,&crc);
   g_mmc_type.WR_BL_LEN=spiDataBits(4,&crc);
   g_mmc_type.WR_BL_PAR=spiDataBits(1,&crc);
            (void)spiDataBits(4,&crc); /* reserved */

   g_mmc_type.C_PR_APP =spiDataBits(1,&crc);
   g_mmc_type.F_FORMATG=spiDataBits(1,&crc);
   g_mmc_type.COPY     =spiDataBits(1,&crc);
   g_mmc_type.P_WR_PROT=spiDataBits(1,&crc);
   g_mmc_type.T_WR_PROT=spiDataBits(1,&crc);
   g_mmc_type.F_FORMAT =spiDataBits(2,&crc);
   g_mmc_type.ECC      =spiDataBits(2,&crc);
   g_mmc_type.CRC7     =spiDataBits(7,&crc);
            (void)spiDataBits(1,&crc); /* reserved */

   (void)spiDataBits(16,&crc); /* crc  */

   spiCShi();

   if (crc) return MMC_ERR_CRC;

   switch (g_mmc_type.TRANSPEED & 7) {
   case 0: time=1; break; /* 100K */
   case 1: time=10;  break; /* 1M */
   case 2: time=100;   break; /* 10M */
   case 3: time=1000;   break;  /* 100M */
   default: return MMC_NO_ERROR;
   }
   switch ((g_mmc_type.TRANSPEED >> 3) &0x0f) {
   case 0: return MMC_NO_ERROR;
   case 1: time*=10; break; /* 1.0 */
   case 2: time*=12; break; /* 1.2 */
   case 3: time*=13; break; /* 1.3 */
   case 4: time*=15; break; /* 1.5 */
   case 5: time*=20; break; /* 2.0 */
   case 6: time*=25; break; /* 2.5 */
   case 7: time*=30; break; /* 3.0 */
   case 8: time*=35; break; /* 3.5 */
   case 9: time*=40; break; /* 4.0 */
   case 10: time*=45; break; /* 4.5 */
   case 11: time*=50; break; /* 5.0 */
   case 12: time*=55; break; /* 5.5 */
   case 13: time*=60; break; /* 6.0 */
   case 14: time*=70; break; /* 7.0 */
   case 15: time*=80; break; /* 8.0 */
   }

   time<<=1;
   time=((CLKIN/10000)+(time-1))/time;
   if (time<2) time=2;
   if (time>0xff) time=0xff;
   p->speed=0xC000+time;
   //QMR=p->speed;

   return MMC_NO_ERROR;
}
   
/****************************************************************************
 *
 * spiSDinit
 *
 * inti Card protocols via spi
 *
 * RETURNS
 *
 * 0 - if successful
 * other if any error
 *
 ***************************************************************************/
static int spiSDinit(void *user_ptr) {
long a;
long retry;
int ret;
t_MmcDrv *p=(t_MmcDrv *)user_ptr;

   p->initok=0;

   //change the speed to slow speed for init process
	EALLOW
	LOSPCP = LSPCLKSDINIT_PRE;
	SPIBRR = SDCARDINIT_SPIBRR;		//119;					//set for divide by 120 (LOSPCP/(BRR+1)) LOSPCP set to 37.5MHz
	EDIS
	NOPDelay(100);		//delay after chaning the clock speed to allow for resetting
   //QMR=0xC0FF;


   spiCSlow();
   for (a=0; a<1000; a++) spitxlong(0xffffffff); /* wait some */

   for (retry=0;; retry++) {
      if ((a=spiCmd(0,0))==0x01) break;

      if (retry==10) {
         spiCShi();
         //return 0xaa;	//test
         return MMC_ERR_INIT;
      }
   }

   spitxlong(0xffffffff); /* some fake */

	//spiCShi();	//ajb added

   for (retry=0; ; retry++ ){

      if (retry==1000) {
         spiCShi();
         return MMC_ERR_INIT;
      }

      spiCSlow();
      if (!spiCmd(1,0)) {
         spiCShi();
         break;
      }

      spiCShi();
   }

   spiCSlow();

   if (spiCmd(16,512)) {; /* set blk lenght 512 byte */
      spiCShi();
      return MMC_ERR_CMD;
   }

   spitxlong(0xffffffff); /* some fake */
   spiCShi();

   spiCSlow();

   if (spiCmd(59,1)) {  /* set crc on */
      return MMC_ERR_CMD;
   }

   spitxlong(0xffffffff); /* some fake */
   spiCShi();

   ret=spiCSDBlock(p);
   if (ret) {
      spiCShi();
      return ret;
   }

   if (spiCmd(23,1)) p->sd=1; else p->sd=0;

   p->initok=1;
   //change the speed back to normal full speed for talking to the card
	EALLOW
	LOSPCP = LSPCLK_PRE;
	SPIBRR = SDCARD_SPIBRR;					//leave at fastest speed
	EDIS
	NOPDelay(100);		//delay after chaning the clock speed to allow for resetting
   return MMC_NO_ERROR;
}

/****************************************************************************
 *
 * mmc_getstatus
 *
 * get status of card, missing or/and removed,changed,writeprotect
 *
 * RETURNS
 *
 * F_ST_xxx code for high level
 *
 ***************************************************************************/
static long mmc_getstatus(void *user_ptr) {
long state=0;
t_MmcDrv *p=(t_MmcDrv *)user_ptr;

	//ajb removed
   //if (((t_MmcDrv *)p)->active==0) spi_drv_change(p);

	//ajb removed
   //if (*(p->wp_port) & (p->wp_bit)) state|=F_ST_WRPROTECT;

   /*if (*(p->cd_port) & (p->cd_bit)) {
      p->initok=0;
      state|=F_ST_MISSING;
   }
   else {
*/
      if (!p->initok) {
          (void)spiSDinit(p);
      }

      spiCSlow();
   
     if (spiCmd(13,0)) {
        state|=F_ST_CHANGED;
        spiCShi();
        (void)spiSDinit(p);
     }
     
     spiCShi();
// }

   if (!p->initok) state|=F_ST_MISSING; /* card is not initialized */

   
   return state; 
}

/****************************************************************************
 *
 * mmc_getphy
 *
 * determinate flash card physicals
 *
 * INPUTS
 *
 * phy - this structure has to be filled with physical information
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/
static int mmc_getphy(F_PHY *phy,void *user_ptr) {
int ret;
t_MmcDrv *p=(t_MmcDrv *)user_ptr;

   if (((t_MmcDrv *)p)->active==0) spi_drv_change(p);

   ret=spiSDinit(p);
   if (ret) return ret;

   phy->number_of_cylinders=0;
   phy->sector_per_track=63;
   phy->number_of_heads=255;
   phy->number_of_sectors=((1UL<<(g_mmc_type.C_SIZE_M+2))*(1UL<<g_mmc_type.R_BL_LEN)*(g_mmc_type.CSIZE+1))/512UL;
   phy->media_descriptor=0xf0;

   return MMC_NO_ERROR;
}

/****************************************************************************
 * mmc_delfunc
 * Deletes a previously initialized driver
 ***************************************************************************/
static int mmc_delfunc(void *user_ptr)
{
  t_MmcDrv *p=(t_MmcDrv *)user_ptr;
  p->use=0;
  p->active=0;
  return MMC_NO_ERROR;
}
 
/****************************************************************************
 *
 * mmc_initfunc
 *
 * this init function has to be passed for highlevel to initiate the
 * driver functions
 *
 * INPUTS
 *
 * func - structure, where to fill functions
 *
 * RETURNS
 *
 * error code or zero if successful
 *
 ***************************************************************************/
int mmc_initfunc(F_FUNC *func, void *user_ptr) {
t_MmcDrv *p;

	p=MmcDrv;	//only one card so set to this mmcdrv

   
   p->use=0;
   p->active=0;
   p->initok=0;
   p->speed=0xc0ff;

   spiInit();

   func->readsector=mmc_readsector;
   func->writesector=mmc_writesector;
   func->readmultiplesector=mmc_readmultiplesector;
   func->writemultiplesector=mmc_writemultiplesector;
   func->getstatus=mmc_getstatus;
   func->getphy=mmc_getphy;
   func->delfunc=mmc_delfunc;
   func->user_ptr=p;

   return MMC_NO_ERROR;
}

/******************************************************************************
 *
 *  End of mmc.c
 *
 *****************************************************************************/

#endif /* _MMC_C_ */

