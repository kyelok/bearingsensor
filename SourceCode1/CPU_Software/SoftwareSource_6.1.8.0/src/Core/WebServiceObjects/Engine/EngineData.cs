/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    public enum SLEMEnabled : ushort
    {
        Disabled = 0,
        Enabled = 1
    }

    public enum WIOEnabled : ushort
    {
        Disabled = 0,
        DigitalIOEnabled = 1,
        AnalogueIOEnabled = 2
    }

    public enum CPPEnabled : ushort
    {
        Disabled = 0,
        Enabled = 1
    }

    /// <summary>
    /// Data that needs to be kept up to date, regardless of cache
    /// </summary>
    [DataContract]
    public class EngineDataNonCached
    {
        /// <summary>
        /// A collection of flags that indicate the state of the SPUs digital outputs
        /// </summary>
        [DataMember]
        public bool[] SPUDigitalOutputs;
    }

    /// <summary>
    /// This class holds that data that
    /// is most commonly requested by the RIA.
    /// </summary>
    [DataContract]
    public class EngineData
    {
        /// <summary>
        /// The flag to indicate cylinder order of the engine
        /// </summary>
        [DataMember]
        public bool CylinderOrderReverse;

        /// <summary>
        /// The number of cylinders in the engine
        /// </summary>
        [DataMember]        
        public int Cylinders;

        /// <summary>
        /// The alarm levels
        /// </summary>
        [DataMember]
        public AlarmShutdownLevels AlarmShutdownLevels;

        /// <summary>
        /// The direction of the engine
        /// </summary>
        [DataMember]
        public Int16 EngineDirection;

        /// <summary>
        /// The data and time
        /// </summary>
        [DataMember]
        public DateTimeObject DateTime;

        /// <summary>
        /// An array of the cylinder values
        /// </summary>
        [DataMember]
        public Int16[] CylinderValues;
        
        /// <summary>
        /// An array of the cylinder deviation values
        /// </summary>
        [DataMember]
        public Int16[] CylinderDevValues;
                
        /// <summary>
        /// An array of sensor values
        /// </summary>
        [DataMember]
        public Int16[] SensorValues;
        
        /// <summary>
        /// An array of sensor deviation values
        /// </summary>
        [DataMember]
        public Int16[] SensorDevValues;

        /// <summary>
        /// The temperature sensor number
        /// </summary>
        [DataMember]
        public int TemperatureSensors;

        /// <summary>
        /// The id of the channel
        /// </summary>
        [DataMember]
        public int[] Id;

        /// <summary>
        /// The enable/disable of the channel
        /// </summary>
        [DataMember]
        public bool[] Enable;

        /// <summary>
        /// The Rtd lose connection of the channel
        /// </summary>
        [DataMember]
        public bool[] rtdGood;

        /// <summary>
        /// An array of the temperature values
        /// </summary>
        [DataMember]
        public Int16[] TemperatureChannelValue;

        /// <summary>
        /// An array of the temperature dev values
        /// </summary>
        [DataMember]
        public Int16[] TemperatureDevValue;

        /// <summary>
        /// An array of the temperature alarm
        /// </summary>
        [DataMember]
        public bool[] TemperatureAlarmArrary;

        /// <summary>
        /// An array of the temperature alarm
        /// </summary>
        [DataMember]
        public bool[] TemperatureSlowdownArrary;

        /// <summary>
        /// An array of the temperature channel name
        /// </summary>
        [DataMember]
        public string[] TemperatureChannelName;

        /// <summary>
        /// The value of the Temperature bar scale
        /// </summary>
        [DataMember]
        public int TemperatureBarScale;

        /// <summary>
        /// The value of the Temperature dev bar scale
        /// </summary>
        [DataMember]
        public int TemperatureDevBarScale;

        /// <summary>
        /// The value of the Temperature alarm in scale bar
        /// </summary>
        [DataMember]
        public int TemperatureBarScaleAlarm;

        /// <summary>
        /// The value of the Temperature slowdown in scale bar
        /// </summary>
        [DataMember]
        public int TemperatureBarScaleSlowdown; 

        /// <summary>
        /// The value of the Temperature alarm level
        /// </summary>
        [DataMember]
        public Int16[] TemperatureAlarmLevel;

        /// <summary>
        /// The value of the Temperature slowdown level
        /// </summary>
        [DataMember]
        public Int16[] TemperatureSlowdownLevel;

        /// <summary>
        /// The value of the Temperature dev alarm level
        /// </summary>
        [DataMember]
        public Int16[] TemperatureDevAlarmLevel;

        /// <summary>
        /// The value of the Temperature dev slowdown level
        /// </summary>
        [DataMember]
        public Int16[] TemperatureDevSlowdownLevel;

        /// <summary>
        /// The value of the SLEM alarm level
        /// </summary>
        [DataMember]
        public Int16 SlemAlarmLevel;

        /// <summary>
        /// The value of the SLEM sensor
        /// </summary>
        [DataMember]
        public Int16 SLEM;

        /// <summary>
        /// The value of the CPPmA
        /// </summary>
        [DataMember]
        public Int16 CPPmA;

        /// <summary>
        /// The value of the CPPPercent
        /// </summary>
        [DataMember]
        public Int16 CPPPercent;

        /// <summary>
        /// The value of the water in oil sensor
        /// </summary>
        [DataMember]
        public WaterInOil WaterInOil;
        
        /// <summary>
        /// The engine run time in minutes
        /// </summary>
        [DataMember]
        public UInt32 RunTime;

        /// <summary>
        /// The RPM of the engine
        /// </summary>        
        [DataMember]
        public UInt16 RpmModal;

        /// <summary>
        /// The RPM calculated by the slave SPU (if any)
        /// </summary>
        [DataMember]
        public UInt16 RpmChecked;

        /// <summary>
        /// Array of the calculated sensor status
        /// </summary>
        [DataMember]
        public CalculatedStatusWord[] SensorStatus;

        /// <summary>
        /// Array of calculated sensor deviation status
        /// </summary>
        [DataMember]
        public CalculatedStatusWord[] SensorDevStatus;

        /// <summary>
        /// Array of calculated cylinder status
        /// </summary>
        [DataMember]
        public CalculatedStatusWord[] CylinderStatus;

        /// <summary>
        /// Array of cylinder deviation status
        /// </summary>
        [DataMember]
        public CalculatedStatusWord[] CylinderDevStatus;

        /// <summary>
        /// The status of the main bearing
        /// </summary>
        [DataMember]
        public short[] MainBearingStatus;

        /// <summary>
        /// The status of the crosshead
        /// </summary>
        [DataMember]
        public short[] CrossHeadBearingStatus;

        /// <summary>
        /// The status of the crankpin
        /// </summary>
        [DataMember]
        public short[] CrankpinBearingStatus;

        /// <summary>
        /// The status of the thrust radial bearing 
        /// </summary>
        [DataMember]
        public short ThrustRadiaBearingStatus;

        /// <summary>
        /// The main bearing sensor number 
        /// </summary>
        [DataMember]
        public short SensorPerMainBearing;

        /// <summary>
        /// The crosshead bearing sensor number 
        /// </summary>
        [DataMember]
        public short SensorPerCrossheadBearing;
        
        /// <summary>
        /// The Crankpin bearing sensor number 
        /// </summary>
        [DataMember]
        public short SensorPerCrankpinBearing;

        /// <summary>
        /// The thrust radial bearing sensor number 
        /// </summary>
        [DataMember]
        public short SensorPerThrustRadialBearing;

        /// <summary>
        /// The SLEM status
        /// </summary>
        [DataMember]
        public CalculatedStatusWord SLEMStatus;

        /// <summary>
        /// The WIO activity
        /// </summary>
        [DataMember]
        public CalculatedStatusWord WIOActivityStatus;

        /// <summary>
        /// Number of sensors on SPU 1
        /// </summary>
        [DataMember]
        public int SensorsOnSPU1;

        /// <summary>
        /// Number of Sensors on SPU 2
        /// </summary>
        [DataMember]
        public int SensorsOnSPU2;

        /// <summary>
        /// The 
        /// </summary>
        [DataMember]
        public short LocationOfTimingChain;

        /// <summary>
        /// Total number of sensors
        /// </summary>
        [DataMember]
        public int TotalSensors;
        
        /// <summary>
        /// Is SLEM enabled
        /// </summary>
        [DataMember]
        public SLEMEnabled SLEMEnabled;

        /// <summary>
        /// Is WIO enabled
        /// </summary>
        [DataMember]
        public WIOEnabled WIOEnabled;

        /// <summary>
        /// Is CPP enabled
        /// </summary>
        [DataMember]
        public CPPEnabled CPPEnabled;

        /// <summary>
        /// The 20 percent RPM level
        /// </summary>
        [DataMember]
        public int Rpm20Percent;

        /// <summary>
        /// The 100% RPM level
        /// </summary>
        [DataMember]
        public int Rpm100Percent;

        /// <summary>
        /// The RPM limit
        /// </summary>
        [DataMember]
        public int RpmLimit;        

        /// <summary>
        /// The stage of the engine learn
        /// </summary>
        [DataMember]
        public Int16 EngineLearnStage;

        /// <summary>
        /// The number of minutes left for engine learning
        /// </summary>
        [DataMember]
        public Int16 EngineLearningMinutesLeft;

        /// <summary>
        /// The Cylinder Firing Order
        /// </summary>
        [DataMember]
        public Int16[] CylinderFiringOrder;

        /// <summary>
        /// Is there a fault active in the software
        /// </summary>
        [DataMember]
        public bool ActiveFault;

        /// <summary>
        /// Flag indicating the state of the comms to the
        /// slave SPU
        /// </summary>
        [DataMember]
        public bool SPUSlaveCommsOK;

        /// <summary>
        /// Flag indicating the state of the comms to the
        /// PLC
        /// </summary>
        [DataMember]
        public bool PLCCommsOK;

        /// <summary>
        /// The WIO comms error code
        /// </summary>
        [DataMember]
        public Int16 WIOCommsErrorValue;

        /// <summary>
        /// The number of CRC errors detected reads from the SPU
        /// </summary>
        [DataMember]
        public Int64 NumberOfCrcErrors;

        /// <summary>
        /// The number of packets that failed to be read
        /// </summary>
        [DataMember]
        public Int64 NumberOfSPUReadsFailed;

        /// <summary>
        /// The number of packets that failed to be written
        /// </summary>
        [DataMember]
        public Int64 NumberOfSPUWritesFailed;

        /// <summary>
        /// Number of retries
        /// </summary>
        [DataMember]
        public Int64 NumberofRetries;

        /// <summary>
        /// Number of packets written
        /// </summary>
        [DataMember]
        public Int64 NumberOfPacketsWritten;

        /// <summary>
        /// Number of packets reads
        /// </summary>
        [DataMember]
        public Int64 NumbeOfPacketsReads;

        /// <summary>
        /// The maximum RPM that can be plotted
        /// on the trend.
        /// </summary>
        [DataMember]
        public Int16 MaximumTrendRPM;

        /// <summary>
        /// Flag indicating if this is live data
        /// or a reused engine data objext due to a 
        /// Modbus error
        /// </summary>
        [DataMember]
        public bool LiveData;

        /// <summary>
        /// Object that lists the active and inactive software faults on the
        /// system.
        /// </summary>
        [DataMember]
        public CoreFaults faults;

        /// <summary>
        /// The wear scale to use when displaying the bar graph
        /// </summary>
        [DataMember]
        public int BarGraphWear;

        /// <summary>
        /// The deviation scale to use when displaying the bar graph
        /// </summary>
        [DataMember]
        public int BarGraphDeviation;

        /// <summary>
        /// The number of event logs to retreive
        /// for each event log request
        /// </summary>
        [DataMember]
        public int EventLogsPerRequest;

        /// <summary>
        /// The version of the RIA on the client
        /// </summary>
        [DataMember]
        public string RIAVersion;

        /// <summary>
        /// The database status
        /// </summary>
        [DataMember]
        public bool DatabaseRolling;

        /// <summary>
        /// Serial number of XTS-W
        /// </summary>
        [DataMember]
        public string SerialNumber;
    }
}
