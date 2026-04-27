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
    public class TemperatureDatabaseObject
    {
        /// <summary>
        /// The channel id index
        /// </summary>
        public int ChannelId { get; set; }

        /// <summary>
        /// The Temperature channel name to write to the database
        /// </summary>
        public string TemperatureChannelName { get; set; }
        
        /// <summary>
        /// The Temperature enable to write to the database
        /// </summary>
        public bool TemperatureEnable { get; set; }
        
        /// <summary>
        /// The Temperature to write to the database
        /// </summary>
        public short Temperature { get; set; }

        /// <summary>
        /// The Temperature alarm to write to the database
        /// </summary>
        public bool TemperatureAlarm { get; set; }

        /// <summary>
        /// The Temperature slowdown to write to the database
        /// </summary>
        public bool TemperatureSlowdown { get; set; }

        /// <summary>
        /// The Temperature alarm level to write to the database
        /// </summary>
        public ushort AlarmLevel { get; set; }

        /// <summary>
        /// The Temperature slowdown level to write to the database
        /// </summary>
        public ushort SlowdownLevel { get; set; }

        /// <summary>
        /// The Temperature deviation to write to the database
        /// </summary>
        public short TemperatureDev { get; set; }

        /// <summary>
        /// The lose connection to RTD to write to the database
        /// </summary>
        public bool RTDGood { get; set; }

        /// <summary>
        /// Temperature database columns
        /// </summary>
        public static readonly string TemperatureColumns = "channelId, channelname, temperatureEnable, temperature, temperatureAlarm, temperatureSlowdown, alarmLevel, slowdownLevel, temperatureDev, rtdGood";

        /// <summary>
        /// Constructor for the temperature
        /// </summary>
        /// <param name="id">The channel id index</param>
        public TemperatureDatabaseObject(int id)
        {
            ChannelId = id;
            TemperatureChannelName = string.Format("temperature sensor");
            TemperatureEnable = true;
            Temperature = 0;
            TemperatureAlarm = false;
            TemperatureSlowdown = false;
            AlarmLevel = 65;
            SlowdownLevel = 75;
            TemperatureDev = 0;
            RTDGood = true;
        }

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="channelID">The channel id index</param>
        /// <param name="temperature">The temperature to write to the database</param>        
        /// <param name="temperatureAlarm">The temperatureAlarm to write to the database</param>        
        public TemperatureDatabaseObject(int channelID, string channel, bool temperatureEnable, short temperature, bool temperatureAlarm, bool temperatureSlowdown, ushort alarmLevel, ushort slowdownLevel, short temperatureDev, bool rtdGood)
        {
            this.ChannelId = channelID;
            this.TemperatureChannelName = channel;
            this.TemperatureEnable = temperatureEnable;
            this.Temperature = temperature;
            this.TemperatureAlarm = temperatureAlarm;
            this.TemperatureSlowdown = temperatureSlowdown;
            this.AlarmLevel = alarmLevel;
            this.SlowdownLevel = slowdownLevel;
            this.TemperatureDev = temperatureDev;
            this.RTDGood = rtdGood;
        }

        /// <summary>
        /// Creates the SQL string required to update this channel in the database
        /// </summary>
        /// <returns>SQL string required to update this channel in the database</returns>
        public string UpdateInDatabaseSQL()
        {
            String sql = String.Format("REPLACE INTO temperature ({0}) VALUES ({1}, '{2}', {3}, {4}, {5}, {6}, {7}, {8}, {9}, {10});",
                TemperatureColumns, ChannelId, TemperatureChannelName, TemperatureEnable ? 1 : 0, Temperature, TemperatureAlarm ? 1 : 0, TemperatureSlowdown ? 1 : 0, AlarmLevel, SlowdownLevel, TemperatureDev, RTDGood ? 1 : 0);
            return sql;
        }

        /// <summary>
        /// Creates the SQL string required to delete this channel from the database
        /// </summary>
        /// <returns>SQL string required to delete this channel from the database</returns>
        public string DeleteSQL()
        {
            String sql = String.Format("DELETE from temperature WHERE channelId={0};", ChannelId);
            return sql;
        }
    }
}
