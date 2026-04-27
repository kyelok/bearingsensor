#ifndef _PORT_C_
#define _PORT_C_

#include "fat.h"
#include "udefs.h"
#include "port.h"
#include "globals.h"
#include "utils.h"

/****************************************************************************
 *
 * f_getrand
 *
 * This function should be ported. It has to return a different 32bit
 * random number whenever it is called. Random number generator could be
 * get from system time, this algorith below is just a simple random 
 * number generator
 * 
 * INPUTS
 *
 * rand - a number which could be used for random number generator
 * 
 * RETURNS
 *
 * 32bit random number
 *
 ***************************************************************************/

static unsigned long dwrand=0x729a8fb3;

unsigned long f_getrand(unsigned long rand) {
long a;

   dwrand^=f_gettime();

   for (a=0; a<32; a++) {
      if (rand&1) {
         dwrand^=0x34098bc2;
      }
      if (dwrand&0x8000000) {
         dwrand<<=1;
         dwrand|=1;
      }
      else dwrand<<=1;
      rand>>=1;
   }

   return dwrand;
}

/****************************************************************************
 *
 * f_getdate
 *
 * need to be ported depending on system, it retreives the
 * current date in DOS format
 *
 * RETURNS
 *
 * current date
 *
 ***************************************************************************/

unsigned short f_getdate(void) {
unsigned short year=1980;
unsigned short month=1;
unsigned short day=1;
unsigned short pcdate;

	year = BCDtoInt(clocktime.year) + 2000;	//add on 2000 to give 2005 etc
	month = BCDtoInt(clocktime.month);
	day = BCDtoInt(clocktime.date);
	pcdate= (unsigned short)((((year-1980) <<  F_CDATE_YEAR_SHIFT)  & F_CDATE_YEAR_MASK) |
					   ((month		 <<  F_CDATE_MONTH_SHIFT) & F_CDATE_MONTH_MASK) |
					   ((day		 <<  F_CDATE_DAY_SHIFT)   & F_CDATE_DAY_MASK));
	return pcdate;
}

/****************************************************************************
 *
 * f_gettime
 *
 * need to be ported depending on system, it retreives the
 * current time in DOS format
 *
 * RETURNS
 *
 * current time
 *
 ***************************************************************************/

unsigned short f_gettime(void) {
unsigned short hour=12;
unsigned short min=0;
unsigned short sec=0;
unsigned short pctime;

	hour = BCDtoInt(clocktime.hours);
	min = BCDtoInt(clocktime.minutes);
	sec = BCDtoInt(clocktime.seconds);
	
	pctime = (unsigned short)(((hour     <<  F_CTIME_HOUR_SHIFT) & F_CTIME_HOUR_MASK) |
					   ((min      <<  F_CTIME_MIN_SHIFT)  & F_CTIME_MIN_MASK) |
					   (((sec>>1) <<  F_CTIME_SEC_SHIFT)  & F_CTIME_SEC_MASK));
	return pctime;
}


/****************************************************************************
 *
 * f_mutex_create
 *
 * user function to create a mutex.
 *
 * RETURNS
 *   0 - success
 *   1 - error
 *
 ***************************************************************************/
#if (!F_CAPI_USED)
int f_mutex_create (F_MUTEX_TYPE *mutex)
{
  *mutex=0;
  return 0;
}
#endif


/****************************************************************************
 *
 * f_mutex_delete
 *
 * user function to delete a mutex.
 *
 * RETURNS
 *   0 - success
 *   1 - error
 *
 ***************************************************************************/
#if (!F_CAPI_USED)
int f_mutex_delete (F_MUTEX_TYPE *mutex)
{
  *mutex=0;
  return 0;
}
#endif


/****************************************************************************
 *
 * f_mutex_get
 *
 * user function to get a mutex.
 *
 * RETURNS
 *   0 - success
 *   1 - error
 *
 ***************************************************************************/
#if (!F_CAPI_USED)
int f_mutex_get (F_MUTEX_TYPE *mutex)
{
  if (*mutex) return 1;
/*  add disable interrupt function here  */
  *mutex=1;
/*  add enable interrupt function here  */
  return 0;
}
#endif


/****************************************************************************
 *
 * f_mutex_put
 *
 * user function to release a mutex.
 *
 * RETURNS
 *   0 - success
 *   1 - error
 *
 ***************************************************************************/
#if (!F_CAPI_USED)
int f_mutex_put (F_MUTEX_TYPE *mutex)
{
  *mutex=0;
  return 0;
}
#endif


/****************************************************************************
 *
 * fn_gettaskID
 *
 * user function to get current task ID 
 *
 * RETURNS
 *   task ID 
 *
 ***************************************************************************/

#if (!F_CAPI_USED)
#ifndef _FN_GETTASKID_
long fn_gettaskID(void)
{
  return 1;
}
#endif
#endif

/****************************************************************************
 *
 * end of port.c
 *
 ***************************************************************************/

#endif /* _PORT_C_ */
