//define.h
//Store all definitions to be used globally in this file
#ifndef defineH
#define defineH

// AJB 15-Feb-10 Reprogramming mod
#define REPROG_TIMOUT 12000	//set at 60 seconds of no comms to PC
// AJB 15-Feb-10 EOM
#define WATCHDOG_ENABLED 1	//set to 1 if used else set to zero

#define TRUE 1
#define FALSE 0

#define SERIAL_ENB 0x55aa

#define YES 1
#define NO 0

#define FOUND 1
#define NOTFOUND 0
#define RAWRPMLIMIT 20		//raw rpm limit set at 20 do not update when less than this value

#define OK 1
#define FAIL -1

#define ENABLED 1
#define DISABLED 0

#define FORWARD 0
#define ASTERN 1
#define UNKNOWN_DIR -1	//set to unknown if the direction has not been worked out yet) e.g. at start stop
#define DIR_NOTSET -2 	//(set to -2 on new system and direction ahs not been set yet)
#define MINIMUM_RPM 12

#define MAGIC_NUMBER 0x12345678

//----------------------------
//Message priorities for the event log
#define NO_PRIORITY 0
#define LOW_PRIORITY 1
#define MID_PRIORITY 2
#define HIGH_PRIORITY 3

#define FIRST_DAY_IN_WEEK 1
//----------------------------------------------------------------------------------------------------------------------
//Timers and time related defaults 
#define SECS_TO_MS_MULTIPLIER (unsigned int)(200)			//multiplier to take seconds into 5ms increments for the timer module
#define MINS_TO_MS_MULTIPLIER ((long)(60 * 200))	//multiplier to take minutes into 5ms increments for the timer module
#define DELAY500MSEC 100					//provide a 0.5second delay
#define ONE_SEC_TIMEOUT (200)
#define HALF_SEC_TIMEOUT (SECS_TO_MS_MULTIPLIER*0.5)
#define TEN_MIN_TIMER (MINS_TO_MS_MULTIPLIER * 10)
#define FIVE_SEC_TIMEOUT (ONE_SEC_TIMEOUT*5)
// AJB 15-Feb-10 Reprogramming mod SLAVERXTIMEOUT was previously 5
#define SLAVERXTIMEOUT 2			//set to 5 to 10ms, times out if no change in charcount - this assumes the last char has been seen
#define MASTER_TO_SLAVE_TIMEOUT 200	//wait 1sec for response (should have received the packet in this time, used for retries to slave)
// AJB 15-Feb-10 EOM
//5 years in seconds is (366 *1 + 365 * 4) * 24 * 60 * 60 ( 7 days add on to make sure we hhave jsut over 5 years)
#define FIVE_YEARS_INSECS (unsigned long)158371200	//this is used to delete files older than 5 years in age (as a comparison)
#define ONE_HOUR_INSECS (3600)
#define ONE_YEAR_INSECS (unsigned long)(31536000)
#define TIME_TO_FRAM_UPDATE (5 * 60 * SECS_TO_MS_MULTIPLIER)	//set in 5ms incs
#define ENGINERUNTIME_INTERVAL (MINS_TO_MS_MULTIPLIER)		//set as 1 minute
#define PCCOMMS_ERROR_TIMEOUT (SECS_TO_MS_MULTIPLIER*30)	//30 second timeout

#define DCMODESTAYALIVE (SECS_TO_MS_MULTIPLIER*30)	//PF Gen 2 - 4-Jan-12 Added in for dcmode stay alive
#define BITEVENCHANGE (SECS_TO_MS_MULTIPLIER*10)	//PF Gen 2 - 06-Mar-12 Added in bit event change

#define SLOW_DOWN_START_COUNT  15000	//set to a 0.495 second period for blipping the port (approx)
#define SLOW_DOWN_ON_PERIOD 12		//6 counts (in 33us for the on period on the slow down op) 238us on time //FF 22-1-2014: change to 12

#define RTC_BATTERY_MV_SCALING 1.1267	//scaling factor for counts to mV on the battery input


//----------------------------------------------------------------------------------------------------------------------
//SPIBRR related defines for speed related selections
//----------------------------------------------------------------------------------------------------------------------
#define LSPCLK_PRE 2					//LOSPCP prescaler to set the low speed perpiheral clock
#define LSPCLKSDINIT_PRE 2				//use two when initialising the sd card (must be done slowly!)
//speed for the baud rate calc is:
//LSPCLK/((BRR+1)*8) error = 0.06% for 38400bps
#define SCIA_HBAUD_PRE 0				//high set to zero for 38400bps
#define SCIA_LBAUD_PRE 121				//baud = LSPCLK/((BRR+1)*8) error = 0.06% for 38400bps
// PF Gen 2 - 02-Nov-11 Changed PC Baud rate to 115200
/*
#define SCIB_HBAUD_PRE 0				//high set to zero for 38400bps
#define SCIB_LBAUD_PRE 121				//baud = LSPCLK/((BRR+1)*8) error = 0.06% for 38400bps
//set the pc comms rate, 1 = 1200bps,2=2400,3=4800=,4=9600,5=19200,6=38400,7=57600,8=115200,9=230400,10=460800,11=921600
#define PC_COMMS_RATE 6
*/
// PF Gen 2 - 02-Nov-11 EOM

#define DB485_COMMS_RATE 6

// PF Gen 2 - 02-Nov-11 Changed PC Baud rate to 115200
 #define SCIB_HBAUD_PRE 0				//high set to zero for 115200bps
 #define SCIB_LBAUD_PRE 40				//baud = LSPCLK/((BRR+1)*8) error = 1% for 115200bps
//set the pc comms rate, 1 = 1200bps,2=2400,3=4800=,4=9600,5=19200,6=38400,7=57600,8=115200,9=230400,10=460800,11=921600
 #define PC_COMMS_RATE 8
// PF Gen 2 - 02-Nov-11 EOM

//Frequency for perphierals: (LOSPCP/(BRR+1))
#define SDCARDINIT_SPIBRR 119			//312KHz for the spi sd init mode - (LOSPCP/(BRR+1))
#define SDCARD_SPIBRR 3					//set for fastest divide down for the sdcard
#define RTC_SPIBRR 61					//DS1306 clock chip: 600KHz to 1.2MHz max
#define AT45DB321_SPIBRR 3				//set for max speed (max 33Mhz)
#define EEPROM_SPIBRR 36				//M95128 EEPROM: 	 1MHz,   BRR = 36 (2MHZ max)
#define EXTUART_SPIBRR 36				//MAX3100 SPI UART:	 1MHz,   BRR = 36 (5MHZ max)

