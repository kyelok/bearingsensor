using System;
using System.Data.Common;
using System.IO;
using System.Threading;
using FaultErrorIndicators;
using DataCollectionSDK;
using System.Collections.Generic;
using System.Text;
using System.Configuration;
using HelperClasses;

namespace EventLogging
{
    /// <summary>
    /// This class provides an interface to the event log
    /// for use by the other modules in the system.
    /// </summary>
    public class EventLog
    {
        public enum AlarmState
        {
            On,
            Off,
            Ack,
            Cleared,
            None
        }

        public enum LogDataTypes : int
        {
            General,
            Alarm,
            Slowdown,
            RTN,
            Prewarning,
            SLEM
        }

        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        /// <summary>
        /// The database object
        /// </summary>
        private DatabaseSDK database;

        /// <summary>
        /// Default constructor
        /// </summary>
        public EventLog()
        {
            ModuleConfiguration configuration = ModuleConfiguration.GetApplicationConfiguration();
            DataCollectionConfigurationSection dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;
            if (dataCollectionConfig == null)
                dataCollectionConfig = new DataCollectionConfigurationSection();

            //TODO 15724800 period should be in config file.
            database = new DatabaseSDK(dataCollectionConfig.Database.EventLog, dataCollectionConfig.Database.DbRetryCount, dataCollectionConfig.Database.DbRetryDuration, 15724800);
            InitialiseDb();
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
                "ackdatetime datetime," +
                "ackUserId INTEGER);");
            sqlStatements.Add("CREATE TRIGGER IF NOT EXISTS del_old_events_records AFTER INSERT ON events BEGIN DELETE FROM events WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM events ) - 157784630); END;");

            sqlStatements.Add("CREATE TABLE IF NOT EXISTS learning_status (time_stamp integer, status integer);");
            sqlStatements.Add("CREATE INDEX IF NOT EXISTS events_time_stamp_index ON events (time_stamp);");
            
            
            //Add a record to learning_status, as this table will only be UPDATEd in the future
            sqlStatements.Add(String.Format("INSERT INTO learning_status VALUES({0}, {1});", 
                DatabaseSDK.ConvertToUnixTimestamp(DateTime.Now.Ticks), 
                "-1"
                ));

            database.ExecuteSQLStatements(sqlStatements.ToArray());
        }

        /// <summary>
        /// Create the string needed to write to the database
        /// </summary>
        /// <param name="message">The log entry text string to insert into the database</param>
        /// <param name="state">The state of the Alarm</param>
        /// <param name="eventId"></param>
        /// <returns></returns>
        private static string CreateLogSQLString(int channel, LogDataTypes datatype, int eventid, int eventcode, string description, int ackdatetime, int ackUserId)
        {
            return string.Format("INSERT INTO eventlog (eventdatetime, channel, datatype, eventid, eventcode, description, ackdatetime, ackUserId) " +
                "VALUES "+
                "({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7});", 
                DatabaseSDK.ConvertToUnixTimestamp(DateTime.Now.Ticks),
                channel, datatype, eventid, eventcode, description, ackdatetime, ackUserId);
        }

        // channel = sensor, wio sensor, slem sensor

        // alarm keep going, slowdown gonna break

        // Alarm + Slowdown == Alarm
        
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
        public void LogEvent(LogDataTypes dataType, int channel, int eventid, int eventcode, string description, int ackdatetime, int ackUserId)
        {
            string sql;
            if (dataType == LogDataTypes.General)
                channel = (1 << 29) | (1 << 28) | ((1 << 28) - 1);
            sql = CreateLogSQLString(channel, dataType, eventid, eventcode, description, ackdatetime, ackUserId);
            database.ExecuteSQLStatements(new string[] { sql });
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
        public void LogEventWIO(LogDataTypes dataType, int eventid, int eventcode, string description, int ackdatetime, int ackUserId)
        {
            string sql;
            sql = CreateLogSQLString((int)(1 << 28), dataType, eventid, eventcode, description, ackdatetime, ackUserId);
            database.ExecuteSQLStatements(new string[] { sql });
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
        public void LogEventSLEM(LogDataTypes dataType, int eventid, int eventcode, string description, int ackdatetime, int ackUserId)
        {
            string sql;
            sql = CreateLogSQLString((int)(1 << 29), dataType, eventid, eventcode, description, ackdatetime, ackUserId);
            database.ExecuteSQLStatements(new string[] { sql });
        }

        /// <summary>
        /// Writes the last Engine Learning status to a db table
        /// </summary>
        /// <param name="status"></param>
        public void UpdateLastLearningStatus(int status)
        {
            string[] sqlStatement = new string[1];
            sqlStatement[0] = String.Format("UPDATE learning_status SET time_stamp = {0}, status = {1} WHERE rowid = 1;", DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks), status);
            database.ExecuteSQLStatements(sqlStatement);
        }

        /// <summary>
        /// Gets the previous learning status logged.
        /// </summary>
        /// <returns>The previous learning status (0-12), or -1 on database error newly initialised.</returns>
        public int GetLastLearningStatus()
        {
            //TODO: Implement querying in databasesdk
            using (DbConnection conn = database.GetDbConnection())
            {
                using(DbDataReader dbDataReader = database.Select(conn, "status FROM learning_status;"))
                {
                    dbDataReader.Read();
                    try
                    {
                        return dbDataReader.GetInt32(0);
                    }
                    catch (InvalidCastException)
                    {
                        //TODO: Decide what to do in the event of a db error
                        return -1; 
                    }
                }
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public EventLogTransaction CreateEventLogTransaction()
        {
            return new EventLogTransaction(this);
        }

        /// <summary>
        /// EventLog transaction class which is able to cache up events in high intensity situations and 
        /// commit all of these events in a single transaction therefore providing significant performance gains.
        /// 
        /// WARNING: This is not a thread safe implementation
        /// </summary>
        public class EventLogTransaction
        {
            /// <summary>
            /// Pending events
            /// </summary>
            private List<String> events = new List<string>();

            /// <summary>
            /// The event log
            /// </summary>
            private EventLog logger;

            /// <summary>
            /// Constructor
            /// </summary>
            /// <param name="logger">The event log instance which created this instance</param>
            public EventLogTransaction(EventLog logger)
            {
                this.logger = logger;
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
            public void LogEvent(LogDataTypes dataType, int channel, int eventid, int eventcode, string description, int ackdatetime, int ackUserId)
            {
                if (dataType == LogDataTypes.General)
                    channel = (1 << 29) | (1 << 28) | ((1 << 28) - 1);

                events.Add(CreateLogSQLString(channel, dataType, eventid, eventcode, description, ackdatetime, ackUserId));
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
            public void LogEventWIO(LogDataTypes dataType, int eventid, int eventcode, string description, int ackdatetime, int ackUserId)
            {
                events.Add(CreateLogSQLString((int)(1 << 28), dataType, eventid, eventcode, description, ackdatetime, ackUserId));
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
            public void LogEventSLEM(LogDataTypes dataType, int eventid, int eventcode, string description, int ackdatetime, int ackUserId)
            {
                events.Add(CreateLogSQLString((int)(1 << 29), dataType, eventid, eventcode, description, ackdatetime, ackUserId));
            }

            /// <summary>
            /// Commit these events to the database
            /// </summary>
            public void Commit() 
            {
                if (events.Count > 0)
                {
                    String[] eventsArray = events.ToArray();
                    Clear();
                    logger.database.ExecuteSQLStatements(eventsArray);
                }
            }

            /// <summary>
            /// Clear all currently pending events
            /// </summary>
            public void Clear()
            {
                events.Clear();
            }
        }
    }
}
