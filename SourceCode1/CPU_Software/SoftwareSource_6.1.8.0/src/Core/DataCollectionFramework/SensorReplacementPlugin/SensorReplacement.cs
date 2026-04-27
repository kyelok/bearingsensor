/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Data.Common;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using FaultErrorIndicators;
using System.Linq;
using System.Text;
using System.Data;
using HelperClasses;
using ModbusDb;
using DataCollectionSDK;
using System.Globalization;
using AMOTConstants;
using Configuration;
using EventLogging;

namespace SensorReplacementPlugin
{
    public class SensorReplacement : IExtInterface
    {
        /// <summary>
        /// The amount of time to wait for the database to unlock
        /// </summary>
        private int dbRetryDuration;

        /// <summary>
        /// The number of times to retry a database operation
        /// </summary>
        private int dbRetryCount;

        /// <summary>
        /// Delete period when the database is running out of space
        /// </summary>
        private int dbDeletePeriod;

        private string databaseName;

        readonly object syncRoot = new object();

        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        private static readonly EventLog eventLog = new EventLog();

        /// <summary>
        /// The module configuration for this object
        /// </summary>
        ModuleConfiguration configuration;

        /// <summary>
        /// Modbus slave unit Id
        /// </summary>
        private byte modbusSlaveUnitId;

        private ModbusSDK connection;

        private DatabaseSDK replacementDatabase;

        private DatabaseSDK dataCollectionDatabase;

        DataCollectionConfigurationSection dataCollectionConfig;

        SensorReplacementPluginConfigSection moduleSettings;

        /// <summary>
        /// This array holds the column names in the senCompVal table
        /// in the data collection database.
        /// It is used to map the replacement sensor id to the correct sensor
        /// in the data collection database
        /// </summary>
        string[] senCompValColumnNames = null;

        public SensorReplacement()
        {
            configuration = ModuleConfiguration.GetApplicationConfiguration();

            // Extract the relevant plugin information from the Settings file.
            ModbusDbRegistersSection registers = configuration.GetSection("ModbusRegisters") as ModbusDbRegistersSection;
            moduleSettings = configuration.GetSection("SensorReplacementPlugin") as SensorReplacementPluginConfigSection;
            dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;

            if (moduleSettings == null)
                moduleSettings = new SensorReplacementPluginConfigSection();
            if (dataCollectionConfig == null)
                dataCollectionConfig = new DataCollectionConfigurationSection();

            modbusSlaveUnitId = dataCollectionConfig.Mobus.ModbusSlaveUnitId;

            RunSchedule = moduleSettings.Settings.RunSchedule;
            LogSchedule = 0;

            dbRetryDuration = dataCollectionConfig.Database.DbRetryDuration;
            dbRetryCount = dataCollectionConfig.Database.DbRetryCount;
            dbDeletePeriod = moduleSettings.Settings.DbDeletePeriod;
            databaseName = dataCollectionConfig.Database.SensorReplacement;

            this.connection = new ModbusSDK(ModbusSDK.ModbusPort.Internal);
        }

        /// <summary>
        /// Return amount of milliseconds between executions
        /// </summary>
        public int RunSchedule
        { get; set; }

        /// <summary>
        /// Return amount of milliseconds between writing to logfile
        /// </summary>
        public int LogSchedule
        { get; set; }

        public object SyncRoot
        {
            get
            {
                return syncRoot;
            }
        }

        /// <summary>
        /// Flag indicating that this is a realtime task
        /// </summary>
        public bool Realtime
        {
            get
            {
                return false;
            }
        }


        /// <summary>
        /// Stop any internal services
        /// </summary>
        public void Stop()
        {
            //DoNothing
        }

        public void Init()
        {
            replacementDatabase = new DatabaseSDK(databaseName, this.dbRetryCount, this.dbRetryDuration, this.dbDeletePeriod);
            dataCollectionDatabase = new DatabaseSDK(dataCollectionConfig.Database.DataLogger, this.dbRetryCount, this.dbRetryDuration, this.dbDeletePeriod);
            InitialiseDb();
        }

