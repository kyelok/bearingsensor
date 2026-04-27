/* 
 * XTSDataProviderSimulator.cs
 * 
 * Implements the data interface for simulating data for testing the
 * silverlight UI and XTSData classes.  Also known as "marketing mode".
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 26/01/2012
 */
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Threading;
using System.Windows.Media;
using AMOTConstants;

// Define SIMULATOR_ERRORS to turn on com and general errors every 45/60 seconds. 
//#define SIMULATOR_ERRORS

namespace XTS
{
    /// <summary>
    /// Simulated data class implementation of the IXTSDataProvider interface
    /// </summary>
    public class XTSDataProviderSimulator : IXTSDataProvider
    {
        #region Cylinder/Sensor Test Data
        /// <summary>
        /// The point that a sensor state changes to alarm
        /// </summary>
        private const uint XTSSIMULATOR_SENSOR_ALARM_THRESHOLD = 400;
        /// <summary>
        /// The point that a sensor state changes to slowdown
        /// </summary>
        private const uint XTSSIMULATOR_SENSOR_SLOWDOWN_THRESHOLD = 700;
        /// <summary>
        /// The maximum that a simulated sensor reading will reach
        /// </summary>
        private const uint XTSSIMULATOR_SENSOR_MAX = 1000;
        /// <summary>
        /// Number of cylinders to simulate
        /// </summary>
        private const uint XTSSIMULATOR_CYLINDER_COUNT = 12;

        /// <summary>
        /// States of the cylinders within the system.
        /// </summary>
        public static XTSSensorStatus[] cylinderTestStates = new XTSSensorStatus[XTSSIMULATOR_CYLINDER_COUNT];

        /// <summary>
        /// Function to create the sensor states for testing
        /// </summary>
        public static void CylinderTestStatesInit()
        {
            // Init all to default
            for (uint i = 0; i < XTSDataProviderSimulator.XTSSIMULATOR_CYLINDER_COUNT; i++)
            {
                cylinderTestStates[i] = XTSSensorStatus.Normal;
            }
            // Only enable testing of extra modes for debug, final marketing release will use
            // all normal states only.
#if DEBUG
            // If we have 7 or or more, then test basic other states
            if (XTSDataProviderSimulator.XTSSIMULATOR_CYLINDER_COUNT >= 7)
            {
                cylinderTestStates[4] = XTSSensorStatus.Disabled;
                cylinderTestStates[5] = XTSSensorStatus.SensorAdjustment;
                cylinderTestStates[6] = XTSSensorStatus.PreWarning;
            }
            // If we have 12 or more cylinders, then test other sensor states
            if (XTSDataProviderSimulator.XTSSIMULATOR_CYLINDER_COUNT >= 12)
            {
                cylinderTestStates[7] = XTSSensorStatus.SensorFailureUnknown;
                cylinderTestStates[8] = XTSSensorStatus.SensorFailureNoPulse;
                cylinderTestStates[9] = XTSSensorStatus.SensorFailureLowLevel;
                cylinderTestStates[10] = XTSSensorStatus.SensorFailureHighLevel;
                cylinderTestStates[11] = XTSSensorStatus.SensorFailureRPMOOR;
            }
#endif
        }

        #endregion // Cylinder/Sensor Test Data

        #region User Passwords
        /// <summary>
        /// Used to store a user id and password within a collection
        /// </summary>
        private struct SimulatorUserPasswords
        {
            public int UserID;
            public string Password;
        }

        /// <summary>
        /// Passwords for users within the simulated system
        /// </summary>
        private List<SimulatorUserPasswords> userPasswords;



        #endregion // User Passwords

        #region Simulator internal members
        /// <summary>
        /// Callback for reporting to the UI that an error occurred.
        /// </summary>
        private XTSErrorDelegate errorCallback = null;

        /// <summary>
        /// Callback for reporting progress on certain operations
        /// </summary>
        private XTSProgressDelegate progressCallback = null;

        /// <summary>
        /// Callback for reporting system is busy for certain operations
        /// </summary>
        private XTSBusyDelegate busyCallback = null;

        #endregion // Simulator internal members

        #region IXTSDataProvider Members

        /// <summary>
        /// Internal data for General
        /// </summary>
        private XTSGeneral general;
        /// <summary>
        /// SPU Update time, status message etc.
        /// </summary>
        public XTSGeneral General
        {
            get
            {
                return this.general;
            }
        }

        /// <summary>
        /// Internal data for EngineData
        /// </summary>
        private XTSEngine engineData;
        /// <summary>
        /// Reflects the architecture of the engine, cylinders and other components etc.
        /// </summary>
        public XTSEngine EngineData
        {
            get
            {
                return this.engineData;
            }
        }

        /// <summary>
        /// The report data
        /// </summary>
        private XTSReport reportData;
        /// <summary>
        /// The report progress etc.
        /// </summary>
        public XTSReport ReportData
        {
            get
            {
                return this.reportData;
            }
        }

        /// <summary>
        /// Internal data for Alarms
        /// </summary>
        private XTSDataCollection<XTSAlarm> alarms;
        /// <summary>
        /// List of Alarms that need to be displayed in the UI
        /// </summary>
        public XTSDataCollection<XTSAlarm> Alarms
        {
            get
            {
                return this.alarms;
            }
        }

        /// <summary>
        /// List of the EventLogs that need to be displayed in the UI
        /// </summary>
        public XTSDataCollection<XTSAlarm> EventLogs
        {
            get
            {
                return this.alarms;
            }
        }

        /// <summary>
        /// The internal configurations for trend collections
        /// </summary>
        private XTSTrends trendData;
        /// <summary>
        /// The configurations for trend collections
        /// </summary>
        public XTSTrends Trends
        {
            get
            {
                return trendData;
            }
        }

        /// <summary>
        /// Internal data for VersionInfo
        /// </summary>
        private XTSVersion versionInfo;
        /// <summary>
        /// The version information for the system, firmware etc.
        /// </summary>
        public XTSVersion VersionInfo
        {
            get
            {
                return versionInfo;
            }
        }

        /// <summary>
        /// Internal data for Learning
        /// </summary>
        private XTSLearning learning;
        /// <summary>
        /// System learning procedure
        /// </summary>
        public XTSLearning Learning
        {
            get
            {
                return this.learning;
            }
        }

        /// <summary>
        /// Internal data for diagnostics
        /// </summary>
        private XTSDiagnostics diagnostics;
        /// <summary>
        /// System diagnostics
        /// </summary>
        public XTSDiagnostics Diagnostics
        {
            get
            {
                return this.diagnostics;
            }
        }

        /// <summary>
        /// Internal data for SurveyorTest
        /// </summary>
        private XTSSurveyorTest surveyorTest;
        /// <summary>
        /// Surveyor test data
        /// </summary>
        public XTSSurveyorTest SurveyorTest
        {
            get
            {
                return this.surveyorTest;
            }
        }

        /// <summary>
        /// Internal data for Temperature
        /// </summary>
        private XTSEngineTemperature temperatureData;
        /// <summary>
        /// temperature data
        /// </summary>
        public XTSEngineTemperature TemperatureData
        {
            get
            {
                return this.TemperatureData;
            }
        }

        /// <summary>
        /// The internal users collection
        /// </summary>
        private XTSUserData users;
        /// <summary>
        /// The users of the system
        /// </summary>
        public XTSUserData UserData
        {
            get
            {
                return this.users;
            }
        }

        #region Set Sensor Mode
        /// <summary>
        /// Requests the DC mode
        /// </summary>
        /// <param name="mode">Mode to request.</param>
        public void SetSensorMode(XTSEngine.XTSSensorMode mode, XTSResultDelegate callback)
        {
            Thread thread = new Thread(new ParameterizedThreadStart(this.SetSensorModeThread));
            object[] parameters = new object[2];
            parameters[0] = (object)mode;
            parameters[1] = (object)callback;
            thread.Start((object)parameters);
        }

        /// <summary>
        /// Delays setting the sensor mode to simulate data transfer times
        /// </summary>
        /// <param name="parameters">Object array.  parameters[0] - XTSEngine.XTSSensorMode sensor mode, parameters[1] - XTSResultDelegate result callback</param>
        private void SetSensorModeThread(object parameters)
        {
            Thread.Sleep(3000);
            object[] paramArray = parameters as object[];

            this.engineData.SensorMode = (XTSEngine.XTSSensorMode)paramArray[0];

            // Notify UI that this operation has succeeded
            if (paramArray[1] != null)
            {
                ((XTSResultDelegate)paramArray[1])(true);
            }
        }
        #endregion // Set Sensor Mode

        #region Trends
        /// <summary>
        /// Sets the range of the trend data to be displayed.
        /// </summary>
        /// <param name="end">The last date time to be shown.</param>
        /// <param name="durationMinutes">The number of minutes to show.</param>
        /// <param name="realtime">If set to true, the end parameter is ignored and only the latest data is shown.</param>
        public void SetTrendRange(DateTime end, int durationMinutes, bool realtime)
        {
            lock (this.trendLock)
            {
                this.trendEnd = end;
                this.trendRealTime = realtime;
                this.trendDurationMinutes = durationMinutes;
            }
            FillTrendsWithHistory();
        }

        /// <summary>
        /// Updates the trend configuration
        /// </summary>
        /// <param name="toUpdate">List of trends to update/add</param>
        /// <param name="toRemove">List of trends to remove from the config</param>
        public void UpdateTrendConfig(List<XTSTrendDetail> toUpdate, List<XTSTrendDetail> toRemove)
        {
            this.trendData.TrendConfiguration.SuspendCollectionChangeNotification = true;
            // Remove deselected items.  This will fail silently if the item isn't in the current config
            foreach (XTSTrendDetail trendDetail in toRemove)
            {
                RemoveTrendFromConfig(trendDetail);
            }
            // Add selected items to trend config.  This will preserve the order for existing trends.
            foreach (XTSTrendDetail trendDetail in toUpdate)
            {
                AddTrendToConfig(trendDetail, false);
            }
            this.trendData.TrendConfiguration.SuspendCollectionChangeNotification = false;
            this.trendData.TrendConfiguration.Refresh();
        }

        /// <summary>
        /// Adds a trend into the currently active trend config list.
        /// If it exists, the details of the trend will be updated if updateDetails is true.
        /// </summary>
        /// <param name="trend">Description of the trend</param>
        /// <param name="trend">Trend type</param>
        /// <param name="updateDetails">Specifies if the details should be updated if the trend config already contains this trend</param>
        public void AddTrendToConfig(XTSTrendDetail trend, bool updateDetails)
        {
            lock (this.trendLock)
            {
                XTSTrend tr = SearchTrendConfig(trend);
                if (tr == null)
                {
                    // If this is a new trend, then check if we need to
                    // generate a colour for it
                    if (trend.Colour == null)
                    {
                        trend.AutoColour();
                    }
                    this.trendData.TrendConfiguration.Add(new XTSTrend(trend));
                }
                else if ((updateDetails) && (trend != tr.Detail))
                {
                    // Don't need to update details if we have been sent the actual
                    // detail object of the trend

                    // Update trend details of existing trend detail
                    tr.Detail.Colour = trend.Colour;
                    tr.Detail.Description = trend.Description;
                    tr.Detail.Axis = trend.Axis;
                }
                this.trendData.ConfigChanged = true;
            }
        }

        /// <summary>
        /// Removes a trend from the currently active trend config list.
        /// </summary>
        /// <param name="trend">Description of the trend</param>
        /// <param name="trend">Trend type</param>
        public void RemoveTrendFromConfig(XTSTrendDetail trend)
        {
            lock (this.trendLock)
            {
                XTSTrend tr = SearchTrendConfig(trend);
                if (tr != null)
                {
                    this.trendData.TrendConfiguration.Remove(tr);
                }
                this.trendData.ConfigChanged = true;
            }
        }

        /// <summary>
        /// Removes all trends from the current configuration.
        /// </summary>
        public void ClearTrendConfig()
        {
            lock (this.trendLock)
            {
                this.trendData.TrendConfiguration.Clear();
                this.trendData.ConfigChanged = true;
            }
        }

        /// <summary>
        /// Populates the EventLog collection with the specified events
        /// </summary>
        /// <param name="index">The index of the event to get</param>
        /// <param name="count">Number of events to get</param>
        public void GetEventLog(int index, int count)
        {
            // Do nothing in simulator.
        }

