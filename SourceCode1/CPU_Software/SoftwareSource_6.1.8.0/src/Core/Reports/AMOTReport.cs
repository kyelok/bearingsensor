using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Data;
using System.Data.Common;
using dotnetCHARTING.WinForms;
using System.Drawing;
using DataCollectionSDK;
using System.Threading;
using System.Configuration;
using Configuration;
using HelperClasses;
using System.Reflection;
using log4net;
using FaultErrorIndicators;
using System.Globalization;

namespace Reports
{
    public class AMOTReport : IReportRunner
    {

        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        int numOfGraphs = 0;

        //The culture to use for parsing dates
        CultureInfo dateParseCulture = new CultureInfo("en-GB");

        DateTime startDate;
        DateTime endDate;
        string reportPath;
        string systemVersionNumber;
        string spuFirmwareVersion;
        string plcFirmwareVersion;

        bool includeSingleSensorInReport;
        bool includeCylinderSumInReport;
        bool includeMBNInReport;
        bool dataEnabled;

        bool includeSensorAbsoluteReport;
        bool includeSensorDeviationReport;
        bool includeCylinderAbsoluteReport;
        bool includeCylinderDeviationReport;

        string reportTitle;

        Int64[] hoursRun;

        bool[] selectedChannels;
        bool[] activeChannels;

        int hourInterval = 0;

        string reportDirectory;

        bool selectAllEvents = false;

        DatabaseSDK eventLogDatabase;
        DatabaseSDK loggingDatabase;
        DatabaseSDK configurationDatabase;
        DatabaseSDK dataAvreageDatabase;
        ShipInfo shipInfo;

        Int64 numberOfOperationsToCreateReport;
        Int64 enabledChannelCount = 0;
        Int64 enabledTempChannelCount = 0;
        int progress;
        int countOfItemsProcessed;

        /// <summary>
        /// The module configuration for this object
        /// </summary>
        ModuleConfiguration configuration;

        #region Channel Name Arrays


        string[] SingleSensorChannelNames = {
			"refv1a",
			"refv1b",
			"refv2a",
			"refv2b",
			"refv3a",
			"refv3b",
			"refv4a",
			"refv4b",
			"refv5a",
			"refv5b",
			"refv6a",
			"refv6b",
			"refv7a",
			"refv7b",
			"refv8a",
			"refv8b",
			"refv9a",
			"refv9b",
			"refv10a",
			"refv10b",
			"refv11a",
			"refv11b",
			"refv12a",
			"refv12b",
			"refv13a",
			"refv13b",
			"refv14a",
			"refv14b"
		};
        string[] CylinderSumChannelNames = {
			"cylsum1",
			"cylsum1",
			"cylsum2",
			"cylsum2",
			"cylsum3",
			"cylsum3",
			"cylsum4",
			"cylsum4",
			"cylsum5",
			"cylsum5",
			"cylsum6",
			"cylsum6",
			"cylsum7",
			"cylsum7",
			"cylsum8",
			"cylsum8",
			"cylsum9",
			"cylsum9",
			"cylsum10",
			"cylsum10",
			"cylsum11",
			"cylsum11",
			"cylsum12",
			"cylsum12",
			"cylsum13",
			"cylsum13",
			"cylsum14",
			"cylsum14"
		};
        string[] MBNSumChannelNames = {
			"MBNsum1",
			"MBNsum1",
			"MBNsum2",
			"MBNsum2",
			"MBNsum3",
			"MBNsum3",
			"MBNsum4",
			"MBNsum4",
			"MBNsum5",
			"MBNsum5",
			"MBNsum6",
			"MBNsum6",
			"MBNsum7",
			"MBNsum7",
			"MBNsum8",
			"MBNsum8",
			"MBNsum9",
			"MBNsum9",
			"MBNsum10",
			"MBNsum10",
			"MBNsum11",
			"MBNsum11",
			"MBNsum12",
			"MBNsum12",
			"MBNsum13",
			"MBNsum13",
			"MBNsum14",
			"MBNsum14"
		};
        string[] DynAlarmChannelNames = {
			"single1",
			"single2",
			"cylsum1",
			"cylsum2",
			"mbnsum1",
			"mbnsum2"
		};

        string[] SenValCompChannelNames = {
                                              "comp1a",
		                                   "comp1b",
		"comp2a",
		"comp2b",
		"comp3a",
		"comp3b",
		"comp4a",
		"comp4b",
		"comp5a",
		"comp5b",
		"comp6a",
		"comp6b",
		"comp7a",
		"comp7b",
		"comp8a",
		"comp8b",
		"comp9a",
		"comp9b",
		"comp10a",
		"comp10b",
		"comp11a",
		"comp11b",
		"comp12a",
		"comp12b",
		"comp13a",
		"comp13b",
		"comp14a",
		"comp14b"
	};
        string[] SenDevCompChannelNames = {
		"dev1a",
		"dev1b",
		"dev2a",
		"dev2b",
		"dev3a",
		"dev3b",
		"dev4a",
		"dev4b",
		"dev5a",
		"dev5b",
		"dev6a",
		"dev6b",
		"dev7a",
		"dev7b",
		"dev8a",
		"dev8b",
		"dev9a",
		"dev9b",
		"dev10a",
		"dev10b",
		"dev11a",
		"dev11b",
		"dev12a",
		"dev12b",
		"dev13a",
		"dev13b",
		"dev14a",
		"dev14b"
	};
        string[] CylAveCompChannelNames = {
		"cylav1",
		"",
		"cylav2",
		"",
		"cylav3",
		"",
		"cylav4",
		"",
		"cylav5",
		"",
		"cylav6",
		"",
		"cylav7",
		"",
		"cylav8",
		"",
		"cylav9",
		"",
		"cylav10",
		"",
		"cylav11",
		"",
		"cylav12",
		"",
		"cylav13",
		"",
		"cylav14",
		""
	};
        string[] CylDevCompChannelNames = {
		"cyldev1",
		"",
		"cyldev2",
		"",
		"cyldev3",
		"",
		"cyldev4",
		"",
		"cyldev5",
		"",
		"cyldev6",
		"",
		"cyldev7",
		"",
		"cyldev8",
		"",
		"cyldev9",
		"",
		"cyldev10",
		"",
		"cyldev11",
		"",
		"cyldev12",
		"",
		"cyldev13",
		"",
		"cyldev14",
		""
	};
        string[] TemperatureChannelNames = {
			"temp1",
			"temp2",
			"temp3",
			"temp4",
			"temp5",
			"temp6",
			"temp7",
			"temp8",
			"temp9",
			"temp10",
			"temp11",
			"temp12",
			"temp13",
			"temp14",
			"temp15",
			"temp16",
			"temp17",
			"temp18",
			"temp19",
			"temp20",
			"temp21",
			"temp22",
			"temp23",
			"temp24",
			"temp25",
			"temp26",
			"temp27",
			"temp28",
            "temp29",
			"temp30",
			"temp31",
			"temp32",
			"temp33",
			"temp34",
			"temp35",
			"temp36",
			"temp37",
			"temp38",
			"temp39",
			"temp40",
			"temp41",
			"temp42",
			"temp43",
			"temp44",
			"temp45",
			"temp46",
			"temp47",
			"temp48",
            "temp49",
			"temp50",
			"temp51",
			"temp52",
			"temp53",
			"temp54",
			"temp55",
			"temp56",
			"temp57",
			"temp58",
			"temp59",
			"temp60",
			"temp61",
			"temp62",
			"temp63",
			"temp64"			
		};
        #endregion

