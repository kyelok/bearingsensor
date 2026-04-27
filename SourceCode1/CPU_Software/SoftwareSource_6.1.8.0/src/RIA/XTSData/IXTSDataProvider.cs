/* 
 * IXTSDataProvider.cs
 * 
 * Defines the data interface for services/applications using the
 * silverlight UI and XTSData classes.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 26/01/2012
 */

using System;
using System.Collections.Generic;
using System.ComponentModel;

namespace XTS
{
    /// <summary>
    /// Controls special data collection states within the data provider.
    /// </summary>
    /// <remarks>Broadly speaking these map to the UI screens.</remarks>
    public enum XTSMode
    {
        Default,
        SensorReplace,
        Diagnostics,
        SurveyorTest,
        Trends,
        SensorSetup,
        Learning, 
        Reporting,
        Temperature
    }

    /// <summary>
    /// List of possible errors to report to the user
    /// </summary>
    public enum XTSErrors
    {
        UnhandledException,
        UnauthorisedUser,
        General,
        CommsFailure,
        EngineLearnVefificationCodeIncorrect,
        SensorReplaceImportFileError,
        FileDownloadError,
        RegistrationError
        // TODO: Add errors
    }

    /// <summary>
    /// Callback Delegate for operations that should show a busy indicator.
    /// </summary>
    /// <param name="busy">True will show the busy indicator, false hides it.</param>
    public delegate void XTSBusyDelegate(bool busy);

    /// <summary>
    /// Callback Delegate for operations that should show a progress bar.
    /// </summary>
    /// <param name="percent">How far through the operation it is.  100+ will close the progress bar.</param>
    public delegate void XTSProgressDelegate(uint percent);
    
    /// <summary>
    /// Callback Delegate for asynchronous responses
    /// </summary>
    /// <param name="result">Wether the operation succeeded or not</param>
    public delegate void XTSResultDelegate(bool success);

    /// <summary>
    /// Callback for general errors.
    /// </summary>
    /// <param name="errorCode">The error the occurred.</param>
    /// <param name="parameters">Generic paramters for the type of error that occurred.</param>
    public delegate void XTSErrorDelegate(XTSErrors errorCode, object [] parameters);

    /// <summary>
    /// Interface for services/applications using the silverlight UI and XTSData classes.
    /// </summary>
    public interface IXTSDataProvider
    {
        /// <summary>
        /// SPU Update time, status message etc.
        /// </summary>
        XTSGeneral General
        {
            get;
        }

        /// <summary>
        /// Reflects the architecture of the engine, cylinders and other components etc.
        /// </summary>
        /// <remarks>Includes sensors as a collection property</remarks>
        XTSEngine EngineData
        {
            get;
        }

        /// <summary>
        /// The report progress etc.
        /// </summary>
        XTSReport ReportData
        {
            get;
        }

        /// <summary>
        /// List of Alarms that need to be displayed in the UI
        /// </summary>
        XTSDataCollection<XTSAlarm> Alarms
        {
            get;
        }

        /// <summary>
        /// List of the Event Logs to be displayed in the UI
        /// </summary>
        XTSDataCollection<XTSAlarm> EventLogs
        {
            get;
        }

        /// <summary>
        /// The configurations for trend collections and current trends info and history
        /// </summary>
        XTSTrends Trends
        {
            get;
        }

        /// <summary>
        /// The version information for the system, firmware etc.
        /// </summary>
        XTSVersion VersionInfo
        {
            get;
        }

        /// <summary>
        /// System learning procedure
        /// </summary>
        XTSLearning Learning
        {
            get;
        }

        /// <summary>
        /// System diagnostics
        /// </summary>
        XTSDiagnostics Diagnostics
        {
            get;
        }

        /// <summary>
        /// Surveyor test data
        /// </summary>
        XTSSurveyorTest SurveyorTest
        {
            get;
        }

        /// <summary>
        /// Temperature data
        /// </summary>
        XTSEngineTemperature TemperatureData
        {
            get;
        }