        /// <summary>
        /// Stores the current trend config into one of the presets.
        /// </summary>
        /// <param name="slot">The slot to store the current trend in.</param>
        /// <param name="description">The description to set of the saved config.</param>
        public void SaveCurrentTrend(uint slot, string description)
        {
            lock (this.trendLock)
            {
                if (slot > 9)
                {
                    throw new ArgumentOutOfRangeException("Slot is too high!  Only support 0-9");
                }
                this.trendData.ConfigNames[slot] = description;

                // Go through the trends in the current configuration and update
                // data lists with new data
                this.trendConfigs[slot].Clear();
                foreach (XTSTrend trend in this.trendData.TrendConfiguration)
                {
                    this.trendConfigs[slot].Add(trend.Detail);
                }
                this.trendData.ConfigChanged = false;
            }
        }

        public void SaveCurrentTemperature(XTSBearTemperature[] temperatureArray)
        {
        }
        /// <summary>
        /// Replaces the current list of trends with those from the config
        /// </summary>
        /// <param name="slot">The slot to load the config from.</param>
        public void LoadCurrentTrend(uint slot)
        {
            lock (this.trendLock)
            {
                if (slot > 9)
                {
                    throw new ArgumentOutOfRangeException("Slot is too high!  Only support 0-9");
                }

                // Go through the trends in the specified configuration slot and update
                // data lists with new data
                this.trendData.TrendConfiguration.Clear();
                foreach (XTSTrendDetail trendDetail in this.trendConfigs[slot])
                {
                    this.trendData.TrendConfiguration.Add(new XTSTrend(trendDetail));
                }
                this.trendData.ConfigChanged = false;
            }
            this.FillTrendsWithHistory();
        }

        /// <summary>
        /// Exports the current trend to the specified file.
        /// </summary>
        /// <param name="fileStream">The filestream opened to write the data to.</param>
        /// <param name="highRes">The quality of the data, true = high detail</param>
        public void ExportCurrentTrend(System.IO.Stream fileStream, bool highRes)
        {
            throw new NotImplementedException();
        }
        #endregion // Trends

        #region User access functions
        /// <summary>
        /// Compares the password provided with that of the user specified.
        /// </summary>
        /// <remarks>Because data providers will perform this in different ways, either
        /// from local data, or communicating with a server, it needs to be
        /// implemented in the data provider and not in the XTSUser class</remarks>
        /// <param name="user">User to check the password of</param>
        /// <param name="password">The password to verify</param>
        /// <param name="callback">Callback function for when the operation has completed</param>
        public void UserLogOn(XTSUser user, string password, XTSResultDelegate callback)
        {
            Thread thread = new Thread(new ParameterizedThreadStart(this.UserLogOnThread));
            object[] parameters = new object[3];
            parameters[0] = (object)user;
            parameters[1] = (object)password;
            parameters[2] = (object)callback;
            thread.Start((object)parameters);
        }

        /// <summary>
        /// Delays setting the sensor mode to simulate data transfer times
        /// </summary>
        /// <param name="parameters">Object array.  parameters[0] - XTSEngine.XTSSensorMode sensor mode, parameters[1] - XTSResultDelegate result callback</param>
        private void UserLogOnThread(object parameters)
        {
            bool rc = false;
            Thread.Sleep(1500);
            object[] paramArray = parameters as object[];

            // Find user id in user passwords
            XTSUser user = paramArray[0] as XTSUser;
            foreach (SimulatorUserPasswords pw in this.userPasswords)
            {
                if (pw.UserID == user.UserID)
                {
                    if (pw.Password.Equals(paramArray[1]))
                    {
                        rc = true;
                    }
                    break;
                }
            }

            if (rc)
            {
                this.users.CurrentUser = user;
            }

            // Notify UI that this operation has succeeded
            if (paramArray[2] != null)
            {
                ((XTSResultDelegate)paramArray[2])(rc);
            }
        }

        /// <summary>
        /// Log off the current user 
        /// </summary>
        /// <param name="callback">Callback function for when the operation has completed</param>
        public void UserLogOff(XTSResultDelegate callback)
        {
            this.users.CurrentUser = null;
            if (callback != null)
            {
                callback(true);
            }
        }
        #endregion // User access functions

        #region Learning Functions
        /// <summary>
        /// Stores the learning verification file.
        /// </summary>
        /// <param name="fileStream">Stream to save data to</param>
        public void SaveLearningVerification(System.IO.Stream fileStream)
        {
            Thread thread = new Thread(new ThreadStart(this.SaveLearningVerificationThread));
            thread.Start();
        }

        /// <summary>
        /// Thread to set verification data sent flag after a time
        /// </summary>
        private void SaveLearningVerificationThread()
        {
            if (this.progressCallback != null)
            {
                for (uint i = 0; i <= 100; i += 10)
                {
                    this.progressCallback(i);
                    Thread.Sleep(1000);
                }
            }
            else
            {
                Thread.Sleep(1000);
            }
            this.learning.SentVerificationData = true;
        }

        /// <summary>
        /// Allows user to feedback that AMOT have verified the learning data
        /// by entering a code generated at time of learning.
        /// </summary>
        /// <param name="code">The code entered by the user</param>
        /// <param name="callback">Callback to inform user that code is good/bad</param>
        public void EnterLearningVerificationCode(string code, XTSResultDelegate callback)
        {
            Thread thread = new Thread(new ParameterizedThreadStart(this.EnterLearningVerificationCodeThread));
            object[] parameters = new object[2];
            parameters[0] = (object)code;
            parameters[1] = (object)callback;
            thread.Start((object)parameters);
        }

        /// <summary>
        /// Thread for callback of verification result
        /// </summary>
        /// <param name="parameters">string verification code, XTSResultDelegate callback function for success of operation</param>
        private void EnterLearningVerificationCodeThread(object parameters)
        {
            Thread.Sleep(1000);
            object[] paramArray = parameters as object[];

            string code = paramArray[0] as string;
            bool success = code.Equals("1234");
            this.learning.Verified = success;

            // Notify UI that this operation has succeeded
            if (paramArray[1] != null)
            {
                ((XTSResultDelegate)paramArray[1])(success);
            }
        }

        #endregion // Learning Functions

        #region File save functions

        /// <summary>
        /// Stores the system status CSV file.
        /// </summary>
        /// <param name="fileStream">Stream to save data to</param>
        public void SaveSystemStatus(System.IO.Stream fileStream)
        {
            // Do nothing
        }

        /// <summary>
        /// Stores the event log csv file.
        /// </summary>
        /// <param name="fileStream">Stream to save data to</param>
        public void SaveEventLog(System.IO.Stream fileStream)
        {
            // Do nothing
        }

        /// <summary>
        /// Stores the temperature setting csv file.
        /// </summary>
        /// <param name="fileStream">Stream to save data to</param>
        public void SaveTemperatureSetting(System.IO.Stream fileStream)
        {
            // Do nothing
        }

        /// <summary>
        /// Saves a file to the specified path that includes the data
        /// </summary>
        /// <param name="fileStream">Stream to save data to</param>
        public void SaveSpeedAccumulatedTableConfig(System.IO.Stream fileStream)
        {
            // Do nothing
        }
        #endregion // File save functions

        #region Sensor Replace Functions
        /// <summary>
        /// Saves a file to the specified path that includes the data
        /// </summary>
        /// <param name="cylinder">The cylinder that the sensor is in</param>
        /// <param name="sensor">The sensor within the cylinder to export data of</param>
        /// <param name="fileStream">Stream to save data to</param>
        public void SaveReplacementData(uint cylinder, uint sensor, System.IO.Stream fileStream)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Reads the specified file and sets the relevant data for the specified sensor
        /// </summary>
        /// <param name="cylinder">The cylinder that the sensor is in</param>
        /// <param name="sensor">The sensor within the cylinder to import data of</param>
        /// <param name="fileStream">Stream to save data to</param>
        public void ImportReplacementData(uint cylinder, uint sensor, System.IO.FileStream fileStream)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Starts the sensor replace procedure on the specified sensor
        /// </summary>
        /// <param name="cylinder">The cylinder that the sensor is in</param>
        /// <param name="sensor">The sensor within the cylinder to replace</param>
        /// <param name="failure">The failure date entered by the user</param>
        public void ReplaceSensor(uint cylinder, uint sensor, DateTime failure)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Informs the backend that the sensors in slowroll state have undergone slowroll
        /// procedure and are ready for 50 hour averaging.
        /// </summary>
        /// <param name="sensors">Sensors that completed the operation</param>
        public void ReplaceSensorSlowrollComplete(List<XTSSensor.XTSSensorID> sensors)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Cancels a running sensor replacement
        /// </summary>
        /// <param name="cylinder">The cylinder that the sensor is in</param>
        /// <param name="sensor">The sensor within the cylinder to cancel the replacement of</param>
        public void CancelReplaceSensor(uint cylinder, uint sensor)
        {
            throw new NotImplementedException();
        }
        #endregion // Sensor Replace Functions

        #region Surveyor Test
        /// <summary>
        /// Obtains the surveyor Alarm and Slowdown from the engine data
        /// </summary>
        public void UpdateSurveyorValues()
        {
        }

        /// <summary>
        /// Requests that a surveyor alarm/slowdown test Starts/pauses/stops.
        /// </summary>
        /// <param name="mode">The requested state</param>
        /// <param name="callback">Callback function for when operation has completed</param>
        public void SetSurveyorTestMode(XTSSurveyorTest.SurveyorTestState mode, XTSResultDelegate callback)
        {
            Thread thread = new Thread(new ParameterizedThreadStart(this.SetSurveyorTestModeThread));
            object[] parameters = new object[2];
            parameters[0] = (object)mode;
            parameters[1] = (object)callback;
            thread.Start((object)parameters);
        }

        /// <summary>
        /// Delays callback for peak calibration to simulate real world delay
        /// </summary>
        /// <param name="parameters">XTSResultDelegate callback for success/failure</param>
        private void SetSurveyorTestModeThread(object parameters)
        {
            Thread.Sleep(1000);
            object[] paramArray = parameters as object[];

            this.surveyorTest.State = (XTSSurveyorTest.SurveyorTestState)paramArray[0];

            // Notify UI that this operation has succeeded
            if (paramArray[1] != null)
            {
                ((XTSResultDelegate)paramArray[1])(true);
            }

        }

        /// <summary>
        /// Sets the thresholds used during alarm/slowdown surveyor test
        /// </summary>
        /// <param name="alarmThreshold">Alarm threshold level</param>
        /// <param name="slowdownThreshold">Slowdown threshold level</param>
        public void SetSurveyorAlarmThresholds(uint alarmThreshold, uint slowdownThreshold)
        {
            this.surveyorTest.AlarmThreshold = alarmThreshold;
            this.surveyorTest.SlowdownThreshold = slowdownThreshold;
        }

        #endregion // Surveyor Test

        #region Learning Procedure

        /// <summary>
        /// Keeps the learning thread alive
        /// </summary>
        private bool learningCancel = false;

        /// <summary>
        /// Previous learning state to return to after a cylinder firing order detection
        /// </summary>
        XTSLearning.LearningState prevLearningState = XTSLearning.LearningState.Unknown;

        /// <summary>
        /// Detects the cylinder firing order
        /// </summary>
        public void DetectCylinderFiringOrder()
        {
            if ((this.learning.CurrentState == XTSLearning.LearningState.Unknown) ||
                (this.learning.CurrentState == XTSLearning.LearningState.Abort) ||
                (this.learning.CurrentState == XTSLearning.LearningState.Complete) ||
                (this.learning.CurrentState == XTSLearning.LearningState.CylinderFiringOrder))
            {
                this.prevLearningState = this.learning.CurrentState;
                this.learning.CurrentState = XTSLearning.LearningState.CylinderFiringOrder;

                // If learning is still going from another thread, wait for it to end
                if (this.learningThread != null)
                {
                    this.learningCancel = true;
                    this.learningThread.Join();
                }
                this.learningThread = new Thread(new ThreadStart(this.LearningThread));
                this.learningThread.Start();
            }
        }

