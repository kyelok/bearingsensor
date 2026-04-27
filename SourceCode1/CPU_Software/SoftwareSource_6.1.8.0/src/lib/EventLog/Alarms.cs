/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Text;
using DataCollectionSDK;
using HelperClasses;
using WebServiceObjects;

namespace EventLogging
{
    /// <summary>
    /// This class provides a user outward view of the alarms currently active within the system
    /// </summary>
    public class Alarms
    {
        /// <summary>
        /// The alarm states
        /// </summary>
        public enum AlarmState
        {
            On,
            Off,
            Ack,
            Cleared,
            Ignore
        }

        /// <summary>
        /// The alarms database
        /// </summary>
        private DatabaseSDK database;

        private EventLog eventLog;



        /// <summary>
        /// Default constructor
        /// </summary>
        public Alarms()
        {
            ModuleConfiguration configuration = ModuleConfiguration.GetApplicationConfiguration();
            DataCollectionConfigurationSection dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;
            if (dataCollectionConfig == null)
                dataCollectionConfig = new DataCollectionConfigurationSection();



            database = new DatabaseSDK(dataCollectionConfig.Database.EventLog, dataCollectionConfig.Database.DbRetryCount, dataCollectionConfig.Database.DbRetryDuration, 15724800);
            eventLog = new EventLog();
        }

        /// <summary>
        /// Returns a list of currently active or unacknowledged alarms
        /// </summary>
        /// <returns>List of the currently active alarms</returns>
        public List<AlarmDatabaseObject> GetActiveAlarms(int[] alarms = null, bool all = false)
        {

            string sqlQuery = AlarmDatabaseObject.AlarmColumns + " FROM alarms";

            // If we are looking for specific alarms we add to the SQL statement
            if (alarms != null)
            {
                StringBuilder alarmsQuery = new StringBuilder(" WHERE (");
                for (int i = 0; i < alarms.Length; i++)
                {
                    if (i != 0)
                        alarmsQuery.Append(" OR ");
                    alarmsQuery.AppendFormat("alarmId={0}", alarms[i]);
                }
                alarmsQuery.Append(")");
                sqlQuery += alarmsQuery.ToString();
            }

            // Search for the alarms
            List<AlarmDatabaseObject> activeAlarms = new List<AlarmDatabaseObject>();
            using (DbConnection connection = database.GetDbConnection())
            {
                using (DbDataReader data = database.Select(connection, sqlQuery + ";"))
                {
                    AlarmDatabaseObject alarmObject;
                    while (data.Read())
                    {
                        alarmObject = new AlarmDatabaseObject(
                            data.GetInt32(0),
                            data.GetString(1),
                            data.GetInt64(2),
                            data.GetInt64(3),
                            data.GetInt32(4),
                            data.GetInt32(5) == 0 ? false : true,
                            data.GetInt32(6) == 0 ? false : true,
                            data.GetInt64(7),
                            data.GetString(8),
                            data.GetInt64(9),
                            data.GetString(10),
                            (int)data.GetInt64(11),
                            (int)data.GetInt64(12),
                            (short)data.GetInt64(13),
                            data.GetInt32(14) == 0 ? false : true);

                        activeAlarms.Add(alarmObject);
                    }
                }
            }
            return activeAlarms;
        }

        private void UpdateAlarmState(int[] alarmId, int userId, AlarmState state, string username)
        {
            int processedAlarms = 0;

            EventLogTransaction eventLogTransaction = eventLog.CreateEventLogTransaction();

            if (alarmId == null || alarmId.Length == 0)
                return;

            StringBuilder stringBuilder = new StringBuilder();

            switch (state)
            {
                case AlarmState.Ack:
                    stringBuilder.AppendFormat("UPDATE alarms set acked=1, ackTime={0}, ackUser='{1}' WHERE",
                        DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks), username);
                    break;
                case AlarmState.Ignore:
                    stringBuilder.AppendFormat("UPDATE alarms set ignore=1, ignoreTime={0}, ignoreUser='{1}' WHERE",
                DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks), username);
                    break;
            }

            // Read the alarms description information from the database
            List<AlarmDatabaseObject> activeAlarms = GetActiveAlarms(alarmId, true);

            // Acknowledge the alarm in the database
            foreach (AlarmDatabaseObject alarm in activeAlarms)
            {
                if (state == AlarmState.Ignore && alarm.Ignore)
                    continue;

                if (processedAlarms == 0)
                    stringBuilder.AppendFormat(" alarmId={0}", alarm.AlarmId);
                else
                    stringBuilder.AppendFormat(" OR alarmId={0}", alarm.AlarmId);

                eventLogTransaction.LogEvent(
                    (LogDataTypes)alarm.DataType,
                    alarm.AlarmChannelMask,
                    alarm.AlarmId,
                    (int)state,
                    "Alarm " + state + " " + alarm.AlarmDesc,
                    DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks),
                    username);