        /// <summary>
        /// The users of the system
        /// </summary>
        XTSUserData UserData
        {
            get;
        }

        /// <summary>
        /// Acknowledges an alarm
        /// </summary>
        /// <param name="alarmId">The alarm Id to acknowledge</param>
        /// <param name="callback">The callback</param>
        void AcknowledgeAlarm(int alarmId, XTSResultDelegate callback);

        /// <summary>
        /// Ignore an alarm
        /// </summary>
        /// <param name="alarmId">The alarm Id to ignore</param>
        /// <param name="callback">The callback</param>
        void IgnoreAlarm(int alarmId, XTSResultDelegate callback);

        /// <summary>
        /// Requests the DC mode
        /// </summary>
        /// <param name="mode">Mode to request.</param>
        void SetSensorMode(XTSEngine.XTSSensorMode mode, XTSResultDelegate callback);

        /// <summary>
        /// Sets the range of the trend data to be displayed.
        /// </summary>
        /// <param name="end">The last date time to be shown.</param>
        /// <param name="durationMinutes">The number of minutes to show.</param>
        /// <param name="realtime">If set to true, the end parameter is ignored and only the latest data is shown.</param>
        void SetTrendRange(DateTime end, int durationMinutes, bool realtime);

        /// <summary>
        /// Updates the trend configuration
        /// </summary>
        /// <param name="toUpdate">List of trends to update/add</param>
        /// <param name="toRemove">List of trends to remove from the config</param>
        void UpdateTrendConfig(List<XTSTrendDetail> toUpdate, List<XTSTrendDetail> toRemove);

        /// <summary>
        /// Adds a trend into the currently active trend config list.
        /// If it exists, the details of the trend will be updated if updateDetails is true.
        /// </summary>
        /// <param name="trend">Description of the trend</param>
        /// <param name="trend">Trend type</param>
        /// <param name="updateDetails">Specifies if the details should be updated if the trend config already contains this trend</param>
        void AddTrendToConfig(XTSTrendDetail trend, bool updateDetails);

        /// <summary>
        /// Removes a trend from the currently active trend config list.
        /// </summary>
        /// <param name="trend">Description of the trend</param>
        /// <param name="trend">Trend type</param>
        void RemoveTrendFromConfig(XTSTrendDetail trend);

        /// <summary>
        /// Removes all trends from the current configuration.
        /// </summary>
        void ClearTrendConfig();

        /// <summary>
        /// Populates the EventLog collection with the specified events
        /// </summary>
        /// <param name="index">The index of the event to get</param>
        /// <param name="count">Number of events to get</param>
        void GetEventLog(int index, int count);

        /// <summary>
        /// Stores the current trend config into one of the presets.
        /// </summary>
        /// <param name="slot">The slot to store the current trend in.</param>
        /// <param name="description">The description to set of the saved config.</param>
        void SaveCurrentTrend(uint slot, string description);

        /// <summary>
        /// Replaces the current list of trends with those from the config
        /// </summary>
        /// <param name="slot">The slot to load the config from.</param>
        void LoadCurrentTrend(uint slot);

        /// <summary>
        /// Exports the current trend to the specified file.
        /// </summary>
        /// <param name="fileStream">The filestream opened to write the data to.</param>
        /// <param name="highRes">The quality of the data, true = high detail</param>
        void ExportCurrentTrend(System.IO.Stream fileStream, bool highRes);

        /// <summary>
        /// Compares the password provided with that of the user specified.
        /// </summary>
        /// <remarks>Because data providers will perform this in different ways, either
        /// from local data, or communicating with a server, it needs to be
        /// implemented in the data provider and not in the XTSUser class</remarks>
        /// <param name="user">User to check the password of</param>
        /// <param name="password">The password to verify</param>
        /// <param name="callback">Callback function for when the operation has completed</param>
        void UserLogOn(XTSUser user, string password, XTSResultDelegate callback);