        /// <summary>
        /// Starts the learning procedure
        /// </summary>
        public void StartLearningProcedure()
        {
            if ((this.learning.CurrentState == XTSLearning.LearningState.NotCal) ||
                (this.learning.CurrentState == XTSLearning.LearningState.Abort) ||
                (this.learning.CurrentState == XTSLearning.LearningState.Complete) ||
                (this.learning.CurrentState == XTSLearning.LearningState.CompleteEnableVerification))
            {
                this.learning.CurrentState = XTSLearning.LearningState.NotCal;
                // Reset learning flags
                this.learning.SentVerificationData = false;
                this.learning.Verified = false;

                // If learning is still going from another thread, wait for it to end
                if (this.learningThread != null)
                {
                    this.learningCancel = true;
                    this.learningThread.Join();
                }
                this.learningThread = new Thread(new ThreadStart(this.LearningThread));
                this.learningThread.Start();
            }
        }

        /// <summary>
        /// Cancels the learning procedure if it is currently running
        /// </summary>
        public void CancelLearningProcedure()
        {
            this.learningCancel = true;
        }

        #endregion // Learning Procedure

        #region Sensor Setup
        /// <summary>
        /// Resets the peak for the specified sensor
        /// </summary>
        public void ResetSensorReadingPeak(uint cylIndex, uint senIndex)
        {
            lock (this.sensorsLock)
            {
                try
                {
                    XTSCylinder cylinder = this.engineData.FindCylinder(cylIndex);
                    foreach (XTSSensor sensor in cylinder.Sensors)
                    {
                        if (sensor.Index == senIndex)
                        {
                            sensor.PreCompPeak = sensor.PreComp;
                            sensor.ReadingPeak = sensor.Reading;
                        }
                    }
                }
                catch (ArgumentOutOfRangeException)
                { }
            }
        }

        /// <summary>
        /// Resets the peak for all sensors
        /// </summary>
        public void ResetSensorReadingPeak()
        {
            lock (this.sensorsLock)
            {
                foreach (XTSCylinder cylinder in this.engineData.Cylinders)
                {
                    foreach (XTSSensor sensor in cylinder.Sensors)
                    {
                        sensor.PreCompPeak = sensor.PreComp;
                        sensor.ReadingPeak = sensor.Reading;
                    }
                }
            }
        }

        /// <summary>
        /// Calls peak calibration with a list of sensors to be calibrated.
        /// </summary>
        /// <param name="sensors">List of sensors</param>
        public void PeakCalibration(List<XTSSensor.XTSSensorID> sensors, XTSResultDelegate callback)
        {
            Thread thread = new Thread(new ParameterizedThreadStart(this.PeakCalibrationThread));
            thread.Start((object)callback);
        }

        /// <summary>
        /// Delays callback for peak calibration to simulate real world delay
        /// </summary>
        /// <param name="parameters">XTSResultDelegate callback for success/failure</param>
        private void PeakCalibrationThread(object parameters)
        {
            Thread.Sleep(5000);

            // Notify UI that this operation has succeeded
            if (parameters != null)
            {
                ((XTSResultDelegate)parameters)(true);
            }
        }
        #endregion // Sensor Setup

        /// <summary>
        /// Enables or disables a specific sensor
        /// </summary>
        /// <param name="sensor">Sensor to enable/disable</param>
        /// <param name="enabled">True enables sensor, false disables</param>
        public void SetSensorEnabled(XTSSensor.XTSSensorID sensor, bool enabled)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Controls special states within the data provider for certain types of data reception.
        /// </summary>
        /// <param name="mode">The mode that the data provider should be in</param>
        public void SetMode(XTSMode mode)
        {
            // Do nothing, all simulated data is generated all the time.
        }

        /// <summary>
        /// Sets the SPU into test output mode or not
        /// </summary>
        /// <param name="enable">True enables the test mode</param>
        /// <param name="callback">Called when the operation completes</param>
        public void SetTestOutputMode(bool enable, XTSResultDelegate callback)
        {
            callback(true);
        }

        /// <summary>
        /// Resets the SPU communication statistics
        /// </summary>
        public void ResetCommStats()
        {
            this.diagnostics.CommunicationStatistics.SPUCRCErrors = 0;
            this.diagnostics.CommunicationStatistics.SPUPacketsReceived = 0;
            this.diagnostics.CommunicationStatistics.SPUPacketsSent = 0;
            this.diagnostics.CommunicationStatistics.SPUReadPacketsLost = 0;
            this.diagnostics.CommunicationStatistics.SPURetries = 0;
            this.diagnostics.CommunicationStatistics.SPUWritePacketsLost = 0;
        }

        /// <summary>
        /// Asks the SPU to override the alarm output with the specified state
        /// </summary>
        /// <param name="output">The index of the alarm 0-3</param>
        /// <param name="state">True - set alarm output active</param>
        public void SetAlarmOutputState(uint output, bool active)
        {
            // Do nothing.
        }

        /// <summary>
        /// Sets a callback for reporting errors to the UI
        /// </summary>
        /// <param name="errorCallback">The callback function</param>
        public void SetErrorCallback(XTSErrorDelegate errorCallback)
        {
            this.errorCallback = errorCallback;
        }

        /// <summary>
        /// Sets the callbacks for busy/progress bar indicators
        /// </summary>
        public void SetBusyCallbacks(XTSBusyDelegate busyCallback, XTSProgressDelegate progressCallback)
        {
            this.busyCallback = busyCallback;
            this.progressCallback = progressCallback;
        }

        #region Connect / Disconnect Functions
        /// <summary>
        /// Initialisation of the Data Provider
        /// </summary>
        public void Connect(string connectString)
        {
            this.general.Server = connectString;
            this.Init();
        }

        /// <summary>
        /// Called on shut down to clean up the Data Provider
        /// </summary>
        public void Disconnect()
        {
            this.Deinit();
            this.errorCallback = null;
        }
        #endregion // Connect / Disconnect Functions

        #endregion

        #region Data Threads

        #region Data Locks
        /// <summary>
        /// Lock alarm data in simulator thread
        /// </summary>
        private object alarmsLock = new Object();

        /// <summary>
        /// Lock sensor data in simulator thread
        /// </summary>
        private object sensorsLock = new Object();

        /// <summary>
        /// Lock trend data in simulator thread
        /// </summary>
        private object trendLock = new Object();
        #endregion // Data Locks

        /// <summary>
        /// Used for terminating the threads
        /// </summary>
        private bool running = false;

        /// <summary>
        /// Thread for updating the alarm data
        /// </summary>
        private Thread alarmThread = null;

        /// <summary>
        /// Thread for updating the sensor data
        /// </summary>
        private Thread sensorThread = null;

        /// <summary>
        /// Thread for updating the general data
        /// </summary>
        private Thread generalThread = null;

        /// <summary>
        /// Thread for updating the trend data
        /// </summary>
        private Thread trendThread = null;

        /// <summary>
        /// Thread for simulating learning
        /// </summary>
        private Thread learningThread;

        #endregion // Data Threads

        #region Constructors and Init/Deinit
        /// <summary>
        /// Default constructor
        /// </summary>
        public XTSDataProviderSimulator()
        {
            XTSDataProviderSimulator.CylinderTestStatesInit();

            this.general = new XTSGeneral();
            this.engineData = new XTSEngine();
            this.reportData = new XTSReport();
            this.alarms = new XTSDataCollection<XTSAlarm>();
            this.trendData = new XTSTrends();
            this.users = new XTSUserData();
            this.versionInfo = new XTSVersion();
            this.diagnostics = new XTSDiagnostics();
            this.learning = new XTSLearning();
            this.surveyorTest = new XTSSurveyorTest();

            // Setup default engine data
            this.engineData.RPM = 40;
            this.engineData.RPMLimit = 20;
            this.engineData.RPM20Percent = 20;
            this.engineData.RPM100Percent = 100;
            this.engineData.Direction = XTSEngine.XTSEngineDirection.Forward;
            this.engineData.AlarmThreshold = XTSDataProviderSimulator.XTSSIMULATOR_SENSOR_ALARM_THRESHOLD;
            this.engineData.SlowdownThreshold = XTSDataProviderSimulator.XTSSIMULATOR_SENSOR_SLOWDOWN_THRESHOLD;
            this.engineData.AlarmDeviationThreshold = XTSDataProviderSimulator.XTSSIMULATOR_SENSOR_ALARM_THRESHOLD;
            this.engineData.SlowdownDeviationThreshold = XTSDataProviderSimulator.XTSSIMULATOR_SENSOR_SLOWDOWN_THRESHOLD;
            this.engineData.CylinderAlarmThreshold = XTSDataProviderSimulator.XTSSIMULATOR_SENSOR_ALARM_THRESHOLD;
            for (int i = 0; i < this.EngineData.CylinderFiringOrder.Length; i++)
            {
                this.EngineData.CylinderFiringOrder[i] = i;
            }
            XTSEngine.XTSSensorTarget current;
            current.OKLow = 11000;
            current.IdealLow = 13000;
            current.IdealHigh = 15000;
            current.OKHigh = 17000;
            this.engineData.SensorTarget = current;
            this.engineData.CylinderCountSPU1 = 8;
            this.engineData.SPU2Fitted = true;

            // Create Users
            int id = 1;
            XTSUser amotUser = new XTSUser(id++);
            amotUser.Username = "AMOT";
            amotUser.Permissions = XTSUser.XTSUserLevel.AMOT;
            amotUser.Timeout = 0;
            this.users.Users.Add(amotUser);
            amotUser = new XTSUser(id++);
            amotUser.Username = "Admin";
            amotUser.Permissions = XTSUser.XTSUserLevel.Admin;
            amotUser.Timeout = 60;
            this.users.Users.Add(amotUser);

            amotUser = new XTSUser(id++);
            amotUser.Username = "Alarm";
            amotUser.Permissions = XTSUser.XTSUserLevel.Alarm;
            amotUser.Timeout = 60;
            this.users.Users.Add(amotUser);

            amotUser = new XTSUser(id++);
            amotUser.Username = "Bob";
            amotUser.Permissions = XTSUser.XTSUserLevel.Alarm;
            amotUser.Timeout = 60;
            this.users.Users.Add(amotUser);

            amotUser = new XTSUser(id++);
            amotUser.Username = "MarkS";
            amotUser.Permissions = XTSUser.XTSUserLevel.Alarm;
            amotUser.Timeout = 60;
            this.users.Users.Add(amotUser);

            amotUser = new XTSUser(id++);
            amotUser.Username = "Frank";
            amotUser.Permissions = XTSUser.XTSUserLevel.Alarm;
            amotUser.Timeout = 60;
            this.users.Users.Add(amotUser);

            amotUser = new XTSUser(id++);
            amotUser.Username = "Allan";
            amotUser.Permissions = XTSUser.XTSUserLevel.Alarm;
            amotUser.Timeout = 60;
            this.users.Users.Add(amotUser);

            this.userPasswords = new List<SimulatorUserPasswords>();
            // Add users to the simulated user/pw list
            foreach (XTSUser user in this.users.Users)
            {
                SimulatorUserPasswords pw;
                pw.UserID = user.UserID;
                pw.Password = user.Username;
                this.userPasswords.Add(pw);
            }

            XTSGroup userGroup = new XTSGroup();

            userGroup.GroupLevel = XTSUser.XTSUserLevel.Alarm;
            userGroup.GroupPermissions.Add("AckAlarms");
            users.GroupPermissions.Add(userGroup);

            XTSGroup setupGroup = new XTSGroup();
            setupGroup.GroupLevel = XTSUser.XTSUserLevel.Setup;
            setupGroup.GroupPermissions.Add("AckAlarms");
            setupGroup.GroupPermissions.Add("EngineLearning");
            setupGroup.GroupPermissions.Add("Surveying");
            setupGroup.GroupPermissions.Add("SensorSetup");
            setupGroup.GroupPermissions.Add("Diagnostics");
            users.GroupPermissions.Add(setupGroup);

            XTSGroup adminGroup = new XTSGroup();
            adminGroup.GroupLevel = XTSUser.XTSUserLevel.Admin;
            adminGroup.GroupPermissions.Add("AckAlarms");
            adminGroup.GroupPermissions.Add("EngineLearning");
            adminGroup.GroupPermissions.Add("Surveying");
            adminGroup.GroupPermissions.Add("SensorSetup");
            adminGroup.GroupPermissions.Add("Diagnostics");
            users.GroupPermissions.Add(adminGroup);

            XTSGroup amotGroup = new XTSGroup();
            amotGroup.GroupLevel = XTSUser.XTSUserLevel.AMOT;
            amotGroup.GroupPermissions.Add("AckAlarms");
            amotGroup.GroupPermissions.Add("EngineLearning");
            amotGroup.GroupPermissions.Add("Surveying");
            amotGroup.GroupPermissions.Add("SensorSetup");
            amotGroup.GroupPermissions.Add("Diagnostics");
            users.GroupPermissions.Add(amotGroup);

            // Set general data
            this.general.SetMessageString("XTSStringStatusDefault");
            this.general.SPUDateTime = DateTime.Now;
            this.general.HelpURL = "simulator/help.html";
            this.general.ConfigURL = "simulator/config.html";

            // Learning data
            this.learning.CurrentState = XTSLearning.LearningState.CylinderFiringOrder;
            this.learning.SpeedBand1Max = 39;
            this.learning.SpeedBand1Min = 11;
            this.learning.SpeedBand2Max = 69;
            this.learning.SpeedBand2Min = 41;
            this.learning.SpeedBand3Max = 100;
            this.learning.SpeedBand3Min = 71;

            // Surveyor Test Data
            this.surveyorTest.AlarmThreshold = 1500;
            this.surveyorTest.SlowdownThreshold = 1800;
            this.surveyorTest.State = XTSSurveyorTest.SurveyorTestState.Stopped;

            // Create some mock version components
            for (uint i = 1; i < 15; i++)
            {
                XTSVersion.XTSVersionData mockSWVersion = new XTSVersion.XTSVersionData(String.Format("SW{0}", i), i * 2, i * 3, 1, 2, "sim");
                this.versionInfo.SoftwareModules.Add(mockSWVersion);

                XTSVersion.XTSVersionData mockSPUVersion = new XTSVersion.XTSVersionData(String.Format("SPU{0}", i), i * 2, i * 3, 1, 2, "sim");
                this.versionInfo.SPUs.Add(mockSPUVersion);
            }

            CreateSensors();

            // Create Trend History lists for simulated data browsing
            DateTime now = DateTime.Now;
            /* TODO: Don't need these
             *  this.firstTrend = now;
                        this.lastTrend = now;
                        */
            /// <summary>
            /// Trend data for specific engine components
            /// </summary>
            this.trendDataCylinders = new List<XTSTrendHistory>[this.EngineData.Cylinders.Count];
            this.trendDataCylindersDeviation = new List<XTSTrendHistory>[this.EngineData.Cylinders.Count];
            for (int i = 0; i < this.trendDataCylinders.Count(); i++)
            {
                this.trendDataCylinders[i] = new List<XTSTrendHistory>();
                this.trendDataCylindersDeviation[i] = new List<XTSTrendHistory>();
            }
            this.trendDataSensors = new List<XTSTrendHistory>[2 * this.EngineData.Cylinders.Count];
            this.trendDataSensorsDeviation = new List<XTSTrendHistory>[2 * this.EngineData.Cylinders.Count];
            for (int i = 0; i < this.trendDataSensors.Count(); i++)
            {
                this.trendDataSensors[i] = new List<XTSTrendHistory>();
                this.trendDataSensorsDeviation[i] = new List<XTSTrendHistory>();
            }
            this.trendDataRPM = new List<XTSTrendHistory>();
            this.trendDataWIO_PPM = new List<XTSTrendHistory>();
            this.trendDataWIOPercent = new List<XTSTrendHistory>();
            this.trendDataSEDMmV = new List<XTSTrendHistory>();

            // Create additional trend data
            this.trendRealTime = true;
            this.trendEnd = now;
            this.trendDurationMinutes = 60;

            // And finally the trend configs
            this.trendConfigs = new List<XTSTrendDetail>[10];
            for (int i = 0; i < this.trendConfigs.Count(); i++)
            {
                // Start with empty configurations
                this.trendConfigs[i] = new List<XTSTrendDetail>();
            }

            // Create trend configs names
            for (int i = 0; i < 10; i++)
            {
                this.trendData.ConfigNames[i] = string.Format("Simulator Config {0}", i);
            }

            this.diagnostics.CPUCommsNetwork = true;

            // Initialise reports
            ReportInit();

#if DEBUG
#else
            InitDiagnosticsGood();
#endif
        }

