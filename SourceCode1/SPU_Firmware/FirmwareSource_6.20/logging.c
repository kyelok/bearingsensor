#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "core.h"
#include "logging.h"
#include "globals.h"
#include "setup.h"
#include "pccli.h"
#include "pcmodbus.h"
#include "sci.h"
#include "mmc_mcf.h"
#include "fat.h"
#include "man.h"
#include "sdcard.h"

loggingstruct logging;
eventlogvarsstruct eventlogvars;		//event log variables
eventlogstruct eventlogentry;

#define SIZEOF_LOGRESULTDATA 19 //(19 integers)
#define SIZEOF_LOGENTRYDATA 11 //(11 integers)
#define SIZEOF_MAINLOGINBYTES 12910656
#define SIZEOF_TRENDLOGINBYTES 4325376
#define SIZEOF_EVENTLOGINBYTES 65472
#define STARTOFMAINLOG 0	//flash chip 1,2,3 for main log

void FastLogDataAveraging(void);
void MainLogtoFlash(void);
void TrendLogtoFlash(void);

//---------------------------------------------------------------------------------------------------------------------------------------
//Event logging

// PF Gen 2 - 08-Mar-12 Old event system backend removal - unsigned int* EventCompilation(unsigned int mid,int priority, int ackreqd,char *stringptr);
// PF Gen 2 - 08-Mar-12 Old event system backend removal - unsigned int* EventACKCompilation(unsigned int eventid, unsigned int *ackstringptr);
void WriteEventLogVarsStructtoNVMEM(void);
// PF Gen 2 - 08-Mar-12 Old event system backend removal - void EventLogIDInc(void);


//Store the event log variable structure to non vol FRAM
//Each will be offset by: 1 word	//1word
void WriteEventLogVarsStructtoNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table
	position = EVENTLOGVARSSTRUCT_OFFSET;
	ptr = (unsigned int*)&eventlogvars;
	len = sizeof(eventlogvarsstruct);
	WriteNVMemory(FRAM1,position,ptr,len);
}

//Read back from NVMEM
//This will be called on power up only - as this is held in ram
void ReadEventLogVarsStructfromNVMEM(void)
{
unsigned int position;
unsigned int *ptr;
unsigned int len;

	//calculate the position to point to in nonvolatile memory..off board memory on the daughter card
	//this is positioned after the acc table

	position = EVENTLOGVARSSTRUCT_OFFSET;
	ptr = (unsigned int*)&eventlogvars;
	len = sizeof(eventlogvarsstruct);
	ReadNVMemory(FRAM1,position,ptr,len);
}

// PF Gen 2 - 07-Mar-12 Replacement events no longer needed as done in PC
/*
//Replacement realated events
//Use this function with the event to log
//pass in the macro to use
void ReplacementEvents(int num)
{
char eventstring[EVENTMSG_LEN_INBYTES_PART2];

	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
	LogEvent(num,HIGH_PRIORITY,NO,eventstring);	// log event to sd card on change	
}
*/
// PF Gen 2 - 07-Mar-12 EOM


// PF Gen 2 - 07-Mar-12 Old event system backend removal - 
/*
//Compile the event based on the message id, priority, ack required, code, secondary code,
//and the message event strings.  Two string are compiled along with the date and time to form a string

//Message ID should set the number related to the particular message to be loaded back from sd eventmsgfile
//Priority set according to the assigned priority, this is necessary for the pc end to decide how to display it
//
//Ackreguired should be set if an ack is required from the pc for this message
//The string ptr should point to the string compiled at event time
void LogEvent(unsigned int mid,int priority, int ackreqd,char *stringptr)
{
unsigned int *ptr;
unsigned int len;
	if(ackreqd == TRUE)
	{
		shortterm.sdcard.alarmevent.n1 = TRUE;			//set the alarm log flag to TRUE for keeping the shortterm log for last 24 hours etc
		//save shortterm structure to FRAM, reloaded on power up
		len = sizeof(shorttermlogstruct);
		WriteNVMemory(FRAM1,SHORTTERMLOGSTRUCT_OFFSET,&shortterm,len);
	}
	ptr = EventCompilation(mid,priority,ackreqd,stringptr);
	if(SDEventUpdate(eventlogentry.eventid, ptr) == 0)
	{
		if(sdsettings.present == TRUE && settings.sdcarderr == FALSE)
		{
			eventlogvars.msgqueue++;		//update the number of messages waiting in queue for pc to read
			WriteEventLogVarsStructtoNVMEM();
		}
	}

}
*/
// PF Gen 2 - 07-Mar-12 Old event system backend removal - EOM

// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - 
/*
//Acknowledgement received from the pc
//Compile the acknowledgement data and store to the file
void EventAck(unsigned int eventid, unsigned int *ackstringptr)
{
unsigned int *ptr;

	ptr = EventACKCompilation(eventid,ackstringptr);
	SDAckUpdate(eventid, ptr);
}
*/
// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - EOM

//Clear the message queue value
//This will be called from the modbus regs to clear the message queue after they have been read over the modbus
void ClearMSGQueue(void)
{
	eventlogvars.msgqueue = 0;
	WriteEventLogVarsStructtoNVMEM();
}

//Check the value coming back from the PC and decrement the msg queue number dependent on how many have
//been seen and dealt with at the PC
void MSGQueueNumfromPC(unsigned int val)
{
	if(val <= eventlogvars.msgqueue)
	{
		eventlogvars.msgqueue -= val;	//subtract the number read from the pc
		//most of the time this should set the number read back to zero
	}

	else eventlogvars.msgqueue = 0;	//set to zero if the value from the pc is larger than the number in the list 

	WriteEventLogVarsStructtoNVMEM();

}

//Reset the event log id to zero and save back to nvmemory
void ClearAlarmListandEventLog(void)
{
// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - char eventstring[EVENTMSG_LEN_INBYTES_PART2];

	ClearEventCodeListArea();			//clear down the event code list for the alarm log
										//this must be clear before the event log is deleted
	eventlogvars.eventlogid = 0;
	eventlogvars.msgqueue = 0;
	WriteEventLogVarsStructtoNVMEM();
	SDEventLogDelete();

	// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);
	// PF Gen 2 - 06-Mar-12 Old alarm system backend removal - LogEvent(EVENTLOGCLEARED,HIGH_PRIORITY,NO,eventstring);	// log event to sd card on change	
}

//read the event log id and return it as an unsigned int
unsigned int ReadEventLogID(void)
{	return(eventlogvars.eventlogid); }

//read and return the number of messages in the message queue
unsigned int ReadMSGQueueNum(void)
{ return(eventlogvars.msgqueue);}

//read the lsat event id
//This will be the current setting of the eventid -1
unsigned int ReadLastEventID(void)
{	return(eventlogvars.eventlogid-1);	}

