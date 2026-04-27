/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataCollectionSDK
{
    /// <summary>
    /// External plugin interface library.  Any module that
    /// is to be loaded and executed by the Data Collection Framework must
    /// implement this interface.
    /// </summary>
    public interface IExtInterface
    {
        /// <summary>
        /// Returns the milliseconds that should
        /// elapse between executions
        /// </summary>
        int RunSchedule { get; }

        /// <summary>
        /// Returns the milliseconds that should 
        /// elapse before logging data
        /// </summary>
        int LogSchedule { get; }

        /// <summary>
        /// Called to initialise the object for use.
        /// </summary>
        void Init();

        /// <summary>
        /// Called when the RunSchedule milliseconds have elapsed.
        /// The method that implements this interface should
        /// perform all the data collection work.
        /// </summary>
        void Run();

        /// <summary>
        /// Called when the LogSchedule milliseconds have elapsed.
        /// The method that implements this interface should perform
        /// all the data logging work.
        /// </summary>
        /// <param name="logTime">The time to stamp this log entry with.</param>
        void Log(DateTime logTime);

        /// <summary>
        /// Gets the sync object to lock access to this plugin on.
        /// </summary>
        object SyncRoot { get; }

        /// <summary>
        /// Flag that indicates that this is a real time task.
        /// The execution time of real time tasks is taken into account
        /// when scheduling the next time they should run.
        /// </summary>
        bool Realtime { get; }

        /// <summary>
        /// Method to stop any internal services the task runs
        /// </summary>
        void Stop();
    }
}