        /// <summary>
        /// Initialisation function for simulator data threads
        /// </summary>
        public void Init()
        {
            if (!this.running)
            {
                this.running = true;
#if DEBUG
                alarmThread = new Thread(new ThreadStart(this.AlarmsThread));
#endif
                sensorThread = new Thread(new ThreadStart(this.SensorsThread));
                generalThread = new Thread(new ThreadStart(this.GeneralThread));
                trendThread = new Thread(new ThreadStart(this.TrendsThread));

#if DEBUG
                alarmThread.Start();
#endif
                sensorThread.Start();
                generalThread.Start();
                trendThread.Start();
            }
        }

        /// <summary>
        /// Close threads and clean up data
        /// </summary>
        public void Deinit()
        {
            if (this.running)
            {
                this.running = false;

                // wait for threads to quit
#if DEBUG
                this.alarmThread.Join(5000);
#endif
                this.sensorThread.Join(500);
                this.generalThread.Join(1000);
                this.trendThread.Join(5000);
                if (!this.learningCancel)
                {
                    if (this.learningThread != null)
                    {
                        this.learningThread.Join(500);
                    }
                }
            }
        }
        #endregion // Constructors and Init/Deinit

        #region Alarm Sim

        /// <summary>
        /// Total number of alarms created.
        /// </summary>
        /// <remarks>We use this instead of alarms.Count as we want to name
        /// based on the total created, and not the current count.</remarks>
        private int alarmCount = 0;

        /// <summary>
        /// Thread used for modifying the alarms we display in the system
        /// </summary>
        public void AlarmsThread()
        {
            while (this.running)
            {
                System.Threading.Thread.Sleep(60000);
                AddAlarm();

                if (this.alarmCount % 10 == 0)
                {
                    Random rand = new Random((int)DateTime.Now.Ticks);

                    int alarm = rand.Next(0, this.alarms.Count);

                    this.alarms[alarm].Level = XTSAlarm.XTSAlarmLevel.Cleared;
                }

                if (this.alarms.Count > 100)
                {
                    RemoveAlarm();
                }
            }
        }

