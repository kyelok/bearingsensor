// MODBUSTOENUM.EXE AUTO GENERATED FILE!!!!!! DO NOT EDIT!!!!!!
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AMOTConstants
{
    /// <summary>
    /// AMOT Modbus constants
    /// </summary>
    public enum ModbusConstants : ushort
    {
        /// <summary>
        /// 
        /// Start = 0, End = 0, DataType=UINT, Read/Write=W/R, Format=BCD
        /// </summary>
        YearMonth = 0,

        /// <summary>
        /// 
        /// Start = 1, End = 1, DataType=UINT, Read/Write=W/R, Format=BCD
        /// </summary>
        DateHours = 1,

        /// <summary>
        /// 
        /// Start = 2, End = 2, DataType=UINT, Read/Write=W/R, Format=BCD
        /// </summary>
        MinsSecs = 2,

        /// <summary>
        /// Live pre compensated values (these hold peak level during dc peak hold)
        /// Start = 3, End = 30, DataType=INT, Read/Write=R, Format=Microns
        /// </summary>
        PreCompValues = 3,

        /// <summary>
        /// Live Post compensated values
        /// Start = 31, End = 58, DataType=INT, Read/Write=R, Format=Microns
        /// </summary>
        PostCompValues = 31,

        /// <summary>
        /// End result values (GEN 2 - corrected length to 28 words)
        /// Start = 59, End = 86, DataType=INT, Read/Write=R, Format=Microns
        /// </summary>
        EndResultValues = 59,

        /// <summary>
        /// Sensor Deviation (GEN 2 - corrected length to 28 words)
        /// Start = 88, End = 115, DataType=INT, Read/Write=R, Format=Microns
        /// </summary>
        SensorDeviationValues = 88,

        /// <summary>
        /// sensor status 1 bitmap
        /// Start = 117, End = 144, DataType=UINT, Read/Write=W/R, Format=SENSOR1BITMAP
        /// </summary>
        ChannelStatus1Registers = 117,

        /// <summary>
        /// sensor status 2 bitmap (GEN  2 - corrected length to 28 words)
        /// Start = 146, End = 173, DataType=UINT, Read/Write=R, Format=SENSOR2BITMAP
        /// </summary>
        ChannelStatus2Registers = 146,

        /// <summary>
        /// sensor status 3 bitmap
        /// Start = 175, End = 202, DataType=UINT, Read/Write=R, Format=SENSOR3BITMAP
        /// </summary>
        ChannelStatus3Registers = 175,

        /// <summary>
        /// uA (these hold peak level during dc peak hold)
        /// Start = 203, End = 230, DataType=UINT, Read/Write=R, Format=uA
        /// </summary>
        UAValues = 203,

        /// <summary>
        /// Cylinder comparision bit per cylinder
        /// Start = 231, End = 231, DataType=UNIT, Read/Write=R, Format=
        /// </summary>
        CylinderComparision = 231,

        /// <summary>
        /// DC peak reset bit per channel
        /// Start = 232, End = 233, DataType=UNIT, Read/Write=W/R, Format=
        /// </summary>
        DCPeakReset = 232,

        /// <summary>
        /// DC in OK range
        /// Start = 234, End = 235, DataType=UNIT, Read/Write=R, Format=
        /// </summary>
        DCInOKRange = 234,

        /// <summary>
        /// DC in Ideal range
        /// Start = 236, End = 237, DataType=UNIT, Read/Write=R, Format=
        /// </summary>
        DCInIdealRange = 236,

        /// <summary>
        /// Cylinder average
        /// Start = 256, End = 269, DataType=INT, Read/Write=R, Format=Microns
        /// </summary>
        CylinderAverages = 256,

        /// <summary>
        /// Cylinder deviation
        /// Start = 270, End = 283, DataType=INT, Read/Write=R, Format=Microns
        /// </summary>
        CylinderDeviations = 270,

        /// <summary>
        /// 
        /// Start = 284, End = 297, DataType=UINT, Read/Write=R, Format=CYL1BITMAP
        /// </summary>
        CylinderStatus1 = 284,

        /// <summary>
        /// 
        /// Start = 298, End = 311, DataType=UINT, Read/Write=R, Format=CYL2BITMAP
        /// </summary>
        CylinderStatus2 = 298,

        /// <summary>
        /// Scaled micron value no offset applied at this stage (14mA = 0 all the time)
        /// Start = 312, End = 339, DataType=UINT, Read/Write=R, Format=Microns
        /// </summary>
        ScaledValues = 312,

        /// <summary>
        /// Modal rpm
        /// Start = 382, End = 382, DataType=UINT, Read/Write=R, Format=Rpm
        /// </summary>
        ModalRpm = 382,

        /// <summary>
        /// Checked rpm from SPU 2
        /// Start = 383, End = 383, DataType=UINT, Read/Write=R, Format=Rpm
        /// </summary>
        CheckedRpm = 383,

        /// <summary>
        /// Sensor rpm
        /// Start = 384, End = 411, DataType=UINT, Read/Write=R, Format=Rpm
        /// </summary>
        RpmPerSensor = 384,

        /// <summary>
        /// SPU 1 temperatures in first 14 registers, SPU 2 temperature in second 14 registers
        /// Start = 412, End = 439, DataType=UINT, Read/Write=R, Format=°C x 10
        /// </summary>
        Temperature = 412,

        /// <summary>
        /// Channel pre-warning alarm level
        /// Start = 440, End = 467, DataType=UINT, Read/Write=R, Format=Microns
        /// </summary>
        PrewarningLevel = 440,

        /// <summary>
        /// 0 - 10000 = 0 - 100% of input. If digital then 0 - 10000 = 0 - 1aW
        /// Start = 468, End = 468, DataType=INT, Read/Write=R, Format=0 - 10000
        /// </summary>
        WIOActivity = 468,

        /// <summary>
        /// Water ppm
        /// Start = 469, End = 469, DataType=INT, Read/Write=R, Format=ppm
        /// </summary>
        WIOPpm = 469,

        /// <summary>
        /// Water in oil temperature
        /// Start = 470, End = 470, DataType=INT, Read/Write=R, Format=°C x 10
        /// </summary>
        WIOTemperature = 470,

        /// <summary>
        /// 
        /// Start = 471, End = 471, DataType=INT, Read/Write=R, Format=WIOBITMAP
        /// </summary>
        WIOAlarmStatus = 471,

        /// <summary>
        /// 
        /// Start = 472, End = 472, DataType=INT, Read/Write=R, Format=mV
        /// </summary>
        SLEMValue = 472,

        /// <summary>
        /// 
        /// Start = 473, End = 473, DataType=UINT, Read/Write=R, Format=SLEMALARMS
        /// </summary>
        SLEMAlarms = 473,

        /// <summary>
        /// 
        /// Start = 474, End = 474, DataType=UINT, Read/Write=R, Format=RTC clock battery mV
        /// </summary>
        RTCLevel = 474,

        /// <summary>
        /// 
        /// Start = 475, End = 475, DataType=UNIT, Read/Write=R, Format=RTCBATALARMS
        /// </summary>
        RTCLowAlarm = 475,

        /// <summary>
        /// PC alarms
        /// Start = 480, End = 480, DataType=INT, Read/Write=R, Format=ALARMBITMAP
        /// </summary>
        AlarmStructure = 480,

        /// <summary>
        /// Day of the week
        /// Start = 512, End = 512, DataType=INT, Read/Write=W/R, Format=BCD
        /// </summary>
        RealTimeClockDay = 512,

        /// <summary>
        /// New alarm flag
        /// Start = 640, End = 640, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        NewAlarm = 640,

        /// <summary>
        /// Status bits for event ID
        /// Start = 641, End = 641, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        EventCodeListStatus = 641,

        /// <summary>
        /// Event code ID
        /// Start = 642, End = 642, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        EventCodeListId = 642,

        /// <summary>
        /// PC returns last event id read into this register
        /// Start = 643, End = 643, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        PCEventIDReturn = 643,

        /// <summary>
        /// Set to 1 from PC for reading back of the entire event list
        /// Start = 644, End = 644, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        ReadAllAlarmEvents = 644,

        /// <summary>
        /// Set to 1 to clear the entire alarm list area
        /// Start = 645, End = 645, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        ClearAlarmListArea = 645,

        /// <summary>
        /// 
        /// Start = 646, End = 646, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        ReplacementEvents = 646,

        /// <summary>
        /// 
        /// Start = 647, End = 678, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        BitAlarms = 647,

        /// <summary>
        /// 
        /// Start = 679, End = 694, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        BitEvents = 679,

        /// <summary>
        /// Read the number of events in queue, write number of messages to subtract from message in queue i.e. messages read by pc
        /// Start = 765, End = 765, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        MsgInQueue = 765,

        /// <summary>
        /// Last event id
        /// Start = 766, End = 766, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        ReadLastEventId = 766,

        /// <summary>
        /// Event ID to read , data in 768 - 830
        /// Start = 767, End = 767, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        SetupEventRead = 767,

        /// <summary>
        /// Event String
        /// Start = 768, End = 816, DataType=, Read/Write=, Format=
        /// </summary>
        EventString = 768,

        /// <summary>
        /// Ack Name
        /// Start = 817, End = 830, DataType=, Read/Write=, Format=
        /// </summary>
        AckName = 817,

        /// <summary>
        /// Event ID to be acknowledged - will use the ack name in registers 817 - 830 (max 14 chars)
        /// Start = 831, End = 831, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        StoreACK = 831,

        /// <summary>
        /// Read the current event log ID, Write - will clear the alarm list and delete the event log
        /// Start = 995, End = 995, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        ClearAlarmListAndEventLog = 995,

        /// <summary>
        /// NOT USED
        /// Start = 996, End = 996, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        LogTypeForReading = 996,

        /// <summary>
        /// Limit checked 60 - 3600
        /// Start = 997, End = 997, DataType=UINT, Read/Write=W/R, Format=Secs
        /// </summary>
        SDLongTermLogRate = 997,

        /// <summary>
        /// Limit checked 10 - 3600
        /// Start = 998, End = 998, DataType=UINT, Read/Write=W/R, Format=Secs
        /// </summary>
        SDShortTermLogRate = 998,

        /// <summary>
        /// Read the current number appended to the MAN files stored during finecal
        /// Write - zero the MAN sequence number
        /// Start = 999, End = 999, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        MANSequenceNumber = 999,

        /// <summary>
        /// Error number relating to the SD Card.
        /// This is a number relating to the function that caused the error. Debug only
        /// Start = 1000, End = 1000, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SDCardErrorNumber = 1000,

        /// <summary>
        /// Set to 1 to enable alarm to AMS
        /// Start = 1003, End = 1003, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        AMSAlarm = 1003,

        /// <summary>
        /// Set to 1 to enable slowdown to AMS
        /// Start = 1004, End = 1004, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        AMSSlowdown = 1004,

        /// <summary>
        /// Set to 1 to erase all the SD card files. Read to see when SD card erase is complete
        /// Start = 1010, End = 1010, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SDCardErase = 1010,

        /// <summary>
        /// Limit checked 0 - 100
        /// Start = 1012, End = 1012, DataType=UINT, Read/Write=W/R, Format=rpm
        /// </summary>
        DSSS = 1012,

        /// <summary>
        /// Status of digital output (1=healthy state,0=fault state),
        /// if in test mode (Register 1044) can be written to control output
        /// Start = 1024, End = 1024, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SPUDigitalOutput1 = 1024,

        /// <summary>
        /// Status of digital output (1=healthy state,0=fault state), 
        /// if in test mode (Register 1044) can be written to control output
        /// Start = 1025, End = 1025, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SPUDigitalOutput2 = 1025,

        /// <summary>
        /// Status of digital output (1=healthy state,0=fault state),
        /// if in test mode (Register 1044) can be written to control output
        /// Start = 1026, End = 1026, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SPUDigitalOutput3 = 1026,

        /// <summary>
        /// Limited checked 500 - 2000
        /// Start = 1028, End = 1028, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        ChannelLowThreshold = 1028,

        /// <summary>
        /// Limited checked 500 - 2000
        /// Start = 1029, End = 1029, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        ChannelHighThreshold = 1029,

        /// <summary>
        /// Limited checked 2000 - 8000
        /// Start = 1030, End = 1030, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SensorScaling = 1030,

        /// <summary>
        /// Write the following values to register, 1 = General, 2 = MAN comp table, 3 = Status settings, 4 = Offsets
        /// Start = 1031, End = 1031, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        SDCardUpdate = 1031,

        /// <summary>
        /// Limited checked 20 - 2000
        /// Start = 1032, End = 1032, DataType=UINT, Read/Write=W/R, Format=rpm
        /// </summary>
        TrendGraphMaximumValue = 1032,

        /// <summary>
        /// NOT USED
        /// Start = 1033, End = 1033, DataType=, Read/Write=, Format=
        /// </summary>
        Returns0 = 1033,

        /// <summary>
        /// Limit checked 0 - 100
        /// Start = 1034, End = 1034, DataType=UINT, Read/Write=W/R, Format=rpm
        /// </summary>
        RPMLimit = 1034,

        /// <summary>
        /// 1 = Start Calibration , 0 = Abort Calibration
        /// Start = 1035, End = 1035, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        CalibrateMode = 1035,

        /// <summary>
        /// 0=forward, 1=astern ,-2=direction no set, -1=unknown direction
        /// Start = 1036, End = 1036, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        ForwardAstern = 1036,

        /// <summary>
        /// Limit checked 0 - 8
        /// Start = 1037, End = 1037, DataType=UINT, Read/Write=W/R, Format=DIGITALOUTPUTMASK
        /// </summary>
        DigitalOutputEnable = 1037,

        /// <summary>
        /// Non zero is error
        /// Start = 1038, End = 1038, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        SDCardError = 1038,

        /// <summary>
        /// Set to 1 to enable SD card, set to 0 to disable SD card. Should set to 0 before removing SD card.
        /// Start = 1039, End = 1039, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SDCardEnabled = 1039,

        /// <summary>
        /// Set to 1 to pause DC mode
        /// Start = 1040, End = 1040, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        PauseDCModeDuringSurveyorTest = 1040,

        /// <summary>
        /// DC mode stay alive register
        /// Start = 1041, End = 1041, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        DCModeStayAliveRegister = 1041,

        /// <summary>
        /// 1 = Peak hold. The peaks for the DC slow roll will be held as the highest value seen (i.e. top of peak as sensor passes)
        /// Start = 1042, End = 1042, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        DCPeakHold = 1042,

        /// <summary>
        /// 1 = DC mode, 0 = Pulse mode.  In DC mode the pre compensated registers will return the value from the dc mode. Note! The uA registers will return the raw figures in uA for each channel. If peak hold is switched on the peak value will be returned.
        /// Start = 1043, End = 1043, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        DCMode = 1043,

        /// <summary>
        /// 0 = Off, 1 = On. Once in test mode registers 1024,1025 and 1026 can control outputs
        /// Start = 1044, End = 1044, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        OutputTest = 1044,

        /// <summary>
        /// Limit checked 0 - 2 (0 = disable WIO, 1= enable digital WIO, 2=enable analog WIO)
        /// Start = 1045, End = 1045, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        WIOEnabled = 1045,

        /// <summary>
        /// Limit checked 0 - 1 (1  = disable alarms , 0 = enable alarms)
        /// Start = 1046, End = 1046, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        WIOAlarmBitmap = 1046,

        /// <summary>
        /// Set to 1 to clear the alarm list, event log id,messsage queue, clear the WIO alarm mask, all offsets (A & B), speed comp, man table.
        /// Start = 1047, End = 1047, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        InitialiseFRAM = 1047,

        /// <summary>
        /// Set to 1 to reset pre warning level for all channels
        /// Start = 1048, End = 1048, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        PreWarningInitialise = 1048,

        /// <summary>
        /// Set to 1 on real-time clock failure
        /// Start = 1049, End = 1049, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        ClockError = 1049,

        /// <summary>
        /// Limit checked 0 - 1 (0 = disable SLEM, 1 = enable SLEM)
        /// Start = 1050, End = 1050, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SLEMEnable = 1050,

        /// <summary>
        /// Limit checked 0 - 1 (0 = enable SLEM alarm, 1 = disable SLEM alarm)
        /// Start = 1051, End = 1051, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SLEMAlarmMask = 1051,

        /// <summary>
        /// Limit checked 0 - 65535
        /// Start = 1052, End = 1052, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SLEMMVFSD = 1052,

        /// <summary>
        /// Limit checked 0 - 1 (0 = enable slowdown blip, 1 = disable slowdown blip)
        /// Start = 1053, End = 1053, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SlowdownBlipcontrol = 1053,

        /// <summary>
        /// Limit checked 0 - 5000
        /// Start = 1054, End = 1054, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SLEMAlarmLevelMV = 1054,

        /// <summary>
        /// Limit checked 0 - 1000
        /// Start = 1055, End = 1055, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SLEMHysteresisMV = 1055,

        /// <summary>
        /// Limit checked 0 - 3600
        /// Start = 1056, End = 1056, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SLEMAlarmDelaySeconds = 1056,

        /// <summary>
        /// Set to 1 to clear the MAN table  in FRAM and on the SD Card
        /// Start = 1061, End = 1061, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        ClearMANTable = 1061,

        /// <summary>
        /// NOT USED
        /// Start = 1062, End = 1062, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        TableConfigOperationComplete = 1062,

        /// <summary>
        /// 3 = Compensation offset A table (Limit checked -2000 to 2000),
        /// 4 = Compensation offset B table (Limit checked -2000 to 2000),
        /// 5 to 154 = Speed comp table per speed point (0 - 149)
        /// Start = 1063, End = 1063, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        TableConfigType = 1063,

        /// <summary>
        /// Registers for reading or writing table as set by register 1063
        /// Start = 1064, End = 1091, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        TableRegisters = 1064,

        /// <summary>
        /// Set to 1 to reset prewarning levels on any replaced sensors
        /// Start = 1093, End = 1093, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        PreWarningResetForReplaced = 1093,

        /// <summary>
        /// Live pre compensated values
        /// Start = 1094, End = 1121, DataType=INT, Read/Write=R, Format=Microns
        /// </summary>
        MicronsRealTimeDuringDcMode = 1094,

        /// <summary>
        /// 
        /// Start = 1122, End = 1149, DataType=UINT, Read/Write=R, Format=uA
        /// </summary>
        UAValuesRealTimeDuringDcMode = 1122,

        /// <summary>
        /// 
        /// Start = 1150, End = 1177, DataType=UINT, Read/Write=R, Format=Microns
        /// </summary>
        OffsetARealTimeAccess = 1150,

        /// <summary>
        /// HOW DOES THIS WORK ?
        /// Start = 2000, End = 2000, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SDEventID = 2000,

        /// <summary>
        /// Set to 1 to setup all the default event message from ROM to SD Card
        /// Start = 2025, End = 2025, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        SetAllEventsToDefault = 2025,

        /// <summary>
        /// Set to 1 to initialise firing order calibration
        /// Start = 2026, End = 2026, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        InitFiringOrderCalibration = 2026,

        /// <summary>
        /// Set to 1 to clear firing order
        /// Start = 2027, End = 2027, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        ClearEngineFiringOrderCalibration = 2027,

        /// <summary>
        /// Read or set firing order of engine
        /// Start = 2028, End = 2034, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        FiringOrderRegisters = 2028,

        /// <summary>
        /// Number of sensors on system - this can be split across SPU's (Limit checked 0 - 28)
        /// Start = 2048, End = 2048, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        NumberOfSensors = 2048,

        /// <summary>
        /// Number of sensors on SPU 1 (Limit checked 0 - 14)
        /// Start = 2049, End = 2049, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        NumberOfSensorsSPU1 = 2049,

        /// <summary>
        /// Number of sensors on SPU 2 (Limit checked 0 - 14)
        /// Start = 2050, End = 2050, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        NumberOfSensorsSPU2 = 2050,

        /// <summary>
        /// Sensor hysteresis (Limit checked 0 - 2500)
        /// Start = 2051, End = 2051, DataType=UINT, Read/Write=W/R, Format=Microns
        /// </summary>
        SensorHysteresis = 2051,

        /// <summary>
        /// Sensor hysteresis (Limit checked 0 - 2500)
        /// Start = 2052, End = 2052, DataType=UINT, Read/Write=W/R, Format=Microns
        /// </summary>
        CylinderHysteresis = 2052,

        /// <summary>
        /// Sensor slowdown Level (Limit checked 0 - 2500)
        /// Start = 2053, End = 2053, DataType=UINT, Read/Write=W/R, Format=Microns
        /// </summary>
        SensorSlowDownLevel = 2053,

        /// <summary>
        /// Sensor alarm Level (Limit checked 0 - 2500)
        /// Start = 2054, End = 2054, DataType=UINT, Read/Write=W/R, Format=Microns
        /// </summary>
        SensorAlarmLevel = 2054,

        /// <summary>
        /// Sensor deviation slow down level during calibration (Limit checked 0 - 2500)
        /// Start = 2055, End = 2055, DataType=UINT, Read/Write=W/R, Format=Microns
        /// </summary>
        SensorDeviationSlowDownLevelCalibration = 2055,

        /// <summary>
        /// Sensor deviation alarm level during calibration (Limit checked 0 - 2500)
        /// Start = 2056, End = 2056, DataType=UINT, Read/Write=W/R, Format=Microns
        /// </summary>
        SensorDeviationAlarmLevelCalibration = 2056,

        /// <summary>
        /// Sensor deviation slow down level (Limit checked 0 - 2500)
        /// Start = 2057, End = 2057, DataType=UINT, Read/Write=W/R, Format=Microns
        /// </summary>
        SensorDeviationSlowDownLevel = 2057,

        /// <summary>
        /// Sensor deviation alarm level (Limit checked 0 - 2500)
        /// Start = 2058, End = 2058, DataType=UINT, Read/Write=W/R, Format=Microns
        /// </summary>
        SensorDeviationAlarmLevel = 2058,

        /// <summary>
        /// Cylinder alarm level (Limit checked 0 - 2500)
        /// Start = 2059, End = 2059, DataType=UINT, Read/Write=W/R, Format=Microns
        /// </summary>
        CylinderAlarmLevel = 2059,

        /// <summary>
        /// NOT USED
        /// Start = 2060, End = 2060, DataType=, Read/Write=, Format=
        /// </summary>
        SlowdownAcknowledgement = 2060,

        /// <summary>
        /// NOT USED
        /// Start = 2061, End = 2061, DataType=, Read/Write=, Format=
        /// </summary>
        AlarmAcknowledgement = 2061,

        /// <summary>
        /// Nominal engine speed (Limit checked 50 -167)
        /// Start = 2062, End = 2062, DataType=UINT, Read/Write=W/R, Format=rpm
        /// </summary>
        NominalEngineSpeed = 2062,

        /// <summary>
        /// Clear calibration alarms
        /// Start = 2063, End = 2063, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        ClearCalibrationAlarms = 2063,

        /// <summary>
        /// WIO upper alarm level (Limit checked 0 - 10100)
        /// Start = 2064, End = 2064, DataType=UINT, Read/Write=W/R, Format=aw
        /// </summary>
        WIOUpperAlarm = 2064,

        /// <summary>
        /// WIO alarm level (Limit checked 0 - 10100)
        /// Start = 2065, End = 2065, DataType=UINT, Read/Write=W/R, Format=aw
        /// </summary>
        WIOAlarm = 2065,

        /// <summary>
        /// WIO alarm hysteresis (Limit checked 0 - 10100)
        /// Start = 2066, End = 2066, DataType=UINT, Read/Write=W/R, Format=aw
        /// </summary>
        WIOHysteresis = 2066,

        /// <summary>
        /// Alarm reflash time (Limit checked 0 - 60)
        /// Start = 2067, End = 2067, DataType=UINT, Read/Write=W/R, Format=secs
        /// </summary>
        AlarmReflash = 2067,

        /// <summary>
        /// MAN filter co-efficient * 1000 i.e. 50 = 0.05 (Limit checked 50 - 2000)
        /// Start = 2068, End = 2068, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        MANFilterCoEfficient = 2068,

        /// <summary>
        /// Pre warning timer (Limit checked 1 - 1000)
        /// Start = 2069, End = 2069, DataType=UINT, Read/Write=W/R, Format=minutes
        /// </summary>
        PreWarningTimer = 2069,

        /// <summary>
        /// Pre warning level (Limit checked 0 - 2500)
        /// Start = 2070, End = 2070, DataType=UINT, Read/Write=W/R, Format=microns
        /// </summary>
        PreWarningLevel = 2070,

        /// <summary>
        /// Hours run in minutes
        /// Start = 2071, End = 2072, DataType=ULONG, Read/Write=W/R, Format=minutes
        /// </summary>
        EngineRunTime = 2071,

        /// <summary>
        /// Calculated value of engine speed 20% based on nominal
        /// Start = 2073, End = 2073, DataType=UINT, Read/Write=R, Format=rpm
        /// </summary>
        Engine20PercentSpeedPoint = 2073,

        /// <summary>
        /// If on rechecking direction during calibration 1 = problem , this is no longer done NOT USED
        /// Start = 2074, End = 2074, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        DirectionCalError = 2074,

        /// <summary>
        /// MAN minimum number of samples for a point to be recognised at final calibration (Limit checked 1 - 5000)
        /// Start = 2075, End = 2075, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        MANMinimumSamples = 2075,

        /// <summary>
        /// Sensor slow down level during calibration (Limit checked 0 - 2500)
        /// Start = 2076, End = 2076, DataType=UINT, Read/Write=W/R, Format=Microns
        /// </summary>
        SensorSlowDownLevelCalibration = 2076,

        /// <summary>
        /// Sensor alarm level during calibration (Limit checked 0 - 2500)
        /// Start = 2077, End = 2077, DataType=UINT, Read/Write=W/R, Format=Microns
        /// </summary>
        SensorAlarmLevelCalibration = 2077,

        /// <summary>
        /// Cylinder alarm level during calibration (Limit checked 0 - 2500)
        /// Start = 2078, End = 2078, DataType=UINT, Read/Write=W/R, Format=Microns
        /// </summary>
        CylinderAlarmLevelCalibration = 2078,

        /// <summary>
        /// Current setpoint
        /// Start = 2079, End = 2079, DataType=UINT, Read/Write=R, Format=Microns
        /// </summary>
        SensorSlowDownLevel_2 = 2079,

        /// <summary>
        /// Current setpoint
        /// Start = 2080, End = 2080, DataType=UINT, Read/Write=R, Format=Microns
        /// </summary>
        SensorAlarmLevel_2 = 2080,

        /// <summary>
        /// Current setpoint
        /// Start = 2081, End = 2081, DataType=UINT, Read/Write=R, Format=Microns
        /// </summary>
        SensorDevSlowDownLevel = 2081,

        /// <summary>
        /// Current setpoint
        /// Start = 2082, End = 2082, DataType=UINT, Read/Write=R, Format=Microns
        /// </summary>
        SensorAlarmDeviationLevel = 2082,

        /// <summary>
        /// Current setpoint
        /// Start = 2083, End = 2083, DataType=UINT, Read/Write=R, Format=Microns
        /// </summary>
        CylinderAlarmLevel_2 = 2083,

        /// <summary>
        /// WIO scaled min
        /// Start = 2084, End = 2084, DataType=INT, Read/Write=W/R, Format=
        /// </summary>
        WIOScaledMin = 2084,

        /// <summary>
        /// WIO scaled max
        /// Start = 2085, End = 2085, DataType=INT, Read/Write=W/R, Format=
        /// </summary>
        WIOScaledMax = 2085,

        /// <summary>
        /// WIO units 0=aW / 1=% / 2=ppm
        /// Start = 2086, End = 2086, DataType=INT, Read/Write=W/R, Format=
        /// </summary>
        WIOUnits = 2086,

        /// <summary>
        /// Limit checked 0 - 21000
        /// Start = 2087, End = 2087, DataType=UNIT, Read/Write=W/R, Format=uA
        /// </summary>
        DCModeIdealLo = 2087,

        /// <summary>
        /// Limit checked 0 - 21000
        /// Start = 2088, End = 2088, DataType=UNIT, Read/Write=W/R, Format=uA
        /// </summary>
        DCModeIdealHi = 2088,

        /// <summary>
        /// Limit checked 0 - 21000
        /// Start = 2089, End = 2089, DataType=UNIT, Read/Write=W/R, Format=uA
        /// </summary>
        DCModeOkLo = 2089,

        /// <summary>
        /// Limit checked 0 - 21000
        /// Start = 2090, End = 2090, DataType=UNIT, Read/Write=W/R, Format=uA
        /// </summary>
        DCModeOkHi = 2090,

        /// <summary>
        /// Limit checked 0 - 21000
        /// Start = 2091, End = 2091, DataType=UNIT, Read/Write=W/R, Format=uA
        /// </summary>
        DCModeCylindercomparisonMax = 2091,

        /// <summary>
        /// Limit checked 0 - 21000
        /// Start = 2092, End = 2092, DataType=UNIT, Read/Write=W/R, Format=uA
        /// </summary>
        DCModeCylindercomparisonThreshold = 2092,

        /// <summary>
        /// 0 = White / 1 = Red
        /// Start = 2999, End = 2999, DataType=UNIT, Read/Write=R, Format=
        /// </summary>
        SpeedInBand = 2999,

        /// <summary>
        /// 1 = Initial rough cal , 2 = Band 1 , 3 = Band 1 complete , 4 = Band 2 , 5 = Band 2 complete , 6 = Band 3, 7 = Fine cal (first point), 8 = Fine cal (500 hrs) , 9 = calibration complete, 10 = cal complete, 11 = cal abort , (GEN 2: 12 = engine direction not known)
        /// Start = 3000, End = 3000, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        CalibrationStage = 3000,

        /// <summary>
        /// NOT USED
        /// Start = 3001, End = 3001, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        CalibrationStatus = 3001,

        /// <summary>
        /// Limit checked 10 -110
        /// Start = 3002, End = 3002, DataType=UINT, Read/Write=W/R, Format=%
        /// </summary>
        RoughCalibrationSpeedBand1Lower = 3002,

        /// <summary>
        /// Limit checked 10 -110
        /// Start = 3003, End = 3003, DataType=UINT, Read/Write=W/R, Format=%
        /// </summary>
        RoughCalibrationSpeedBand1Upper = 3003,

        /// <summary>
        /// Limit checked 10 -110
        /// Start = 3004, End = 3004, DataType=UINT, Read/Write=W/R, Format=%
        /// </summary>
        RoughCalibrationSpeedBand2Lower = 3004,

        /// <summary>
        /// Limit checked 10 -110
        /// Start = 3005, End = 3005, DataType=UINT, Read/Write=W/R, Format=%
        /// </summary>
        RoughCalibrationSpeedBand2Upper = 3005,

        /// <summary>
        /// Limit checked 10 -110
        /// Start = 3006, End = 3006, DataType=UINT, Read/Write=W/R, Format=%
        /// </summary>
        RoughCalibrationSpeedBand3Lower = 3006,

        /// <summary>
        /// Limit checked 10 -110
        /// Start = 3007, End = 3007, DataType=UINT, Read/Write=W/R, Format=%
        /// </summary>
        RoughCalibrationSpeedBand3Upper = 3007,

        /// <summary>
        /// Initial slope co-efficient (Limit checked 10 - 1000)
        /// Start = 3008, End = 3008, DataType=UINT, Read/Write=W/R, Format=Microns
        /// </summary>
        InitialCalibrationSlope = 3008,

        /// <summary>
        /// Rough calibration timer for each band (Limit checked 1 - 60)
        /// Start = 3009, End = 3009, DataType=UINT, Read/Write=W/R, Format=minutes
        /// </summary>
        RoughCalibrationTimer = 3009,

        /// <summary>
        /// Total time for fine calibration (500hrs) (Limit checked 1 - 60000)
        /// Start = 3010, End = 3010, DataType=UINT, Read/Write=W/R, Format=hours
        /// </summary>
        LearningModeTotalTimer = 3010,

        /// <summary>
        /// Time for each fine calibration interval (50hrs) (Limit checked 1 - 6000)
        /// Start = 3011, End = 3011, DataType=UINT, Read/Write=W/R, Format=hours
        /// </summary>
        LearningModeIntervalTimer = 3011,

        /// <summary>
        /// Number of sample for each fine calibration point (Limit checked 1 - 5000)
        /// Start = 3012, End = 3012, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        FineCalibrationSamples = 3012,

        /// <summary>
        /// Time remaining in minutes for the learning calibration mode
        /// Start = 3013, End = 3013, DataType=UINT, Read/Write=R, Format=minutes
        /// </summary>
        LearningTimeLeft = 3013,

        /// <summary>
        /// Time remaining in current interval (50 hr interval)
        /// Start = 3014, End = 3014, DataType=UINT, Read/Write=R, Format=minutes
        /// </summary>
        IntervalTimeLeft = 3014,

        /// <summary>
        /// Percentage of time remaining in current stage
        /// Start = 3015, End = 3015, DataType=UINT, Read/Write=R, Format=%
        /// </summary>
        CurrentStagePercentageRemaining = 3015,

        /// <summary>
        /// Number of RPM points in table
        /// Start = 3016, End = 3016, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        RPMPoints = 3016,

        /// <summary>
        /// Number of valid RPM points
        /// Start = 3017, End = 3017, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        ValidPoints = 3017,

        /// <summary>
        /// Calculated stage RPM
        /// Start = 3018, End = 3018, DataType=UINT, Read/Write=R, Format=rpm
        /// </summary>
        RoughCalibrationSpeedBand1RpmMin = 3018,

        /// <summary>
        /// Calculated stage RPM
        /// Start = 3019, End = 3019, DataType=UINT, Read/Write=R, Format=rpm
        /// </summary>
        RoughCalibrationSpeedBand1RpmMax = 3019,

        /// <summary>
        /// Calculated stage RPM
        /// Start = 3020, End = 3020, DataType=UINT, Read/Write=R, Format=rpm
        /// </summary>
        RoughCalibrationSpeedBand2RpmMin = 3020,

        /// <summary>
        /// Calculated stage RPM
        /// Start = 3021, End = 3021, DataType=UINT, Read/Write=R, Format=rpm
        /// </summary>
        RoughCalibrationSpeedBand2RpmMax = 3021,

        /// <summary>
        /// Calculated stage RPM
        /// Start = 3022, End = 3022, DataType=UINT, Read/Write=R, Format=rpm
        /// </summary>
        RoughCalibrationSpeedBand3RpmMin = 3022,

        /// <summary>
        /// Calculated stage RPM
        /// Start = 3023, End = 3023, DataType=UINT, Read/Write=R, Format=rpm
        /// </summary>
        RoughCalibrationSpeedBand3RpmMax = 3023,

        /// <summary>
        /// 1 = New man table available, set to 0 after reading MAN table
        /// Start = 3024, End = 3024, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        NewManTableAvailable = 3024,

        /// <summary>
        /// 
        /// Start = 3025, End = 3025, DataType=UINT, Read/Write=W/R, Format=BCD
        /// </summary>
        CalibrationCompleteYearMonth = 3025,

        /// <summary>
        /// 
        /// Start = 3026, End = 3026, DataType=UINT, Read/Write=W/R, Format=BCD
        /// </summary>
        CalibrationCompleteDateHours = 3026,

        /// <summary>
        /// 
        /// Start = 3027, End = 3027, DataType=UINT, Read/Write=W/R, Format=BCD
        /// </summary>
        CalibrationCompleteMinsSecs = 3027,

        /// <summary>
        /// 
        /// Start = 3028, End = 3028, DataType=UINT, Read/Write=W/R, Format=BCD
        /// </summary>
        VerificationYearMonth = 3028,

        /// <summary>
        /// 
        /// Start = 3029, End = 3029, DataType=UINT, Read/Write=W/R, Format=BCD
        /// </summary>
        VerificationDateHours = 3029,

        /// <summary>
        /// 
        /// Start = 3030, End = 3030, DataType=UINT, Read/Write=W/R, Format=BCD
        /// </summary>
        VerificationMinsSecs = 3030,

        /// <summary>
        /// 
        /// Start = 3031, End = 4095, DataType=, Read/Write=, Format=
        /// </summary>
        SPARE = 3031,

        /// <summary>
        /// 1 to 150 selects accumulated value for each speed point in MAN table
        /// 151 to 153 selects accumulated speed points.
        /// Start = 4096, End = 4096, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SpeedAccumulatedTableConfig = 4096,

        /// <summary>
        /// 
        /// Start = 4098, End = 4099, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition1 = 4098,

        /// <summary>
        /// 
        /// Start = 4100, End = 4101, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition2 = 4100,

        /// <summary>
        /// 
        /// Start = 4102, End = 4103, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition3 = 4102,

        /// <summary>
        /// 
        /// Start = 4104, End = 4105, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition4 = 4104,

        /// <summary>
        /// 
        /// Start = 4106, End = 4107, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition5 = 4106,

        /// <summary>
        /// 
        /// Start = 4108, End = 4109, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition6 = 4108,

        /// <summary>
        /// 
        /// Start = 4110, End = 4111, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition7 = 4110,

        /// <summary>
        /// 
        /// Start = 4112, End = 4113, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition8 = 4112,

        /// <summary>
        /// 
        /// Start = 4114, End = 4115, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition9 = 4114,

        /// <summary>
        /// 
        /// Start = 4116, End = 4117, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition10 = 4116,

        /// <summary>
        /// 
        /// Start = 4118, End = 4119, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition11 = 4118,

        /// <summary>
        /// 
        /// Start = 4120, End = 4121, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition12 = 4120,

        /// <summary>
        /// 
        /// Start = 4122, End = 4123, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition13 = 4122,

        /// <summary>
        /// 
        /// Start = 4124, End = 4125, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition14 = 4124,

        /// <summary>
        /// 
        /// Start = 4126, End = 4127, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition15 = 4126,

        /// <summary>
        /// 
        /// Start = 4128, End = 4129, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition16 = 4128,

        /// <summary>
        /// 
        /// Start = 4130, End = 4131, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition17 = 4130,

        /// <summary>
        /// 
        /// Start = 4132, End = 4133, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition18 = 4132,

        /// <summary>
        /// 
        /// Start = 4134, End = 4135, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition19 = 4134,

        /// <summary>
        /// 
        /// Start = 4136, End = 4137, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition20 = 4136,

        /// <summary>
        /// 
        /// Start = 4138, End = 4139, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition21 = 4138,

        /// <summary>
        /// 
        /// Start = 4140, End = 4141, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition22 = 4140,

        /// <summary>
        /// 
        /// Start = 4142, End = 4143, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition23 = 4142,

        /// <summary>
        /// 
        /// Start = 4144, End = 4145, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition24 = 4144,

        /// <summary>
        /// 
        /// Start = 4146, End = 4147, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition25 = 4146,

        /// <summary>
        /// 
        /// Start = 4148, End = 4149, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition26 = 4148,

        /// <summary>
        /// 
        /// Start = 4150, End = 4151, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition27 = 4150,

        /// <summary>
        /// 
        /// Start = 4152, End = 4153, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        TablePosition28 = 4152,

        /// <summary>
        /// 
        /// Start = 4154, End = 4155, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint1 = 4154,

        /// <summary>
        /// 
        /// Start = 4156, End = 4157, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint2 = 4156,

        /// <summary>
        /// 
        /// Start = 4158, End = 4159, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint3 = 4158,

        /// <summary>
        /// 
        /// Start = 4160, End = 4161, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint4 = 4160,

        /// <summary>
        /// 
        /// Start = 4162, End = 4163, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint5 = 4162,

        /// <summary>
        /// 
        /// Start = 4164, End = 4165, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint6 = 4164,

        /// <summary>
        /// 
        /// Start = 4166, End = 4167, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint7 = 4166,

        /// <summary>
        /// 
        /// Start = 4168, End = 4169, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint8 = 4168,

        /// <summary>
        /// 
        /// Start = 4170, End = 4171, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint9 = 4170,

        /// <summary>
        /// 
        /// Start = 4172, End = 4173, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint10 = 4172,

        /// <summary>
        /// 
        /// Start = 4174, End = 4175, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint11 = 4174,

        /// <summary>
        /// 
        /// Start = 4176, End = 4177, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint12 = 4176,

        /// <summary>
        /// 
        /// Start = 4178, End = 4179, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint13 = 4178,

        /// <summary>
        /// 
        /// Start = 4180, End = 4181, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint14 = 4180,

        /// <summary>
        /// 
        /// Start = 4182, End = 4183, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint15 = 4182,

        /// <summary>
        /// 
        /// Start = 4184, End = 4185, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint16 = 4184,

        /// <summary>
        /// 
        /// Start = 4186, End = 4187, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint17 = 4186,

        /// <summary>
        /// 
        /// Start = 4188, End = 4189, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint18 = 4188,

        /// <summary>
        /// 
        /// Start = 4190, End = 4191, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint19 = 4190,

        /// <summary>
        /// 
        /// Start = 4192, End = 4193, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint20 = 4192,

        /// <summary>
        /// 
        /// Start = 4194, End = 4195, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint21 = 4194,

        /// <summary>
        /// 
        /// Start = 4196, End = 4197, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint22 = 4196,

        /// <summary>
        /// 
        /// Start = 4198, End = 4199, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint23 = 4198,

        /// <summary>
        /// 
        /// Start = 4200, End = 4201, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint24 = 4200,

        /// <summary>
        /// 
        /// Start = 4202, End = 4203, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint25 = 4202,

        /// <summary>
        /// 
        /// Start = 4204, End = 4205, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint26 = 4204,

        /// <summary>
        /// 
        /// Start = 4206, End = 4207, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint27 = 4206,

        /// <summary>
        /// 
        /// Start = 4208, End = 4209, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint28 = 4208,

        /// <summary>
        /// 
        /// Start = 4210, End = 4211, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint29 = 4210,

        /// <summary>
        /// 
        /// Start = 4212, End = 4213, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint30 = 4212,

        /// <summary>
        /// 
        /// Start = 4214, End = 4215, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint31 = 4214,

        /// <summary>
        /// 
        /// Start = 4216, End = 4217, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint32 = 4216,

        /// <summary>
        /// 
        /// Start = 4218, End = 4219, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint33 = 4218,

        /// <summary>
        /// 
        /// Start = 4220, End = 4221, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint34 = 4220,

        /// <summary>
        /// 
        /// Start = 4222, End = 4223, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint35 = 4222,

        /// <summary>
        /// 
        /// Start = 4224, End = 4225, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint36 = 4224,

        /// <summary>
        /// 
        /// Start = 4226, End = 4227, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint37 = 4226,

        /// <summary>
        /// 
        /// Start = 4228, End = 4229, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint38 = 4228,

        /// <summary>
        /// 
        /// Start = 4230, End = 4231, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint39 = 4230,

        /// <summary>
        /// 
        /// Start = 4232, End = 4233, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint40 = 4232,

        /// <summary>
        /// 
        /// Start = 4234, End = 4235, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint41 = 4234,

        /// <summary>
        /// 
        /// Start = 4236, End = 4237, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint42 = 4236,

        /// <summary>
        /// 
        /// Start = 4238, End = 4239, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint43 = 4238,

        /// <summary>
        /// 
        /// Start = 4240, End = 4241, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint44 = 4240,

        /// <summary>
        /// 
        /// Start = 4242, End = 4243, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint45 = 4242,

        /// <summary>
        /// 
        /// Start = 4244, End = 4245, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint46 = 4244,

        /// <summary>
        /// 
        /// Start = 4246, End = 4247, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint47 = 4246,

        /// <summary>
        /// 
        /// Start = 4248, End = 4249, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint48 = 4248,

        /// <summary>
        /// 
        /// Start = 4250, End = 4251, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint49 = 4250,

        /// <summary>
        /// 
        /// Start = 4252, End = 4253, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint50 = 4252,

        /// <summary>
        /// 
        /// Start = 4254, End = 4255, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint51 = 4254,

        /// <summary>
        /// 
        /// Start = 4256, End = 4257, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint52 = 4256,

        /// <summary>
        /// 
        /// Start = 4258, End = 4259, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint53 = 4258,

        /// <summary>
        /// 
        /// Start = 4260, End = 4261, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint54 = 4260,

        /// <summary>
        /// 
        /// Start = 4262, End = 4263, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint55 = 4262,

        /// <summary>
        /// 
        /// Start = 4264, End = 4265, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint56 = 4264,

        /// <summary>
        /// 
        /// Start = 4266, End = 4267, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint57 = 4266,

        /// <summary>
        /// 
        /// Start = 4268, End = 4269, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint58 = 4268,

        /// <summary>
        /// 
        /// Start = 4270, End = 4271, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint59 = 4270,

        /// <summary>
        /// 
        /// Start = 4272, End = 4273, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint60 = 4272,

        /// <summary>
        /// 
        /// Start = 4274, End = 4275, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint61 = 4274,

        /// <summary>
        /// 
        /// Start = 4276, End = 4277, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint62 = 4276,

        /// <summary>
        /// 
        /// Start = 4278, End = 4279, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint63 = 4278,

        /// <summary>
        /// 
        /// Start = 4280, End = 4281, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint64 = 4280,

        /// <summary>
        /// 
        /// Start = 4282, End = 4283, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint65 = 4282,

        /// <summary>
        /// 
        /// Start = 4284, End = 4285, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint66 = 4284,

        /// <summary>
        /// 
        /// Start = 4286, End = 4287, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint67 = 4286,

        /// <summary>
        /// 
        /// Start = 4288, End = 4289, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint68 = 4288,

        /// <summary>
        /// 
        /// Start = 4290, End = 4291, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint69 = 4290,

        /// <summary>
        /// 
        /// Start = 4292, End = 4293, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint70 = 4292,

        /// <summary>
        /// 
        /// Start = 4294, End = 4295, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint71 = 4294,

        /// <summary>
        /// 
        /// Start = 4296, End = 4297, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint72 = 4296,

        /// <summary>
        /// 
        /// Start = 4298, End = 4299, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint73 = 4298,

        /// <summary>
        /// 
        /// Start = 4300, End = 4301, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint74 = 4300,

        /// <summary>
        /// 
        /// Start = 4302, End = 4303, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint75 = 4302,

        /// <summary>
        /// 
        /// Start = 4304, End = 4305, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint76 = 4304,

        /// <summary>
        /// 
        /// Start = 4306, End = 4307, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint77 = 4306,

        /// <summary>
        /// 
        /// Start = 4308, End = 4309, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint78 = 4308,

        /// <summary>
        /// 
        /// Start = 4310, End = 4311, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint79 = 4310,

        /// <summary>
        /// 
        /// Start = 4312, End = 4313, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint80 = 4312,

        /// <summary>
        /// 
        /// Start = 4314, End = 4315, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint81 = 4314,

        /// <summary>
        /// 
        /// Start = 4316, End = 4317, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint82 = 4316,

        /// <summary>
        /// 
        /// Start = 4318, End = 4319, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint83 = 4318,

        /// <summary>
        /// 
        /// Start = 4320, End = 4321, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint84 = 4320,

        /// <summary>
        /// 
        /// Start = 4322, End = 4323, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint85 = 4322,

        /// <summary>
        /// 
        /// Start = 4324, End = 4325, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint86 = 4324,

        /// <summary>
        /// 
        /// Start = 4326, End = 4327, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint87 = 4326,

        /// <summary>
        /// 
        /// Start = 4328, End = 4329, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint88 = 4328,

        /// <summary>
        /// 
        /// Start = 4330, End = 4331, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint89 = 4330,

        /// <summary>
        /// 
        /// Start = 4332, End = 4333, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint90 = 4332,

        /// <summary>
        /// 
        /// Start = 4334, End = 4335, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint91 = 4334,

        /// <summary>
        /// 
        /// Start = 4336, End = 4337, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint92 = 4336,

        /// <summary>
        /// 
        /// Start = 4338, End = 4339, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint93 = 4338,

        /// <summary>
        /// 
        /// Start = 4340, End = 4341, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint94 = 4340,

        /// <summary>
        /// 
        /// Start = 4342, End = 4343, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint95 = 4342,

        /// <summary>
        /// 
        /// Start = 4344, End = 4345, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint96 = 4344,

        /// <summary>
        /// 
        /// Start = 4346, End = 4347, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint97 = 4346,

        /// <summary>
        /// 
        /// Start = 4348, End = 4349, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint98 = 4348,

        /// <summary>
        /// 
        /// Start = 4350, End = 4351, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint99 = 4350,

        /// <summary>
        /// 
        /// Start = 4352, End = 4353, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint100 = 4352,

        /// <summary>
        /// 
        /// Start = 4354, End = 4355, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint101 = 4354,

        /// <summary>
        /// 
        /// Start = 4356, End = 4357, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint102 = 4356,

        /// <summary>
        /// 
        /// Start = 4358, End = 4359, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint103 = 4358,

        /// <summary>
        /// 
        /// Start = 4360, End = 4361, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint104 = 4360,

        /// <summary>
        /// 
        /// Start = 4362, End = 4363, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint105 = 4362,

        /// <summary>
        /// 
        /// Start = 4364, End = 4365, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint106 = 4364,

        /// <summary>
        /// 
        /// Start = 4366, End = 4367, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint107 = 4366,

        /// <summary>
        /// 
        /// Start = 4368, End = 4369, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint108 = 4368,

        /// <summary>
        /// 
        /// Start = 4370, End = 4371, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint109 = 4370,

        /// <summary>
        /// 
        /// Start = 4372, End = 4373, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint110 = 4372,

        /// <summary>
        /// 
        /// Start = 4374, End = 4375, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint111 = 4374,

        /// <summary>
        /// 
        /// Start = 4376, End = 4377, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint112 = 4376,

        /// <summary>
        /// 
        /// Start = 4378, End = 4379, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint113 = 4378,

        /// <summary>
        /// 
        /// Start = 4380, End = 4381, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint114 = 4380,

        /// <summary>
        /// 
        /// Start = 4382, End = 4383, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint115 = 4382,

        /// <summary>
        /// 
        /// Start = 4384, End = 4385, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint116 = 4384,

        /// <summary>
        /// 
        /// Start = 4386, End = 4387, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint117 = 4386,

        /// <summary>
        /// 
        /// Start = 4388, End = 4389, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint118 = 4388,

        /// <summary>
        /// 
        /// Start = 4390, End = 4391, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint119 = 4390,

        /// <summary>
        /// 
        /// Start = 4392, End = 4393, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint120 = 4392,

        /// <summary>
        /// 
        /// Start = 4394, End = 4395, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint121 = 4394,

        /// <summary>
        /// 
        /// Start = 4396, End = 4397, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint122 = 4396,

        /// <summary>
        /// 
        /// Start = 4398, End = 4399, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint123 = 4398,

        /// <summary>
        /// 
        /// Start = 4400, End = 4401, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint124 = 4400,

        /// <summary>
        /// 
        /// Start = 4402, End = 4403, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint125 = 4402,

        /// <summary>
        /// 
        /// Start = 4404, End = 4405, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint126 = 4404,

        /// <summary>
        /// 
        /// Start = 4406, End = 4407, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint127 = 4406,

        /// <summary>
        /// 
        /// Start = 4408, End = 4409, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint128 = 4408,

        /// <summary>
        /// 
        /// Start = 4410, End = 4411, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint129 = 4410,

        /// <summary>
        /// 
        /// Start = 4412, End = 4413, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint130 = 4412,

        /// <summary>
        /// 
        /// Start = 4414, End = 4415, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint131 = 4414,

        /// <summary>
        /// 
        /// Start = 4416, End = 4417, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint132 = 4416,

        /// <summary>
        /// 
        /// Start = 4418, End = 4419, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint133 = 4418,

        /// <summary>
        /// 
        /// Start = 4420, End = 4421, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint134 = 4420,

        /// <summary>
        /// 
        /// Start = 4422, End = 4423, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint135 = 4422,

        /// <summary>
        /// 
        /// Start = 4424, End = 4425, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint136 = 4424,

        /// <summary>
        /// 
        /// Start = 4426, End = 4427, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint137 = 4426,

        /// <summary>
        /// 
        /// Start = 4428, End = 4429, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint138 = 4428,

        /// <summary>
        /// 
        /// Start = 4430, End = 4431, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint139 = 4430,

        /// <summary>
        /// 
        /// Start = 4432, End = 4433, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint140 = 4432,

        /// <summary>
        /// 
        /// Start = 4434, End = 4435, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint141 = 4434,

        /// <summary>
        /// 
        /// Start = 4436, End = 4437, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint142 = 4436,

        /// <summary>
        /// 
        /// Start = 4438, End = 4439, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint143 = 4438,

        /// <summary>
        /// 
        /// Start = 4440, End = 4441, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint144 = 4440,

        /// <summary>
        /// 
        /// Start = 4442, End = 4443, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint145 = 4442,

        /// <summary>
        /// 
        /// Start = 4444, End = 4445, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint146 = 4444,

        /// <summary>
        /// 
        /// Start = 4446, End = 4447, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint147 = 4446,

        /// <summary>
        /// 
        /// Start = 4448, End = 4449, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint148 = 4448,

        /// <summary>
        /// 
        /// Start = 4450, End = 4451, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint149 = 4450,

        /// <summary>
        /// 
        /// Start = 4452, End = 4453, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint150 = 4452,

        /// <summary>
        /// SHOULD NOT BE USED
        /// Start = 4454, End = 4455, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        NumOfPointsGatheredAtSpeedPoint151 = 4454,

        /// <summary>
        /// 1 = function enable/enabled. 0 = function disable/disabled
        /// Start = 4608, End = 4608, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        ApplyOffset = 4608,

        /// <summary>
        /// 1 = function enable/enabled. 0 = function disable/disabled
        /// Start = 4609, End = 4609, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SensorCompensation = 4609,

        /// <summary>
        /// 1 = function enable/enabled. 0 = function disable/disabled
        /// Start = 4610, End = 4610, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SensorNoiseRemoval = 4610,

        /// <summary>
        /// 1 = function enable/enabled. 0 = function disable/disabled
        /// Start = 4611, End = 4611, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        SensorDeviation = 4611,

        /// <summary>
        /// 1 = function enable/enabled. 0 = function disable/disabled
        /// Start = 4612, End = 4612, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        CylinderAverage = 4612,

        /// <summary>
        /// 1 = function enable/enabled. 0 = function disable/disabled
        /// Start = 4613, End = 4613, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        CylinderDeviation = 4613,

        /// <summary>
        /// 1 = function enable/enabled. 0 = function disable/disabled
        /// Start = 4614, End = 4614, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        UserRoughCal = 4614,

        /// <summary>
        /// 1 = function enable/enabled. 0 = function disable/disabled
        /// Start = 4615, End = 4615, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        VinCheckEnabled = 4615,

        /// <summary>
        /// Limit Checked 0 - 13
        /// Start = 4616, End = 4616, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        CrankcaseSplitDamageMonitoring = 4616,

        /// <summary>
        /// Limit Checked 1 - 65000
        /// Start = 4617, End = 4617, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        KValueDamageMonitoring = 4617,

        /// <summary>
        /// Limit Checked 1 - 10000
        /// Start = 4618, End = 4618, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        BetaValueDamageMonitoring = 4618,

        /// <summary>
        /// Limit Checked 1 - 65000
        /// Start = 4619, End = 4619, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        RpmLevelXDamageMonitoring = 4619,

        /// <summary>
        /// Limit Checked 1 - 65000
        /// Start = 4620, End = 4620, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        RefLevelXDamageMonitoring = 4620,

        /// <summary>
        /// Limit Checked 1 - 65000
        /// Start = 4621, End = 4621, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        PresentStateXDamageMonitoring = 4621,

        /// <summary>
        /// Limit Checked 10 - 1000
        /// Start = 4622, End = 4622, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        AlarmLevelSingleDamageMonitoring = 4622,

        /// <summary>
        /// Limit Checked 10 - 1000
        /// Start = 4623, End = 4623, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        AlarmLevelCylinderDamageMonitoring = 4623,

        /// <summary>
        /// Limit Checked 10 - 1000
        /// Start = 4624, End = 4624, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        AlarmLevelMBSumDamageMonitoring = 4624,

        /// <summary>
        /// Limit Checked 0 - 16383
        /// Start = 4625, End = 4625, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        CylinderNeighbourDamageMonitoring = 4625,

        /// <summary>
        /// Limit Checked 0 - 16383
        /// Start = 4626, End = 4626, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        MBNeighbourDamageMonitoring = 4626,

        /// <summary>
        /// Limit Checked 0 - 16383
        /// Start = 4627, End = 4627, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        CylinderNeighbourAlarmDamageMonitoring = 4627,

        /// <summary>
        /// Limit Checked 0 - 16383
        /// Start = 4628, End = 4628, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        MBNeighbourAlarmDamageMonitoring = 4628,

        /// <summary>
        /// Limit Checked 1 - 100
        /// Start = 4629, End = 4629, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        DeltaRpmLimitDamageMonitoring = 4629,

        /// <summary>
        /// Limit Checked 0 - 2500
        /// Start = 4630, End = 4630, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        HysteresisDamageMonitoring = 4630,

        /// <summary>
        /// Limit Checked 0 - 1 (0 = disabled,  1 = enabled)
        /// Start = 4631, End = 4631, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        DamageMonitoringEnableDisable = 4631,

        /// <summary>
        /// 
        /// Start = 4650, End = 4677, DataType=INT, Read/Write=R, Format=
        /// </summary>
        RefLevelPerChannelDamageMonitoring = 4650,

        /// <summary>
        /// 
        /// Start = 4678, End = 4705, DataType=INT, Read/Write=R, Format=
        /// </summary>
        PresentStatePerChannelDamageMonitoring = 4678,

        /// <summary>
        /// 
        /// Start = 4706, End = 4733, DataType=INT, Read/Write=R, Format=
        /// </summary>
        RefValuePerChannelDamageMonitoring = 4706,

        /// <summary>
        /// 
        /// Start = 4734, End = 4747, DataType=INT, Read/Write=R, Format=
        /// </summary>
        CylinderSumPerCylinderDamageMonitoring = 4734,

        /// <summary>
        /// 
        /// Start = 4748, End = 4761, DataType=INT, Read/Write=R, Format=
        /// </summary>
        MBNeighbourSumPerCylinderDamageMonitoring = 4748,

        /// <summary>
        /// 
        /// Start = 4762, End = 4762, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        SingleAlarmBits116DamageMonitoring = 4762,

        /// <summary>
        /// 
        /// Start = 4763, End = 4763, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        CylinderAlarmBitsDamageMonitoring = 4763,

        /// <summary>
        /// 
        /// Start = 4764, End = 4764, DataType=INT, Read/Write=R, Format=
        /// </summary>
        MBNeighbourAlarmBitsDamageMonitoring = 4764,

        /// <summary>
        /// 
        /// Start = 4765, End = 4765, DataType=INT, Read/Write=R, Format=
        /// </summary>
        DeltaRpmDamageMonitoring = 4765,

        /// <summary>
        /// 
        /// Start = 4766, End = 4766, DataType=INT, Read/Write=R, Format=
        /// </summary>
        RPMAvDamageMonitoring = 4766,

        /// <summary>
        /// 
        /// Start = 4767, End = 4767, DataType=INT, Read/Write=R, Format=
        /// </summary>
        DeltaRPMPreviousDamageMonitoring = 4767,

        /// <summary>
        /// 
        /// Start = 4768, End = 4768, DataType=INT, Read/Write=R, Format=
        /// </summary>
        DynamicAlarmLevelsSingleDamageMonitoring = 4768,

        /// <summary>
        /// 
        /// Start = 4769, End = 4769, DataType=INT, Read/Write=R, Format=
        /// </summary>
        DynamicAlarmLevelsCylDamageMonitoring = 4769,

        /// <summary>
        /// 
        /// Start = 4770, End = 4770, DataType=INT, Read/Write=R, Format=
        /// </summary>
        DynamicAlarmLevelsMbsumDamageMonitoring = 4770,

        /// <summary>
        /// 
        /// Start = 4771, End = 4771, DataType=INT, Read/Write=R, Format=
        /// </summary>
        DynamicAlarmLevelsSingleprevDamageMonitoring = 4771,

        /// <summary>
        /// 
        /// Start = 4772, End = 4772, DataType=INT, Read/Write=R, Format=
        /// </summary>
        DynamicAlarmLevelsCylprevDamageMonitoring = 4772,

        /// <summary>
        /// 
        /// Start = 4773, End = 4773, DataType=INT, Read/Write=R, Format=
        /// </summary>
        DynamicAlarmLevelsMbsumprevDamageMonitoring = 4773,

        /// <summary>
        /// 
        /// Start = 4774, End = 4774, DataType=INT, Read/Write=R, Format=
        /// </summary>
        DynamicAlarmLevelsSingle1DamageMonitoring = 4774,

        /// <summary>
        /// 
        /// Start = 4775, End = 4775, DataType=INT, Read/Write=R, Format=
        /// </summary>
        DynamicAlarmLevelsCyl1DamageMonitoring = 4775,

        /// <summary>
        /// 
        /// Start = 4776, End = 4776, DataType=INT, Read/Write=R, Format=
        /// </summary>
        DynamicAlarmLevelsMbsum1DamageMonitoring = 4776,

        /// <summary>
        /// 
        /// Start = 4777, End = 4777, DataType=INT, Read/Write=R, Format=
        /// </summary>
        DynamicAlarmLevelsSingle2DamageMonitoring = 4777,

        /// <summary>
        /// 
        /// Start = 4778, End = 4778, DataType=INT, Read/Write=R, Format=
        /// </summary>
        DynamicAlarmLevelsCyl2DamageMonitoring = 4778,

        /// <summary>
        /// 
        /// Start = 4779, End = 4779, DataType=INT, Read/Write=R, Format=
        /// </summary>
        DynamicAlarmLevelsMbsum2DamageMonitoring = 4779,

        /// <summary>
        /// This is an error currently this ULONG is returned as an INT
        /// Start = 4780, End = 4780, DataType=ULONG, Read/Write=R, Format=
        /// </summary>
        DynamicAlarmLevelsHitsDamageMonitoring = 4780,

        /// <summary>
        /// 
        /// Start = 4781, End = 4781, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        SingleAlarmBits1728DamageMonitoring = 4781,

        /// <summary>
        /// 
        /// Start = 4782, End = 4783, DataType=ULONG, Read/Write=R, Format=
        /// </summary>
        DynamicAlarmLevelsHitsDamageMonitoring_2 = 4782,

        /// <summary>
        /// 8 char directory name on card
        /// Start = 8192, End = 8195, DataType=STRING, Read/Write=W/R, Format=
        /// </summary>
        DirectoryName = 8192,

        /// <summary>
        /// Get the first filename in the selected directory
        /// Start = 8196, End = 8196, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        GetFirstFile = 8196,

        /// <summary>
        /// Get the next filename in the selected directory
        /// Start = 8197, End = 8197, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        GetNextFile = 8197,

        /// <summary>
        /// Max. 11 char file name, char 12 should always be null (0)
        /// Start = 8198, End = 8203, DataType=STRING, Read/Write=W/R, Format=
        /// </summary>
        FileName = 8198,

        /// <summary>
        /// 
        /// Start = 8204, End = 8205, DataType=LONG, Read/Write=R, Format=
        /// </summary>
        NumberOfWordsInFile = 8204,

        /// <summary>
        /// 
        /// Start = 8206, End = 8206, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        NumberOfWordsToRead = 8206,

        /// <summary>
        /// 
        /// Start = 8207, End = 8208, DataType=LONG, Read/Write=W/R, Format=
        /// </summary>
        OffsetIntoFile = 8207,

        /// <summary>
        /// Set to 1 to read/write. Set to 0 to finish
        /// Start = 8209, End = 8209, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        StartFileTransfer = 8209,

        /// <summary>
        /// 1 = File transfer in progress
        /// Start = 8211, End = 8211, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        FileTransferInProgress = 8211,

        /// <summary>
        /// 127 word file data
        /// Start = 8212, End = 8338, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        FileTransferBuffer = 8212,

        /// <summary>
        /// TEST CODE (REMOVED GEN 2)
        /// Start = 65510, End = 65510, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        CreateMBNeighbourSlowdown = 65510,

        /// <summary>
        /// TEST CODE (REMOVED GEN 2)
        /// Start = 65511, End = 65511, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        CreateCylinderSlowdown = 65511,

        /// <summary>
        /// TEST CODE (REMOVED GEN 2)
        /// Start = 65512, End = 65512, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        CreateSensorSlowdown = 65512,

        /// <summary>
        /// TEST CODE (REMOVED GEN 2)
        /// Start = 65513, End = 65513, DataType=UINT, Read/Write=W, Format=
        /// </summary>
        ClearSlowdownAlarmsAndLoadDamageMonitoringDefaults = 65513,

        /// <summary>
        /// SPU Slave firmware version
        /// Start = 65534, End = 65534, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        SPUSlaveFirmwareVersion = 65534,

        /// <summary>
        /// SPU master firmware version
        /// Start = 65535, End = 65535, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        SPUMasterFirmwareVersion = 65535,

        /// <summary>
        /// Limit checked 0 - 1 (0 = disable CPP, 1 = enable CPP)
        /// Start = 4632, End = 4632, DataType=UINT, Read/Write=W/R, Format=
        /// </summary>
        CPPEnable = 4632,

        /// <summary>
        /// LCPP mA reading
        /// Start = 4638, End = 4638, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        CPPmA = 4638,

        /// <summary>
        /// LCPP % reading
        /// Start = 4639, End = 4639, DataType=UINT, Read/Write=R, Format=
        /// </summary>
        CPPPercent = 4639
    }
}
