//SD Card Functions
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
#include "mancal.h"
#include "sdcard.h"
#include "wio.h"
#include "version.h"
#include "adc.h"	// PF 06-Nov-09 Added adc.h include
#include "alarms.h"	// PF Gen 2 - 30-Apr-12

#define CHARS_IN_HEADER 308	//308 chars in the raw and comp header used at the start of a log file, includes \r\n
#define SDCARD_ERROR -1

#pragma DATA_SECTION(f_databuf, ".filesystem");
char f_databuf[SD_LOG_BUF_SIZE_BYTES];	//data buffer for data to send to the sd card for the short term /long term log

sdfilestruct fileregs;
sdsettingsstruct sdsettings;
shorttermlogstruct shortterm;
longtermlogstruct longterm;
asciilogstruct asciilog;
mansdstruct mansd;

//Amot Header goes into the amot.txt file. This file should be present within the log dir on all cards
const char amotheader[] = "AMOT\r\nA division of Roper Industries Ltd\r\nContact: +44(0)1284 762222\r\nThis SD Card should not be removed from the XTS-W System without the consent of AMOT\r\nIf this card has been removed whilst the engine is running,\r\ncontact Amot immediately.\r\n\r\nProduct Code: XTS-W";

const char eventheader[] = "Date,Time,EventCode,ChCode,Data";
const char sdcardrawheader[] = "Date,Time,RawCh1,RawCh2,RawCh3,RawCh4,RawCh5,RawCh6,RawCh7,RawCh8,RawCh9,RawCh10,RawCh11,RawCh12,RawCh13,RawCh14,RawT1,RawT2,RawT3,RawT4,RawRPM,";
const char sdcardcompheader[] = "Date,Time,CompCh1,CompCh2,CompCh3,CompCh4,CompCh5,CompCh6,CompCh7,CompCh8,CompCh9,CompCh10,CompCh11,CompCh12,CompCh13,CompCh14,CompT1,CompT2,CompT3,CompT4,CompRPM";

//MAX FILENAME LENGTH 8 characters before the .xxx
//status.bin contains the status information for all channels
const char statusfile[] = "status.bin";
const char settingsfile[] = "config.bin";
const char allsensorsfile[] = "allsen.bin";
const char offsetsfile[] = "offsets.bin";
const char mancompfile[] = "MAN_0.bin";
const char mancompfile2[] = "MAN_0.bak";		//backup file created if calibration is started again
const char eventmsgfile[] = "EVNTMSG.bin";
const char eventfile[] = "Event.bin";
const char eventposfile[] = "eventpos.bin";		// PF 05-Nov-09 Added const eventposfile
const char calibtdfile[] = "calibtd.bin";		// PF Gen 2 - 14-Nov-11 Added

//remember the max name for a directory is 8 chars
const sdcarddirstruct sdcarddir = {	"FRSTCAL"	,
									"RGHCAL"	,
									"FINECAL"	,
									"CONFIG"	,
									"ST"        ,
									"LT"
								};


//Notes on messages:
//sdcardfailure will not be used as it is not possible to write to the SDcard!
Messages sensor_failure 		   =	{"G001 Sensor Failure                             "};
Messages sensor_slowdown 		   =	{"S001 Sensor Slow Down Level Reached             "};
Messages sensor_alarm			   =	{"A001 Sensor Alarm Level Reached                 "};
Messages devsensor_slowdown 	   =	{"S002 Sensor Slow Down Deviation Level Reached   "};
Messages devsensor_alarm 		   =	{"A002 Sensor Alarm Deviation Level Reached       "};
Messages cylinderdev_alarm 		   =	{"C001 Cylinder Deviation Alarm Level Reached     "};
Messages full_auto_calibration     =	{"G002 Full Engine Learning Initiated             "};
Messages sensor_calibration 	   =	{"G003 Sensor Calibration                         "};
Messages loss_of_comms_spu2 	   =	{"G004 Loss of Communications to Slave SPU        "};
Messages look_up_average_error     =	{"G005 Look-up Averaging Error                    "};
Messages sdcardfail 			   =	{"G006 SD Card Failure                            "};
Messages wio_upperalarm  		   =	{"W002 Water in Oil Alarm                         "};	//upper level
Messages wio_alarm				   =	{"W001 Water in Oil Alarm                         "};	//lower level or other alarms
Messages cal_abort				   =    {"G007 Engine Learning Procedure Aborted by User  "};
Messages wio_comms				   =	{"G008 Water in Oil Connection Failure            "};
Messages paramchange			   =	{"G009 Parameter alteration                       "};
Messages framfault1				   =	{"G010 FRAM 1 Communications Fault                "};
Messages framfault2				   =	{"G011 FRAM 2 Communications Fault                "};
Messages pccommsfault			   =	{"G012 Communication to PC Failure                "};
Messages firmwarechange			   =	{"G013 Firmware Version Alteration                "};
Messages calstage 				   =	{"G014 Engine Learning Stage:                     "};
Messages poweron 				   =	{"G015 Power on Initialisation                    "};
Messages sensor_prewarn 		   =	{"P001 Sensor Pre-warning                         "};
Messages offset_adjust 	 		   =	{"G016 Sensor Offset Adjustment                   "};
Messages prewarn_initiated		   =	{"G017 Pre-warning initialised                    "};
Messages rtc_fault 				   =	{"G018 Real Time Clock Failure, Time Reset        "};
Messages event_normal 			   =	{"G019 Event returned to normal                   "};		//not using this
Messages direction_cal			   =	{"G020 Firing order/Engine direction              "};
Messages sensor_replacement 	   =	{"G021 Sensor Replacement Initiated               "};
Messages replacement_cancelled 	   =	{"G022 Sensor Replacement Cancelled               "};
// PF 23-Nov-09 Increased spacing in message G023
Messages replace_50hrcomplete 	   =	{"G023 Sensor Replacement  50 Hours Completed     "};
// PF 23-Nov-09 Corrected spelling mistake in G024 message
Messages replace_500hrcomplete	   =	{"G024 Sensor Replacement 500 Hours Completed     "};
Messages sensorstatus			   =	{"G025 Sensor Status                              "};
// PF 23-Nov-09 Changed spare1 to digouttest message G027
Messages digouttest				   =	{"G027 Alarm Test Mode Status                     "};
//AJB 19-Aug-10 Added for damage monitoring
Messages damsingle				   =	{"S003 Damage Monitor Single Sensor               "};
Messages damcyl					   =	{"S004 Damage Monitor Cylinder Sum                "};
Messages dammbsum				   =	{"S005 Damage Monitor Main Bearing Neighbour Sum  "};
Messages slemOOR				   =	{"G028 SLEM Connection Failure                    "};
Messages rtcbattery			   	   =	{"G029 SPU Clock Battery Low                      "};
Messages slemalarm			   	   =	{"E001 SLEM Alarm Level Reached                   "};
Messages eventlogcleared		   =	{"G026 Event Log Cleared                          "};

//remove the spare messages when adding in new ones.  These are there in order to allocate space in the file on the sd card
//if space is not left and the messages are not updated it will cause an sdfailure
// PF 23-Nov-09 changed spare1 to digouttest message G027
Messages *pMsgList[NUM_EVENTS_IN_LIST] = {&sensor_failure,&sensor_slowdown,&sensor_alarm,&devsensor_slowdown,&devsensor_alarm,&cylinderdev_alarm,&full_auto_calibration,&sensor_calibration,&loss_of_comms_spu2,&look_up_average_error,&sdcardfail,&wio_upperalarm,&wio_alarm, &cal_abort, &wio_comms, &paramchange,&framfault1,&framfault2,&pccommsfault,&firmwarechange,&calstage,
											&poweron,&sensor_prewarn,&offset_adjust,&prewarn_initiated,&rtc_fault,&event_normal,&direction_cal,&sensor_replacement,&replacement_cancelled,&replace_50hrcomplete,
											&replace_500hrcomplete,&sensorstatus,&digouttest,&damsingle,&damcyl,&dammbsum,&slemOOR,&rtcbattery,&slemalarm,&eventlogcleared
											};

F_FIND find;		//used to find a file within the log directory

int SDShortTermSetup(void);
int SDLongTermSetup(void);
int CreateNewShortTermFile(void);
int CreateNewLongTermFile(void);
int CreateNewMANFile(unsigned int sequence);
int SDCardSetupDirectory(const char* ptr,int callnum);
int CreateFile(char *name);

int CreateNewStatusFile(void);
int CreateNewSettingsFile(void);
int CreateNewOffsetsFile(void);

int CreateNewEventMsgFile(void);
int SDEventMessagetoFile(unsigned int mid, unsigned int *msgptr);

int CreateNewEventFile(void);
// PF Gen 2 - 08-Mar-12 Old event system backend removal - int SDEventtoFile(unsigned int eventid, unsigned int *msgptr);
// PF Gen 2 - 08-Mar-12 Old event system backend removal - int SDEventACKtoFile(unsigned int eventid, unsigned int *msgptr);

int ReadSensorStatusfromSDCardFile(void);
int ReadGeneralSettingsfromSDCardFile(void);
int ReadOffsetsfromSDCardFile(void);
int ReadMANCompTablefromSDCardFile(void);

void CharStringtoIntString(unsigned int *outptr, char *inptr,unsigned int lenout);

int SdcardFileHeader(void);
int SdcardFileData(unsigned int *ptr);
int SdcardAmotFile(void);
int DatatoSDCardFile(unsigned int* ptr);
void SDcardError(unsigned int pos);
void BuildFileName(char *name,char *ext);
unsigned long YearstoSecs(unsigned char years, unsigned int bcdflag);
unsigned long DaysThisYear(unsigned char date,unsigned char month, unsigned char year, unsigned int bcdflag);
int SDOldLogFileDeletion(const char *ptr);
int SDLogBinaryData(char *name, unsigned int *sptr, unsigned int len);
int SDAlarmFileRename(char * oldname,char* newname);
int SDDailyFileDeletion(char *filename);
int SDLogHeader(char *filename);
int SDLogUpdate(const char *dirptr, char *filename);
void SDCardEraseAllFiles(void);
int SDShortLogFileDeletion(const char *ptr);
void CreateShortTermFilesandHeaders(void);
void CreateLongTermFilesandHeaders(void);
void SDCardInitfromModbus(void);

// PF 04-Nov-09 Added new FileToClusterSize function
unsigned long FileToClusterSize (unsigned long filesize);
// PF Gen 2 - 14-Nov-11 Calibration to sd card
int ReadCalibrationtdfromSDCardFile(void);
int CreateNewCalibtdFile(void);
// PF Gen 2 - 14-Nov-11 EOM

//Write to the short term and long term logs on the sd card at particular intervals
//This will write to the short term and long term directories
void SDCardLogUpdate(void)
{
static unsigned int previoustensecs;
static unsigned int previousmins;
unsigned int valnow;

	//update the log on a 10 second basis - just look at the upper nibble of seconds (if different then update the log)
	valnow = (clocktime.seconds & 0xF0);
	if(valnow != previoustensecs)
	{
		previoustensecs = valnow;
		if(GetModalRPM(0) >= allsensors.dsss) SDShortTermLogUpdate();
	}
	if(clocktime.minutes != previousmins)
	{
		previousmins = clocktime.minutes;		//save the minutes now
		// PF Gen 2 - 10-May-12 removed runtime from sdlogupdate - EngineRunTimeUpdate();					//update on 1 minutes interval
		logtime.minssecs &= 0xFF00;				//increment in minutes only (clear down the seconds)
		if(GetModalRPM(0) >= allsensors.dsss) SDLongTermLogUpdate();
		if(settings.sdcarderr != 0 && settings.sdcarderr < 3)		//try to fix the broken sd card - reinitialise
		{
			sprintf(stringbuffer,"SDERROR!SDCardLogUpdate\r\n");
			DebugStringOut(stringbuffer);
			SDCardInitialise();		//reinit the sd card may fix the last error
			if(settings.sdcarderr != 0) settings.sdcarderr++;	//increment the error count on sd card reinit
			// PF Gen 2 - 04-Jan-12 Removed spare timer
			// timers.sdlongterm = config.sdsettings.longlrate * SECS_TO_MS_MULTIPLIER;	//longlrate is entered in seconds
			// PF Gen 2 - 04-Jan-12 EOM
		}
	}
}

//SD Card updates based on changes to config data
//This will be called from the main loop - changes should be made to the sd card only when necessary
void SDCardUpdate(void)
{
	if(GetVoltageStatus() == OK)	//only allow if the voltage is ok
	{
		switch(settings.sdcardupdate)
		{
			case SDGENERALUPDATE:
				GeneralSettingstoSDCardFile();
				WriteAllSensorStructtoNVMEM();		//update the fram at the same time as updating the sdcard
				SaveSafeStruct2();					//
				NOPDelay(600);
				settings.sdcardupdate = 0;
			break;
			
			case SDMANCOMPTABLEUPDATE:
				MANCompTabletoSDCardFile((char *)&sdcarddir.configdir,0);	//sequence number always as zero
				NOPDelay(600);
				settings.sdcardupdate = 0;
			break;
			
			case SDSTATUSUPDATE:
				SensorStatustoSDCardFile();
				NOPDelay(600);
				settings.sdcardupdate = 0;
			break;
			
			case SDOFFSETSUPDATE:
				OffsetstoSDCardFile();
				NOPDelay(600);
				settings.sdcardupdate = 0;
			break;
			
			// PF Gen 2 - 14-Nov-11 Save calibration time and date
			case SDCALIBRATIONUPDATE:
				CalibrationtdtoSDCardFile();
				NOPDelay(600);
				settings.sdcardupdate = 0;
			break;

			case SDIDLE:
				break;

			default:
				break;
			// PF Gen 2 - 14-Nov-11 EOM
		}

		//NOPDelay(1000); //Give some delay for SD card
	}

	// PF Gen 2 - 30-Apr-12 Check if the sd card error alarm is cleared or set before alarming so the alarm on occurs once
	if (settings.sdcarderr != 0) {
		if (CheckAlarmBitSet(SDCARDERRORALARM) == 0) SetAlarmEvent(SDCARDERRORALARM);
	} else {
		if (CheckAlarmBitSet(SDCARDERRORALARM) == 1) ClearAlarmEvent(SDCARDERRORALARM);
	}
	// PF Gen 2 - 30-Apr-12 EOM

}