#define PCRXTIMEOUT (4)			//15 to 20ms timeout
#define PCTXTIMEOUT (SECS_TO_MS_MULTIPLIER)		//1 sec timeout
//----------------------------------------------------------------------------------------------------------------------


#define PRT_SETTLE 4	//set to 4 * 5ms = 20ms for settling on the multiplexer
#define MAX_NUM_PRT 4	//number of RTD inputs on an SPU

#define MAX_NUM_CHANNELS_SPU 14
#define MAX_NUM_CHANNELS 28
#define MAX_NUM_CYLINDERS (MAX_NUM_CHANNELS/2)	//cylinders is half the number of channels
#define MAX_NUM_SINGLE_SPU 14
#define NUM_INITIAL_SPEED_REF 3
#define NUM_SPEED_REF 150				//max 150 speed reference points
#define CAL_ALARMTHRESOLD_LEVEL	200		//set to 200 microns (this is the distance allowed in average value from the original ISRP value)
#define MANROUGH_NUM_PTS_TOL 2			//+- num points when checking to use the rough cal points in the fine cal man table
#define MAN_ALARM_CHECK_CYCLES 5		//check the man alarms every 5 cycles

#define NUM_COUNT_CHECK_PER_CHAN 5		//for pulse counting number to be checked against (e.g. 5 pulses per channel)
#define RPM_MODAL_OFFSET (int)25				//rpm offset used for modal check if outside of 50rpm range from modal value

//MAXADC_RPMPULSECOUNT is set to a value dependent on the ADC interrupt, assuming an interrupt every 33us
//this count is set to approx 10RPM (i.e. 6 secs per rev) 6/33us = 181818
#define MAXADC_RPMPULSECOUNT 181818

#define RPMTIMEOUT 1200				//set at 6 seconds (i.e. 10RPM)
#define RPM_TRAP 2000				//upper rpm trap
#define UPPER_RPM_PERCENT (float)1.10		//110% upper rpm calculation point (multiplier)
#define LOWER_RPM_PERCENT (float)0.20		//20% lower rpm calculation point (multiplier)

//assuming a max to min peak detect of 7 to 20mA with 3.3mA/mm max can achievie as swing is 3500 (in one direction)
#define SCALEDVAL_LIMIT 3500	//microns should never be more than this.
#define ADCINTERRUPTINTERVAL 0.0000332	//33.2us interval for the adc interrupt used for pulse detection
#define DEFAULT_UNSIGNEDLONG_UPPER (float)4294967296.0
#define DEFAULT_NOTSET_VAL 32767	//value set for initial value on startup - i.e. not set to anything sensible yet
#define DEFAULT_INT_ERROR_VAL -32767
#define DEFAULT_NOT_USED_VAL 32767
#define NO_PULSE_LOG_VALUE -32766
#define	LOWLEVEL_LOG_VALUE -32765
#define HILEVEL_LOG_VALUE  -32764
#define RPMOOR_LOG_VALUE -32763
#define REPLACED_LOG_VALUE -32762
#define DISABLED_LOG_VALUE -32761
#define ADC_MAX_VAL 4095			//setup the max value for a 12bit number
#define MA_SCALED_OFFSET 2866.5		//counts relating to 14mA if 4095 = 20mA and 204.75 counts per mA
#define TWELVE_MA_OFFSET_IN_UA 12000.0	//12000 uA for 12mA
#define FOURTEEN_MA_OFFSET_IN_UA 14000.0	//14000uA for 14mA (used in adc.c)
#define COUNTS_PER_MA 204.8			//fixed counts per mA if scaled 0 to 4095 for 0 to 20mA, //this is 4096/20

#define MODBUS_ADDRESS 1			//address for the comms to pc
#define MODBUS2_SLAVEADDRESS 1		//slave address of slave SPU, always fixed as 1
#define SPU2_DATA_LEN_INWORDS 61	//respond with 47 words, 14 channels data, 14 chan status, 4 temperatures, 14 rpms and versionreg + new immediate values
#define SPU2_DATA_LEN_INBYTES (SPU2_DATA_LEN_INWORDS*2)
#define NUM_STATUS_WORDS_FROM_SLAVE 14	//three words for no pulse, low and high
#define SLAVE_485_BAUD_SPU 0
#define SLAVE_485_BAUD_WIO 1
#define NUM_RETRIES_SPU2 10
#define NUM_RETRIES_WIO 30

#define RECEIVING_CHAN_RESULTS 1		//set to 1 if receiving the channel results from the 2nd spu
#define RECEIVING_SCALING 2				//set to 2 for receiving the response after sending the scaling factor to the 2nd spu
// AJB 15-Feb-10 Reprogramming mod
#define RECEIVING_REPROGRAMMING 3			//receiving programming from the master to the slave
#define RECEIVING_REPROGRAMMING_STATUS 4	//receiving programmingstatus from the slave
// AJB 15-Feb-10 EOM

#define NORMAL_MODE 0x03		//send this to slave for normal run mode
#define DC_MODE 0xF3			//send this to slave for dc mode

#define STAGE1_START 1		//relates to initial first speed point cal for x minutes
#define STAGE1_CAL 2		//relates to initial first speed point cal for x minutes
#define STAGE1_COMPLETE 3	//wait point until we are into the next speed band
#define STAGE2_CAL 4 		//relates to the second point cal for x minutes
#define STAGE2_COMPLETE 5	//wait point until we are into the next speed band
#define STAGE3_CAL 6	//relates to the third speed point cal for x minutes
//once the first three points have been calcualted the sped comp table will be fully populatd with interpolated values
//rough cal complete after stage 3
#define STAGE4_CAL 7	//learning mode - first stage learning collecting 1000 samples
#define STAGE5_CAL 8	//long term calibration in progress (default 500Hours)
#define CAL_COMPLETE 9	//calibration completed end of cal mode - start end timer
#define CAL_COMPLETE2 10	//after timeout from calcompletion timer this is the final mode.  This will tell
							//this pc that the calibration is now complete
#define CAL_ABORT 11	//user aborted the calibration

#define NOPULSE 1	//no pulse detected on an analogue channel
#define LOWIP 2		//4-20mA input low
#define HIGHIP 3	//4-20mA input high

#define NUM_ROUGH_CAL_PTS 3		//3 points used in the rough calibration


