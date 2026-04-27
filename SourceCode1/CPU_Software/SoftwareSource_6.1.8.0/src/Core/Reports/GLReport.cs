using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Threading;
using DataCollectionSDK;
using FaultErrorIndicators;
using HelperClasses;

namespace Reports
{
    public class GLReport : IReportRunner
    {
        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        DateTime startDate;
        DateTime endDate;

        DatabaseSDK eventLogDatabase;
        DatabaseSDK loggingDatabase;
        DatabaseSDK configurationDatabase;
        DatabaseSDK dataAvreageDatabase;

        bool[] selectedChannels = new bool[32];
        bool[] activeChannels = new bool[28];
        Int64[] hoursRun;
        string reportPath;
        bool allChannels;
        ShipInfo shipInfo;
        string systemVersionNumber;
        string spuFirmwareVersion;

        int progress;
        int countOfItemsProcessed;
        Int64 numberOfOperationsToCreateReport;
        string reportFile;
        bool updateTimestamp;

        /// <summary>
        /// The module configuration for this object
        /// </summary>
        ModuleConfiguration configuration;

        /// <summary>
        /// Creates a GLReport object
        /// </summary>
        /// <param name="reportPath"></param>
        /// <param name="startDate"></param>
        /// <param name="endDate"></param>
        /// <param name="selectedChannels"></param>
        /// <param name="activeChannels"></param>
        /// <param name="allChannels"></param>
        /// <param name="systemVersionNumber"></param>
        /// <param name="spuFirmwareVersion"></param>
        public GLReport(string reportPath, DateTime startDate, DateTime endDate, bool[] selectedChannels, bool[] activeChannels, bool allChannels, string systemVersionNumber, string spuFirmwareVersion, bool updateTimestamp = true)
        {
            // Set the start and end dates to midnight
            this.startDate = startDate;
            this.endDate = endDate;
            this.allChannels = allChannels;
            this.selectedChannels = selectedChannels;
            this.activeChannels = activeChannels;
            Error = false;

            if (!reportPath.EndsWith("\\"))
            {
                this.reportPath = reportPath + "\\";
            }
            else
            {
                this.reportPath = reportPath;
            }

            configuration = ModuleConfiguration.GetApplicationConfiguration();
            DataCollectionConfigurationSection dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;

            if (dataCollectionConfig == null)
                dataCollectionConfig = new DataCollectionConfigurationSection();

            string dataAverageDb = dataCollectionConfig.Database.DataLogger;
            if (dataAverageDb.Contains("amot_xtsii_data")) dataAverageDb = dataAverageDb.Replace("amot_xtsii_data", "amot_xtsii_dataaverage");

            loggingDatabase = new DatabaseSDK(dataCollectionConfig.Database.DataLogger, dataCollectionConfig.Database.DbRetryCount, dataCollectionConfig.Database.DbRetryDuration, 0);
            dataAvreageDatabase = new DatabaseSDK(dataAverageDb, dataCollectionConfig.Database.DbRetryCount, dataCollectionConfig.Database.DbRetryDuration, 0);
            eventLogDatabase = new DatabaseSDK(dataCollectionConfig.Database.EventLog, dataCollectionConfig.Database.DbRetryCount, dataCollectionConfig.Database.DbRetryDuration, 0);
            configurationDatabase = new DatabaseSDK(dataCollectionConfig.Database.ConfigurationDb, dataCollectionConfig.Database.DbRetryCount, dataCollectionConfig.Database.DbRetryDuration, 0);

            this.systemVersionNumber = systemVersionNumber;
            this.spuFirmwareVersion = spuFirmwareVersion;

            this.shipInfo = ReportShared.GetShipInfo(configurationDatabase);
            this.updateTimestamp = updateTimestamp;

        }