//On power up read data from the sd card
void PowerUpReadSD(void)
{
	ReadGeneralSettingsfromSDCardFile();
	ReadSensorStatusfromSDCardFile();
	ReadOffsetsfromSDCardFile();
	ReadMANCompTablefromSDCardFile();
	ReadCalibrationtdfromSDCardFile(); // PF Gen 2 - 14-Nov-11 Read from SD card
}


//this is based on the directory being setup before this function is called
int GetFirstFileNameString(void)
{
char dir[MAX_DIRNAME_LEN_BYTES];

	if(settings.sdcarderr == FALSE && sdsettings.present == 1)
	{
		//convert the int array from pc into a byte array to find the directory name
		StringInttoByteArray(dir,fileregs.directorystr,MAX_DIRNAME_LEN);
		if(dir[0] !=0)
		{
			if(SDCardSetupDirectory(dir,1) != 0) return(SDCARD_ERROR);	//error in setting to directory 
			if(!f_findfirst("*.*",&find))	//find any file in directory
			{
				//convert the filename into a int array, len of ints
				StringBytetoIntArray(fileregs.filenamestr,find.filename,MAX_FILENAME_LEN);
			}
		}
	}
	return(0);
}

//this is based on the directory being setup before this function is called
int GetNextFileNameString(void)
{
char filename[MAX_FILENAME_LEN_BYTES];
	if(settings.sdcarderr == FALSE && sdsettings.present == 1)
	{
		//convert the int array from pc into a byte array to find the directory name
		StringInttoByteArray(filename,fileregs.filenamestr,MAX_FILENAME_LEN);
		if(!f_findnext(&find))	//find any file in directory
		{
			//convert the filename into a int array, len of ints
			StringBytetoIntArray(fileregs.filenamestr,find.filename,MAX_FILENAME_LEN_BYTES);
		}
	}
	return(0);
}

//Returns the file size in words - can be used to return the file size to the PC
long GetFileNumWords(void)
{
char dir[MAX_DIRNAME_LEN_BYTES];
char filename[MAX_FILENAME_LEN_BYTES];
F_FILE *file;		//FILE pointer use for each function below pass in the pointer
long size;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1)
	{
		//convert the int array from pc into a byte array to find the directory name
		StringInttoByteArray(dir,fileregs.directorystr,MAX_DIRNAME_LEN);
		StringInttoByteArray(filename,fileregs.filenamestr,MAX_FILENAME_LEN);
		if(SDCardSetupDirectory(dir,2) != 0) return(SDCARD_ERROR);	//error in setting to directory 

		file = f_open(filename,"r");
		if(!file)		//error
		{
			return(SDCARD_ERROR);	//error in setting to directory 
		}
		size = f_filelength(filename);
		f_close(file);
		fileregs.getnumwords = size/2;	//set in ints
		return(fileregs.getnumwords);
	}
	return(0);
}


//If the readwriteflag has been set carry our read or write from the transfer buffer
//return -1 on error
int ReadWriteTransferBuffer(void)
{
char dir[MAX_DIRNAME_LEN_BYTES];
char filename[MAX_FILENAME_LEN_BYTES];
F_FILE *file;		//FILE pointer use for each function below pass in the pointer
long len;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1)
	{
		if(fileregs.readwriteflag != 0)	//read or write request
		{
			//convert the int array from pc into a byte array to find the directory name
			StringInttoByteArray(dir,fileregs.directorystr,MAX_DIRNAME_LEN);
			StringInttoByteArray(filename,fileregs.filenamestr,MAX_FILENAME_LEN);
			if(SDCardSetupDirectory(dir,3) != 0) return(SDCARD_ERROR);	//error in setting to directory 
			len = fileregs.setnumwords *2;	//set in bytes
		}

		if(fileregs.readwriteflag == FILE_TRANSFER_READ)	//set to 1 for a read stream from sd to buffer
		{
			fileregs.readwriteflag = 0;	//clear the flag to zero once completed
			file = f_open(filename,"r");
		   	if(!file) return SDCARD_ERROR;
			//do file read to char buffer
			if(f_seek(fileregs.file,(fileregs.setoffset*2),SEEK_SET) == F_NO_ERROR)
			{
				f_read(f_databuf,1,len,file);
				f_close(file);
			}
			else 
			{
				f_close(file);
				return(SDCARD_ERROR);
			}

			//covert char buffer into ints
			BytetoIntArray(transferbuffer,f_databuf,fileregs.setnumwords);	//transfer the int array into the byte array

		}
		else if(fileregs.readwriteflag == FILE_TRANSFER_WRITE)	//set to 2 for writing from the buffer to sd
		{
			fileregs.readwriteflag = 0;	//clear the flag to zero once completed
			InttoByteArray(f_databuf,transferbuffer,fileregs.setnumwords);	//transfer the int array into the byte array

			file = f_open(filename,"a");
		   	if(!file) return SDCARD_ERROR;

			//do not call a write function, as passing the file ptr around doesnt work!
			if(f_write(f_databuf,1,len,file)!= len)	//len in bytes
			{
				f_close(file);	//try and close it anyway
				return SDCARD_ERROR;
			}
			f_close(file);
		}
		else if(fileregs.readwriteflag == FILE_TRANSFER_DELETE)	//set to 3 for deleting from sd
		{
			fileregs.readwriteflag = 0;	//clear the flag to zero once completed
			//delete the file - this can becalled before writing to a file, otherwise the file will always be appended
			if(f_delete(filename) != 0)
			{
				DeselectSPI();	//send cs high after deletion
				return(SDCARD_ERROR);
			}
			DeselectSPI();	//send cs high after deletion
		}
	}
	return(0);
}


//Find a file within the specified directory
int FindFirstLogFile(const char * ptr)
{
	if(SDCardSetupDirectory(ptr,4) != 0) return(SDCARD_ERROR);	//error in setting to directory 
	if(!f_findfirst("*.bin",&find))
	{
		sscanf(find.filename,"%2u%2u%2u",&fileregs.year1,&fileregs.month1,&fileregs.date1);
	}
	return(0);
}

//if sdreinit received from modbus, try to set-up the sd card
void SDCardInitfromModbus(void)
{
	if(settings.sdreinit == 1)	//reinit the sd card
	{
		settings.sdreinit = 0;
		sdsettings.present = 1;
		if(SDCardInitialise() == 0)
		{
			sdsettings.present = 1;
			SaveSDSettings();
		}
		else
		{
			sdsettings.present = 0;
			SaveSDSettings();
		}
	}
}

//Initialise the SD card on power up and set the directory to \log
//All data should be present inside the log directory
int SDCardInitialise(void)
{
int result;
int i;

	//wait 1 seconds before init on sd card
	timers.general = 1*SECS_TO_MS_MULTIPLIER;
	while(timers.general != 0) settings.watchdog = 1;	//wait for timeout on general timer

	if(GetVoltageStatus() == OK)	//only allow if the voltage is ok
	{

		if(sdsettings.present == 1)	//check if we are using an sd card
		{
			settings.cardreadflag = 0;		//set up for writing to sd card, if set to 1 then reading from modbus
			settings.sderase = 0;			//make sure the erase flag is not set
			settings.sdreinit = 0;
			settings.sdcardupdate = 0;		//flag set when an update is required to the sd card - this relates to config directory changes
			settings.eventmsgid = 0;
			sdsettings.errornum = 0;
			fileregs.readwriteflag = 0;		//clear the flag to zero
			i = 0;
			do
			{
				//this does not need the hardware
				result = f_initvolume(0,mmc_initfunc,F_AUTO_ASSIGN);
				if(result != 0) f_delvolume(0);
				i++;
				settings.watchdog = 1;
			}while(result != 0 && i < 4);
			if(result == 0)
			{
				settings.sdcarderr = 0;			//set to zero and try and set-up the card

				f_mkdir(sdcarddir.firstcaldir); //make dir, it may already exist, so it wont make it again!
				f_mkdir(sdcarddir.finecaldir);
				f_mkdir(sdcarddir.roughcaldir);
				f_mkdir(sdcarddir.configdir);
				DeselectSPI();	//send cs high
				SDCardSetupDirectory(sdcarddir.configdir,5);	
				CreateNewEventFile();
				DeselectSPI();	//send cs high (just to be sure!)
				SDShortTermSetup();
				SDLongTermSetup();
				DeselectSPI();	//send cs high (just to be sure!)
				if(SdcardAmotFile())
				{
					SDcardError(AMOT_FILE_CREATE);
					return SDCARD_ERROR;			
				}
			}
			else
			{
				CLITransmitBuffer("SD Card Init Error - sd card inoperable\r\n");
				SDcardError(SD_CARD_INIT_ERROR);
				return SDCARD_ERROR;
			}
		}
	}
	//wait 1 seconds after init on sd card
	timers.general = 1*SECS_TO_MS_MULTIPLIER;
	while(timers.general != 0) settings.watchdog = 1;	//wait for timeout on general timer
	// PF Gen 2 - 04-Jan-12 Removed spare timers
	// timers.sdlongterm = 10*SECS_TO_MS_MULTIPLIER;	//seed with 10 seconds initially after power up
	// timers.sdshortterm = 10*SECS_TO_MS_MULTIPLIER;	//seed with 10 seconds initially after power up
	// PF Gen 2 - 04-Jan-12 EOM
	return(0);	//no error
}



//--------------------------------------------------------------------------------------------------------------

int SDShortTermSetup(void)
{
F_FILE *file;		//FILE pointer use for each function below pass in the pointer
unsigned long size;
unsigned int len;

	f_chdir("..");	//drop back to root

	f_mkdir(sdcarddir.sterm);
	DeselectSPI();	//send cs high (just to be sure!)
	//reload from fram
	len = sizeof(shorttermlogstruct);
	ReadNVMemory(FRAM1,SHORTTERMLOGSTRUCT_OFFSET,&shortterm,len);

	if(shortterm.setupvalue != MAGIC_NUMBER)
	{
		shortterm.setupvalue = MAGIC_NUMBER;
		//see above loaded from FRAM on power out
		shortterm.sdshorttermfilenames.filenamen1[0] = 0;	//set to null
		shortterm.sdshorttermfilenames.filenamen2[0] = 0;

		shortterm.sdcard.alarmevent.n1 = 0;
		shortterm.sdcard.alarmevent.n2 = 0;
		shortterm.sdcard.alarmevent.n3 = 0;

		sprintf(stringbuffer,"SDSetup shortterm error\r\n");
		DebugStringOut(stringbuffer);

	}

	shortterm.sdcard.fileext[0] = 'b';
	shortterm.sdcard.fileext[1] = 'i';
	shortterm.sdcard.fileext[2] = 'n';
	shortterm.sdcard.fileext[3] = 0;
	shortterm.sdcard.lastlogtimeinsecs = BuildTimeStamp();
	shortterm.sdcard.currentdate = clocktime.date;


	BuildFileName(shortterm.sdcard.currentfilename,shortterm.sdcard.fileext);

	//save the settings to nv memory
	len = sizeof(shorttermlogstruct);
	WriteNVMemory(FRAM1,SHORTTERMLOGSTRUCT_OFFSET,&shortterm,len);

	SDCardSetupDirectory(sdcarddir.sterm,6);	//setup the directory to check

	file = f_open(shortterm.sdcard.currentfilename,"a");
	size = f_filelength(shortterm.sdcard.currentfilename);
	f_close(file);
	//should return zero if the filelength cannot be read
	if(size == 0)	//write the file header to all the logging files
	{
		CreateShortTermFilesandHeaders();
	}
	DeselectSPI();	//send cs high (just to be sure!)
	return(0);
}


void CreateShortTermFilesandHeaders(void)
{
	if(SDCardSetupDirectory(sdcarddir.sterm,7)!= 0) return;
	if(CreateFile(shortterm.sdcard.currentfilename)) return;
	//create the header information containing the firmware version when a new file is created
	SDLogHeader(shortterm.sdcard.currentfilename);
}

void CreateLongTermFilesandHeaders(void)
{
	if(SDCardSetupDirectory(sdcarddir.lterm,8)!= 0) return;
	if(CreateFile(shortterm.sdcard.currentfilename)) return;
	//create the header information containing the firmware version when a new file is created
	SDLogHeader(shortterm.sdcard.currentfilename);
}