        /// <summary>
        /// Creates an AMOT Report object
        /// </summary>
        /// <param name="reportPath"></param>
        /// <param name="startDate"></param>
        /// <param name="endDate"></param>
        /// <param name="selectedChannels"></param>
        /// <param name="activeChannels"></param>
        /// <param name="allEvents"></param>
        /// <param name="sensorAbsolute"></param>
        /// <param name="sensorDeviation"></param>
        /// <param name="cylinderAbsolute"></param>
        /// <param name="cylinderDeviation"></param>
        /// <param name="singleSensor"></param>
        /// <param name="cylinderSum"></param>
        /// <param name="mBNSum"></param>
        /// <param name="systemVersionNumber"></param>
        /// <param name="spuFirmwareVersion"></param>
        /// <param name="enableData"></param>
        public AMOTReport(string reportPath, DateTime startDate, DateTime endDate, bool[] selectedChannels, bool[] activeChannels, bool allEvents, bool sensorAbsolute, bool sensorDeviation, bool cylinderAbsolute, bool cylinderDeviation, bool singleSensor, bool cylinderSum, bool mBNSum, string systemVersionNumber, string spuFirmwareVersion, bool enableData)
        {
            IsRunning = true;
            this.hourInterval = 6;
            this.selectedChannels = selectedChannels;
            this.activeChannels = activeChannels;
            this.selectAllEvents = allEvents;

            this.includeSensorAbsoluteReport = sensorAbsolute;
            this.includeSensorDeviationReport = sensorDeviation;
            this.includeCylinderAbsoluteReport = cylinderAbsolute;
            this.includeCylinderDeviationReport = cylinderDeviation;

            this.includeSingleSensorInReport = singleSensor;
            this.includeCylinderSumInReport = cylinderSum;
            this.includeMBNInReport = mBNSum;
            this.dataEnabled = enableData;
            Error = false;

            configuration = ModuleConfiguration.GetApplicationConfiguration();
            DataCollectionConfigurationSection dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;

            if (dataCollectionConfig == null)
                dataCollectionConfig = new DataCollectionConfigurationSection();

            string dataAverageDb = dataCollectionConfig.Database.DataLogger;
            if (dataAverageDb.Contains("amot_xtsii_data")) dataAverageDb = dataAverageDb.Replace("amot_xtsii_data", "amot_xtsii_dataaverage");

            loggingDatabase = new DatabaseSDK(dataCollectionConfig.Database.DataLogger, dataCollectionConfig.Database.DbRetryCount, dataCollectionConfig.Database.DbRetryDuration, 0);
            eventLogDatabase = new DatabaseSDK(dataCollectionConfig.Database.EventLog, dataCollectionConfig.Database.DbRetryCount, dataCollectionConfig.Database.DbRetryDuration, 0);
            configurationDatabase = new DatabaseSDK(dataCollectionConfig.Database.ConfigurationDb, dataCollectionConfig.Database.DbRetryCount, dataCollectionConfig.Database.DbRetryDuration, 0);
            dataAvreageDatabase = new DatabaseSDK(dataAverageDb, dataCollectionConfig.Database.DbRetryCount, dataCollectionConfig.Database.DbRetryDuration, 0);

            this.shipInfo = ReportShared.GetShipInfo(configurationDatabase);

            this.startDate = startDate;
            this.endDate = endDate;

            if (!reportPath.EndsWith("\\"))
            {
                this.reportPath = reportPath + "\\";
            }
            else
            {
                this.reportPath = reportPath;
            }

            this.systemVersionNumber = systemVersionNumber;
            this.spuFirmwareVersion = spuFirmwareVersion;
            this.numberOfOperationsToCreateReport = 0;
            this.plcFirmwareVersion = TemperatureGloabal.PlcVersionNumber.ToString() + ".0.0";

            int iChannel = 0;
            foreach (bool channel in this.selectedChannels)
            {
                //Wear
                if (iChannel < 28)
                {
                    if (channel)
                    {
                        enabledChannelCount++;
                    }
                }
                //Temp
                else if (iChannel >= 30)
                {
                    if (channel)
                    {
                        enabledTempChannelCount++;
                    }
                }

                iChannel++;
            }

            progress = 0;
            Complete = false;

        }

        /// <summary>
        /// Starts the report running
        /// </summary>
        public void Start()
        {
            string reportFile = string.Empty;
            try
            {
                if (DamageMonitoringRequired())
                {
                    //PF 15-Nov-10 If damagemonitoring is required than add the potential 1 hour to the end date
                    endDate = endDate.AddHours(1);
                }

                // Hours run for entire period
                this.hoursRun = ReportShared.GetHoursRunForRange(this.loggingDatabase, startDate, endDate);

                //Calculate the number of operations required to run the report
                numberOfOperationsToCreateReport += CalculateNumberOfSingleOperations();
                numberOfOperationsToCreateReport += CountDamageMonitoringEvents();
                this.countOfItemsProcessed = 0;

                try
                {

                    if (!Directory.Exists(reportPath))
                    {
                        Directory.CreateDirectory(reportPath);
                    }

                    // Create the required directory stucture for the report
                    this.reportDirectory = reportPath + "Report " + startDate.ToString("yyyy-MM-dd") + " to " + endDate.ToString("yyyy-MM-dd") + " " + shipInfo.VesselName;

                    CreateReportDirectory(reportDirectory);

                    string reportFilename = startDate.ToString("yyyy-MM-dd") + " to " + endDate.ToString("yyyy-MM-dd") + " " + shipInfo.VesselName + ".htm";
                    reportFile = reportDirectory + "\\" + reportFilename;

                    CreateReportImages(reportDirectory);

                    reportTitle = startDate.ToString("dddd, MMM d yyyy") + " to " + endDate.ToString("dddd, MMM d yyyy") + " " + shipInfo.VesselName;
                }
                catch (Exception)
                {
                    Faults.Instance.SignalFault(FaultCodes.AMOTReportCreateDirectory);
                    throw;
                }

                using (StreamWriter file = new StreamWriter(reportFile))
                {
                    try
                    {
                        // ********************* report header ******************
                        logger.InfoFormat("Creating File Header");
                        GenerateFileHeader(file);
                    }
                    catch (Exception)
                    {
                        Faults.Instance.SignalFault(FaultCodes.AMOTReportFileHeader);
                        throw;
                    }

                    try
                    {
                        logger.InfoFormat("Creating Report Front Page");
                        GenerateFrontPage(file, startDate, endDate);
                    }
                    catch (Exception)
                    {
                        Faults.Instance.SignalFault(FaultCodes.AMOTReportFrontPage);
                        throw;
                    }

                    try
                    {
                        // ********************* report header ******************
                        logger.InfoFormat("Creating Report Header");
                        GenerateReportHeader(file, startDate, endDate, systemVersionNumber, spuFirmwareVersion, plcFirmwareVersion);
                    }
                    catch (Exception)
                    {
                        Faults.Instance.SignalFault(FaultCodes.AMOTReportReportHeader);
                        throw;
                    }

                    try
                    {
                        //**************** Status list ******************
                        logger.InfoFormat("Creating Status List");
                        GenerateChannelStatus(file, startDate, endDate);
                    }
                    catch (Exception)
                    {
                        Faults.Instance.SignalFault(FaultCodes.AMOTReportStatus);
                        throw;
                    }

                    try
                    {
                        //********************* trend data ****************
                        logger.InfoFormat("Creating Trend Data");
                        GenerateTrendData(file, startDate, endDate);
                    }
                    catch (Exception)
                    {
                        Faults.Instance.SignalFault(FaultCodes.AMOTReportTrendData);
                        throw;
                    }

                    try
                    {
                        //********************* damage monitoring ****************
                        logger.InfoFormat("Creating Damage Monitoring");

                        GenerateDamageMonitoring(file, startDate, endDate);
                    }
                    catch (Exception)
                    {
                        Faults.Instance.SignalFault(FaultCodes.AMOTReportDamageMonitoring);
                        throw;
                    }

                    try
                    {
                        //**************** Logging ******************

                        logger.InfoFormat("Creating Log entries");
                        GenerateLogging(file, startDate, endDate);
                    }
                    catch (Exception)
                    {
                        Faults.Instance.SignalFault(FaultCodes.AMOTReportLogging);
                        throw;
                    }

                    file.WriteLine("</body></html>");
                }
            }
            catch (Exception e)
            {
                //If the debugger is attached generate a break
                if (System.Diagnostics.Debugger.IsAttached)
                {
                    System.Diagnostics.Debugger.Break();
                }

                Error = true;
                logger.FatalFormat("Aborted AMOT report caught Exception {0}.", e.ToString());
            }

            if (!Error)
            {
                //Clear any faults
                Faults.Instance.ClearFault(FaultCodes.AMOTReportCreateDirectory);
                Faults.Instance.ClearFault(FaultCodes.AMOTReportFileHeader);
                Faults.Instance.ClearFault(FaultCodes.AMOTReportFrontPage);
                Faults.Instance.ClearFault(FaultCodes.AMOTReportReportHeader);
                Faults.Instance.ClearFault(FaultCodes.AMOTReportStatus);
                Faults.Instance.ClearFault(FaultCodes.AMOTReportTrendData);
                Faults.Instance.ClearFault(FaultCodes.AMOTReportDamageMonitoring);
                Faults.Instance.ClearFault(FaultCodes.AMOTReportLogging);
            }

            IsRunning = false;
            Complete = true;
            this.progress = 100;
        }

        /// <summary>
        /// Calculates the number of database operations required to run this report
        /// </summary>
        /// <returns></returns>
        private Int64 CalculateNumberOfSingleOperations()
        {
            Int64 numberOfOperations = 1;
            Int64 singleOperations = ((long)(endDate - startDate).TotalHours / this.hourInterval);

            if (this.includeSensorAbsoluteReport)
            {
                numberOfOperations += singleOperations * (enabledChannelCount * 1);
            }
            else
            {
                numberOfOperations += singleOperations * (enabledChannelCount);
            }

            if (this.includeSensorDeviationReport)
            {
                numberOfOperations += singleOperations * (enabledChannelCount * 1);
            }
            else
            {
                numberOfOperations += singleOperations * (enabledChannelCount);
            }

            if (this.includeCylinderAbsoluteReport)
            {
                numberOfOperations += singleOperations * ((enabledChannelCount / 2) * 1);
            }
            else
            {
                numberOfOperations += singleOperations * (enabledChannelCount / 2);
            }

            if (this.includeCylinderDeviationReport)
            {
                numberOfOperations += singleOperations * ((enabledChannelCount / 2) * 1);
            }
            else
            {
                numberOfOperations += singleOperations * (enabledChannelCount / 2);
            }

            if (this.selectedChannels[28])
            {
                numberOfOperations += singleOperations;
            }

            //Temperature
            if (this.selectedChannels[29])
            {
                numberOfOperations += singleOperations;
            }

            for (int i = 0; i < this.enabledTempChannelCount; i++)
            {
                numberOfOperations += singleOperations;
            }

            return numberOfOperations;
        }