        private void CreateLogging(StreamWriter file)
        {
            string strSql;
            string channelCriteria;
            int channelMask;

            file.WriteLine("<Logging>");

            // Work out the channel mask for the SQL query
            channelMask = 0;
            for (int i = 0; i <= 27; i++)
            {
                if (selectedChannels[i] == true || (allChannels && activeChannels[i] == true))
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

            // PF 05-Oct-10 Added SLEM GL V1.2
            // Add the mask for the SLEM if enabled
            if (selectedChannels[29] == true)
            {
                channelMask += (int)Math.Pow(2, 29);
            }
            // PF 05-Oct-10 EOM

            channelCriteria = "AND channel & " + channelMask + " <> 0";
            strSql = "* FROM " + "EventLog" + " where eventdatetime >= " + DatabaseSDK.ConvertToUnixTimestamp(startDate.Ticks) + " and eventdatetime <= " + DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks) + " " + channelCriteria;
            strSql += " ORDER BY eventdatetime ASC";

            string eventMessage = string.Empty;

            using (System.Data.DataTable data = eventLogDatabase.SelectIntoDataTable(strSql))
            {
                // PF 05-Oct-10 Padded string to fixed length and removed various <br> and vbCrLf, added header row
                if (data.Rows.Count > 0)
                {
                    foreach (DataRow row in data.Rows)
                    {
                        eventMessage = (string)row[5];
                        file.WriteLine("<Log>");
                        DateTime dt = DatabaseSDK.ConvertFromUnixTimeStamp(((Int64)row[0]));
                        file.WriteLine("<Date>" + dt.ToString("yyyy-MM-dd HH:mm:ss") + "</Date>");

                        string ackDT = string.Empty;
                        if ((Int64)row[6] != 0)
                        {
                            dt = DatabaseSDK.ConvertFromUnixTimeStamp(((Int64)row[6]));
                            ackDT = dt.ToString("yyyy-MM-dd HH:mm:ss");
                        }

                        string userName = string.Empty;
                        if (row[7] != DBNull.Value)
                        {
                            userName = row[7].ToString();
                        }

                        file.WriteLine("<Message>" + eventMessage + " " + ackDT + " " + userName + "</Message>");
                        file.WriteLine("</Log>");

                        Thread.Yield();
                    }
                }
            }
            // Finalise <Logging>
            file.WriteLine("</Logging>");
        }

