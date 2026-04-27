/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    /// <summary>
    /// This class holds the data that is required to perform
    /// a sensor setup.  The data is read directly from the SPU.
    /// </summary>
    public class SensorSetup
    {
        /// <summary>
        /// The number of sensors
        /// </summary>
        [DataMember]
        public int Sensors { get; set; }

        /// <summary>
        /// The MIN OK band of a sensor
        /// </summary>
        [DataMember]
        public Int16 OkBandMin { get; set; }

        /// <summary>
        /// The MAX OK band for a sensor
        /// </summary>
        [DataMember]
        public Int16 OkBandMax { get; set; }
   
        /// <summary>
        /// The MIN ideal band
        /// </summary>
        [DataMember]
        public Int16 IdleBandMin { get; set; }
        
        /// <summary>
        /// The MAX ideal band
        /// </summary>
        [DataMember]
        public Int16 IdleBandMax { get; set; }
        
        /// <summary>
        /// The actual sensor readings
        /// </summary>
        [DataMember]
        public Int16[] SensorActualValue { get; set; }
        
        /// <summary>
        /// The peek sensor readings
        /// </summary>
        [DataMember]
        public Int16[] SensorPeekValue { get; set; }
        
        /// <summary>
        /// The micron readings
        /// </summary>
        [DataMember]
        public Int16[] MicronCurrentVal { get; set; }
        
        /// <summary>
        /// The peak hold
        /// </summary>
        [DataMember]
        public Int16 DCPeakHold { get; set; }
        
        /// <summary>
        /// The DC mode
        /// </summary>
        [DataMember]
        public Int16 DCMode { get; set; }
        
        /// <summary>
        /// The pre comp readings
        /// </summary>
        [DataMember]
        public Int16[] PreCompensation { get; set; }

        /// <summary>
        /// The cylinder firing order
        /// </summary>
       
        [DataMember]
        public Int16[] FiringOrder { get; set; }

        /// <summary>
        /// The cylinder comparison
        /// </summary>
        [DataMember]
        public Int16 CylinderComparison { get; set; }

        /// <summary>
        /// The channel OK bitmap
        /// </summary>
        [DataMember]
        public Int32 ChannelOK { get; set; }

        /// <summary>
        /// The channel ideal bitmap
        /// </summary>
        [DataMember]
        public Int32 ChannelIdeal { get; set; }
    }
}