        /// <summary>
        /// This method progresses the sensor replacement state machine
        /// for sensors that are in the 50 hour or 500 hour average stage.
        /// </summary>
        public void Run()
        {
            Int16 nominalRpm = 0;

            Dictionary<int, Int64> sensorsToCheck;
            Dictionary<int, int> sensorsCompletedStage;

            if (senCompValColumnNames == null)
            {
                try
                {
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

                    if (columns.Count > 0)
                    {
                        columns.RemoveAt(0);
                        this.senCompValColumnNames = columns.ToArray();
                    }
                }
                catch (DbException)
                    // Do nothing on DB error, the DB will be cleaned up when data is written
                {}
            }

            //Read the Nominal RPM from RPM Limit register
            nominalRpm = (short)(this.connection.ReadHoldingRegisters(1, (ushort)AMOTConstants.ModbusConstants.RPMLimit, 1))[0];

            sensorsToCheck = SelectSensorsInStage(SensorReplacementStage.Average50Hours);

            if (sensorsToCheck.Count > 0)
            {
                sensorsCompletedStage = SelectSensorsThatHaveCompletedAverage(nominalRpm, sensorsToCheck, moduleSettings.Settings.NumberOfRecords50Hours);
                if (sensorsCompletedStage.Count > 0)
                {
                    Averaging50hrsComplete(sensorsCompletedStage);
                }
            }

            sensorsToCheck = SelectSensorsInStage(SensorReplacementStage.Average500Hours);
            if (sensorsToCheck.Count > 0)
            {
                sensorsCompletedStage = SelectSensorsThatHaveCompletedAverage(nominalRpm, sensorsToCheck, moduleSettings.Settings.NumberOfRecords500Hours);
                
                if (sensorsCompletedStage.Count > 0)
                {
                    Averaging450hrsComplete(sensorsCompletedStage);

                    //For each sensor that has completed the 500 (50 hours + 450 hours) hours average
                    //create the send replacement data file for that sensor

                    CreateReplacementDataFiles(sensorsCompletedStage);
                }
            }
        }