//algorithm functon block enabling
//The following definitions are used to enable/disable function blocks from operating
//These can be set from the AMOTCLI - used for debugging etc
#define APPLYOFFSET 1
#define SENSORCOMPENSATION 2
#define SENSORNOISEREMOVAL 3
#define SENSORDEVIATION 4
#define CYLINDERAVERAGE 5
#define CYLINDERDEVIATION 6


//-------------------------------------------------------------------------------------------------
#define SIZEOF_AVERAGEVALACC_IN_WORDS (28*2)
#define SIZEOF_AVERAGEVALACC_IN_BYTES (SIZEOF_AVERAGEVALACC_IN_WORDS*2)
//size of man 1000 - table stored after 1000 points seen at a speed point - this is essentially a man table of integers (28 *150)
#define SIZEOF_MAN1000_IN_WORDS (28)
#define SIZEOF_MAN1000_IN_BYTES (SIZEOF_MAN1000_IN_WORDS*2)

//-------------------------------------------------------------------------------------------------
//FRAM1 related sizes
#define MAN_COMPTABLESIZE_INWORDS 4200

#define MAN_COMPTABLESIZE_INBYTES 8400			//space for the main compensation table
#define ACCTABLE_SIZE_INBYTES 16800				//allow 16800 - this is 150 points * 4bytes (for a long) * 28 channels
#define CALIBRATIONSTRUCT_SIZE_INBYTES 2048		//18/02/08 size = 1122 allow 2048 (calibration variables stored here)
#define ALLSENSORSTRUCT_SIZE_INBYTES 128		//paramaters relating to all sensors e.g. alrm levels etc
#define SENSORSTATUS_SIZE_INBYTES 128			//status of sensor e.g. enabled/disabled, cal mode
#define SPEEDCOMPSTRUCT_SIZE_INBYTES 128		//check size when updating (speedcom coeffs e.g. timers etc)
#define MANCALSTRUCT_SIZE_INBYTES 64			//allow 64 - time values for reporting to pc, time left etc.
#define OFFSETSTRUCT_SIZE_INBYTES 256			//allow 256 (28 *2 *2 = 112 bytes) offsetsA structure offsets for all channels + offsetsB
#define EVENTLOGVARSSTRUCT_SIZE_INBYTES 64		//allow 64 bytes (32 ints) - eventlogid etc
#define WIOSETTINGS_SIZE_INBYTES 64				//settings relating to water in oil
#define	CONFIGSTRUCT_SIZE_INBYTES 256			//configuration settings - various
#define	ENGINESTRUCT_SIZE_INBYTES 16			//engine structure - engine runtime etc
#define ALARMSLATCHED_DATA_SIZE_INBYTES 2		//allow space for the alarm latched conditions - needed if power is lost
#define SENSORSTATUS2_ALARMSLATCHED_DATA_SIZE_INBYTES 56	//space for the sensors status alarm latched
#define CYLINDERSTATUS2_ALARMSLATCHED_DATA_SIZE_INBYTES 28	//space for 14 cylinders
#define STATUS3_ALARMSLATCHED_DATA_SIZE_INBYTES 56			//space for 28 alarms for status3
#define SHORTTERMLOGSTRUCT_SIZE_INBYTES 128					//space for the SHORTTERLOGSTRUCT (128 bytes)
#define WIOALARMSTRUCT_SIZE_INBYTES 8						//8 bytes space for the wioalarms
//AJB 19-Aug-10
#define DAMAGEMONSTRUCT_SIZE_INBYTES 64						//64 bytes allowed for struct
#define DAMAGE_SINGLE_ALARMS_SIZE_INBYTES 4 				//4 bytes (2 words for all channels)
#define DAMAGE_CYL_ALARMS_SIZE_INBYTES 2 					//2 bytes (1 word for all cylinder)
#define DAMAGE_MBSUM_ALARMS_SIZE_INBYTES 2 					//2 bytes (1 word for all cylinder)
#define SLEMSETTINGSSTRUCT_SIZE_INBYTES 64					//64 bytes (allow for 64 bytes of space)
#define SLEM_ALARMS_SIZE_INBYTES 2							//2 bytes
#define RTCBAT_ALARMS_SIZE_INBYTES 2  						//2 bytes
//AJB 19-Aug-10 EOM
#define CALIBRATIONTD_SIZE_INBYTES 32						// PF Gen 2 - 14-Nov-11 Added in new structure to store time and date for calibration process
#define DCMODECHECKSSTUCT_SIZE_INBYTES 64					// PF Gen 2 - 14-Nov-11 Added in new structure to dc mode checks
#define CPPSETTINGSSTRUCT_SIZE_INBYTES 64					//64 bytes (allow for 64 bytes of space)

//FRAM2 related sizes
#define MAN1000TABLE_SIZE_INBYTES 8400			////28 integers * 150 currently stored for the 1000 sample point values
#define PREWARNSTRUCT_SIZE_INBYTES 400			//allow 400 bytes for this structure
#define ALARMEVENTCODE_SIZE_INBYTES 2048		//allow for 2048 bytes (this is 512 longs)
#define REFFLAG_SIZE_INBYTES 56					//allow for all 28 channels
#define REFLEVEL_SIZE_INBYTES 56				//allow for 28 channels
#define PRESENTSTATE_SIZE_INBYTES 56			//allow for 28 channels
#define	BITALARMLIST_SIZE_INBYTES	66			// PF Gen 2 - 17-Jan-12 Added in new structure for bit alarm list
//AJB 19-Aug-10 -currently using 11016 bytes in the FRAM2
//PF Gen 2 - 01-Feb-12 -currently using 11082 bytes in the FRAM2

