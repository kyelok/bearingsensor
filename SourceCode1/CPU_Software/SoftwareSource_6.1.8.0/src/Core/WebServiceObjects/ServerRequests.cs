/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.IO;
using System.Net;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Threading;

namespace WebServiceObjects
{
    /// <summary>
    /// Wrapper class which performs JSON operations on the AMOT web server
    /// </summary>
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
        /// Reads the list of user present within the system
        /// </summary>
        /// <returns>An array of users currently assigned in the system</returns>
        public User[] GetUsersList()
        {
            return (User[])JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.ListUsersURL, typeof(WebServiceObjects.User[]));
        }

        /// <summary>
        /// Returns the live engine data
        /// </summary>
        /// <returns>Engine data</returns>
        public EngineData GetEngineLiveData()
        {
            return (EngineData)JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.EngineLiveDataURL, typeof(WebServiceObjects.EngineData));
        }        

        private string ArrayToCommaSeperatedString(string[] Sensor)
        {
            StringBuilder csvString = new StringBuilder();
            int length = Sensor.Length;
            for (int i = 0; i < length; i++)
            {
                if (i == 0)
                    csvString.AppendFormat("{0}", Sensor[i]);
                else
                    csvString.AppendFormat(",{0}", Sensor[i]);
            }
            return csvString.ToString();
        }

        /// <summary>
        /// Returns the live engine data
        /// </summary>
        /// <returns>Engine data</returns>
        public EngineAlarm[] GetEngineAlarms()
        {
            return (EngineAlarm[])JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.EngineAlarmsURL, typeof(WebServiceObjects.EngineAlarm[]));
        }

        /// <summary>
        /// Acknowledge engine alarms
        /// </summary>
        /// <param name="alarms">Alarms to acknowledge</param>
        public void EngineAlarmsAck(Int16[] alarms, string auth)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.EngineAlarmsAckURL, alarms, typeof(Int16[]), null, auth);
        }

        /// <summary>
        /// Ignore engine alarms
        /// </summary>
        /// <param name="alarms">Alarms to ignore</param>
        public void EngineAlarmsIgnore(Int16[] alarms, string auth)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.EngineAlarmsIgnoreURL, alarms, typeof(Int16[]), null, auth);
        }

        /// <summary>
        /// Returns a password reset code which will be sent to AMOT for authenication
        /// </summary>
        /// <returns>The password reset code</returns>
        public string GetPasswordResetCode()
        {
            Reset reset = (Reset)JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.ResetUsersURL, typeof(WebServiceObjects.Reset));
            return reset.Code;
        }

        /// <summary>
        /// Read the sensor setup
        /// </summary>
        /// <returns>SensorSetup object</returns>
        public SensorSetup GetSensorSetup()
        {
            SensorSetup sensorSetup = (SensorSetup)JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.ReadSensorSetupURL, typeof(WebServiceObjects.SensorSetup));
            return sensorSetup;
        }

        /// <summary>
        /// Causes the passwords within the system to be reset to factory default. 
        /// </summary>
        /// <param name="authCode">Will have been provided by AMOT to reset the system</param>
        /// <exception cref="System.AccessViolationException">Thrown if the authCode is invalid</exception>
        public void ResetSystemPasswords(string authCode)
        {   
            Reset reset = new Reset { Code = authCode, PasswordsReset = false };
            reset = (Reset)JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.ResetUsersURL, reset, typeof(WebServiceObjects.Reset), typeof(WebServiceObjects.Reset));
            if (reset == null)
                throw new WebException("Unable to access server to reset passwords");
            if (reset.PasswordsReset == false)
                throw new AccessViolationException("Invalid password");
        }

        /// <summary>
        /// Set sensor mode
        /// </summary>
        /// <param name="mode">Mode to set</param>
        /// <returns>true if success otherwise false</returns>
        public Boolean SetSensorMode(SensorDCMode mode, string auth)
        {
            return (Boolean)JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.SensorModeURL, mode, typeof(Int16), typeof(Boolean), auth);
        }

        /// <summary>
        /// Starts sensor peek calibration
        /// </summary>
        /// <param name="sensors">An array of the sensors to calibrate.  Each element of the array should be between 0 and 28.</param>
        public void SensorStartCalibratePeek(Int16[] sensors, string auth)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.SensorStartCalibratePeekURL, sensors, typeof(Int16[]), null, auth);
        }

        /// <summary>
        /// Monitors the sensor peek calibration
        /// </summary>
        /// <param name="sensors">An array of the sensors that are being calibrated.
        /// Each element of the array should be between 0 and 27.</param>
        /// <returns>An array containing the sensors that are still being calibrated.</returns>
        public Int16[] SensorMonitorCalibratePeek(Int16[] sensors, string auth)
        {
            return (Int16[])JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.SensorMonitorCalibratePeekURL, sensors, typeof(Int16[]), typeof(Int16[]), auth);
        }
        /// <summary>
        /// Start sensor order calibration
        /// </summary>
        public void SensorCalibrationOrder(string auth)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.SensorCalibrationOrderURL, null, null, null, auth);
        }

        /// <summary>
        /// Sensor peek reset
        /// </summary>
        /// <param name="sensors">List of sensors to reset. If null then all sensors reset.</param>
        public void SensorPeekReset(Int16[] sensors, string auth)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.SensorPeekResetURL, sensors, typeof(Int16[]), null, auth);
        }

        /// <summary>
        /// Start the engine learning process
        /// </summary>
        public void StartEngineLearning(string auth)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.StartEngineLearningURL, null, null, null, auth);
        }

        /// <summary>
        /// Stop the engine learning process
        /// </summary>
        public void StopEngineLearning(string auth)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.StopEngineLearningURL, null, null, null, auth);
        }

        /// <summary>
        /// Gets the current status of engine learning
        /// </summary>
        /// <returns>Engine learning status</returns>
        public EngineLearningStatus EngineLearningStatus()
        {
            return (EngineLearningStatus)JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.EngineLearningURL, typeof(EngineLearningStatus));
        }

        /// <summary>
        /// Get Diagnostics information
        /// </summary>
        /// <returns>Diagnostics information</returns>
        public Diagnostics GetDiagnostics()
        {
            return (Diagnostics)JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.DiagnosticsURL, typeof(Diagnostics));
        }

        public EventLogResult GetEventLog(int offset, int limit)
        {
            return (EventLogResult)JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.EventLogURL + "?offset=" + offset + "&limit=" + limit, typeof(EventLogResult));
        }

        public void CancelSensorReplace(short sensor, string auth)
        {
            string url = string.Format(UriPaths.CancelSensorReplaceURL, sensor);

            JsonWebClient.WriteJsonDataObjects(JsonAddress + url, null, null, null, auth);
        }

        public void StartSensorReplace(short sensor, string auth)
        {
            string url;

            url = string.Format(UriPaths.StartSensorReplaceURL, sensor);

            JsonWebClient.WriteJsonDataObjects(JsonAddress + url, DateTime.UtcNow.ToString("yyyy-MM-dd"), typeof(string), null, auth);
        }

        public void StartSensorReplaceAverage(short sensor, string auth)
        {
            string url = string.Format(UriPaths.StartSensorReplaceAverageURL, sensor);

            JsonWebClient.WriteJsonDataObjects(JsonAddress + url, null, null, null, auth);
        }

        public SensorReplacementStatus []GetSensorReplaceState()
        {
            return (SensorReplacementStatus[])JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.GetSensorReplaceStateURL, typeof(SensorReplacementStatus[]));
        }

        public string Login(string username, string password)
        {
            return (string)JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.Login + "?user=" + username + "&password=" + password, typeof(string));
        }

        public Temperature GetTemperature()
        {
            return (Temperature)JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.DiagnosticsURL, typeof(Temperature));
        }

        public TemperatureConfiguration GetTemperatureLive()
        {
            return (TemperatureConfiguration)JsonWebClient.ReadJsonDataObjects(JsonAddress + UriPaths.TemperatureConfigurationGetURL, typeof(TemperatureConfiguration));
        }

        /// <summary>
        /// Save temperature
        /// </summary>
        public void SetTemperatureConfiguration(TemperatureConfiguration temperatureConfiguration)
        {
            JsonWebClient.WriteJsonDataObjects(JsonAddress + UriPaths.TemperatureConfigurationSetURL, temperatureConfiguration, typeof(WebServiceObjects.TemperatureConfiguration), null, null);
        }
    }
}
