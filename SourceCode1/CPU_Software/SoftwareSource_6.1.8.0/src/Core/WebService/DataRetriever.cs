/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data;
using System.Globalization;
using System.Text;
using DataCollectionSDK;
using HelperClasses;
using WebServiceObjects;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using log4net;
using System.Data.SQLite;
using System.IO;

namespace WebService
{
    /// <summary>
    /// Returns populated instances of an Engine Service Object class containing current data retrieved from the database
    /// </summary>
    public class DataRetriever
    {
        /// <summary>
        /// The database connector object
        /// </summary>
        private DatabaseSDK dataCollectionDatabase;

        /// <summary>
        /// The database connection to the comm stats database
        /// </summary>
        private DatabaseSDK commsStatsDatabase;

        /// <summary>
        /// The sensor replacement database.
        /// </summary>
        private DatabaseSDK sensorReplacementDatabase;

        /// <summary>
        /// The configuration database.
        /// </summary>
        private DatabaseSDK configurationDatabase;

        /// <summary>
        /// The trends configuration manager
        /// </summary>
        private TrendsConfigManager trendsConfigurationManager;

        /// <summary>
        /// The temperature configuration manager
        /// </summary>
        private TemperatureConfigManager temperatureConfigurationManager;

        /// <summary>
        /// The eventlog database.
        /// </summary>
        private DatabaseSDK eventLogDatabase;

        /// <summary>
        /// The number of seconds in a year.
        /// </summary>
        const int SecondsInAYear = 31556926;

        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        /// <summary>
        /// Holds the enabled state of the WIO sensor
        /// </summary>
        private WIOEnabled wioEnabled;

        public DataRetriever()
        {
            ModuleConfiguration configuration = ModuleConfiguration.GetApplicationConfiguration();
            DataCollectionConfigurationSection dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;

            dataCollectionDatabase = new DatabaseSDK(dataCollectionConfig.Database.DataLogger,
                                dataCollectionConfig.Database.DbRetryCount,
                dataCollectionConfig.Database.DbRetryDuration,
                dataCollectionConfig.Database.DbDeletePeriod);

            sensorReplacementDatabase = new DatabaseSDK(dataCollectionConfig.Database.SensorReplacement,
                dataCollectionConfig.Database.DbRetryCount,
                dataCollectionConfig.Database.DbRetryDuration,
                dataCollectionConfig.Database.DbDeletePeriod);

            commsStatsDatabase = new DatabaseSDK(dataCollectionConfig.Database.CommStats,
                dataCollectionConfig.Database.DbRetryCount,
                dataCollectionConfig.Database.DbRetryDuration,
                dataCollectionConfig.Database.DbDeletePeriod);

            trendsConfigurationManager = new TrendsConfigManager(
                new DatabaseSDK(dataCollectionConfig.Database.TrendConfiguration,
                dataCollectionConfig.Database.DbRetryCount,
                dataCollectionConfig.Database.DbRetryDuration,
                dataCollectionConfig.Database.DbDeletePeriod));

            temperatureConfigurationManager = new TemperatureConfigManager(
                new DatabaseSDK(dataCollectionConfig.Database.EventLog,
                dataCollectionConfig.Database.DbRetryCount,
                dataCollectionConfig.Database.DbRetryDuration,
                dataCollectionConfig.Database.DbDeletePeriod));

            configurationDatabase = new DatabaseSDK(dataCollectionConfig.Database.ConfigurationDb,
                dataCollectionConfig.Database.DbRetryCount,
                dataCollectionConfig.Database.DbRetryDuration,
                dataCollectionConfig.Database.DbDeletePeriod);

            eventLogDatabase = new DatabaseSDK(dataCollectionConfig.Database.EventLog,
                dataCollectionConfig.Database.DbRetryCount,
                dataCollectionConfig.Database.DbRetryDuration,
                dataCollectionConfig.Database.DbDeletePeriod);
        }

