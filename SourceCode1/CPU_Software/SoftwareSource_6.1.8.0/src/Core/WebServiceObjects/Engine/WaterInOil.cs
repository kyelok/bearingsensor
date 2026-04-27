/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    [DataContract]
    public class WaterInOil
    {
        [DataMember]
        public Int16 WaterActivity { get; set; }

        [DataMember]
        public Int16 PPM { get; set; }

        [DataMember]
        public Int16 Temp { get; set; }

        [DataMember]
        public Int16 Units { get; set; }

        [DataMember]
        public Int16 MinScale { get; set; }

        [DataMember]
        public Int16 MaxScale { get; set; }

        [DataMember]
        public Int16 Alarm { get; set; }

        [DataMember]
        public Int16 UpAlarm { get; set; }
    }

    [DataContract]
    public class Cpp
    {
        [DataMember]
        public Int16 mA { get; set; }

        [DataMember]
        public Int16 percent { get; set; }        
    }
}