        private void CreateTrendData(StreamWriter file)
        {
            int additionalChannelCount = 0;
            string strSql;
            int testChannel;
            int hourInterval = 6;

            string componentHoursRun;
            string componentValue;

            // Check WIO is selected
            if (selectedChannels[28])
            {
                additionalChannelCount += 1;
            }
            // Check SLEM is selected
            if (selectedChannels[29])
            {
                additionalChannelCount += 1;
            }

            file.WriteLine("<TrendDataList>");            

           // PF 05-Oct-10 changed test from 27 to 29 so we can loop for WIO (28) and SLEM (29)

            for (testChannel = 0; testChannel <= 29; testChannel++)
            {
                if (selectedChannels[testChannel] == true)
                {
                    file.WriteLine("<TrendData>");
                    // PF 05-Oct-10 different description according to the testChannel
                    if ((testChannel >= 0 && testChannel <= 27))
                    {
                        file.WriteLine("<MeasuringPoint>" + ReportShared.ChannelNamesXML[testChannel] + "</MeasuringPoint>");
                    }
                    // WIO
                    if ((testChannel == 28))
                    {
                        file.WriteLine("<MeasuringPoint>WIOM Sensor</MeasuringPoint>");
                    }
                    // SLEM
                    if ((testChannel == 29))
                    {
                        file.WriteLine("<MeasuringPoint>SLEM Sensor</MeasuringPoint>");
                    }
                    // PF 05-Oct-10 EOM
                    file.WriteLine("<TrendValueList>");

                    DateTime startTestDate = startDate;

                    //read the newest time in averaging database
                    Int64 latest6hrtime = 0;
                    int roundBy = (10000 * 10000);
                    Int64 timeStampStart;
                    Int64 timeStampEnd;

                    while ((endDate - startTestDate).Minutes > 0)
                    {                            
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
                        // PF 05-Oct-10 different SQL according to the testChannel
                        strSql = "";
                        if ((testChannel >= 0 && testChannel <= 27))
                        {
                            if (latest6hrtime >= timeStampEnd)
                            {
                                strSql = ReportShared.ChannelNames[testChannel] + " from SenValComp6hr where time_stamp == " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endTestDate.Ticks) + " and " + ReportShared.ChannelNames[testChannel] + " > -32000";
                            }
                            else
                            {
                                strSql = "round(avg(" + ReportShared.ChannelNames[testChannel] + "),0) as " + ReportShared.ChannelNames[testChannel] + " from SenValComp where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endTestDate.Ticks) + " and " + ReportShared.ChannelNames[testChannel] + " > -32000";
                            }
                        }
                        // WIO
                        if ((testChannel == 28))
                        {
                            if (latest6hrtime >= timeStampEnd)
                            {
                                strSql = "wateractivity from WaterInOil6hr where time_stamp == " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endTestDate.Ticks) + " and wateractivity > -32000";
                            }
                            else
                            {
                                strSql = "round(avg(wateractivity),4) as wateractivityAVG from waterinoil where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endTestDate.Ticks) + " and wateractivity > -32000";
                            }
                        }
                        // SLEM
                        if ((testChannel == 29))
                        {
                            if (latest6hrtime >= timeStampEnd)
                            {
                                strSql = "slemmv from SLEM6hr where time_stamp == " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endTestDate.Ticks) + " and slemmv > -32000";
                            }
                            else
                            {
                                strSql = "round(avg(slemmv),4) as slemmvAVG from SLEM where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endTestDate.Ticks) + " and slemmv > -32000";
                            }
                        }
                        // PF 05-Oct-10 EOM

                        componentValue = "";

                        if (latest6hrtime >= timeStampEnd)
                        {
                            using (System.Data.DataTable data = dataAvreageDatabase.SelectIntoDataTable(strSql))
                            {
                                if (data.Rows.Count > 0)
                                {
                                    DataRow row = data.Rows[0];
                                    if (row[0] != DBNull.Value)
                                    {
                                        componentValue = row[0].ToString();
                                    }
                                }
                            }
                        }
                        else
                        {
                            using (System.Data.DataTable data = loggingDatabase.SelectIntoDataTable(strSql))
                            {
                                if (data.Rows.Count > 0)
                                {
                                    DataRow row = data.Rows[0];
                                    if (row[0] != DBNull.Value)
                                    {
                                        componentValue = row[0].ToString();
                                    }
                                }
                            }
                        }

                        double result = 0;
                        if ((testChannel >= 0 && testChannel <= 27))
                        {
                            if (componentValue.Trim().Length != 0)
                            {
                                try
                                {
                                    result = Convert.ToDouble(componentValue);
                                }
                                catch (FormatException)
                                {
                                    throw;
                                }
                                catch (OverflowException)
                                {
                                    throw;
                                }
                            }

                            result /= 1000;
                        }

                        result = Math.Round(result, 3, MidpointRounding.AwayFromZero);

                        double wioResult = 0;
                        if (testChannel == 28)
                        {
                            if (componentValue.Trim().Length != 0)
                            {
                                try
                                {
                                    wioResult = Convert.ToDouble(componentValue);
                                }
                                catch (FormatException)
                                {
                                    throw;
                                }
                                catch (OverflowException)
                                {
                                    throw;
                                }
                            }

                            wioResult /= 10000;
                        }

                        wioResult = Math.Round(wioResult, 4, MidpointRounding.AwayFromZero);

                        //*************************** Hours run for time range *********************
                        componentHoursRun = "";
                        double Runtime = 0;
                        if (latest6hrtime >= timeStampEnd)
                        {
                            strSql = "runtime from Runtime6hr where runtime >= 0 and time_stamp == " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endTestDate.Ticks);
                            using (System.Data.DataTable data = dataAvreageDatabase.SelectIntoDataTable(strSql))
                            {
                                if (data.Rows.Count > 0)
                                {
                                    DataRow row = data.Rows[0];
                                    if (row[0] != DBNull.Value)
                                    {
                                        componentValue = row[0].ToString();

                                        if (componentValue.Trim().Length != 0)
                                        {
                                            try
                                            {
                                                Runtime = Convert.ToDouble(componentValue);
                                            }
                                            catch (FormatException)
                                            {
                                                throw;
                                            }
                                            catch (OverflowException)
                                            {
                                                throw;
                                            }
                                        }

                                        if (Runtime > 360) Runtime = 360;
                                        Runtime /= 60;

                                        Runtime = Math.Round(Runtime, 0, MidpointRounding.AwayFromZero);
                                        componentHoursRun = Runtime.ToString();
                                    }
                                }
                            }
                        }
                        else
                        {
                            strSql = "min(runtime) as runtimemin, max(runtime) as runtimemax FROM RunTime where runtime > 0 and time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startTestDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endTestDate.Ticks);

                            using (System.Data.DataTable data = loggingDatabase.SelectIntoDataTable(strSql))
                            {
                                Int64 min = 0;
                                Int64 max = 0;

                                if (data.Rows.Count == 1)
                                {
                                    DataRow row = data.Rows[0];
                                    if (!row.IsNull(0) && !row.IsNull(1))
                                    {
                                        min = row.Field<Int64>(0);
                                        max = row.Field<Int64>(1);
                                        Runtime = Convert.ToDouble(max - min);
                                        if (Runtime > 360) Runtime = 360;
                                        Runtime /= 60;

                                        Runtime = Math.Round(Runtime, 0, MidpointRounding.AwayFromZero);
                                        componentHoursRun = Runtime.ToString();
                                        //componentHoursRun = (Convert.ToInt64(TimeSpan.FromMinutes(max - min).TotalHours)).ToString();
                                    }
                                }
                            }
                        }
                        if (componentHoursRun.Trim().Length != 0 && componentValue.Trim().Length != 0)
                        {
                            // Write XML for trendvalue
                            file.WriteLine("<TrendValue>");
                            file.WriteLine("<Date>" + startTestDate.ToString("yyyy-MM-dd HH:mm:ss") + "</Date>");
                            // PF 05-Oct-10 Changed units to h from mins GL V1.2
                            file.WriteLine("<ComponentOperatingHours unit=\"h\">" + componentHoursRun + "</ComponentOperatingHours>");
                            // PF 05-Oct-10 different output according to channel test and XML string to match GL XML
                            if ((testChannel >= 0 & testChannel <= 27))
                            {
                                file.WriteLine("<MeasurementValue label=\"Distance\" unit=\"mm\">" + result.ToString() + "</MeasurementValue>");
                            }
                            // WIO
                            if ((testChannel == 28))
                            {
                                file.WriteLine("<MeasurementValue label=\"WaterContent\" unit=\"aw\">" + wioResult.ToString() + "</MeasurementValue>");
                            }
                            // SLEM
                            if ((testChannel == 29))
                            {
                                file.WriteLine("<MeasurementValue label=\"SLEM\" unit=\"mV\">" + componentValue + "</MeasurementValue>");
                            }
                            // PF 05-Oct-10 EOM
                            file.WriteLine("</TrendValue>");
                        }
                        startTestDate = endTestDate;
                    }                                            