int SDLongTermSetup(void)
{
F_FILE *file;		//FILE pointer use for each function below pass in the pointer
unsigned long size;

	f_chdir("..");	//drop back to root

	f_mkdir(sdcarddir.lterm);
	DeselectSPI();	//send cs high (just to be sure!)

	longterm.sdcard.fileext[0] = 'b';
	longterm.sdcard.fileext[1] = 'i';
	longterm.sdcard.fileext[2] = 'n';
	longterm.sdcard.fileext[3] = 0;
	longterm.sdcard.lastlogtimeinsecs = BuildTimeStamp();
	longterm.sdcard.logfilecreated = TRUE;

	BuildFileName(longterm.sdcard.currentfilename,longterm.sdcard.fileext);

	SDCardSetupDirectory(sdcarddir.lterm,9);	//setup the directory to check

	file = f_open(longterm.sdcard.currentfilename,"a");
	size = f_filelength(longterm.sdcard.currentfilename);
	f_close(file);
	//should return zero if the filelength cannot be read
	if(size == 0)	//write the file header to all the logging files
	{
		CreateLongTermFilesandHeaders();
	}
	DeselectSPI();	//send cs high (just to be sure!)
	return(0);
}


//Pass in a pointer to the first directory to write to (this should be the senpre) either for long term or short term
//The file should be created before calling the function
int SDLogUpdate(const char *dirptr, char *filename)
{
unsigned int i;
unsigned int j;
unsigned int intbuf[SD_LOGENTRY_LEN_WORDS];		//buffer used for integers before writing
unsigned int len;

	if(GetVoltageStatus() == OK)	//only allow if the voltage is ok
	{
		//setup directory
		if(SDCardSetupDirectory((const char*)dirptr,10)!= 0) {SDcardError(SETUP_DIR_ERROR); return(SDCARD_ERROR);}	//error in setting to directory

		memset(intbuf,0,SD_LOGENTRY_LEN_WORDS);	//clear to zero
		//pass in the file to write to (dir already setup) and a ptr to the source data to write
		//the checksum and a sequence number will also be written to the file
		i = 0;
		for(j=0;j<MAX_NUM_CHANNELS;j++) { intbuf[i++] = GetScaledValue(j);				}//SENPRE	
		for(j=0;j<MAX_NUM_CHANNELS;j++) { intbuf[i++] = GetEndResultValue(j);			}//SENPST	
		for(j=0;j<MAX_NUM_CHANNELS;j++) { intbuf[i++] = GetSensorDeviationValue(j);		}//SENDEV	
		for(j=0;j<MAX_NUM_CYLINDERS;j++){ intbuf[i++] = GetCylinderAverageValue(j);		}//CYLAVE	
		for(j=0;j<MAX_NUM_CYLINDERS;j++){ intbuf[i++] = GetCylinderDeviationValue(j);	}//CYLDEV	
		for(j=0;j<MAX_NUM_CHANNELS;j++) { intbuf[i++] = sensor[j].prt;					}//TEMP		
		//RPM
		intbuf[i++] = GetModalRPM(0);		//modal rpm value from ALL channels
		intbuf[i++] = GetCheckedRPM(2);		//rpm from the second spu
		//WIO:
		intbuf[i++] = WIOActivityWord();
		intbuf[i++] = WIOPPMWord();
		intbuf[i++] = WIOTemperatureWord();
		//RUNT:
		intbuf[i++] = (unsigned int)(engine.runtime >> 16);			//save the runtime in minutes for the engine
		intbuf[i++] = (unsigned int)(engine.runtime & 0xFFFF);	   	//save the runtime in minutes for the engine
		// PF 06-Nov-09 Added analog values to sd log file
		for(j=0;j<8;j++) {
			intbuf[i++] = inputs.analog.value[j];
		}
		// PF 06-Nov-09 EOM
		//AJB 19-Aug-10
		for(j=0;j<MAX_NUM_CHANNELS;j++) { intbuf[i++] = manref[j].refvalue_int;		}		//sensor reference value
		intbuf[i++] = dynalarmlevels.single1_int;	//dynamic alarm level 1 for single
		intbuf[i++] = dynalarmlevels.cyl1_int;		//dynamic alarm level 1 for cylinder sum
		intbuf[i++] = dynalarmlevels.mbsum1_int;	//dynamic alarm level 1 for mb neighbour sum
		intbuf[i++] = dynalarmlevels.single2_int;	//dynamic alarm level 2 for single
		intbuf[i++] = dynalarmlevels.cyl2_int;		//dynamic alarm level 2 for cylinder sum
		intbuf[i++] = dynalarmlevels.mbsum2_int;	//dynamic alarm level 2 for mb neighbour sum

		//SLEM mV:
		intbuf[i++] = (unsigned int)(slem.mV);		//save the mv reading for the slem
		//currently 190 words used out of 252 allocated
		//AJB 19-Aug-10 EOM
		len = SD_LOGENTRY_LEN_WORDS;
		if(SDLogBinaryData(filename,intbuf,len) != 0) return(SDCARD_ERROR);	//error on file write
	}
	return(0);
}


//The file should be created before calling the function
//The directory should be setup before calling this function
//This function will place the firmware header at the start of the file
//The header length will be the same length as each entry
int SDLogHeader(char *filename)
{
unsigned int intbuf[SD_LOGENTRY_LEN_WORDS];		//buffer used for integers before writing
unsigned int len;

	if(GetVoltageStatus() == OK)	//only allow if the voltage is ok
	{
		memset(intbuf,0,SD_LOGENTRY_LEN_WORDS);	//clear to zero
		len = SD_LOGENTRY_LEN_WORDS;
		//length and data now setup with zeroes
		//write the frimware to first position
		intbuf[0] = versionreg;
		 
		if(SDLogBinaryData(filename,intbuf,len) != 0) return(SDCARD_ERROR);	//error on file write
	}
	return(0);
}



int SDShortTermLogUpdate(void)
{

	if(GetVoltageStatus() == OK)	//only allow if the voltage is ok
	{
		//short term log filename - creation of all logs files in all short term directories
		CreateNewShortTermFile();	//this will create a file if a new file should be created

		//pass in a pointer to the ssenpre directory (short term)
		return(SDLogUpdate(sdcarddir.sterm,shortterm.sdcard.currentfilename));
	}
	return(0);
}




int SDLongTermLogUpdate(void)
{

	if(GetVoltageStatus() == OK)	//only allow if the voltage is ok
	{
		//long term log filename - creation of all logs files in all long term directories
		CreateNewLongTermFile();	//this will create a file if a new file should be created

		//pass in a pointer to the lsenpre directory
		return(SDLogUpdate(sdcarddir.lterm,longterm.sdcard.currentfilename));
	}
	return(0);
}



//Short term deletion will delet all files older than five years.
//This will include files with appended letters for alarm created files
//As the file checking is done on the first 6 chars the appendage doesnt matter in the comparison
int SDShortTermOldFileDeletion(void)
{
	if(SDCardSetupDirectory(sdcarddir.sterm,11)!= 0) { SDcardError(SHORT_TERM_DIR_SETUP); return(SDCARD_ERROR);	} //error in setting to directory
	if(SDShortLogFileDeletion(sdcarddir.sterm) != 0) return(SDCARD_ERROR);
	DeselectSPI();	//send cs high after deletion
	return(0);
}

//Short term daily file deletion - call to delete from all the short term directories on a daily basis
int SDDailyFileDeletion(char *filename)
{
	if(SDCardSetupDirectory(sdcarddir.sterm,12)!= 0) { SDcardError(SHORTTERM_DAILY_DEL_DIR); return(SDCARD_ERROR);	} //error in setting to directory
	if(f_delete(filename) != 0)
	{
		DeselectSPI();	//send cs high after deletion
		return(SDCARD_ERROR);
	}
	DeselectSPI();	//send cs high after deletion
	return(0);
}

//Short term file renaming for alarm files
int SDAlarmFileRename(char * oldname,char* newname)
{
	if(SDCardSetupDirectory(sdcarddir.sterm,14)!= 0) { SDcardError(SDALARMFILERENAME_DIR); return(SDCARD_ERROR);	} //error in setting to directory
	if(f_rename(oldname,newname) != 0)
	{
		DeselectSPI();	//send cs high after deletion
		return(SDCARD_ERROR);
	}
	DeselectSPI();	//send cs high after deletion
	return(0);
}


//This function will delete old files within the directory passed in (the space allocated for short term logs is
//150 files.)  If there are more than this number the oldest file using findfirstlogfile will be deleted
// PF 22-Oct-09 Re-wrote routine to fix finding all files, and to delete the oldest file not first found file
int SDShortLogFileDeletion(const char *ptr)
{
int counter;
int result;
unsigned short cdateToDelete;
char filenameToDelete[F_MAXPATH];

	if(FindFirstLogFile(ptr)!= 0)
	{
		SDcardError(SDSHORTLOGFILEDELETION_FINDFIRSTLOGFILE);
		return(SDCARD_ERROR);	//error in setting to directory SHORTL
	}
	else
	{

		counter = 0;
		result = 0;

		// Setup initial file to delete to the first found
		strcpy(filenameToDelete,find.filename);
		cdateToDelete = find.cdate;

		// The findnext function returns 5 on no more files, but zero is no error. So if there was a problem then the loop would still complete.
		// The check for the <= MAX_NUM_SHORTTERM_FILES +100 means the loop never goes more than that number of files for testing just in case the 
		// SD card routines mess up and don't return 5 so at least the loop would complete.
		while (result == 0 && counter <= MAX_NUM_SHORTTERM_FILES +100) { 
			result = f_findnext(&find);

			if (find.cdate < cdateToDelete) {
				strcpy(filenameToDelete,find.filename);
				cdateToDelete = find.cdate;
			}

			counter++;
			settings.watchdog = 1;	//kick the dog in the timer interrupt
		}

		// If too many files delete the oldest file found above
		if(counter > MAX_NUM_SHORTTERM_FILES)
		{
			if(SDCardSetupDirectory(ptr,15) != 0) return(SDCARD_ERROR);	//error in setting to directory 
			sprintf(stringbuffer,"SDel:%s\r\n",filenameToDelete); DebugStringOut(stringbuffer);
			f_delete(filenameToDelete);	//delete file
			DeselectSPI();	//send cs high after deletion
		}

	}
	return(0);
}


# define MAX_DIRECTORY_SIZE_LONGTERM 1379205120

// PF 4-Nov-09 rewrote routine to work based on size not date
int SDOldLogFileDeletion(const char *ptr)
{
int counter;
int result;
unsigned short cdateToDelete;
char filenameToDelete[F_MAXPATH];
unsigned long directorySize;

	if(FindFirstLogFile(ptr)!= 0)
	{
		SDcardError(SDOLDLOGFILEDELETION_FINDFIRSTLOGFILE);
		return(SDCARD_ERROR);	//error in setting to directory SHORTL
	}
	else
	{

		counter = 0;
		result = 0;

		// Setup initial file to delete to the first found
		strcpy(filenameToDelete,find.filename);
		cdateToDelete = find.cdate;
		directorySize = FileToClusterSize (find.filesize);

		// The findnext function returns 5 on no more files, but zero is no error. So if there was a problem then the loop would still complete.
		// The check for the <= 2000 means the loop never goes more than that number of files for testing just in case the 
		// SD card routines mess up and don't return 5 so at least the loop would complete.
		while (result == 0 && counter <= 2000) { 
			result = f_findnext(&find);

			if (result == 0) {
				if (find.cdate < cdateToDelete) {
					strcpy(filenameToDelete,find.filename);
					cdateToDelete = find.cdate;
				}

				// This calculation will always bump up the file size to the next 32768 cluster size
				directorySize += FileToClusterSize (find.filesize);
				counter++;
				settings.watchdog = 1;	//kick the dog in the timer interrupt
			}
		}

		sprintf(stringbuffer,"SDOldLogFileDeletion: %u %lu\r\n",counter,directorySize);  DebugStringOut(stringbuffer); // DEBUG

		// If too much space is used then delete the oldest file found above
		if(directorySize > MAX_DIRECTORY_SIZE_LONGTERM)
		{
			if(SDCardSetupDirectory(ptr,16) != 0) return(SDCARD_ERROR);	//error in setting to directory 
			sprintf(stringbuffer,"LDel:%s\r\n",filenameToDelete); DebugStringOut(stringbuffer); // DEBUG
			f_delete(filenameToDelete);	//delete file
			DeselectSPI();	//send cs high after deletion
		}

	}
	return(0);
}

// PF 04-Nov-09 Added new FileToClusterSize function
unsigned long FileToClusterSize (unsigned long filesize) {

	float fileSizeToCluster;
	unsigned long clusterMinFileSizeLong;

	fileSizeToCluster = (float)filesize / 32768;
	clusterMinFileSizeLong = (unsigned long)fileSizeToCluster;
	if (fileSizeToCluster - clusterMinFileSizeLong != 0) clusterMinFileSizeLong +=1;
	return (clusterMinFileSizeLong * 32768);
}