        /// <summary>
        /// Gets the comms stats from the database.
        /// </summary>
        /// <returns>A populated CommStats object.</returns>
        public CommStats GetCommsStats()
        {
            CommStats stats = new CommStats();

            using (DataTable data = commsStatsDatabase.SelectIntoDataTable("retries, failed_writes, failed_reads, crc_errors, packets_written, packets_read from comm_stats;"))
            {
                if (data.Rows.Count > 0)
                {
                    DataRow row = data.Rows[0];
                    if (!row.IsNull("retries"))
                    {
                        stats.Retries = (long)row["retries"];
                    }

                    if (!row.IsNull("packets_read"))
                    {
                        stats.PacketsRead = (long)row["packets_read"];
                    }

                    if (!row.IsNull("packets_written"))
                    {
                        stats.PacketsWritten = (long)row["packets_written"];
                    }

                    if (!row.IsNull("failed_reads"))
                    {
                        stats.FailedReads = (long)row["failed_reads"];
                    }

                    if (!row.IsNull("failed_writes"))
                    {
                        stats.FailedWrites = (long)row["failed_writes"];
                    }

                    if (!row.IsNull("crc_errors"))
                    {
                        stats.CrcErrors = (long)row["crc_errors"];
                    }
                }
            }

            return stats;
        }

        public void ResetCommsStats()
        {
            List<string> statements = new List<string>();
            statements.Add("delete from comm_stats");
            statements.Add("insert into comm_stats (retries, failed_writes, failed_reads, crc_errors, packets_written, packets_read, reset) values (0,0,0,0,0,0,1)");

            commsStatsDatabase.ExecuteSQLStatements(statements.ToArray());
        }

        /// <summary>
        /// Converts an array of UInt16[] to an array of Int16[]
        /// </summary>
        /// <param name="array">Array of UInt16[]</param>
        /// <returns>Array of Int16[]</returns>
        static public Int16[] ToInt16Array(UInt16[] array)
        {
            Int16[] returnValue = new Int16[array.Length];
            int length = array.Length;
            for (int i = 0; i < length; i++)
            {
                returnValue[i] = (Int16)array[i];
            }
            return returnValue;
        }

        /// <summary>
        /// Reads the status of all sensors that are being replaced.
        /// </summary>
        /// <returns>An array of SensorReplacementStatus objects.  There will be an element in the list for
        /// each sensor that is/has been replaced.</returns>
        public SensorReplacementStatus[] GetSensorReplacementStatus()
        {
            List<SensorReplacementStatus> sensors = new List<SensorReplacementStatus>();

            //Select all sensors that have been replaced or are being replaced
            using (DbConnection conn = this.sensorReplacementDatabase.GetDbConnection())
            {
                using (DbDataReader dbDataReader = sensorReplacementDatabase.Select(conn, "datetime(failure_date,'unixepoch'), datetime(replacement_date,'unixepoch'), sensor_id, stage, minutes_remaining from replacement;"))
                {
                    //Read out the sesnors
                    while (dbDataReader.Read())
                    {
                        Int64 minutesRemaining = -1;
                        string failure_date = string.Empty;
                        string replacement_date = string.Empty;
                        Int16 stage = 0;
                        Int64 totalMinutesInStage;

                        Int16 sensor = dbDataReader.GetInt16(2);

                        if (!dbDataReader.IsDBNull(0))
                            failure_date = dbDataReader.GetString(0);

                        if (!dbDataReader.IsDBNull(1))
                            replacement_date = dbDataReader.GetString(1);

                        if (!dbDataReader.IsDBNull(3))
                            stage = dbDataReader.GetInt16(3);

                        if (!dbDataReader.IsDBNull(4))
                            minutesRemaining = dbDataReader.GetInt64(4);

                        totalMinutesInStage = LookUpMinutesForStage(stage);

                        sensors.Add(new SensorReplacementStatus(sensor, failure_date, replacement_date, stage, minutesRemaining, totalMinutesInStage));
                    }
                }
            }

            return sensors.ToArray();
        }

        /// <summary>
        /// Looks up how many minutes the current stage takes to complete.
        /// </summary>
        /// <param name="stage">The stage the sensor is in.</param>
        /// <returns>The total number of minutes that this stage runs for.</returns>
        private Int64 LookUpMinutesForStage(short stage)
        {
            Int64 total;

            if (stage == (short)AMOTConstants.SensorReplacementStage.Average50Hours ||
                stage == (short)AMOTConstants.SensorReplacementStage.SlowRoll)
            {
                total = 3000;
            }
            else if (stage == (short)AMOTConstants.SensorReplacementStage.Average500Hours)
            {
                total = 30000;
            }
            else
            {
                total = 0;
            }

            return total;
        }