//-----------------------------------------------------------------------------------
//FRAM SIZE total of 32768 bytes allowed per device 256Kbit
//FRAM1
#define MANCOMP_TABLE 0					//man compensation table 150 x 28 (ints) requires 8400 bytes
#define ACCTABLE_OFFSET (MANCOMP_TABLE+MAN_COMPTABLESIZE_INBYTES) 		//table placed at the start of the FRAM after man table [8400]
//accumulation table is longs x 28 x 3 = 336
#define CALIBRATIONSTRUCT_OFFSET (ACCTABLE_OFFSET + ACCTABLE_SIZE_INBYTES)	//position after acc table [25200]
//the space for the calibration structure is 644 words or 1288 bytes
//allow for update to this structure
#define ALLSENSORSTRUCT_OFFSET (CALIBRATIONSTRUCT_OFFSET + CALIBRATIONSTRUCT_SIZE_INBYTES) //[27248]
#define SENSORSTATUS_OFFSET (ALLSENSORSTRUCT_OFFSET + ALLSENSORSTRUCT_SIZE_INBYTES) //position for saving each status word relating to each sensor [27376]
#define SPEEDCOMPSTRUCT_OFFSET (SENSORSTATUS_OFFSET + SENSORSTATUS_SIZE_INBYTES)	//position at xxx bytes above the previous data [27504]
#define MANCALSTRUCT_OFFSET	(SPEEDCOMPSTRUCT_OFFSET + SPEEDCOMPSTRUCT_SIZE_INBYTES)	//time values for reporting to pc, time left etc. [27632]
#define OFFSETA_OFFSET (MANCALSTRUCT_OFFSET + MANCALSTRUCT_SIZE_INBYTES)			//offsetsA structure offsets for all channels [27696]
#define OFFSETB_OFFSET (OFFSETA_OFFSET + OFFSETSTRUCT_SIZE_INBYTES)					//secondary offset [27952]
#define EVENTLOGVARSSTRUCT_OFFSET (OFFSETB_OFFSET + OFFSETSTRUCT_SIZE_INBYTES)		//eventlogid etc [28208]
#define WIOSETTINGS_OFFSET (EVENTLOGVARSSTRUCT_OFFSET + EVENTLOGVARSSTRUCT_SIZE_INBYTES)	//settings relating to wio [28272]
#define CONFIGSTRUCT_OFFSET (WIOSETTINGS_OFFSET + WIOSETTINGS_SIZE_INBYTES)	//settings relating to configuration [28336]
#define ENGINESTRUCT_OFFSET (CONFIGSTRUCT_OFFSET + CONFIGSTRUCT_SIZE_INBYTES)	//settings relating to engine [28592]
#define ALARMSLATCHED_DATA_OFFSET (ENGINESTRUCT_OFFSET + ENGINESTRUCT_SIZE_INBYTES)	//latched data space [28608]
#define SENSORSTATUS2_ALARMSLATCHED_DATA_OFFSET (ALARMSLATCHED_DATA_OFFSET + ALARMSLATCHED_DATA_SIZE_INBYTES) //[28610]
#define CYLINDERSTATUS2_ALARMSLATCHED_DATA_OFFSET (SENSORSTATUS2_ALARMSLATCHED_DATA_OFFSET + CYLINDERSTATUS2_ALARMSLATCHED_DATA_SIZE_INBYTES) //[28638]
#define STATUS3_ALARMSLATCHED_DATA_OFFSET (CYLINDERSTATUS2_ALARMSLATCHED_DATA_OFFSET + CYLINDERSTATUS2_ALARMSLATCHED_DATA_SIZE_INBYTES) // [28666]
#define SHORTTERMLOGSTRUCT_OFFSET (STATUS3_ALARMSLATCHED_DATA_OFFSET + STATUS3_ALARMSLATCHED_DATA_SIZE_INBYTES) // [28722]
#define WIOALARMSTRUCT_OFFSET (SHORTTERMLOGSTRUCT_OFFSET + SHORTTERMLOGSTRUCT_SIZE_INBYTES) // [28850]
#define DAMAGEMONSTRUCT_DATA_OFFSET (WIOALARMSTRUCT_OFFSET + WIOALARMSTRUCT_SIZE_INBYTES) // [28858]
#define DAMAGE_SINGLE_ALARMS_DATA_OFFSET (DAMAGEMONSTRUCT_DATA_OFFSET + DAMAGEMONSTRUCT_SIZE_INBYTES) // [28922]
#define DAMAGE_CYL_ALARMS_DATA_OFFSET (DAMAGE_SINGLE_ALARMS_DATA_OFFSET + DAMAGE_SINGLE_ALARMS_SIZE_INBYTES) // [28926]
#define DAMAGE_MBSUM_ALARMS_DATA_OFFSET (DAMAGE_CYL_ALARMS_DATA_OFFSET + DAMAGE_CYL_ALARMS_SIZE_INBYTES) // [28928]
#define SLEMSETTINGSSTRUCT_OFFSET (DAMAGE_MBSUM_ALARMS_DATA_OFFSET + DAMAGE_MBSUM_ALARMS_SIZE_INBYTES) // [28930]
#define SLEM_ALARMS_DATA_OFFSET (SLEMSETTINGSSTRUCT_OFFSET + SLEMSETTINGSSTRUCT_SIZE_INBYTES) // [28994]
#define RTCBAT_ALARMS_DATA_OFFSET (SLEM_ALARMS_DATA_OFFSET + SLEM_ALARMS_SIZE_INBYTES) // [28996]
#define CALIBRATIONTD_DATA_OFFSET (RTCBAT_ALARMS_DATA_OFFSET + RTCBAT_ALARMS_SIZE_INBYTES)	// PF Gen 2 - 14-Nov-11 Added in new structure to store time and date for calibration process [28998]
#define DCMODECHECKSTRUCT_OFFSET (CALIBRATIONTD_DATA_OFFSET + CALIBRATIONTD_SIZE_INBYTES)	// PF Gen 2 - 14-Nov-11 Added in new structure to store time and date for calibration process [29030]
#define CPPSETTINGSSTRUCT_OFFSET (DCMODECHECKSTRUCT_OFFSET + DCMODECHECKSSTUCT_SIZE_INBYTES)	// FF 04-Feb-14 Added new structure to store cpp settings [29094]
#define SENSORMOVINGSTRUCT_OFFSET (CPPSETTINGSSTRUCT_OFFSET + SLEM_ALARMS_SIZE_INBYTES)			//FF 16-June-15 new structure to store sensor meving threshold

#define FRAM_RTC_DATA 32700			//clock structure stored to the fram at this position
#define FRAMMAGICNUMBER_POS 32762	//store a long number as a magic number for checking if the fram has been configured
#define LASTFRAM_POSITION 32766	//this position is used as a check, with a word written to it and read back for verification


