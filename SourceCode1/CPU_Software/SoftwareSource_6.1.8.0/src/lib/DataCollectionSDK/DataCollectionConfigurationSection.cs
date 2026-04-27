/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Configuration;

namespace DataCollectionSDK
{
    /// <summary>
    /// Global configuration for the data collection plugins
    /// </summary>
    public class DataCollectionConfigurationSection : ConfigurationSection
    {
        /// <summary>
        /// Database configuration properties
        /// </summary>
        [ConfigurationProperty("Database")]
        public DatabaseElement Database
        {
            get { return (DatabaseElement)this["Database"]; }
            set { this["Database"] = value; }
        }

        /// <summary>
        /// Modbus Configuration properties
        /// </summary>
        [ConfigurationProperty("Modbus")]
        public ModbusElement Mobus
        {
            get { return (ModbusElement)this["Modbus"]; }
            set { this["Modbus"] = value; }
        }

        /// <summary>
        /// Database configuration properties Configuration Element
        /// </summary>
        public class DatabaseElement : ConfigurationElement
        {
            /// <summary>
            /// SPU Configuration Database file name
            /// </summary>
            [ConfigurationProperty("ConfigurationDb", DefaultValue = "amot_xtsii_config.db3", IsRequired = false)]
            public String ConfigurationDb
            {
                get { return (String)this["ConfigurationDb"]; }
                set { this["ConfigurationDb"] = value; }
            }

            /// <summary>
            /// Users database file name
            /// </summary>
            [ConfigurationProperty("UsersDb", DefaultValue = "amot_xtsii_users.db3", IsRequired = true)]
            public String UsersDb
            {
                get { return (String)this["UsersDb"]; }
                set { this["UsersDb"] = value; }
            }

            /// <summary>
            /// Data logging database file name
            /// </summary>
            [ConfigurationProperty("CommStats", DefaultValue = "amot_xtsii_commstats.db3", IsRequired = true)]
            public String CommStats
            {
                get { return (String)this["CommStats"]; }
                set { this["CommStats"] = value; }
            }

            /// <summary>
            /// Data logging database file name
            /// </summary>
            [ConfigurationProperty("DataLogger", DefaultValue = "amot_xtsii_data.db3", IsRequired = true)]
            public String DataLogger
            {
                get { return (String)this["DataLogger"]; }
                set { this["DataLogger"] = value; }
            }

            /// <summary>
            /// Events database file name
            /// </summary>
            [ConfigurationProperty("EventLog", DefaultValue = "amot_xtsii_event.db3", IsRequired = true)]
            public String EventLog
            {
                get { return (String)this["EventLog"]; }
                set { this["EventLog"] = value; }
            }

            /// <summary>
            /// Sensor replacement database file name
            /// </summary>
            [ConfigurationProperty("SensorReplacement", DefaultValue = "amot_xtsii_sensorreplace.db3", IsRequired = true)]
            public String SensorReplacement
            {
                get { return (String)this["SensorReplacement"]; }
                set { this["SensorReplacement"] = value; }
            }

            /// <summary>
            /// Sensor replacement database file name
            /// </summary>
            [ConfigurationProperty("TrendConfiguration", DefaultValue = "amot_xtsii_trendconfig.db3", IsRequired = true)]
            public String TrendConfiguration
            {
                get { return (String)this["TrendConfiguration"]; }
                set { this["TrendConfiguration"] = value; }
            }

            /// <summary>
            /// Database retry duration between failed database access attempts
            /// </summary>
            [ConfigurationProperty("DbRetryDuration", DefaultValue = (int)250, IsRequired = false, IsKey = false)]
            public int DbRetryDuration
            {
                get { return (int)this["DbRetryDuration"]; }
                set { this["DbRetryDuration"] = value; }
            }

            /// <summary>
            /// The number of times to retry database access operations before throwing an exception
            /// </summary>
            [ConfigurationProperty("DbRetryCount", DefaultValue = (int)3, IsRequired = false, IsKey = false)]
            public int DbRetryCount
            {
                get { return (int)this["DbRetryCount"]; }
                set { this["DbRetryCount"] = value; }
            }

            /// <summary>
            /// Period of time to keep records
            /// </summary>
            [ConfigurationProperty("DbDeletePeriod", DefaultValue = (int)15724800, IsRequired = false, IsKey = false)]
            public int DbDeletePeriod
            {
                get { return (int)this["DbDeletePeriod"]; }
                set { this["DbDeletePeriod"] = value; }
            }            

            /// <summary>
            /// Defines the number of records to read at a time when exporting the database. If this value is too high the database
            /// will be locked for a long period of time, too short and the export operation will take a longer period of time.
            /// </summary>
            [ConfigurationProperty("DbExportTransactionSize", DefaultValue = (int)10000, IsRequired = false, IsKey = false)]
            public int DbExportTransactionSize
            {
                get { return (int)this["DbExportTransactionSize"]; }
                set { this["DbExportTransactionSize"] = value; }
            }

            /// <summary>
            /// Defines the location where temp data should be stored.
            /// </summary>
            [ConfigurationProperty("TempFolder", DefaultValue = (string)@"d:\temp", IsRequired = false, IsKey = false)]
            public string TempFolder
            {
                get { return (string)this["TempFolder"]; }
                set { this["TempFolder"] = value; }
            }