        /// <summary>
        /// Creates the replacement data csv files for each sensor that has completed the 500 hour average stage
        /// </summary>
        /// <param name="sensors">A Dictionary of the sensors that have completed 500 hours</param>
        private void CreateReplacementDataFiles(Dictionary<int, int> sensors)
        {
            string average500hoursPriorToFail = "strftime('%Y-%m-%d %H:00:00',s.time_stamp, 'unixepoch'), avg({0}), count() from " +
                                     "rpm r inner join senValComp s ON r.time_stamp = s.time_stamp WHERE " +
                                     "s.time_stamp < {1} AND r.rpm1 > {2} AND {0} > -32000 " +
                                     "group by strftime('%Y-%m-%dT%H:00:00.000', s.time_stamp,'unixepoch') ORDER BY strftime('%Y-%m-%dT%H:00:00.000', s.time_stamp,'unixepoch') desc LIMIT 500";

            string average500hoursPostReplace = "strftime('%Y-%m-%d %H:00:00',s.time_stamp, 'unixepoch'), avg({0}), count() from " +
                                     "rpm r inner join senValComp s ON r.time_stamp = s.time_stamp WHERE " +
                                     "s.time_stamp > {1} AND r.rpm1 > {2} AND {0} > -32000 " +
                                     "group by strftime('%Y-%m-%dT%H:00:00.000', s.time_stamp,'unixepoch') ORDER BY strftime('%Y-%m-%dT%H:00:00.000', s.time_stamp,'unixepoch') desc LIMIT 500";

            string average = "strftime('%Y-%m-%d %H:00:00',s.time_stamp, 'unixepoch'), avg({0}),count() from " +
                                     "rpm r inner join senValComp s ON r.time_stamp = s.time_stamp WHERE " +
                                     "s.time_stamp BETWEEN {1} AND {2} AND r.rpm1 > {3} AND {0} > -32000 " +
                                     "group by strftime('%Y-%m-%dT%H:00:00.000', s.time_stamp,'unixepoch') ORDER BY strftime('%Y-%m-%dT%H:00:00.000', s.time_stamp,'unixepoch') desc";

            int rpm = 0;
            Int64 failureDate = 0;
            Int64 replacementDate = 0;
            string sensor1ColumnName;
            string sensor2ColumnName;
            Directory.CreateDirectory(moduleSettings.Settings.ExportFolder);

            foreach (KeyValuePair<int, int> sensor in sensors)
            {
                //sensor.Key will be a value between 0 and 27
                //We need to select sensor.Key and it's paried sensor from the database
                //if sensor.Key is odd we add 1 to find it's pair
                //if sensor.Key is even we minus 1 to find it's pair

                //Get column name for the two sensors
                sensor1ColumnName = senCompValColumnNames[((sensor.Key / 2) * 2)];
                sensor2ColumnName = senCompValColumnNames[((sensor.Key / 2) * 2) + 1];

                //Get sensor failure and replacement date
                using (DbConnection conn = replacementDatabase.GetDbConnection())
                {
                    using (DbDataReader dbDataReader = replacementDatabase.Select(conn, string.Format(CultureInfo.InvariantCulture, "failure_date, replacement_date from replacement where sensor_id={0}", sensor.Key)))
                    {
                        // Read all the sensors that are in the stage
                        while (dbDataReader.Read())
                        {
                            failureDate = dbDataReader.GetInt64(0);
                            replacementDate = dbDataReader.GetInt64(1);
                        }
                    }
                }

                //Open export file
                using (StreamWriter file = new StreamWriter(moduleSettings.Settings.ExportFolder + senCompValColumnNames[sensor.Key] + "replacement_data.txt", false))
                {
                    //Select 500 hours of 1 hour average running data pre failure date
                    file.WriteLine("[500_HOURS_PRIOR_TO_FAIL]");
                    file.WriteLine("[{0}]", sensor1ColumnName);
                    ExportReplacementData(average500hoursPriorToFail, rpm, failureDate, sensor1ColumnName, file);
                    file.WriteLine("[{0}]", sensor2ColumnName);
                    ExportReplacementData(average500hoursPriorToFail, rpm, failureDate, sensor2ColumnName, file);

                    file.WriteLine("[500_HOURS_POST_REPLACE]");
                    //Select 500 hours of 1 hour average running data post replacement date
                    file.WriteLine("[{0}]", sensor1ColumnName);
                    ExportReplacementData(average500hoursPostReplace, rpm, replacementDate, sensor1ColumnName, file);
                    file.WriteLine("[{0}]", sensor2ColumnName);
                    ExportReplacementData(average500hoursPostReplace, rpm, replacementDate, sensor2ColumnName, file);

                    file.WriteLine("[AVERAGE_BETWEEN_FAILURE_AND_REPLACEMENT]");
                    //Select 1 hour average running data between failure date and replacement date
                    file.WriteLine("[{0}]", sensor1ColumnName);
                    ExportReplacementData(average, rpm, failureDate, replacementDate, sensor1ColumnName, file);
                    file.WriteLine("[{0}]", sensor2ColumnName);
                    ExportReplacementData(average, rpm, failureDate, replacementDate, sensor2ColumnName, file);

                    file.Flush();
                    file.Close();
                }
            }
        }