//Write the binary data to a long term log file or short term log file.  The file name should be passed into this function
//Also pass in a ptr to an int stream and the length to write (in ints)
int SDLogBinaryData(char *name, unsigned int *sptr, unsigned int len)
{
F_FILE *file;		//FILE pointer use for each function below pass in the pointer
unsigned int chksum1;	//created for the addition of the timedate stamp
unsigned int chksum2;	//created for the data (and then add on the timestamp)
unsigned int bytelen;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1 && settings.cardreadflag != 1)
	{
		//open the log file for writing
		file = f_open(name,"a");
	   	if(!file)
	   	{
	   		f_close(file);	//try to close even though there was a problem opening it
	   		SDcardError(SDLOGBINARYDATA_OPEN);
	   		return SDCARD_ERROR;
	   	}
		chksum1 = CalcUIntChecksum((unsigned int*)&logtime,3);		//3 ints for the date/time
		chksum2 = CalcUIntChecksum(sptr,len);		
		chksum2 += chksum1;
		InttoByteArray(f_databuf,(unsigned int*)&logtime,3);			//3 ints for the date/time
		InttoByteArray(&f_databuf[6],sptr,len);
		bytelen = len * 2;	//int *2 for bytes
		bytelen += 6;		//add on 6 for the date/time stamp
		InttoByteArray((unsigned int*)&f_databuf[bytelen],&chksum2,1);	//stick the checksum at the end of the stream
		//bytelen = len * 2 + 8 bytes (+8 for date/time and checksum)
		bytelen += 2;		//add on two for the checksum

		//do not call a write function, as passing the file ptr around doesnt work!
		if(f_write(f_databuf,1,bytelen,file)!= bytelen)	//len in bytes
		{
			f_close(file);	//try and close it anyway
			SDcardError(SDLOGBINARYDATA_WRITE);
			return SDCARD_ERROR;
		}

		//close file and return zero on success
		f_close(file);
	}
	return(0);
}

//--------------------------------------------------------------------------------------------------------------

//compile a string of characters into a string of integers (two chars per int)
void CharStringtoIntString(unsigned int *outptr, char *inptr, unsigned int lenout)
{
unsigned int i;
unsigned int j;
	//msg/2 as msg in chars converting to half length in ints
	j = 0;
	for(i=0;i<lenout;i++)
	{
		 outptr[i] = inptr[j] << 8;	//shift to top half
		 j++;
		 outptr[i] += inptr[j] & 0xFF;	//add on next char
		 j++;
	}
}

//function to initialise all the event messages to a default setting on the sd card
//These messages can be altered if necessary from the modbus registers
//This function can be called from a modbus register in order to setup all the messages
void SetAllEventMsgs(void)
{
unsigned int i;
unsigned int tempmsg[EVENTMSG_LEN_INBYTES];
	for(i=0;i<NUM_EVENTS_IN_LIST;i++)
	{
		CharStringtoIntString(tempmsg,(char*)pMsgList[i],EVENTMSG_LEN_INBYTES/2);		//compile a character string into an integer string
		SDEventMessageUpdate(i, tempmsg);
	}
}


int SDEventMessageUpdate(unsigned int mid, unsigned int *msgptr)
{
	if(GetVoltageStatus() == OK)	//only allow if the voltage is ok
	{
		if(SDCardSetupDirectory(sdcarddir.configdir,17)!= 0) return(SDCARD_ERROR);

		CreateNewEventMsgFile();	//this will create a file if a new file should be created
		//save the message to the event message file on the sd card
		return(SDEventMessagetoFile(mid,msgptr));
	}
	return(0);
}



//write a 48 character event message to the sd card
//This will be written dependent on the file position relating to the particular message
//Pass in message ID and ptr to the msg stream (as ints)
int SDEventMessagetoFile(unsigned int mid, unsigned int *msgptr)
{
F_FILE *file;		//FILE pointer use for each function below pass in the pointer

unsigned int i;
unsigned int j;
unsigned int len;
unsigned long offset;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1 && settings.cardreadflag != 1)
	{
		//open the log file for writing
		file = f_open(eventmsgfile,"a");

	   	if(!file)
	   	{
	   		f_close(file);	//try to close even though there was a problem opening it
	   		SDcardError(SDEVENTMESSAGETOFILE_OPEN);
	   		return SDCARD_ERROR;
	   	}
		j = 0;
		//in theory this could be changed to a function (as the char to in and int to char is carried out quite a lot
		//this would save about 200 words (if replaced throughout the sdcard.c) In practice it is causing problems
		//because of the word alligned processor...tried using a function, didnt work so changed back to doing it inline!
		//split data in words into chars, at end of stream should be \r\n
		for(i=0;i<EVENTMSG_LEN_INBYTES/2;i++)
		{
			f_databuf[j] = msgptr[i] >> 8;
			j++;
			f_databuf[j] = msgptr[i] & 0xFF;
			j++;
		}
		f_databuf[EVENTMSG_LEN_INBYTES] = 0x0d;
		f_databuf[EVENTMSG_LEN_INBYTES+1] = 0x0a;	//\r\n at end
		len = EVENTMSG_LEN_INBYTES+2;	//48 bytes +2 for \r\n for each message
		//mid should be a reference from zero
		offset = (unsigned long)mid * (EVENTMSG_LEN_INBYTES+2);
		if(f_seek(file,offset,SEEK_SET) != F_NO_ERROR)
		{
			f_close(file);	//try and close it on a seek error
			SDcardError(SDEVENTMESSAGETOFILE_SEEK);
			return SDCARD_ERROR;
		}

		//do not call a write function, as passing the file ptr around doesnt work!
		if(f_write(f_databuf,1,len,file)!= len)	//len in bytes
		{
			f_close(file);	//try and close it anyway
			SDcardError(SDEVENTMESSAGETOFILE_WRITE);
			return SDCARD_ERROR;
		}

		f_close(file);
	}
	return(0);
}

//read the event message and store at the msgptr
//te function should pass in the message id so the offset to the message can be calculated
int SDReadEventMessage(unsigned int mid, unsigned int *msgptr)
{
int len;
unsigned int i;
unsigned int k;
unsigned int value;
unsigned long offset;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1)
	{
		if(SDCardSetupDirectory(sdcarddir.configdir,18)!= 0) return(SDCARD_ERROR);	//error in setting to directory config
		fileregs.file = f_open(eventmsgfile,"r");
		offset = (unsigned long)mid * (EVENTMSG_LEN_INBYTES+2);
		//move to message in file
		if(f_seek(fileregs.file,offset,SEEK_SET) != F_NO_ERROR)
		{
			f_close(fileregs.file);	//try and close it on a seek error
			SDcardError(SDREADEVENTMESSAGE_SEEK);
			return SDCARD_ERROR;
		}

		len = EVENTMSG_LEN_INBYTES;	//lenght of event message in bytes

		//if the file could not be read/opened - the settings will not be altered			
		if(fileregs.file != 0)
		{
		 	f_read(fileregs.readbuffer,1,len,fileregs.file);	//read the eventmsg into buffer

			k = 0;
			for(i=0;i<EVENTMSG_LEN_INBYTES/2;i++)
			{
				value = fileregs.readbuffer[k] << 8;
				k++;
				value += fileregs.readbuffer[k] & 0xFF;
				k++;
				msgptr[i] = value;
			}
			//close file and return zero on success
			f_close(fileregs.file);
		}
		else SetAllEventMsgs();		//set from the ROM if we cannot open the file
	}
	return(0);
}

//Create a new event message file - if a file already exists in the current directory delete it before
//creating a new one
int CreateNewEventMsgFile(void)
{
	if(CreateFile((char*)eventmsgfile)) return SDCARD_ERROR;		//create a new file with the new file name stored in the structure
	return(0);	//all ok
}
//--------------------------------------------------------------------------------------------------------------


//--------------------------------------------------------------------------------------------------------------


// PF Gen 2 - 08-Mar-12 Old event system backend removal - 
/*
//Update the event on the sd card, all the data should be setup at the msgptr
//The message lenght is fixed to EVENT_LENGTH_INBYTES
//the log will be stored in binary format and offset according to the eventid
//The event id should be updated in fram or eeprom for each new event
int SDEventUpdate(unsigned int eventid, unsigned int *msgptr)
{
	if(GetVoltageStatus() == OK)	//only allow if the voltage is ok
	{
		if(settings.sdcarderr == FALSE && sdsettings.present == 1)
		{
			if(SDCardSetupDirectory(sdcarddir.configdir)!= 0) return(SDCARD_ERROR);

			if(CreateNewEventFile()) return (SDCARD_ERROR);	//this will create a file if a new file should be created
			//save the event string to the sd card event file
			return(SDEventtoFile(eventid,msgptr));
		}
	}
	return(0);
}

//This will be written dependent on the file position relating to the particular event
//Pass in message ID and ptr to the msg stream (as ints)
int SDEventtoFile(unsigned int eventid, unsigned int *msgptr)
{
F_FILE *file;						//FILE pointer use for each function below pass in the pointer

unsigned int i;
unsigned int j;
unsigned int len;
unsigned long offset;
char teststring[200];

	if(settings.sdcarderr == FALSE && sdsettings.present == 1)
	{
		offset = (unsigned long)eventid * EVENT_LENGTH_INBYTES;

		// DEBUG
		j = 0;
		//split data in words into chars, at end of stream should be \r\n
		for(i=0;i<EVENT_LENGTH_INBYTES/2;i++)
		{
			teststring[j] = msgptr[i] >> 8;
			j++;
			teststring[j] = msgptr[i] & 0xFF;
			j++;
		}
		teststring[EVENT_LENGTH_INBYTES-2] = 0x0d;
		teststring[EVENT_LENGTH_INBYTES-1] = 0x0a;	//\r\n at end
		teststring[EVENT_LENGTH_INBYTES] = 0x00;
		sprintf(stringbuffer,"SDEventtoFile:%lu\r\n%s\r\n",offset,teststring);
		DebugStringOut(stringbuffer);
		// DEBUG EOD

		//open the log file for writing
		file = f_open(eventfile,"a");

	   	if(!file)
	   	{
	   		f_close(file);	//try to close even though there was a problem opening it
	   		SDcardError(SDEVENTTOFILE_OPEN);
	   		return SDCARD_ERROR;
	   	}
		j = 0;
		//split data in words into chars, at end of stream should be \r\n
		for(i=0;i<EVENT_LENGTH_INBYTES/2;i++)
		{
			f_databuf[j] = msgptr[i] >> 8;
			j++;
			f_databuf[j] = msgptr[i] & 0xFF;
			j++;
		}
		f_databuf[EVENT_LENGTH_INBYTES-2] = 0x0d;
		f_databuf[EVENT_LENGTH_INBYTES-1] = 0x0a;	//\r\n at end
		len = EVENT_LENGTH_INBYTES;
		//eventid should be a reference from zero
		//see above offset = (unsigned long)eventid * EVENT_LENGTH_INBYTES;

		if(f_seek(file,offset,SEEK_SET) != F_NO_ERROR)
		{
			f_close(file);	//try and close it on a seek error
			SDcardError(SDEVENTTOFILE_SEEK);
			return SDCARD_ERROR;
		}
		//do not call a write function, as passing the file ptr around doesnt work!
		if(f_write(f_databuf,1,len,file)!= len)	//len in bytes
		{
			f_close(file);	//try and close it anyway
			SDcardError(SDEVENTTOFILE_WRITE);
			return SDCARD_ERROR;
		}

		f_close(file);

		// PF 04-Nov-09 write eventlogvars.eventlogid
		file = f_open(eventposfile,"w");
		if(!file)
		{
			f_close(file);	//try to close even though there was a problem opening it
			SDcardError(EVENTPOSTOSDCARDFILE_OPEN);
			return SDCARD_ERROR;
		}

		InttoByteArray(f_databuf,(unsigned int*)&eventlogvars.eventlogid ,1);
		len = 2;

		//do not call a write function, as passing the file ptr around doesnt work!
		if(f_write(f_databuf,1,len,file)!= len)	//len in bytes
		{
			f_close(file);	//try and close it anyway
			SDcardError(EVENTPOSTOSDCARDFILE_WRITE);
			return SDCARD_ERROR;
		}

		f_close(file);

	}
	return(0);
}
*/
// PF Gen 2 - 08-Mar-12 Old event system backend removal - EOM

//read the event from the file at the position setup for the event id
//the function should pass in the event id so the offset to the event in the log can be calculated
int SDReadEvent(unsigned int eventid, unsigned int *msgptr)
{
int len;
unsigned int i;
unsigned int k;
unsigned int value;
unsigned long offset;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1)
	{
		//do not allow the offset to be greater than the number
		if(eventid >= eventlogvars.eventlogid && eventlogvars.eventlogwrapflag == FALSE) offset = 0;	//set at start of file
		else offset = (unsigned long)eventid * EVENT_LENGTH_INBYTES;
		sprintf(stringbuffer,"SDReadEventPos:%lu\r\n",offset);
		DebugStringOut(stringbuffer);

		if(SDCardSetupDirectory(sdcarddir.configdir,19)!= 0) return(SDCARD_ERROR);	//error in setting to directory config
		fileregs.file = f_open(eventfile,"r");

		//move to event in file
		if(f_seek(fileregs.file,offset,SEEK_SET) != F_NO_ERROR)
		{
			f_close(fileregs.file);	//try and close it on a seek error
			SDcardError(SDREADEVENT_SEEK);
			return SDCARD_ERROR;
		}

		len = EVENT_LENGTH_INBYTES;	//length of event in bytes

		//if the file could not be read/opened - the settings will not be altered			
		if(fileregs.file != 0)
		{
		 	f_read(fileregs.readbuffer,1,len,fileregs.file);	//read the eventmsg into buffer

			k = 0;
			for(i=0;i<EVENT_LENGTH_INBYTES/2;i++)
			{
				value = fileregs.readbuffer[k] << 8;
				k++;
				value += fileregs.readbuffer[k] & 0xFF;
				k++;
				msgptr[i] = value;
			}
			//close file and return zero on success
			f_close(fileregs.file);
		}
	}
	return(0);
}