        /// <summary>
        /// Log off the current user 
        /// </summary>
        /// <param name="callback">Callback function for when the operation has completed</param>
        void UserLogOff(XTSResultDelegate callback);
        
        /// <summary>
        /// Stores the learning verification file.
        /// </summary>
        /// <param name="fileStream">Stream to save data to</param>
        void SaveLearningVerification(System.IO.Stream fileStream);

        /// <summary>
        /// Allows user to feedback that AMOT have verified the learning data
        /// by entering a code generated at time of learning.
        /// </summary>
        /// <param name="code">The code entered by the user</param>
        /// <param name="callback">Callback to inform user that code is good/bad</param>
        void EnterLearningVerificationCode(string code, XTSResultDelegate callback);

        /// <summary>
        /// Stores the system status CSV file.
        /// </summary>
        /// <param name="fileStream">Stream to save data to</param>
        void SaveSystemStatus(System.IO.Stream fileStream);

        /// <summary>
        /// Stores the event log csv file.
        /// </summary>
        /// <param name="fileStream">Stream to save data to</param>
        void SaveEventLog(System.IO.Stream fileStream);

        /// <summary>
        /// Stores the temperature setting csv file.
        /// </summary>
        /// <param name="fileStream">Stream to save data to</param>
        void SaveTemperatureSetting(System.IO.Stream fileStream);

        /// <summary>
        /// Saves a file to the specified path that includes the data
        /// </summary>
        /// <param name="fileStream">Stream to save data to</param>
        void SaveSpeedAccumulatedTableConfig(System.IO.Stream fileStream);

        /// <summary>
        /// Saves a file to the specified path that includes the data
        /// </summary>
        /// <param name="cylinder">The cylinder that the sensor is in</param>
        /// <param name="sensor">The sensor within the cylinder to export data of</param>
        /// <param name="fileStream">Stream to save data to</param>
        void SaveReplacementData(uint cylinder, uint sensor, System.IO.Stream fileStream);

        /// <summary>
        /// Reads the specified file and sets the relevant data for the specified sensor
        /// </summary>
        /// <param name="cylinder">The cylinder that the sensor is in</param>
        /// <param name="sensor">The sensor within the cylinder to import data of</param>
        /// <param name="fileStream">Stream to read data from</param>
        void ImportReplacementData(uint cylinder, uint sensor, System.IO.FileStream fileStream);

        /// <summary>
        /// Starts the sensor replace procedure on the specified sensor
        /// </summary>
        /// <param name="cylinder">The cylinder that the sensor is in</param>
        /// <param name="sensor">The sensor within the cylinder to replace</param>
        /// <param name="failure">The failure date entered by the user</param>
        void ReplaceSensor(uint cylinder, uint sensor, DateTime failure);

        /// <summary>
        /// Informs the backend that the sensors in slowroll state have undergone slowroll
        /// procedure and are ready for 50 hour averaging.
        /// </summary>
        /// <param name="sensors">Sensors that completed the operation</param>
        void ReplaceSensorSlowrollComplete(List<XTSSensor.XTSSensorID> sensors);

        /// <summary>
        /// Cancels a running sensor replacement
        /// </summary>
        /// <param name="cylinder">The cylinder that the sensor is in</param>
        /// <param name="sensor">The sensor within the cylinder to cancel the replacement of</param>
        void CancelReplaceSensor(uint cylinder, uint sensor);

        /// <summary>
        /// Requests that a surveyor alarm/slowdown test Starts/pauses/stops.
        /// </summary>
        /// <param name="mode">The requested state</param>
        /// <param name="callback">Callback function for when operation has completed</param>
        void SetSurveyorTestMode(XTSSurveyorTest.SurveyorTestState mode, XTSResultDelegate callback);

        /// <summary>
        /// Sets the thresholds used during alarm/slowdown surveyor test
        /// </summary>
        /// <param name="alarmThreshold">Alarm threshold level</param>
        /// <param name="slowdownThreshold">Slowdown threshold level</param>
        void SetSurveyorAlarmThresholds(uint alarmThreshold, uint slowdownThreshold);

