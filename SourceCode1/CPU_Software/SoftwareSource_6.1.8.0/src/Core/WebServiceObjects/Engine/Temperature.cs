/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    /// <summary>
    /// This class contains the temperature  data.
    /// </summary>
    [DataContract]
    public class Temperature
    {             
        /// <summary>
        /// The temperature
        /// </summary>
        [DataMember]
        public short[] ChannelTemperature;

        /// <summary>
        /// The name of each channel
        /// </summary>
        [DataMember]
        public String[] ChannelName;        
    }
}