                processedAlarms++; // Increment to the next
            }

            stringBuilder.Append(";");

            if (processedAlarms > 0)
            {
                database.ExecuteSQLStatements(new string[] { stringBuilder.ToString() }, FaultErrorIndicators.FaultCodes.EventLogWriteFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog);
                eventLogTransaction.Commit();
            }
        }

        /// <summary>
        /// Acknowledges a list of alarms
        /// </summary>
        /// <param name="alarmId">Array of alarm Ids to acknowledge</param>
        /// <param name="userId">The user Id who acknowledged the alarm</param>
        public void AcknowledgeAlarms(int[] alarmIds, int userId, string username)
        {
            UpdateAlarmState(alarmIds, userId, AlarmState.Ack, username);
        }

        /// <summary>
        /// Ignores a list of alarms
        /// </summary>
        /// <param name="alarmId">Array of alarm Ids to ignore</param>
        /// <param name="userId">The user Id who ignored the alarm</param>
        public void IgnoreAlarms(int[] alarmIds, int userId, string username)
        {
            UpdateAlarmState(alarmIds, userId, AlarmState.Ignore, username);
        }

        /// <summary>
        /// This class holds the data required to create an alarm entry in the event log
        /// </summary>
        public class AlarmText
        {
            public string AlarmString { get; set; }
            public string AlarmChannel { get; set; }
            public int AlarmChannelMask { get; set; }
            public bool NeedsAck { get; set; }
            public LogDataTypes DataType { get; set; }
            public int AlarmValueRegister { get; set; }
            public Int16 EventCode { get; set; }

            public AlarmText(string alarmString, string channel, LogDataTypes dataType, uint alarmChannel, bool ackRequired, Int16 eventCode)
            {
                AlarmString = alarmString;
                AlarmChannel = channel;
                AlarmChannelMask = (int)alarmChannel;
                NeedsAck = ackRequired;
                DataType = dataType;
                AlarmValueRegister = 0;
                EventCode = eventCode;
            }

            public AlarmText(string alarmString, string channel, LogDataTypes dataType, uint alarmChannel, bool ackRequired, Int16 eventCode, int alarmValueRegister)
                : this(alarmString, channel, dataType, alarmChannel, ackRequired, eventCode)
            {
                AlarmValueRegister = alarmValueRegister;
            }
        }

        /// <summary>
        /// Returns the number of active alarms in the system
        /// </summary>
        /// <returns>The number of active alarms</returns>
        public Int32 GetActiveAlarmsCount()
        {
            Int32 numberOfAlarms = 0;
            string sqlQuery = "count(*) FROM alarms WHERE NOT (alarmOff!=0 AND acked==0);";

            // Search for the alarms
            using (DbConnection connection = database.GetDbConnection())
            {
                using (DbDataReader data = database.Select(connection, sqlQuery))
                {
                    while (data.Read())
                    {
                        numberOfAlarms = (Int32)data.GetInt64(0);
                    }
                }
            }

            return numberOfAlarms;
        }

        #region AlarmText
        /// <summary>
        /// Alarm description and register information
        /// </summary>
        public static readonly AlarmText[] AlarmTextArray = {
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "1.1", LogDataTypes.Alarm, 1 << 0, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "1.2", LogDataTypes.Alarm, 2 << 0, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "2.1", LogDataTypes.Alarm, 1 << 2, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "2.2", LogDataTypes.Alarm, 2 << 2, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "3.1", LogDataTypes.Alarm, 1 << 4, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "3.2", LogDataTypes.Alarm, 2 << 4, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "4.1", LogDataTypes.Alarm, 1 << 6, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "4.2", LogDataTypes.Alarm, 2 << 6, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "5.1", LogDataTypes.Alarm, 1 << 8, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "5.2", LogDataTypes.Alarm, 2 << 8, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "6.1", LogDataTypes.Alarm, 1 << 10, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "6.2", LogDataTypes.Alarm, 2 << 10, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "7.1", LogDataTypes.Alarm, 1 << 12, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "7.2", LogDataTypes.Alarm, 2 << 12, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "8.1", LogDataTypes.Alarm, 1 << 14, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "8.2", LogDataTypes.Alarm, 2 << 14, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "9.1", LogDataTypes.Alarm, 1 << 16, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "9.2", LogDataTypes.Alarm, 2 << 16, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "10.1", LogDataTypes.Alarm, 1 << 18, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "10.2", LogDataTypes.Alarm, 2 << 18, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "11.1", LogDataTypes.Alarm, 1 << 20, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "11.2", LogDataTypes.Alarm, 2 << 20, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "12.1", LogDataTypes.Alarm, 1 << 22, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "12.2", LogDataTypes.Alarm, 2 << 22, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "13.1", LogDataTypes.Alarm, 1 << 24, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "13.2", LogDataTypes.Alarm, 2 << 24, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "14.1", LogDataTypes.Alarm, 1 << 26, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorAlarmLevelReached, "14.2", LogDataTypes.Alarm, 2 << 26, true,0, 2080),     //settings.alarmlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "1.1", LogDataTypes.Slowdown, 1 << 0, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "1.2", LogDataTypes.Slowdown, 2 << 0, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "2.1", LogDataTypes.Slowdown, 1 << 2, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "2.2", LogDataTypes.Slowdown, 2 << 2, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "3.1", LogDataTypes.Slowdown, 1 << 4, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "3.2", LogDataTypes.Slowdown, 2 << 4, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "4.1", LogDataTypes.Slowdown, 1 << 6, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "4.2", LogDataTypes.Slowdown, 2 << 6, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "5.1", LogDataTypes.Slowdown, 1 << 8, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "5.2", LogDataTypes.Slowdown, 2 << 8, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "6.1", LogDataTypes.Slowdown, 1 << 10, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "6.2", LogDataTypes.Slowdown, 2 << 10, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "7.1", LogDataTypes.Slowdown, 1 << 12, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "7.2", LogDataTypes.Slowdown, 2 << 12, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "8.1", LogDataTypes.Slowdown, 1 << 14, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "8.2", LogDataTypes.Slowdown, 2 << 14, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "9.1", LogDataTypes.Slowdown, 1 << 16, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "9.2", LogDataTypes.Slowdown, 2 << 16, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "10.1", LogDataTypes.Slowdown, 1 << 18, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "10.2", LogDataTypes.Slowdown, 2 << 18, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "11.1", LogDataTypes.Slowdown, 1 << 20, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "11.2", LogDataTypes.Slowdown, 2 << 20, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "12.1", LogDataTypes.Slowdown, 1 << 22, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "12.2", LogDataTypes.Slowdown, 2 << 22, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "13.1", LogDataTypes.Slowdown, 1 << 24, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "13.2", LogDataTypes.Slowdown, 2 << 24, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "14.1", LogDataTypes.Slowdown, 1 << 26, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorSlowDownLevelReached, "14.2", LogDataTypes.Slowdown, 2 << 26, true,0, 2079),     //settings.slowdownlevel
new AlarmText(AlarmStrings.SensorfailureNopulse, "1.1", LogDataTypes.Alarm, 1 << 0, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "1.2", LogDataTypes.Alarm, 2 << 0, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "2.1", LogDataTypes.Alarm, 1 << 2, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "2.2", LogDataTypes.Alarm, 2 << 2, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "3.1", LogDataTypes.Alarm, 1 << 4, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "3.2", LogDataTypes.Alarm, 2 << 4, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "4.1", LogDataTypes.Alarm, 1 << 6, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "4.2", LogDataTypes.Alarm, 2 << 6, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "5.1", LogDataTypes.Alarm, 1 << 8, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "5.2", LogDataTypes.Alarm, 2 << 8, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "6.1", LogDataTypes.Alarm, 1 << 10, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "6.2", LogDataTypes.Alarm, 2 << 10, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "7.1", LogDataTypes.Alarm, 1 << 12, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "7.2", LogDataTypes.Alarm, 2 << 12, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "8.1", LogDataTypes.Alarm, 1 << 14, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "8.2", LogDataTypes.Alarm, 2 << 14, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "9.1", LogDataTypes.Alarm, 1 << 16, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "9.2", LogDataTypes.Alarm, 2 << 16, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "10.1", LogDataTypes.Alarm, 1 << 18, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "10.2", LogDataTypes.Alarm, 2 << 18, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "11.1", LogDataTypes.Alarm, 1 << 20, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "11.2", LogDataTypes.Alarm, 2 << 20, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "12.1", LogDataTypes.Alarm, 1 << 22, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "12.2", LogDataTypes.Alarm, 2 << 22, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "13.1", LogDataTypes.Alarm, 1 << 24, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "13.2", LogDataTypes.Alarm, 2 << 24, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "14.1", LogDataTypes.Alarm, 1 << 26, true,0), 
new AlarmText(AlarmStrings.SensorfailureNopulse, "14.2", LogDataTypes.Alarm, 2 << 26, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "1.1", LogDataTypes.Alarm, 1 << 0, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "1.2", LogDataTypes.Alarm, 2 << 0, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "2.1", LogDataTypes.Alarm, 1 << 2, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "2.2", LogDataTypes.Alarm, 2 << 2, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "3.1", LogDataTypes.Alarm, 1 << 4, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "3.2", LogDataTypes.Alarm, 2 << 4, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "4.1", LogDataTypes.Alarm, 1 << 6, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "4.2", LogDataTypes.Alarm, 2 << 6, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "5.1", LogDataTypes.Alarm, 1 << 8, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "5.2", LogDataTypes.Alarm, 2 << 8, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "6.1", LogDataTypes.Alarm, 1 << 10, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "6.2", LogDataTypes.Alarm, 2 << 10, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "7.1", LogDataTypes.Alarm, 1 << 12, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "7.2", LogDataTypes.Alarm, 2 << 12, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "8.1", LogDataTypes.Alarm, 1 << 14, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "8.2", LogDataTypes.Alarm, 2 << 14, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "9.1", LogDataTypes.Alarm, 1 << 16, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "9.2", LogDataTypes.Alarm, 2 << 16, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "10.1", LogDataTypes.Alarm, 1 << 18, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "10.2", LogDataTypes.Alarm, 2 << 18, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "11.1", LogDataTypes.Alarm, 1 << 20, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "11.2", LogDataTypes.Alarm, 2 << 20, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "12.1", LogDataTypes.Alarm, 1 << 22, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "12.2", LogDataTypes.Alarm, 2 << 22, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "13.1", LogDataTypes.Alarm, 1 << 24, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "13.2", LogDataTypes.Alarm, 2 << 24, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "14.1", LogDataTypes.Alarm, 1 << 26, true,0), 
new AlarmText(AlarmStrings.SensorfailureLow, "14.2", LogDataTypes.Alarm, 2 << 26, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "1.1", LogDataTypes.Alarm, 1 << 0, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "1.2", LogDataTypes.Alarm, 2 << 0, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "2.1", LogDataTypes.Alarm, 1 << 2, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "2.2", LogDataTypes.Alarm, 2 << 2, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "3.1", LogDataTypes.Alarm, 1 << 4, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "3.2", LogDataTypes.Alarm, 2 << 4, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "4.1", LogDataTypes.Alarm, 1 << 6, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "4.2", LogDataTypes.Alarm, 2 << 6, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "5.1", LogDataTypes.Alarm, 1 << 8, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "5.2", LogDataTypes.Alarm, 2 << 8, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "6.1", LogDataTypes.Alarm, 1 << 10, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "6.2", LogDataTypes.Alarm, 2 << 10, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "7.1", LogDataTypes.Alarm, 1 << 12, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "7.2", LogDataTypes.Alarm, 2 << 12, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "8.1", LogDataTypes.Alarm, 1 << 14, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "8.2", LogDataTypes.Alarm, 2 << 14, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "9.1", LogDataTypes.Alarm, 1 << 16, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "9.2", LogDataTypes.Alarm, 2 << 16, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "10.1", LogDataTypes.Alarm, 1 << 18, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "10.2", LogDataTypes.Alarm, 2 << 18, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "11.1", LogDataTypes.Alarm, 1 << 20, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "11.2", LogDataTypes.Alarm, 2 << 20, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "12.1", LogDataTypes.Alarm, 1 << 22, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "12.2", LogDataTypes.Alarm, 2 << 22, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "13.1", LogDataTypes.Alarm, 1 << 24, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "13.2", LogDataTypes.Alarm, 2 << 24, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "14.1", LogDataTypes.Alarm, 1 << 26, true,0), 
new AlarmText(AlarmStrings.SensorfailureHigh, "14.2", LogDataTypes.Alarm, 2 << 26, true,0), 
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "1.1", LogDataTypes.Alarm, 1 << 0, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "1.2", LogDataTypes.Alarm, 2 << 0, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "2.1", LogDataTypes.Alarm, 1 << 2, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "2.2", LogDataTypes.Alarm, 2 << 2, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "3.1", LogDataTypes.Alarm, 1 << 4, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "3.2", LogDataTypes.Alarm, 2 << 4, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "4.1", LogDataTypes.Alarm, 1 << 6, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "4.2", LogDataTypes.Alarm, 2 << 6, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "5.1", LogDataTypes.Alarm, 1 << 8, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "5.2", LogDataTypes.Alarm, 2 << 8, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "6.1", LogDataTypes.Alarm, 1 << 10, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "6.2", LogDataTypes.Alarm, 2 << 10, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "7.1", LogDataTypes.Alarm, 1 << 12, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "7.2", LogDataTypes.Alarm, 2 << 12, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "8.1", LogDataTypes.Alarm, 1 << 14, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "8.2", LogDataTypes.Alarm, 2 << 14, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "9.1", LogDataTypes.Alarm, 1 << 16, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "9.2", LogDataTypes.Alarm, 2 << 16, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "10.1", LogDataTypes.Alarm, 1 << 18, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "10.2", LogDataTypes.Alarm, 2 << 18, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "11.1", LogDataTypes.Alarm, 1 << 20, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "11.2", LogDataTypes.Alarm, 2 << 20, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "12.1", LogDataTypes.Alarm, 1 << 22, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "12.2", LogDataTypes.Alarm, 2 << 22, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "13.1", LogDataTypes.Alarm, 1 << 24, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "13.2", LogDataTypes.Alarm, 2 << 24, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "14.1", LogDataTypes.Alarm, 1 << 26, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorAlarmDeviationLevelReached, "14.2", LogDataTypes.Alarm, 2 << 26, true,0, 2082),     //settings.alarmdevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "1.1", LogDataTypes.Slowdown, 1 << 0, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "1.2", LogDataTypes.Slowdown, 2 << 0, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "2.1", LogDataTypes.Slowdown, 1 << 2, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "2.2", LogDataTypes.Slowdown, 2 << 2, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "3.1", LogDataTypes.Slowdown, 1 << 4, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "3.2", LogDataTypes.Slowdown, 2 << 4, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "4.1", LogDataTypes.Slowdown, 1 << 6, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "4.2", LogDataTypes.Slowdown, 2 << 6, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "5.1", LogDataTypes.Slowdown, 1 << 8, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "5.2", LogDataTypes.Slowdown, 2 << 8, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "6.1", LogDataTypes.Slowdown, 1 << 10, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "6.2", LogDataTypes.Slowdown, 2 << 10, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "7.1", LogDataTypes.Slowdown, 1 << 12, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "7.2", LogDataTypes.Slowdown, 2 << 12, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "8.1", LogDataTypes.Slowdown, 1 << 14, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "8.2", LogDataTypes.Slowdown, 2 << 14, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "9.1", LogDataTypes.Slowdown, 1 << 16, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "9.2", LogDataTypes.Slowdown, 2 << 16, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "10.1", LogDataTypes.Slowdown, 1 << 18, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "10.2", LogDataTypes.Slowdown, 2 << 18, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "11.1", LogDataTypes.Slowdown, 1 << 20, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "11.2", LogDataTypes.Slowdown, 2 << 20, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "12.1", LogDataTypes.Slowdown, 1 << 22, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "12.2", LogDataTypes.Slowdown, 2 << 22, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "13.1", LogDataTypes.Slowdown, 1 << 24, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "13.2", LogDataTypes.Slowdown, 2 << 24, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "14.1", LogDataTypes.Slowdown, 1 << 26, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorSlowDownDeviationLevelReached, "14.2", LogDataTypes.Slowdown, 2 << 26, true,0, 2081),     //settings.slowdowndevlevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "1.1", LogDataTypes.Alarm, 1 << 0, true,0, 440),     //prewarn.prelevel[0] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "1.2", LogDataTypes.Alarm, 2 << 0, true,0, 441),     //prewarn.prelevel[1] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "2.1", LogDataTypes.Alarm, 1 << 2, true,0, 442),     //prewarn.prelevel[2] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "2.2", LogDataTypes.Alarm, 2 << 2, true,0, 443),     //prewarn.prelevel[3] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "3.1", LogDataTypes.Alarm, 1 << 4, true,0, 444),     //prewarn.prelevel[4] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "3.2", LogDataTypes.Alarm, 2 << 4, true,0, 445),     //prewarn.prelevel[5] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "4.1", LogDataTypes.Alarm, 1 << 6, true,0, 446),     //prewarn.prelevel[6] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "4.2", LogDataTypes.Alarm, 2 << 6, true,0, 447),     //prewarn.prelevel[7] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "5.1", LogDataTypes.Alarm, 1 << 8, true,0, 448),     //prewarn.prelevel[8] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "5.2", LogDataTypes.Alarm, 2 << 8, true,0, 449),     //prewarn.prelevel[9] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "6.1", LogDataTypes.Alarm, 1 << 10, true,0, 450),     //prewarn.prelevel[10] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "6.2", LogDataTypes.Alarm, 2 << 10, true,0, 451),     //prewarn.prelevel[11] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "7.1", LogDataTypes.Alarm, 1 << 12, true,0, 452),     //prewarn.prelevel[12] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "7.2", LogDataTypes.Alarm, 2 << 12, true,0, 453),     //prewarn.prelevel[13] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "8.1", LogDataTypes.Alarm, 1 << 14, true,0, 454),     //prewarn.prelevel[14] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "8.2", LogDataTypes.Alarm, 2 << 14, true,0, 455),     //prewarn.prelevel[15] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "9.1", LogDataTypes.Alarm, 1 << 16, true,0, 456),     //prewarn.prelevel[16] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "9.2", LogDataTypes.Alarm, 2 << 16, true,0, 457),     //prewarn.prelevel[17] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "10.1", LogDataTypes.Alarm, 1 << 18, true,0, 458),     //prewarn.prelevel[18] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "10.2", LogDataTypes.Alarm, 2 << 18, true,0, 459),     //prewarn.prelevel[19] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "11.1", LogDataTypes.Alarm, 1 << 20, true,0, 460),     //prewarn.prelevel[20] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "11.2", LogDataTypes.Alarm, 2 << 20, true,0, 461),     //prewarn.prelevel[21] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "12.1", LogDataTypes.Alarm, 1 << 22, true,0, 462),     //prewarn.prelevel[22] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "12.2", LogDataTypes.Alarm, 2 << 22, true,0, 463),     //prewarn.prelevel[23] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "13.1", LogDataTypes.Alarm, 1 << 24, true,0, 464),     //prewarn.prelevel[24] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "13.2", LogDataTypes.Alarm, 2 << 24, true,0, 465),     //prewarn.prelevel[25] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "14.1", LogDataTypes.Alarm, 1 << 26, true,0, 466),     //prewarn.prelevel[26] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorPrewarningLevel, "14.2", LogDataTypes.Alarm, 2 << 26, true,0, 467),     //prewarn.prelevel[27] - allsensors.prewarninglevel
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "1.1", LogDataTypes.Alarm, 1 << 0, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "1.2", LogDataTypes.Alarm, 2 << 0, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "2.1", LogDataTypes.Alarm, 1 << 2, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "2.2", LogDataTypes.Alarm, 2 << 2, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "3.1", LogDataTypes.Alarm, 1 << 4, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "3.2", LogDataTypes.Alarm, 2 << 4, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "4.1", LogDataTypes.Alarm, 1 << 6, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "4.2", LogDataTypes.Alarm, 2 << 6, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "5.1", LogDataTypes.Alarm, 1 << 8, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "5.2", LogDataTypes.Alarm, 2 << 8, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "6.1", LogDataTypes.Alarm, 1 << 10, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "6.2", LogDataTypes.Alarm, 2 << 10, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "7.1", LogDataTypes.Alarm, 1 << 12, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "7.2", LogDataTypes.Alarm, 2 << 12, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "8.1", LogDataTypes.Alarm, 1 << 14, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "8.2", LogDataTypes.Alarm, 2 << 14, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "9.1", LogDataTypes.Alarm, 1 << 16, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "9.2", LogDataTypes.Alarm, 2 << 16, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "10.1", LogDataTypes.Alarm, 1 << 18, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "10.2", LogDataTypes.Alarm, 2 << 18, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "11.1", LogDataTypes.Alarm, 1 << 20, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "11.2", LogDataTypes.Alarm, 2 << 20, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "12.1", LogDataTypes.Alarm, 1 << 22, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "12.2", LogDataTypes.Alarm, 2 << 22, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "13.1", LogDataTypes.Alarm, 1 << 24, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "13.2", LogDataTypes.Alarm, 2 << 24, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "14.1", LogDataTypes.Alarm, 1 << 26, true,0), 
new AlarmText(AlarmStrings.SensorMovedDuringLearning, "14.2", LogDataTypes.Alarm, 2 << 26, true,0), 
new AlarmText(AlarmStrings.CylinderDeviationAlarmLevelReached, "1", LogDataTypes.Alarm, 1 << 1, true,0, 2083),     //settings.cylinderalarmlevel
new AlarmText(AlarmStrings.CylinderDeviationAlarmLevelReached, "2", LogDataTypes.Alarm, 1 << 2, true,0, 2083),     //settings.cylinderalarmlevel
new AlarmText(AlarmStrings.CylinderDeviationAlarmLevelReached, "3", LogDataTypes.Alarm, 1 << 3, true,0, 2083),     //settings.cylinderalarmlevel
new AlarmText(AlarmStrings.CylinderDeviationAlarmLevelReached, "4", LogDataTypes.Alarm, 1 << 4, true,0, 2083),     //settings.cylinderalarmlevel
new AlarmText(AlarmStrings.CylinderDeviationAlarmLevelReached, "5", LogDataTypes.Alarm, 1 << 5, true,0, 2083),     //settings.cylinderalarmlevel
new AlarmText(AlarmStrings.CylinderDeviationAlarmLevelReached, "6", LogDataTypes.Alarm, 1 << 6, true,0, 2083),     //settings.cylinderalarmlevel
new AlarmText(AlarmStrings.CylinderDeviationAlarmLevelReached, "7", LogDataTypes.Alarm, 1 << 7, true,0, 2083),     //settings.cylinderalarmlevel
new AlarmText(AlarmStrings.CylinderDeviationAlarmLevelReached, "8", LogDataTypes.Alarm, 1 << 8, true,0, 2083),     //settings.cylinderalarmlevel
new AlarmText(AlarmStrings.CylinderDeviationAlarmLevelReached, "9", LogDataTypes.Alarm, 1 << 9, true,0, 2083),     //settings.cylinderalarmlevel
new AlarmText(AlarmStrings.CylinderDeviationAlarmLevelReached, "10", LogDataTypes.Alarm, 1 << 10, true,0, 2083),     //settings.cylinderalarmlevel
new AlarmText(AlarmStrings.CylinderDeviationAlarmLevelReached, "11", LogDataTypes.Alarm, 1 << 11, true,0, 2083),     //settings.cylinderalarmlevel
new AlarmText(AlarmStrings.CylinderDeviationAlarmLevelReached, "12", LogDataTypes.Alarm, 1 << 12, true,0, 2083),     //settings.cylinderalarmlevel
new AlarmText(AlarmStrings.CylinderDeviationAlarmLevelReached, "13", LogDataTypes.Alarm, 1 << 13, true,0, 2083),     //settings.cylinderalarmlevel
new AlarmText(AlarmStrings.CylinderDeviationAlarmLevelReached, "14", LogDataTypes.Alarm, 1 << 14, true,0, 2083),     //settings.cylinderalarmlevel
new AlarmText(AlarmStrings.Waterinoilalarmlevel1, "", LogDataTypes.Alarm, 1 << 28, true,0, 2065),     //wiosettings.alarmlevel
new AlarmText(AlarmStrings.Waterinoilconnectionfailure, "", LogDataTypes.Alarm, 1 << 28, true,0), 
new AlarmText(AlarmStrings.LossofcommunicationstoSPU, "", LogDataTypes.Alarm, 0xFFFFFFFF, true,0), 
new AlarmText(AlarmStrings.Realtimeclockfailuretimereset, "", LogDataTypes.Alarm, 0xFFFFFFFF, true,0), 
new AlarmText(AlarmStrings.FRAM1Communicationsfault, "", LogDataTypes.Alarm, 0xFFFFFFFF, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "1.1", LogDataTypes.Alarm, 1 << 0, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "1.2", LogDataTypes.Alarm, 2 << 0, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "2.1", LogDataTypes.Alarm, 1 << 2, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "2.2", LogDataTypes.Alarm, 2 << 2, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "3.1", LogDataTypes.Alarm, 1 << 4, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "3.2", LogDataTypes.Alarm, 2 << 4, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "4.1", LogDataTypes.Alarm, 1 << 6, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "4.2", LogDataTypes.Alarm, 2 << 6, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "5.1", LogDataTypes.Alarm, 1 << 8, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "5.2", LogDataTypes.Alarm, 2 << 8, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "6.1", LogDataTypes.Alarm, 1 << 10, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "6.2", LogDataTypes.Alarm, 2 << 10, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "7.1", LogDataTypes.Alarm, 1 << 12, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "7.2", LogDataTypes.Alarm, 2 << 12, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "8.1", LogDataTypes.Alarm, 1 << 14, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "8.2", LogDataTypes.Alarm, 2 << 14, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "9.1", LogDataTypes.Alarm, 1 << 16, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "9.2", LogDataTypes.Alarm, 2 << 16, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "10.1", LogDataTypes.Alarm, 1 << 18, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "10.2", LogDataTypes.Alarm, 2 << 18, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "11.1", LogDataTypes.Alarm, 1 << 20, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "11.2", LogDataTypes.Alarm, 2 << 20, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "12.1", LogDataTypes.Alarm, 1 << 22, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "12.2", LogDataTypes.Alarm, 2 << 22, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "13.1", LogDataTypes.Alarm, 1 << 24, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "13.2", LogDataTypes.Alarm, 2 << 24, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "14.1", LogDataTypes.Alarm, 1 << 26, true,0), 
new AlarmText(AlarmStrings.SensorfailureUnstable, "14.2", LogDataTypes.Alarm, 2 << 26, true,0), 
new AlarmText(AlarmStrings.Waterinoilalarmlevel2, "", LogDataTypes.Alarm, 1 << 28, true,0, 2064),     //wiosettings.alarmupperlevel
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "1.1", LogDataTypes.Slowdown, 1 << 0, true,3, 4768),     //dynalarmlevels.single
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "1.2", LogDataTypes.Slowdown, 2 << 0, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "2.1", LogDataTypes.Slowdown, 1 << 2, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "2.2", LogDataTypes.Slowdown, 2 << 2, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "3.1", LogDataTypes.Slowdown, 1 << 4, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "3.2", LogDataTypes.Slowdown, 2 << 4, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "4.1", LogDataTypes.Slowdown, 1 << 6, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "4.2", LogDataTypes.Slowdown, 2 << 6, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "5.1", LogDataTypes.Slowdown, 1 << 8, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "5.2", LogDataTypes.Slowdown, 2 << 8, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "6.1", LogDataTypes.Slowdown, 1 << 10, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "6.2", LogDataTypes.Slowdown, 2 << 10, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "7.1", LogDataTypes.Slowdown, 1 << 12, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "7.2", LogDataTypes.Slowdown, 2 << 12, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "8.1", LogDataTypes.Slowdown, 1 << 14, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "8.2", LogDataTypes.Slowdown, 2 << 14, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "9.1", LogDataTypes.Slowdown, 1 << 16, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "9.2", LogDataTypes.Slowdown, 2 << 16, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "10.1", LogDataTypes.Slowdown, 1 << 18, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "10.2", LogDataTypes.Slowdown, 2 << 18, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "11.1", LogDataTypes.Slowdown, 1 << 20, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "11.2", LogDataTypes.Slowdown, 2 << 20, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "12.1", LogDataTypes.Slowdown, 1 << 22, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "12.2", LogDataTypes.Slowdown, 2 << 22, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "13.1", LogDataTypes.Slowdown, 1 << 24, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "13.2", LogDataTypes.Slowdown, 2 << 24, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "14.1", LogDataTypes.Slowdown, 1 << 26, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorSingleSensor, "14.2", LogDataTypes.Slowdown, 2 << 26, true,0, 4768), 
new AlarmText(AlarmStrings.DamageMonitorCylinderSum, "1", LogDataTypes.Slowdown, 1 << 1, true,4, 4769),     //dynalarmlevels.cyl
new AlarmText(AlarmStrings.DamageMonitorCylinderSum, "2", LogDataTypes.Slowdown, 1 << 2, true,0, 4769),     //dynalarmlevels.cyl
new AlarmText(AlarmStrings.DamageMonitorCylinderSum, "3", LogDataTypes.Slowdown, 1 << 3, true,0, 4769),     //dynalarmlevels.cyl
new AlarmText(AlarmStrings.DamageMonitorCylinderSum, "4", LogDataTypes.Slowdown, 1 << 4, true,0, 4769),     //dynalarmlevels.cyl
new AlarmText(AlarmStrings.DamageMonitorCylinderSum, "5", LogDataTypes.Slowdown, 1 << 5, true,0, 4769),     //dynalarmlevels.cyl
new AlarmText(AlarmStrings.DamageMonitorCylinderSum, "6", LogDataTypes.Slowdown, 1 << 6, true,0, 4769),     //dynalarmlevels.cyl
new AlarmText(AlarmStrings.DamageMonitorCylinderSum, "7", LogDataTypes.Slowdown, 1 << 7, true,0, 4769),     //dynalarmlevels.cyl
new AlarmText(AlarmStrings.DamageMonitorCylinderSum, "8", LogDataTypes.Slowdown, 1 << 8, true,0, 4769),     //dynalarmlevels.cyl
new AlarmText(AlarmStrings.DamageMonitorCylinderSum, "9", LogDataTypes.Slowdown, 1 << 9, true,0, 4769),     //dynalarmlevels.cyl
new AlarmText(AlarmStrings.DamageMonitorCylinderSum, "10", LogDataTypes.Slowdown, 1 << 10, true,0, 4769),     //dynalarmlevels.cyl
new AlarmText(AlarmStrings.DamageMonitorCylinderSum, "11", LogDataTypes.Slowdown, 1 << 11, true,0, 4769),     //dynalarmlevels.cyl
new AlarmText(AlarmStrings.DamageMonitorCylinderSum, "12", LogDataTypes.Slowdown, 1 << 12, true,0, 4769),     //dynalarmlevels.cyl
new AlarmText(AlarmStrings.DamageMonitorCylinderSum, "13", LogDataTypes.Slowdown, 1 << 13, true,0, 4769),     //dynalarmlevels.cyl
new AlarmText(AlarmStrings.DamageMonitorCylinderSum, "14", LogDataTypes.Slowdown, 1 << 14, true,0, 4769),     //dynalarmlevels.cyl
new AlarmText(AlarmStrings.DamageMonitorMainBearingNeighbourSMBN, "2", LogDataTypes.Slowdown, 1 << 2, true,5, 4770),     //dynalarmlevels.mbsum
new AlarmText(AlarmStrings.DamageMonitorMainBearingNeighbourSMBN, "3", LogDataTypes.Slowdown, 1 << 3, true,0, 4770),     //dynalarmlevels.mbsum
new AlarmText(AlarmStrings.DamageMonitorMainBearingNeighbourSMBN, "4", LogDataTypes.Slowdown, 1 << 4, true,0, 4770),     //dynalarmlevels.mbsum
new AlarmText(AlarmStrings.DamageMonitorMainBearingNeighbourSMBN, "5", LogDataTypes.Slowdown, 1 << 5, true,0, 4770),     //dynalarmlevels.mbsum
new AlarmText(AlarmStrings.DamageMonitorMainBearingNeighbourSMBN, "6", LogDataTypes.Slowdown, 1 << 6, true,0, 4770),     //dynalarmlevels.mbsum
new AlarmText(AlarmStrings.DamageMonitorMainBearingNeighbourSMBN, "7", LogDataTypes.Slowdown, 1 << 7, true,0, 4770),     //dynalarmlevels.mbsum
new AlarmText(AlarmStrings.DamageMonitorMainBearingNeighbourSMBN, "8", LogDataTypes.Slowdown, 1 << 8, true,0, 4770),     //dynalarmlevels.mbsum
new AlarmText(AlarmStrings.DamageMonitorMainBearingNeighbourSMBN, "9", LogDataTypes.Slowdown, 1 << 9, true,0, 4770),     //dynalarmlevels.mbsum
new AlarmText(AlarmStrings.DamageMonitorMainBearingNeighbourSMBN, "10", LogDataTypes.Slowdown, 1 << 10, true,0, 4770),     //dynalarmlevels.mbsum
new AlarmText(AlarmStrings.DamageMonitorMainBearingNeighbourSMBN, "11", LogDataTypes.Slowdown, 1 << 11, true,0, 4770),     //dynalarmlevels.mbsum
new AlarmText(AlarmStrings.DamageMonitorMainBearingNeighbourSMBN, "12", LogDataTypes.Slowdown, 1 << 12, true,0, 4770),     //dynalarmlevels.mbsum
new AlarmText(AlarmStrings.DamageMonitorMainBearingNeighbourSMBN, "13", LogDataTypes.Slowdown, 1 << 13, true,0, 4770),     //dynalarmlevels.mbsum
new AlarmText(AlarmStrings.DamageMonitorMainBearingNeighbourSMBN, "14", LogDataTypes.Slowdown, 1 << 14, true,0, 4770),     //dynalarmlevels.mbsum
new AlarmText(AlarmStrings.DamageMonitorMainBearingNeighbourSMBN, "", LogDataTypes.Slowdown, 0xFFFFFFFF, true,0, 4770),     //dynalarmlevels.mbsum
new AlarmText(AlarmStrings.SLEMConnectionFailureinputlow, "", LogDataTypes.Alarm, 1 << 29, true,0), 
new AlarmText(AlarmStrings.SPUClockBatteryLow, "", LogDataTypes.Alarm, 0xFFFFFFFF, true,0), 
new AlarmText(AlarmStrings.SLEMAlarmLevelReachedmV, "", LogDataTypes.Alarm, 1 << 29, true,0, 1054),     //slemsettings.alarmlevel
new AlarmText(AlarmStrings.Waterinoilconnectionfailureinputlow, "", LogDataTypes.Alarm, 1 << 28, true,0), 
new AlarmText(AlarmStrings.Waterinoilconnectionfailureinputhigh, "", LogDataTypes.Alarm, 1 << 28, true,0), 
new AlarmText(AlarmStrings.SLEMConnectionFailureinputhigh, "", LogDataTypes.Alarm, 1 << 29, true,0), 
new AlarmText(AlarmStrings.SDCardError, "", LogDataTypes.Alarm, 0xFFFFFFFF, true,0), 
//*** the alarm below is for temperature
new AlarmText(AlarmStrings.TemperatureAlarmLevelReached, "", LogDataTypes.Alarm, 0xFFFFFFFF, true,0),
new AlarmText(AlarmStrings.TemperatureSlowDownLevelReached, "", LogDataTypes.Slowdown, 0xFFFFFFFF, true,0),
new AlarmText(AlarmStrings.TemperatureAlarmLoseConnection, "", LogDataTypes.Alarm, 0xFFFFFFFF, true,0),
new AlarmText(AlarmStrings.TemperatureAlarmShortCircuit, "", LogDataTypes.Alarm, 0xFFFFFFFF, true,0),
new AlarmText(AlarmStrings.TemperatureAlarmOpenCircuit, "", LogDataTypes.Alarm, 0xFFFFFFFF, true,0),
new AlarmText(AlarmStrings.TemperatureAlarmLosePower, "", LogDataTypes.Alarm, 0xFFFFFFFF, true,0),

