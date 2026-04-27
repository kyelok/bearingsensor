/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataCollectionSDK;
using Configuration;
using HelperClasses;
using Reports;
using System.Reflection;
using Glmmclient;
using System.IO;
using FaultErrorIndicators;
using System.Data;
using log4net;

namespace GLMachineMeasurementPlugin
{
    /// <summary>
    /// This class holds the GL Machine Measurment Plug In.
    /// These plug in runs the GL Report every n hours
    /// and uploads the XML document created by the report to the
    /// GL Machine Measurment web service. 
    /// </summary>
    public class GLMachineMeasurement : IExtInterface
    {

        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        /// <summary>
        /// Holds the configuration read from the app.conf file
        /// </summary>
        ModuleConfiguration configuration;

        /// <summary>
        /// Holds the GLMachineMeasurementConfiguration plugin
        /// configuration read from the app.conf
        /// </summary>
        GLMachineMeasurementConfiguration moduleSettings;

        /// <summary>
        /// The Date and Time the report was last run.
        /// </summary>
        DateTime lastRunDate;

        /// <summary>
        /// The version number of the software creating the report
        /// </summary>
        Version reportVersion;

        /// <summary>
        /// The firmware version of the SPU.
        /// </summary>
        string spuFirmwareVersion;

        /// <summary>
        /// Number of channels on the SPU
        /// </summary>
        int numberOfChannels;

        /// <summary>
        /// Flag indicating if WIO is enabled
        /// </summary>
        bool wioEnabled;

        /// <summary>
        /// Flag indicating that slem is enabled
        /// </summary>
        bool slemEnabled;

        /// <summary>
        /// The username used to connect to the service
        /// </summary>
        string username;

        /// <summary>
        /// The password used to connect to the service
        /// </summary>
        string password;

        /// <summary>
        /// The uri that the service can be found at
        /// </summary>
        string uri;

        bool runGLReport;

        /// <summary>
        /// RunSchedule schedule for webservice
        /// </summary>
        public int RunSchedule
        {
            get 
            {
                return moduleSettings.Settings.RunSchedule;
            }
        }

        /// <summary>
        /// LogSchedule schedule for webservice
        /// </summary>
        public int LogSchedule
        {
            get { return 0; }
        }

        /// <summary>
        /// Internal sync object to lock access to this plugin on.
        /// </summary>
        private object syncRoot = new object();

        /// <summary>
        /// Gets the sync object to lock access to this plugin on.
        /// </summary>
        public object SyncRoot
        {
            get { return syncRoot; }
        }

        /// <summary>
        /// Flag indicating that this is a realtime task
        /// </summary>
        public bool Realtime
        {
            get
            {
                return false;
            }
        }

        /// <summary>
        /// Stop any internal services
        /// </summary>
        public void Stop()
        {
            //DoNothing
        }

        /// <summary>
        /// The configuraiton database
        /// </summary>
        DatabaseSDK configurationDatabase;

        /// <summary>
        /// Called to initialise the object for use.
        /// </summary>
        public void Init()
        {
            this.configuration = ModuleConfiguration.GetApplicationConfiguration();
            this.moduleSettings = configuration.GetSection("GLMachineMeasurementPlugin") as GLMachineMeasurementConfiguration;

            if (moduleSettings == null)
            {
                moduleSettings = new GLMachineMeasurementConfiguration();
            }

            DataCollectionConfigurationSection dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;
            if (dataCollectionConfig == null)
                dataCollectionConfig = new DataCollectionConfigurationSection();

            configurationDatabase = new DatabaseSDK(dataCollectionConfig.Database.ConfigurationDb, dataCollectionConfig.Database.DbRetryCount, dataCollectionConfig.Database.DbRetryDuration, 0);


            //Get the version number of this module
            reportVersion = Assembly.GetExecutingAssembly().GetName().Version;
            numberOfChannels = 28;
            spuFirmwareVersion = "Unknown";
            wioEnabled = false;
            slemEnabled = false;
        }

