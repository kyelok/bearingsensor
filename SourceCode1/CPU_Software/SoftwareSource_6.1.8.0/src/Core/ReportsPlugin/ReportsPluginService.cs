using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Globalization;
/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System.IO;
using System.Linq;
using System.Reflection;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Threading.Tasks;
using DataCollectionSDK;
using HelperClasses;
using Reports;
using WebServiceObjects;
using log4net;
using Ionic.Zip;

namespace ReportsPlugin
{
    [ServiceContract, ServiceBehavior(InstanceContextMode = InstanceContextMode.Single)]
    public class ReportsPluginService
    {

        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        
        /// <summary>
        /// Reference to the currently running report (if any)
        /// </summary>
        IReportRunner currentReport = null;

        /// <summary>
        /// Reference to the configuration database
        /// that stores configuration data required by the report.
        /// </summary>
        DatabaseSDK configurationDatabase = null;

        /// <summary>
        /// The societies that this report geneator supports 
        /// </summary>
        string[] ValidSocieties = new string[] { "AMOT", "GL" };

        /// <summary>
        /// Method starts a report being gernerated.
        /// If there is already being a report being generated then the
        /// report is not started.
        /// </summary>
        /// <param name="startDate">The earlist date of records to include in the report</param>
        /// <param name="endDate">The latest date of records to include in the report</param>
        /// <param name="allEvents">Should all events be included in the report</param>
        /// <param name="sensorAbsolute">Should sensor absolute be included in the report</param>
        /// <param name="sensorDeviation">Should sensor deviation be included in the report</param>
        /// <param name="cylinderAbsolute">Should cylinder absolute be included in the report</param>
        /// <param name="cylinderDeviation">Should cylinder deviation be included in the report</param>
        /// <param name="singleSensor">Should single sensor being included in the report</param>
        /// <param name="cylinderSum">Should cylinder sum be included in the report</param>
        /// <param name="mBNSum">Should MBN sum be included in the report</param>
        /// <param name="channels">The channels that should be included in the report</param>
        /// <param name="reportType">The type fo report to generate</param>
        /// <param name="numActiveChannels">The number of channels that are active on the system</param>
        /// <param name="numTempChannels">The number of temperature channels on the system</param>
        /// <param name="enableData">Should the data also be output in the report</param>
        /// <returns>True if the report is started, otherwise false.</returns>
        [OperationContract]
        [WebGet(UriTemplate = "start?" +
            "StartDate={startDate}&" +
            "EndDate={endDate}&" +
            "AllEvents={allEvents}&" +
            "SensorAbsolute={sensorAbsolute}&" +
            "SensorDeviation={sensorDeviation}&" +
            "CylinderAbsolute={cylinderAbsolute}&" +
            "CylinderDeviation={cylinderDeviation}&" +
            "SingleSensor={singleSensor}&" +
            "CylinderSum={cylinderSum}&" +
            "MBNSum={mBNSum}&" +
            "Channels={channels}&" +
            "Type={reportType}&" +
            "NumberOfActiveChannels={numActiveChannels}&" +
            //"NumberOfTempChannels={numTempChannels}&" +
            "EnableData={enableData}"
            ,ResponseFormat = WebMessageFormat.Json)]
        public ReportProgress StartAMOTReport(string startDate, string endDate, bool allEvents, bool sensorAbsolute, bool sensorDeviation, bool cylinderAbsolute, bool cylinderDeviation, bool singleSensor, bool cylinderSum, bool mBNSum, string channels, string reportType, int numActiveChannels, bool enableData)
        {
            int wearsensors = (numActiveChannels >> 8) & 0xFF;
            int temperaturesensors = numActiveChannels & 0xFF;

            string[] selectedChannelNumbers = (channels == null ? null : channels.Split(','));
            bool[] selectedChannels = new bool[94]; //28(wear sensors) + 1 (WIO) + 1 (SEDM) + 64 (TEMP)
            bool[] activeChannels = new bool[28];
            CultureInfo dateParseCulture = new CultureInfo("en-GB");

            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;

            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            try
            {

                //The following setting up of
                //arrays is a little nasty but this is how the
                //report generator ported from the oroginal code
                //determines which channels should be included in the report

                if (currentReport == null || currentReport.Complete)
                {
                    currentReport = null;

                    if (selectedChannelNumbers != null)
                    {
                        for(int i = 0; i < selectedChannelNumbers.Length; i++)
                        {
                            //For wear/WIO/SEDM
                            if (i < (selectedChannelNumbers.Length - 1))
                            {
                                if (selectedChannelNumbers[i] == "1")
                                {
                                    selectedChannels[i] = true;
                                }
                                else
                                {
                                    selectedChannels[i] = false;
                                }
                            }
                                //For temperature
                            else
                            {
                                if (selectedChannelNumbers[i] == "1")
                                {
                                    //Only the installed sensors
                                    for (int j = i; j < (temperaturesensors + i); j++)
                                    {
                                        selectedChannels[j] = true;
                                    }
                                    for (int j = (temperaturesensors + i); j < selectedChannels.Length; j++)
                                    {
                                        selectedChannels[j] = false;
                                    }
                                }
                                else
                                {
                                    for (int j = i; j < selectedChannels.Length; j++)
                                    {
                                        selectedChannels[j] = false;
                                    }
                                }
                            }
                        }

                        //Set the active channels
                        for (int i = 0; i < activeChannels.Length; i++)
                        {
                            if (i < wearsensors)
                            {
                                activeChannels[i] = true;
                            }
                            else
                            {
                                activeChannels[i] = false;
                            }
                        }
                    }

                    string spuVersionNumber = string.Empty;

                    try
                    {
                        using (ModbusSDK modbusServer = new ModbusSDK(ModbusSDK.ModbusPort.Internal))
                        {
                            string spuTwo;
                            SPUSDK.GetSPUFirmwareVersions(modbusServer, out spuVersionNumber, out spuTwo);
                        }
                    }
                    catch (Exception)
                    {
                        spuVersionNumber = "Unknown";
                    }

                    //Get the version number of this module
                    Version reportVersion = Assembly.GetExecutingAssembly().GetName().Version;

                    if (reportType == "AMOT")
                    {
                        //Calcuate the start and end date/time
                        DateTime startOfDayDate = DateTime.Parse(startDate + " 00:00:00", dateParseCulture);
                        DateTime endOfDayDate = DateTime.Parse(endDate + " 23:59:59", dateParseCulture);

                        string reportFolder = @"d:\reports\\";
                        if (ConfigurationManager.AppSettings["reports"] != null)
                        {
                            reportFolder = ConfigurationManager.AppSettings["reports"];
                            if (!reportFolder.EndsWith("\\"))
                            {
                                reportFolder = reportFolder + "\\";
                            }
                        }

                        currentReport = new AMOTReport(reportFolder, startOfDayDate, endOfDayDate, selectedChannels, activeChannels, allEvents, sensorAbsolute, sensorDeviation, cylinderAbsolute, cylinderDeviation, singleSensor, cylinderSum, mBNSum, reportVersion.ToString(), spuVersionNumber, enableData);

                        Task.Factory.StartNew(() =>
                        {
                            currentReport.Start();
                        });

                    }
                    else if (reportType == "GL")
                    {
                        //Calcuate the start and end date/time
                        DateTime startOfDayDate = DateTime.Parse(startDate + " 00:00:00", dateParseCulture);
                        DateTime endOfDayDate = DateTime.Parse(endDate + " 23:59:59", dateParseCulture);

                        string reportFolder = @"d:\reports\\";
                        if (ConfigurationManager.AppSettings["reports"] != null)
                        {
                            reportFolder = ConfigurationManager.AppSettings["reports"];
                            if (!reportFolder.EndsWith("\\"))
                            {
                                reportFolder = reportFolder + "\\";
                            }
                        }

                        currentReport = new GLReport(reportFolder, startOfDayDate, endOfDayDate, selectedChannels, activeChannels, allEvents, reportVersion.ToString(), spuVersionNumber);

                        Task.Factory.StartNew(() =>
                        {
                            currentReport.Start();
                        });
                    }
                }
            }
            catch (Exception e)
            {
                logger.ErrorFormat("Caught Exception {0}", e);
            }

            return GetReportProgress();
        }

