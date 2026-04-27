/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    [DataContract]
    public class SensorSurveyPeek
    {
        [DataMember]
        public bool Success { get; set; }

        [DataMember]
        public short [] DCValues { get; set; }
    }
}