        /// <summary>
        /// Detects the cylinder firing order
        /// </summary>
        void DetectCylinderFiringOrder();

        /// <summary>
        /// Starts the learning procedure
        /// </summary>
        void StartLearningProcedure();

        /// <summary>
        /// Cancels the learning procedure if it is currently running
        /// </summary>
        void CancelLearningProcedure();

        /// <summary>
        /// Resets the peak for the specified sensor
        /// </summary>
        void ResetSensorReadingPeak(uint cylIndex, uint senIndex);
        
        /// <summary>
        /// Resets the peak for all sensors
        /// </summary>
        void ResetSensorReadingPeak();

        /// <summary>
        /// Calls peak calibration with a list of sensors to be calibrated.
        /// </summary>
        /// <param name="sensors">List of sensors</param>
        /// <param name="callback">Callback </param>
        void PeakCalibration(List<XTSSensor.XTSSensorID> sensors, XTSResultDelegate callback);

        /// <summary>
        /// Resets the SPU communication statistics
        /// </summary>
        void ResetCommStats();

        /// <summary>
        /// Enables or disables a specific sensor
        /// </summary>
        /// <param name="sensor">Sensor to enable/disable</param>
        /// <param name="enabled">True enables sensor, false disables</param>
        void SetSensorEnabled(XTSSensor.XTSSensorID sensor, bool enabled);

        /// <summary>
        /// Controls special states within the data provider for certain types of data reception.
        /// </summary>
        /// <param name="mode">The mode that the data provider should be in</param>
        void SetMode(XTSMode mode);

        /// <summary>
        /// Sets the SPU into test output mode or not
        /// </summary>
        /// <param name="enabled">true to set in this mode</param>
        void SetTestOutputMode(bool enabled, XTSResultDelegate callback);

        /// <summary>
        /// Asks the SPU to override the alarm output with the specified state
        /// </summary>
        /// <param name="output">The index of the alarm 0-3</param>
        /// <param name="state">True - set alarm output active</param>
        void SetAlarmOutputState(uint output, bool active);

        /// <summary>
        /// Sets a callback for reporting errors to the UI
        /// </summary>
        void SetErrorCallback(XTSErrorDelegate errorCallback);

        /// <summary>
        /// Sets the callbacks for busy/progress bar indicators
        /// </summary>
        void SetBusyCallbacks(XTSBusyDelegate busyCallback, XTSProgressDelegate progressCallback);

        /// <summary>
        /// Initialisation of the Data Provider
        /// </summary>
        void Connect(string connectString);

        /// <summary>
        /// Called on shut down to clean up the Data Provider
        /// </summary>
        void Disconnect();

        /// <summary>
        /// Obtains the surveyor Alarm and Slowdown from the engine data
        /// </summary>
        void UpdateSurveyorValues();

        /// <summary>
        /// Starts a report with configured options.
        /// </summary>
        void StartReport(string startDate, string endDate, bool allEvents, bool sensorAbsolute,
            bool sensorDeviation, bool cylinderAbsolute, bool cylinderDeviation,
            bool singleSensor, bool cylinderSum, bool mBNSum, string channels,
            string reportType, int numActiveChannels, bool enableData, XTSResultDelegate callback);

        /// <summary>
        /// Performs a peak calibration operation
        /// </summary>
        /// <param name="callback">Called when the operation completes</param>
        void UpdateSensorReplaceData(XTSResultDelegate callback);

        /// <summary>
        /// Downloads a report from the web service into
        /// a local file.
        /// </summary>
        /// <param name="reportName">The name of the report to download</param>
        /// <param name="fileStream">The filestream that the downloaded report should be saved into.</param>
        void DownloadReport(string reportName, System.IO.Stream fileStream);

        /// <summary>
        /// Update temperature
        /// </summary>
        ///         
        void SaveCurrentTemperature(XTSBearTemperature[] temperatureArray);
    }
}