//Calculate the event log id based on the file length
//The file length is divisible by 128bytes
int SDCalcEventLogID(void)
{
F_FILE *file;		//FILE pointer use for each function below pass in the pointer
long size;

	if(settings.sdcarderr == FALSE && sdsettings.present == TRUE)
	{
		if(SDCardSetupDirectory(sdcarddir.configdir,20) != 0) {SDcardError(SDCALCEVENTLOGID_DIR); return(SDCARD_ERROR);	}//error in setting to directory 

		file = f_open(eventfile,"r");
		if(!file)		//error on opening - set the size to zero
		{
			//SDCALCEVENTLOGID_OPEN - do not report this as an error - can be zero length on first initialisation
			size = 0;
		}
		else size = f_filelength(eventfile);
		f_close(file);		//try to close (even if error)

		if(size > EVENT_LENGTH_INBYTES && size < MAX_EVENT_LOG_SIZE_INBYTES) eventlogvars.eventlogid = (unsigned int)(size/EVENT_LENGTH_INBYTES);
		else
		{

			// PF 04-Nov-09 Added code to read in eventlogvars.eventlogid
			file = f_open(eventposfile,"r");
			// PF 08-Mar-12 Added in || size == 0 to sort out new file
			if(!file || size == 0)		//error on opening - set the eventlogvars correctly
			{
				eventlogvars.eventlogid = 0;
				eventlogvars.msgqueue = 0;	//clear the msg queue if no events
				eventlogvars.eventlogwrapflag = FALSE;	//clear the wrap flag
			} else {
		 		f_read(f_databuf,1,2,file);	//read the value into buffer
				eventlogvars.eventlogid = f_databuf[0] << 8;
				eventlogvars.eventlogid += f_databuf[1] & 0xFF;
				f_close(file);

				if (size >= MAX_EVENT_LOG_SIZE_INBYTES) { // Set the wrap flag if the file is 65536 events long
					eventlogvars.eventlogwrapflag = TRUE;
				}
			}
			f_close(file);		//try to close (even if error)
			sprintf(stringbuffer,"EventID file set\r\n"); DebugStringOut(stringbuffer); // DEBUG
			// PF 04-Nov-09 EOM
			
		}

		sprintf(stringbuffer,"EventID set:%u \r\n",eventlogvars.eventlogid); DebugStringOut(stringbuffer); // DEBUG

		WriteEventLogVarsStructtoNVMEM();	//update the fram based on this number

		sprintf(stringbuffer,"Event.bin Size:%ld\r\n",size); DebugStringOut(stringbuffer); // DEBUG
	}
	return(0);
}

//Create a new event message file - if a file already exists in the current directory delete it before
//creating a new one
int CreateNewEventFile(void)
{
	if(CreateFile((char*)eventfile)) return SDCARD_ERROR;		//create a new file with the new file name stored in the structure
	return(0);	//all ok
}

//Delete the eventlog from the sd card.  Once deleted this cannot be recovered!
int SDEventLogDelete(void)
{
	if(GetVoltageStatus() == OK)	//only allow if the voltage is ok
	{
		if(SDCardSetupDirectory(sdcarddir.configdir,21)!= 0) return(SDCARD_ERROR);	//error in setting to directory SHORTL
		f_delete(eventfile);	//delete file 
		DeselectSPI();	//send cs high after deletion

		CreateNewEventFile();		//(create a new file so this always exists, stops seeking into a file that doesnt exist!)

	}
	return(0);
}


//--------------------------------------------------------------------------------------------------------------

// PF Gen 2 - 08-Mar-12 Old event system backend removal - 
/*
//update the ack part of the event in the log
int SDAckUpdate(unsigned int eventid, unsigned int *msgptr)
{
	if(GetVoltageStatus() == OK)	//only allow if the voltage is ok
	{
		if(SDCardSetupDirectory(sdcarddir.configdir)!= 0)
		{
			SDcardError(SDACKUPDATE_DIR);
			return(SDCARD_ERROR);
		}

		//save the event ack string to the sd card event file
		return(SDEventACKtoFile(eventid,msgptr));
	}
	return(0);
}

//This will be written dependent on the file position relating to the particular event
//Pass in event ID and ptr to the msg stream (as ints)
int SDEventACKtoFile(unsigned int eventid, unsigned int *msgptr)
{
F_FILE *file;						//FILE pointer use for each function below pass in the pointer

unsigned int i;
unsigned int j;
unsigned int len;
unsigned long offset;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1)
	{
		//open the log file for writing
		file = f_open(eventfile,"a");

	   	if(!file)
	   	{
	   		f_close(file);	//try to close even though there was a problem opening it
	   		SDcardError(SDEVENTACKTOFILE_OPEN);
	   		return SDCARD_ERROR;
	   	}
		j = 0;
		//split data in words into chars, at end of stream should be \r\n
		for(i=0;i<EVENT_ACK_LEN_INBYTES/2;i++)
		{
			f_databuf[j] = msgptr[i] >> 8;
			j++;
			f_databuf[j] = msgptr[i] & 0xFF;
			j++;
		}
		len = EVENT_ACK_LEN_INBYTES;
		//eventid should be a reference from zero
		offset = ((unsigned long)eventid * EVENT_LENGTH_INBYTES) + EVENT_ACK_OFFSET;

		if(f_seek(file,offset,SEEK_SET) != F_NO_ERROR)
		{
			f_close(file);	//try and close it on a seek error
			SDcardError(SDEVENTACKTOFILE_SEEK);
			return SDCARD_ERROR;
		}
		//do not call a write function, as passing the file ptr around doesnt work!
		if(f_write(f_databuf,1,len,file)!= len)	//len in bytes
		{
			f_close(file);	//try and close it anyway
			SDcardError(SDEVENTACKTOFILE_WRITE);
			return SDCARD_ERROR;
		}

		f_close(file);
	}
	return(0);
}
*/
// PF Gen 2 - 08-Mar-12 Old event system backend removal - EOM

//--------------------------------------------------------------------------------------------------------------

//Store the sensor status to the sd card.
//The directory used will be the configdir.  This is always the directory for the configuration data
//This function will store the status for all 28 channels in one go
int SensorStatustoSDCardFile(void)
{
F_FILE *file;		//FILE pointer use for each function below pass in the pointer
int len;
unsigned int i;
unsigned int k;
unsigned int value;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1 && settings.cardreadflag != 1)
	{
		DebugStringOut("SensorStatustoSDCard\r\n"); // DEBUG
		if(SDCardSetupDirectory(sdcarddir.configdir,22)!= 0) return(SDCARD_ERROR);	//error in setting to directory config
		CreateNewStatusFile();		//this will create a file if a new file should be created
		//NOTE DO NOT USE A CALL WITH THE file void * this for some reason does not work!

		file = f_open(statusfile,"w");
		if(!file)
		{
			f_close(file);	//try to close even though there was a problem opening it
			SDcardError(SENSORSTATUSTOSDCARDFILE_OPEN);
			return SDCARD_ERROR;
		}

		len = sizeof(status1struct);	//structure size
		len *= MAX_NUM_CHANNELS;		//multiply by number of channels
		len *= 2;						// x2 as need in bytes not words
		k = 0;
		for(i=0;i<MAX_NUM_CHANNELS;i++)
		{
			value = *(unsigned int*)(Status1Flags(i));
			f_databuf[k] = value >> 8;
			k++;
			f_databuf[k] = value & 0xFF;
			k++;
		}
			//do not call a write function, as passing the file ptr around doesnt work!
			if(f_write(f_databuf,1,len,file)!= len)	//len in bytes
			{
				f_close(file);	//try and close it anyway
				SDcardError(SENSORSTATUSTOSDCARDFILE_WRITE);
				return SDCARD_ERROR;
			}

		//close file and return zero on success
		f_close(file);
	}
	//currently not ignoring the next pulse train due to upddating the sd card
	//updating s time consuming and could take longer than it takes to see and process a pulse if so
	//it is possible to come back round to processing the pulses and causes a false level to be recorded
	return(0);
}

//Read the sensor status from the sd card
//This will read in the 28 channels and store the status
//This should be called after reading in from non vol chip memory
//If the file does not exist then the data will not be overwritten
int ReadSensorStatusfromSDCardFile(void)
{
int len;
unsigned int i;
unsigned int k;
unsigned int value;
unsigned int *ptr;
int magic;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1 && settings.cardreadflag != 1)
	{

		magic = Fram1MagicNumberRead();

		if(SDCardSetupDirectory(sdcarddir.configdir,23)!= 0) return(SDCARD_ERROR);	//error in setting to directory config
		fileregs.file = f_open(statusfile,"r");

		len = sizeof(status1struct);	//structure size
		len *= MAX_NUM_CHANNELS;		//multiply by number of channels
		len *= 2;						// x2 as need in bytes not words

		//if the file could not be read/opened - the settings will not be altered			
		if(fileregs.file != 0)
		{
		 	f_read(fileregs.readbuffer,1,len,fileregs.file);	//read the status into buffer

			k = 0;
			for(i=0;i<MAX_NUM_CHANNELS;i++)
			{
				ptr = (unsigned int*)(Status1Flags(i));
				value = fileregs.readbuffer[k] << 8;
				k++;
				value += fileregs.readbuffer[k] & 0xFF;
				k++;
				*ptr = value;
			}
			//close file and return zero on success
			f_close(fileregs.file);
			sdsettings.readstatus.sensorstatus = TRUE;	//set to true as we have read data from the sd card
		}
		else
		{
			f_close(fileregs.file);	//close anyway
			if(magic == FALSE)	//fram ok load back to sd card - settings should already be in ram so simply store to sd
			{
				SensorStatustoSDCardFile();
				sdsettings.readstatus.sensorstatus = FALSE;	//did not read from sd
			}
			else		//if we cannot read the sd card file and fram is not setup setup default status in ram
			{
				SetupSensorStatusDefaults();
				sdsettings.readstatus.sensorstatus = FALSE;	//did not read from sd
			}
		}
	}
	//currently not ignoring the next pulse train due to upddating the sd card
	//updating s time consuming and could take longer than it takes to see and process a pulse if so
	//it is possible to come back round to processing the pulses and causes a false level to be recorded
	return(0);
}

