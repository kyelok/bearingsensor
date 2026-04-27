/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    /// <summary>
    /// This class is used to report the sensor replacment state of a sensor
    /// </summary>
    [DataContract]
    public class SensorReplacementStatus
    {
        /// <summary>
        /// Constructs a SensorReplacementStatus object
        /// </summary>
        /// <param name="sensor">The id of the sensor.</param>
        /// <param name="failureDate">The failure date of the sensor.</param>
        /// <param name="replacementDate">The date the sensor was replaced.</param>
        /// <param name="stage">The stage of replacement the sensor is currently at.</param>
        /// <param name="timeRemaining">The time remaining for this stage.</param>
        /// <param name="totalMinutes">The total minutes for this stage.</param>
        public SensorReplacementStatus(Int16 sensor, string failureDate, string replacementDate, Int16 stage, Int64 timeRemaining, Int64 totalMinutesForStage)
        {
            this.Sensor = sensor;
            this.FailureDate = failureDate;
            this.ReplacementDate = replacementDate;
            this.Stage = stage;
            this.MinutesRemaining = timeRemaining;
            this.TotalMinutes = totalMinutesForStage;

        }

        /// <summary>
        /// The id of the sensor (0-27)
        /// </summary>
        [DataMember]
        public Int16 Sensor { get; set; }

        /// <summary>
        /// The failure date of the sensor
        /// </summary>
        [DataMember]
        public string FailureDate { get; set; }

        /// <summary>
        /// The replacement date of the sensor
        /// </summary>
        [DataMember]
        public string ReplacementDate { get; set; }

        /// <summary>
        /// The stage of replacment the sensor is in.
        /// </summary>
        [DataMember]
        public Int16 Stage { get; set; }

        /// <summary>
        /// The minutes remaning in the current stage
        /// </summary>
        [DataMember]
        public Int64 MinutesRemaining { get; set; }

        /// <summary>
        /// The total minutes in the curent stage
        /// </summary>
        [DataMember]
        public Int64 TotalMinutes { get; set; }
    }
}
