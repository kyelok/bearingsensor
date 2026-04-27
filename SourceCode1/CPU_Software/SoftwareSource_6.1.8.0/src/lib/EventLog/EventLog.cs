/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Text;
using System.IO;
using DataCollectionSDK;
using HelperClasses;
using WebServiceObjects;

namespace EventLogging
{
    /// <summary>
    /// This class provides an interface to the event log
    /// for use by the other modules in the system.
    /// </summary>
    public class EventLog
    {
        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        /// <summary>
        /// The database object
        /// </summary>
        internal DatabaseSDK database;

        /// <summary>
        /// Configures the number of event log records to read at a time during an export operation
        /// </summary>
        public int ExportTransactionSize { get; set; }

        /// <summary>
        /// Default constructor
        /// </summary>
        public EventLog()
        {
            ModuleConfiguration configuration;
            try
            {
                configuration = ModuleConfiguration.GetApplicationConfiguration();
            }
            catch (Exception)
            {
                configuration = ModuleConfiguration.GetWebConfiguration();
            }
            DataCollectionConfigurationSection dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;
            if (dataCollectionConfig == null)
                dataCollectionConfig = new DataCollectionConfigurationSection();

            database = new DatabaseSDK(dataCollectionConfig.Database.EventLog, dataCollectionConfig.Database.DbRetryCount, dataCollectionConfig.Database.DbRetryDuration, 15724800);
            InitialiseDb();

            ExportTransactionSize = dataCollectionConfig.Database.DbExportTransactionSize;
        }

        /// <summary>
        /// Sets up database once it is connected. Creates tables, indexes and triggers
        /// </summary>
        private void InitialiseDb()
        {
            List<string> sqlStatements = new List<string>();

            sqlStatements.Add("CREATE TABLE IF NOT EXISTS eventlog (eventdatetime INTEGER NOT NULL," +
                "channel INTEGER," +
                "datatype INTEGER," +
                "eventid INTEGER," +
                "eventcode INTEGER," +
                "description TEXT NOT NULL," +
                "ackdatetime INTEGER," +
                "ackUserId TEXT);");

            sqlStatements.Add("CREATE TABLE IF NOT EXISTS alarms (alarmId INTEGER primary key," +
                "alarmDesc TEXT," +
                "alarmOn INTEGER," +
                "alarmOff INTEGER," +
                "count INTEGER," +
                "acked BOOLEAN," +
                "ignore BOOLEAN," +
                "ackTime INTEGER," +
                "ackUser TEXT," +
                "ignoreTime INTEGER," +
                "ignoreUser TEXT," +
                "dataType INTEGER," +
                "channelMask INTEGER," +
                "eventCode INTEGER," +
                "logged INTEGER);");

            sqlStatements.Add("CREATE INDEX IF NOT EXISTS events_time_stamp_index ON eventlog (eventdatetime);"); 
            sqlStatements.Add("CREATE TRIGGER IF NOT EXISTS del_old_events_records AFTER INSERT ON eventlog BEGIN DELETE FROM eventlog WHERE eventdatetime < ( (SELECT MAX(eventdatetime) FROM eventlog ) - 157784630); END;");
            
            sqlStatements.Add("CREATE TABLE IF NOT EXISTS learning_status (time_stamp integer, status integer);");            

            //Add a record to learning_status, as this table will only be UPDATEd in the future
            sqlStatements.Add(String.Format("INSERT INTO learning_status VALUES({0}, {1});", 
                DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks), 
                "-1"
                ));

            this.database.ExecuteSQLStatements(sqlStatements.ToArray(),FaultErrorIndicators.FaultCodes.EventLogWriteFailure,FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure,FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog);
        }

        /// <summary>
        /// Clears all events from the event log database.
        /// And starts a new event log with the first entry being the name of the user that cleared the log.
        /// </summary>
        /// <param name="username">The name of the user that cleared the event log.</param>
        public void ClearEventLog(string username = "")
        {
            this.database.ExecuteSQLStatements(new string[1] { "DROP TABLE IF EXISTS eventlog;" },FaultErrorIndicators.FaultCodes.EventLogWriteFailure,FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure,FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog);
            this.InitialiseDb();
            this.LogGeneralEvent(EventStrings.EventLogCleared, username);
        }