        /// <summary>
        /// Marks a sensor in the sensor replacement database as started to be replaced.
        /// </summary>
        /// <param name="sensor">The id of the sensor being replaced</param>
        /// <param name="failureDateInUnix">The date the sensor failed as a unix datetime stamp</param>
        /// <param name="replacementDateInUnix">The date the sensor was replaced as a unix datetime stamp</param>
        public void StartSensorReplacement(short sensor, Int64 failureDateInUnix, Int64 replacementDateInUnix)
        {
            string[] sql = new string[1];

            sql[0] = string.Format(CultureInfo.InvariantCulture, "REPLACE into replacement (failure_date, replacement_date, sensor_id, stage, minutes_remaining) values ({0},{1},{2},{3},{4});",
                 failureDateInUnix, replacementDateInUnix, sensor, (int)AMOTConstants.SensorReplacementStage.SlowRoll, (18000 / 6));

            this.sensorReplacementDatabase.ExecuteSQLStatements(sql);
        }

        /// <summary>
        /// Marks a sensor in the sensor replacement database as started to be replaced.
        /// </summary>
        /// <param name="sensor">The id of the sensor being replaced</param>
        /// <param name="failureDateInUnix">The date the sensor failed as a unix datetime stamp</param>
        /// <param name="replacementDateInUnix">The date the sensor was replaced as a unix datetime stamp</param>
        public void MarkSensorReplacementDataSent(short sensor)
        {
            string[] sql = new string[1];

            sql[0] = string.Format(CultureInfo.InvariantCulture, "UPDATE replacement set stage={1} where sensor_id={0};",
                        sensor, (int)AMOTConstants.SensorReplacementStage.EnableInputReplacementData);

            this.sensorReplacementDatabase.ExecuteSQLStatements(sql);
        }

        /// <summary>
        /// Marks a sensor in the sensor replacement database as completed.
        /// </summary>
        /// <param name="sensor">The id of the sensor being replaced</param>
        /// <param name="failureDateInUnix">The date the sensor failed as a unix datetime stamp</param>
        /// <param name="replacementDateInUnix">The date the sensor was replaced as a unix datetime stamp</param>
        public void MarkSensorReplacementDataUploaded(short sensor)
        {
            string[] sql = new string[1];

            sql[0] = string.Format(CultureInfo.InvariantCulture, "UPDATE replacement set stage={1} where sensor_id={0};",
                        sensor, (int)AMOTConstants.SensorReplacementStage.None);

            this.sensorReplacementDatabase.ExecuteSQLStatements(sql);
        }

        /// <summary>
        /// Marks a sensor replacement in the replacement database as cancelled
        /// </summary>
        /// <param name="sensor">The id of the sensor to cancel the replacement for.</param>
        internal void CancelSensorReplacement(short sensor)
        {
            string[] sql = new string[1];

            using (DataTable data = this.sensorReplacementDatabase.SelectIntoDataTable(string.Format("sensor_id from replacement where sensor_id={0}", sensor)))
            {
                if (data.Rows.Count > 0)
                {
                    sql[0] = string.Format(CultureInfo.InvariantCulture, "UPDATE replacement set stage={1} where sensor_id={0};",
                        sensor, (int)AMOTConstants.SensorReplacementStage.Cancelled);

                    this.sensorReplacementDatabase.ExecuteSQLStatements(sql);
                }
            }

        }

        /// <summary>
        /// Marks a sensor as in the 50 hour average stage
        /// </summary>
        /// <param name="sensor">The id of the sensor to mark</param>
        internal void StartSensorAverageStage(short sensor)
        {
            string[] sql = new string[1];

            using (DataTable data = this.sensorReplacementDatabase.SelectIntoDataTable(string.Format("sensor_id from replacement where sensor_id={0}", sensor)))
            {
                if (data.Rows.Count > 0)
                {
                    sql[0] = string.Format(CultureInfo.InvariantCulture, "UPDATE replacement set stage={1}, minutes_remaining={2} where sensor_id={0};",
                        sensor, (int)AMOTConstants.SensorReplacementStage.Average50Hours, (18000 / 6));

                    this.sensorReplacementDatabase.ExecuteSQLStatements(sql);
                }
            }
        }