//*** The alarm below this line always needs to be at the end ***
new AlarmText(AlarmStrings.LossofcommunicationstoSPU, "", LogDataTypes.Alarm, 0xFFFFFFFF, true,0),
new AlarmText(AlarmStrings.LossofcommunicationstoTMP, "", LogDataTypes.Alarm, 0xFFFFFFFF, true,0)
        };
        #endregion


        #region EventText
        public static readonly AlarmText[] EventTextArray = {
new AlarmText(EventStrings.PowerOnInitialisation, "", LogDataTypes.General, 0xFFFFFFFF, false,0), 
new AlarmText(EventStrings.FiringOrderEngineDirectionClearingFiringOrder, "", LogDataTypes.General, 0xFFFFFFFF, false,0), 
new AlarmText(EventStrings.FiringOrderEngineDirectionDetermingOrder, "", LogDataTypes.General, 0xFFFFFFFF, false,0), 
new AlarmText(EventStrings.Prewarninginitialised, "", LogDataTypes.General, 0xFFFFFFFF, false,0), 
new AlarmText(EventStrings.EngineLearningProcedureAbortedByUser, "", LogDataTypes.General, 0xFFFFFFFF, false,0), 
new AlarmText(EventStrings.FullEngineLearningInitiated, "", LogDataTypes.General, 0xFFFFFFFF, false,0), 
new AlarmText(EventStrings.EngineLearningStage1Learning, "", LogDataTypes.General, 0xFFFFFFFF, false,0), 
new AlarmText(EventStrings.EngineLearningStage2Learning, "", LogDataTypes.General, 0xFFFFFFFF, false,0), 
new AlarmText(EventStrings.EngineLearningStage3Learning, "", LogDataTypes.General, 0xFFFFFFFF, false,0), 
new AlarmText(EventStrings.EngineLearningStageEngineLearningCompleted, "", LogDataTypes.General, 0xFFFFFFFF, false,0), 
new AlarmText(EventStrings.EngineLearningStageFineLearningStarted, "", LogDataTypes.General, 0xFFFFFFFF, false,0), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "1.1", LogDataTypes.General, 1 << 0, false,0, 1150), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "1.2", LogDataTypes.General, 2 << 0, false,0, 1151), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "2.1", LogDataTypes.General, 1 << 2, false,0, 1152), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "2.2", LogDataTypes.General, 2 << 2, false,0, 1153), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "3.1", LogDataTypes.General, 1 << 4, false,0, 1154), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "3.2", LogDataTypes.General, 2 << 4, false,0, 1155), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "4.1", LogDataTypes.General, 1 << 6, false,0, 1156), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "4.2", LogDataTypes.General, 2 << 6, false,0, 1157), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "5.1", LogDataTypes.General, 1 << 8, false,0, 1158), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "5.2", LogDataTypes.General, 2 << 8, false,0, 1159), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "6.1", LogDataTypes.General, 1 << 10, false,0, 1160), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "6.2", LogDataTypes.General, 2 << 10, false,0, 1161), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "7.1", LogDataTypes.General, 1 << 12, false,0, 1162), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "7.2", LogDataTypes.General, 2 << 12, false,0, 1163), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "8.1", LogDataTypes.General, 1 << 14, false,0, 1164), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "8.2", LogDataTypes.General, 2 << 14, false,0, 1165), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "9.1", LogDataTypes.General, 1 << 16, false,0, 1166), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "9.2", LogDataTypes.General, 2 << 16, false,0, 1167), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "10.1", LogDataTypes.General, 1 << 18, false,0, 1168), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "10.2", LogDataTypes.General, 2 << 18, false,0, 1169), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "11.1", LogDataTypes.General, 1 << 20, false,0, 1170), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "11.2", LogDataTypes.General, 2 << 20, false,0, 1171), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "12.1", LogDataTypes.General, 1 << 22, false,0, 1172), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "12.2", LogDataTypes.General, 2 << 22, false,0, 1173), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "13.1", LogDataTypes.General, 1 << 24, false,0, 1174), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "13.2", LogDataTypes.General, 2 << 24, false,0, 1175), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "14.1", LogDataTypes.General, 1 << 26, false,0, 1176), 
new AlarmText(EventStrings.SensorOffsetAdjustment, "14.2", LogDataTypes.General, 2 << 26, false,0, 1177), 
new AlarmText(EventStrings.WIOErrorcode, "", LogDataTypes.General, 1 << 28, false,0, 476)
                                                            };
        #endregion


    }
}