//FRAM2
#define MAN1000TABLE_OFFSET 0		//storage of the man
#define PREWARNSTRUCT_OFFSET 	 (MAN1000TABLE_OFFSET + MAN1000TABLE_SIZE_INBYTES)
#define ALARMEVENTCODE_OFFSET 	 (PREWARNSTRUCT_OFFSET + PREWARNSTRUCT_SIZE_INBYTES)
#define REFFLAG_DATA_OFFSET 	 (ALARMEVENTCODE_OFFSET + ALARMEVENTCODE_SIZE_INBYTES)
#define REFLEVEL_DATA_OFFSET	 (REFFLAG_DATA_OFFSET + REFFLAG_SIZE_INBYTES)
#define PRESENTSTATE_DATA_OFFSET (REFLEVEL_DATA_OFFSET + REFLEVEL_SIZE_INBYTES)
#define	BITALARMLIST_DATA_OFFSET (PRESENTSTATE_DATA_OFFSET + PRESENTSTATE_SIZE_INBYTES)		// PF Gen 2 - 17-Jan-12 Added in new structure for bit alarm list
//-------------------------------------------------------------------------------------------------


//-------------------------------------------------------------------------------------------------
//Alarm event log info

#define UNACK_ON_RED 	(unsigned int)0x03
#define UNACK_ON_YELLOW (unsigned int)0x02

#define NUM_ALARMEVENTS	362		//number of alarm events in the table (stored in fram) // PF Gen 2 - 26-Jan-12 Change amount of alarm events was 359
#define ALARM_ACK_MASK 		(unsigned int)0x04
#define ALARM_ACTIVE_MASK 	(unsigned int)0x02
#define ALARM_COLOUR_MASK 	(unsigned int)0x01
#define SIZEOF_EVENTCODEVAL_IN_BYTES 4
#define SIZEOF_EVENTCODE_IN_WORDS 2			//size is set to the size in words = 2 (as it is a long)


//SPI SAVE SAFE positions for EEPROM data

//16K of space within the EEPROM M95128
//add macro definitions here for structures to save to NONVOL
//a SAFE struct should not be more than 64 bytes each
#define SAFESTRUCT1SAVEPOSITION 0		//channel low/high threshold and channel 18mA calibration points
#define SAFESTRUCT2SAVEPOSITION 64		//prt calibration scaling factors etc...
#define ANALOGINPUTSAVEPOSITION 128		//NOT USED GEN1.5
#define SAFESTRUCT4SAVEPOSITION 192		//NOT USED GEN1.5
#define SAFESTRUCT5SAVEPOSITION 256		//NOT USED GEN1.5
#define SDSETTINGSPOS 320				//card status, storage intervals etc
// AJB 15-Feb-10 New position for analogue calibration data was FUNCTIONENABLED
#define XTSWPLUS_ANALOG_POSITION 384	//position for the new analogue channels on the XTSW+ hardware
#define FIRMWAREVERSPU2 16380			//store the firmware version in the top two locations in the eeprom onboard the SPU
#define FIRMWAREVERSPU1 16382			//firmware ins integers so need two bytes per

//AJB 19-Aug-10
#define WATER_IN_OIL_ANALOG_IN 0		//channel for water in oil analogue input
#define SLEM_ANALOG_IN		1
#define CPP_ANALOG_IN		2

//------------------------------------------------------------------------------------------------------------
//definitions for saving data to fram or eeprom
#define SAFE1UPDATE 1			//safe1
#define SAFE2UPDATE 2			//safe2
#define SDSETTINGSUPDATE 3		//sdsettings
#define MANSAFEUPDATE 4			//mansafe
#define SENSORSTATUSUPDATE 5	//status1
#define ALLSENSORSUPDATE 6		//allsensors
#define MANCOMPTABLE 7			//man_comptable
#define OFFSETAUPDATE 8			//offsetA
#define OFFSETBUPDATE 9			//offsetB
#define SPEEDCOMPSTRUCTUPDATE 10//speedcompcoeffs
//------------------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------------
//SD Card changes required
#define SDIDLE 0
#define SDGENERALUPDATE 1
#define SDMANCOMPTABLEUPDATE 2
#define SDSTATUSUPDATE 3
#define SDOFFSETSUPDATE 4
#define SDCALIBRATIONUPDATE 5 // PF Gen 2 - 14-Nov-11 for calibrationtd onto sd card

#define MAX_DIRNAME_LEN_BYTES 8						//8 characters
#define MAX_DIRNAME_LEN (MAX_DIRNAME_LEN_BYTES/2)	//8 characters (4 words)
#define MAX_FILENAME_LEN_BYTES 12					//12 characters
#define MAX_FILENAME_LEN (MAX_FILENAME_LEN_BYTES/2) 	//12 characters (6 words) (last hcar always a null)
#define TRANSFER_LENGTH_INWORDS 128
#define MAX_LT_DIRS 9
#define MAX_ST_DIRS 8

//switch statement defs used in sd card function
//must mirror the order placed in the structure sdcarddirstruct
#define LSENPRE 0
#define LSENPST 1
#define LSENDEV 2
#define LCYLAVE 3
#define LCYLDEV 4
#define LTEMP 5
#define LRPM 6
#define LWIO 7
#define LRUNT 8

//------------------------------------------------------------------------------------------------------------




//------------------------------------------------------------------------------------------------------------
#define STATUS1UPDATE 0
//------------------------------------------------------------------------------------------------------------


#define alarmOP1 gpf.selunion.bits.op1
#define alarmOP2 gpf.selunion.bits.op2
#define alarmOP3 gpb.selunion.bits.op3

#define ALARM_OP_OK 1
#define ALARM_OP_FAULT 0

#define SLOWDOWN_OP_OK 0
#define SLOWDOWN_OP_FAULT 1

#define LED1 gpd.selunion.bits.led1
#define MASTERMODESWITCH gpd.selunion.bits.modeswitch

//direction set in digout.c
#define GPIO1 gpb.selunion.bits.gpio1
#define GPIO2 gpb.selunion.bits.gpio2
#define GPIO3 gpb.selunion.bits.gpio3
#define GPIO4 gpb.selunion.bits.gpio4

//defines for GPA PORT
#define ANAIN_SELECT1 	gpa.selunion.bits.anain_select1
#define ANAIN_SELECT2 	gpa.selunion.bits.anain_select2
#define ANAIN_SELECT3 	gpa.selunion.bits.anain_select3
#define PROGRAM_CS 		gpa.selunion.bits.program_cs
#define COM_SELECT 		gpa.selunion.bits.com_select


#define DB_UART_IRQ GPIO3	//uart on daughter board interrupt received when low
#define DB485_TXRXEN GPIO4	//define the 485 select for the daughter board for tx and rx on half duplex
//deselect the daughter board cs 0,1,2 and point to 3 on the mux - only gpio 1 and 2 used for this
//selection deselection for dual spu systesms where seleciton is on the mux
#define DESELECT_DBCS 	*(unsigned int*)&gpb |= 0x0C00;
#define FRAM1SELECT 	*(unsigned int*)&gpb &= 0xF3FF;
#define FRAM2SELECT 	*(unsigned int*)&gpb &= 0xF7FF;
#define DB_UARTSELECT 	*(unsigned int*)&gpb &= 0xFBFF;

