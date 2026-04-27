/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EventLogging
{
    /// <summary>
    /// Represents and manages an alarm in the database
    /// </summary>
    public class AlarmDatabaseObject
    {
        /// <summary>
        /// The alarm id index
        /// </summary>
        public int AlarmId { get; set; }
        
        /// <summary>
        /// The alarm descrition to write to the database
        /// </summary>
        public string AlarmDesc { get; set; }
        
        /// <summary>
        /// The time in milliseconds when the alarm activated
        /// </summary>
        public Int64 AlarmOn { get; set; }
        
        /// <summary>
        /// The time in milliseconds when the alarm deactivated, 0 indicates that the alarm is still live
        /// </summary>
        public Int64 AlarmOff { get; set; }
        
        /// <summary>
        /// The number of times this alarm has become active without being cleared
        /// </summary>
        public int Count { get; set; }
        
        /// <summary>
        /// Indicates that this alarm has been marked acked
        /// </summary>
        public bool Acked { get; set; }
        
        /// <summary>
        /// Indicates that this alarm has been marked ignored
        /// </summary>
        public bool Ignore { get; set; }
        
        /// <summary>
        /// The time of the ack operation
        /// </summary>
        public Int64 AckTime { get; set; }
        
        /// <summary>
        /// The user who acked the alarm
        /// </summary>
        public string AckUser { get; set; }
        
        /// <summary>
        /// The time of the ignore operation
        /// </summary>
        public Int64 IgnoreTime { get; set; }

        /// <summary>
        /// The user who ignored the alarm
        /// </summary>
        public string IgnoreUser { get; set; }

        /// <summary>
        /// Gets the data type for this alarm.
        /// </summary>
        public Int32 DataType { get; set; }

        /// <summary>
        /// The channel mask assocaited with this alarm
        /// </summary>
        public Int32 AlarmChannelMask { get; set; }

        /// <summary>
        /// The event code associated with this alarm
        /// </summary>
        public short EventCode { get; set; }

        /// <summary>
        /// Flag indicating that the cleared log has been made
        /// in the event log.
        /// </summary>
        public bool ClearLogged { get; set; }

        /// <summary>
        /// Alarm database columns
        /// </summary>
        public static readonly string AlarmColumns = "alarmId, alarmDesc, alarmOn, alarmOff, count, acked, ignore, ackTime, ackUser, ignoreTime, ignoreUser, dataType, channelMask, eventCode, logged";

        /// <summary>
        /// Constructor for the alarm
        /// </summary>
        /// <param name="id">The alarm id index</param>
        public AlarmDatabaseObject(int id)
        {
            AlarmId = id;
            AlarmOn = 0;
            AlarmOff = 0;
            Count = 1;
            Acked = false;
            Ignore = false;
            AckTime = 0;
            AckUser = string.Empty;
            IgnoreTime = 0;
            IgnoreUser = string.Empty;
            DataType = 0;
            AlarmChannelMask = 0;
            EventCode = 0;
            ClearLogged = false;
        }

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="alarmId">The alarm id index</param>
        /// <param name="alarmDesc">The alarm descrition to write to the database</param>
        /// <param name="alarmOn">The time in milliseconds when the alarm activated</param>
        /// <param name="alarmOff">The time in milliseconds when the alarm deactivated, 0 indicates that the alarm is still live</param>
        /// <param name="count">The number of times this alarm has become active without being cleared</param>
        /// <param name="acked">Indicates that this alarm has been marked acked</param>
        /// <param name="ignore">Indicates that this alarm has been marked ignored</param>
        /// <param name="ackTime">The time of the ack operation</param>
        /// <param name="ackUser">The user who acked the alarm</param>
        /// <param name="ignoreTime">The time of the ignore operation</param>
        /// <param name="ignoreUser">The user who ignored the alarm</param>
        public AlarmDatabaseObject(int alarmId, string alarmDesc, Int64 alarmOn, Int64 alarmOff, int count, bool acked, bool ignore, Int64 ackTime, string ackUser, Int64 ignoreTime, string ignoreUser, int dataType, int alarmChannelMask, short eventCode, bool logged)
        {
            this.AlarmId = alarmId;
            this.AlarmDesc = alarmDesc;
            this.AlarmOn = alarmOn;
            this.AlarmOff = alarmOff;
            this.Count = count;
            this.Acked = acked;
            this.Ignore = ignore;
            this.AckTime = ackTime;
            this.AckUser = ackUser;
            this.IgnoreTime = ignoreTime;
            this.IgnoreUser = ignoreUser;
            this.DataType = dataType;
            this.AlarmChannelMask = alarmChannelMask;
            this.EventCode = eventCode;
            this.ClearLogged = logged;
        }

        /// <summary>
        /// Creates the SQL string required to update this Alarm in the database
        /// </summary>
        /// <returns>SQL string required to update this Alarm in the database</returns>
        public string UpdateInDatabaseSQL()
        {
            String sql = String.Format("REPLACE INTO alarms ({0}) VALUES ({1}, '{2}', {3}, {4}, {5}, {6}, {7}, {8}, '{9}', {10}, '{11}', {12}, {13}, {14}, {15});",
                AlarmColumns, AlarmId, AlarmDesc, AlarmOn, AlarmOff, Count, Acked ? 1 : 0, Ignore ? 1 : 0, AckTime, AckUser, IgnoreTime, IgnoreUser, DataType, AlarmChannelMask, EventCode, ClearLogged ? 1 : 0);
            return sql;
        }

        /// <summary>
        /// Creates the SQL string required to delete this Alarm from the database
        /// </summary>
        /// <returns>SQL string required to delete this Alarm from the database</returns>
        public string DeleteSQL()
        {
            String sql = String.Format("DELETE from alarms WHERE alarmId={0};", AlarmId);
            return sql;
        }
    }
}
