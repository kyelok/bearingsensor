/* 
 * XTSDiagnostics.cs
 * 
 * Diagnostics data required by the UI.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 08/03/2012
 */

namespace XTS
{
    #region Live Data

    /// <summary>
    /// Class for representing the live modbus values in the system
    /// </summary>
    /// <remarks>Some of this data is duplicated elsewhere, for example Sensor pre-comp, however
    /// this data is updated more frequently and includes modbus data for sensors not fitted.</remarks>
    public class XTSLiveData
    {
        #region Live Data data classes

        /// <summary>
        /// Encapsulates live data for WIO
        /// </summary>
        public class XTSLiveWIO : XTSData
        {
            private int activity = 0;
            public int Activity
            {
                get
                {
                    return this.activity;
                }
                set
                {
                    this.activity = value;
                    OnPropertyChanged("Activity");
                }
            }
            private int ppm = 0;
            public int PPM
            {
                get
                {
                    return this.ppm;
                }
                set
                {
                    this.ppm = value;
                    OnPropertyChanged("PPM");
                }
            }
            private int temp = 0;
            public int Temp
            {
                get
                {
                    return this.temp;
                }
                set
                {
                    this.temp = value;
                    OnPropertyChanged("Temp");
                }
            }
            private int status = 0;
            public int Status
            {
                get
                {
                    return this.status;
                }
                set
                {
                    this.status = value;
                    OnPropertyChanged("Status");
                }
            }
        }

        /// <summary>
        /// Encapsulates live data for SEDM
        /// </summary>
        public class XTSLiveSEDM : XTSData
        {
            private int mV = 0;
            public int Value
            {
                get
                {
                    return this.mV;
                }
                set
                {
                    this.mV = value;
                    OnPropertyChanged("Value");
                }
            }
            private int status = 0;
            public int Status
            {
                get
                {
                    return this.status;
                }
                set
                {
                    this.status = value;
                    OnPropertyChanged("Status");
                }
            }
        }

        /// <summary>
        /// Structure for encapsulating live data for a sensor
        /// </summary>
        public class XTSLiveSensor : XTSData
        {
            private int rawua = 0;
            public int Rawua
            {
                set
                {
                    this.rawua = value;
                    OnPropertyChanged("Rawua");
                }
                get
                {
                    return this.rawua;
                }
            }
            private int scaledValue = 0;
            public int ScaledValue
            {
                set
                {
                    this.scaledValue = value;
                    OnPropertyChanged("ScaledValue");
                }
                get
                {
                    return this.scaledValue;
                }
            }
            private int preComp = 0;
            public int PreComp
            {
                set
                {
                    this.preComp = value;
                    OnPropertyChanged("PreComp");
                }
                get
                {
                    return this.preComp;
                }
            }
            private int postComp = 0;
            public int PostComp
            {
                set
                {
                    this.postComp = value;
                    OnPropertyChanged("PostComp");
                }
                get
                {
                    return this.postComp;
                }
            }
            private int postFiltered = 0;
            public int PostFiltered
            {
                set
                {
                    this.postFiltered = value;
                    OnPropertyChanged("PostFiltered");
                }
                get
                {
                    return this.postFiltered;
                }
            }
            private int deviation = 0;
            public int Deviation
            {
                set
                {
                    this.deviation = value;
                    OnPropertyChanged("Deviation");
                }
                get
                {
                    return this.deviation;
                }
            }
            private int status1 = 0;
            public int Status1
            {
                set
                {
                    this.status1 = value;
                    OnPropertyChanged("Status1");
                }
                get
                {
                    return this.status1;
                }
            }
            private int status2 = 0;
            public int Status2
            {
                set
                {
                    this.status2 = value;
                    OnPropertyChanged("Status2");
                }
                get
                {
                    return this.status2;
                }
            }
            private int status3 = 0;
            public int Status3
            {
                set
                {
                    this.status3 = value;
                    OnPropertyChanged("Status3");
                }
                get
                {
                    return this.status3;
                }
            }
        }
        /// <summary>
        /// Structure for encapsulating live data for a cylinder
        /// </summary>
        public class XTSLiveCylinder : XTSData
        {
            private int av = 0;
            public int Av
            {
                set
                {
                    this.av = value;
                    OnPropertyChanged("Av");
                }
                get
                {
                    return this.av;
                }
            }
            private int deviation = 0;
            public int Deviation
            {
                set
                {
                    this.deviation = value;
                    OnPropertyChanged("Deviation");
                }
                get
                {
                    return this.deviation;
                }
            }
            private int status1 = 0;
            public int Status1
            {
                set
                {
                    this.status1 = value;
                    OnPropertyChanged("Status1");
                }
                get
                {
                    return this.status1;
                }
            }
            private int status2 = 0;
            public int Status2
            {
                set
                {
                    this.status2 = value;
                    OnPropertyChanged("Status2");
                }
                get
                {
                    return this.status2;
                }
            }
        }
        /// <summary>
        /// Structure for encapsulating live data for the SPU date time
        /// </summary>
        public class XTSLiveDateTime : XTSData
        {
            private string value0 = null;
            public string Value0
            {
                set
                {
                    this.value0 = value;
                    OnPropertyChanged("Value0");
                }
                get
                {
                    return this.value0;
                }
            }
            private string value1 = null;
            public string Value1
            {
                set
                {
                    this.value1 = value;
                    OnPropertyChanged("Value1");
                }
                get
                {
                    return this.value1;
                }
            }
            private string value2 = null;
            public string Value2
            {
                set
                {
                    this.value2 = value;
                    OnPropertyChanged("Value2");
                }
                get
                {
                    return this.value2;
                }
            }            
        }

