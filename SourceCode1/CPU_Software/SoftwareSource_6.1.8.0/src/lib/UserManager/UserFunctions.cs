/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace UserManagement
{
    /// <summary>
    /// This class holds the default functions a user can be assigned.
    /// </summary>
    public class UserFunctions
    {
        /// <summary>
        /// User can perform Engine Learning functions.
        /// </summary>
        public static readonly string EngineLearning = "EngineLearning";

        /// <summary>
        /// User can perform Surveyour functions.
        /// </summary>
        public static readonly string Surveying = "Surveying";

        /// <summary>
        /// User can perform Sensor Replacement functions.
        /// </summary>
        public static readonly string SensorReplacement = "SensorReplacement";

        /// <summary>
        /// User can enable, disable mask and un-mask sensors.
        /// </summary>
        public static readonly string SensorControl = "SensorControl";

        /// <summary>
        /// The user can ack alarms.
        /// </summary>
        public static readonly string AckAlarms = "AckAlarms";

        /// <summary>
        /// The user can access diagnostics information.
        /// </summary>
        public static readonly string Diagnostics = "Diagnostics";

        /// <summary>
        /// The user can edit users.
        /// </summary>
        public static readonly string Users = "Users";
    }
}