        /// <summary>
        /// Gets any array that holds the names of the sensors from the senValComp table
        /// </summary>
        /// <returns>An array of the sensor names</returns>
        public string[] GetSensorNames()
        {
            //Work out the filename for the sensor
            List<string> columns = new List<string>();

            //Retreive the column names from the data collection database for the
            //senCompVal table
            using (DbConnection conn = dataCollectionDatabase.GetDbConnection())
            {
                string sql = "TABLE_INFO(senValComp);";

                using (DbDataReader dbDataReader = dataCollectionDatabase.Pragma(conn, sql))
                {
                    while (dbDataReader.Read())
                    {
                        //The second param is the column name.
                        columns.Add(dbDataReader.GetString(1));
                    }
                }
            }

            columns.RemoveAt(0);

            return columns.ToArray();
        }

        /// <summary>
        /// Converts an array of two Modbus registers into a UInt32
        /// </summary>
        /// <param name="data">The array of registers to convert</param>
        /// <returns>The UInt32 constructed from the array</returns>
        public static UInt32 ModbusToUInt32(ushort[] data)
        {
            if (data.Length != 2)
                throw new ArgumentOutOfRangeException("Array Data is the incorrect length.");

            //pcHigh and pcLow are the values returned by our read to the Modbus device
            UInt16 pcHigh = (UInt16)System.Net.IPAddress.HostToNetworkOrder((short)data[0]);
            UInt16 pcLow = (UInt16)System.Net.IPAddress.HostToNetworkOrder((short)data[1]);

            //Convert to byte array
            byte[] deviceHighbytes = BitConverter.GetBytes((short)pcHigh);
            byte[] deviceLowbytes = BitConverter.GetBytes((short)pcLow);
            byte[] combinedBytes = new byte[] { deviceHighbytes[0], deviceHighbytes[1], deviceLowbytes[0], deviceLowbytes[1] };

            //Convert the 4 byte array to a int32
            Int32 deviceInt32 = BitConverter.ToInt32(combinedBytes, 0);
            return ((UInt32)System.Net.IPAddress.NetworkToHostOrder(deviceInt32));
        }

        /// <summary>
        /// Tries to read a SPU conifugration register from the database.
        /// If the register is not found in the database then the SPU is read instead.
        /// </summary>
        /// <param name="register">The register to read from the database or SPU</param>
        /// <returns>An array that holds the data read from the database or SPU</returns>
        public ushort ReadSPUConfiguration(ushort register)
        {
            ushort data;

            try
            {
                using (DataTable dataTable = this.configurationDatabase.SelectIntoDataTable(string.Format("Value from config where SPU_Reg={0}", register)))
                {
                    if (dataTable.Rows.Count > 0)
                    {
                        DataRow row = dataTable.Rows[0];
                        data = (ushort)((Int64)row[0]);
                    }
                    else
                    {
                        throw new KeyNotFoundException("register not found");
                    }
                }
            }
            catch (Exception)
            {
                throw new KeyNotFoundException("register not found");
            }

            return data;
        }