        /// <summary>
        /// Called when the RunSchedule milliseconds have elapsed.
        /// The method that implements this interface should
        /// perform all the data collection work.
        /// </summary>
        public void Run()
        {
            bool []selectedChannels = new bool[32];
            bool []activeChannels = new bool[28];

            //When the plugin is scheduled to run we need to
            //Generate the GL XML Report and send it to the GL MM Service
            GetWebServiceDetails();

            if (!this.runGLReport)
            {
                //Not a GL system
                //Do not run the report
                return;
            }

            GetSPUInformation();
            for (int i = 0; i < Math.Min(this.numberOfChannels, activeChannels.Length); i++)
            {
                activeChannels[i] = true;
                selectedChannels[i] = true;
            }

            selectedChannels[28] = this.wioEnabled;
            selectedChannels[29] = this.slemEnabled;

            DateTime startDate = DateTime.UtcNow;
            //Report has not been run for this instance of the plugin
            if (lastRunDate == DateTime.MinValue)
            {
                lastRunDate = DateTime.UtcNow.Subtract(TimeSpan.FromMilliseconds(moduleSettings.Settings.RunSchedule));
            }
            
            GLReport report = new GLReport(moduleSettings.Settings.TempPath, startDate, lastRunDate, selectedChannels, activeChannels, true, reportVersion.ToString(), spuFirmwareVersion, false);
            report.Start();

            Faults.Instance.ClearFault(FaultCodes.GLMMInvalidUsername);
            Faults.Instance.ClearFault(FaultCodes.GLMMNotAuthorized);
            Faults.Instance.ClearFault(FaultCodes.GLMMServerNotAvaliable);
            Faults.Instance.ClearFault(FaultCodes.GLMMUnknown);
            Faults.Instance.ClearFault(FaultCodes.GLMMNoFile);
            Faults.Instance.ClearFault(FaultCodes.GLMMReportFailed);
            if (!report.Error)
            {
                // If we don't have a server, then don't try to send GL data
                if (!string.IsNullOrEmpty(uri))
                {
                    string file = report.ReportFilename;

                    if (file != string.Empty)
                    {
                        if (File.Exists(file))
                        {
                            try
                            {
                                using (GLMMClient client = new GLMMClient(username, password, uri))
                                {
                                    client.Login();
                                    client.SendMeasurement(file);
                                    logger.InfoFormat("Uploaded GL report to: {0}", uri);
                                }
                            }
                            catch (Exception e)
                            {
                                FaultCodes fault;

                                if (e is InvalidOperationException)
                                {
                                    fault = FaultCodes.GLMMInvalidUsername;
                                }
                                else if (e is UnauthorizedAccessException)
                                {
                                    fault = FaultCodes.GLMMNotAuthorized;
                                }
                                else if (e is IOException)
                                {
                                    fault = FaultCodes.GLMMServerNotAvaliable;
                                }
                                else
                                {
                                    fault = FaultCodes.GLMMUnknown;
                                }

                                logger.FatalFormat(e.ToString());
                                FaultErrorIndicators.Faults.Instance.SignalFault(fault);
                            }
                            File.Delete(file);
                        }
                        else
                        {
                            logger.FatalFormat("File {0} does not exist", file);
                            FaultErrorIndicators.Faults.Instance.SignalFault(FaultCodes.GLMMNoFile);
                        }
                    }
                }
            }
            else
            {
                FaultErrorIndicators.Faults.Instance.SignalFault(FaultCodes.GLMMReportFailed);
            }

            lastRunDate = startDate;            
        }

        /// <summary>
        /// Called when the LogSchedule milliseconds have elapsed.
        /// The method that implements this interface should perform
        /// all the data logging work.
        /// </summary>
        /// <param name="logTime">The time to stamp this log entry with.</param>
        public void Log(DateTime logTime)
        {
        }

        /// <summary>
        /// Reads the web service configuration from the
        /// database
        /// </summary>
        private void GetWebServiceDetails()
        {

            ShipInfo info = ReportShared.GetShipInfo(configurationDatabase);

            if (info.ClassificationSociety == "GL")
            {
                this.runGLReport = true;
            }
            else
            {
                this.runGLReport = false;
            }


            try
            {
                using (DataTable data = configurationDatabase.SelectIntoDataTable("gl_ipAddress, gl_loginName, gl_password FROM GlMachineSettings"))
                {
                    if (data.Rows.Count > 0)
                    {
                        DataRow row = data.Rows[0];

                        if (row[0] != DBNull.Value)
                        {
                            this.uri = row[0].ToString();
                        }

                        if (row[1] != DBNull.Value)
                        {
                            this.username = row[1].ToString();
                        }

                        if (row[2] != DBNull.Value)
                        {
                            this.password = row[2].ToString();
                        }
                    }
                    else
                    {
                        this.uri = string.Empty;
                        this.username = string.Empty;
                        this.password = string.Empty;
                    }
                }
            }
            catch (Exception e)
            {
                this.uri = string.Empty;
                this.username = string.Empty;
                this.password = string.Empty;
                logger.FatalFormat("Exception {0} trying to read Web service configuration",e.ToString());
            }
        }

        /// <summary>
        /// Gets the configuration data from the SPU
        /// </summary>
        private void GetSPUInformation()
        {
            numberOfChannels = 28;
            wioEnabled = false;
            slemEnabled = false;

            try
            {
                using (ModbusSDK modbusServer = new ModbusSDK(ModbusSDK.ModbusPort.Internal))
                {
                    string spuTwo;
                    SPUSDK.GetSPUFirmwareVersions(modbusServer, out spuFirmwareVersion, out spuTwo);
                    numberOfChannels = SPUSDK.GetNumberOfSensors(modbusServer);
                    wioEnabled = SPUSDK.IsWIOEnabled(modbusServer);
                    slemEnabled = SPUSDK.IsSLEMEnabled(modbusServer);
                }
            }
            catch (Exception)
            {
                logger.Fatal("Failed to get SPU configuration. Using defaults.");
            }
        }
    }
}
