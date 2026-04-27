/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    [DataContract]
    public class DynAlarm
    {
        /// <summary>
        /// 
        /// </summary>
        [DataMember]
        public UInt16 Single1 { get; set; }

        /// <summary>
        /// Cylinder sum 1
        /// </summary>
        [DataMember]
        public UInt16 Cylsum1 { get; set; }

        /// <summary>
        /// MB neighbour sum 1
        /// </summary>
        [DataMember]
        public UInt16 Mbnsum1 { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [DataMember]
        public UInt16 Single2 { get; set; }

        /// <summary>
        /// Cylinder sum 2
        /// </summary>
        [DataMember]
        public UInt16 Cylsum2 { get; set; }

        /// <summary>
        /// MB neighbour sum 2
        /// </summary>
        [DataMember]
        public UInt16 Mbnsum2 { get; set; }
    }
}