#define DBUART_RECEIVE_STATE 0
#define DB485_TRANSMIT 1
#define DB485_RECEIVE 0

#define FRAM1 0
#define FRAM2 1
//fram selection if daughter board has the fram only for gen1.5 single spu systems
//NOT USED
//#define FRAM1SELECT gpb.selunion.bits.gpio1		//gpio1 pin from 14wayidc to daughter board (pin6)
//#define FRAM2SELECT gpb.selunion.bits.gpio2		//gpio2 pin (pin7)


//-------------------------------------------------------------------------------------------------------------------------------
//SD Card definitions
#define SHORT_TERM_ACCESS 1
#define LONG_TERM_ACCESS 2
#define LOG_ENTRY_LEN_IN_BYTES 294	//log entry in bytes
#define MAX_SDREADBUFFER_LEN 300

#define FILE_TRANSFER_READ 1
#define FILE_TRANSFER_WRITE 2
#define FILE_TRANSFER_DELETE 3

#define EVENT_LENGTH_INBYTES 128	//includes the event and acknowledgement bytes (and \r\n at end)
#define EVENT_ACK_OFFSET 98 	//offset to the acknowledgement within the event space
#define EVENT_ACK_LEN_INBYTES 28	//date/time =  18 + 10chars for name

#define EVENT_DATETIME_LEN_INBYTES 18
#define EVENT_DATETIME_LEN_INWORDS (EVENT_DATETIME_LEN_INBYTES/2)
#define EVENTMSG_LEN_INBYTES 48		//max 48 bytes in stream
#define EVENTMSG_LEN_INWORDS (EVENTMSG_LEN_INBYTES/2)
#define EVENT_ACK_STRING_LEN_INBYTES 10
#define EVENT_ACK_STRING_LEN_INWORDS (EVENT_ACK_STRING_LEN_INBYTES/2)

//size based on 65536 records of 128 bytes each
#define MAX_EVENT_LOG_SIZE_INBYTES 8388608

// PF 21-Oct-09 Changed MAX_NUM_SHORTTERM_FILES to 100 to free space on SD card
#define MAX_NUM_SHORTTERM_FILES 100		//100 files allowed for the short term logs on the sdcard
//-------------------------------------------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------
//EVENTS
#define EVENTMSG_LEN_INBYTES_PART2 30	//part2 of message is compiled at the event time
#define EVENTMSG_LEN_INWORDS_PART2 (EVENTMSG_LEN_INBYTES_PART2/2)
#define NUM_EVENTS_IN_LIST 41		//set at 41 (may need altering if this is exceeded)
#define SENSOR_FAILURE 			0
#define SENSOR_SLOWDOWN			1
#define SENSOR_ALARM			2
#define DEVSENSOR_SLOWDOWN		3
#define DEVSENSOR_ALARM			4
#define CYLINDERDEV_ALARM		5
#define FULL_AUTO_CALIBRATION	6
#define SENSOR_CALIBRATION 		7
#define LOSS_OF_COMMS_SPU2 		8
#define LOOK_UP_AVERAGE_ERROR	9
#define SDCARDFAIL				10
#define WIO_UPPERALARM			11
#define WIO_ALARM				12
#define CALIBRATION_ABORTED		13
#define WIO_COMMS				14
#define PARAMETER_CHANGE		15
#define FRAM_FAULT1				16
#define FRAM_FAULT2				17
#define PCCOMMSFAILURE			18
#define FIRMWARE_ALTERATION     19
#define CAL_STAGE				20
#define POWER_ON				21
#define SENSOR_PREWARN			22
#define OFFSET_ADJUST			23
#define PREWARN_INITIATED		24
#define RTC_FAULT				25
#define EVENT_NORMAL			26	//not in use
#define DIRECTION_CAL  			27
#define SENSOR_REPLACEMENT		28
#define REPLACEMENT_CANCELLED	29
#define REPLACE_50HRCOMPLETE	30
#define REPLACE_500HRCOMPLETE	31
#define SENSORSTATUS            32
// PF 23-Nov-09 Added
#define DIGOUTTEST              33
#define DAMAGE_SINGLE_SLOWDOWN	34	//AJB 19-Aug-10
#define DAMAGE_CYL_SLOWDOWN		35	//AJB 19-Aug-10
#define DAMAGE_MBSUM_SLOWDOWN	36	//AJB 19-Aug-10
#define SLEM_OOR				37	//AJB 19-Aug-10
#define RTCBAT_LOW				38	//AJB 19-Aug-10
#define SLEM_ALARM				39	//AJB 19-Aug-10
#define EVENTLOGCLEARED			40
//-----------------------------------------------------------------------------------------


#define SD_LOGENTRY_LEN_WORDS 252	//252 words for log entry, will fit in 512 page with timestamp and checksum
#define SD_LOGENTRY_LEN_BYTES 504	//504 bytes of data for each entry in the log
#define SD_LOG_BUF_SIZE_BYTES 512