//Store the general settings to sd
//The directory used will be the configdir.  This is always the directory for the configuration data
//This function will store data from safe2 to sd
int GeneralSettingstoSDCardFile(void)
{
F_FILE *file;		//FILE pointer use for each function below pass in the pointer
int len;
unsigned int i;
unsigned int k;
unsigned int *ptr;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1 && settings.cardreadflag != 1)
	{
		DebugStringOut("GeneralSettingstoSDCard\r\n"); // DEBUG
		if(SDCardSetupDirectory(sdcarddir.configdir,24)!= 0) return(SDCARD_ERROR);	//error in setting to directory config
		CreateNewSettingsFile();		//this will create a file if a new file should be created
		//NOTE DO NOT USE A CALL WITH THE file void * this for some reason does not work!

		file = f_open(settingsfile,"w");
		if(!file)
		{
			f_close(file);	//try to close even though there was a problem opening it
			SDcardError(GENERALSETTINGSTOSDCARDFILE_OPEN);
			return SDCARD_ERROR;
		}

		//-----------------------------------
		//allsensors to file
		len = sizeof(allsensorstruct);	//structure size
		len *= 2;						// x2 as need in bytes not words
		k = 0;
		ptr = (unsigned int*)&allsensors;
		for(i=0;i<len/2;i++)
		{
			f_databuf[k] = ptr[i] >> 8;
			k++;
			f_databuf[k] = ptr[i] & 0xFF;
			k++;
		}
		if(f_write(f_databuf,1,len,file)!= len)	//len in bytes
		{
			f_close(file);	//try and close it anyway
			SDcardError(GENERALSETTINGSTOSDCARDFILE_WRITE);
			return SDCARD_ERROR;
		}

		//-----------------------------------
		//speedcompcoeffs to file
		len = sizeof(speedcompstruct);	//structure size
		len *= 2;						// x2 as need in bytes not words
		k = 0;
		ptr = (unsigned int*)&speedcompcoeffs;
		for(i=0;i<len/2;i++)
		{
			f_databuf[k] = ptr[i] >> 8;
			k++;
			f_databuf[k] = ptr[i] & 0xFF;
			k++;
		}
		if(f_write(f_databuf,1,len,file)!= len)	//len in bytes
		{
			f_close(file);	//try and close it anyway
			SDcardError(GENERALSETTINGSTOSDCARDFILE_WRITE2);
			return SDCARD_ERROR;
		}

		//-----------------------------------
		//wiosettings to file
		len = sizeof(wiosettingsstruct);	//structure size
		len *= 2;						// x2 as need in bytes not words
		k = 0;
		ptr = (unsigned int*)&wiosettings;
		for(i=0;i<len/2;i++)
		{
			f_databuf[k] = ptr[i] >> 8;
			k++;
			f_databuf[k] = ptr[i] & 0xFF;
			k++;
		}
		//do not call a write function, as passing the file ptr around doesnt work!
		if(f_write(f_databuf,1,len,file)!= len)	//len in bytes
		{
			f_close(file);	//try and close it anyway
			SDcardError(GENERALSETTINGSTOSDCARDFILE_WRITE3);
			return SDCARD_ERROR;
		}
		//-----------------------------------
		//configstruct to file
		len = sizeof(configstruct);	//structure size
		len *= 2;						// x2 as need in bytes not words
		k = 0;
		ptr = (unsigned int*)&config;
		for(i=0;i<len/2;i++)
		{
			f_databuf[k] = ptr[i] >> 8;
			k++;
			f_databuf[k] = ptr[i] & 0xFF;
			k++;
		}
		//do not call a write function, as passing the file ptr around doesnt work!
		if(f_write(f_databuf,1,len,file)!= len)	//len in bytes
		{
			f_close(file);	//try and close it anyway
			SDcardError(GENERALSETTINGSTOSDCARDFILE_WRITE4);
			return SDCARD_ERROR;
		}
		//AJB 19-Aug-10
		//-----------------------------------
		//damagemonstruct to file
		len = sizeof(damagemonstruct);	//structure size
		len *= 2;						// x2 as need in bytes not words
		k = 0;
		ptr = (unsigned int*)&damagemon;
		for(i=0;i<len/2;i++)
		{
			f_databuf[k] = ptr[i] >> 8;
			k++;
			f_databuf[k] = ptr[i] & 0xFF;
			k++;
		}
		//do not call a write function, as passing the file ptr around doesnt work!
		if(f_write(f_databuf,1,len,file)!= len)	//len in bytes
		{
			f_close(file);	//try and close it anyway
			SDcardError(GENERALSETTINGSTOSDCARDFILE_WRITE5);
			return SDCARD_ERROR;
		}

		//-----------------------------------
		//slemsettingsstruct to file
		len = sizeof(slemsettingsstruct);	//structure size
		len *= 2;						// x2 as need in bytes not words
		k = 0;
		ptr = (unsigned int*)&slemsettings;
		for(i=0;i<len/2;i++)
		{
			f_databuf[k] = ptr[i] >> 8;
			k++;
			f_databuf[k] = ptr[i] & 0xFF;
			k++;
		}
		//do not call a write function, as passing the file ptr around doesnt work!
		if(f_write(f_databuf,1,len,file)!= len)	//len in bytes
		{
			f_close(file);	//try and close it anyway
			SDcardError(GENERALSETTINGSTOSDCARDFILE_WRITE6);
			return SDCARD_ERROR;
		}
		//AJB 19-Aug-10 EOM

		// PF Gen 2 - 13-Dec-11 Added in dcmodechecks structure
		//-----------------------------------
		len = sizeof(dcmodechecksstruct);	//structure size
		len *= 2;						// x2 as need in bytes not words
		k = 0;
		ptr = (unsigned int*)&dcmodechecks;
		for(i=0;i<len/2;i++)
		{
			f_databuf[k] = ptr[i] >> 8;
			k++;
			f_databuf[k] = ptr[i] & 0xFF;
			k++;
		}
		//do not call a write function, as passing the file ptr around doesnt work!
		if(f_write(f_databuf,1,len,file)!= len)	//len in bytes
		{
			f_close(file);	//try and close it anyway
			SDcardError(GENERALSETTINGSTOSDCARDFILE_WRITE7);
			return SDCARD_ERROR;
		}
		// PF Gen 2 - 13-Dec-11 EOM

		//cppsettingsstruct to file
		len = sizeof(cppsettingsstruct);	//structure size
		len *= 2;						// x2 as need in bytes not words
		k = 0;
		ptr = (unsigned int*)&cppsettings;
		for(i=0;i<len/2;i++)
		{
			f_databuf[k] = ptr[i] >> 8;
			k++;
			f_databuf[k] = ptr[i] & 0xFF;
			k++;
		}
		//do not call a write function, as passing the file ptr around doesnt work!
		if(f_write(f_databuf,1,len,file)!= len)	//len in bytes
		{
			f_close(file);	//try and close it anyway
			SDcardError(GENERALSETTINGSTOSDCARDFILE_WRITE6);
			return SDCARD_ERROR;
		}

		//sensorMovingstruct to file
		len = sizeof(sensorMovingstruct);	//structure size
		len *= 2;						// x2 as need in bytes not words
		k = 0;
		ptr = (unsigned int*)&sensorMoving;
		for(i=0;i<len/2;i++)
		{
			f_databuf[k] = ptr[i] >> 8;
			k++;
			f_databuf[k] = ptr[i] & 0xFF;
			k++;
		}
		//do not call a write function, as passing the file ptr around doesnt work!
		if(f_write(f_databuf,1,len,file)!= len)	//len in bytes
		{
			f_close(file);	//try and close it anyway
			SDcardError(GENERALSETTINGSTOSDCARDFILE_WRITE6);
			return SDCARD_ERROR;
		}

		//close file and return zero on success
		f_close(file);
	}
	//currently not ignoring the next pulse train due to upddating the sd card
	//updating s time consuming and could take longer than it takes to see and process a pulse if so
	//it is possible to come back round to processing the pulses and causes a false level to be recorded
	return(0);
}

//Read the general settings (safe2 and allsensors) from the sd card
//This should be called after reading in from non vol chip memory
//If the file does not exist then the data will not be overwritten
int ReadGeneralSettingsfromSDCardFile(void)
{
int len;
unsigned int i;
unsigned int k;
unsigned int value;
unsigned int *ptr;
int magic;
int numitems;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1 && settings.cardreadflag != 1)
	{
		magic = Fram1MagicNumberRead();
		if(SDCardSetupDirectory(sdcarddir.configdir,25)!= 0) return(SDCARD_ERROR);	//error in setting to directory config
		fileregs.file = f_open(settingsfile,"r");


		//if the file could not be read/opened - the settings will not be altered			
		if(fileregs.file != 0)
		{

			//-----------------------------------
			//allsensors from file
			len = sizeof(allsensorstruct);	//structure size
			len *= 2;						// x2 as need in bytes not words
			f_read(fileregs.readbuffer,1,len,fileregs.file);	//read the status into buffer
			k = 0;
			ptr = (unsigned int*)&allsensors;

			for(i=0;i<len/2;i++)
			{
				value = fileregs.readbuffer[k] << 8;
				k++;
				value += fileregs.readbuffer[k] & 0xFF;
				k++;
				ptr[i] = value;
			}

			//-----------------------------------
			//speedcompcoeffs
			len = sizeof(speedcompstruct);	//structure size
			len *= 2;						// x2 as need in bytes not words
			f_read(fileregs.readbuffer,1,len,fileregs.file);	//read the status into buffer
			k = 0;
			ptr = (unsigned int*)&speedcompcoeffs;

			for(i=0;i<len/2;i++)
			{
				value = fileregs.readbuffer[k] << 8;
				k++;
				value += fileregs.readbuffer[k] & 0xFF;
				k++;
				ptr[i] = value;
			}

			//-----------------------------------
			//wiosettings
			len = sizeof(wiosettingsstruct);	//structure size
			len *= 2;						// x2 as need in bytes not words
			f_read(fileregs.readbuffer,1,len,fileregs.file);	//read the status into buffer
			k = 0;
			ptr = (unsigned int*)&wiosettings;

			for(i=0;i<len/2;i++)
			{
				value = fileregs.readbuffer[k] << 8;
				k++;
				value += fileregs.readbuffer[k] & 0xFF;
				k++;
				ptr[i] = value;
			}

			//-----------------------------------
			//configstruct
			len = sizeof(configstruct);	//structure size
			len *= 2;						// x2 as need in bytes not words
			f_read(fileregs.readbuffer,1,len,fileregs.file);	//read the status into buffer
			k = 0;
			ptr = (unsigned int*)&config;

			for(i=0;i<len/2;i++)
			{
				value = fileregs.readbuffer[k] << 8;
				k++;
				value += fileregs.readbuffer[k] & 0xFF;
				k++;
				ptr[i] = value;
			}
			//AJB 19-Aug-10
			//-----------------------------------
			//damagemonstruct
			len = sizeof(damagemonstruct);	//structure size
			len *= 2;						// x2 as need in bytes not words
			numitems = f_read(fileregs.readbuffer,1,len,fileregs.file);	//read the status into buffer
			if(numitems != 0)
			{
				k = 0;
				ptr = (unsigned int*)&damagemon;

				for(i=0;i<len/2;i++)
				{
					value = fileregs.readbuffer[k] << 8;
					k++;
					value += fileregs.readbuffer[k] & 0xFF;
					k++;
					ptr[i] = value;
				}
			}
			else LoadDamagemonDefaults();
			//-----------------------------------
			//slemsettingsstruct
			len = sizeof(slemsettingsstruct);	//structure size
			len *= 2;						// x2 as need in bytes not words
			numitems = f_read(fileregs.readbuffer,1,len,fileregs.file);	//read the status into buffer
			if(numitems != 0)
			{
				k = 0;
				ptr = (unsigned int*)&slemsettings;

				for(i=0;i<len/2;i++)
				{
					value = fileregs.readbuffer[k] << 8;
					k++;
					value += fileregs.readbuffer[k] & 0xFF;
					k++;
					ptr[i] = value;
				}
			}
			else LoadSLEMDefaults();
			//AJB 19-Aug-10 EOM


			// PF Gen 2 - 13-Dec-11 Added in dcmodechecks
			//-----------------------------------
			len = sizeof(dcmodechecksstruct);	//structure size
			len *= 2;						// x2 as need in bytes not words
			numitems = f_read(fileregs.readbuffer,1,len,fileregs.file);	//read the status into buffer
			if(numitems != 0)
			{
				k = 0;
				ptr = (unsigned int*)&dcmodechecks;

				for(i=0;i<len/2;i++)
				{
					value = fileregs.readbuffer[k] << 8;
					k++;
					value += fileregs.readbuffer[k] & 0xFF;
					k++;
					ptr[i] = value;
				}
			}
			else LoadDCModeChecksDefaults();
			// PF Gen 2 - 13-Dec-11 EOM

			//cppsettingsstruct
			len = sizeof(cppsettingsstruct);	//structure size
			len *= 2;						// x2 as need in bytes not words
			numitems = f_read(fileregs.readbuffer,1,len,fileregs.file);	//read the status into buffer
			if(numitems != 0)
			{
				k = 0;
				ptr = (unsigned int*)&cppsettings;

				for(i=0;i<len/2;i++)
				{
					value = fileregs.readbuffer[k] << 8;
					k++;
					value += fileregs.readbuffer[k] & 0xFF;
					k++;
					ptr[i] = value;
				}
			}
			else LoadCPPDefaults();

			//sensorMovingstruct
			len = sizeof(sensorMovingstruct);	//structure size
			len *= 2;						// x2 as need in bytes not words
			numitems = f_read(fileregs.readbuffer,1,len,fileregs.file);	//read the status into buffer
			if(numitems != 0)
			{
				k = 0;
				ptr = (unsigned int*)&sensorMoving;

				for(i=0;i<len/2;i++)
				{
					value = fileregs.readbuffer[k] << 8;
					k++;
					value += fileregs.readbuffer[k] & 0xFF;
					k++;
					ptr[i] = value;
				}
			}
			else LoadSensorDefaults();

			ConfigCheckVal();	//check the values read from the sd card for config

			//close file and return zero on success
			f_close(fileregs.file);
			sdsettings.readstatus.settings = TRUE;	//set to true as we have read data from the sd card
		}
		else
		{
			f_close(fileregs.file);	//close anyway
			if(magic == FALSE)	//fram ok load back to sd card - settings should already be in ram so simply store to sd
			{
				GeneralSettingstoSDCardFile();
				sdsettings.readstatus.settings = FALSE;	//false did not read the sd card
			}
			else		//on checking the general settings if we cannot read the sd card and the magic number is not set in the FRAM
			{			//setup some defaults in order for the software to function on a basic level
				SetupDefaultSettings();
				sdsettings.readstatus.settings = FALSE;	//false did not read the sd card
			}
		}
	}
	//currently not ignoring the next pulse train due to upddating the sd card
	//updating s time consuming and could take longer than it takes to see and process a pulse if so
	//it is possible to come back round to processing the pulses and causes a false level to be recorded
	return(0);
}


//Store the offsets to sd
//The directory used will be the configdir.  This is always the directory for the configuration data
//This function will store data from offsetsa and offsetsb to sd
int OffsetstoSDCardFile(void)
{
F_FILE *file;		//FILE pointer use for each function below pass in the pointer
int len;
unsigned int i;
unsigned int j;
unsigned int k;
unsigned int *ptr;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1 && settings.cardreadflag != 1)
	{
		DebugStringOut("OffsetstoSDCard\r\n"); // DEBUG
		if(SDCardSetupDirectory(sdcarddir.configdir,26)!= 0) return(SDCARD_ERROR);	//error in setting to directory config
		CreateNewOffsetsFile();		//this will create a file if a new file should be created
		//NOTE DO NOT USE A CALL WITH THE file void * this for some reason does not work!

		file = f_open(offsetsfile,"w");
		if(!file)
		{
			f_close(file);	//try to close even though there was a problem opening it
			SDcardError(OFFSETSTOSDCARDFILE_OPEN);
			return SDCARD_ERROR;
		}

		len = sizeof(offsetstruct);		//structure size
		len *= 2;						// x2 as need in bytes not words


		//-------------------------
		//offsetsA on second iteration get offsetb
		ptr = (unsigned int*)&offsetA;
		for(j=0;j<2;j++)
		{
			k = 0;
			for(i=0;i<len/2;i++)
			{
				f_databuf[k] = ptr[i] >> 8;
				k++;
				f_databuf[k] = ptr[i] & 0xFF;
				k++;
				//sprintf(stringbuffer,"Sensor %d offset %d\r\n",i, f_databuf[k]);
				//CLITransmitBuffer(stringbuffer);
			}
			//do not call a write function, as passing the file ptr around doesnt work!
			if(f_write(f_databuf,1,len,file)!= len)	//len in bytes
			{
				f_close(file);	//try and close it anyway
				SDcardError(OFFSETSTOSDCARDFILE_WRITE);
				return SDCARD_ERROR;
			}
			//offsetsB
			ptr = (unsigned int*)&offsetB;
		}

		//close file and return zero on success
		f_close(file);
	}
	//currently not ignoring the next pulse train due to upddating the sd card
	//updating s time consuming and could take longer than it takes to see and process a pulse if so
	//it is possible to come back round to processing the pulses and causes a false level to be recorded
	return(0);
}


