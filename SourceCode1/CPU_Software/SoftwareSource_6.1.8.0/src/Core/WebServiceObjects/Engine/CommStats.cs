/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    /// <summary>
    /// This class holds the communication statistics
    /// </summary>
    [DataContract]
    public class CommStats
    {
        [DataMember]
        public long Retries;

        [DataMember]
        public long FailedWrites;

        [DataMember]
        public long FailedReads;

        [DataMember]
        public long CrcErrors;

        [DataMember]
        public long PacketsWritten;

        [DataMember]
        public long PacketsRead;        
    }
}