        /// <summary>
        /// Clears Alarm List.
        /// And starts a new event log with the first entry being the name of the user that cleared the log.
        /// </summary>
        /// <param name="username">The name of the user that cleared the event log.</param>
        public void ClearAlarmList(string username = "")
        {
            List<string> sqlStatements = new List<string>();
            sqlStatements.Add(String.Format("ALTER TABLE alarms RENAME TO alarms{0};", DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks)));
            this.database.ExecuteSQLStatements(sqlStatements.ToArray(), FaultErrorIndicators.FaultCodes.EventLogWriteFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog);
            this.InitialiseDb();
            this.LogGeneralEvent(EventStrings.ClearAlarmList, username);            
        }

        /// <summary>
        /// Clears Firing Order.
        /// And starts a new event log with the first entry being the name of the user that cleared the log.
        /// </summary>
        /// <param name="username">The name of the user that cleared the event log.</param>
        public void ClearFiringOrder(string username = "")
        {
            this.LogGeneralEvent(EventStrings.ClearFiringOrder, username);
        }

        /// <summary>
        /// Reset 6Hr prewarning.
        /// And starts a new event log with the first entry being the name of the user that cleared the log.
        /// </summary>
        /// <param name="username">The name of the user that cleared the event log.</param>
        public void ResetPrewarning(string username = "")
        {
            this.LogGeneralEvent(EventStrings.ResetPrewarning, username);
        }

        /// <summary>
        /// Change SPU time.
        /// And starts a new event log with the first entry being the name of the user that cleared the log.
        /// </summary>
        /// <param name="username">The name of the user that cleared the event log.</param>
        public void ChangeSpuTime(string username = "")
        {
            this.LogGeneralEvent(EventStrings.ChangeSpuTime, username);
        }

        /// <summary>
        /// Logs a SPU update event to the event log.
        /// </summary>
        /// <param name="spu">The SPU that was updated.</param>
        /// <param name="oldVersion">The version of SPU firmware that was updated from.</param>
        /// <param name="newVersion">The version of SPU firmware that was updated too.</param>
        /// <param name="username">The name of the user that performed the update.</param>
        public void SPUUpdate(int spu, string oldVersion, string newVersion, string username)
        {
            this.LogGeneralEvent(string.Format(EventStrings.SPUUpdate,spu,oldVersion,newVersion), username);
        }

        /// <summary>
        /// Logs a CPU update event to the event log.
        /// </summary>        
        /// <param name="newVersion">The version of CPU software that was updated.</param>
        /// <param name="username">The name of the user that performed the update.</param>
        public void CPUUpdate(string newVersion, string username)
        {
            this.LogGeneralEvent(string.Format(EventStrings.CPUUpdate, newVersion), username);
        }

        /// <summary>
        /// Logs a offset A update event to the event log.
        /// </summary>
        /// <param name="sensorID">The ID of the sensor that offset A was updated for.</param>
        /// <param name="oldValue">The value of the offset before the update.</param>
        /// <param name="newValue">The value that the offset was updated to.</param>
        /// <param name="username">The name of the user that performed the update.</param>
        public void UpdateOffsetA(int sensorID, ushort oldValue, ushort newValue, string username)
        {
            this.LogGeneralEvent(string.Format(EventStrings.DCOffsetCh, SensorIDAsString(sensorID), (short)oldValue, (short)newValue), username);
        }

        /// <summary>
        /// Logs a offset B update event to the event log.
        /// </summary>
        /// <param name="sensorID">The ID of the sensor that offset B was updated for.</param>
        /// <param name="oldValue">The value of the offset before the update.</param>
        /// <param name="newValue">The value that the offset was updated to.</param>
        /// <param name="username">The name of the user that performed the update.</param>
        public void UpdateOffsetB(int sensorID, ushort oldValue, ushort newValue, string username)
        {
            this.LogGeneralEvent(string.Format(EventStrings.CrOffsetCh, SensorIDAsString(sensorID), (short)oldValue, (short)newValue), username);
        }

        /// <summary>
        /// Logs that the alarm test mode was changed
        /// </summary>
        /// <param name="testModeEnabled">Flag indicating if the test mode has been enabled or disabled.</param>
        /// <param name="username">The name of the user that changed the test mode.</param>
        public void AlarmTestModeStateChange(bool testModeEnabled, string username)
        {
            if (testModeEnabled)
            {
                this.LogGeneralEvent(EventStrings.AlarmTestModeStatusEnabledTestMode, username);
            }
            else
            {
                this.LogGeneralEvent(EventStrings.AlarmTestModeStatusDisabledNormalMode, username);
            }
        }

        /// <summary>
        /// Logs that a sensor was enabled or disabled.
        /// </summary>
        /// <param name="sensorID">The id of the sensor that was enabled or disabled.</param>
        /// <param name="enable">Flag indicating if the sensor was enabled or disabled.</param>
        /// <param name="username">The name of the user that enabled or disabled the sensor.</param>
        public void SensorEnable(int sensorID, bool enable, string username)
        {
            if (enable)
            {
                this.LogGeneralEvent(string.Format(EventStrings.SensorStatusEnablingCh, SensorIDAsString(sensorID)), username);
            }
            else
            {
                this.LogGeneralEvent(string.Format(EventStrings.SensorStatusDisablingCh, SensorIDAsString(sensorID)), username);
            }
        }

        /// <summary>
        /// Logs that a sensor was masked or unmasked
        /// </summary>
        /// <param name="sensorID">The id of the sensor</param>
        /// <param name="enable">Flag indicating if the sensor was masked or unmasked.</param>
        /// <param name="username">The name of the user that masked or unmasked the sensor.</param>
        public void SensorAlarmMask(int sensorID, bool enable, string username)
        {
            if (enable)
            {
                this.LogGeneralEvent(string.Format(EventStrings.SensorStatusAlarmmaskonCh, SensorIDAsString(sensorID)), username);
            }
            else
            {
                this.LogGeneralEvent(string.Format(EventStrings.SensorStatusAlarmmaskoffCh, SensorIDAsString(sensorID)), username);
            }
        }

        /// <summary>
        /// Logs that a sensor replacment as started.
        /// </summary>
        /// <param name="sensorID">The id of the sensor that replacment was started for.</param>
        /// <param name="username">The name of the user that started the replacement.</param>
        public void StartSensorReplace(int sensorID, string username)
        {
            this.LogGeneralEvent(string.Format(EventStrings.SensorReplacementInitiated, SensorIDAsString(sensorID)), username);
        }

        /// <summary>
        /// Logs that a sensor replacement was cancelled.
        /// </summary>
        /// <param name="sensorID">The id of the sensor.</param>
        /// <param name="username">The name of the user that cancelled the replacement.</param>
        public void CancelSensorReplace(int sensorID, string username)
        {
            this.LogGeneralEvent(string.Format(EventStrings.SensorReplacementCancelled, SensorIDAsString(sensorID)), username);
        }

        /// <summary>
        /// Logs that a sensor has reached the 50 hours stage.
        /// </summary>
        /// <param name="sensorID">The id of the sensor.</param>
        public void SensorReplace50HoursComplete(int sensorID)
        {
            this.LogGeneralEvent(string.Format(EventStrings.SensorReplacement50HoursCompleted, SensorIDAsString(sensorID)), "");
        }

        /// <summary>
        /// Logs that a sensor has reached the 500 hours stage.
        /// </summary>
        /// <param name="sensorID">The id of the sensor.</param>
        public void SensorReplace500HoursComplete(int sensorID)
        {
            this.LogGeneralEvent(string.Format(EventStrings.SensorReplacement500HoursCompleted, SensorIDAsString(sensorID)), "");
        }

        /// <summary>
        /// Logs that the system has started up.
        /// </summary>
        public void SystemStartup(string softwareVersion)
        {
            this.LogGeneralEvent(string.Format(EventStrings.SystemStartup, softwareVersion), "");
        }

        /// <summary>
        /// Logs that the system has been rebooted.
        /// </summary>
        public void SystemRebooted()
        {
            this.LogGeneralEvent(EventStrings.SystemRebooted, "");
        }
    

        private string SensorIDAsString(int sensor)
        {
            return string.Format("{0}.{1}", ((sensor / 2) + 1), ((sensor % 2) + 1));
        }

        /// <summary>
        /// Create the string needed to write to the database
        /// </summary>
        /// <param name="message">The log entry text string to insert into the database</param>
        /// <param name="state">The state of the Alarm</param>
        /// <param name="eventId"></param>
        /// <returns></returns>
        internal static string CreateLogSQLString(int channel, LogDataTypes datatype, int eventid, int eventcode, string description, Int64 ackdatetime, string ackUser)
        {
            return string.Format("INSERT INTO eventlog (eventdatetime, channel, datatype, eventid, eventcode, description, ackdatetime, ackUserId) " +
                "VALUES "+
                "({0}, {1}, {2}, {3}, {4}, '{5}', {6}, '{7}');", 
                DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks),
                channel, (int)datatype, eventid, eventcode, description, ackdatetime, ackUser);
        }

        /// <summary>
        /// Logs a message to the event log as a general event.
        /// </summary>
        /// <param name="description">The message to log.</param>
        /// <param name="username">The name of the user that caused the message to be logged.</param>
        public void LogGeneralEvent(string description, string username)
        { 
            LogEvent(LogDataTypes.General, 0, 0, 0, description, 0, string.Empty);
        }
                
        /// <summary>
        /// Log an event for a sensor channel
        /// </summary>
        /// <param name="dataType">The type of the data</param>
        /// <param name="channel">The sensor channel</param>
        /// <param name="eventid">The Id of the event</param>
        /// <param name="eventcode">The code for the event</param>
        /// <param name="description">Event description</param>
        /// <param name="ackdatetime">The date of the ACK</param>
        /// <param name="ackUserId">The user Id of the ACK</param>
        public void LogEvent(LogDataTypes dataType, int channel, int eventid, int eventcode, string description, int ackdatetime, string ackUser)
        {
            string sql;
            if (dataType == LogDataTypes.General)
                channel = (1 << 29) | (1 << 28) | ((1 << 28) - 1);
            sql = CreateLogSQLString(channel, dataType, eventid, eventcode, description, ackdatetime, ackUser);
            if (database.ExecuteSQLStatements(new string[] { sql }, FaultErrorIndicators.FaultCodes.EventLogWriteFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog) == false)
            {
                this.InitialiseDb();
            }
        }

        /// <summary>
        /// Log a water in oil event acked by the user
        /// </summary>
        /// <param name="dataType">The type of the data</param>
        /// <param name="channel">The sensor channel</param>
        /// <param name="eventid">The Id of the event</param>
        /// <param name="eventcode">The code for the event</param>
        /// <param name="description">Event description</param>
        /// <param name="ackdatetime">The date of the ACK</param>
        /// <param name="ackUserId">The user Id of the ACK</param>
        public void LogEventWIO(LogDataTypes dataType, int eventid, int eventcode, string description, int ackdatetime, string ackUser)
        {
            string sql;
            sql = CreateLogSQLString((int)(1 << 28), dataType, eventid, eventcode, description, ackdatetime, ackUser);
            if (database.ExecuteSQLStatements(new string[] { sql }, FaultErrorIndicators.FaultCodes.EventLogWriteFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog) == false)
            {
                this.InitialiseDb();
            }
        }
        
        /// <summary>
        /// Log a SLEM event
        /// </summary>
        /// <param name="dataType">The type of the data</param>
        /// <param name="channel">The sensor channel</param>
        /// <param name="eventid">The Id of the event</param>
        /// <param name="eventcode">The code for the event</param>
        /// <param name="description">Event description</param>
        /// <param name="ackdatetime">The date of the ACK</param>
        /// <param name="ackUserId">The user Id of the ACK</param>
        public void LogEventSLEM(LogDataTypes dataType, int eventid, int eventcode, string description, int ackdatetime, string ackUser)
        {
            string sql;
            sql = CreateLogSQLString((int)(1 << 29), dataType, eventid, eventcode, description, ackdatetime, ackUser);
            if (database.ExecuteSQLStatements(new string[] { sql }, FaultErrorIndicators.FaultCodes.EventLogWriteFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog) == false)
            {
                this.InitialiseDb();
            }
        }

        /// <summary>
        /// Writes the last Engine Learning status to a db table
        /// </summary>
        /// <param name="status">The engine learn status</param>
        public void UpdateLastLearningStatus(int status)
        {
            string[] sqlStatement = new string[1];
            sqlStatement[0] = String.Format("UPDATE learning_status SET time_stamp = {0}, status = {1} WHERE rowid = 1;", DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks), status);
            if (database.ExecuteSQLStatements(sqlStatement, FaultErrorIndicators.FaultCodes.EventLogWriteFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog) == false)
            {
                this.InitialiseDb();
            }
        }

        /// <summary>
        /// Gets the previous learning status logged.
        /// </summary>
        /// <returns>The previous learning status (0-12), or -1 on database error newly initialised.</returns>
        public int GetLastLearningStatus()
        {
            try
            {
                using (DbConnection conn = database.GetDbConnection())
                {
                    using (DbDataReader dbDataReader = database.Select(conn, "status FROM learning_status;"))
                    {
                        dbDataReader.Read();
                        try
                        {
                            return dbDataReader.GetInt32(0);
                        }
                        catch (InvalidCastException)
                        {
                            return -1;
                        }
                    }
                }
            }
            catch (DbException)
            {
                database.MoveCorruptDatabase();
                InitialiseDb();
            }
            return -1;
        }

        /// <summary>
        /// Exports the event log to a Stream in CSV format.
        /// </summary>
        /// <param name="output">The Stream to export the event log too.</param>
        public void ExportToCSV(StreamWriter output)
        {
            int offset = 0;
            int limit = ExportTransactionSize;
            int read = 0;
            StringBuilder stringBuilder = new StringBuilder();

            output.WriteLine("\"Event Date/Time\",\"Datatype\",\"Channel\",\"Event Id\",\"Event Code\",\"Description\",\"Ack Date/Time\",\"Ack UserId\"");

            do
            {
                read = 0;
                stringBuilder.Clear();

                stringBuilder.Append("strftime('%d/%m/%Y %H:%M:%S',eventdatetime,'unixepoch'), datatype, channel, eventid, eventcode, description, strftime('%d/%m/%Y %H:%M:%S',ackdatetime,'unixepoch'), ackUserId FROM eventlog ORDER BY eventdatetime DESC");
                stringBuilder.AppendFormat(" LIMIT {0} OFFSET {1};", limit, offset);

                DateTime start = DateTime.UtcNow;

                using (DataTable dt = database.SelectIntoDataTable(stringBuilder.ToString(),FaultErrorIndicators.FaultCodes.EventLogReadFailure,FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure))
                {
                    Console.WriteLine(DateTime.UtcNow - start);

                    using (DbDataReader dr = dt.CreateDataReader())
                    {
                        while (dr.Read())
                        {
                            if (dr.GetString(7) == null || dr.GetString(7).Trim().Length == 0)
                            {
                                output.WriteLine("\"{0}\",\"{1}\",{2},{3},{4},\"{5}\"",
                                    dr.GetString(0), (LogDataTypes)dr.GetInt64(1), dr.GetInt64(2), dr.GetInt64(3),
                                    dr.GetInt64(4), dr.GetString(5));
                            }
                            else
                            {
                                output.WriteLine("\"{0}\",\"{1}\",{2},{3},{4},\"{5}\",\"{6}\",{7}",
                                    dr.GetString(0), (LogDataTypes)dr.GetInt64(1), dr.GetInt64(2), dr.GetInt64(3),
                                    dr.GetInt64(4), dr.GetString(5), dr.GetString(6), dr.GetString(7));
                            }

                            read++;
                        }
                    }
                }
                offset += limit;
            } while (read == limit);
        }

        /// <summary>
        /// Exports the event log to a CVS file.
        /// </summary>
        /// <param name="file">The file to export the event log</param>
        public void ExportToCVS(string file)
        {
            using (StreamWriter output = new StreamWriter(File.Create(file)))
            {
                ExportToCSV(output);
                output.Flush();
                output.Close();
            }
        }

        /// <summary>
        /// Reads in events from the event log. The EventLogResult object will return the offset within the 
        /// event log the data was read, the number of events read and the data.
        /// </summary>
        /// <param name="offset">Offset within the logs to read, if this is -1 then the last n events will be read</param>
        /// <param name="limit">The number of events to return</param>
        /// <returns>The event log results</returns>
        public EventLogResult ReadEventLog(int offset, int limit)
        {
            StringBuilder stringBuilder = new StringBuilder();
            List<EventLogItem> eventLogData = new List<EventLogItem>();
            int totalRows = -1;
            int startRow = -1;

            stringBuilder.Append("(select count(*) from eventlog AS totalRows), eventdatetime, datatype, channel, rowid, eventcode, description, ackdatetime, ackUserId FROM eventlog ORDER BY eventdatetime  DESC");

            if (limit == 0)
            {
                limit = 100;
                offset = -1;
            }

            if (offset == -1)
            {
                stringBuilder.AppendFormat(" LIMIT {0} OFFSET (SELECT COUNT(*) FROM eventlog) - {0};", limit);
            }
            else
            {
                stringBuilder.AppendFormat(" LIMIT {0} OFFSET {1};", limit, offset);
                startRow = offset;
            }

            object[] itemArray;

            using (DataTable dbDataTable = database.SelectIntoDataTable(stringBuilder.ToString(),FaultErrorIndicators.FaultCodes.EventLogReadFailure,FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure))
            {
                if (dbDataTable.Rows.Count > 0)
                {
                    totalRows = (int)(Int64)dbDataTable.Rows[0].ItemArray[0];
                }

                foreach (DataRow row in dbDataTable.Rows)
                {
                    itemArray = row.ItemArray;
                    eventLogData.Add(new EventLogItem(
                        (int)(Int64)itemArray[1],
                        (LogDataTypes)(Int64)itemArray[2],
                        (int)(Int64)itemArray[3],
                        (int)(Int64)itemArray[4],
                        (int)(Int64)itemArray[5],
                        (string)itemArray[6],
                        (int)(Int64)itemArray[7],
                        (string)itemArray[8],
                        0));
                }
            }
            
            if (startRow == -1)
            {
                startRow = totalRows - eventLogData.Count;
            }

            return new EventLogResult(totalRows, startRow, eventLogData.ToArray());
        }

        /// <summary>
        /// Create a new event log transaction for this EventLog object
        /// </summary>
        /// <returns>The event log transaction object</returns>
        public EventLogTransaction CreateEventLogTransaction()
        {
            return new EventLogTransaction(this);
        }

        /// <summary>
        /// Logs temperature setting changes.
        /// </summary>
        /// <param name="channleName">The name of the channel.</param>
        /// <param name="enable">The enable status.</param>
        /// <param name="alarmLevel">The alaem level.</param>
        /// <param name="slowdownLevel">The slowdown level.</param>
        public void TemperatureSetting(string channleName, bool enable, short alarmLevel, short slowdownLevel)
        {
            StringBuilder logLineBuilder = new StringBuilder("");
            logLineBuilder.Append(channleName);
            if(enable) logLineBuilder.Append(" enabled ");
            else logLineBuilder.Append(" disabled ");
            logLineBuilder.Append("alarm: ");
            logLineBuilder.Append(alarmLevel);
            logLineBuilder.Append(" slowdown: ");
            logLineBuilder.Append(slowdownLevel);
            this.LogGeneralEvent(logLineBuilder.ToString(),"");
        }

        /// <summary>
        /// Logs temperature setting changes.
        /// </summary>
        /// <param name="channelNumber">The number of channels.</param>
        /// <param name="rtdPerPlc">The rtd per plc.</param>

        public void TemperatureSettings(int channelNumber, int rtdPerPlc, int rising, int falling, int mainbearing, int crankpinbearing, int crossheadbearing)
        {
            StringBuilder logLineBuilder = new StringBuilder("SN: ");
            logLineBuilder.Append(channelNumber);
            logLineBuilder.Append(", MB: ");
            logLineBuilder.Append(mainbearing);
            logLineBuilder.Append(", CPB: ");
            logLineBuilder.Append(crankpinbearing);
            logLineBuilder.Append(", CHB: ");
            logLineBuilder.Append(crossheadbearing);
            logLineBuilder.Append(", R/M: ");            
            logLineBuilder.Append(rtdPerPlc);
            logLineBuilder.Append(", R: ");
            logLineBuilder.Append(rising);
            logLineBuilder.Append(", F: ");
            logLineBuilder.Append(falling);
            this.LogGeneralEvent(logLineBuilder.ToString(), "");
        }

        /// <summary>
        /// Logs that the temprature setting has been imported.
        /// </summary>
        public void TemperatureImport()
        {
            this.LogGeneralEvent(EventStrings.ImportTemperature, "");
        }
    }
}