//Read the offsetsfrom the sd card
//This should be called after reading in from non vol chip memory
//If the file does not exist then the data will not be overwritten
int ReadOffsetsfromSDCardFile(void)
{
int len;
unsigned int i;
unsigned int j;
unsigned int k;
unsigned int value;
unsigned int *ptr;
int magic;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1 && settings.cardreadflag != 1)
	{
		magic = Fram1MagicNumberRead();
		if(SDCardSetupDirectory(sdcarddir.configdir,27)!= 0) return(SDCARD_ERROR);	//error in setting to directory config
		fileregs.file = f_open(offsetsfile,"r");

		//if the file could not be read/opened - the settings will not be altered			
		if(fileregs.file != 0)
		{

			len = sizeof(offsetstruct);		//structure size
			len *= 2;						// x2 as need in bytes not words
			ptr = (unsigned int*)&offsetA;
			for(j=0;j<2;j++)
			{
			 	f_read(fileregs.readbuffer,1,len,fileregs.file);	//read the status into buffer
				k = 0;
				for(i=0;i<len/2;i++)
				{
					value = fileregs.readbuffer[k] << 8;
					k++;
					value += fileregs.readbuffer[k] & 0xFF;
					k++;
					ptr[i] = value;
					//sprintf(stringbuffer,"Sensor %d offset %d\r\n",i, value);
					//CLITransmitBuffer(stringbuffer);
				}
				ptr = (unsigned int*)&offsetB;	//point to offset b after getting offset a
			}

			//close file and return zero on success
			f_close(fileregs.file);
			sdsettings.readstatus.offsets = TRUE;	//set to true as we have read data from the sd card
		}
		else
		{
			f_close(fileregs.file);	//close anyway
			if(magic == FALSE)	//fram ok load back to sd card - settings should already be in ram so simply store to sd		
			{
				OffsetstoSDCardFile();
				sdsettings.readstatus.offsets = FALSE;	//
			}
			else
			{
				SetupOffsetDefaults();
				sdsettings.readstatus.offsets = FALSE;	//
			}
		}
	}
	//currently not ignoring the next pulse train due to upddating the sd card
	//updating s time consuming and could take longer than it takes to see and process a pulse if so
	//it is possible to come back round to processing the pulses and causes a false level to be recorded
	return(0);
}



//Set the man comp file generation sequence to zero
void ClearManCompSequence(void)
{
	sdsettings.sequence = 0;
	SaveSDSettings();
}


//Store the man compensation table to a file on the sd card
//Enter the function with a pointer to the directory to store the file
//The filename will be constructed from the current date and stored into the directory
//e.g. directory could be FIRSTCAL, ROUGHCAL, FINECAL
//Pass in the sequence number for the file to store
int MANCompTabletoSDCardFile(const char *dirptr,unsigned int sequence)
{
F_FILE *file;		//FILE pointer use for each function below pass in the pointer
int len;
unsigned int *ptr;	//ptr used for man_comptable
unsigned int i;
unsigned int j;
unsigned int k;
unsigned int innerloopsize;

	if(GetVoltageStatus() == OK)	//only allow if the voltage is ok
	{
		if(settings.sdcarderr == FALSE && sdsettings.present == 1 && settings.cardreadflag != 1)
		{
			DebugStringOut("MANCompTabletoSDCard\r\n"); // DEBUG
			if(SDCardSetupDirectory(dirptr,28)!= 0)
			{
				SDcardError(MANCOMPTABLETOSDCARDFILE_DIR);
				return(SDCARD_ERROR);	//error in setting to directory FIRSTCAL
			}
			if(CreateNewMANFile(sequence) != 0) //this will create a file if a new file should be created
			{
				return SDCARD_ERROR;
			}
			//open the mancompfile for writing (within the firstcal directory
			//NOTE DO NOT USE A CALL WITH THE file void * this for some reason does not work!

			file = f_open(mansd.sdcard.currentfilename,"w");
			if(!file)
			{
				f_close(file);	//try to close even though there was a problem opening it
				SDcardError(MANCOMPTABLETOSDCARDFILE_OPEN);
				return SDCARD_ERROR;
			}


			len = MAN_COMPTABLESIZE_INBYTES; 	//size of the man comp table in bytes
			j = 0;
			ptr = (unsigned int *)man_comptable;	//point to the start of the man comptable
			len = 512;	//use 512 bytes (works better with the FAT system)
			innerloopsize = 256;	//size of loop in words
			for(i=0;i<17;i++)
			{
				if(i == 16)	//for last iteration use 104 words (to build up size to 4200 words in total
				{
					len = 208;				//only 208 on last iteration
					innerloopsize = 104;	//size of loop in words
				}
				k = 0;
				for(j=0;j<innerloopsize;j++)
				{
					f_databuf[k] = *ptr >> 8;
					k++;
					f_databuf[k] = *ptr & 0xFF;
					k++;
					ptr++;
				}
				//do not call a write function, as passing the file ptr around doesnt work!
				if(f_write(f_databuf,1,len,file)!= len)	//len in bytes
				{
					f_close(file);	//try and close it anyway
					SDcardError(MANCOMPTABLETOSDCARDFILE_WRITE);
					return SDCARD_ERROR;
				}
			}

			//close file and return zero on success
			f_close(file);
		}
	}
	//currently not ignoring the next pulse train due to upddating the sd card
	//updating s time consuming and could take longer than it takes to see and process a pulse if so
	//it is possible to come back round to processing the pulses and causes a false level to be recorded
	return(0);
}

//Read the man compensation from the sd card
//This should be called after reading in from non vol chip memory
//If the file does not exist then the data will not be overwritten
int ReadMANCompTablefromSDCardFile(void)
{
int len;
unsigned int i;
unsigned int j;
unsigned int k;
unsigned int *ptr;
int magic;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1 && settings.cardreadflag != 1)
	{
		magic = Fram1MagicNumberRead();
		if(SDCardSetupDirectory(sdcarddir.configdir,29)!= 0) return(SDCARD_ERROR);	//error in setting to directory config
		fileregs.file = f_open(mancompfile,"r");

		//if the file could not be read/opened - the settings will not be altered			
		if(fileregs.file != 0)
		{
			len = MAN_COMPTABLESIZE_INBYTES/50;		//divide into 50 blocks each should be 168 bytes long
			ptr = (unsigned int *)man_comptable;	//point to the start of the man comptable
			for(i=0;i<50;i++)
			{
			 	f_read(fileregs.readbuffer,1,len,fileregs.file);	//read the status into buffer
				k = 0;
				for(j=0;j<len/2;j++)
				{
					*ptr = fileregs.readbuffer[k] << 8;
					k++;
					*ptr += fileregs.readbuffer[k] & 0xFF;
					k++;
					ptr++;
				}
			}

			//close file and return zero on success
			f_close(fileregs.file);
			sdsettings.readstatus.mantable = TRUE;	//set to true as we have read data from the sd card
		}
		else
		{
			f_close(fileregs.file);	//close anyway
			if(magic == FALSE)	//fram ok load back to sd card - settings should already be in ram so simply store to sd
			{
				MANCompTabletoSDCardFile((char *)&sdcarddir.configdir,0);	//sequence number always as zero
				sdsettings.readstatus.mantable = FALSE;
			}
			else	//if the from is not set clear the table and save back to nvmem and fram
			{
				ClearMANTable(0);	// PF Gen 2 - 29-May-12 Added in parameter
				sdsettings.readstatus.mantable = FALSE;
			}
		}
	}
	//currently not ignoring the next pulse train due to upddating the sd card
	//updating s time consuming and could take longer than it takes to see and process a pulse if so
	//it is possible to come back round to processing the pulses and causes a false level to be recorded
	return(0);
}


//NOTE on creating short term file
//THie file name will be created using the current date
//If there is no alarm state, the oldest file will be kept and the file previous to that will be deleted
//The file to be deleted will be found in filenamen2
//If an alarm has been raised the prvious 48 hours will be kept and the next 24 hours will also be kept
//This means no matter when the alarm occured during the revious 24 hours there will always be 24 hours either side of the event
//The alarm related files will be renamed 'A' eg 080318A
int CreateNewShortTermFile(void)
{
long currenttime;
char append[6];
char newname[12];
unsigned int len;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1 && settings.cardreadflag != 1)
	{
		//data to append to the log filename when it is to be saved after alarm condition
		append[0] = 'A';
		append[1] = '.';
		append[2] = 0;
		strcat(append,shortterm.sdcard.fileext);

		currenttime = BuildTimeStamp();	//get the time now in seconds
		//current date from the RTC

		if(shortterm.sdcard.currentdate != clocktime.date)		//if day is different create a new file
		{

			SDShortTermOldFileDeletion();
			// PF 4-Nov-09 added SDOldLogFileDeletion
			SDOldLogFileDeletion(sdcarddir.lterm);

			if(shortterm.sdshorttermfilenames.filenamen1[0] != 0)
			{
				//string copy the previous filename to filenamen2
				strcpy(shortterm.sdshorttermfilenames.filenamen2,shortterm.sdshorttermfilenames.filenamen1);
			}
			if(shortterm.sdcard.currentfilename[0] != 0)
			{
				//copy the current filename to n1
				strcpy(shortterm.sdshorttermfilenames.filenamen1,shortterm.sdcard.currentfilename);
			}
			if(shortterm.sdcard.alarmevent.n1 == 0)	//set if we have had an alarm event in the last 24 hours
			{
				//if there has not been an alarm condition, we can delete the file over 48 hours old
				//on an alarm do not delete the file
				if(shortterm.sdcard.alarmevent.n2 == 0)
				{
					if(shortterm.sdcard.alarmevent.n3 == 0)
					{
						if(shortterm.sdshorttermfilenames.filenamen2[0] != 0) SDDailyFileDeletion(shortterm.sdshorttermfilenames.filenamen2);	//delete file over 48 hours old
					}
					else
					{
						strncpy(newname,shortterm.sdshorttermfilenames.filenamen2,6);
						newname[6] = 0;
						strcat(newname,append);
						if(shortterm.sdshorttermfilenames.filenamen2[0] != 0)	SDAlarmFileRename(shortterm.sdshorttermfilenames.filenamen2,newname);
						shortterm.sdcard.alarmevent.n3 = 0;
					}
				} 
				else
				{
					strncpy(newname,shortterm.sdshorttermfilenames.filenamen2,6);
					newname[6] = 0;
					strcat(newname,append);
					if(shortterm.sdshorttermfilenames.filenamen2[0] != 0) SDAlarmFileRename(shortterm.sdshorttermfilenames.filenamen2,newname);
					shortterm.sdcard.alarmevent.n2 = 0;	//set to 0 for alarm event n-1, need to maintain two files
					shortterm.sdcard.alarmevent.n3 = 1;
				}
			}
			else
			{
				strncpy(newname,shortterm.sdshorttermfilenames.filenamen2,6);
				newname[6] = 0;
				strcat(newname,append);
				if(shortterm.sdshorttermfilenames.filenamen2[0] != 0) SDAlarmFileRename(shortterm.sdshorttermfilenames.filenamen2,newname);
				shortterm.sdcard.alarmevent.n1 = 0;	//reset having kept the file
				shortterm.sdcard.alarmevent.n2 = 1;	//set n1 so we do not delete the next file
			}

			shortterm.sdcard.lastlogtimeinsecs = currenttime;
			shortterm.sdcard.currentdate = clocktime.date;		//current date from RTC stored
			BuildFileName(shortterm.sdcard.currentfilename,shortterm.sdcard.fileext);
			if(SDCardSetupDirectory(sdcarddir.sterm,30)!= 0) { SDcardError(CREATENEWSHORTTERMFILE_DIR); return(SDCARD_ERROR);	} //error in setting to directory
			if(CreateFile(shortterm.sdcard.currentfilename)) return SDCARD_ERROR;	//create a new file with the new file name stored in the structure
			//create the header information containing the firmware version when a new file is created
			SDLogHeader(shortterm.sdcard.currentfilename);
			//save shortterm structure to FRAM, reloaded on power up
			len = sizeof(shorttermlogstruct);
			WriteNVMemory(FRAM1,SHORTTERMLOGSTRUCT_OFFSET,&shortterm,len);
		
		}
	}
	return(0);
}

int CreateNewLongTermFile(void)
{
long currenttime;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1 && settings.cardreadflag != 1)
	{
		currenttime = BuildTimeStamp();	//get the time now in seconds
		if(clocktime.day == FIRST_DAY_IN_WEEK)
		{
			if(longterm.sdcard.logfilecreated == FALSE)
			{
				longterm.sdcard.lastlogtimeinsecs = currenttime;
				longterm.sdcard.logfilecreated = TRUE;
				BuildFileName(longterm.sdcard.currentfilename,longterm.sdcard.fileext);

				//long term file creation
				if(SDCardSetupDirectory(sdcarddir.lterm,31)!= 0) { SDcardError(CREATENEWLONGTERMFILE_DIR); return(SDCARD_ERROR);	} //error in setting to directory
				// PF 4-Nov-09 Removed call to SDOldLogFileDeletion(sdcarddir.lterm);
				if(CreateFile(longterm.sdcard.currentfilename)) return SDCARD_ERROR;	//create a new file with the new file name stored in the structure
				//create the header information containing the firmware version when a new file is created
				SDLogHeader(longterm.sdcard.currentfilename);
			}
		}
		else longterm.sdcard.logfilecreated = FALSE;	//set to false if log file day has altered.  new log file created once the day is equal (for following week)
	}
	return(0);
}

