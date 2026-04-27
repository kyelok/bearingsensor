/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AMOTConstants
{
    /// <summary>
    /// Defines the stages that a sensor can be in when being replaced.
    /// </summary>
    public enum SensorReplacementStage
    {
        /// <summary>
        /// The sensor is not being replaced
        /// </summary>
        None,
        
        /// <summary>
        /// The sensor is in the slow roll stage
        /// </summary>
        SlowRoll,

        /// <summary>
        /// The sensor is in the 50 hours average data stage
        /// </summary>
        Average50Hours,

        /// <summary>
        /// The sensor is in the 500 hours average data stage
        /// </summary>
        Average500Hours,

        /// <summary>
        /// The sensor has completed 500 hours average and replacement data
        /// can be sent to AMOT.
        /// </summary>
        EnableSendReplacementData,

        /// <summary>
        /// The Replacment data has been sent to AMOT and the new data needs to be inputted.
        /// </summary>
        EnableInputReplacementData,

        /// <summary>
        /// The sensor replacement has been Cancelled by the user
        /// </summary>
        Cancelled,
    }
}