        /// <summary>
        /// Reads the Bar graph scale settings from the database 
        /// </summary>
        /// <returns>The bar graph scale from the database or the default value of 1000 if none has been set</returns>
        public void GetBarGraphScale(out int wear, out int deviation)
        {
            wear = 1000;
            deviation = 1000;

            using (DbConnection connection = this.configurationDatabase.GetDbConnection())
            {
                using (DbDataReader reader = this.configurationDatabase.Select(connection, "* FROM graphScale;"))
                {
                    if (reader.Read())
                    {
                        deviation = reader.GetInt32(reader.GetOrdinal("SensorDeviation"));
                        wear = reader.GetInt32(reader.GetOrdinal("SensorWear"));

                        if (deviation < 500)
                        {
                            deviation = 1000;
                        }

                        if (wear < 500)
                        {
                            wear = 1000;
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Reads the temperature settings from the database 
        /// </summary>
        /// <returns>The nuber if sensors and bar graph scales</returns>
        public void GetTemperatureSettings(out int sensorNumber, out int barScale, out int devBarScale, out int rising, out int falling)
        {
            sensorNumber = 0;
            barScale = 100;
            devBarScale = 100;
            rising = 5;
            falling = 5;

            using (DbConnection connection = this.configurationDatabase.GetDbConnection())
            {
                using (DbDataReader reader = this.configurationDatabase.Select(connection, "* FROM temperatureSettings;"))
                {
                    if (reader.Read())
                    {
                        sensorNumber = reader.GetInt32(reader.GetOrdinal("sensorNumber"));
                        barScale = reader.GetInt32(reader.GetOrdinal("barScale"));
                        devBarScale = reader.GetInt32(reader.GetOrdinal("barScaleDev"));
                        rising = reader.GetInt32(reader.GetOrdinal("risingHysteresis"));
                        falling = reader.GetInt32(reader.GetOrdinal("fallingHysteresis"));
                       
                    }
                }
            }
        }

        /// <summary>
        /// Stores the trend configuration into the database
        /// </summary>
        /// <param name="configuration">The configuration to store</param>
        internal void SetTrendConfiguration(TrendConfiguration configuration)
        {
            this.trendsConfigurationManager.SetTrendsConfiguration(configuration);
        }

        /// <summary>
        /// Gets a configuration from the database
        /// </summary>
        /// <param name="slot">The slot to read the configuration from</param>
        /// <returns>The trend configuration</returns>
        internal TrendConfiguration GetTrendConfiguration(uint slot)
        {
            return this.trendsConfigurationManager.GetTrendsConfiguration(slot);
        }

        /// <summary>
        /// Gets a array of the trend configuration slots defined by the user.
        /// </summary>
        /// <returns>An array of trend configuration slots.  Slots that have not be defined will have
        /// a empty name.</returns>
        internal String[] TrendConfigurationSlots()
        {
            return this.trendsConfigurationManager.GetConfigurationSlots();
        }           

        /// <summary>
        /// Used to pass the WIO configuration to the DataRetriver.
        /// This data is used to calculate the WIO percentage.
        /// </summary>
        /// <param name="wIOEnabled">The type of WIO sensor</param>
        /// <param name="waterInOil">The water in oil data</param>
        internal void SetWioConfiguration(WIOEnabled wIOEnabled)
        {
            this.wioEnabled = wIOEnabled;
        }

        /// <summary>
        /// Stores the temperature configuration into the database
        /// </summary>
        /// <param name="configuration">The configuration to store</param>
        internal void SetTemperatureConfiguration(TemperatureConfiguration configuration)
        {
            this.temperatureConfigurationManager.SetTemperatureConfiguration(configuration);
        }

        /// <summary>
        /// Export the temperature setting into the database
        /// </summary>
        /// <param name="configuration">The configuration to export</param>
        internal void ExportToCVS(string file)
        {
            this.temperatureConfigurationManager.ExportToCVS(file);
        }  

        /// <summary>
        /// Tries to read a temperature from the database.       
        /// </summary>
        /// <param name="register">The channelID to read from the database or SPU</param>
        /// <returns>An array that holds the data read from the database</returns>
        public short ReadTemperature(ushort channelid)
        {
            short data;

            try
            {
                using (DataTable dataTable = this.eventLogDatabase.SelectIntoDataTable(string.Format("temperature from temperature where channelID={0}", channelid)))
                {
                    if (dataTable.Rows.Count > 0)
                    {
                        DataRow row = dataTable.Rows[0];
                        data = (short)((Int64)row[0]);
                    }
                    else
                    {
                        throw new KeyNotFoundException("temperature channel not found");
                    }
                }
            }
            catch (Exception)
            {
                throw new KeyNotFoundException("temperature channel not found");
            }

            return data;
        }

        /// <summary>
        /// Tries to read a temperature dev from the database.       
        /// </summary>
        /// <param name="register">The channelID to read from the database or SPU</param>
        /// <returns>An array that holds the data read from the database</returns>
        public short ReadTemperatureDev(ushort channelid)
        {
            short data;

            try
            {
                using (DataTable dataTable = this.eventLogDatabase.SelectIntoDataTable(string.Format("temperatureDev from temperature where channelID={0}", channelid)))
                {
                    if (dataTable.Rows.Count > 0)
                    {
                        DataRow row = dataTable.Rows[0];
                        data = (short)((Int64)row[0]);
                    }
                    else
                    {
                        throw new KeyNotFoundException("temperature channel not found");
                    }
                }
            }
            catch (Exception)
            {
                throw new KeyNotFoundException("temperature channel not found");
            }

            return data;
        }

        /// <summary>
        /// Tries to read a channel name from the database.       
        /// </summary>
        /// <param name="register">The channelID to read from the database or SPU</param>
        /// <returns>An array that holds the data read from the database</returns>
        public string ReadchannelName(ushort channelid)
        {
            string data;

            try
            {
                using (DataTable dataTable = this.eventLogDatabase.SelectIntoDataTable(string.Format("channelname from temperature where channelID={0}", channelid)))
                {
                    if (dataTable.Rows.Count > 0)
                    {
                        DataRow row = dataTable.Rows[0];
                        data = (string)(row[0]);
                    }
                    else
                    {
                        throw new KeyNotFoundException("temperature channel not found");
                    }
                }
            }
            catch (Exception)
            {
                throw new KeyNotFoundException("temperature channel not found");
            }

            return data;
        }

        /// <summary>
        /// Tries to read a channel enable from the database.       
        /// </summary>
        /// <param name="register">The channelID to read from the database or SPU</param>
        /// <returns>An array that holds the data read from the database</returns>
        public bool ReadchannelEnable(ushort channelid)
        {
            bool data;

            try
            {
                using (DataTable dataTable = this.eventLogDatabase.SelectIntoDataTable(string.Format("temperatureEnable from temperature where channelID={0}", channelid)))
                {
                    if (dataTable.Rows.Count > 0)
                    {
                        DataRow row = dataTable.Rows[0];
                        data = (bool)(row[0]);
                    }
                    else
                    {
                        throw new KeyNotFoundException("temperature channel not found");
                    }
                }
            }
            catch (Exception)
            {
                throw new KeyNotFoundException("temperature channel not found");
            }

            return data;           
        }

        /// <summary>
        /// Tries to read a channel enable from the database.       
        /// </summary>
        /// <param name="register">The channelID to read from the database or SPU</param>
        /// <returns>An array that holds the data read from the database</returns>
        public bool ReadchannelRtd(ushort channelid)
        {
            bool data;

            try
            {
                using (DataTable dataTable = this.eventLogDatabase.SelectIntoDataTable(string.Format("rtdGood from temperature where channelID={0}", channelid)))
                {
                    if (dataTable.Rows.Count > 0)
                    {
                        DataRow row = dataTable.Rows[0];
                        data = (bool)(row[0]);
                    }
                    else
                    {
                        throw new KeyNotFoundException("temperature channel not found");
                    }
                }
            }
            catch (Exception)
            {
                throw new KeyNotFoundException("temperature channel not found");
            }

            return data;
        }

        /// <summary>
        /// Tries to read a temperature alarm level from the database.       
        /// </summary>
        /// <param name="register">The channelID to read from the database or SPU</param>
        /// <returns>An array that holds the data read from the database</returns>
        public short ReadTemperatureGeneral(ushort channelid, string rowName)
        {
            short data;

            try
            {
                using (DataTable dataTable = this.eventLogDatabase.SelectIntoDataTable(string.Format("{0} from temperature where channelID={1}", rowName, channelid)))
                {
                    if (dataTable.Rows.Count > 0)
                    {
                        DataRow row = dataTable.Rows[0];
                        data = (short)((Int64)row[0]);
                    }
                    else
                    {
                        throw new KeyNotFoundException("temperature channel not found");
                    }
                }
            }
            catch (Exception)
            {
                throw new KeyNotFoundException("temperature channel not found");
            }

            return data;
        }

        /// <summary>
        /// Tries to read a serial number from the database.       
        /// </summary>
        /// <returns>An string that holds the data read from the database</returns>
        public string ReadSerialNumber()
        {
            string data = string.Empty;

            //try
            {

                using (DataTable dataTable = this.configurationDatabase.SelectIntoDataTable("SerialNumber from xtsSerialNumber"))
                {
                    if (dataTable.Rows.Count > 0)
                    {
                        DataRow row = dataTable.Rows[0];
                        data = (string)(row[0]);
                    }                    
                }
            }            

            return data;
        }
    }
}