        /// <summary>
        /// Class to encapsualte an RPM modbus value to allow binding to it
        /// </summary>
        public class XTSLiveRPM : XTSData
        {
            private int data = 0;
            public int Value
            {
                get
                {
                    return this.data;
                }
                set
                {
                    this.data = value;
                    OnPropertyChanged("Value");
                }
            }
        }
        #endregion // Live Data data classes

        /// <summary>
        /// Internal data for RPM
        /// </summary>
        private XTSLiveRPM [] rpm = new XTSLiveRPM[28];
        /// <summary>
        /// Allows access to the RPM modbus regs
        /// </summary>
        /// <remarks></remarks>
        public XTSLiveRPM [] RPM
        {
            get
            {
                return this.rpm;
            }
        }

        /// <summary>
        /// Internal data for Sensors
        /// </summary>
        private XTSLiveSensor [] sensors = new XTSLiveSensor[28];
        /// <summary>
        /// Allows access to the sensor modbus regs
        /// </summary>
        /// <remarks>The collection itself never needs to be set, but the values within need to be changed, hence readonly</remarks>
        public XTSLiveSensor [] Sensors
        {
            get
            {
                return this.sensors;
            }
        }
 
        /// <summary>
        /// Internal data for Cylinders
        /// </summary>
        private XTSLiveCylinder [] cylinders = new XTSLiveCylinder[14];
        /// <summary>
        /// Allows access to the cylinder modbus regs
        /// </summary>
        /// <remarks>The collection itself never needs to be set, but the values within need to be changed, hence readonly</remarks>
        public XTSLiveCylinder [] Cylinders
        {
            get
            {
                return this.cylinders;
            }
        }

        /// <summary>
        /// Internal data for LiveDateTime
        /// </summary>
        private XTSLiveDateTime datetime = new XTSLiveDateTime();
        /// <summary>
        /// Allows access to the SPU date time regs
        /// </summary>
        public XTSLiveDateTime LiveDateTime
        {
            get
            {
                return this.datetime;
            }
        }

        private XTSLiveWIO wio = new XTSLiveWIO();
        /// <summary>
        /// Allows access to the WIO regs
        /// </summary>
        public XTSLiveWIO WIO
        {
            get
            {
                return this.wio;
            }
        }

        /// <summary>
        /// Internal data for SEDM
        /// </summary>
        private XTSLiveSEDM sedm = new XTSLiveSEDM();
        /// <summary>
        /// Allows access to the SEDM regs
        /// </summary>
        public XTSLiveSEDM SEDM
        {
            get
            {
                return this.sedm;
            }
        }

        public XTSLiveData()
        {
            for (int i = 0; i < 28; i++)
            {
                this.sensors[i] = new XTSLiveSensor();
                this.rpm[i] = new XTSLiveRPM();
            }
            for (int i = 0; i < 14; i++)
            {
                this.cylinders[i] = new XTSLiveCylinder();
            }
        }
    }
    #endregion // Live Data

