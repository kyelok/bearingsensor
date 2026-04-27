/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    /// <summary>
    /// This class contains the diagnostics  data.
    /// </summary>
    [DataContract]
    public class Diagnostics
    {
        /// <summary>
        /// Firmware Version of SPU 1
        /// </summary>
        [DataMember]
        public UInt16 Unit1FWVersion;

        /// <summary>
        /// Battery Voltage of SPU
        /// </summary>
        [DataMember]
        public UInt16 Unit1BatteryVolt;

        /// <summary>
        /// Engine Speed measured by SPU 1
        /// </summary>
        [DataMember]
        public UInt16 Unit1EngineSpeed;

        /// <summary>
        /// Digital output 1 status of SPU 1
        /// </summary>
        [DataMember]
        public bool Unit1SPUStatus;

        /// <summary>
        /// Digital output 2 status of SPU 1
        /// </summary>
        [DataMember]
        public bool Unit1Alarms;

        /// <summary>
        /// Digitial output 3 status of SPU 1
        /// </summary>
        [DataMember]
        public bool Unit1Slowdown;

        /// <summary>
        /// SD card status of SPU 1
        /// </summary>
        [DataMember]
        public bool Unit1SDCard;

        /// <summary>
        /// Firmware version of SPU 2
        /// </summary>
        [DataMember]
        public UInt16 Unit2FWVersion;

        /// <summary>
        /// Engine speed measured by SPU 2
        /// </summary>
        [DataMember]
        public UInt16 Unit2EngineSpeed;

        /// <summary>
        /// The comms status of SPU 2
        /// </summary>
        [DataMember]
        public bool Unit2SPUStatus;

        /// <summary>
        /// The version number of the web services
        /// </summary>
        [DataMember]
        public string WebServerVersion;

        /// <summary>
        /// The engine runtime in minutes
        /// </summary>
        [DataMember]
        public UInt32 EngineRuntimeInMinutes;

        /// <summary>
        /// The number of SPUs connected to the system
        /// </summary>
        [DataMember]
        public UInt32 NumberOfSPUs;

        /// <summary>
        /// A list of the software modules installed in the system
        /// </summary>
        [DataMember]
        public string[] Modules;

        /// <summary>
        /// The version number of the software modules in the system
        /// </summary>
        [DataMember]
        public string[] ModuleVersions;

        /// <summary>
        /// The number of writes that have failed between the RTU interface
        /// and the SPU.
        /// </summary>
        [DataMember]
        public Int64 NumberSPUWritesFailed;

        /// <summary>
        /// The number of reads that have failed between
        /// the RTU interface and the SPU.
        /// </summary>
        [DataMember]
        public Int64 NumberSSPUReadsFailed;

        /// <summary>
        /// The number of CRC errors that have occured between
        /// the RTU interface and the SPU
        /// </summary>
        [DataMember]
        public Int64 NumberCrcErrors;

        /// <summary>
        /// The total number of packets written to the SPU
        /// </summary>
        [DataMember]
        public Int64 NumberPacketsWritten;

        /// <summary>
        /// The total number of packets read from the SPU
        /// </summary>
        [DataMember]
        public Int64 NumberPacketsReads;

        /// <summary>
        /// The number of packets that have been retryed
        /// </summary>
        [DataMember]
        public Int64 NumberOfRetries;

        /// <summary>
        /// The value of any WIO comms error
        /// </summary>
        [DataMember]
        public short WIOCommsErrorValue;

        /// <summary>
        /// The Date and Time on the SPU
        /// </summary>
        [DataMember]
        public short[] DateTime;

        /// <summary>
        /// The raw sensor values read from the SPU
        /// </summary>
        [DataMember]
        public short[] RawUa;

        /// <summary>
        /// The scaled sensor values read from the SPU
        /// </summary>
        [DataMember]
        public short[] ScaledValues;

        /// <summary>
        /// The pre comp values read from the SPU
        /// </summary>
        [DataMember]
        public short[] PreComp;

        /// <summary>
        /// The post comp values read fmor the SPU
        /// </summary>
        [DataMember]
        public short[] PostComp;

        /// <summary>
        /// The post filtered values read from the SPU
        /// </summary>
        [DataMember]
        public short[] PostFiltered;

        /// <summary>
        /// The sensor deviaiton values read form the SPU
        /// </summary>
        [DataMember]
        public short[] SensorDeviation;

        /// <summary>
        /// The sensor status read form the SPU
        /// </summary>
        [DataMember]
        public short[] SensorStatus1;

        /// <summary>
        /// The sensor status read form the SPU
        /// </summary>
        [DataMember]
        public short[] SensorStatus2;

        /// <summary>
        /// The sensor status read form the SPU
        /// </summary>
        [DataMember]
        public short[] SensorStatus3;

        /// <summary>
        /// The cylinder average read form the SPU
        /// </summary>
        [DataMember]
        public short[] CylinderAv;

        /// <summary>
        /// The cylinder deviation read form the SPU
        /// </summary>
        [DataMember]
        public short[] CylinderDeviation;

        /// <summary>
        /// The cylinder status read form the SPU
        /// </summary>
        [DataMember]
        public short[] CylinderStatus1;

        /// <summary>
        /// The cylinder status read form the SPU
        /// </summary>
        [DataMember]
        public short[] CylinderStatus2;

        /// <summary>
        /// The RPM read form the SPU
        /// </summary>
        [DataMember]
        public short[] RPM;

        /// <summary>
        /// The value read from WIO
        /// </summary>
        [DataMember]
        public int WIOActivty;
        
        /// <summary>
        /// The PPM read from WIO
        /// </summary>
        [DataMember]
        public int WIOPPM;
        
        /// <summary>
        /// The temp read from WIO
        /// </summary>
        [DataMember]
        public int WIOTemp;
        
        /// <summary>
        /// The status of WIO
        /// </summary>
        [DataMember]
        public int WIOStatus;
        
        /// <summary>
        /// The value read from SEDM
        /// </summary>
        [DataMember]
        public int SEDMvm;
        
        /// <summary>
        /// The status of SEDM
        /// </summary>
        [DataMember]
        public int SEDMStatus;

        /// <summary>
        /// The status of PLC
        /// </summary>
        [DataMember]
        public int PLCStatus;
    }
}
