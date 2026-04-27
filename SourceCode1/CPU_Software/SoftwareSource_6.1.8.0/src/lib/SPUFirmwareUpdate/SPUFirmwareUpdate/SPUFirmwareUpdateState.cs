/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Text;

namespace SPUFirmwareUpdate
{
    /// <summary>
    /// Enum to represent the current state of the firmware updater
    /// </summary>
    public enum SPUFirmwareUpdateState : int
    {
        /// <summary>
        /// The update process has not yet been started
        /// </summary>
        NotStarted = 0,

        /// <summary>
        /// The update process is in progress or busy
        /// </summary>
        InProgress,

        /// <summary>
        /// The update process has halted due to failure
        /// </summary>
        Failed,

        /// <summary>
        /// The update process has successfully completed
        /// </summary>
        Completed
    }
}