        /// <summary>
        /// Returns the current progress of any running reports and other report information.
        /// </summary>
        /// <returns>A ReportProgress object that describes the state of the report generator
        /// and the progress of any running reports.</returns>
        [OperationContract]
        [WebGet(UriTemplate = "progress", ResponseFormat = WebMessageFormat.Json)]
        public ReportProgress ReportProgressInformation()
        {
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            return GetReportProgress();
        }

        /// <summary>
        /// Zips up a report and returns it as a zip file
        /// </summary>
        /// <param name="reportName">The name of the report to download</param>
        /// <returns>A stream to the zip file or null</returns>
        [OperationContract]
        [WebGet(UriTemplate = "download/{reportName}")]
        public Stream Download(string reportName)
        {            
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.ContentType = "application/zip";
            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            try
            {
                string reportFolder = @"d:\reports\\";
                if (ConfigurationManager.AppSettings["reports"] != null)
                {
                    reportFolder = ConfigurationManager.AppSettings["reports"];
                    if (!reportFolder.EndsWith("\\"))
                    {
                        reportFolder = reportFolder + "\\";
                    }
                }

                string zipPath = null;
                //Zip the report in reportName and return to client
                if (reportName.EndsWith(".xml"))
                {
                    if (File.Exists(reportFolder + reportName))
                    {
                        using (var zip = new ZipFile())
                        {
                            zipPath = reportFolder + reportName + ".zip";
                            zip.AddFile(reportFolder + reportName, "");
                            zip.Save(zipPath);
                        }
                    }
                }
                else if (Directory.Exists(reportFolder + reportName))
                {
                    using (var zip = new ZipFile())
                    {
                        zipPath = reportFolder + reportName + ".zip";
                        zip.AddDirectory(reportFolder + reportName);
                        zip.Save(zipPath);
                    }
                }
                if (zipPath != null)
                {
                    outResponse.Headers.Add("Content-disposition", "inline; filename=" + zipPath);
                    return new AutoFileDeleteStream(zipPath, FileMode.Open);
                }
            }
            catch (Exception e)
            {
                logger.ErrorFormat("Caught exception {0} trying to download report {1}", e.Message, reportName);
            }

            return null;
        }

