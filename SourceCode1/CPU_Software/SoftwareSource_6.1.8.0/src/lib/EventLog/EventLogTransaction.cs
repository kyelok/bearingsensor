/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebServiceObjects;

namespace EventLogging
{
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
        /// Creates a General Event in the collection of events to be logged.
        /// </summary>
        /// <param name="description">The message to use for the general event.</param>
        public void LogGeneralEvent(string description)
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
        public void LogEvent(LogDataTypes dataType, int channel, int eventid, int eventcode, string description, Int64 ackdatetime, string ackUser)
        {
            if (dataType == LogDataTypes.General)
                channel = (1 << 29) | (1 << 28) | ((1 << 28) - 1);

            events.Add(EventLog.CreateLogSQLString(channel, dataType, eventid, eventcode, description, ackdatetime, ackUser));
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
            events.Add(EventLog.CreateLogSQLString((int)(1 << 28), dataType, eventid, eventcode, description, ackdatetime, ackUser));
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
            events.Add(EventLog.CreateLogSQLString((int)(1 << 29), dataType, eventid, eventcode, description, ackdatetime, ackUser));
        }

        /// <summary>
        /// Commits the events to the event log database
        /// </summary>
        public void Commit()
        {
            if (events.Count > 0)
            {
                String[] eventsArray = events.ToArray();
                Clear();
                logger.database.ExecuteSQLStatements(eventsArray,FaultErrorIndicators.FaultCodes.EventLogWriteFailure,FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure,FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog);
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