            /// <summary>
            /// Defines the number of hours to send out cleared alarms to clients
            /// </summary>
            [ConfigurationProperty("ClearedAlarmTime", DefaultValue = (int)24, IsRequired = false, IsKey = false)]
            public int ClearedAlarmTime
            {
                get {return (int) this["ClearedAlarmTime"]; }
                set { this["ClearedAlarmTime"] = value; }
            }

            /// <summary>
            /// Defines the number of logs to return in each event log request on the
            /// event logger.
            /// </summary>
            [ConfigurationProperty("LogsPerRequest", DefaultValue = (int)100, IsRequired = false, IsKey = false)]
            public int LogsPerRequest
            {
                get { return (int)this["LogsPerRequest"]; }
                set { this["LogsPerRequest"] = value; }
            }

            /// <summary>
            /// Defines the number of logs to return in each event log request on the
            /// event logger.
            /// </summary>
            [ConfigurationProperty("RIALocation", DefaultValue = (string)"c:\\AMOT\\Website\\Content\\xtsw\\xts.xap", IsRequired = false, IsKey = false)]
            public string RIALocation
            {
                get { return (string)this["RIALocation"]; }
                set { this["RIALocation"] = value; }
            }
        }

        /// <summary>
        /// Modbud configuration element
        /// </summary>
        public class ModbusElement : ConfigurationElement
        {
            /// <summary>
            /// The IP address of the Modbus server
            /// </summary>
            [ConfigurationProperty("ModbushostIP", DefaultValue = "127.0.0.1", IsRequired = false, IsKey = false)]
            public string ModbusHostIP
            {
                get
                {
                    return (string)this["ModbushostIP"];
                }
                set
                {
                    this["ModbushostIP"] = value;
                }
            }

            /// <summary>
            /// The internal mobus port 
            /// </summary>
            [ConfigurationProperty("ModbusInternalHostPort", DefaultValue = (int)1502, IsRequired = false, IsKey = false)]
            public int ModbusInternalHostPort
            {
                get
                {
                    return (int)this["ModbusInternalHostPort"];
                }
                set
                {
                    this["ModbusInternalHostPort"] = value;
                }
            }

            /// <summary>
            /// The external modbus port
            /// </summary>
            [ConfigurationProperty("ModbusExternalHostPort", DefaultValue = (int)502, IsRequired = false, IsKey = false)]
            public int ModbusExternalHostPort
            {
                get
                {
                    return (int)this["ModbusExternalHostPort"];
                }
                set
                {
                    this["ModbusExternalHostPort"] = value;
                }
            }

            /// <summary>
            /// The temperature modbus port
            /// </summary>
            [ConfigurationProperty("ModbusTemperatureHostPort", DefaultValue = (int)2502, IsRequired = false, IsKey = false)]
            public int ModbusTemperatureHostPort
            {
                get
                {
                    return (int)this["ModbusTemperatureHostPort"];
                }
                set
                {
                    this["ModbusTemperatureHostPort"] = value;
                }
            }

            /// <summary>
            /// Indicates that the internal modbus is preferred
            /// </summary>
            [ConfigurationProperty("PreferInternal", DefaultValue = (bool)false, IsRequired = false, IsKey = false)]
            public bool PreferInternal
            {
                get
                {
                    return (bool)this["PreferInternal"];
                }
                set
                {
                    this["PreferInternal"] = value;
                }
            }            

            /// <summary>
            /// The TCP/IP timeout
            /// </summary>
            [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", MessageId = "TCPIP"), ConfigurationProperty("ModbusTCPIPTimeout", DefaultValue = (int)60000, IsRequired = false, IsKey = false)]
            public int ModbusTCPIPTimeout
            {
                get
                {
                    return (int)this["ModbusTCPIPTimeout"];
                }
                set
                {
                    this["ModbusTCPIPTimeout"] = value;
                }
            }

            /// <summary>
            /// The slave unit Id for the modbus
            /// </summary>
            [ConfigurationProperty("ModbusSlaveUnitId", DefaultValue = (byte)1, IsRequired = false, IsKey = false)]
            public byte ModbusSlaveUnitId
            {
                get
                {
                    return (byte)this["ModbusSlaveUnitId"];
                }
                set
                {
                    this["ModbusSlaveUnitId"] = value;
                }
            }

            /// <summary>
            /// The slave unit Id for the modbus
            /// </summary>
            [ConfigurationProperty("ModbusSlaveUnitId2", DefaultValue = (byte)2, IsRequired = false, IsKey = false)]
            public byte ModbusSlaveUnitId2
            {
                get
                {
                    return (byte)this["ModbusSlaveUnitId2"];
                }
                set
                {
                    this["ModbusSlaveUnitId2"] = value;
                }
            }
            /// <summary>
            /// The default Run Schedule
            /// </summary>
            [ConfigurationProperty("RunSchedule", DefaultValue = (int)5000, IsRequired = false, IsKey = false)]
            public int RunSchedule
            {
                get
                {
                    return (int)this["RunSchedule"];
                }
                set
                {
                    this["RunSchedule"] = value;
                }
            }
        }
    }
}