        /// <summary>
        /// Add an alarm to the alarm collection
        /// </summary>
        private void AddAlarm()
        {
            // As the XTSDataCollection only adds XLSAlarms in the UI thread we switch to the UI thread to perform the add operation
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess() == false)
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new Action(AddAlarm));
                return;
            }

            lock (this.alarmsLock)
            {
                XTSAlarm alarm = new XTSAlarm(this.alarms.Count);
                alarm.Message = String.Format("Alarm {0}", this.alarmCount);
                alarm.Level = XTSAlarm.XTSAlarmLevel.Present;
                alarm.Type = XTSAlarm.XTSAlarmType.Alarm;
                alarm.Timestamp = DateTime.Now;
                this.alarms.Insert(0, alarm);
                this.alarmCount++;
                this.general.UnackedAlarms = this.general.UnackedAlarms + 1;
                this.general.SPUDateTime = DateTime.Now;
            }
        }


        public void AddSlowdown(uint p, Type type)
        {
            // As the XTSDataCollection only adds XLSAlarms in the UI thread we switch to the UI thread to perform the add operation
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess() == false)
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new Action<uint, Type>(AddSlowdown), p, type);
                return;
            }

            lock (this.alarmsLock)
            {
                string engineComponent = "";

                if (type == typeof(XTSCylinder))
                {
                    engineComponent = "Cylinder";
                }
                else if (type == typeof(XTSSensor))
                {
                    engineComponent = "Sensor";
                }

                XTSAlarm alarm = new XTSAlarm(this.alarms.Count);
                alarm.Message = String.Format("{0} Alarm Level Reached {0} {1}", engineComponent, p);
                alarm.Level = XTSAlarm.XTSAlarmLevel.Present;
                alarm.Type = XTSAlarm.XTSAlarmType.Slowdown;
                alarm.Timestamp = DateTime.Now;

                //TODO: We need a decent ID 
                int count = this.alarms.Count(n => n.Message == alarm.Message);

                if (count <= 0)
                {
                    this.alarms.Insert(0, alarm);
                    this.alarmCount++;
                    this.general.UnackedAlarms = this.general.UnackedAlarms + 1;
                }

                this.general.SPUDateTime = DateTime.Now;
            }
        }

        /// <summary>
        /// Remove the first alarm from the alarm collection
        /// </summary>
        private void RemoveAlarm()
        {
            RemoveAlarm(0);
        }

        /// <summary>
        /// Remove alarm at the specified index from the alarm collection
        /// </summary>
        /// <param name="index">The alarm to remove</param>
        private void RemoveAlarm(int index)
        {
            lock (this.alarmsLock)
            {
                if (this.alarms.Count > 0)
                {
                    this.alarms.RemoveAt(index);
                }
                this.general.SPUDateTime = DateTime.Now;
            }
        }
        #endregion // Alarm Sim

        #region Sensors and Cylinders Sim

        /// <summary>
        /// Creates the engine configuration in the Engine Data
        /// </summary>
        private void CreateSensors()
        {
            Random rand = new Random((int)DateTime.Now.Ticks);
            uint bearingIndex = 1;
            this.engineData.MainBearings.Add(new XTSBearing(bearingIndex++));
            for (uint cylIndex = 1; cylIndex <= XTSDataProviderSimulator.XTSSIMULATOR_CYLINDER_COUNT; cylIndex++)
            {
                XTSCylinder cylinder = new XTSCylinder(cylIndex);

                for (uint index = 1; index <= 2; index++)
                {
                    XTSSensor sensor = new XTSSensor(cylinder, index);
#if DEBUG
                    sensor.Wear = rand.Next(-(int)XTSDataProviderSimulator.XTSSIMULATOR_SENSOR_MAX, (int)XTSDataProviderSimulator.XTSSIMULATOR_SENSOR_MAX + 1);
#else
                    // Initialise to zero for marketing mode
                    sensor.Wear = 0;
#endif
                    sensor.Replace.FailureDate = DateTime.Now;
                    sensor.Replace.ReplacementDate = DateTime.Now;
                    sensor.Replace.Stage = SensorReplacementStage.Average500Hours;
                    sensor.Replace.TimeRemaining = (uint)rand.Next(30000);
                    sensor.Replace.TotalTime = (uint)rand.Next((int)sensor.Replace.TimeRemaining, 30000);
                    sensor.PreComp = (int)(sensor.Wear * 2.2) + 300;
                    sensor.PreCompPeak = sensor.PreComp;
                    sensor.Reading = rand.Next(4000, 20001);
                    sensor.ReadingPeak = sensor.Reading;
                    sensor.SlowrollEnabled = true;

                    cylinder.Sensors.Add(sensor);
                }
                this.engineData.Cylinders.Add(cylinder);

                this.engineData.MainBearings.Add(new XTSBearing(bearingIndex++));
            }
            // Add timing chain after half the cylinders for larger engines
            if (XTSSIMULATOR_CYLINDER_COUNT > 7)
            {
                this.engineData.TimingChain = (XTSDataProviderSimulator.XTSSIMULATOR_CYLINDER_COUNT / 2) + 1;
                // Add an extra bearing for the timing chain
                this.engineData.MainBearings.Add(new XTSBearing(bearingIndex++));
            }

            XTSSEDM sedm = new XTSSEDM();
            sedm.Value = 30;
            sedm.Status = XTSSensorStatus.Normal;
            sedm.AlarmLevel = 80;
            this.engineData.SEDM = sedm;

            XTSWIO wio = new XTSWIO();
            wio.Units = XTSWIO.XTSWIOUnits.aW;
            wio.Value = 0.60;
            wio.WioAlarm = 5000;
            wio.WioUpAlarm = 8000;
            wio.WioScaleMin = 0;
            wio.WioScaleMax = 10000;
            wio.WioValeAct = 60;
            wio.Status = XTSSensorStatus.Alarm;            
            this.engineData.WIO = wio;
        }

        /// <summary>
        /// Thread for updating the sensor data
        /// </summary>
        public void SensorsThread()
        {
            while (this.running)
            {
                System.Threading.Thread.Sleep(500);
                ModifySensors();
            }
        }

        /// <summary>
        /// Count of number of values when overriding chart with simulated errors
        /// </summary>
        private int errorValueCount = 0;
        private int sensorPreErrorValue = 0;

        /// <summary>
        /// Updates all the sensors in the system
        /// </summary>
        public void ModifySensors()
        {
            lock (sensorsLock)
            {
                this.errorValueCount++;
                if (this.errorValueCount > 180)
                {
                    this.errorValueCount = 0;
                }

                Random rand = new Random((int)DateTime.Now.Ticks);

                int cylinderCount = 0;
                foreach (XTSCylinder cylinder in this.engineData.Cylinders)
                {
                    XTSSensorStatus updateStatus = XTSDataProviderSimulator.cylinderTestStates[cylinderCount];
                    switch (updateStatus)
                    {
                        case XTSSensorStatus.Normal:
                        case XTSSensorStatus.Alarm:
                        case XTSSensorStatus.Slowdown:
                            {
                                AddSlowdown(cylinder.Index, typeof(XTSCylinder));
                                goto case XTSSensorStatus.PreWarning;
                            }
                        case XTSSensorStatus.PreWarning:
                            {
                                int cylinderWear = 0;
                                foreach (XTSSensor sensor in cylinder.Sensors)
                                {
                                    // For first cylinder/second sensor and for half the error counts, generate error
                                    if ((sensor.Cylinder == 1) && (sensor.Index == 2) &&
                                        (errorValueCount > 120))
                                    {
                                        // First one, backup previous
                                        if (errorValueCount == 121)
                                        {
                                            sensorPreErrorValue = sensor.Wear;
                                        }
                                        sensor.Status = XTSSensorStatus.SensorFailureLowLevel;
                                        sensor.Wear = XTSDataProviderSimulator.GetErrorValueFromStatus(sensor.Status);
                                        sensor.PreComp = sensor.Wear;
                                        sensor.Deviation = 0;
                                    }
                                    else
                                    {
                                        // Use interim var, as any modification on sensor.Wear
                                        // will cause UI update due to data binding
                                        int wear = sensor.Wear;
                                        // If this is the error sensor, then override wear with backed up
                                        // value if we are looping round error count
                                        if ((sensor.Cylinder == 1) && (sensor.Index == 2) &&
                                            (errorValueCount == 0))
                                        {
                                            wear = sensorPreErrorValue;
                                        }

                                        int deviation = rand.Next(-10, 11);
                                        wear += deviation;
                                        if (wear > XTSDataProviderSimulator.XTSSIMULATOR_SENSOR_MAX)
                                        {
                                            wear = (int)XTSDataProviderSimulator.XTSSIMULATOR_SENSOR_MAX;
                                        }
                                        else if (wear < -(int)XTSDataProviderSimulator.XTSSIMULATOR_SENSOR_MAX)
                                        {
                                            wear = -(int)XTSDataProviderSimulator.XTSSIMULATOR_SENSOR_MAX;
                                        }
                                        sensor.Wear = wear;
                                        // -1900 - 2500
                                        sensor.PreComp = (int)(wear * 2.2) + 300;
                                        if (Math.Abs(sensor.PreCompPeak) < Math.Abs(sensor.PreComp))
                                        {
                                            sensor.PreCompPeak = sensor.PreComp;
                                        }
                                        if (updateStatus != XTSSensorStatus.PreWarning)
                                        {
                                            if (Math.Abs(wear) >= XTSDataProviderSimulator.XTSSIMULATOR_SENSOR_SLOWDOWN_THRESHOLD)
                                            {
                                                AddSlowdown(sensor.Index, typeof(XTSSensor));
                                                sensor.Status = XTSSensorStatus.Slowdown;
                                            }
                                            else if (Math.Abs(wear) >= XTSDataProviderSimulator.XTSSIMULATOR_SENSOR_ALARM_THRESHOLD)
                                            {
                                                sensor.Status = XTSSensorStatus.Alarm;
                                            }
                                            else
                                            {
                                                sensor.Status = XTSSensorStatus.Normal;
                                            }
                                        }
                                        else
                                        {
                                            sensor.Status = updateStatus;
                                        }
                                        sensor.Deviation = deviation;
                                        if (sensor.Status != XTSSensorStatus.SensorFailureLowLevel)
                                        {
                                            cylinderWear += wear;
                                        }
                                    }
                                }
                                cylinderWear = cylinderWear / cylinder.Sensors.Count;
                                cylinder.Deviation = cylinderWear - cylinder.Wear;
                                cylinder.Wear = cylinderWear;
                                if ((updateStatus == XTSSensorStatus.Normal) ||
                                    (updateStatus == XTSSensorStatus.Alarm) ||
                                    (updateStatus == XTSSensorStatus.Slowdown))
                                {
                                    if (Math.Abs(cylinderWear) > XTSDataProviderSimulator.XTSSIMULATOR_SENSOR_SLOWDOWN_THRESHOLD)
                                    {
                                        cylinder.Status = XTSSensorStatus.Slowdown;
                                    }
                                    else if (Math.Abs(cylinderWear) > XTSDataProviderSimulator.XTSSIMULATOR_SENSOR_ALARM_THRESHOLD)
                                    {
                                        cylinder.Status = XTSSensorStatus.Alarm;
                                    }
                                    else
                                    {
                                        cylinder.Status = XTSSensorStatus.Normal;
                                    }
                                }
                                else
                                {
                                    cylinder.Status = updateStatus;
                                }
                                cylinder.CrankPin = cylinder.Status;
                                cylinder.CrossHead = cylinder.Status;
                                break;
                            }
                        default:
                            {
                                // Just update all status to test status
                                cylinder.Status = updateStatus;
                                cylinder.CrankPin = updateStatus;
                                cylinder.CrossHead = updateStatus;
                                cylinder.Deviation = 0;
                                int errValue = XTSDataProviderSimulator.GetErrorValueFromStatus(updateStatus);
                                cylinder.Wear = errValue;
                                foreach (XTSSensor sensor in cylinder.Sensors)
                                {
                                    sensor.Deviation = 0;
                                    sensor.Wear = errValue;
                                    sensor.Status = updateStatus;
                                }
                                break;
                            }
                    }
                    foreach (XTSSensor sensor in cylinder.Sensors)
                    {
                        // 4000 - 20000
                        int sensorReading = sensor.Reading;
                        sensorReading += rand.Next(-100, 101);
                        if (sensorReading > 20000)
                        {
                            sensorReading = 20000;
                        }
                        if (sensorReading < 4000)
                        {
                            sensorReading = 4000;
                        }
                        sensor.Reading = sensorReading;
                        if (sensor.ReadingPeak < sensor.Reading)
                        {
                            sensor.ReadingPeak = sensor.Reading;
                        }
                        if ((sensor.Reading <= this.engineData.SensorTarget.IdealHigh) &&
                            (sensor.Reading >= this.engineData.SensorTarget.IdealLow))
                        {
                            sensor.ReadingStatus = XTSSensorRange.Ideal;
                        }
                        else if ((sensor.Reading <= this.engineData.SensorTarget.OKHigh) &&
                            (sensor.Reading >= this.engineData.SensorTarget.OKLow))
                        {
                            sensor.ReadingStatus = XTSSensorRange.OK;
                        }
                        else
                        {
                            sensor.ReadingStatus = XTSSensorRange.Bad;
                        }
                    }
                    if (cylinder.Status == XTSSensorStatus.Normal)
                    {
                        cylinder.SensorComparison = true;
                    }
                    else if ((cylinder.Status == XTSSensorStatus.Alarm) ||
                             (cylinder.Status == XTSSensorStatus.Slowdown))
                    {
                        cylinder.SensorComparison = false;
                    }
                    else
                    {
                        cylinder.SensorComparison = null;
                    }
                    cylinderCount++;
                }
                int cylinderIndex = 0;
                for (int i = 0; i < this.engineData.MainBearings.Count - 1; i++)
                {
                    // Skip cylinder increment if we're on main bearing for timing chain
                    if (i != this.engineData.TimingChain)
                    {
                        // Just copy status of single adjacent cylinder
                        this.engineData.MainBearings[i].Status = this.engineData.Cylinders[cylinderIndex++].Status;
                    }
                    else
                    {
                        this.engineData.MainBearings[i].Status = this.engineData.Cylinders[cylinderIndex].Status;
                    }
                }
                // And the final mainbearing, copy from previous one
                if (this.engineData.MainBearings.Count > 1)
                {
                    this.engineData.MainBearings[this.engineData.MainBearings.Count-1].Status = this.engineData.MainBearings[this.engineData.MainBearings.Count - 2].Status;
                }
                this.general.SPUDateTime = DateTime.Now;
            }
        }

        #endregion // Sensors and Cylinders Sim

        #region Trends Sim
        /// <summary>
        /// Trend data history for specific engine components.  The data in these lists will be copied to the
        /// trends.TrendConfiguration data for display in the UI
        /// </summary>
        private List<XTSTrendHistory>[] trendDataCylinders;
        private List<XTSTrendHistory>[] trendDataSensors;
        private List<XTSTrendHistory>[] trendDataCylindersDeviation;
        private List<XTSTrendHistory>[] trendDataSensorsDeviation;
        private List<XTSTrendHistory> trendDataRPM;
        private List<XTSTrendHistory> trendDataWIO_PPM;
        private List<XTSTrendHistory> trendDataWIOPercent;
        private List<XTSTrendHistory> trendDataSEDMmV;

        /// <summary>
        /// The trend config lists
        /// </summary>
        private List<XTSTrendDetail>[] trendConfigs;

        /// <summary>
        /// Specifies if the trend should be updated when new data is available
        /// </summary>
        private bool trendRealTime;
        /// <summary>
        /// The end time of the trends (ignored if we are in realtime)
        /// </summary>
        private DateTime trendEnd;
        /// <summary>
        /// The total duration to show
        /// </summary>
        private int trendDurationMinutes;

        /// <summary>
        /// Thread for updating the simulated trends
        /// </summary>
        public void TrendsThread()
        {
            //GenerateFakeHistory(General.SPUDateTime.AddHours(-48), 2); 

            // Main thread loop
            while (this.running)
            {
                System.Threading.Thread.Sleep(10000);
                UpdateTrendsHistory();
                FillTrendsWithHistory();
            }
        }

        /// <summary>
        /// Generate fake data for X amount of hours
        /// </summary>
        /// <param name="start"></param>
        /// <param name="interval"></param>
        private void GenerateFakeHistory(DateTime start, int interval)
        {
            // TODO: Generate for sensors, rpm, wio, wioppm and sedm
            Random rand = new Random((int)start.Ticks);
            foreach (List<XTSTrendHistory> xtsc in this.trendDataCylinders)
            {
                int count = 0;
                DateTime currentFakeTime = start;
                double lastActual = 0.0;

                while (currentFakeTime <= General.SPUDateTime)
                {
                    double actual = 0.0;

                    // If we have more than 1 then base the value on the previous
                    if (xtsc.Count > 0)
                    {
                        double nextActual = 0.0;

                        int maxRand = 50;
                        int minRand = 1;

                        if (lastActual > 1000)
                        {
                            nextActual = lastActual + rand.Next(-maxRand, -minRand + 1);
                        }
                        else if (lastActual < -1000)
                        {
                            nextActual = lastActual + rand.Next(minRand, maxRand + 1);
                        }
                        else
                        {
                            nextActual = lastActual + rand.Next(-maxRand, maxRand + 1);
                        }
                        actual = nextActual;
                    }
                    else
                    {
                        // If this is the first one, then generate a random value
                        actual = rand.Next(-1000, 1001);
                    }

                    // Add the generated data to the history
                    xtsc.Add(new XTSTrendHistory(currentFakeTime, actual));

                    currentFakeTime = currentFakeTime.AddMinutes(interval);
                    count++;
                    lastActual = actual;
                }
            }
        }

        /// <summary>
        /// Update trend data
        /// </summary>
        private void UpdateTrendsHistory()
        {
            lock (sensorsLock)
            {
                lock (this.trendLock)
                {
                    DateTime now = DateTime.Now;
                    Random rand = new Random((int)now.Ticks);

                    // Add a new value into each of the cylinder and sensor trend histories
                    for (int cylinder = 0; cylinder < this.trendDataCylinders.Count(); cylinder++)
                    {
                        this.trendDataCylinders[cylinder].Add(new XTSTrendHistory(now, this.engineData.Cylinders[cylinder].Wear));
                        this.trendDataCylindersDeviation[cylinder].Add(new XTSTrendHistory(now, this.engineData.Cylinders[cylinder].Deviation));


                        int sensor1 = cylinder * 2;
                        int sensor2 = sensor1 + 1;

                        this.trendDataSensors[sensor1].Add(new XTSTrendHistory(now, this.engineData.Cylinders[cylinder].Sensors[0].Wear));
                        this.trendDataSensorsDeviation[sensor1].Add(new XTSTrendHistory(now, this.engineData.Cylinders[cylinder].Sensors[0].Deviation));


                        if ((this.engineData.Cylinders[cylinder].Sensors[1].Status == XTSSensorStatus.Normal) ||
                            (this.engineData.Cylinders[cylinder].Sensors[1].Status == XTSSensorStatus.Alarm) ||
                            (this.engineData.Cylinders[cylinder].Sensors[1].Status == XTSSensorStatus.Slowdown) ||
                            (this.engineData.Cylinders[cylinder].Sensors[1].Status == XTSSensorStatus.PreWarning))
                        {
                            // Force values for testing different average graph cases
#if _NOT_DEFINED_
                            if (cylinder == 0)
                            {
                                this.trendDataSensors[sensor2].Add(new XTSTrendHistory(now, 300, 100, 500));
                            }
                            else if (cylinder == 1)
                            {
                                this.trendDataSensors[sensor2].Add(new XTSTrendHistory(now, -300, -100, -500));
                            }
                            else if (cylinder == 2)
                            {
                                this.trendDataSensors[sensor2].Add(new XTSTrendHistory(now, -25, -75, 25));
                            }
                            else if (cylinder == 3)
                            {
                                this.trendDataSensors[sensor2].Add(new XTSTrendHistory(now, 25, -25, 75));
                            }
                            else
#endif
                            {
                                // Generate avg data for 2nd sensor
                                int wear = this.engineData.Cylinders[cylinder].Sensors[1].Wear;
                                this.trendDataSensors[sensor2].Add(new XTSTrendHistory(now, wear, wear - rand.Next(10, 101), wear + rand.Next(10, 101)));
                            }
                            this.trendDataSensorsDeviation[sensor2].Add(new XTSTrendHistory(now, this.engineData.Cylinders[cylinder].Sensors[1].Deviation));
                        }
                        else
                        {
                            int wear = this.engineData.Cylinders[cylinder].Sensors[1].Wear;
                            this.trendDataSensors[sensor2].Add(new XTSTrendHistory(now, wear, wear, wear));
                            this.trendDataSensorsDeviation[sensor2].Add(new XTSTrendHistory(now, this.engineData.Cylinders[cylinder].Sensors[1].Deviation));
                        }

                        TrendCapHistory(this.trendDataCylinders[cylinder]);
                        TrendCapHistory(this.trendDataCylindersDeviation[cylinder]);
                        TrendCapHistory(this.trendDataSensors[sensor1]);
                        TrendCapHistory(this.trendDataSensors[sensor2]);
                        TrendCapHistory(this.trendDataSensorsDeviation[sensor1]);
                        TrendCapHistory(this.trendDataSensorsDeviation[sensor2]);
                    }

                    // Add other trend information for other data
                    this.trendDataRPM.Add(new XTSTrendHistory(now, this.engineData.RPM, this.engineData.RPM - 5, this.engineData.RPM + 5));
                    TrendCapHistory(this.trendDataRPM);
                    if (this.engineData.WIO != null)
                    {
                        if (this.engineData.WIO.Units == XTSWIO.XTSWIOUnits.PPM)
                        {
                            this.trendDataWIO_PPM.Add(new XTSTrendHistory(now, this.engineData.WIO.Value));
                            TrendCapHistory(this.trendDataWIO_PPM);
                        }
                        else if (this.engineData.WIO.Units == XTSWIO.XTSWIOUnits.Percent)
                        {
                            this.trendDataWIOPercent.Add(new XTSTrendHistory(now, this.engineData.WIO.Value));
                            TrendCapHistory(this.trendDataWIOPercent);
                        }
                    }
                    if (this.engineData.SEDM != null)
                    {
                        this.trendDataSEDMmV.Add(new XTSTrendHistory(now, this.engineData.SEDM.Value));
                        TrendCapHistory(this.trendDataSEDMmV);
                    }
                    this.trendData.LastHistoryUpdate = now;
                }
            }
        }

        /// <summary>
        /// Removes all items from the start of the history list to keep the count at 1000
        /// </summary>
        /// <param name="history">The list to cap</param>
        private void TrendCapHistory(List<XTSTrendHistory> history)
        {
            if (history.Count > 1000)
            {
                history.RemoveRange(0, history.Count-1000);
            }
        }

        /// <summary>
        /// Takes the trend info from our fake backend trends data and puts it into the
        /// Trends lists that are shown on the graph
        /// </summary>
        public void FillTrendsWithHistory()
        {
            DateTime start;
            DateTime end;

            lock (this.trendLock)
            {
                if (this.trendRealTime)
                {
                    end = DateTime.Now;
                    start = end.AddMinutes(-this.trendDurationMinutes);
                }
                else
                {
                    end = this.trendEnd;
                    start = this.trendEnd.AddMinutes(-this.trendDurationMinutes);
                }

                // Go through the trends in the current configuration and update
                // data lists with new data
                foreach (XTSTrend trend in this.trendData.TrendConfiguration)
                {
                    List<XTSTrendHistory> history = null;
                    switch (trend.Detail.TrendType)
                    {
                        case XTSTrendDetail.XTSTrendType.Cylinder:
                            {
                                XTSTrendCylinder cylinder = (XTSTrendCylinder)trend.Detail;
                                // Remember indexes are based on 1 for the first cylinder
                                history = this.trendDataCylinders[cylinder.Index - 1];
                                break;
                            }
                        case XTSTrendDetail.XTSTrendType.Sensor:
                            {
                                XTSTrendSensor sensor = (XTSTrendSensor)trend.Detail;
                                // Remember indexes are based on 1 for the first cylinder/sensor
                                int sensorIndex = (int)((2 * (sensor.Cylinder - 1)) + (sensor.Index - 1));
                                history = this.trendDataSensors[sensorIndex];
                                break;
                            }
                        case XTSTrendDetail.XTSTrendType.CylinderDeviation:
                            {
                                XTSTrendCylinderDeviation cylinder = (XTSTrendCylinderDeviation)trend.Detail;
                                // Remember indexes are based on 1 for the first cylinder
                                history = this.trendDataCylindersDeviation[cylinder.Index - 1];
                                break;
                            }
                        case XTSTrendDetail.XTSTrendType.SensorDeviation:
                            {
                                XTSTrendSensorDeviation sensor = (XTSTrendSensorDeviation)trend.Detail;
                                // Remember indexes are based on 1 for the first cylinder/sensor
                                int sensorIndex = (int)((2 * (sensor.Cylinder - 1)) + (sensor.Index - 1));
                                history = this.trendDataSensorsDeviation[sensorIndex];
                                break;
                            }
                        case XTSTrendDetail.XTSTrendType.RPM:
                            {
                                history = this.trendDataRPM;
                                break;
                            }
                        case XTSTrendDetail.XTSTrendType.WIO:
                            {
                                history = this.trendDataWIOPercent;
                                break;
                            }
                        case XTSTrendDetail.XTSTrendType.WIOPPM:
                            {
                                history = this.trendDataWIO_PPM;
                                break;
                            }
                        case XTSTrendDetail.XTSTrendType.SEDMmV:
                            {
                                history = this.trendDataSEDMmV;
                                break;
                            }
                    }
                    if ((history != null) && (history.Count > 0))
                    {
                        // Set initial values as first in history
                        double min = history[0].Actual;
                        double max = history[0].Actual;
                        bool isAveraged = false;
                        foreach (XTSTrendHistory data in history)
                        {
                            if (data.Actual > -32000)
                            {
                                if (data.Actual > max)
                                {
                                    max = data.Actual;
                                }
                                if (data.Actual < min)
                                {
                                    min = data.Actual;
                                }
                                if ((data.High != 0) || (data.Low != 0))
                                {
                                    isAveraged = true;
                                }
                            }
                        }
                        trend.Min = min;
                        trend.Max = max;
                        trend.IsAveraged = isAveraged;

                        // If our range has changed then copy history to data to show area
                        if (trend.startRange != start || trend.endRange != end)
                        {
                            // This would be more efficient to copy in the missing data,
                            // but as this is just the simulator, we'll just clear the list and
                            // then copy the full range in to the data to be drawn
                            trend.History.SuspendCollectionChangeNotification = true;
                            trend.History.Clear();
                            trend.History.SuspendCollectionChangeNotification = false;

                            trend.startRange = start;
                            trend.endRange = end;

                            trend.History.AddRange(history.Where(n => n.TimeDate >= start && n.TimeDate <= end));

                            // Adjust history so error times are pushed to close to "good" values...
                            for (int i = 1; i < trend.History.Count; i++)
                            {
                                XTSTrendHistory prev = trend.History[i-1];
                                XTSTrendHistory data = trend.History[i];
                                if (prev != null)
                                {
                                    if (data.Actual < -32000)
                                    {
                                        // error state!
                                        // Check previous
                                        if (prev.Actual > -32000)
                                        {
                                            // Increase by the smallest we can!
                                            data.TimeDate = prev.TimeDate.AddMilliseconds(1);
                                        }
                                    }
                                    else
                                    {
                                        // Was the previous in error state?
                                        if (prev.Actual < -32000)
                                        {
                                            // Decrease by smallest we can!
                                            prev.TimeDate = data.TimeDate.AddMilliseconds(-1);
                                        }
                                        // TODO: This doesn't account for when we have GOOD, ERROR, GOOD in succession.
                                        // This case will case a slope on the first error transition as we reset the time
                                        // so we need to insert another entry to handle this.
                                        // In practice in the simulator this will not be a problem, but should be taken into
                                        // account in the real system.
                                    }
                                }
                            }
                        }
                    }
                }
                this.trendData.LastHistoryUpdate = end;
            }
        }

        /// <summary>
        /// Search the current trend configuration for a trend that matches the specified trend detail.
        /// </summary>
        /// <param name="detail">The trend detail to search for.</param>
        /// <returns>The matched trend, null if it couldn't be found.</returns>
        private XTSTrend SearchTrendConfig(XTSTrendDetail detail)
        {
            XTSTrend rc = null;
            bool found = false;
            foreach (XTSTrend trend in this.trendData.TrendConfiguration)
            {
                if (trend.Detail.TrendType == detail.TrendType)
                {
                    switch (detail.TrendType)
                    {
                        case XTSTrendDetail.XTSTrendType.Cylinder:
                            {
                                // Search Cylinder IDs
                                XTSTrendCylinder cylinderNew = (XTSTrendCylinder)detail;
                                XTSTrendCylinder cylinder = (XTSTrendCylinder)trend.Detail;
                                if (cylinder.Index == cylinderNew.Index)
                                {
                                    found = true;
                                }
                                break;
                            }
                        case XTSTrendDetail.XTSTrendType.CylinderDeviation:
                            {
                                // Search Cylinder IDs
                                XTSTrendCylinderDeviation cylinderNew = (XTSTrendCylinderDeviation)detail;
                                XTSTrendCylinderDeviation cylinder = (XTSTrendCylinderDeviation)trend.Detail;
                                if (cylinder.Index == cylinderNew.Index)
                                {
                                    found = true;
                                }
                                break;
                            }
                        case XTSTrendDetail.XTSTrendType.Sensor:
                            {
                                // Search Cylinder/Sensor IDs
                                XTSTrendSensor sensorNew = (XTSTrendSensor)detail;
                                XTSTrendSensor sensor = (XTSTrendSensor)trend.Detail;
                                if ((sensor.Cylinder == sensorNew.Cylinder) &&
                                    (sensor.Index == sensorNew.Index))
                                {
                                    found = true;
                                }
                                break;
                            }
                        case XTSTrendDetail.XTSTrendType.SensorDeviation:
                            {
                                // Search Cylinder/Sensor IDs
                                XTSTrendSensorDeviation sensorNew = (XTSTrendSensorDeviation)detail;
                                XTSTrendSensorDeviation sensor = (XTSTrendSensorDeviation)trend.Detail;
                                if ((sensor.Cylinder == sensorNew.Cylinder) &&
                                    (sensor.Index == sensorNew.Index))
                                {
                                    found = true;
                                }
                                break;
                            }
                        default:
                            {
                                found = true;
                                break;
                            }
                    }
                }
                if (found)
                {
                    rc = trend;
                    break;
                }
            }
            return rc;
        }
        #endregion // Trends Sim

        #region General and diagnostics sim
        /// <summary>
        /// Thread for updating the simulated general data
        /// </summary>
        public void GeneralThread()
        {
            uint count = 1;
#if DEBUG
            // Initialise sync variable for WIO/SEDM connection based on one of thier current states
            if (this.engineData.WIO != null)
            {
                this.connectionWIOSEDM = this.engineData.WIO.Connection;
            }
            else if (this.engineData.SEDM != null)
            {
                this.connectionWIOSEDM = this.engineData.SEDM.Connection;
            }
#endif
            while (this.running)
            {
                System.Threading.Thread.Sleep(1000);
                ModifyRPM();
                // Every 60 seconds...
                if ((count % 60) == 0)
                {
                    ModifySensorMode();

#if SIMULATOR_ERRORS
                    if (this.errorCallback != null)
                    {
                        object[] parameters = new object[2];
                        // TODO: Not sure what paramters general error will require
                        parameters[0] = (int) 5;
                        parameters[1] = (int) 8;
                        this.errorCallback(XTSErrors.General, parameters);
                    }
#endif
                }
#if SIMULATOR_ERRORS
                if ((count % 45) == 0)
                {
                    if (this.errorCallback != null)
                    {
                        this.errorCallback(XTSErrors.CommsFailure, null);
                    }
                }
#endif

#if SIMULATOR_ERRORS
                if ((count % 35) == 0)
                {
                    throw new SystemException("Test exception from simulator");
                }
#endif

// Only modify diagnostic states if not marketing (release) build
#if DEBUG
                // Every 5 seconds...
                if ((count % 5) == 0)
                {
                    ModifyDiagnostics();

                    // Change cpu network/spu/wio/sedm connection
                    if (ModifyWIOSEDM())
                    {
                        if (ModifySPU2())
                        {
                            if (ModifySPU())
                            {
                                ModifyCPUNetwork();
                            }
                        }
                    }
                }
                if ((count % 30) == 0)
                {
                    // Set an error code
                    if (this.general.Message != "XTSStringCoreError")
                    {
                        this.general.SetMessageString("XTSStringCoreError", new short [] {5, 10, 15});
                    }
                    else
                    {
                        this.general.SetMessageString("XTSStringStatusDefault");
                    }
                }
#endif
                // Convert seconds to minutes!
                this.engineData.RunTime = count;
                count++;
            }
        }

        /// <summary>
        /// Update the RPM in the general data
        /// </summary>
        private void ModifyRPM()
        {
            uint currentRPM = (uint)this.engineData.RPM;
#if DEBUG
            currentRPM += 10;
            if (currentRPM > 100)
            {
                currentRPM = 0;
                if (this.engineData.Direction == XTSEngine.XTSEngineDirection.Astern)
                {
                    this.engineData.Direction = XTSEngine.XTSEngineDirection.Forward;
                }
                else
                {
                    this.engineData.Direction = XTSEngine.XTSEngineDirection.Astern;
                }
            }
#else
            Random rand = new Random((int)DateTime.Now.Ticks);
            currentRPM += (uint) rand.Next(-3,4);
#endif
            this.EngineData.RPM = (int)currentRPM;
            this.EngineData.RPMSlowroll = Math.Abs(currentRPM) < 5;
            this.diagnostics.SPU2RPM = (int)currentRPM - 5;
        }

        /// <summary>
        /// Update the sensor mode (to simulate two users changing settings on different consoles?)
        /// </summary>
        private void ModifySensorMode()
        {
            XTSEngine.XTSSensorMode currentMode = this.engineData.SensorMode;
            switch (this.engineData.SensorMode)
            {
                case XTSEngine.XTSSensorMode.DCMode:
                    {
                        this.engineData.SensorMode = XTSEngine.XTSSensorMode.PulseMode;
                        break;
                    }
                case XTSEngine.XTSSensorMode.PulseMode:
                    {
                        this.engineData.SensorMode = XTSEngine.XTSSensorMode.DCPeakHold;
                        break;
                    }
                case XTSEngine.XTSSensorMode.DCPeakHold:
                    {
                        this.engineData.SensorMode = XTSEngine.XTSSensorMode.Unknown;
                        break;
                    }
                default:
                    {
                        this.engineData.SensorMode = XTSEngine.XTSSensorMode.DCMode;
                        break;
                    }
            }
        }

