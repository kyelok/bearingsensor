#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "version.h"
#include "define.h"
#include "globals.h"
#include "spi.h"
#include "logging.h"
#include "pccli.h"
#include "sci.h"
// AJB 15-Feb-10 Added slave485.h
#include "slave485.h"

/*
Release Note:
Date			Version			Update description
10-12-2012 FF:	6.10			update firmware according to MAN specification v05
28-01-2013 FF:	6.12			Update MAN compensation table at first 1000 sample
03-04-2013 FF:	6.13			Add register 1001 and 1002 for barred torsional vibration speed band low and high limit specified by user from software
25-07-2013 FF:	6.14			Add register 1003 and 1004 for temperature alarm and slowdown
20-01-2014 FF:	6.15			Change SLOW_DOWN_ON_PERIOD to 12
20-02-2014 FF:	6.16			Add cpp feature and pause astern
20-11-2014 FF:	6.17			Output cpp mA and percentage to modbus
17-06-2015 FF:	6.18			Sensor moving alarm removal duing learning
17-07-2015 FF:	6.19			Disable slow alarm for first stage of learning
18-08-2016 AB:  6.20			Added a check on the rpm against the allsensors rpmlimit.  If lower than this clear down the rpmaverage otherwise if(initdeltarpm > iDmPauseDeltaRpm)  will never be true!
*/
//SET VERSION REGISTER IN HEX UPPER BYTE IS MAJOR CHANGE, LOWER BYTE IS MINOR CHANGE
const unsigned int versionreg = 0x620;
unsigned int versionregslave;

//ALWAYS UPDATE THE VERSION IN THE CLI STRING AND THE MODBUS REGISTER
//INCLUDE THE DATA OF COMPILATION

const char version[] = "Software Version 6.20, Released: 18th August 2016\r\n";

firmwarestruct firmware;

//Slave version - set from the second unit via the modbus registers requested from slave
void SetSlaveVersion(unsigned int ver)
{
	versionregslave = ver;
}

unsigned int GetSlaveVersion(void)
{
	// AJB 15-Feb-10 Altered to return zero on loosing comms to the slave
	if(slave485mb.slavelost == FALSE)
	{
		return(versionregslave);
	}
	else return(0);	//return zero if loss of comms to slave
	// AJB 15-Feb-10 EOM
}

//compare the firmware versions and raise an event if they differ
void FirmwareComparison(void)
{
char eventstring[EVENTMSG_LEN_INBYTES_PART2];
unsigned int slave;

	memset(eventstring,0,EVENTMSG_LEN_INBYTES_PART2);

	if(firmware.spu1 != (unsigned int)versionreg)
	{
		// PF Gen 2 - 07-Mar-12 Old event system backend removal - sprintf(eventstring,"SPU 1 old:%4x, new:%4x",firmware.spu1,versionreg);
		// PF Gen 2 - 07-Mar-12 Old event system backend removal - LogEvent(FIRMWARE_ALTERATION,HIGH_PRIORITY,NO,eventstring);	//extra string for firmware difference contains SPU1
		firmware.spu1 = (unsigned int)versionreg;
		SaveFirmwareStruct();
	}
	if(allsensors.numsensorsspu2 != 0)	//check if the slave is present
	{
		slave = GetSlaveVersion();
		if(firmware.spu2 != slave && slave != 0)	//check if slave verison has changed
		{
			// PF 30-Sep-09 Changed versionreg to versionregslave as it was reporting SPU1 firmware rev 
			// PF Gen 2 - 07-Mar-12 Old event system backend removal - sprintf(eventstring,"SPU 2 old:%4x, new:%4x",firmware.spu2,versionregslave);
			// PF Gen 2 - 07-Mar-12 Old event system backend removal - LogEvent(FIRMWARE_ALTERATION,HIGH_PRIORITY,NO,eventstring);	//extra string for firmware difference contains SPU2
			firmware.spu2 = slave;
			SaveFirmwareStruct();
		}
	}
}

//Added for V6.20 to try and make the bootlader work when uploading to SPU2
void DummyFunction(void)
{
int i;
int x;
int y;

	for(i=0;i<200;i++)
	{
		if(x < y) x = y;
	}
}

