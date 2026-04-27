/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    /// <summary>
    /// This class defines that data that is required to describe
    /// the state of an alarm.
    /// </summary>
    [DataContract]
    public class EngineAlarm
    {
        /// <summary>
        /// The id of the alarm record in
        /// the database that this object refers too.
        /// </summary>
        [DataMember]
        public int AlarmId;

        /// <summary>
        /// The text string of the alarm.
        /// </summary>
        [DataMember]
        public string AlarmString;

        /// <summary>
        /// The alarm datatype
        /// </summary>
        [DataMember]
        public LogDataTypes DataType;

        /// <summary>
        /// The unix timestamp of
        /// the date and time the alarm activated.
        /// </summary>
        [DataMember]
        public long AlarmOn;

        /// <summary>
        /// The unix timestamp of
        /// the date and time the alarm de-activated.
        /// </summary>
        [DataMember]
        public long AlarmOff;

        /// <summary>
        /// The number of times the alarm has
        /// activated and de-activated.
        /// </summary>
        [DataMember]
        public int Count;

        /// <summary>
        /// Flag indicaitng that the
        /// alarm has been acked.
        /// </summary>
        [DataMember]
        public bool Acked;

        /// <summary>
        /// Flag indicaiting that
        /// the alarm has been ignored.
        /// </summary>
        [DataMember]
        public bool Ignore;

        /// <summary>
        /// The unix timestamp of the
        /// date and time that the alarm was
        /// acked.
        /// </summary>
        [DataMember]
        public long AckTime;

        /// <summary>
        /// The name of the user
        /// that acked the alarm.
        /// </summary>
        [DataMember]
        public string AckUser;

        /// <summary>
        /// The unix time stamp of
        /// the date and time that the
        /// alarm was ignored.
        /// </summary>
        [DataMember]
        public long IgnoreTime;

        /// <summary>
        /// The name is the user
        /// that ignored the alarm.
        /// </summary>
        [DataMember]
        public string IgnoreUser;
    }
}
