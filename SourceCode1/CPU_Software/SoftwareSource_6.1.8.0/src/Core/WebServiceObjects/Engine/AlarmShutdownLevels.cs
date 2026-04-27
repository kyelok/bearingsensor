/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    [DataContract]
    public class AlarmShutdownLevels
    {
        [DataMember]
        public UInt16 SensorSlowDownLevel { get; set; }

        [DataMember]
        public UInt16 SensorAlarmLevel { get; set; }
        
        [DataMember]
        public UInt16 SensorDevSlowDownLevel { get; set; }
        
        [DataMember]
        public UInt16 SensorAlarmDeviationLevel { get; set; }

        [DataMember]
        public UInt16 CylinderAlarmLevel { get; set; }
    }
}