//Create a new general settings file - if a file already exists in the current directory delete it before
//creating a new one
int CreateNewSettingsFile(void)
{
	if(CreateFile((char*)settingsfile)) return SDCARD_ERROR;		//create a new file with the new file name stored in the structure
	return(0);	//all ok
}

//Create a new offsets file - if a file already exists in the current directory delete it before
//creating a new one
int CreateNewOffsetsFile(void)
{
	if(CreateFile((char*)offsetsfile)) return SDCARD_ERROR;		//create a new file with the new file name stored in the structure
	return(0);	//all ok
}


//Create a new status file - if a file already exists in the current directory delete it before
//creating a new one
int CreateNewStatusFile(void)
{
	if(CreateFile((char*)statusfile)) return SDCARD_ERROR;		//create a new file with the new file name stored in the structure
	return(0);	//all ok
}

//Create a new MAN file - if a file already exists in the current directory delete it before
//creating a new one
//Pass in the sequence number for the file to save to the sd card
int CreateNewMANFile(unsigned int sequence)
{

	mansd.sdcard.fileext[0] = 'b';
	mansd.sdcard.fileext[1] = 'i';
	mansd.sdcard.fileext[2] = 'n';
	mansd.sdcard.fileext[3] = 0;

	sprintf(mansd.sdcard.currentfilename,"MAN_%u.", sequence);
	strcat(mansd.sdcard.currentfilename,mansd.sdcard.fileext);	//append the extension
	SaveSDSettings();
	f_delete(mansd.sdcard.currentfilename);	//try to delete the current file (it may not exist)
	DeselectSPI();	//send cs high after deletion
	if(CreateFile(mansd.sdcard.currentfilename))
	{
		SDcardError(CREATENEWMANFILE_CREATE);
		return SDCARD_ERROR;		//create a new file with the new file name stored in the structure
	}
	return(0);	//all ok
}

int SDCardSetupDirectory(const char* ptr,int callnum)
{
char dirname[9];

	if(settings.sdcarderr == FALSE && sdsettings.present == 1)
	{
		//check the current working directory is set correctly
		//if not - re_init and set the directory
		f_getcwd(dirname,9);
		//offset by 1 character first character for dir returned is always a / character
		if(strcmp(&dirname[1],ptr) != 0)	//if set then error, not on right directory
		{
			sprintf(stringbuffer,"Chdir %s, %s,%d\r\n",dirname,ptr,callnum); DebugStringOut(stringbuffer); // DEBUG
			f_chdir("..");	//drop back to root
			if(f_chdir(ptr))	//set to this directory
			{
				SDcardError(SDCARDSETUPDIRECTORY_DIRCHANGE);
				return(SDCARD_ERROR);	//this directory should exist on the card!
			}
			DeselectSPI();	//send cs high - not done by 'f_' function
		}

	}
	return(0);
}


//Create a file in the current directory
//The directory must be set first!
//This opens the file but no data is written to the file
//File is closed after it has been created
int CreateFile(char *name)
{
F_FILE *file;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1 && settings.cardreadflag != 1)
	{
		file = f_open(name,"a");
		if(!file)
		{
			f_close(file);	//try to close even though there was a problem opening it
			SDcardError(CREATEFILE_GENERAL);
			return SDCARD_ERROR;
		}
		f_close(file);
	}
	return(0);
}

// Create the AMOT file
int SdcardAmotFile(void)
{
F_FILE *file;
int len;
char readbuf[5];

	if(SDCardSetupDirectory(sdcarddir.configdir,32)!= 0) return(SDCARD_ERROR);	//error in setting to directory CONFIG

	memset(readbuf,0,5);
	file = f_open("amot.txt","r");
	if(file != 0) f_read(readbuf,1,4,file);
	f_close(file);

	file = f_open("amot.txt","a");
	if(!file)
	{
		f_close(file);
		SDcardError(SDCARDAMOTFILE_OPEN);
		return SDCARD_ERROR;
	}
	if(strcmp(readbuf,"AMOT") != 0)		//if not equal then header does not exist
	{
		len = strlen(amotheader);	
		if(f_write(amotheader,1,len,file)!= len)
		{
			f_close(file);	//try and close it anyway
			SDcardError(SDCARDAMOTFILE_WRITE);
			return SDCARD_ERROR;
		}
	}
	f_close(file);
	return(0);
}


void SDcardError(unsigned int pos)
{
	DeselectSPI();	//send cs high before reporting error code
	//must leave the CS high!

	sprintf(stringbuffer,"SD error position: %u\r\n",pos);
	DebugStringOut(stringbuffer);

	//set to 1 if not already set
	if(settings.sdcarderr == 0) settings.sdcarderr = 1;	//set error flag
	sdsettings.errornum = pos;	//position of error
	AliveStatus();		//healthy state sent inactive on error
	//in adc.c, if ignore is set the incoming pulse is ignored in case we have missed the peak
	settings.ignore = 0x3FFF;		//set the ignore flags, next incoming pulse train is ignored
}


void ProcessSDCard(void)
{
   	SDCardInitfromModbus();
  	SDCardEraseAllFiles();
	ReadWriteTransferBuffer();
}

void SDCardEraseAllFiles(void)
{
	if(settings.sderase == 1)
	{
		if(!f_format(0,F_FAT16_MEDIA))	//delete all data on sd card
		{
			SDCardInitialise();
		}
		settings.sderase = 0;		//set to zero when complete
	}
}


//Enter with a pointer to the structure related to the filename to be constructed
//filename is loaded into e.g. asciilog.sdcard.currentfilename
//This is always baseed on the current date
void BuildFileName(char *name, char*ext)
{
	sprintf(name,"%.2x%.2x%.2x",clocktime.year,clocktime.month,clocktime.date);
	name[6] = '.';	//add the .
	name[7] = 0;	//make sure null terminated
	strcat(name,ext);	//append the extension
}



//----------------------------------------------------------------------------------------------------
//Years to seconds
//Pass into the function the year (now) the current year will not be included in the calculation
//Value passed in, in BCD
//If value is not in BCD flag should be false
//----------------------------------------------------------------------------------------------------

unsigned long YearstoSecs(unsigned char years, unsigned int bcdflag)
{
int i, y;
unsigned long return_val=0;
	if(bcdflag)	years = BCD_TO_DEC(years);		//convert to decimal
	for(i=0;i<years;i++)
	{
		y = LEAP_YEAR(i);
		return_val += (y==0 ? SECONDS_IN_YEAR : (SECONDS_IN_YEAR + SECONDS_IN_DAY));
	}
	return(return_val);
}


//----------------------------------------------------------------------------------------------------
//Date this year to seconds
//Pass into the function the month and date(now) (and year for leap year calculation)
//Value passed in, in BCD
//----------------------------------------------------------------------------------------------------

unsigned long DaysThisYear(unsigned char date,unsigned char month, unsigned char year, unsigned int bcdflag)
{
int i, y;
unsigned long return_val=0;
	if(bcdflag)
	{
		year = BCD_TO_DEC(year);		//convert to decimal
		month = BCD_TO_DEC(month);		//convert to decimal
		date = BCD_TO_DEC(date);		//convert to decimal
	}
	for(i=1;i<month;i++)
	{
		y = DAYS_IN_MONTH(i,year);
		return_val += y*SECONDS_IN_DAY;
	}
	return_val += (date-1)*SECONDS_IN_DAY;
	return(return_val);
}


//----------------------------------------------------------------------------------------------------
//Build the time stamp into seconds from the real time clock structure
//or any time passed in expects time structure format!
//----------------------------------------------------------------------------------------------------
unsigned long BuildTimeStamp(void)
{
unsigned long timestamp=0;

	timestamp = BCD_TO_DEC(clocktime.seconds) + (BCD_TO_DEC(clocktime.minutes)*60)
						+(unsigned long)BCD_TO_DEC(clocktime.hours)*(unsigned long)3600;	//add on the time in seconds for today
	timestamp += YearstoSecs(clocktime.year,TRUE);	//add on the number of seconds for all the years that have passed
	timestamp += DaysThisYear(clocktime.date, clocktime.month,clocktime.year, TRUE);
    return(timestamp);
}


void SaveSDSettings(void)
{
unsigned int size;

	size = sizeof(sdsettingsstruct);
	SaveSafeGeneric(SDSETTINGSPOS,&sdsettings,size);
}


// PF Gen 2 - 14-Nov-11
int CalibrationtdtoSDCardFile(void)
{
F_FILE *file;		//FILE pointer use for each function below pass in the pointer
int len;
unsigned int i;
unsigned int k;
unsigned int *ptr;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1 && settings.cardreadflag != 1)
	{
		DebugStringOut("CalibrationtdtoSDCard\r\n"); // DEBUG
		if(SDCardSetupDirectory(sdcarddir.configdir,33)!= 0) return(SDCARD_ERROR);	//error in setting to directory config
		CreateNewCalibtdFile();		//this will create a file if a new file should be created
		//NOTE DO NOT USE A CALL WITH THE file void * this for some reason does not work!

		file = f_open(calibtdfile,"w");
		if(!file)
		{
			f_close(file);	//try to close even though there was a problem opening it
			SDcardError(CALIBTDSETTINGSTOSDCARDFILE_OPEN);
			return SDCARD_ERROR;
		}

		//-----------------------------------
		len = sizeof(calibrationdatetimestruct);	//structure size
		len *= 2;						// x2 as need in bytes not words
		k = 0;
		ptr = (unsigned int*)&calibrationtd;
		for(i=0;i<len/2;i++)
		{
			f_databuf[k] = ptr[i] >> 8;
			k++;
			f_databuf[k] = ptr[i] & 0xFF;
			k++;
		}
		if(f_write(f_databuf,1,len,file)!= len)	//len in bytes
		{
			f_close(file);	//try and close it anyway
			SDcardError(CALIBTDSETTINGSTOSDCARDFILE_WRITE);
			return SDCARD_ERROR;
		}

		f_close(file);
	}
	//currently not ignoring the next pulse train due to upddating the sd card
	//updating s time consuming and could take longer than it takes to see and process a pulse if so
	//it is possible to come back round to processing the pulses and causes a false level to be recorded
	return(0);
}

int ReadCalibrationtdfromSDCardFile(void)
{
int len;
unsigned int i;
unsigned int k;
unsigned int value;
unsigned int *ptr;
int magic;

	if(settings.sdcarderr == FALSE && sdsettings.present == 1 && settings.cardreadflag != 1)
	{
		magic = Fram1MagicNumberRead();
		if(SDCardSetupDirectory(sdcarddir.configdir,34)!= 0) return(SDCARD_ERROR);	//error in setting to directory config
		fileregs.file = f_open(calibtdfile,"r");

		//if the file could not be read/opened - the settings will not be altered			
		if(fileregs.file != 0)
		{
						 
			len = sizeof(calibrationdatetimestruct);	//structure size
			len *= 2;						// x2 as need in bytes not words
			f_read(fileregs.readbuffer,1,len,fileregs.file);	//read the status into buffer
			k = 0;
			ptr = (unsigned int*)&calibrationtd;

			for(i=0;i<len/2;i++)
			{
				value = fileregs.readbuffer[k] << 8;
				k++;
				value += fileregs.readbuffer[k] & 0xFF;
				k++;
				ptr[i] = value;
			}
			//close file and return zero on success
			f_close(fileregs.file);
			sdsettings.readstatus.calibtd = TRUE;	//set to true as we have read data from the sd card
		}
		else
		{
			f_close(fileregs.file);	//close anyway
			if(magic == FALSE)	//fram ok load back to sd card - settings should already be in ram so simply store to sd
			{
				CalibrationtdtoSDCardFile();
				sdsettings.readstatus.calibtd = FALSE;	//false did not read the sd card
			}
			else		//on checking the general settings if we cannot read the sd card and the magic number is not set in the FRAM
			{			//setup some defaults in order for the software to function on a basic level

				CalibrationtdUpdate(3); // Zero calibration
				sdsettings.readstatus.calibtd = FALSE;	//false did not read the sd card
			}
		}
	}
	//currently not ignoring the next pulse train due to upddating the sd card
	//updating s time consuming and could take longer than it takes to see and process a pulse if so
	//it is possible to come back round to processing the pulses and causes a false level to be recorded
	return(0);
}

//Create a new calibtd file - if a file already exists in the current directory delete it before
//creating a new one
int CreateNewCalibtdFile(void)
{
	if(CreateFile((char*)calibtdfile)) return SDCARD_ERROR;		//create a new file with the new file name stored in the structure
	return(0);	//all ok
}


// PF Gen 2 - 10-May-12
//Routine to update runtime
//This will write to the short term and long term directories
void RunTimeMinUpdate(void)
{
static unsigned int previousmins;

	if(clocktime.minutes != previousmins)
	{
		previousmins = clocktime.minutes;		//save the minutes now
		EngineRunTimeUpdate();					//update on 1 minutes interval
	}

}
// PF Gen 2 - 10-May-12 EOM

//EOF