        /// <summary>
        /// Exports the replacement data that is returned by the query sqlStatment.
        /// </summary>
        /// <param name="sqlStatment">The sql statement to use for selecting the data.</param>
        /// <param name="rpm">The reading that RPM must be above for this to be a good reading.</param>
        /// <param name="date">The date that is used to select readings from.</param>
        /// <param name="sensorColumnName">The name of the sensor to get a reading for.</param>
        /// <param name="file">The open file to write the data to.</param>
        private void ExportReplacementData(string sqlStatment, int rpm, Int64 date, string sensorColumnName, StreamWriter file)
        {
            string sql;
            //Select 500 hours of 1 hour average running data prior date
            using (DbConnection conn = this.dataCollectionDatabase.GetDbConnection())
            {
                sql = string.Format(CultureInfo.InvariantCulture, sqlStatment, sensorColumnName, date, rpm);

                using (DbDataReader dbDataReader = this.dataCollectionDatabase.Select(conn, sql))
                {
                    //strftime('%Y-%m-%d %H:00:00',s.time_stamp, 'unixepoch'), avg({0}), count()
                    while (dbDataReader.Read())
                    {
                        file.WriteLine("{0}, {1}, {2}", dbDataReader.GetString(0), (int)dbDataReader.GetDouble(1), dbDataReader.GetInt64(2));
                    }
                }
            }

            file.WriteLine();
            file.Flush();
        }

        /// <summary>
        /// Exports the replacement data that is returned by the query sqlStatment.
        /// </summary>
        /// <param name="sqlStatment">The sql statement to use for selecting the data.</param>
        /// <param name="rpm">The reading that RPM must be above for this to be a good reading.</param>
        /// <param name="startDate">The earliest date that is used to select readings from.</param>
        /// <param name="endDate">The latest date that is used to select readings from.</param>
        /// <param name="sensorColumnName">The name of the sensor to get a reading for.</param>
        /// <param name="file">The open file to write the data to.</param>
        private void ExportReplacementData(string sqlStatment, int rpm, Int64 startDate, Int64 endDate, string sensorColumnName, StreamWriter file)
        {
            string sql;

            using (DbConnection conn = this.dataCollectionDatabase.GetDbConnection())
            {
                sql = string.Format(CultureInfo.InvariantCulture, sqlStatment, sensorColumnName, startDate, endDate, rpm);

                using (DbDataReader dbDataReader = this.dataCollectionDatabase.Select(conn, sql))
                {
                    while (dbDataReader.Read())
                    {
                        file.WriteLine("{0}, {1}, {2}", dbDataReader.GetString(0), (int)dbDataReader.GetDouble(1), dbDataReader.GetInt64(2));
                    }
                }
            }

            file.WriteLine();
            file.Flush();
        }

        /// <summary>
        /// Selects the sensors from the replacement database that are in a certain stage.
        /// </summary>
        /// <param name="stage">The stage to select sensors for.</param>
        /// <returns>A Dictionary that holds the sensors in the stage requested and the time they where replaced started.</returns>
        private Dictionary<int, Int64> SelectSensorsInStage(SensorReplacementStage stage)
        {
            Dictionary<int, Int64> sensors = new Dictionary<int, Int64>();

            using (DbConnection conn = replacementDatabase.GetDbConnection())
            {
                using (DbDataReader dbDataReader = replacementDatabase.Select(conn, string.Format(CultureInfo.InvariantCulture, "sensor_id, replacement_date FROM replacement WHERE stage = {0};", (int)stage)))
                {
                    // Read all the sensors that are in the stage
                    while (dbDataReader.Read())
                    {
                        sensors.Add(dbDataReader.GetInt32(0), dbDataReader.GetInt64(1));
                    }
                }
            }

            return sensors;
        }

