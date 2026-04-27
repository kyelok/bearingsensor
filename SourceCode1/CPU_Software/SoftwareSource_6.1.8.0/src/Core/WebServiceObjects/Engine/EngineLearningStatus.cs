/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    /// <summary>
    /// This class defines the data returned
    /// to a engine learn status request.
    /// </summary>
    [DataContract]
    public class EngineLearningStatus
    {
        /// <summary>
        /// The engine learn stage
        /// </summary>
        [DataMember]
        public Int16 CalibrationStage;
        
        /// <summary>
        /// The time left in hours for the engine learn to complete
        /// </summary>
        [DataMember]
        public Int16 LearningLeft;
        
        /// <summary>
        /// The number of points that have been learnt
        /// </summary>
        [DataMember]
        public Int16 CalibratedPoints;
        
        /// <summary>
        /// The total points to learn
        /// </summary>
        [DataMember]
        public Int16 TotalPoints;
        
        /// <summary>
        /// Is the current RPM in the correct speed band
        /// </summary>
        [DataMember]
        public Int16 SpeedInBand;

        /// <summary>
        /// The date and time that this status was
        /// updated at.
        /// </summary>
        [DataMember]
        public DateTimeObject DateTime;

        /// <summary>
        /// The range of speed bands for the engine learn
        /// </summary>
        [DataMember]
        public Int16[] Speedbands;

        /// <summary>
        /// Flag indicating if the verification code has been entered.
        /// </summary>
        [DataMember]
        public bool HasVerificationDate { get; set; }
    }
}
