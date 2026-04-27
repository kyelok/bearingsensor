/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;
using System.Threading;

namespace WebServiceObjects
{
    [DataContract]
    public class DownloadOperation
    {
        [DataMember]
        public virtual int PercentDone
        { get; set; }

        [DataMember]
        public bool Error { get; set; }

        [DataMember]
        public string FileURL { get; set; }

        [DataMember]
        public string SessionId { get; set; }
    }
}