//-------------------------------------------------------------------------------------------------------------------------------
//SD Card Error flags
#define AMOT_FILE_CREATE 						1
#define SD_CARD_INIT_ERROR 						2
#define SETUP_DIR_ERROR 						3
#define SHORT_TERM_DIR_SETUP 					4
#define SHORTTERM_DAILY_DEL_DIR					5
#define SDALARMFILERENAME_DIR 					6
#define SDOLDLOGFILEDELETION_FINDFIRSTLOGFILE	7
#define SDOLDLOGFILEDELETION_FINDNEXTLOGFILE 	8
#define SDLOGBINARYDATA_OPEN 					9
#define SDLOGBINARYDATA_WRITE 					10
#define SDEVENTMESSAGETOFILE_OPEN 				11
#define SDEVENTMESSAGETOFILE_SEEK 				12
#define SDEVENTMESSAGETOFILE_WRITE 				13
#define SDREADEVENTMESSAGE_SEEK				 	14
#define SDEVENTTOFILE_OPEN 						15
#define SDEVENTTOFILE_SEEK 						16
#define SDEVENTTOFILE_WRITE 					17
#define SDREADEVENT_SEEK 						18
#define SDACKUPDATE_DIR 						19
#define SDEVENTACKTOFILE_OPEN 					20
#define SDEVENTACKTOFILE_SEEK 					21
#define SDEVENTACKTOFILE_WRITE 					22
#define SENSORSTATUSTOSDCARDFILE_OPEN 			23
#define SENSORSTATUSTOSDCARDFILE_WRITE 			24
#define GENERALSETTINGSTOSDCARDFILE_OPEN 		25
#define GENERALSETTINGSTOSDCARDFILE_WRITE 		26
#define GENERALSETTINGSTOSDCARDFILE_WRITE2 		27
#define GENERALSETTINGSTOSDCARDFILE_WRITE3 		28
#define GENERALSETTINGSTOSDCARDFILE_WRITE4 		29
#define OFFSETSTOSDCARDFILE_OPEN 				30
#define OFFSETSTOSDCARDFILE_WRITE 				31
#define MANCOMPTABLETOSDCARDFILE_DIR 			32
#define MANCOMPTABLETOSDCARDFILE_OPEN 			33
#define MANCOMPTABLETOSDCARDFILE_WRITE 			34
#define CREATENEWSHORTTERMFILE_DIR 				35
#define CREATENEWLONGTERMFILE_DIR 				36
#define CREATENEWMANFILE_CREATE 				37
#define CREATEFILE_GENERAL 						38
#define SDCARDAMOTFILE_OPEN 					39
#define SDCARDAMOTFILE_WRITE 					40
#define SDCALCEVENTLOGID_DIR					41
#define SDCALCEVENTLOGID_OPEN					42
#define SDCARDSETUPDIRECTORY_DIRCHANGE			43
#define SDSHORTLOGFILEDELETION_FINDFIRSTLOGFILE	44
#define SDSHORTLOGFILEDELETION_FINDNEXTLOGFILE	45
#define MANBACKUP_ERROR							46
// PF 05-Nov-09 added defines for EVENTPOSTOSDCARDFILE_OPEN , EVENTPOSTOSDCARDFILE_WRITE
#define EVENTPOSTOSDCARDFILE_OPEN				47
#define EVENTPOSTOSDCARDFILE_WRITE				48
#define GENERALSETTINGSTOSDCARDFILE_WRITE5 		49 //AJB 19-Aug-10 added for saving to file 
#define GENERALSETTINGSTOSDCARDFILE_WRITE6		50 //AJB 19-Aug-10 added for saving to file 
#define	CALIBTDSETTINGSTOSDCARDFILE_OPEN		51 //PAF Gen 2 - 14-Nov-11
#define	CALIBTDSETTINGSTOSDCARDFILE_WRITE		52 //PAF Gen 2 - 14-Nov-11
#define GENERALSETTINGSTOSDCARDFILE_WRITE7		53 //PAF Gen 2 - 13-Dec-11

//-------------------------------------------------------------------------------------------------------------------------------

#define MAN0_TO_BACKUP 1
#define BACKUP_TO_MAN0 2

//-------------------------------------------------------------------------------------------------------------------------------
//Water in oil definitions
//------Request data from sensor
#define WIO_ADD_UPPER 0
#define WIO_ADD_LOWER 0
#define WIO_MEAS_VALS 0x67
#define WIO_BYTE_COUNT_RQST 3
#define WIO_WATER_TEMP_INDEX 0
#define WIO_WATER_ACTIVITY_INDEX 13
#define WIO_WATER_CONTENT_INDEX 14
#define WIO_RQT_DATA_LEN 8
//------
#define WIO_NUM_DATA_RQST 3
#define WIO_ACK 0x06					//water in oil ack responds with 6
#define WIO_NAK 0x15					//water in oil nack responds with 0x15

#define WIOREQUESTINTERVAL 1000			//request every 5 seconds from the water in oil detector
#define WIO_RESPONSE_NUMBYTES 19		//should always return 19 bytes for activity, temperature, and ppm in the response
#define WIO_RESPONSE_ERROR_NUMBYTES 7	//should return 7 bytes on an error

//-------------------------------------------------------------------------------------------------------------------------------
#define MASTERMODEINTERVAL 10	//check switch ever 50ms, should remain set in same state
#define MASTERM 1				//master mode checking setting
#define SLAVEM 2

//-------------------------------------------------------------------------------------------------------------------------------
//MODBUS Function codes
#define READREG (03)
#define WRITEREG (06)
#define WRITEPRESET (16)
#define NUM_UNUSED_IN_LIST 12
//-------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------
//acculamtion maximum - used for calibration accumulate must not be greater than this value
#define ACCUMULATE_MAX 400000
//-------------------------------------------------------------------------------------------------------------------------------


//Limits
//Checked at modbus registers for out of range. an event is raised if an out of range value is input to the SPU