#if DEBUG
        /// <summary>
        /// Modifies the connection state of the CPU and Core error
        /// </summary>
        private void ModifyCPUNetwork()
        {
            if (this.diagnostics.CPUCoreOK == null)
            {
                this.diagnostics.CPUCoreOK = true;
                this.diagnostics.CPUCommsNetwork = true;
            }
            else if (this.diagnostics.CPUCoreOK == true)
            {
                this.diagnostics.CPUCoreOK = false;
                // Network Should already be true...
                this.diagnostics.CPUCommsNetwork = true;
            }
            else
            {
                if (this.diagnostics.CPUCommsNetwork)
                {
                    this.diagnostics.CPUCommsNetwork = false;
                }
                else
                {
                    this.diagnostics.CPUCoreOK = null;
                    // Network Should already be false
                    this.diagnostics.CPUCommsNetwork = false;
                }
            }
            if (!this.diagnostics.CPUCommsNetwork)
            {
                this.errorCallback(XTSErrors.CommsFailure, null);
            }
        }

        /// <summary>
        /// Modifies the SPU state
        /// </summary>
        /// <returns>If this is the start of the cycle or not</returns>
        private bool ModifySPU()
        {
            bool rc = false;
            if (this.diagnostics.SPUComms == null)
            {
                rc = true;
                this.diagnostics.SPUComms = true;
            }
            else if (this.diagnostics.SPUComms == true)
            {
                this.diagnostics.SPUComms = false;
            }
            else
            {
                this.diagnostics.SPUComms = null;
            }
            return rc;
        }

        /// <summary>
        /// Modifies the SPU2 connection state if SPU2 is fitted
        /// </summary>
        /// <returns>True if it is the start of the cycle or SPU2 is not fitted</returns>
        private bool ModifySPU2()
        {
            bool rc = false;
            if (!this.engineData.SPU2Fitted)
            {
                return true;
            }
            if (this.diagnostics.SPU2Comms == null)
            {
                this.diagnostics.SPU2Comms = true;
                rc = true;
            }
            else if (this.diagnostics.SPU2Comms == true)
            {
                this.diagnostics.SPU2Comms = false;
            }
            else
            {
                this.diagnostics.SPU2Comms = null;
            }
            return rc;
        }

        bool? connectionWIOSEDM = null;

        /// <summary>
        /// Updates the WIO and SEDM error state
        /// </summary>
        /// <returns>True if it is the start of the cycle or WIO and SEDM aren't fitted</returns>
        private bool ModifyWIOSEDM()
        {
            bool rc = false;
            if ((this.engineData.SEDM == null) && (this.engineData.WIO == null))
            {
                return true;
            }

            if (this.connectionWIOSEDM == null)
            {
                this.connectionWIOSEDM = true;
                rc = true;
            }
            else if (this.connectionWIOSEDM == true)
            {
                this.connectionWIOSEDM = false;
            }
            else
            {
                this.connectionWIOSEDM = null;
            }

            if (this.engineData.SEDM != null)
            {
                this.engineData.SEDM.Connection = this.connectionWIOSEDM;
            }
            if (this.engineData.WIO != null)
            {
                this.engineData.WIO.Connection = this.connectionWIOSEDM;
            }
            return rc;
        }

        /// <summary>
        /// Update the diagnostics data
        /// </summary>
        private void ModifyDiagnostics()
        {
            // Update other Diagnostics data
            if (this.diagnostics.SystemStatus == null)
            {
                this.diagnostics.SystemStatus = true;
            }
            else if (this.diagnostics.SystemStatus == true)
            {
                this.diagnostics.SystemStatus = false;
            }
            else
            {
                this.diagnostics.SystemStatus = null;
            }

            if (this.diagnostics.SPUSlowdown == null)
            {
                this.diagnostics.SPUSlowdown = true;
            }
            else if (this.diagnostics.SPUSlowdown == true)
            {
                this.diagnostics.SPUSlowdown = false;
            }
            else
            {
                this.diagnostics.SPUSlowdown = null;
            }

            if (this.diagnostics.SPUSDCard == null)
            {
                this.diagnostics.SPUSDCard = true;
            }
            else if (this.diagnostics.SPUSDCard == true)
            {
                this.diagnostics.SPUSDCard = false;
            }
            else
            {
                this.diagnostics.SPUSDCard = null;
            }

            if (this.diagnostics.SPUAlarm == null)
            {
                this.diagnostics.SPUAlarm = true;
            }
            else if (this.diagnostics.SPUAlarm == true)
            {
                this.diagnostics.SPUAlarm = false;
            }
            else
            {
                this.diagnostics.SPUAlarm = null;
            }

            double voltage = this.diagnostics.SPUBatteryVoltage;
            voltage += 0.25;
            if (voltage > 5.5)
            {
                voltage = 0;
            }
            this.diagnostics.SPUBatteryVoltage = voltage;

            this.diagnostics.SPUTemperature += 5;
            if (this.diagnostics.SPUTemperature > 100)
            {
                this.diagnostics.SPUTemperature = 0;
            }
            // TODO: Comm stats??
        }