    /// <summary>
    /// Class summising data for system diagnostics
    /// </summary>
    public class XTSDiagnostics : XTSData
    {
        #region Comm Stats
        /// <summary>
        /// The communications statistics within the system
        /// </summary>
        public class XTSCommStats : XTSData
        {
            /// <summary>
            /// Internal data for SPUPacketsSent
            /// </summary>
            private ulong spuPacketsSent;
            /// <summary>
            /// Number of Packets sent.
            /// </summary>
            public ulong SPUPacketsSent
            {
                set
                {
                    this.spuPacketsSent = value;
                    OnPropertyChanged("SPUPacketsSent");
                }
                get
                {
                    return this.spuPacketsSent;
                }
            }

            /// <summary>
            /// Internal data for SPUPacketsReceived
            /// </summary>
            private ulong spuPacketsReceived;
            /// <summary>
            /// Number of Packets Received.
            /// </summary>
            public ulong SPUPacketsReceived
            {
                set
                {
                    this.spuPacketsReceived = value;
                    OnPropertyChanged("SPUPacketsReceived");
                }
                get
                {
                    return this.spuPacketsReceived;
                }
            }

            /// <summary>
            /// Internal data for SPURetries
            /// </summary>
            private ulong spuRetries;
            /// <summary>
            /// Number of retries.
            /// </summary>
            public ulong SPURetries
            {
                set
                {
                    this.spuRetries = value;
                    OnPropertyChanged("SPURetries");
                }
                get
                {
                    return this.spuRetries;
                }
            }

            /// <summary>
            /// Internal data for SPUPacketsLost
            /// </summary>
            private ulong spuReadPacketsLost;
            /// <summary>
            /// Number of packets lost. (I.e. after 3 retries it failed)
            /// </summary>
            public ulong SPUReadPacketsLost
            {
                set
                {
                    this.spuReadPacketsLost = value;
                    OnPropertyChanged("SPUReadPacketsLost");
                }
                get
                {
                    return this.spuReadPacketsLost;
                }
            }

            /// <summary>
            /// Internal data for SPUWritePacketsLost
            /// </summary>
            private ulong spuWritePacketsLost;
            /// <summary>
            /// Number of failed writes.
            /// </summary>
            public ulong SPUWritePacketsLost
            {
                set
                {
                    this.spuWritePacketsLost = value;
                    OnPropertyChanged("SPUWritePacketsLost");
                }
                get
                {
                    return this.spuWritePacketsLost;
                }
            }

            /// <summary>
            /// Internal data for SPUCRCErrors
            /// </summary>
            private ulong spuCRCErrors;
            /// <summary>
            /// Number of CRC errors.
            /// </summary>
            public ulong SPUCRCErrors
            {
                set
                {
                    this.spuCRCErrors = value;
                    OnPropertyChanged("SPUCRCErrors");
                }
                get
                {
                    return this.spuCRCErrors;
                }
            }

            /// <summary>
            /// Default constructor
            /// </summary>
            public XTSCommStats()
            {
                this.spuCRCErrors = 0;
                this.spuRetries = 0;
                this.spuPacketsReceived = 0;
                this.spuPacketsSent = 0;
                this.spuReadPacketsLost = 0;
                this.spuWritePacketsLost= 0;
            }

            /// <summary>
            /// Resets comm stat counts
            /// </summary>
            public void Reset()
            {
                // Use properties so we trigger property change callbacks
                this.SPUCRCErrors = 0;
                this.SPURetries = 0;
                this.SPUPacketsReceived = 0;
                this.SPUPacketsSent = 0;
                this.SPUReadPacketsLost = 0;
                this.SPUWritePacketsLost = 0;
            }
        }
        #endregion Comm Stats

        /// <summary>
        /// Internal data for CommunicationStatistics
        /// </summary>
        private XTSCommStats commStats = new XTSCommStats();
        /// <summary>
        /// ModBus packet read errors etc.
        /// </summary>
        public XTSCommStats CommunicationStatistics
        {
            get
            {
                return this.commStats;
            }
        }

        /// <summary>
        /// Internal data for ModBusWrite
        /// </summary>
        private bool modBusWrite;
        /// <summary>
        /// Set to true indicates that a mod bus write error has occurred.
        /// </summary>
        public bool ModBusWrite
        {
            set
            {
                this.modBusWrite = value;
                OnPropertyChanged("ModBusWrite");
            }
            get
            {
                return this.ModBusWrite;
            }
        }

