/* Program.cs -- Amot AMOT XTS-W+ Plugin Framework
 *
 * This program implements the extensible plugin framework for the 
 * AMOT XTS-W+ program. 
 *
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Threading;
using log4net;
using HelperClasses;
using DataCollectionSDK;
using System.Diagnostics.CodeAnalysis;
using System.Configuration;

namespace Framework
{
    /// <summary>
    /// Framework program
    /// </summary>
    class Program
    {
        /// <summary>
        /// The programs plug-in manager
        /// </summary>
        private PluginManager pm;
        private List<ScheduledTask> scheduler;

        /// <summary>
        /// Logging
        /// </summary>
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        /// <summary>
        /// This method reads whether bearing wear is measured
        /// </summary>
        /// <returns>boolen to tell whether bearing wear is measured</returns>
        public bool BearingWearMeasuring()
        {
            string BearingWearMeasuring = "false";

            if (ConfigurationManager.AppSettings["BearingWearMeasuring"] != null)
            {
                BearingWearMeasuring = ConfigurationManager.AppSettings["BearingWearMeasuring"];
                if (BearingWearMeasuring == "true") return true;
                else return false;
            }
            else
            {
                return true;
            }
        }

        /// <summary>
        /// This method reads whether tempearture is measured
        /// </summary>
        /// <returns>boolen to tell whether tempearture is measured</returns>
        public bool TemperatureMeasuring()
        {
            //string TemperatureMeasuring = "false";
            bool tempenable = false;
            /*
            if (ConfigurationManager.AppSettings["TemperatureMeasuring"] != null)
            {
                TemperatureMeasuring = ConfigurationManager.AppSettings["TemperatureMeasuring"];
                if (TemperatureMeasuring == "true") return true;
                else return false;
            }
            else
            {
                return false;
            }
             * */
            if (File.Exists(@"d:\config\ModbusServer.config"))
            {
                tempenable = false;
                foreach (string line in File.ReadLines("d:\\config\\ModbusServer.config"))
                {
                    if (line.Contains("Tempenable") && line.Contains("1"))
                    {
                        tempenable = true;
                    }
                }
            }
            else
            {
                tempenable = false;
            }
            return tempenable;
        }



        private Program()
        {
            pm = PluginManager.InitalisePlugins;
        }

        public void Start()
        {
            scheduler = new List<ScheduledTask>();

            foreach (IExtInterface i in pm.Plugins)
            {
                if ((BearingWearMeasuring() == true) && (TemperatureMeasuring() == true))
                {
                    logger.WarnFormat("Scheduling '{0}' ", i.GetType());
                    scheduler.Add(new ScheduledTask(i));
                }
                else if ((TemperatureMeasuring() == true))
                {
                    if ((i.GetType().ToString().Equals("TemperaturePlugin.TemperaturePlugin")) || (i.GetType().ToString().Equals("TrendPlugin.TrendPlugin")) || (i.GetType().ToString().Equals("WebService.WebServicePlugin")))
                    {
                        logger.WarnFormat("Scheduling '{0}' ", i.GetType());
                        scheduler.Add(new ScheduledTask(i));
                    }
                }
                else if (BearingWearMeasuring() == true)
                {
                    if (!(i.GetType().ToString().Equals("TemperaturePlugin.TemperaturePlugin")))
                    {
                        logger.WarnFormat("Scheduling '{0}' ", i.GetType());
                        scheduler.Add(new ScheduledTask(i));
                    }
                }
            }
        }

        public void Stop()
        {
            foreach (ScheduledTask task in scheduler)
            {
                task.Stop();
            }
        }

        [SuppressMessage("Microsoft.Usage", "CA1801:ReviewUnusedParameters")]
        static void Main(string[] args)
        {
            // Call private constructor to load in parts from plugins dir
            Program program = new Program();

            // Initialise each individual part
            program.Start();

            // Wait
            EventWaitHandle waitForShutdown = new EventWaitHandle(false, EventResetMode.AutoReset, "amot_shutdown_data");
            waitForShutdown.WaitOne();

            program.Stop();

        }
    }
}