                    file.WriteLine("</TrendValueList>");
                    file.WriteLine("</TrendData>");

                    Thread.Yield();
                }

            }

            // Finalise <TrendDataList>
            file.WriteLine("</TrendDataList>");
        }

        private void CreateReportStatus(StreamWriter file)
        {
            string statusValue = "";

            file.WriteLine("<StatusList>");

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

                    file.WriteLine("<Status>");
                    file.WriteLine("<ComponentPart>" + ReportShared.CylinderNamesXML[testCylinder] + "</ComponentPart>");
                    file.WriteLine("<Value>" + statusValue + "</Value>");
                    file.WriteLine("</Status>");
                }
            }

            // Finalise <StatusList>
            file.WriteLine("</StatusList>");
        }

        private void GenerateReportHeader(StreamWriter file, Int64[] hoursRun)
        {
            file.WriteLine("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
            file.WriteLine("<BearingWearMonitoring xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:noNamespaceSchemaLocation=\"BearingWearConditionMonitoring.xsd\">");
            file.WriteLine("<DateTimeOfCreation>" + DateTime.UtcNow.ToString("yyyy-MM-dd HH:mm:ss") + "</DateTimeOfCreation>");
            file.WriteLine("<VesselName>" + shipInfo.VesselName + "</VesselName>");
            file.WriteLine("<ImoNo>" + shipInfo.ImoNo + "</ImoNo>");
            file.WriteLine("<ClassificationSociety>" + shipInfo.ClassificationSociety + "</ClassificationSociety>");
            file.WriteLine("<ClassRegisterNo>" + shipInfo.ClassRegisterNo + "</ClassRegisterNo>");
            file.WriteLine("<Component>" + shipInfo.Component + "</Component>");
            file.WriteLine("<EngineLicenser>" + shipInfo.EngineLicenser + "</EngineLicenser>");
            file.WriteLine("<EngineMaker>" + shipInfo.EngineMaker + "</EngineMaker>");
            file.WriteLine("<EngineType>" + shipInfo.EngineType + "</EngineType>");
            file.WriteLine("<EngineSerialNo>" + shipInfo.EngineSerialNumber + "</EngineSerialNo>");
            file.WriteLine("<CmSystemType>Bearing Wear Monitoring System</CmSystemType>");
            file.WriteLine("<CmSystemMaker>AMOT - Roper Industries Ltd</CmSystemMaker>");
            file.WriteLine("<CmSystemHardwareFirmware>" + spuFirmwareVersion + "</CmSystemHardwareFirmware>");
            file.WriteLine("<CmSystemSoftware>" + systemVersionNumber + "</CmSystemSoftware>");
            file.WriteLine("<PeriodOfTrendDataFrom>" + startDate.ToString("yyyy-MM-dd") + "</PeriodOfTrendDataFrom>");
            file.WriteLine("<PeriodOfTrendDataTo>" + endDate.ToString("yyyy-MM-dd") + "</PeriodOfTrendDataTo>");
            file.WriteLine("<EngineOperatingHoursFrom>" + hoursRun[0] + "</EngineOperatingHoursFrom>");
            file.WriteLine("<EngineOperatingHoursTo>" + hoursRun[1] + "</EngineOperatingHoursTo>");
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

        public void Start()
        {
            IsRunning = true;
            Complete = false;

            reportFile = string.Empty;
            hoursRun = ReportShared.GetHoursRunForRange(this.loggingDatabase, startDate, endDate);

            int hourInterval = 6;
            int channelCount = 0;

            foreach (bool channel in this.selectedChannels)
            {
                if (channel)
                {
                    channelCount++;
                }
            }

            this.numberOfOperationsToCreateReport = (int)(((long)(endDate - startDate).TotalHours) / hourInterval) * channelCount;
            progress = 0;
            countOfItemsProcessed = 0;

            try
            {
                try
                {
                    if (!Directory.Exists(reportPath))
                    {
                        Directory.CreateDirectory(reportPath);
                    }

                    // Create the filename and open a save as dialog box
                    string reportFilename = startDate.ToString("yyyy-MM-dd") + " to " + endDate.ToString("yyyy-MM-dd") + " " + shipInfo.VesselName + ".xml";
                    reportFile = reportPath + reportFilename;
                }
                catch (Exception)
                {
                    Faults.Instance.SignalFault(FaultCodes.GLReportCreateDirectory);
                    throw;
                }

                // At this point the report file is created
                using (StreamWriter file = new StreamWriter(reportFile))
                {
                    try
                    {
                        // ********************* report header ******************
                        GenerateReportHeader(file, hoursRun);
                    }
                    catch (Exception)
                    {
                        Faults.Instance.SignalFault(FaultCodes.GLReportHeader);
                        throw;
                    }

                    try
                    {

                        //**************** Status list ******************
                        CreateReportStatus(file);
                    }
                    catch (Exception)
                    {
                        Faults.Instance.SignalFault(FaultCodes.GLReportStatus);
                        throw;
                    }

                    try
                    {
                        //********************* trend data ****************
                        // PF 05-Oct-10 Added in the WIO and SLEM check and additionalChannelCount
                        CreateTrendData(file);
                    }
                    catch (Exception)
                    {
                        Faults.Instance.SignalFault(FaultCodes.GLReportTrend);
                        throw;
                    }

                    try
                    {
                        //**************** Logging ******************
                        CreateLogging(file);
                    }
                    catch (Exception)
                    {
                        Faults.Instance.SignalFault(FaultCodes.GLReportLogging);
                        throw;
                    }

                    file.WriteLine("</BearingWearMonitoring>");

                }

                if (this.updateTimestamp)
                {
                    StoreReportRunDate();
                }
            }
            catch (Exception e)
            {
                Error = true;
                logger.FatalFormat("Aborted GL Report creation.  Exception {0}", e.ToString());
            }

            if (!Error)
            {
                //Clear the GLReport faults
                Faults.Instance.ClearFault(FaultCodes.GLReportCreateDirectory);
                Faults.Instance.ClearFault(FaultCodes.GLReportHeader);
                Faults.Instance.ClearFault(FaultCodes.GLReportStatus);
                Faults.Instance.ClearFault(FaultCodes.GLReportTrend);
                Faults.Instance.ClearFault(FaultCodes.GLReportLogging);
            }

            IsRunning = false;
            Complete = true;
            this.progress = 100;
        }

        /// <summary>
        /// Gets the name of the file the report was saved too.
        /// </summary>
        public string ReportFilename
        {
            get
            {
                return this.reportFile;
            }
        }

        /// <summary>
        /// This function stores the report date in the configuration database
        /// </summary>
        private void StoreReportRunDate()
        {
            List<string> sqlStatements = new List<string>();
            sqlStatements.Add(string.Format("DROP TABLE IF EXISTS reportdetails;"));
            sqlStatements.Add(string.Format("CREATE TABLE IF NOT EXISTS reportdetails (time_stamp INTEGER);"));
            sqlStatements.Add(string.Format("INSERT INTO reportdetails (time_stamp) values ({0});", DatabaseSDK.ConvertToUnixTimestamp(this.endDate.Ticks)));
            this.configurationDatabase.ExecuteSQLStatements(sqlStatements.ToArray(), FaultCodes.DatabaseWriteFailure, FaultCodes.DatabaseFailure, FaultCodes.DatabaseFailure);
        }

        /// <summary>
        /// Gets the current percenatage through the report
        /// </summary>
        /// <returns></returns>
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

    }
}