#else
        private void InitDiagnosticsGood()
        {
            if (this.engineData.SEDM != null)
            {
                this.engineData.SEDM.Connection = true;
            }
            if (this.engineData.WIO != null)
            {
                this.engineData.WIO.Connection = true;
            }
            this.diagnostics.CPUCoreOK = true;
            this.diagnostics.CPUCommsNetwork = true;
            this.diagnostics.SystemStatus = true;
            this.diagnostics.SPUSlowdown = true;
            this.diagnostics.SPUSDCard = true;
            this.diagnostics.SPUAlarm = true;
            this.diagnostics.SPUComms = true;
            this.diagnostics.SPU2Comms = true;
            this.diagnostics.SPUBatteryVoltage = 5.0;
        }
#endif

        #endregion // General and diagnostics sim

        #region Learning

        /// <summary>
        /// Runs through a pretend learning state
        /// </summary>
        public void LearningThread()
        {
            bool learningComplete = false;
            bool error = false;
            this.learningCancel = false;
            uint stageTime = 0;
            uint firingOrderCount = 10;
            XTSLearning.LearningState currentState = this.learning.CurrentState;
            while (this.running && !learningComplete && !this.learningCancel && !error)
            {
                string statusMessage = "Learning process error!!";

                // Learning state machine...
                switch (currentState)
                {
                    case XTSLearning.LearningState.CylinderFiringOrder:
                        {
                            if (this.EngineData.RPM >= this.EngineData.RPMLimit)
                            {
                                if (firingOrderCount > 0)
                                {
                                    firingOrderCount--;
                                }
                                else
                                {
                                    for (int i = 0; i < this.EngineData.CylinderFiringOrder.Length; i++)
                                    {
                                        this.EngineData.CylinderFiringOrder[i] = this.EngineData.CylinderFiringOrder[i]++;
                                        if (this.EngineData.CylinderFiringOrder[i] > this.EngineData.CylinderFiringOrder.Length)
                                        {
                                            this.EngineData.CylinderFiringOrder[i] = 0;
                                        }
                                    }
                                    this.EngineData.CylinderFiringOrderUpdated();

                                    // Return current state to learnt
                                    if ((this.prevLearningState == XTSLearning.LearningState.CompleteEnableVerification) ||
                                        (this.prevLearningState == XTSLearning.LearningState.CompleteEnableVerification))
                                    {
                                        currentState = this.prevLearningState;
                                    }
                                    else
                                    {
                                        currentState = XTSLearning.LearningState.NotCal;
                                    }
                                    // Need to quit the loop
                                    learningComplete = true;
                                }
                                this.learning.SpeedValid = true;
                            }
                            else
                            {
                                this.learning.SpeedValid = false;
                            }
                            break;
                        }
                    case XTSLearning.LearningState.NotCal:
                        {
                            currentState = XTSLearning.LearningState.Stage1Start;
                            this.learning.SpeedValid = null;
                            break;
                        }
                    case XTSLearning.LearningState.Stage1Start:
                        {
                            if ((this.EngineData.RPM >= this.learning.SpeedBand1Min) &&
                                (this.EngineData.RPM <= this.learning.SpeedBand1Max))
                            {
                                currentState = XTSLearning.LearningState.Stage1;
                                this.learning.SpeedValid = true;
                                stageTime = 10;
                            }
                            else
                            {
                                this.learning.SpeedValid = false;
                            }
                            break;
                        }
                    case XTSLearning.LearningState.Stage1:
                        {
                            if ((this.EngineData.RPM >= this.learning.SpeedBand1Min) &&
                                (this.EngineData.RPM <= this.learning.SpeedBand1Max))
                            {
                                if (stageTime > 0)
                                {
                                    stageTime--;
                                }
                                this.learning.SpeedValid = true;
                            }
                            else
                            {
                                this.learning.SpeedValid = false;
                            }
                            if (stageTime == 0)
                            {
                                currentState = XTSLearning.LearningState.Stage1Complete;
                            }
                            break;
                        }
                    case XTSLearning.LearningState.Stage1Complete:
                        {
                            if ((this.EngineData.RPM >= this.learning.SpeedBand2Min) &&
                                (this.EngineData.RPM <= this.learning.SpeedBand2Max))
                            {
                                currentState = XTSLearning.LearningState.Stage2;
                                stageTime = 30;
                                this.learning.SpeedValid = true;
                            }
                            else
                            {
                                this.learning.SpeedValid = false;
                            }
                            break;
                        }
                    case XTSLearning.LearningState.Stage2:
                        {
                            if ((this.EngineData.RPM >= this.learning.SpeedBand2Min) &&
                                (this.EngineData.RPM <= this.learning.SpeedBand2Max))
                            {
                                if (stageTime > 0)
                                {
                                    stageTime--;
                                }
                                this.learning.SpeedValid = true;
                            }
                            else
                            {
                                this.learning.SpeedValid = false;
                            }
                            if (stageTime == 0)
                            {
                                currentState = XTSLearning.LearningState.Stage2Complete;
                            }
                            break;
                        }
                    case XTSLearning.LearningState.Stage2Complete:
                        {
                            if ((this.EngineData.RPM >= this.learning.SpeedBand3Min) &&
                                (this.EngineData.RPM <= this.learning.SpeedBand3Max))
                            {
                                currentState = XTSLearning.LearningState.Stage3;
                                stageTime = 50;
                                this.learning.SpeedValid = true;
                            }
                            else
                            {
                                this.learning.SpeedValid = false;
                            }
                            break;
                        }
                    case XTSLearning.LearningState.Stage3:
                        {
                            if ((this.EngineData.RPM >= this.learning.SpeedBand3Min) &&
                                (this.EngineData.RPM <= this.learning.SpeedBand3Max))
                            {
                                if (stageTime > 0)
                                {
                                    stageTime--;
                                }
                                this.learning.SpeedValid = true;
                            }
                            else
                            {
                                this.learning.SpeedValid = false;
                            }
                            if (stageTime == 0)
                            {
                                currentState = XTSLearning.LearningState.Stage4;
                                stageTime = 150;
                            }
                            break;
                        }
                    case XTSLearning.LearningState.Stage4:
                        {
                            if ((this.EngineData.RPM >= this.EngineData.RPM20Percent) &&
                                (this.EngineData.RPM <= this.EngineData.RPM100Percent))
                            {
                                if (stageTime > 90)
                                {
                                    stageTime--;
                                }
                                this.learning.SpeedValid = true;
                            }
                            else
                            {
                                this.learning.SpeedValid = false;
                            }
                            if (stageTime <= 90)
                            {
                                currentState = XTSLearning.LearningState.Stage5;
                            }
                            break;
                        }
                    case XTSLearning.LearningState.Stage5:
                        {
                            if ((this.EngineData.RPM >= this.EngineData.RPM20Percent) &&
                                (this.EngineData.RPM <= this.EngineData.RPM100Percent))
                            {
                                if (stageTime > 0)
                                {
                                    stageTime--;
                                }
                                this.learning.SpeedValid = true;
                            }
                            else
                            {
                                this.learning.SpeedValid = false;
                            }

                            if (stageTime == 0)
                            {
                                currentState = XTSLearning.LearningState.Complete;
                                // Need to quit the loop
                                learningComplete = true;
                            }
                            break;
                        }
                    case XTSLearning.LearningState.Complete:
                    case XTSLearning.LearningState.Abort:
                    case XTSLearning.LearningState.Unknown:
                    default:
                        {
                            // State machine shouldn't ever get into one of these states!
                            error = true;
                            this.learning.SpeedValid = null;
                            break;
                        }
                }
                // Set status message based on current state
                object[] args = null;
                switch (currentState)
                {
                    case XTSLearning.LearningState.CylinderFiringOrder:
                        {
                            statusMessage = "XTSStringStatusLearningFiringOrder";
                            break;
                        }
                    case XTSLearning.LearningState.NotCal:
                        {
                            statusMessage = "XTSStringStatusLearningNotCal";
                            break;
                        }
                    case XTSLearning.LearningState.Stage1Start:
                        {
                            statusMessage = "XTSStringStatusLearningS1Start";
                            break;
                        }
                    case XTSLearning.LearningState.Stage1:
                        {
                            statusMessage = "XTSStringStatusLearningS1";
                            args = new object[1];
                            args[0] = stageTime;
                            break;
                        }
                    case XTSLearning.LearningState.Stage1Complete:
                        {
                            statusMessage = "XTSStringStatusLearningS1Complete";
                            break;
                        }
                    case XTSLearning.LearningState.Stage2:
                        {
                            statusMessage = "XTSStringStatusLearningS2";
                            args = new object[1];
                            args[0] = stageTime;
                            break;
                        }
                    case XTSLearning.LearningState.Stage2Complete:
                        {
                            statusMessage = "XTSStringStatusLearningS2Complete";
                            break;
                        }
                    case XTSLearning.LearningState.Stage3:
                        {
                            statusMessage = "XTSStringStatusLearningS3";
                            args = new object[1];
                            args[0] = stageTime;
                            break;
                        }
                    case XTSLearning.LearningState.Stage4:
                        {
                            statusMessage = "XTSStringStatusLearningS4";
                            args = new object[2];
                            args[0] = (uint)(stageTime / 60);
                            args[1] = stageTime % 60;
                            break;
                        }
                    case XTSLearning.LearningState.Stage5:
                        {
                            statusMessage = "XTSStringStatusLearningS5";
                            args = new object[2];
                            args[0] = (uint)(stageTime / 60);
                            args[1] = stageTime % 60;
                            break;
                        }
                    case XTSLearning.LearningState.Complete:
                        {
                            statusMessage = "XTSStringStatusLearningComplete1";
                            break;
                        }
                    // The complete 2 state is updated below... 
                    case XTSLearning.LearningState.CompleteEnableVerification:
                    case XTSLearning.LearningState.Abort:
                    case XTSLearning.LearningState.Unknown:
                    default:
                        {
                            break;
                        }
                }

                if (learningComplete)
                {
                    this.general.SetMessageString(statusMessage, args);
                    this.learning.CurrentState = currentState;
                    this.learning.TimeRemaining = stageTime;
                    this.learning.SpeedValid = null;
                }
                else if (!error && !this.learningCancel)
                {
                    this.general.SetMessageString(statusMessage, args);
                    this.learning.CurrentState = currentState;
                    this.learning.TimeRemaining = stageTime;
                    Thread.Sleep(500);
                    this.learning.SpeedValid = null;
                }
            }
            if (this.learningCancel)
            {
                this.general.SetMessageString("XTSStringStatusLearningAbort");
                this.learning.CurrentState = XTSLearning.LearningState.Abort;
                this.learning.SpeedValid = null;
            }
            else if (learningComplete &&
                    (this.learning.CurrentState == XTSLearning.LearningState.Complete))
            {
                // In the real web service this delay should be 30s
                Thread.Sleep(5000);
                this.general.SetMessageString("XTSStringStatusLearningComplete2");
                this.learning.CurrentState = XTSLearning.LearningState.CompleteEnableVerification;
                this.learning.SpeedValid = null;
            }
        }

        #endregion // Learning

        #region Alarm acknowledgement
        public void AcknowledgeAlarm(int alarmId, XTSResultDelegate callback)
        {
            if (this.general.UnackedAlarms > 0)
            {
                this.general.UnackedAlarms = this.general.UnackedAlarms - 1;
            }
            callback(true);
        }

        public void IgnoreAlarm(int alarmId, XTSResultDelegate callback)
        {
            callback(true);
        }
        #endregion

        #region Report Sim
        public void StartReport(string startDate, string endDate, bool allEvents,
            bool sensorAbsolute, bool sensorDeviation, bool cylinderAbsolute,
            bool cylinderDeviation, bool singleSensor, bool cylinderSum,
            bool mBNSum, string channels, string reportType, int numActiveChannels,
            bool enableData, XTSResultDelegate callback)
        {
            if (!this.reportData.IsRunning)
            {
                Thread report = new Thread(new ThreadStart(this.ReportThread));
                report.Start();
                callback(true);
            }
            else
            {
                callback(false);
            }
        }

        /// <summary>
        /// Initialises the report types
        /// </summary>
        private void ReportInit()
        {
            this.reportData.Available.Clear();

            this.reportData.Available.Add("AMOT");
            this.reportData.Available.Add("GL");
        }

        /// <summary>
        /// Pretends to generate a report. 
        /// </summary>
        public void ReportThread()
        {
            this.reportData.Progress = 0;
            this.reportData.IsRunning = true;
            for (int i = 1; i <= 100; i++)
            {
                Thread.Sleep(1000);
                this.reportData.Progress = i;
            }
            // Add current time as report title
            DateTime now = DateTime.Now;
            this.reportData.Completed.Add(now.ToLongDateString());
            this.reportData.LastReportDate = now.ToFileTime();

            // Reset thread progress
            Thread.Sleep(1000);
            this.reportData.IsRunning = false;
        }

        /// <summary>
        /// Stub method for downloading a report
        /// </summary>
        /// <param name="reportName"></param>
        /// <param name="fileStream"></param>
        public void DownloadReport(string reportName, System.IO.Stream fileStream)
        {
            throw new NotImplementedException();
        }

        #endregion // Report Sim

        /// <summary>
        /// Performs a peak calibration operation
        /// </summary>
        /// <param name="callback">Called when the operation completes</param>
        public void UpdateSensorReplaceData(XTSResultDelegate callback)
        {
            callback(true);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="status"></param>
        /// <returns></returns>
        private static int GetErrorValueFromStatus(XTSSensorStatus status)
        {
            int rc = 0;
            switch (status)
            {
                case XTSSensorStatus.Disabled:
                    {
                        rc = XTSEngine.SensorDisabled;
                        break;
                    }
                case XTSSensorStatus.SensorAdjustment:
                    {
                        rc = XTSEngine.SensorAdjustment;
                        break;
                    }
                case XTSSensorStatus.SensorFailureHighLevel:
                    {
                        rc = XTSEngine.SensorFailureHighLevel;
                        break;
                    }
                case XTSSensorStatus.SensorFailureLowLevel:
                    {
                        rc = XTSEngine.SensorFailureLowLevel;
                        break;
                    }
                case XTSSensorStatus.SensorFailureNoPulse:
                    {
                        rc = XTSEngine.SensorFailureNoPulse;
                        break;
                    }
                case XTSSensorStatus.SensorFailureRPMOOR:
                    {
                        rc = XTSEngine.SensorFailureRPMORR;
                        break;
                    }
                case XTSSensorStatus.SensorFailureUnknown:
                    {
                        rc = XTSEngine.SensorFailure;
                        break;
                    }
            }
            return rc;
        }
    }
}
