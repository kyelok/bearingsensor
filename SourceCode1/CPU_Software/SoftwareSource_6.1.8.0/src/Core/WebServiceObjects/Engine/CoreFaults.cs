/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    /// <summary>
    /// This class contains the arrays that hold the error codes 
    /// of the active and inactive software fault codes.  These faults
    /// can be used to determine which software components are in the
    /// fault state.
    /// </summary>
    [DataContract]
    public class CoreFaults
    {
        /// <summary>
        /// The error codes of faults that are active
        /// </summary>
        [DataMember]
        public Int16[] ActiveFaults;

        /// <summary>
        /// The error codes of the inactive faults
        /// </summary>
        [DataMember]
        public Int16[] InActiveFaults;
    }
}