        /// <summary>
        /// Queries the progress of any currently running reports.
        /// </summary>
        /// <returns>The progress of any currently running report.</returns>
        private ReportProgress GetReportProgress()
        {
            ReportProgress progress = new ReportProgress();

            if (currentReport != null)
            {
                progress.InProgress = currentReport.IsRunning;
                progress.Progress = currentReport.Progress();
                progress.Completed = currentReport.Complete;
            }

            progress.CompletedReports = Completed();
            progress.AvailableReports = Available();
            progress.GLReportDate = GLReportDate();

            return progress;
        }

        /// <summary>
        /// Returns an array of the reports that can be downloaded
        /// </summary>
        /// <returns></returns>
        private string[] Completed()
        {
            //Get a list of the files in the report directory
            string reportFolder = @"d:\reports\\";
            if (ConfigurationManager.AppSettings["reports"] != null)
            {
                reportFolder = ConfigurationManager.AppSettings["reports"];

                if (!reportFolder.EndsWith("\\"))
                {
                    reportFolder = reportFolder + "\\";
                }
            }

            IEnumerable<string> folders = Directory.EnumerateDirectories(reportFolder);
            string [] amotReportDirs = folders.Select(x => x.Replace(reportFolder,"")).ToArray();

            DirectoryInfo dir = new DirectoryInfo(reportFolder);
            FileInfo[] xmlReports = dir.GetFiles("*.xml", SearchOption.TopDirectoryOnly);

            string[] result = new string[amotReportDirs.Length + xmlReports.Length];
            Array.Copy(amotReportDirs, result, amotReportDirs.Length);
            int i = amotReportDirs.Length;
            foreach (FileInfo report in xmlReports)
            {
                int extensionIndex = report.Name.LastIndexOf(report.Extension);
                result[i++] = "XML: " + report.Name.Remove(extensionIndex);
            }
            return result;
        }

        /// <summary>
        /// Returns a list of the reports available to be run.
        /// </summary>
        /// <returns></returns>
        private string[] Available()
        {
            List<string> societies = new List<string>();
            societies.Add("AMOT");

            ModuleConfiguration configuration = ModuleConfiguration.GetApplicationConfiguration();
            DataCollectionConfigurationSection dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;

            if (dataCollectionConfig == null)
                dataCollectionConfig = new DataCollectionConfigurationSection();

            if (configurationDatabase == null)
            {
                configurationDatabase = new DatabaseSDK(dataCollectionConfig.Database.ConfigurationDb, dataCollectionConfig.Database.DbRetryCount, dataCollectionConfig.Database.DbRetryDuration, 0);
            }

            //Ignore exceptions
            try
            {
                ShipInfo info = ReportShared.GetShipInfo(configurationDatabase);
                
                if (ValidSocieties.Contains(info.ClassificationSociety))
                {
                    societies.Add(info.ClassificationSociety);
                }
            }
            catch (Exception)
            { }

            return societies.ToArray();
        }

        /// <summary>
        /// Returns the Last Date and Time the last GL report was run.
        /// </summary>
        /// <returns></returns>
        private Int64 GLReportDate()
        {
            Int64 time = DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks);

            ModuleConfiguration configuration = ModuleConfiguration.GetApplicationConfiguration();
            DataCollectionConfigurationSection dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;

            if (dataCollectionConfig == null)
                dataCollectionConfig = new DataCollectionConfigurationSection();

            if (configurationDatabase == null)
            {
                configurationDatabase = new DatabaseSDK(dataCollectionConfig.Database.ConfigurationDb, dataCollectionConfig.Database.DbRetryCount, dataCollectionConfig.Database.DbRetryDuration, 0);
            }

            //Ignore exceptions
            try
            {
                using (DataTable data = configurationDatabase.SelectIntoDataTable("time_stamp from reportdetails;"))
                {
                    if (data.Rows.Count > 0)
                    {
                        DataRow row = data.Rows[0];
                        if (row[0] != DBNull.Value)
                        {
                            time = (Int64)row[0];
                        }
                    }
                }
            }
            catch (Exception)
            { }
            
            return time;
        }
    }
}