        /// <summary>
        /// Selects senors from the database that have completed the average stage.
        /// </summary>
        /// <param name="nominalRpm">The value that RPM must be over for a sensor reading to be good.</param>
        /// <param name="sensorsBeingReplaced">A Dictionary of the sensor ids and there replacement dates to check.</param>
        /// <param name="numberOfRequiredReadings">The number of valid sensor readings </param>
        /// <returns></returns>
        private Dictionary<int, int> SelectSensorsThatHaveCompletedAverage(Int16 nominalRpm, Dictionary<int, Int64> sensorsBeingReplaced, int numberOfRequiredReadings)
        {
            Dictionary<int, int> selectedSensors = new Dictionary<int, int>();
            Dictionary<int, Int64> updateTimeRemaining = new Dictionary<int, Int64>();

            string sensorColumnName;
            //We now have a Dictionary of all the sensors that are in a average stage and the time that thay started sensor replacement.
            //We have to check if any of them have finished the stage.
            //A sensor has finished the stage if numberOfRequiredReadings number of records 
            //have been collected since the sensor replacement date when the rpm was above nominal and
            //the engine direction was forward

            foreach (KeyValuePair<int, Int64> replacementSensor in sensorsBeingReplaced)
            {
                sensorColumnName = this.senCompValColumnNames[replacementSensor.Key];

                string sql = string.Format(CultureInfo.InvariantCulture,
                    "avg({0}) as averageReading, count({0}) as numberOfRecords FROM senValComp s INNER JOIN rpm r on s.time_stamp = r.time_stamp where r.rpm1 >= {1} AND r.direction = 0 AND s.time_stamp > {2} and {0} > -32000;"
                    , sensorColumnName, nominalRpm, replacementSensor.Value);

                using (DataTable table = dataCollectionDatabase.SelectIntoDataTable(sql, FaultCodes.ReplacementDatabaseReadFailure,FaultCodes.ReplacementDatabaseFailure))
                {
                    foreach (DataRow row in table.Rows)
                    {
                        int readingsCollected = int.Parse(row[1].ToString());
                        if (readingsCollected >= numberOfRequiredReadings)
                        {
                            //This sensor has completed the stage
                            selectedSensors.Add(replacementSensor.Key, (int)(double)row[0]);
                        }
                        else
                        {
                            //Update the time remaining for the sensor
                            Int64 totalMinutesNeeded = (numberOfRequiredReadings / 6);
                            Int64 minutes = (readingsCollected / 6);
                            Int64 minutesRemaining = totalMinutesNeeded - minutes;

                            updateTimeRemaining.Add(replacementSensor.Key, minutesRemaining);

                        }
                    }
                }
            }

            //updateTimeRemaining may hold a list of sensors that need to have the minutesRemaining timers
            //updated
            if (updateTimeRemaining.Count > 0)
            {
                List<string> sqlStatements = new List<string>();

                foreach (KeyValuePair<int, Int64> sensor in updateTimeRemaining)
                {
                    sqlStatements.Add(string.Format(CultureInfo.InvariantCulture, "UPDATE replacement set minutes_remaining={1} where sensor_id={0}",
                    sensor.Key, sensor.Value));
                }

                if (sqlStatements.Count > 0)
                {
                    if (this.replacementDatabase.ExecuteSQLStatements(sqlStatements.ToArray(), FaultErrorIndicators.FaultCodes.ReplacementDatabaseWriteFailure, FaultErrorIndicators.FaultCodes.ReplacementDatabaseFailure, FaultErrorIndicators.FaultCodes.ReplacementDatabaseMissedLog) == false)
                    {
                        InitialiseDb();
                    }
                }
            }

            return selectedSensors;
        }


        public void Log(DateTime logTime)
        {
        }