#define NUM_PARAMETERS_IN_LIST 93		// PF Gen 2 - 13-Dec-11 Changed from 74 to 83, 13-Dec-12 FF: Changed to 85, 7-Jan-14 FF: Changed to 90
#define PARAM_STR_LEN 12
#define LONGLRATELIMIT 3600
#define LONGLRATELIMIT_LOW 60
#define LONGLRATELIMIT_HI 3600
#define SHORTLRATELIMIT 3600
#define SHORTLRATELIMIT_LOW 10
#define SHORTLRATELIMIT_HI 3600
#define CHANLOWTHRESLIMIT_LOW 500		//2.44mA limit
#define CHANLOWTHRESLIMIT_HI 2000		//9.78mA upper limit
#define CHANHITHRESLIMIT_LOW 500
#define CHANHITHRESLIMIT_HI 2000
#define SCALINGFACTOR_LOW 2000			//2000 = 2.000mA per mm
#define SCALINGFACTOR_HI 8000
#define TGRAPH_LOW 20
#define TGRAPH_HI 2000
#define RPMLIMIT_LOW 0
#define RPMLIMIT_HI 100
#define ALARMBITMAP 8	//max 3 bits so check for less than 8
#define WIOENABLED 2	//AJB 19-Aug-10 (allow 1 or 2) 2 used for analog reading
#define WIOALARMBITMAP 1
#define MVFSD_LOW_LIMIT 0
#define MVFSD_HI_LIMIT 65535
#define NUMSENS_LIMIT 28	//max 28
#define NUMSENSSPU_LIMIT 14	//max 14
#define SENSORHYSTERESIS_LIMIT 2500		//2500 micron limit on the hysteresis
#define CYLINDERHYSTERESIS_LOW 0
#define CYLINDERHYSTERESIS_HI 2500
#define SLOWDOWNLEVEL_LOW 0
#define SLOWDOWNLEVEL_HI 2500
#define ALARMLEVEL_LOW 0
#define ALARMLEVEL_HI 2500
#define SLOWDOWNDEVCALLEVEL_LOW 0
#define SLOWDOWNDEVCALLEVEL_HI 2500
#define ALARMDEVCALLEVEL_LOW 0
#define ALARMDEVCALLEVEL_HI 2500
#define SLOWDOWNDEVLEVEL_LOW 0
#define SLOWDOWNDEVLEVEL_HI 2500
#define ALARMDEVLEVEL_LOW 0
#define ALARMDEVLEVEL_HI 2500
#define CYLINDERALARMLEVEL_LOW 0
#define CYLINDERALARMLEVEL_HI 2500
#define NOMINALSPEED_LOW 50
#define NOMINALSPEED_HI 167
#define WIOALARMUPPERLEVEL_LOW 0
#define WIOALARMUPPERLEVEL_HI 10100	// PF Gen 2 - 24-Nov-11 Changed from 101 to 10100 (101%)
#define WIOALARMLEVEL_LOW 0
#define WIOALARMLEVEL_HI 10100		// PF Gen 2 - 24-Nov-11 Changed from 101 to 10100 (101%)
#define WIOHYSTERESIS_LOW 0
#define WIOHYSTERESIS_HI 10100		// PF Gen 2 - 24-Nov-11 Changed from 101 to 10100 (101%)
#define REFLASH_LOW 0
#define REFLASH_HI 60
#define SPEEDBAND_LOW 10
#define SPEEDBAND_HI 110
#define SLOPECOEFF_LOW 10
#define SLOPECOEFF_HI 1000
#define INITIALTIMER_LOW 1
#define INITIALTIMER_HI 60
#define LEARNINGMODETIMER_LOW 1
#define LEARNINGMODETIMER_HI 60000
#define INTERVALTIMER_LOW 1
#define INTERVALTIMER_HI 6000
#define NUMSAMPLES_LOW 1
#define NUMSAMPLES_HI 5000
#define FILTERCOEF_LOW 50 
#define FILTERCOEF_HI 2000
#define PREWARINGTIMER_LOW 1
#define PREWARINGTIMER_HI 1000
#define PREWARINGLEVEL_LOW 0
#define PREWARINGLEVEL_HI 2500
#define MAN_APPLIED_MIN_SAMPLES_LOW 1
#define MAN_APPLIED_MIN_SAMPLES_HI 5000
//AJB 19-Aug-10 added for damage monitoring
#define CCSPLIT_LOW 0
#define CCSPLIT_HI 13
#define KVALUE_LOW 1
#define KVALUE_HI 65000
#define BETAVALUE_LOW 1
#define BETAVALUE_HI 10000
#define RPMLEVELX_LOW 1
#define RPMLEVELX_HI 65000
#define REFLEVELX_LOW 1
#define REFLEVELX_HI 65000
#define PRESENTSTATEX_LOW 1
#define PRESENTSTATEX_HI 65000
#define ALARMLEVELSINGLE_LOW 10
#define ALARMLEVELSINGLE_HI 1000
#define ALARMLEVELCYL_LOW 10
#define ALARMLEVELCYL_HI 1000
#define ALARMLEVELMBSUM_LOW 10
#define ALARMLEVELMBSUM_HI 1000
#define CYLNEIGHBOUR_LOW 0
#define CYLNEIGHBOUR_HI 16383
#define MBNEIGHBOUR_LOW 0
#define MBNEIGHBOUR_HI 16383
#define CYLNEIGHBOURALARMS_LOW 0
#define CYLNEIGHBOURALARMS_HI 16383
#define MBNEIGHBOURALARMS_LOW 0 
#define MBNEIGHBOURALARMS_HI 16383
#define DELTARPMLIMIT_LOW 1
#define DELTARPMLIMIT_HI 100
#define SLEMHYS_MIN 0
#define SLEMHYS_MAX 1000	//max 1000mv hysteresis
#define SLEMALARM_LOW 0		//set to 0V
#define SLEMALARM_HI 5000	//alarm limit high setting set to 5V
#define SLEMDELAY_MIN 0		//set to 0
#define SLEMDELAY_MAX 3600	//1 hour in seconds
#define DAMAGEMONHYSTERESIS_LIMIT 2500
//AJB 19-Aug-10 EOM

#define MINOFFSETVAL -2000	//-2000 micron min offset adjustment
#define MAXOFFSETVAL 2000	//2000 micron max offset adjustment
//-------------------------------------------------------------------------------------------------------------------------------
//Config struct check list
#define NUM_CONFIGCHECK_IN_LIST 8
#define FILTERCOEF_DEFAULT 500
#define ALARMBITMAP_DEFAULT 0x07
#define TGRAPH_DEFAULT 100
#define CHANLOWTHRESLIMIT_DEFAULT 1000
#define CHANHITHRESLIMIT_DEFAULT 500
#define SCALINGFACTOR_DEFAULT 3330
#define SHORTLRATELIMIT_DEFAULT 10
#define LONGLRATELIMIT_DEFAULT 60




//-------------------------------------------------------------------------------------------------------------------------------
//Time date related inlines functions and definitions


#define SECONDS_IN_HOUR (unsigned long)(3600)
#define SECONDS_IN_DAY (unsigned long)(SECONDS_IN_HOUR * 24)
#define SECONDS_IN_WEEK (unsigned long)(SECONDS_IN_DAY * 7)
#define SECONDS_IN_YEAR (unsigned long)(SECONDS_IN_DAY * 365) //second in year is the seconds in a non leap year,for a leap year add on the seconds in a day
#define BCD_TO_DEC(bcd) (((bcd >> 4)*10)+ (bcd&0x0f))	//converts a single char to decimal

#define LEAP_YEAR(x) ( (x)%4 ? 0 : ( (x)%100 ? 1 : ( (x)%400 ? 0 : 1) )) //use as y = LEAP_YEAR(x) where x is the year
//y will be 1 if it a leap year
#define DAYS_IN_MONTH(m,y) ( ((m)==2) ? (LEAP_YEAR(y)?29:28) : (((m)%2) ? (((m)<=7)?31:30) : (((m)<=7)?30:31)) )
//y = DAYS_IN_MONTH(m,y), y will be how many days in the month for any month in any year

#endif
//-------------------------------------------------------------------------------------------------------------------------------

// PF 16-Oct-09 Battery scaling volts definition
#define BATTERY_VOLTS_SCALING 3880
