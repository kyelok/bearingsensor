/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;
using System.Collections.Generic;

namespace WebServiceObjects
{
    /// <summary>
    /// This class holds a TemperatureSet for saving and loading from the
    /// database,
    /// </summary>
    [DataContract]
    public class TemperatureConfiguration
    {
        /// <summary>
        /// Constructs a TemperatureConfiguration object
        /// </summary>
        /// <param name="slot">The slot to store the configuration in</param>
        /// <param name="description">The description of the configuration</param>
        /// <param name="details">The array of TrendDetails assocaited with this configuration</param>
        public TemperatureConfiguration(int[] id, bool[] enable, string[] name, Int16[] alarmLevel, Int16[] slowdownLevel)
        {
            this.Id = id;
            this.Enable = enable;
            this.TemperatureChannelName = name;
            this.TemperatureAlarmLevel = alarmLevel;
            this.TemperatureSlowdownLevel = slowdownLevel;
        }

        /// <summary>
        /// The temperature sensor number
        /// </summary>
        [DataMember]
        public int TemperatureSensors;
                   
        /// <summary>
        /// The id of the channel
        /// </summary>
        [DataMember]
        public int[] Id;

        /// <summary>
        /// The enable/disable of the channel
        /// </summary>
        [DataMember]
        public bool[] Enable;                        

        /// <summary>
        /// An array of the temperature values
        /// </summary>
        [DataMember]
        public Int16[] TemperatureChannelValue;

        /// <summary>
        /// An array of the temperature dev values
        /// </summary>
        [DataMember]
        public Int16[] TemperatureDevValue;

        /// <summary>
        /// An array of the temperature alarm
        /// </summary>
        [DataMember]
        public bool[] TemperatureAlarmArrary;

        /// <summary>
        /// An array of the temperature alarm
        /// </summary>
        [DataMember]
        public bool[] TemperatureSlowdownArrary;

        /// <summary>
        /// An array of the temperature channel name
        /// </summary>
        [DataMember]
        public string[] TemperatureChannelName;

        /// <summary>
        /// The value of the Temperature alarm level
        /// </summary>
        [DataMember]
        public Int16[] TemperatureAlarmLevel;

        /// <summary>
        /// The value of the Temperature slowdown level
        /// </summary>
        [DataMember]
        public Int16[] TemperatureSlowdownLevel;

        /// <summary>
        /// The value of the Temperature dev alarm level
        /// </summary>
        [DataMember]
        public Int16[] TemperatureDevAlarmLevel;

        /// <summary>
        /// The value of the Temperature dev slowdown level
        /// </summary>
        [DataMember]
        public Int16[] TemperatureDevSlowdownLevel;

        /// <summary>
        /// The value of the Temperature bar scale
        /// </summary>
        [DataMember]
        public int TemperatureBarScale;

        /// <summary>
        /// The value of the Temperature dev bar scale
        /// </summary>
        [DataMember]
        public int TemperatureDevBarScale;

        /// <summary>
        /// The value of the Temperature alarm in scale bar
        /// </summary>
        [DataMember]
        public int TemperatureBarScaleAlarm;

        /// <summary>
        /// The value of the Temperature slowdown in scale bar
        /// </summary>
        [DataMember]
        public int TemperatureBarScaleSlowdown; 

        
    }
}