        /// <summary>
        /// Internal data for SPUBatteryVoltage
        /// </summary>
        private double spuBatteryVoltage;
        /// <summary>
        /// Battery voltage for the main SPU unit (mV)
        /// </summary>
        public double SPUBatteryVoltage
        {
            set
            {
                this.spuBatteryVoltage = value;
                OnPropertyChanged("SPUBatteryVoltage");
            }
            get
            {
                return this.spuBatteryVoltage;
            }
        }

        /// <summary>
        /// Internal data for spuTemperature
        /// </summary>
        private double spuTemperature;
        /// <summary>
        /// Battery voltage for the main SPU unit (mV)
        /// </summary>
        public double SPUTemperature
        {
            set
            {
                this.spuTemperature = value;
                OnPropertyChanged("SPUTemperature");
            }
            get
            {
                return this.spuTemperature;
            }
        }

        /// <summary>
        /// Specifies if the SPU is OK
        /// </summary>
        /// <remarks>Null means that the state can not be determined.</remarks>
        public bool? SystemStatus
        {
            set
            {
                // Use property to raise OnPropertyChanged calls
                this.AlarmOutput0 = value;
            }
            get
            {
                return this.AlarmOutput0;
            }
        }

        /// <summary>
        /// Specifies if the SPU is in an alarm state or not
        /// </summary>
        /// <remarks>Null means that the state can not be determined.</remarks>
        public bool? SPUAlarm
        {
            set
            {
                // Use property to raise OnPropertyChanged calls
                this.AlarmOutput1 = value;
            }
            get
            {
                return this.AlarmOutput1;
            }
        }

        /// <summary>
        /// Specifies if the SPU is in a slow down state
        /// </summary>
        /// <remarks>Null means that the state can not be determined.</remarks>
        public bool? SPUSlowdown
        {
            set
            {
                // Use property to raise OnPropertyChanged calls
                this.AlarmOutput2 = value;
            }
            get
            {
                return this.AlarmOutput2;
            }
        }

        /// <summary>
        /// Internal data for SPUSDCard
        /// </summary>
        private bool? spuSDCard = null;
        /// <summary>
        /// Specifies if the SDCard is ok
        /// </summary>
        /// <remarks>Null means that the state can not be determined.</remarks>
        public bool? SPUSDCard
        {
            set
            {
                this.spuSDCard = value;
                OnPropertyChanged("SPUSDCard");
            }
            get
            {
                return this.spuSDCard;
            }
        }

        /// <summary>
        /// Internal data for CPU->SPU Comms
        /// </summary>
        private bool? spuComms = null;
        /// <summary>
        /// Can we talk to the SPU from the main XTS-W Server?
        /// </summary>
        public bool? SPUComms
        {
            get
            {
                return this.spuComms;
            }
            set
            {
                this.spuComms = value;
                OnPropertyChanged("SPUComms");
            }
        }

        /// <summary>
        /// Internal data for SPU2Comms
        /// </summary>
        private bool? spu2Comms = null;
        /// <summary>
        /// Specifies if communications with second SPU unit are ok
        /// </summary>
        /// <remarks>Null means that the state can not be determined.</remarks>
        public bool? SPU2Comms
        {
            set
            {
                this.spu2Comms = value;
                OnPropertyChanged("SPU2Comms");
            }
            get
            {
                return this.spu2Comms;
            }
        }

        /// <summary>
        /// Internal data for SPU2RPM
        /// </summary>
        private int spu2rpm;
        /// <summary>
        /// Individual RPM of SPU 2 for diagnostics
        /// </summary>
        public int SPU2RPM
        {
            set
            {
                this.spu2rpm = value;
                OnPropertyChanged("SPU2RPM");
            }
            get
            {
                return this.spu2rpm;
            }
        }

        /// <summary>
        /// Internal data for CPUComms
        /// </summary>
        private bool? cpuCoreOK = null;
        /// <summary>
        /// Is there a problem with the data incoming from the main XTS-W Server?
        /// (e.g. incomplete engine data or an error reported etc)
        /// </summary>
        /// <remarks>Not to be confused with CPUCommsNetwork that specifies if network
        /// communications are ok</remarks>
        public bool? CPUCoreOK
        {
            get
            {
                return this.cpuCoreOK;
            }
            set
            {
                this.cpuCoreOK = value;
                OnPropertyChanged("CPUCoreOK");
            }
        }