// PF Gen 2 - 08-Mar-12 Old event system backend removal - 
/*
//call to increment the eventlog id number
void EventLogIDInc(void)
{

	//only update if there are no current sd errors and the card is present
	if(sdsettings.present == TRUE && settings.sdcarderr == FALSE)
	{
		//increment if not on last id in table if on last then wrap to zero
		if(eventlogvars.eventlogid < 65535) eventlogvars.eventlogid++;
		else
		{
			eventlogvars.eventlogid = 0;
			eventlogvars.eventlogwrapflag = TRUE;
		}
		WriteEventLogVarsStructtoNVMEM();
	}
}

//Compile the event based on the message id, priority, ack required, event message string and the secondary part of the string
//the part 2 string will be compiled at event time relating to channels values etc
//The function will return a ptr to the compiled data string as integers
unsigned int* EventCompilation(unsigned int mid,int priority, int ackreqd,char *stringptr)
{
unsigned int i;
char tempbuffer[EVENT_DATETIME_LEN_INBYTES];
char month[4];

	MonthtoStr(month,clocktime.month);		//convert the month into a string of 3 character and null
	//priority
	//ackreqd
	//not currently using ack or priority and these are not compiled into the string
	//eventlogentry.priority = priority;
	//eventlogentry.ackreqd = ackreqd;

	eventlogentry.eventid = eventlogvars.eventlogid;
	//date [tab] time [tab]
	sprintf(tempbuffer,"%.2x%s-%.2x\t%.2x:%.2x:%.2x\t",clocktime.date,month,clocktime.year,clocktime.hours,clocktime.minutes,clocktime.seconds);
	//compile the datetime into ints
	CharStringtoIntString(eventlogentry.datetime,tempbuffer,EVENT_DATETIME_LEN_INBYTES/2);	//18 bytes in the date time string fitted into ints

	//read the event message (first part) from the const arrays - not reading it from the sd card
	CharStringtoIntString(eventlogentry.msgstring,(char*)pMsgList[mid],EVENTMSG_LEN_INBYTES/2);		//compile a character string into an integer string

	//not reading the event messages back from the sd card
	//SDReadEventMessage(mid,eventlogentry.msgstring);		//read in the event message from the sd card
	CharStringtoIntString(eventlogentry.msgstring2,stringptr,EVENTMSG_LEN_INBYTES_PART2/2);	//part 2 message saved into evelogentry

	//clear the ack bytes of data in the structure before this is sent to the sd card
	//this consists of:
	//EVENT_DATETIME_LEN_INBYTES
	//EVENT_ACK_STRING_LEN_INWORDS
	if(ackreqd == YES)	for(i=0;i<EVENT_DATETIME_LEN_INWORDS;i++) eventlogentry.ackdatetime[i] = 0;
	else
	{
		//if ack is not required put a - in the date, this will then be clear from the event log what is a non acked event
		 for(i=0;i<EVENT_DATETIME_LEN_INWORDS;i++) eventlogentry.ackdatetime[i] = '-';
	}
	for(i=0;i<EVENT_ACK_STRING_LEN_INWORDS;i++) eventlogentry.ackstring[i] = 0;

	EventLogIDInc();	//increment and save to nvmem
	return((unsigned int *)&eventlogentry);	//return as int ptr to data
}

//Compile the event acknowledgement pass in the eventid so the position can be found in the event log on the sd card
//the ptr returned will point to all the data to be written to the file
//The function will return a ptr to the compiled data string as integers
unsigned int* EventACKCompilation(unsigned int eventid, unsigned int *ackstringptr)
{
char tempbuffer[EVENT_DATETIME_LEN_INBYTES];
unsigned int i;
char month[4];

	MonthtoStr(month,clocktime.month);		//convert the month into a string of 3 character and null

	sprintf(tempbuffer,"%.2x%s-%.2x\t%.2x:%.2x:%.2x\t",clocktime.date,month,clocktime.year,clocktime.hours,clocktime.minutes,clocktime.seconds);
	//compile the datetime into ints
	CharStringtoIntString(eventlogentry.ackdatetime,tempbuffer,EVENT_DATETIME_LEN_INBYTES/2);	//18 bytes in the date time string fitted into ints
	for(i=0;i<EVENT_ACK_STRING_LEN_INWORDS;i++)	//copy the ack name string into the evenlogentry buffer
	{
		eventlogentry.ackstring[i] = ackstringptr[i];
	}
	return((unsigned int *)&eventlogentry.ackdatetime);	//return as int ptr to start of data
}
*/
// PF Gen 2 - 08-Mar-12 Old event system backend removal - EOM

//Pass in the event id to be read back from the sd card
//This will load the data into a local buffer ready to be read from the modbus registers
void SetupEventReadBack(unsigned int eventid)
{
int i;

	if(settings.sdcarderr == 0)
	{
		SDReadEvent(eventid,transferbuffer);
	}
	else
	{
		for(i=0;i<TRANSFER_LENGTH_INWORDS;i++) transferbuffer[i] = '-';
		//send back - if the log cannot be read from the sd card this should not happen!!
	}
}

//Allow reading of a single integer and returning it
//Address is checked to make sure it not reading beyond the buffer
unsigned int ReadEvent(unsigned int add)
{
	if(add > EVENT_LENGTH_INBYTES/2) return(0);	//do not allow reading beyond the buffer
	//pass back the int at the address requested
	return(transferbuffer[add]);
}

//end of file

