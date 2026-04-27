/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
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
    /// This class holds the data that is returned in 
    /// response to an event log request
    /// </summary>
    [DataContract]
    public class EventLogResult
    {
        /// <summary>
        /// The total number of records in the event log.
        /// </summary>
        [DataMember]
        public int TotalResults;

        /// <summary>
        /// The record offset of this set of event logs
        /// </summary>
        [DataMember]
        public int ResultsOffset;

        /// <summary>
        /// An array of the events held by this EventLogResult
        /// </summary>
        [DataMember]
        public EventLogItem[] Events;

        /// <summary>
        /// An array of the alarms held by this EventLogResult
        /// </summary>
        [DataMember]
        public EngineAlarm[] EngineAlarms;
        
        public EventLogResult(int totalResults, int resultOffset, EventLogItem[] events)
        {
            TotalResults = totalResults;
            ResultsOffset = resultOffset;
            Events = events;
        }
    }

    /// <summary>
    /// This class defines the data that is returned per an event log entry.
    /// </summary>
    [DataContract]
    public class EventLogItem
    {
        /// <summary>
        /// The unix time stamp of the event log entry
        /// </summary>
        [DataMember]
        public int EventDateTime { get; set; }

        /// <summary>
        /// The log type
        /// </summary>
        [DataMember]
        public LogDataTypes DataType { get; set; }

        /// <summary>
        /// The mask that defines which channel the event applys to
        /// </summary>
        [DataMember]
        public int Channel { get; set; }

        /// <summary>
        /// The database id of the event
        /// </summary>
        [DataMember]
        public int Eventid { get; set; }

        /// <summary>
        /// The event code for the event
        /// </summary>
        [DataMember]
        public int Eventcode { get; set; }

        /// <summary>
        /// The message that is logged for the event
        /// </summary>
        [DataMember]
        public string Description { get; set; }

        /// <summary>
        /// The unix time stamp of the date and time
        /// that the event/alarm was acked
        /// </summary>
        [DataMember]
        public int Ackdatetime { get; set; }

        /// <summary>
        /// Stores the number of times the alarm has been active/inactive
        /// before it was acknowledged
        /// </summary>
        [DataMember]
        public int Count { get; set; }

        /// <summary>
        /// The user id of the user that acked
        /// the event/alarm
        /// </summary>
        [DataMember]
        public string AckUserId { get; set; }

        public EventLogItem(int eventDateTime, LogDataTypes dataType, int channel, int eventid, int eventcode, string description, int ackdatetime, string ackUserId, int count)
        {
            EventDateTime = eventDateTime;
            DataType = dataType;
            Channel = channel;
            Eventid = eventid;
            Eventcode = eventcode;
            Description = description;
            Ackdatetime = ackdatetime;
            AckUserId = ackUserId;
            Count = count;
        }
    }
}