        private void Averaging50hrsComplete(Dictionary<int, int> sensors)
        {
            logger.Warn("Command: 50hrs Averaging Complete");

            this.connection.WriteSingleRegister(1, 1063, 3);

            ushort[] offsets = this.connection.ReadHoldingRegisters(1, 1064, 28);
            ushort[] newOffsets = new ushort[offsets.Length];

            //Calculate new offset for each channel
            for (int i = 0; i < offsets.Length; i++)
            {
                if (sensors.ContainsKey(i))
                {
                    newOffsets[i] = (ushort)(offsets[i] + (ushort)sensors[i]);
                }
            }

            this.connection.WriteSingleRegister(1, 1063, 3);
            this.connection.WriteMultipleRegisters(1, 1064, newOffsets);

            ushort[] bitmasks = this.connection.ReadHoldingRegisters(1, 117, 28);
            for (int i = 0; i < offsets.Length; i++)
            {
                if (offsets[i] != newOffsets[i])
                {
                    bitmasks[i] &= 0xFFEB; //Clear bits 2 and 4
                }
            }

            this.connection.WriteMultipleRegisters(1, 117, bitmasks);

            this.connection.WriteSingleRegister(1, 1031, 3);
            this.connection.WriteSingleRegister(1, 646, 30);
            this.connection.WriteSingleRegister(1, 1093, 1);

            List<string> sqlStatements = new List<string>();

            //Update the Stage in the database for the registers in sensors
            foreach (KeyValuePair<int, int> sensor in sensors)
            {
                sqlStatements.Add(String.Format(CultureInfo.InvariantCulture, "UPDATE replacement set stage={0}, minutes_remaining={2} WHERE sensor_id={1};", (int)SensorReplacementStage.Average500Hours, sensor.Key, (moduleSettings.Settings.NumberOfRecords500Hours / 6)));
                eventLog.SensorReplace50HoursComplete(sensor.Key);
            }

            if (this.replacementDatabase.ExecuteSQLStatements(sqlStatements.ToArray(), FaultErrorIndicators.FaultCodes.DataLoggerDatabaseWriteFailure, FaultErrorIndicators.FaultCodes.DataLoggerDatabaseFailure, FaultErrorIndicators.FaultCodes.DataLoggerDatabaseMissedLog) == false)
            {
                InitialiseDb();
            }
        }

        /// <summary>
        /// Writes 31 to register 646.
        /// And sets the sensor to the 500 complete stage in the database
        /// </summary>
        private void Averaging450hrsComplete(Dictionary<int, int> sensors)
        {
            logger.Warn("Command: 450hrs Averaging Complete");

            this.connection.WriteSingleRegister(1, 646, 31);

            List<string> sqlStatements = new List<string>();

            //Update the Stage in the database for the sensors in sensors
            foreach (KeyValuePair<int, int> sensor in sensors)
            {
                sqlStatements.Add(String.Format(CultureInfo.InvariantCulture, "UPDATE replacement set stage={0} WHERE sensor_id={1};", (int)SensorReplacementStage.EnableSendReplacementData, sensor.Key));
                eventLog.SensorReplace500HoursComplete(sensor.Key);
            }

            if (this.replacementDatabase.ExecuteSQLStatements(sqlStatements.ToArray(), FaultErrorIndicators.FaultCodes.ReplacementDatabaseWriteFailure, FaultErrorIndicators.FaultCodes.ReplacementDatabaseFailure, FaultErrorIndicators.FaultCodes.ReplacementDatabaseMissedLog) == false)
            {
                InitialiseDb();
            }

        }

        /// <summary>
        /// Sets up database once it is connected. Creates tables and indexes
        /// </summary>
        private void InitialiseDb()
        {
            List<string> sqlStatements = new List<string>();
            string sqlColumns = "failure_date INTEGER, replacement_date INTEGER, sensor_id INTEGER UNIQUE, stage INTEGER, minutes_remaining INTEGER";

            sqlStatements.Add(string.Format("CREATE TABLE IF NOT EXISTS replacement ({0});", sqlColumns));
            sqlStatements.Add(string.Format("CREATE INDEX IF NOT EXISTS replacement_sensor_index ON replacement (sensor_id);"));
            sqlStatements.Add(string.Format("CREATE INDEX IF NOT EXISTS replacement_replacement_index ON replacement (replacement_date);"));

            //Ignore the return value
            //If the database create fails then there is not much we can
            //do.
            this.replacementDatabase.ExecuteSQLStatements(sqlStatements.ToArray(), FaultErrorIndicators.FaultCodes.ReplacementDatabaseWriteFailure, FaultErrorIndicators.FaultCodes.ReplacementDatabaseFailure, FaultErrorIndicators.FaultCodes.ReplacementDatabaseMissedLog);
        }
    }
}
