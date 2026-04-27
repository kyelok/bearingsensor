/* Program.cs -- Amot AMOT XTS-W+ Plugin Framework
 *
 * This program implements the extensible plugin framework for the 
 * AMOT XTS-W+ program. 
 *
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 *
 * Revision 1.1  01/09/2012  13:00  twillis
 * Initial revision
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Diagnostics;
using System.Timers;

namespace Framework
{
    /* Class responsible for creating and maintaining threads concerning scheduled logging and running of a part */
    class ScheduleCreator
    {
        //TODO: Deal with run/logschedule being 0

        IExtInterface part;
        System.Timers.Timer timer = new System.Timers.Timer();
        int logCount = 0;
        int logAt;

        /* Set up access to external parts/plugins 
         * Parameters: part - Object representing a part passed from Program */
        public ScheduleCreator(IExtInterface part)
        {
            System.Diagnostics.Debug.WriteLine("New Scheduler created for " + part.ToString()
                + "\nRun: " + part.RunSchedule + "\nLog: " + part.LogSchedule);

            this.part = part;
            logAt = this.part.LogSchedule / this.part.RunSchedule;
            //Set interval for run timer
            timer.Interval = this.part.RunSchedule;     
            //Create event handler for when it is time to run
            timer.Elapsed += new ElapsedEventHandler(t_Elapsed);
            timer.AutoReset = true;
            timer.Start();
        }


        /* t_Elapsed
         * ----------
         *
         * Called when the timer has elapsed by the run interval specified
         * by the extension (also known as part)
         *
         * Preconditions
         *     The function must be called by an ElapsedEventHandler
         *
         * Postconditions
         *    The extension's Run() method will be called, furthermore if
         *    enough time has elapsed such that it is time to log an event
         *    the extension's Log() function will also be called.
         *
         * Returns
         *    None (void)
         */
        void t_Elapsed(object sender, ElapsedEventArgs e)
        {
            timer.Stop();
            //Execute the Run() method in the plugin/part
            this.part.Run();
            logCount++;
            //Check elapsed time
            if (logCount == logAt)
            {
                //IF elapsed call log, restart sw
                logCount = 0;
                this.part.Log();
            }

            timer.Start();
        }
    }

}