        /// <summary>
        /// Returns the current progress of the report
        /// </summary>
        public int Progress()
        {
            return this.progress;
        }

        /// <summary>
        /// Flag indicating if the report is running or not
        /// </summary>
        public bool IsRunning { get; set; }

        /// <summary>
        /// Flag indicating if the report is complete
        /// </summary>
        public bool Complete { get; set; }

        /// <summary>
        /// Flag indicating that a error occured runnign the report
        /// </summary>
        public bool Error { get; set; }

        /// <summary>
        /// Creates the images needed for a report in the
        /// reports directory
        /// </summary>
        /// <param name="reportDirectory">Teh directory that the report is being created in.</param>
        private void CreateReportImages(string reportDirectory)
        {
            ExtractImage("Reports.Resources.blue.gif", "blue.gif", reportDirectory);
            ExtractImage("Reports.Resources.green.gif", "green.gif", reportDirectory);
            ExtractImage("Reports.Resources.red.gif", "red.gif", reportDirectory);
            ExtractImage("Reports.Resources.yellow.gif", "yellow.gif", reportDirectory);
        }

        /// <summary>
        /// Extracts a image that has been embedded in the assembly
        /// </summary>
        /// <param name="imageName">The name of the image to extract</param>
        private void ExtractImage(string imageName, string destName, string dest)
        {
            Image tempImage = Image.FromStream(Assembly.GetExecutingAssembly().GetManifestResourceStream(imageName));
            tempImage.Save(dest + "\\images\\" + destName);
        }

        /// <summary>
        /// Dertermine is Damage Monitoring should be included in the report
        /// </summary>
        /// <returns></returns>
        private bool DamageMonitoringRequired()
        {
            bool result = false;
            if ((this.includeSingleSensorInReport || this.includeCylinderSumInReport || this.includeMBNInReport))
            {
                result = true;
            }

            return result;
        }

        /// <summary>
        /// Creates the directory that the report will be stored in.
        /// </summary>
        /// <param name="reportDirectory">The directory to store the report in.</param>
        private static void CreateReportDirectory(string reportDirectory)
        {
            // Check if the directory exists, if it does delete it (if the user wants to overwrite)
            if ((Directory.Exists(reportDirectory)))
            {
                Directory.Delete(reportDirectory, true);
            }

            //Now create the report directory
            Directory.CreateDirectory(reportDirectory + "\\images");
        }

        private void GenerateFrontPage(StreamWriter file, DateTime startDate, DateTime endDate)
        {
            // ********************* report front page *******************
            file.WriteLine("<!-- Front page -->");
            file.WriteLine("<table>");

            file.WriteLine("<tr><td>XTS-W2 Report for</td><td>" + shipInfo.VesselName + "</td></tr>");
            file.WriteLine("<tr><td>From</td><td>" + startDate.ToString("dddd, MMM d yyyy") + "</td></tr>");
            file.WriteLine("<tr><td>To</td><td>" + endDate.ToString("dddd, MMM d yyyy") + "</td></tr>");
            file.WriteLine("</tr></table>");

            file.WriteLine("<h1>" + reportTitle + "</h1>");
            file.WriteLine("<p>This report contains the following information<p>");

            // list channels in report
            for (int testChannel = 0; testChannel <= 27; testChannel++)
            {
                if (selectedChannels[testChannel] == true)
                {
                    file.WriteLine("Sensor {0}<br>\r\n", ReportShared.ChannelNamesXML[testChannel]);
                }
            }

            // PF 05-Oct-10 Added in the WIO and SLEM check
            // Check WIO is selected
            if (selectedChannels[28])
            {
                file.WriteLine("WIO<br>");
            }
            // Check SLEM is selected
            if (selectedChannels[29])
            {
                file.WriteLine("SLEM<br>");
            }
            // Check Temperature is selected
            if (selectedChannels[30])
            {
                file.WriteLine("Temperature<br>");
            }

            // show which graphs are on
            file.WriteLine("<p>Graphs included<p>");

            file.WriteLine(" - RPM Graph");
            numOfGraphs = numOfGraphs + 1;

            if (includeSensorAbsoluteReport)
            {
                file.WriteLine(" - Sensor Absolute Graph");
                numOfGraphs = numOfGraphs + 1;
            }

            if (includeSensorDeviationReport)
            {
                file.WriteLine(" - Sensor Deviation Graph");
                numOfGraphs = numOfGraphs + 1;
            }

            if (includeCylinderAbsoluteReport)
            {
                file.WriteLine(" - Cylinder Absolute Graph");
                numOfGraphs = numOfGraphs + 1;
            }

            if (includeCylinderDeviationReport)
            {
                file.WriteLine(" - Cylinder Deviation Graph");
                numOfGraphs = numOfGraphs + 1;
            }

            // PF 15-Nov-10 Added in damage monitoring graphs
            if (DamageMonitoringRequired())
            {
                file.WriteLine(" - Damage Monitoring Graphs");
            }
            // EOM

            // PF 05-Oct-10 Added in the WIO and SLEM check
            // Check WIO is selected
            if (selectedChannels[28])
            {
                file.WriteLine(" - WIO Graph");
                numOfGraphs = numOfGraphs + 1;
            }
            // Check SLEM is selected
            if (selectedChannels[29])
            {
                file.WriteLine(" - SLEM Graph");
                numOfGraphs = numOfGraphs + 1;
            }

            // Check Temperature is selected
            if (selectedChannels[30])
            {
                file.WriteLine(" - Temperature Graph");
                numOfGraphs = numOfGraphs + 1;
            }

            if (numOfGraphs == 0 & !(DamageMonitoringRequired()))
            {
                file.WriteLine(" - No graphs included");
            }
        }

        private void GenerateReportHeader(StreamWriter file, DateTime startDate, DateTime endDate, string systemVersionNumber, string spuFirmwareVersion, string plcFirmwareVersion)
        {
            file.WriteLine("<!-- File info -->");
            file.WriteLine("<h1>Engine Information</h1>");
            file.WriteLine("<table>");

            file.WriteLine("<tr><td>Report creation date</td><td>" + DateTime.UtcNow.ToString("yyyy-MM-dd HH:mm:ss") + "</td></tr>");
            file.WriteLine("<tr><td>Name of Vessel</td><td>" + shipInfo.VesselName + "</td></tr>");
            file.WriteLine("<tr><td>ImoNo</td><td>" + shipInfo.ImoNo + "</td></tr>");
            file.WriteLine("<tr><td>ClassificationSociety</td><td>" + shipInfo.ClassificationSociety + "</td></tr>");
            file.WriteLine("<tr><td>ClassRegisterNo</td><td>" + shipInfo.ClassRegisterNo + "</td></tr>");
            file.WriteLine("<tr><td>Component</td><td>" + shipInfo.Component + "</td></tr>");
            file.WriteLine("<tr><td>EngineLicenser</td><td>" + shipInfo.EngineLicenser + "</td></tr>");
            file.WriteLine("<tr><td>EngineMaker</td><td>" + shipInfo.EngineMaker + "</td></tr>");
            file.WriteLine("<tr><td>EngineType</td><td>" + shipInfo.EngineType + "</td></tr>");
            file.WriteLine("<tr><td>EngineSerialNo</td><td>" + shipInfo.EngineSerialNumber + "</td></tr>");
            file.WriteLine("<tr><td>CM System Type</td><td>Bearing Wear Monitoring System</td></tr>");
            file.WriteLine("<tr><td>CM System Maker</td><td>AMOT - Roper Industries Ltd</td></tr>");
            file.WriteLine("<tr><td>CM System Hardware Firmware</td><td>" + spuFirmwareVersion + "</td></tr>");
            if (selectedChannels[30]) { file.WriteLine("<tr><td>PLC Firmware</td><td>" + plcFirmwareVersion + "</td></tr>"); }
            file.WriteLine("<tr><td>CM System Software</td><td>" + systemVersionNumber + "</td></tr>");
            file.WriteLine("<tr><td>Period Of Trend Data From</td><td>" + startDate.ToString("yyyy-MM-dd") + "</td></tr>");
            file.WriteLine("<tr><td>Period Of Trend Data To</td><td>" + endDate.ToString("yyyy-MM-dd") + "</td></tr>");
            file.WriteLine("<tr><td>Engine Operating Hours From</td><td>" + ((hoursRun[0] == -1) ? "" : hoursRun[0].ToString()) + "</td></tr>");
            file.WriteLine("<tr><td>Engine Operating Hours To</td><td>" + ((hoursRun[1] == -1) ? "" : hoursRun[1].ToString()) + "</td></tr>");
            file.WriteLine("</table>");
        }

