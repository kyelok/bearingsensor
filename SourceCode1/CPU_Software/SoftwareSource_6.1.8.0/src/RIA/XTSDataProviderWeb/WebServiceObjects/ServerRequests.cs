using System;
using System.Text;
using System.Collections.Generic;

namespace WebServiceObjects
{
    public class ServerRequests
    {
        /// <summary>
        /// The root adress of the server, port
        /// </summary>
        private string JsonAddress;

        /// <summary>
        /// Creates a new ServerRequest object
        /// </summary>
        /// <param name="serverUrl">The address of the server to connect to</param>
        /// <param name="serverPort">The port of the server</param>
        public ServerRequests(string serverUrl, int serverPort)
        {
            // Construct the URL of the server
            this.JsonAddress = "http://" + serverUrl + ":" + serverPort;
        }

        /// <summary>
        /// Asynchronous version of GetUsersList
        /// </summary>
        /// <param name="callback">The function to call when data is received and processed</param>
        public void GetUsersList(JsonWebClient.WebServiceObjectsCallback callback)
        {
            JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.ListUsersURL, typeof(WebServiceObjects.User[]), callback);
        }

        /// <summary>
        /// Asynchronous version of GetGroupsList 
        /// </summary>
        /// <param name="callback"></param>
        public void GetGroupsList(JsonWebClient.WebServiceObjectsCallback callback)
        {
            JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.ListGroupsURL, typeof(WebServiceObjects.UserGroups), callback);
        }

        /// <summary>
        /// Login a user
        /// </summary>
        /// <param name="username">Username</param>
        /// <param name="password">Password</param>
        /// <returns>Authentication code</returns>
        public IAsyncResult Login(JsonWebClient.WebServiceObjectsCallback callback, string username, string password)
        {
            return JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.Login + "?user=" + username + "&password=" + password, typeof(string), callback);
        }

        /// <summary>
        /// Set sensor mode
        /// </summary>
        /// <param name="mode">Mode to set</param>
        /// <returns>true if success otherwise false</returns>
        public void SetSensorMode(SensorDCMode mode, JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.SensorModeURL, mode, typeof(Int16), typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Sends the command to start cylinder firing order calibration
        /// </summary>
        /// <param name="callback"></param>
        /// <param name="errorCallback"></param>
        /// <param name="username"></param>
        /// <param name="password"></param>
        public void StartFiringOrderCalibration(JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.SensorCalibrationOrderURL, null, null, typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Sends the command to start the engine learn
        /// </summary>
        /// <param name="callback"></param>
        /// <param name="errorCallback"></param>
        /// <param name="username"></param>
        /// <param name="password"></param>
        public void StartEngineLearning(JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.StartEngineLearningURL, null, null, typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Sends the command to stop engine learn
        /// </summary>
        /// <param name="callback"></param>
        /// <param name="errorCallback"></param>
        /// <param name="username"></param>
        /// <param name="password"></param>
        public void StopEngineLearning(JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.StopEngineLearningURL, null, null, typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Read the event log
        /// </summary>
        public IAsyncResult GetEventLog(JsonWebClient.WebServiceObjectsCallback callback, int offset, int limit, bool alarms)
        {
            return JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.EventLogURL + "?offset=" + offset + "&limit=" + limit + "&alarms=" + (alarms ? 1 : 0), typeof(WebServiceObjects.EventLogResult), callback);
        }

        /// <summary>
        /// Read the sensor setup
        /// </summary>
        public IAsyncResult GetSensorSetup(JsonWebClient.WebServiceObjectsCallback callback)
        {
            return JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.ReadSensorSetupURL, typeof(WebServiceObjects.SensorSetup), callback);
        }

        /// <summary>
        /// Returns the live engine data
        /// </summary>
        public IAsyncResult GetEngineLiveDataNC(JsonWebClient.WebServiceObjectsCallback callback)
        {
            return JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.EngineLiveDataNCURL, typeof(WebServiceObjects.EngineDataNonCached), callback);
        }

        /// <summary>
        /// Returns the live engine data
        /// </summary>
        public IAsyncResult GetEngineLiveData(JsonWebClient.WebServiceObjectsCallback callback)
        {
            return JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.EngineLiveDataURL, typeof(WebServiceObjects.EngineData), callback);
        }

        /// <summary>
        /// Acknowledge engine alarms
        /// </summary>
        /// <param name="alarms">Alarms to acknowledge</param>
        public void EngineAlarmsAck(JsonWebClient.WebServiceObjectsCallback callback, Int16[] alarms, string auth)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.EngineAlarmsAckURL, alarms, typeof(Int16[]), typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Ignore engine alarms
        /// </summary>
        /// <param name="alarms">Alarms to acknowledge</param>
        public void EngineAlarmsIgnore(JsonWebClient.WebServiceObjectsCallback callback, Int16[] alarms, string auth)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.EngineAlarmsIgnoreURL, alarms, typeof(Int16[]), typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Monitors the sensor peek calibration
        /// </summary>
        /// <param name="sensors">An array of the sensors that are being calibrated.
        /// Each element of the array should be between 0 and 27.</param>
        public void SensorMonitorCalibratePeek(Int16[] sensors, JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.SensorMonitorCalibratePeekURL, sensors, typeof(Int16[]), typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Monitors the sensor peek calibration
        /// </summary>
        /// <param name="sensors">An array of the sensors that are being calibrated.
        /// Each element of the array should be between 0 and 27.</param>
        public void SensorStartCalibratePeak(Int16[] sensors, JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.SensorStartCalibratePeekURL, sensors, typeof(Int16[]), typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Sensor peek reset
        /// </summary>
        /// <param name="sensors">Sensors to reset</param>
        public void SensorPeekReset(Int16[] sensors, JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.SensorPeekResetURL, sensors, typeof(Int16[]), typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Enables  a sensor
        /// </summary>
        /// <param name="sensorId">The id of the sensor to enable</param>
        /// <param name="callback">The callback to call on completion</param>
        /// <param name="auth">The username of the user tyring to perform the request</param>
        public void SensorEnable(Int16 sensorId, JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.SensorEnableURL, sensorId, typeof(UInt16), typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Disables  a sensor
        /// </summary>
        /// <param name="sensorId">The id of the sensor to disable</param>
        /// <param name="callback">The callback to call on completion</param>
        /// <param name="auth">The username of the user tyring to perform the request</param>
        public void SensorDisable(Int16 sensorId, JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.SensorDisableURL, sensorId, typeof(UInt16), typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Gets the current status of engine learning
        /// </summary>
        /// <returns>Engine learning status</returns>
        public IAsyncResult EngineLearningStatus(JsonWebClient.WebServiceObjectsCallback callback)
        {
            return JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.EngineLearningURL, typeof(EngineLearningStatus), callback);
        }

        /// <summary>
        /// Get Diagnostics information
        /// </summary>
        /// <returns>Diagnostics information</returns>
        public IAsyncResult GetDiagnostics(JsonWebClient.WebServiceObjectsCallback callback)
        {
            return JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.DiagnosticsURL, typeof(Diagnostics), callback);
        }

        /// <summary>
        /// Sets trend configuration
        /// </summary>
        public IAsyncResult SaveTrendConfiguration(JsonWebClient.WebServiceObjectsCallback callback, TrendConfiguration configuration, string auth)
        {
            return JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.TrendConfigurationURL, configuration, typeof(TrendConfiguration), null, callback, auth);
        }

        /// <summary>
        /// Get trend configuration
        /// </summary>
        public IAsyncResult LoadTrendConfigration(uint slot, JsonWebClient.WebServiceObjectsCallback callback)
        {
            //Format up the URI so the slot is included in the request.
            string uri = string.Format("{0}/{1}", UriPaths.TrendConfigurationURL, slot);
            return JsonWebClient.ReadJsonDataObjects(JsonAddress + uri, typeof(TrendConfiguration), callback);
        }

        /// <summary>
        /// Save temperature setting
        /// </summary>
        public IAsyncResult SaveTemperatureSetting(JsonWebClient.WebServiceObjectsCallback callback, TemperatureConfiguration configuration, string auth)
        {
            return JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.TemperatureConfigurationSetURL, configuration, typeof(WebServiceObjects.TemperatureConfiguration), null, callback, auth);
        }
        
        /// <summary>
        /// Get trend configuration
        /// </summary>
        public IAsyncResult GetTemperatureSetting(JsonWebClient.WebServiceObjectsCallback callback)
        {
            //Format up the URI so the slot is included in the request.
            return JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.TemperatureConfigurationGetURL, typeof(TemperatureConfiguration), callback);            
        }

        /// <summary>
        /// Start the surveyor test
        /// </summary>
        public IAsyncResult SurveyorTestStart(JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            return JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.StartSurveyorURL, null, null, typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Stop the surveyor test
        /// </summary>
        public IAsyncResult SurveyorTestStop(JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            return JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.StopSurveyorURL, null, null, typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Read surveyor data
        /// </summary>
        public IAsyncResult SurveyorTestPeek(uint alarmThreshold, uint slowdownThreshold, JsonWebClient.WebServiceObjectsCallback callback)
        {
            return JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.SurveyorTestPeekURL + "?ALevel=" + alarmThreshold + "&SLevel=" + slowdownThreshold, typeof(SensorSurveyPeek), callback);
        }

        /// <summary>
        /// Gets the Sensor Replacement Status
        /// </summary>
        /// <param name="callback"></param>
        /// <param name="errorCallback"></param>
        public IAsyncResult GetSensorReplaceState(JsonWebClient.WebServiceObjectsCallback callback)
        {
            return JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.GetSensorReplaceStateURL, typeof(SensorReplacementStatus[]), callback);
        }

        /// <summary>
        /// Starts sensor replacement for a sensor
        /// </summary>
        /// <param name="sensorId">The id of the sensor to start replacing</param>
        /// <param name="failureDate">The date that the sensor failed</param>
        /// <param name="callback"></param>
        /// <param name="auth"></param>
        /// <returns></returns>
        public void StartSensorReplace(Int16 sensorId, DateTime failureDate, JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            string url = string.Format(JsonAddress + UriPaths.StartSensorReplaceURL, sensorId);
            string date = failureDate.ToString("yyy-MM-dd");
            JsonWebClient.WriteJsonDataObjects(url, date, typeof(string), typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Cancels a sensor replacement
        /// </summary>
        /// <param name="sensorId"></param>
        /// <param name="callback"></param>
        /// <param name="auth"></param>
        public void CancelSensorReplace(Int16 sensorId, JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            string url = string.Format(JsonAddress + UriPaths.CancelSensorReplaceURL, sensorId);
            JsonWebClient.WriteJsonDataObjects(url, null, null, typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Downloads the replacement data for a sensor
        /// </summary>
        /// <param name="sensorId"></param>
        /// <param name="callback"></param>
        /// <returns></returns>
        public IAsyncResult DownloadSensorReplacementData(Int16 sensorId, JsonWebClient.WebServiceStreamCallback callback)
        {
            string url = string.Format(JsonAddress + UriPaths.DownloadSensorReplacementData, sensorId);
            return JsonWebClient.ReadStreamObject(url, callback);
        }

        /// <summary>
        /// Downloads a report zip file from the web services
        /// </summary>
        /// <param name="reportName">The name of the report to download</param>
        /// <param name="callback">The function to call when the download is complete.</param>
        /// <returns></returns>
        public IAsyncResult DownloadReport(string reportName, JsonWebClient.WebServiceStreamCallback callback)
        {
            string url = string.Format(JsonAddress + UriPaths.DownloadReport, reportName);
            return JsonWebClient.ReadStreamObject(url, callback);
        }

        /// <summary>
        /// Uploads the sensor replacement file to the Framework
        /// </summary>
        /// <param name="sensorId">Id of the sensor to upload data for</param>
        /// <param name="callback"></param>
        /// <returns></returns>
        public IAsyncResult UploadSensorReplacementData(string sensorReplacement, JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            string url = JsonAddress + UriPaths.UploadSensorReplacementData;
            return JsonWebClient.WriteJsonDataObjects(url, sensorReplacement, typeof(string), typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Starts sensor replacement average for a sensor
        /// </summary>
        /// <param name="sensorId">The id of the sensor to start replacing</param>
        /// <param name="callback"></param>
        /// <param name="auth"></param>
        /// <returns></returns>
        public void StartSensorAverage(Int16 sensorId, JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            string url = string.Format(JsonAddress + UriPaths.StartSensorReplaceAverageURL, sensorId);
            JsonWebClient.WriteJsonDataObjects(url, null, null, typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Turns on the alarm
        /// </summary>
        public IAsyncResult AlarmOn(uint alarmId, JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            return JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.AlarmOn, alarmId, typeof(uint), typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Turns off the alarm
        /// </summary>
        public IAsyncResult AlarmOff(uint alarmId, JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            return JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.AlarmOff, alarmId, typeof(uint), typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Turns on alarm test mode
        /// </summary>
        public IAsyncResult AlarmTestModeOn(JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            return JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.AlarmTestModeOn, null, null, typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Turns off alarm test mode
        /// </summary>
        public IAsyncResult AlarmTestModeOff(JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            return JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.AlarmTestModeOff, null, null, typeof(Authorised), callback, auth);
        }

        public IAsyncResult EngineLearnVerification(string code, JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            return JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.EngineLearningVerificationURL, code, typeof(string), typeof(Authorised), callback, auth);
        }

        public IAsyncResult DownloadEventLog(JsonWebClient.WebServiceStreamCallback callback)
        {
            return JsonWebClient.ReadStreamObject(JsonAddress + UriPaths.EventLogExportURL, callback);
        }

        public IAsyncResult DownloadTemperature(JsonWebClient.WebServiceStreamCallback callback)
        {
            return JsonWebClient.ReadStreamObject(JsonAddress + UriPaths.TemperatureExportURL, callback);
        }

        public IAsyncResult Download(string url, JsonWebClient.WebServiceStreamCallback callback)
        {
            return JsonWebClient.ReadStreamObject(url, callback);
        }

        public IAsyncResult DownloadSpeedComp(JsonWebClient.WebServiceObjectsCallback callback)
        {
            return JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.SpeedCompURL, typeof(DownloadOperation), callback);
        }

        public IAsyncResult DownloadSystemExport(JsonWebClient.WebServiceObjectsCallback callback, bool codeNeeded)
        {
            string url = JsonAddress + string.Format(UriPaths.SystemExportURL, codeNeeded.ToString());
            return JsonWebClient.ReadJsonDataObjects(url, typeof(DownloadOperation), callback);
        }

        /// <summary>
        /// Returns the live engine data
        /// </summary>
        /// <returns>Engine trend data</returns>
        public IAsyncResult GetEngineTrendData(JsonWebClient.WebServiceObjectsCallback callback,
            DateTime end, Int64 span, string SensorList, string SensorDeviationList, string CylinderList,
            string CylinderDeviationList, string TemperatureList, bool SLEM, bool WIOActivity,
            bool WIOPPM, bool WIOTemp, bool RPM, bool CPPMa, bool CPPPcnt, Int64 totalTimeSpan, bool export = false, bool highRes = false)
        {
            StringBuilder query = new StringBuilder("/");
            query.AppendFormat("{0}/", ConvertDateTimeToURLTime(end));
            query.AppendFormat("{0}?", span);

            if (SensorList != null)
            {
                query.AppendFormat("Sensor={0}&", SensorList);
            }
            if (SensorDeviationList != null)
            {
                query.AppendFormat("SensorDeviation={0}&", SensorDeviationList);
            }
            if (CylinderList != null)
            {
                query.AppendFormat("Cylinder={0}&", CylinderList);
            }
            if (CylinderDeviationList != null)
            {
                query.AppendFormat("CylinderDeviation={0}&", CylinderDeviationList);
            }
            if (TemperatureList != null)
            {
                query.AppendFormat("Temperature={0}&", TemperatureList);
            }
            query.AppendFormat("SLEM={0}&", SLEM);
            query.AppendFormat("WIOActivity={0}&", WIOActivity);
            query.AppendFormat("WIOPPM={0}&", WIOPPM);
            query.AppendFormat("WIOTemp={0}&", WIOTemp);
            query.AppendFormat("RPM={0}&", RPM);
            query.AppendFormat("CPPMA={0}&", CPPMa);
            query.AppendFormat("CPPPCNT={0}&", CPPPcnt);
            query.AppendFormat("TotalTimeSpan={0}", totalTimeSpan);

            if (export)
            {
                query.AppendFormat("&High={0}", highRes);
                return JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.EngineTrendDataExportURL + query, typeof(DownloadOperation), callback);
            }
            else
            {
                return JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.EngineTrendDataURL + query, typeof(string), callback);
            }
        }

        /// <summary>
        /// Gets the trend data that has been currently processed
        /// </summary>
        /// <param name="callback">The callback method used process the reponse</param>
        /// <param name="sessionId">The id of the session to get the data for</param>
        /// <returns></returns>
        public IAsyncResult GetTrendProgress(JsonWebClient.WebServiceObjectsCallback callback, string sessionId)
        {
            return JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.EngineTrendDataProcessedURL + "/" + sessionId, typeof(EngineTrendResult), callback);
        }

        public IAsyncResult DeleteTrendProgress(string sessionId)
        {
            return JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.EngineTrendDataStopProcessingRL, sessionId, typeof(string), typeof(bool), null);
        }

        public IAsyncResult GetTrendExportProgress(JsonWebClient.WebServiceObjectsCallback callback, string sessionId)
        {
            return JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.EngineTrendExportProgressURL + "/" + sessionId, typeof(DownloadOperation), callback);
        }

        public static String ConvertDateTimeToURLTime(DateTime date)
        {
            return String.Format("{0:D4}{1:D2}{2:D2}{3:D2}{4:D2}{5:D2}",
                date.Year, date.Month, date.Day, date.Hour, date.Minute, date.Second);
        }

        /// <summary>
        /// Starts a report
        /// </summary>
        /// <returns>True if report started, False if not</returns>
        public IAsyncResult StartReport(JsonWebClient.WebServiceObjectsCallback callback,
            string startDate, string endDate, bool allEvents, bool sensorAbsolute,
            bool sensorDeviation, bool cylinderAbsolute, bool cylinderDeviation,
            bool singleSensor, bool cylinderSum, bool mBNSum, string channels,
            string reportType, int numActiveChannels, bool enableData)
        {
            StringBuilder query = new StringBuilder("?");

            query.AppendFormat("StartDate={0}&", startDate);
            query.AppendFormat("EndDate={0}&", endDate);
            query.AppendFormat("AllEvents={0}&", allEvents);
            query.AppendFormat("SensorAbsolute={0}&", sensorAbsolute);
            query.AppendFormat("SensorDeviation={0}&", sensorDeviation);
            query.AppendFormat("CylinderAbsolute={0}&", cylinderAbsolute);
            query.AppendFormat("CylinderDeviation={0}&", cylinderDeviation);
            query.AppendFormat("SingleSensor={0}&", singleSensor);
            query.AppendFormat("CylinderSum={0}&", cylinderSum);
            query.AppendFormat("MBNSum={0}&", mBNSum);
            query.AppendFormat("Channels={0}&", channels);
            query.AppendFormat("Type={0}&", reportType);
            query.AppendFormat("NumberOfActiveChannels={0}&", numActiveChannels);
            query.AppendFormat("EnableData={0}", enableData);

            return JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.StartReport + query, typeof(ReportProgress), callback);
        }


        /// <summary>
        /// Gets the percentage complete of a report. 
        /// </summary>
        /// <param name="callback"></param>
        /// <returns></returns>
        public IAsyncResult ReportProgress(JsonWebClient.WebServiceObjectsCallback callback)
        {
            return JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.ReportProgress, typeof(ReportProgress), callback);
        }

        /// <summary>
        /// Resets the comms stats stored on the core.
        /// </summary>
        /// <param name="callback"></param>
        /// <param name="auth"></param>
        /// <returns></returns>
        public IAsyncResult ResetCommStats(JsonWebClient.WebServiceObjectsCallback callback, string auth)
        {
            return JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.ResetCommStats, null, null, typeof(Authorised), callback, auth);
        }

        /// <summary>
        /// Function to convert an array of to a comma seprerated string
        /// </summary>
        /// <param name="a">The string array to convert</param>
        /// <returns>A string array converted to a CSV</returns>
        private string ArrayToCommaSeperatedString(string[] a)
        {
            StringBuilder csvString = new StringBuilder();
            int length = a.Length;
            for (int i = 0; i < length; i++)
            {
                if (i == 0)
                    csvString.AppendFormat("{0}", a[i]);
                else
                    csvString.AppendFormat(",{0}", a[i]);
            }
            return csvString.ToString();
        }

        /// <summary>
        /// Gets the list of Trend Configurations from the Web Service
        /// </summary>
        /// <param name="callback">The callback that will handle the procesing of the list.</param>
        /// <returns>A handle to the web request</returns>
        public IAsyncResult GetTrendConfigurations(JsonWebClient.WebServiceObjectsCallback callback)
        {
            return JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.TrendConfigurationsURL, typeof(string[]), callback);
        }


        /// <summary>
        /// Downloads the web page capture from the Web Server
        /// </summary>
        /// <returns></returns>
        public IAsyncResult CaptureWebPage(string id, int width, int height, JsonWebClient.WebServiceStreamCallback callback)
        {
            string url = string.Format(JsonAddress + UriPaths.WebPageScreenCaptureURL, id, width, height);
            return JsonWebClient.ReadStreamObject(url, callback);
        }
    }
}
