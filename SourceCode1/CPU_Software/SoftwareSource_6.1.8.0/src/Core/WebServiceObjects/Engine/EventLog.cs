/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    [DataContract]
    public class EventLog
    {
        [DataMember]
        int TotalEvents;

        [DataMember]
        int Start;

        [DataMember]
        EventLogItem[] Events;
    }

    [DataContract]
    public class EventLogItem
    {
        [DataMember]
        int EventDateTime;

        [DataMember]
        int DataType;

        [DataMember]
        int Eventid;

        [DataMember]
        int Eventcode;

        [DataMember]
        string Description;

        [DataMember]
        int Ackdatetime;

        [DataMember]
        int AckUserId;
    }
}