        private void GenerateFileHeader(StreamWriter file)
        {
            file.WriteLine("<html>");
            file.WriteLine("<head>");
            file.WriteLine("<title>" + reportTitle + "</title>");

            // PF 05-Oct-10 add in script for div hide/show
            if ((dataEnabled))
            {
                file.WriteLine("<script>");
                file.WriteLine("function showhide(id){");
                file.WriteLine("if (document.getElementById){");
                file.WriteLine("obj = document.getElementById(id);");
                file.WriteLine("obj_display = document.getElementById(id + '_display');");
                file.WriteLine("if (obj.style.display == \"none\"){");
                file.WriteLine("obj.style.display = \"\";");
                file.WriteLine("obj_display.innerHTML = \"[hide data]\";");
                file.WriteLine("} else {");
                file.WriteLine("obj.style.display = \"none\";");
                file.WriteLine("obj_display.innerHTML = \"[show data]\";");
                file.WriteLine("}");
                file.WriteLine("}");
                file.WriteLine("}");
                file.WriteLine("</script>");
            }

            // PF 05-Oct-10 EOM
            file.WriteLine("</head>");
            file.WriteLine("<body>");
            file.WriteLine("<style type=\"text/css\">");
            file.WriteLine("h1{");
            file.WriteLine("page-break-before: always;");
            file.WriteLine("font-size: 120%;");
            file.WriteLine("}");
            file.WriteLine("body {");
            file.WriteLine("font-size: 100.00%;");
            file.WriteLine("font-family: Arial, Verdana, Helvetica, sans-serif;");
            file.WriteLine("color: #000;");
            file.WriteLine("background-color: #fff;");
            file.WriteLine("}");

            // PF 05-Oct-10 Added a new style section for the event log
            file.WriteLine("div.eventlog {");
            file.WriteLine("font-size: 75.00%;");
            file.WriteLine("font-family: \"Courier New\", Courier, monospace;");
            file.WriteLine("color: #000;");
            file.WriteLine("background-color: #fff;");
            file.WriteLine("}");
            // EOM PF 05-Oct-10

            file.WriteLine("</style>");
            file.Flush();
        }

        private void GenerateLogging(StreamWriter file, DateTime startDate, DateTime endDate)
        {
            int channelMask;

            file.WriteLine("<!-- Event Log -->");
            file.WriteLine("<h1>Event log for " + reportTitle + "</h1>");
            file.WriteLine("<div class=eventlog><PRE>");

            // Work out the channel mask for the SQL query
            channelMask = 0;
            for (int i = 0; i <= 27; i++)
            {
                if (selectedChannels[i] == true || (selectAllEvents && activeChannels[i] == true))
                {
                    channelMask += (int)Math.Pow(2, i);
                }
            }

            // Add the mask for the WIO if enabled
            // PF 05-Oct-10 changed check for selectedchannels(28) rather than checkbox
            if (selectedChannels[28] == true)
            {
                channelMask += (int)Math.Pow(2, 28);
            }

            // PF 05-Oct-10 Added SLEM
            // Add the mask for the SLEM if enabled
            if (selectedChannels[29] == true)
            {
                channelMask += (int)Math.Pow(2, 29);
            }
            // PF 05-Oct-10 EOM

            string channelCriteria = "AND channel & " + channelMask + " <> 0";

            string strSql = "* FROM EventLog where eventdatetime >= " + DatabaseSDK.ConvertToUnixTimestamp(startDate.Ticks) + " and eventdatetime <= " + DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks) + " " + channelCriteria;
            strSql += " ORDER BY eventdatetime ASC";

            using (DbConnection connection = this.eventLogDatabase.GetDbConnection())
            {
                using (DbDataReader reader = eventLogDatabase.Select(connection, strSql))
                {
                    // PF 05-Oct-10 Padded string to fixed length and removed various <br> and vbCrLf, added header row
                    if (reader.HasRows)
                    {
                        file.WriteLine("Date       Time    Alarm Message" + new string(' ', 69) + "Date       Time     Acknowledged by");
                        while (reader.Read())
                        {
                            string eventMessage = ReplaceAMOTwithXMLNames(reader.GetString(5));
                            if (80 - eventMessage.Length > 0)
                            {
                                eventMessage = eventMessage + new string(' ', 80 - eventMessage.Length);
                            }

                            DateTime dt = DatabaseSDK.ConvertFromUnixTimeStamp(reader.GetInt64(0));
                            file.Write(dt.ToString("yyyy-MM-dd HH:mm:ss"));

                            string ackDT = string.Empty;
                            if (reader.GetInt64(6) != 0)
                            {
                                dt = DatabaseSDK.ConvertFromUnixTimeStamp(reader.GetInt64(6));
                                ackDT = dt.ToString("yyyy-MM-dd HH:mm:ss");
                            }

                            string userName = string.Empty;
                            if (!reader.IsDBNull(7))
                            {
                                userName = reader.GetString(7);
                            }

                            file.WriteLine(", " + eventMessage + " " + ackDT + " " + userName);
                            file.Flush();
                        }
                    }
                    else
                    {
                        file.WriteLine("No events for time span defined<br>");
                    }
                    // Finalise <Logging>
                    file.WriteLine("</PRE></div>");
                    file.Flush();
                }
            }
        }