        /// <summary>
        /// Internal data for CPUCommsNetwork
        /// </summary>
        private bool cpuCommsNetwork = true;
        /// <summary>
        /// Can we talk to the main XTS-W Server?
        /// </summary>
        public bool CPUCommsNetwork
        {
            get
            {
                return this.cpuCommsNetwork;
            }
            set
            {
                this.cpuCommsNetwork = value;
                OnPropertyChanged("CPUCommsNetwork");
            }
        }

        /// <summary>
        /// Test for output enabled mode
        /// </summary>
        private bool outputEnabled;

        /// <summary>
        /// Test if outputs are enabled
        /// </summary>
        public bool OutputEnabled {
            get
            {
                return this.outputEnabled;
            }
            set
            {
                if (this.outputEnabled != value)
                {
                    this.outputEnabled = value;
                    OnPropertyChanged("OutputEnabled");
                }
            }
        }

        /// <summary>
        /// Wio status
        /// </summary>
        private bool? wiostatus = null;

        /// <summary>
        /// WioStatus
        /// </summary>
        public bool? WioStatus
        {
            get
            {
                return this.wiostatus;
            }
            set
            {
                if (this.wiostatus != value)
                {
                    this.wiostatus = value;
                    OnPropertyChanged("WioStatus");
                }
            }
        }

        /// <summary>
        /// Slem status
        /// </summary>
        private bool? sedmstatus = null;

        /// <summary>
        /// WioStatus
        /// </summary>
        public bool? SedmStatus
        {
            get
            {
                return this.sedmstatus;
            }
            set
            {
                if (this.sedmstatus != value)
                {
                    this.sedmstatus = value;
                    OnPropertyChanged("SedmStatus");
                }
            }
        }

        /// <summary>
        /// Internal data for AlarmOutput0
        /// </summary>
        private bool? alarmOutput0 = null;
        /// <summary>
        /// The test alarm digital output 0 state
        /// </summary>
        public bool? AlarmOutput0
        {
            get
            {
                return this.alarmOutput0;
            }
            set
            {
                if (this.alarmOutput0 != value)
                {
                    this.alarmOutput0 = value;
                    OnPropertyChanged("AlarmOutput0");
                    OnPropertyChanged("SystemStatus");
                }
            }
        }

        /// <summary>
        /// Internal data for AlarmOutput1
        /// </summary>
        private bool? alarmOutput1 = null;
        /// <summary>
        /// The test alarm digital output 1 state
        /// </summary>
        public bool? AlarmOutput1
        {
            get
            {
                return this.alarmOutput1;
            }
            set
            {
                if (this.alarmOutput1 != value)
                {
                    this.alarmOutput1 = value;
                    OnPropertyChanged("AlarmOutput1");
                    OnPropertyChanged("SPUAlarm");
                }
            }
        }

        /// <summary>
        /// Internal data for AlarmOutput2
        /// </summary>
        private bool? alarmOutput2 = null;
        /// <summary>
        /// The test alarm digital output 2 state
        /// </summary>
        public bool? AlarmOutput2
        {
            get
            {
                return this.alarmOutput2;
            }
            set
            {
                if (this.alarmOutput2 != value)
                {
                    this.alarmOutput2 = value;
                    OnPropertyChanged("AlarmOutput2");
                    OnPropertyChanged("SPUSlowdown");
                }
            }
        }

        /// <summary>
        /// Internal data for LiveData
        /// </summary>
        private XTSLiveData liveData = new XTSLiveData();
        /// <summary>
        /// The livedata for the system
        /// </summary>
        public XTSLiveData LiveData
        {
            get
            {
                return this.liveData;
            }
        }

        /// <summary>
        /// Internal data for SPU2Comms
        /// </summary>
        private bool? plcComms = null;
        /// <summary>
        /// Specifies if communications with second SPU unit are ok
        /// </summary>
        /// <remarks>Null means that the state can not be determined.</remarks>
        public bool? PLCComms
        {
            set
            {
                this.plcComms = value;
                OnPropertyChanged("PLCComms");
            }
            get
            {
                return this.plcComms;
            }
        }
    }
}