        private void GenerateDamageMonitoring(StreamWriter file, DateTime startDate, DateTime endDate)
        {
            if (DamageMonitoringRequired())
            {
                // Calculate the number of operations required for SQL
                //int numOfOperations = DamageMonitoringNumOfEvents;

                file.WriteLine("<!-- Damage Monitoring Graphs -->");
                file.WriteLine("<h1>Damage Monitoring Graphs for " + reportTitle + "</h1>");

                // Work out the channel mask for the SQL query
                int channelMask = 0;
                for (int i = 0; i <= 27; i++)
                {
                    if (selectedChannels[i] == true)
                    {
                        channelMask += (int)Math.Pow(2, i);
                    }
                }

                string channelCriteria = "AND channel & " + channelMask + " <> 0 AND datatype = 2 AND " + EventCodeCriteria();

                string DMstrSql = "* from EventLog where eventdatetime >= " + DatabaseSDK.ConvertToUnixTimestamp(startDate.Ticks) + " and eventdatetime <= " + DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks) + " " + channelCriteria + " ORDER BY eventdatetime ASC";

                using (System.Data.DataTable data = this.eventLogDatabase.SelectIntoDataTable(DMstrSql))
                {
                    using (DbDataReader reader = data.CreateDataReader())
                    {
                        if (reader.HasRows)
                        {
                            int DMEventNum = 1;

                            while (reader.Read())
                            {
                                string channelText = null;
                                string alarmText = null;
                                string dataTable = null;

                                DateTime eventDateTime = DatabaseSDK.ConvertFromUnixTimeStamp(reader.GetInt64(0));
                                int channel = (int)reader.GetInt64(1);
                                int dataType = (int)reader.GetInt64(2);
                                int iD = (int)reader.GetInt64(3);
                                int eventCode = (int)reader.GetInt64(4);
                                string description = (string)reader.GetString(5);
                                DateTime ackDateTime = DatabaseSDK.ConvertFromUnixTimeStamp(reader.GetInt64(6));
                                string ackName = (string)reader.GetString(7);

                                DamageMonitorEvent myEvent = new DamageMonitorEvent(eventDateTime, channel, dataType, iD, eventCode, description, ackDateTime, ackName);
                                string eventMessage = ReplaceAMOTwithXMLNames(myEvent.Description);

                                // Determine start and end times for the chart
                                DateTime startTestDate = DateTime.Parse(myEvent.EventDateTime.AddHours(-1).ToString("dd/MM/yyyy 00:00:00"), dateParseCulture);
                                DateTime endTestDate = DateTime.Parse(startTestDate.AddHours(2).ToString("dd/MM/yyyy 23:59:59"), dateParseCulture);

                                string graphTypeText = "";
                                string strSql = "";
                                // Appears the channel is invalid
                                if (ArrayElementFromFirstBit(myEvent.Channel) != -1)
                                {
                                    // Build up SQL based on eventcode type
                                    switch (myEvent.EventCode)
                                    {
                                        case 3:
                                            graphTypeText = "Single Sensor";
                                            dataTable = "refvalues";
                                            alarmText = "DynAlarm.single";
                                            channelText = SingleSensorChannelNames[ArrayElementFromFirstBit(myEvent.Channel)];
                                            break;
                                        case 4:
                                            graphTypeText = "Cylinder Sum";
                                            dataTable = "cylsum";
                                            alarmText = "DynAlarm.cylsum";
                                            channelText = CylinderSumChannelNames[ArrayElementFromFirstBit(myEvent.Channel)];
                                            break;
                                        case 5:
                                            graphTypeText = "Main Bearing Neighbour Sum";
                                            dataTable = "MBNsum";
                                            alarmText = "DynAlarm.mbnsum";
                                            channelText = MBNSumChannelNames[ArrayElementFromFirstBit(myEvent.Channel)];
                                            break;
                                    }

                                    // Create SQL query, automatically unioning if spanning years
                                    strSql += dataTable + ".time_stamp," + dataTable + "." + channelText + ",case when " + alarmText + "1 >= " + alarmText + "2 then " + alarmText + "1 else " + alarmText + "2 end as DynAlarmValue " + "from " + dataTable + " inner join DynAlarm on " + dataTable + ".time_stamp = DynAlarm.time_stamp where " + dataTable + ".time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and " + dataTable + ".time_stamp <= " + DatabaseSDK.ConvertToUnixTimestamp(endTestDate.Ticks) + " ";
                                    strSql += "ORDER BY " + dataTable + ".time_stamp ASC";
                                }

                                // Lets graph the data
                                string dataStorage = "";
                                string chartFileName;

                                using (Chart chart1 = new Chart())
                                {

                                    chart1.Application = "KzUs+VYNShw10i4kCPzKFp1CoN7LbDNcBN9+AR5lvG6JuuFhmw4yKiafA7WxMCROUN1aauLDUed03F0fMoHli3ioCobdzVAFfUw4bfPz4dM=";

                                    chart1.TempDirectory = reportDirectory + "\\images\\";
                                    chart1.Debug = true;
                                    chart1.Palette = new Color[] {
					        Color.FromArgb(0, 255, 0),
					        Color.FromArgb(255, 0, 0),
					        Color.FromArgb(255, 0, 0)
				            };

                                    //chart1.Size = new Size(800, 600);
                                    chart1.Title = eventMessage;
                                    chart1.ImageFormat = dotnetCHARTING.WinForms.ImageFormat.Png;

                                    // turn off markers
                                    chart1.DefaultElement.Marker.Visible = false;
                                    // make the default series a line
                                    chart1.DefaultSeries.Type = SeriesType.Line;

                                    // Set the chart legend to colour box and series name
                                    chart1.LegendBox.Template = "%Icon%Name";

                                    // Set the lower scale to time
                                    chart1.XAxis.Scale = Scale.Time;
                                    chart1.XAxis.TimeScaleLabels.Mode = TimeScaleLabelMode.Smart;
                                    chart1.XAxis.MinorTicksPerInterval = 1;

                                    chart1.XAxis.Label.Text = "Date/Time";
                                    chart1.YAxis.ZeroTick.GridLine.Color = Color.Black;

                                    // Set the start and end date in case data is missing
                                    chart1.XAxis.Minimum = startTestDate;
                                    chart1.XAxis.Maximum = endTestDate;

                                    // Calculate an axis from the x axis and add it with 'weeks' intervals.
                                    //chart1.AxisCollection.Add(chart1.XAxis.Calculate("Days", TimeInterval.Days))

                                    AxisMarker am1 = new AxisMarker("Event", new Line(Color.Orange), myEvent.EventDateTime);
                                    chart1.XAxis.Markers.Add(am1);

                                    Series Series1 = new Series();
                                    Series Series2 = new Series();
                                    Series Series3 = new Series();

                                    Series1.Name = "Channel";
                                    Series2.Name = "Setpoint (+)";
                                    Series3.Name = "Setpoint (-)";

                                    // If we cannot decipher the channels involved then skip the data extraction
                                    if (!string.IsNullOrEmpty(strSql))
                                    {
                                        dataStorage += ExtractDamageMonitorData(strSql, Series1, Series2, Series3);
                                    }

                                    // Add the series to the chart
                                    chart1.SeriesCollection.Add(Series1);
                                    chart1.SeriesCollection.Add(Series2);
                                    chart1.SeriesCollection.Add(Series3);

                                    chartFileName = "Event " + DMEventNum.ToString() + " - " + graphTypeText + " (" + reportTitle + ").png";

                                    // Save the chart
                                    chart1.FileName = chartFileName;
                                    chart1.FileManager.SaveImage();

                                    System.GC.Collect();
                                }

                                eventMessage = eventMessage + new string(' ', 80 - eventMessage.Length);

                                file.WriteLine("<p><DIV style=\"page-break-after:always\">");
                                file.WriteLine("<b>Event:</b> " + myEvent.EventDateTime.ToString("yyyy-MM-dd HH:mm:ss") + " " + eventMessage + "<br>");

                                if (myEvent.AckName != string.Empty)
                                {
                                    file.WriteLine("<b>Acknowledged:</b> " + myEvent.AckDateTime.ToString("yyyy-MM-dd HH:mm:ss") + " by " + myEvent.AckName + "<br>");
                                }
                                else
                                {
                                    file.WriteLine("<b>Acknowledged:</b><br>");
                                }
                                file.WriteLine("<p><img src=\"images/" + chartFileName + "\"></p>");

                                // Added in datastorage
                                if (dataEnabled)
                                {
                                    file.WriteLine("<p><a href=# id=\"" + "Event " + DMEventNum.ToString() + "_display\" onclick=\"showhide('" + "Event " + DMEventNum.ToString() + "'); return(false);\">[show data]</a></p>");
                                    file.WriteLine("<div style=\"display: none;\" id=\"" + "Event " + DMEventNum.ToString() + "\">");
                                    file.WriteLine("<div class=eventlog><PRE>");
                                    file.WriteLine(dataStorage);
                                    file.WriteLine("</PRE></div>");
                                    file.WriteLine("</div>");
                                }

                                file.WriteLine("</DIV>");
                                file.Flush();
                                DMEventNum += 1;

                                Thread.Yield();
                            }
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Creates the event code selection criteria
        /// </summary>
        /// <returns>The selection criteria</returns>
        private string EventCodeCriteria()
        {
            string eventCodeSQLCriteria = "";

            if (DamageMonitoringRequired())
            {
                eventCodeSQLCriteria = "(eventcode = ";

                if (includeSingleSensorInReport)
                {
                    eventCodeSQLCriteria += "3";
                }
                else
                {
                    eventCodeSQLCriteria += "-1";
                }

                eventCodeSQLCriteria += " OR eventcode = ";

                if (includeCylinderSumInReport)
                {
                    eventCodeSQLCriteria += "4";
                }
                else
                {
                    eventCodeSQLCriteria += "-1";
                }

                eventCodeSQLCriteria += " OR eventcode = ";

                if (includeMBNInReport)
                {
                    eventCodeSQLCriteria += "5";
                }
                else
                {
                    eventCodeSQLCriteria += "-1";
                }

                eventCodeSQLCriteria += ")";
            }

            return eventCodeSQLCriteria;
        }

        private string ExtractDamageMonitorData(string strSql, Series Series1, Series Series2, Series Series3)
        {
            Int64 channelValue = 0;
            Int64 DynAlarmValue = 0;
            string dataStorage = string.Empty;

            using (System.Data.DataTable data = this.loggingDatabase.SelectIntoDataTable(strSql))
            {
                using (DbDataReader reader = data.CreateDataReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            channelValue = -32768;
                            DynAlarmValue = -32768;

                            if (!reader.IsDBNull(1))
                            {
                                channelValue = reader.GetInt64(1);
                            }

                            if (!reader.IsDBNull(2))
                            {
                                DynAlarmValue = reader.GetInt64(2);
                            }

                            if (channelValue != -32768)
                            {
                                Series1.Element.YValue = channelValue;
                            }
                            else
                            {
                                Series1.Element.YValue = double.NaN;
                            }

                            if (DynAlarmValue != -32768)
                            {
                                Series2.Element.YValue = DynAlarmValue;
                                Series3.Element.YValue = -DynAlarmValue;
                            }
                            else
                            {
                                Series2.Element.YValue = double.NaN;
                                Series3.Element.YValue = double.NaN;
                            }

                            DateTime dt = DatabaseSDK.ConvertFromUnixTimeStamp(reader.GetInt64(0));

                            Series1.Element.XDateTime = dt;
                            Series2.Element.XDateTime = dt;
                            Series3.Element.XDateTime = dt;

                            Series1.Elements.Add();
                            Series2.Elements.Add();
                            Series3.Elements.Add();

                            // Add in datastorage if required

                            if (dataEnabled)
                            {
                                dataStorage += dt.ToString("dd-MM-yyyy HH:mm:ss") + ", " + channelValue + "," + DynAlarmValue + "<br>";
                            }

                            CalculateProgress();
                        }
                    }
                }
            }

            return dataStorage;

        }

        private void GenerateTrendData(StreamWriter file, DateTime startDate, DateTime endDate)
        {
            string dataStorage;

            file.WriteLine("<!-- Graphs -->");
            file.WriteLine("<h1>Graphs for " + reportTitle + "</h1>");

            if (numOfGraphs == 0)
            {
                file.WriteLine("No graphs selected");
            }

            string graphTypeText = null;
            int channelStep = 0;

            string[] channelDescription = new string[94];
            // PF 05-Oct-10 Changed array from 27 to 29 elements
            // FF 30-Aug-13 Changed array from 29 to 30 elements to include temperature
            int channelFrom = 0;
            int channelTo = 0;
            // PF 05-Oct-10 added new variables

            // PF 05-Oct-10 changed graphType to 0 to 4, added case test 4, change graphTypeText to include - , added channelFrom, channelTo settings

            //read the newest time in averaging database
            Int64 latest6hrtime = 0;
            int roundBy = (10000 * 10000);
            Int64 timeStampStart;
            Int64 timeStampEnd;

            //using (DbConnection connection = loggingDatabase.GetDbConnection())
            {
                for (int graphType = 0; graphType < 7; graphType++)
                {
                    graphTypeText = "";

                    // choose the displayed text for each iteration
                    switch (graphType)
                    {
                        case 0:
                            graphTypeText = "RPM";
                            channelFrom = 0;
                            channelTo = 0;
                            break;

                        case 1:
                            if (includeSensorAbsoluteReport)
                            {
                                graphTypeText = " - Sensor Absolute";
                                channelFrom = 0;
                                channelTo = 27;
                                channelStep = 1;
                                for (int i = 0; i <= 27; i++)
                                {
                                    channelDescription[i] = "Sensor " + ReportShared.ChannelNamesXML[i];
                                }
                            }
                            break;
                        case 2:
                            if (includeSensorDeviationReport)
                            {
                                graphTypeText = " - Sensor Deviation";
                                channelFrom = 0;
                                channelTo = 27;
                                channelStep = 1;
                                for (int i = 0; i <= 27; i++)
                                {
                                    channelDescription[i] = "Sensor " + ReportShared.ChannelNamesXML[i];
                                }
                            }
                            break;
                        case 3:
                            if (includeCylinderAbsoluteReport)
                            {
                                graphTypeText = " - Cylinder Absolute";
                                channelFrom = 0;
                                channelTo = 27;
                                channelStep = 2;
                                for (int i = 0; i <= 13; i++)
                                {
                                    channelDescription[i * 2] = "Cylinder " + ReportShared.CylinderNamesXML[i];
                                }
                            }
                            break;
                        case 4:
                            if (includeCylinderDeviationReport)
                            {
                                graphTypeText = " - Cylinder Deviation";
                                channelFrom = 0;
                                channelTo = 27;
                                channelStep = 2;
                                for (int i = 0; i <= 13; i++)
                                {
                                    channelDescription[i * 2] = "Cylinder " + ReportShared.CylinderNamesXML[i];
                                }
                            }
                            break;
                        case 5:
                            channelDescription[28] = "Water In Oil Monitor";
                            channelDescription[29] = "Shaft Line Earth Monitor";
                            if (selectedChannels[28] == true) graphTypeText = " - Water In Oil";
                            if (selectedChannels[29] == true) graphTypeText = " - Shaft Line Earth";
                            channelFrom = 28;
                            channelTo = 29;
                            channelStep = 1;
                            break;
                        case 6:
                            if (selectedChannels[30] == true)
                            {
                                graphTypeText = " - Temperature";
                                channelFrom = 30;
                                channelTo = 30 + (int)enabledTempChannelCount;
                                channelStep = 1;
                                for (int i = channelFrom; i < channelTo; i++)
                                {
                                    channelDescription[i] = TemperatureGloabal.ChannelName[i - 30];
                                }
                            }
                            break;
                    }
                    // PF 05-Oct-10 EOM

                    if (!string.IsNullOrEmpty(graphTypeText))
                    {
                        if (channelFrom == 0 && channelTo == 0)
                        {
                            //Create the RPM chart
                            dataStorage = "";

                            using (Chart chart1 = new Chart())
                            {
                                Series Series1 = new Series();
                                Series Series2 = new Series();
                                Series Series3 = new Series();

                                Series1.Name = "Max";
                                Series2.Name = "Avg";
                                Series3.Name = "Min";

                                SetupTrendChart(chart1, graphTypeText);

                                // Set the start and end dates to midnight
                                DateTime startTestDate = startDate;
                                DateTime localEndDate = endDate;

                                while ((endDate - startTestDate).Minutes > 0)
                                {
                                    string strSql = "";

                                    strSql = "max(time_stamp) as maxtimestamp6hr FROM Runtime6hr where runtime >= 0";
                                    using (System.Data.DataTable data = dataAvreageDatabase.SelectIntoDataTable(strSql))
                                    {
                                        if (data.Rows.Count == 1)
                                        {
                                            DataRow row = data.Rows[0];
                                            if (!row.IsNull(0))
                                            {
                                                latest6hrtime = Convert.ToInt64(row.ItemArray.GetValue(0));
                                            }
                                        }
                                    }

                                    DateTime endTestDate = startTestDate.AddHours(hourInterval);
                                    timeStampEnd = DatabaseSDK.ConvertToUnixTimestamp(((endTestDate.Ticks + (roundBy / 2)) / roundBy) * roundBy);
                                    timeStampStart = DatabaseSDK.ConvertToUnixTimestamp(((startTestDate.Ticks + (roundBy / 2)) / roundBy) * roundBy);

                                    CalculateProgress();

                                    // *************************** Distance for time range ******************************                                    
                                    if (latest6hrtime >= timeStampEnd)
                                    {
                                        strSql = " rpm1, rpm1min, rpm1max from Rpm6hr where time_stamp == " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and Rpm1 > -32000";
                                        using (DbConnection connectionAverageDb = dataAvreageDatabase.GetDbConnection())
                                        {
                                            using (DbDataReader reader = dataAvreageDatabase.Select(connectionAverageDb, strSql))
                                            {
                                                dataStorage += PlotTrendChart(reader, chart1, Series1, Series2, Series3, startTestDate);
                                            }
                                        }
                                    }
                                    else
                                    {
                                        strSql = "round(avg(Rpm1),0),min(Rpm1),max(Rpm1) from Rpm where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endTestDate.Ticks) + " and Rpm1 > -32000";
                                        using (DbConnection connection = loggingDatabase.GetDbConnection())
                                        {
                                            using (DbDataReader reader = loggingDatabase.Select(connection, strSql))
                                            {
                                                dataStorage += PlotTrendChart(reader, chart1, Series1, Series2, Series3, startTestDate);
                                            }
                                        }
                                    }

                                    // PF 05-Oct-10 EOM
                                    startTestDate = endTestDate;
                                }

                                // Add the series to the chart
                                chart1.SeriesCollection.Add(Series1);
                                chart1.SeriesCollection.Add(Series2);
                                chart1.SeriesCollection.Add(Series3);

                                string chartFileName = graphTypeText + " (" + reportTitle + ").png";

                                // Save the chart
                                chart1.FileName = chartFileName;
                                string filePath = chart1.FileManager.SaveImage();

                                file.WriteLine("<p><DIV style=\"page-break-after:always\">");
                                file.WriteLine("<b>" + graphTypeText + "</b><br>");
                                file.WriteLine("<p><img src=\"images/" + chartFileName + "\"></p>");

                                // PF 05-Oct-10 Added in datastorage
                                if (dataEnabled)
                                {
                                    file.WriteLine("<p><a href=# id=\"" + graphTypeText + "_display\" onclick=\"showhide('" + graphTypeText + "'); return(false);\">[show data]</a></p>");
                                    file.WriteLine("<div style=\"display: none;\" id=\"" + graphTypeText + "\">");
                                    file.WriteLine("<div class=eventlog><PRE>");
                                    file.WriteLine(dataStorage);
                                    file.WriteLine("</PRE></div>");
                                    file.WriteLine("</div>");
                                }
                                // PF 05-Oct-10 EOM

                                file.WriteLine("</DIV>");
                                file.Flush();
                            }
                        }
                        else
                        {
                            // PF 05-Oct-10 changed for..next loop from 0 to 27 to use variables instead
                            for (int testChannel = channelFrom; testChannel <= channelTo; testChannel += channelStep)
                            {
                                dataStorage = "";

                                using (Chart chart1 = new Chart())
                                {
                                    Series Series1 = new Series();
                                    Series Series2 = new Series();
                                    Series Series3 = new Series();

                                    Series1.Name = "Max";
                                    Series2.Name = "Avg";
                                    Series3.Name = "Min";

                                    SetupTrendChart(chart1, graphTypeText);

                                    if (selectedChannels[testChannel] == true)
                                    {
                                        // Set the start and end dates to midnight
                                        DateTime startTestDate = startDate;
                                        DateTime localEndDate = endDate;

                                        //TimeSpan span = localEndDate - startTestDate;

                                        while ((endDate - startTestDate).Minutes > 0)
                                        {
                                            string strSql = "";

                                            strSql = "max(time_stamp) as maxtimestamp6hr FROM Runtime6hr where runtime >= 0";
                                            using (System.Data.DataTable data = dataAvreageDatabase.SelectIntoDataTable(strSql))
                                            {
                                                if (data.Rows.Count == 1)
                                                {
                                                    DataRow row = data.Rows[0];
                                                    if (!row.IsNull(0))
                                                    {
                                                        latest6hrtime = Convert.ToInt64(row.ItemArray.GetValue(0));
                                                    }
                                                }
                                            }

                                            DateTime endTestDate = startTestDate.AddHours(hourInterval);
                                            timeStampEnd = DatabaseSDK.ConvertToUnixTimestamp(((endTestDate.Ticks + (roundBy / 2)) / roundBy) * roundBy);
                                            timeStampStart = DatabaseSDK.ConvertToUnixTimestamp(((startTestDate.Ticks + (roundBy / 2)) / roundBy) * roundBy);

                                            CalculateProgress();

                                            // *************************** Distance for time range ******************************                                            

                                            if (latest6hrtime >= timeStampEnd)
                                            {
                                                // Added test case 4
                                                switch (graphType)
                                                {
                                                    case 1:
                                                        strSql = ReportShared.SenValCompChannelNames6hr[3 * testChannel] + ", " + ReportShared.SenValCompChannelNames6hr[3 * testChannel + 1] + ", " + ReportShared.SenValCompChannelNames6hr[3 * testChannel + 2] + " from SenValComp6hr where time_stamp == " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and " + ReportShared.SenValCompChannelNames6hr[3 * testChannel] + " > -32000";
                                                        break;
                                                    case 2:
                                                        strSql = ReportShared.SenDevCompChannelNames6hr[3 * testChannel] + ", " + ReportShared.SenDevCompChannelNames6hr[3 * testChannel + 1] + ", " + ReportShared.SenDevCompChannelNames6hr[3 * testChannel + 2] + " from SenDevComp6hr where time_stamp == " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and " + ReportShared.SenDevCompChannelNames6hr[3 * testChannel] + " > -32000";
                                                        break;
                                                    case 3:
                                                        strSql = ReportShared.CylAveCompChannelNames6hr[3 * testChannel/2] + ", " + ReportShared.CylAveCompChannelNames6hr[3 * testChannel/2 + 1] + ", " + ReportShared.CylAveCompChannelNames6hr[3 * testChannel/2 + 2] + " from CylAveComp6hr where time_stamp == " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and " + ReportShared.CylAveCompChannelNames6hr[3 * testChannel/2] + " > -32000";
                                                        break;
                                                    case 4:
                                                        strSql = ReportShared.CylDevCompChannelNames6hr[3 * testChannel/2] + ", " + ReportShared.CylDevCompChannelNames6hr[3 * testChannel/2 + 1] + ", " + ReportShared.CylDevCompChannelNames6hr[3 * testChannel/2 + 2] + " from CylDevComp6hr where time_stamp == " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and " + ReportShared.CylDevCompChannelNames6hr[3 * testChannel/2] + " > -32000";
                                                        break;
                                                    case 5:
                                                        // WIO
                                                        if ((testChannel == 28))
                                                        {
                                                            strSql = "wateractivity, wateractivitymin, wateractivitymax from waterinoil6hr where time_stamp == " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and wateractivity > -32000";
                                                        }
                                                        // SLEM
                                                        if ((testChannel == 29))
                                                        {
                                                            strSql = "slemmv, slemmvmin, slemmvmax from slem6hr where time_stamp == " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and slemmv > -32000";
                                                        }
                                                        break;
                                                    case 6:
                                                        strSql = "round(avg(" + TemperatureChannelNames[testChannel - 30] + "), 0) as " + TemperatureChannelNames[testChannel - 30] + ",min(" + TemperatureChannelNames[testChannel - 30] + "),max(" + TemperatureChannelNames[testChannel - 30] + ") from temperature where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endTestDate.Ticks) + " and " + TemperatureChannelNames[testChannel - 30] + " > -32000";
                                                        break;
                                                }
                                                // PF 05-Oct-10 EOM
                                                
                                                if (graphType == 6)
                                                {
                                                    using (DbConnection connection = loggingDatabase.GetDbConnection())
                                                    {
                                                        using (DbDataReader reader = loggingDatabase.Select(connection, strSql))
                                                        {
                                                            dataStorage += PlotTrendChart(reader, chart1, Series1, Series2, Series3, startTestDate, testChannel);
                                                        }
                                                    }
                                                }
                                                else                                                
                                                {
                                                    using (DbConnection connectionAverageDb = dataAvreageDatabase.GetDbConnection())
                                                    {
                                                        using (DbDataReader reader = dataAvreageDatabase.Select(connectionAverageDb, strSql))
                                                        {
                                                            dataStorage += PlotTrendChart(reader, chart1, Series1, Series2, Series3, startTestDate, testChannel);
                                                        }
                                                    }
                                                }
                                            }
                                            else
                                            {
                                                // Added test case 4
                                                switch (graphType)
                                                {
                                                    case 1:
                                                        strSql = "round(avg(" + SenValCompChannelNames[testChannel] + "),0) as " + SenValCompChannelNames[testChannel] + ",min(" + SenValCompChannelNames[testChannel] + "),max(" + SenValCompChannelNames[testChannel] + ") from SenValComp where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endTestDate.Ticks) + " and " + SenValCompChannelNames[testChannel] + " > -32000";
                                                        break;
                                                    case 2:
                                                        strSql = "round(avg(" + SenDevCompChannelNames[testChannel] + "),0) as " + SenDevCompChannelNames[testChannel] + ",min(" + SenDevCompChannelNames[testChannel] + "),max(" + SenDevCompChannelNames[testChannel] + ") from SenDevComp where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endTestDate.Ticks) + " and " + SenDevCompChannelNames[testChannel] + " > -32000";
                                                        break;
                                                    case 3:
                                                        strSql = "round(avg(" + CylAveCompChannelNames[testChannel] + "),0) as " + CylAveCompChannelNames[testChannel] + ",min(" + CylAveCompChannelNames[testChannel] + "),max(" + CylAveCompChannelNames[testChannel] + ") from CylAveComp where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endTestDate.Ticks) + " and " + CylAveCompChannelNames[testChannel] + " > -32000";
                                                        break;
                                                    case 4:
                                                        strSql = "round(avg(" + CylDevCompChannelNames[testChannel] + "),0) as " + CylDevCompChannelNames[testChannel] + ",min(" + CylDevCompChannelNames[testChannel] + "),max(" + CylDevCompChannelNames[testChannel] + ") from CylDevComp where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endTestDate.Ticks) + " and " + CylDevCompChannelNames[testChannel] + " > -32000";
                                                        break;
                                                    case 5:
                                                        // WIO
                                                        if ((testChannel == 28))
                                                        {
                                                            strSql = "round(avg(wateractivity),0) as wateractivityAVG,min(wateractivity),max(wateractivity) from waterinoil where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endTestDate.Ticks) + " and wateractivity > -32000";
                                                        }
                                                        // SLEM
                                                        if ((testChannel == 29))
                                                        {
                                                            strSql = "round(avg(slemmv),0) as slemmvAVG,min(slemmv),max(slemmv) from SLEM where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endTestDate.Ticks) + " and slemmv > -32000";
                                                        }
                                                        break;
                                                    case 6:
                                                        strSql = "round(avg(" + TemperatureChannelNames[testChannel - 30] + "), 0) as " + TemperatureChannelNames[testChannel - 30] + ",min(" + TemperatureChannelNames[testChannel - 30] + "),max(" + TemperatureChannelNames[testChannel - 30] + ") from temperature where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endTestDate.Ticks) + " and " + TemperatureChannelNames[testChannel - 30] + " > -32000";
                                                        break;
                                                }
                                                // PF 05-Oct-10 EOM
                                                using (DbConnection connection = loggingDatabase.GetDbConnection())
                                                {
                                                    using (DbDataReader reader = loggingDatabase.Select(connection, strSql))
                                                    {
                                                        dataStorage += PlotTrendChart(reader, chart1, Series1, Series2, Series3, startTestDate, testChannel);
                                                    }
                                                }
                                            }

                                            // PF 05-Oct-10 EOM
                                            startTestDate = endTestDate;
                                        }

                                        // Add the series to the chart
                                        chart1.SeriesCollection.Add(Series1);
                                        chart1.SeriesCollection.Add(Series2);
                                        chart1.SeriesCollection.Add(Series3);

                                        string chartFileName = channelDescription[testChannel] + " - " + graphTypeText + " (" + reportTitle + ").png";

                                        // Save the chart
                                        chart1.FileName = chartFileName;
                                        string filePath = chart1.FileManager.SaveImage();

                                        file.WriteLine("<p><DIV style=\"page-break-after:always\">");
                                        file.WriteLine("<b>" + channelDescription[testChannel] + graphTypeText + "</b><br>");
                                        file.WriteLine("<p><img src=\"images/" + chartFileName + "\"></p>");

                                        // PF 05-Oct-10 Added in datastorage
                                        if (dataEnabled)
                                        {
                                            file.WriteLine("<p><a href=# id=\"" + channelDescription[testChannel] + graphTypeText + "_display\" onclick=\"showhide('" + channelDescription[testChannel] + graphTypeText + "'); return(false);\">[show data]</a></p>");
                                            file.WriteLine("<div style=\"display: none;\" id=\"" + channelDescription[testChannel] + graphTypeText + "\">");
                                            file.WriteLine("<div class=eventlog><PRE>");
                                            file.WriteLine(dataStorage);
                                            file.WriteLine("</PRE></div>");
                                            file.WriteLine("</div>");
                                        }
                                        // PF 05-Oct-10 EOM

                                        file.WriteLine("</DIV>");
                                        file.Flush();

                                        Thread.Yield();
                                        System.GC.Collect();
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Calculates how far through the report generation the class is.
        /// </summary>
        private void CalculateProgress()
        {
            this.countOfItemsProcessed++;
            this.progress = (int)((this.countOfItemsProcessed * 100) / this.numberOfOperationsToCreateReport);

            if (this.progress >= 100)
                this.progress = 100;

        }

        private void SetupTrendChart(Chart chart, string type)
        {
            chart.Application = "KzUs+VYNShw10i4kCPzKFp1CoN7LbDNcBN9+AR5lvG6JuuFhmw4yKiafA7WxMCROUN1aauLDUed03F0fMoHli3ioCobdzVAFfUw4bfPz4dM=";

            chart.TempDirectory = this.reportDirectory + "\\images\\";
            chart.Debug = true;
            chart.Palette = new Color[] { Color.FromArgb(255, 0, 0), Color.FromArgb(0, 255, 0), Color.FromArgb(0, 0, 255) };
            chart.Size = new Size(800, 600);
            chart.Title = type;
            chart.ImageFormat = dotnetCHARTING.WinForms.ImageFormat.Png;

            // turn off markers
            chart.DefaultElement.Marker.Visible = false;
            // make the default series a line
            chart.DefaultSeries.Type = SeriesType.Line;

            // Set the chart legend to colour box and series name
            chart.LegendBox.Template = "%Icon%Name";

            // Set the lower scale to time
            chart.XAxis.Scale = Scale.Time;
            chart.XAxis.TimeScaleLabels.Mode = TimeScaleLabelMode.Smart;
            chart.XAxis.Label.Text = "Date/Time";

            //chart1.YAxis.ScaleRange = New ScaleRange(-100, 100)
            chart.YAxis.ZeroTick.GridLine.Color = Color.Black;

            // Calculate an axis from the x axis and add it with 'weeks' intervals.
            chart.AxisCollection.Add(chart.XAxis.Calculate("Weeks", TimeInterval.Weeks));
        }

        private string PlotTrendChart(DbDataReader reader, Chart chart, Series Series1, Series Series2, Series Series3, DateTime testDate, int type=0)
        {
            string dataStorage = string.Empty;

            double componentDistanceAVG = -32768;
            Int64 componentDistanceMIN = -32768;
            Int64 componentDistanceMAX = -32768;


            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    componentDistanceAVG = -32768;
                    componentDistanceMIN = -32768;
                    componentDistanceMAX = -32768;

                    if (!reader.IsDBNull(0))
                    {
                        componentDistanceAVG = reader.GetDouble(0);
                    }

                    if (!reader.IsDBNull(1))
                    {
                        componentDistanceMIN = reader.GetInt64(1);
                    }

                    if (!reader.IsDBNull(2))
                    {
                        componentDistanceMAX = reader.GetInt64(2);
                    }

                    if (componentDistanceMAX != -32768)
                    {
                        if (type == 28) componentDistanceMAX /= 100;
                        Series1.Element.YValue = componentDistanceMAX;
                    }
                    else
                    {
                        Series1.Element.YValue = double.NaN;
                    }

                    if (componentDistanceAVG != -32768)
                    {
                        if (type == 28) componentDistanceAVG /= 100;
                        Series2.Element.YValue = componentDistanceAVG;                        
                    }
                    else
                    {
                        Series2.Element.YValue = double.NaN;
                    }

                    if (componentDistanceMIN != -32768)
                    {
                        if (type == 28) componentDistanceMIN /= 100;
                        Series3.Element.YValue = componentDistanceMIN;                        
                    }
                    else
                    {
                        Series3.Element.YValue = double.NaN;
                    }

                    Series1.Element.XDateTime = testDate;
                    Series2.Element.XDateTime = testDate;
                    Series3.Element.XDateTime = testDate;

                    Series1.Elements.Add();
                    Series2.Elements.Add();
                    Series3.Elements.Add();

                    // PF 05-Oct-10 added in datastorage if required

                    if ((dataEnabled))
                    {
                        dataStorage += testDate.ToString("dd-MM-yyyy HH:mm:ss") + ", " + Convert.ToDouble(componentDistanceMIN) + "," + Convert.ToDouble(componentDistanceAVG) + "," + Convert.ToDouble(componentDistanceMAX) + "<br>";
                    }

                    Thread.Yield();
                }
            }
            else
            {                
                // PF 05-Oct-10 added in datastorage if required
                Series1.Element.YValue = double.NaN;
                Series2.Element.YValue = double.NaN;
                Series3.Element.YValue = double.NaN;
                Series1.Element.XDateTime = testDate;
                Series2.Element.XDateTime = testDate;
                Series3.Element.XDateTime = testDate;

                Series1.Elements.Add();
                Series2.Elements.Add();
                Series3.Elements.Add();

                if ((dataEnabled))
                {
                    dataStorage += testDate.ToString("dd-MM-yyyy HH:mm:ss") + ", " + Convert.ToDouble(componentDistanceMIN) + "," + Convert.ToDouble(componentDistanceAVG) + "," + Convert.ToDouble(componentDistanceMAX) + "<br>";
                }

                Thread.Yield();
            }

            return dataStorage;
        }

        private void GenerateChannelStatus(StreamWriter file, DateTime startDate, DateTime endDate)
        {
            file.WriteLine("<!-- Status summary -->");
            file.WriteLine("<h1>Summary for " + reportTitle + "</h1>");

            file.WriteLine("<b>Legend</b>");
            file.WriteLine("<table border=0>");
            file.WriteLine("<tr><td>N</td><td><img src=\"images/green.gif\"></td><td>Normal</td></tr>");
            file.WriteLine("<tr><td>U</td><td><img src=\"images/blue.gif\"></td><td>Unknown</td></tr>");
            file.WriteLine("<tr><td>W</td><td><img src=\"images/yellow.gif\"></td><td>Warning</td></tr>");
            file.WriteLine("<tr><td>A</td><td><img src=\"images/red.gif\"></td><td>Alarm</td></tr>");
            file.WriteLine("</table>");
            file.WriteLine("<table><tr><td><b>Cylinder</b></td><td><b>Status</b></td></tr>");

            string statusValue = "";

            for (int testCylinder = 0; testCylinder < 14; testCylinder++)
            {
                int channel = testCylinder * 2;
                if (selectedChannels[channel] == true || selectedChannels[channel + 1] == true)
                {
                    int channelMask = ((int)Math.Pow(2, channel)) + ((int)Math.Pow(2, (channel + 1)));
                    string channelCriteria = "AND channel & " + channelMask + " <> 0";

                    statusValue = "N";

                    //Get alarm or slowdown from event log
                    if (ReportShared.NumberOfAlarmOrSlowDownStatusRecord(this.eventLogDatabase, startDate, endDate, channelCriteria) > 0)
                    {
                        statusValue = "A";
                    }
                    //Get pre-warning from event log
                    else if (ReportShared.NumberOfPreWarningStatusRecords(this.eventLogDatabase, startDate, endDate, channelCriteria) > 0)
                    {
                        statusValue = "W";
                    }
                    //Get Unknown data from datalogger                    
                    else if (ReportShared.NumberOfUnknownStatusRecordsFrom6hr(this.dataAvreageDatabase, startDate, endDate, testCylinder) > 0)
                    {
                        statusValue = "U";
                    }

                    file.WriteLine("<tr><td>Cylinder " + ReportShared.CylinderNamesXML[testCylinder] + "</td><td>");
                    switch (statusValue)
                    {
                        case "N":
                            file.WriteLine("<img src=\"images/green.gif\">");
                            break;
                        case "U":
                            file.WriteLine("<img src=\"images/blue.gif\">");
                            break;
                        case "W":
                            file.WriteLine("<img src=\"images/yellow.gif\">");
                            break;
                        case "A":
                            file.WriteLine("<img src=\"images/red.gif\">");
                            break;
                    }

                    file.WriteLine("&nbsp; " + statusValue + "</td>");
                    file.WriteLine("</tr>");
                }
                // Finalise StatusList

            }
            file.WriteLine("</table>");
        }

        public string ReplaceAMOTwithXMLNames(string searchString)
        {
            int i = 0;

            for (i = 0; i <= 27; i++)
            {
                searchString = searchString.Replace(ReportShared.ChannelNamesAMOT[i], ReportShared.ChannelNamesXML[i]);
            }

            return searchString;

        }

        public int ArrayElementFromFirstBit(int myWord)
        {
            int i = 0;

            for (i = 0; i <= 27; i++)
            {
                if ((((int)Math.Pow(2, i)) & myWord) != 0)
                {
                    return i;
                }
            }

            return -1;
        }

        private Int64 CountDamageMonitoringEvents()
        {
            Int64 numberOfEvents = 0;
            int channelMask;
            string channelCriteria;

            if (DamageMonitoringRequired())
            {
                //Work out the channel mask for the SQL query
                channelMask = 0;

                for (int i = 0; i < 28; i++)
                {
                    if (this.selectedChannels[i])
                    {
                        channelMask += (int)Math.Pow(2, i);
                    }
                }

                channelCriteria = "AND channel & " + channelMask + " <> 0 AND datatype = 2 AND " + EventCodeCriteria();
                string strSql = "count(*) FROM EventLog where eventdatetime >= " + DatabaseSDK.ConvertToUnixTimestamp(this.startDate.Ticks) + " and eventdatetime <= " + DatabaseSDK.ConvertToUnixTimestamp(this.endDate.Ticks) + " " + channelCriteria;

                using (System.Data.DataTable data = eventLogDatabase.SelectIntoDataTable(strSql))
                {
                    if (data.Rows.Count > 0)
                    {
                        DataRow row = data.Rows[0];
                        numberOfEvents = ((Int64)row[0] * 8000);
                    }
                }
            }

            return numberOfEvents;
        }

    }

    internal class DamageMonitorEvent
    {
        public DamageMonitorEvent(DateTime eventTimestamp, int channel, int dataType, int eventId, int eventCode, string description, DateTime ackTimestamp, string ackUser)
        {
            EventDateTime = eventTimestamp;
            Channel = channel;
            DataType = dataType;
            ID = eventId;
            EventCode = eventCode;
            Description = description;
            AckDateTime = ackTimestamp;
            AckName = ackUser;
        }

        public DateTime EventDateTime { get; set; }
        public int Channel { get; set; }
        public int DataType { get; set; }
        public int ID { get; set; }
        public int EventCode { get; set; }
        public string Description { get; set; }
        public DateTime AckDateTime { get; set; }
        public string AckName { get; set; }
    }
}
