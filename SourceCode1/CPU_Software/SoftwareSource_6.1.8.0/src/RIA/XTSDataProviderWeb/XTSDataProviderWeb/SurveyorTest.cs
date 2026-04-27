/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: Christopher Peerman, 12/04/2012
 */

using System;
using System.Net;
using WebServiceObjects;

namespace XTS
{
    public partial class XTSDataProviderWeb
    {
        /// <summary>
        /// 
        /// </summary>
        private XTSSurveyorTest surveyorTest;

        /// <summary>
        /// 
        /// </summary>
        private object SurveyorSync = new object();

        /// <summary>
        /// Callback for when surveyor data is recieved
        /// </summary>
        private XTSResultDelegate stopSurveyorTestcallback;

        /// <summary>
        /// Surveyor test data
        /// </summary>
        public XTSSurveyorTest SurveyorTest
        {
            get
            {
                return surveyorTest;
            }
        }

        /// <summary>
        /// The mode for the alarm test
        /// </summary>
        private bool alarmTestMode;

        /// <summary>
        /// The mode for the alarm test
        /// </summary>
        public bool AlarmTest
        {
            get
            {
                return alarmTestMode;
            }
        }

        /// <summary>
        /// Obtains the surveyor Alarm and Slowdown from the engine data
        /// </summary>
        public void UpdateSurveyorValues()
        {
            surveyorTest.AlarmThreshold = this.EngineData.AlarmThreshold;
            surveyorTest.SlowdownThreshold = this.EngineData.SlowdownThreshold;
        }

        internal void ProcessSurveyorTestMode(IAsyncResult resultObject, object data, XTSResultDelegate callback, params object [] obj)
        {
            if (data is WebException) 
            {
                // Report the error
                WebServiceObjectsVoidCallback(resultObject, data);

                // Test if this was a mode change, if it is then exit
                if (obj != null && obj.Length > 0)
                {
                    if ((XTSSurveyorTest.SurveyorTestState)obj[0] != surveyorTest.State)
                    {
                        callback(false);
                    }
                    else
                    {
                        callback(true);
                    }
                    return;
                }
            }

            lock (SurveyorSync)
            {
                // Process mode changes
                if (data is WebServiceObjects.Authorised)
                {
                    WebServiceObjects.Authorised auth = data as WebServiceObjects.Authorised;
                    if (auth.Success)
                    {
                        surveyorTest.State = (XTSSurveyorTest.SurveyorTestState)obj[0];
                        callback(true);

                        if (surveyorTest.State == XTSSurveyorTest.SurveyorTestState.Stopped)
                        {
                            stopSurveyorTestcallback = null;
                            return;
                        }
                        else
                        {
                            foreach (XTSCylinder cylinder in EngineData.Cylinders)
                            {
                                foreach (XTSSensor sensor in cylinder.Sensors)
                                {
                                    sensor.PreComp = 0;
                                    sensor.PreCompPeak = 0;
                                }
                            }
                        }
                    }
                    else
                    {
                        callback(false);
                    }
                }
                else if (data is SensorSurveyPeek)
                {
                    SensorSurveyPeek ssp = data as SensorSurveyPeek;
                    if (ssp.Success)
                    {
                        short[] preComp = ssp.DCValues;
                        foreach (XTSCylinder cylinder in EngineData.Cylinders)
                        {
                            foreach (XTSSensor sensor in cylinder.Sensors)
                            {
                                uint component = ((cylinder.Index - 1) * 2) + sensor.Index - 1;
                                if (component < preComp.Length)
                                {
                                    sensor.PreComp = preComp[component];
                                    if (sensor.PreCompPeak < sensor.PreComp)
                                    {
                                        sensor.PreCompPeak = sensor.PreComp;
                                    }
                                }
                            }
                        }
                    }
                    else
                    {
                        // Drop out of surveyor test mode
                        stopSurveyorTestcallback = null;
                        this.surveyorTest.State = XTSSurveyorTest.SurveyorTestState.Stopped;
                    }
                }

                if (this.surveyorTest.State != XTSSurveyorTest.SurveyorTestState.Stopped)
                {
                    if (stopSurveyorTestcallback != null)
                    {
                        if (stopSurveyorTestcallback == NullResultDelegate)
                        {
                            stopSurveyorTestcallback = callback;
                        }
                        XTSWebResultDelegate xtsdelegate = new XTSWebResultDelegate(stopSurveyorTestcallback, ProcessSurveyorTestMode, XTSSurveyorTest.SurveyorTestState.Stopped);
                        this.serverRequests.SurveyorTestStop(xtsdelegate.WebServiceCallback, auth);
                    }
                    else
                    {
                        XTSWebResultDelegate xtsdelegate = new XTSWebResultDelegate(callback, ProcessSurveyorTestMode, null);
                        this.serverRequests.SurveyorTestPeek(surveyorTest.AlarmThreshold, surveyorTest.SlowdownThreshold, xtsdelegate.WebServiceCallback);
                    }
                }
            }
        }

        /// <summary>
        /// Requests that a surveyor alarm/slowdown test Starts/pauses/stops.
        /// </summary>
        /// <param name="mode">The requested state</param>
        /// <param name="callback">Callback function for when operation has completed</param>
        public void SetSurveyorTestMode(XTSSurveyorTest.SurveyorTestState mode, XTSResultDelegate callback)
        {
            if (callback == null)
            {
                throw new NullReferenceException("Callback not set");
            }
            lock (SurveyorSync)
            {
                // Make a new mode change request to the server
                switch (mode)
                {
                    case XTSSurveyorTest.SurveyorTestState.Running:
                        if (surveyorTest.State == XTSSurveyorTest.SurveyorTestState.Stopped)
                        {
                            stopSurveyorTestcallback = null;
                            XTSWebResultDelegate xtsdelegate = new XTSWebResultDelegate(callback, ProcessSurveyorTestMode, mode);
                            this.serverRequests.SurveyorTestStart(xtsdelegate.WebServiceCallback, auth);
                        }
                        else
                        {
                            // Already running
                            callback(true);
                        }
                        break;
                    case XTSSurveyorTest.SurveyorTestState.Stopped:
                        if (surveyorTest.State == XTSSurveyorTest.SurveyorTestState.Running)
                        {
                            if (stopSurveyorTestcallback == null)
                            {
                                stopSurveyorTestcallback = callback;
                            }
                            else
                            {
                                callback(false);
                            }
                        }
                        else
                        {
                            callback(true);
                        }
                        break;
                }                    
            }          
        }

        /// <summary>
        /// Sets the thresholds used during alarm/slowdown surveyor test
        /// </summary>
        /// <param name="alarmThreshold">Alarm threshold level</param>
        /// <param name="slowdownThreshold">Slowdown threshold level</param>
        public void SetSurveyorAlarmThresholds(uint alarmThreshold, uint slowdownThreshold)
        {
            surveyorTest.AlarmThreshold = alarmThreshold;
            surveyorTest.SlowdownThreshold = slowdownThreshold; 
        }

        // TODO: Is this still needed?
        private void SurveyorTestAlarmOutputsOnCallback(IAsyncResult resultObject, object data)
        {
            if (data is WebException)
            {
                WebServiceObjectsVoidCallback(resultObject, data);
            }
            else
            {
                if (data is Authorised)
                {
                    if (ProcessAuthorisedResponse((Authorised)data))
                    {
                        alarmTestMode = true;
                    }
                }
            }
        }

        // TODO: Is this still needed?
        private void SurveyorTestAlarmOutputsOffCallback(IAsyncResult resultObject, object data)
        {
            if (data is WebException)
            {
                WebServiceObjectsVoidCallback(resultObject, data);
            }
            else
            {
                if (data is Authorised)
                {
                    if (ProcessAuthorisedResponse((Authorised)data))
                    {
                        alarmTestMode = false;
                    }
                }                
            }
        }

        /// <summary>
        /// Sets the SPU into test output mode or not
        /// </summary>
        /// <param name="enable">True enables the test mode</param>
        /// <param name="callback">Called when the operation completes</param>
        public void SetTestOutputMode(bool enable, XTSResultDelegate callback)
        {
            XTSWebResultDelegate xtsdelegate;
            if (enable)
            {
                xtsdelegate = new XTSWebResultDelegate(callback, ProcessTestModeEnabledOn);
            }
            else
            {
                xtsdelegate = new XTSWebResultDelegate(callback, ProcessTestModeEnabledOff);
            }

            if (enable)
            {
                this.serverRequests.AlarmTestModeOn(xtsdelegate.WebServiceCallback, auth);
            }
            else
            {
                this.serverRequests.AlarmTestModeOff(xtsdelegate.WebServiceCallback, auth);
            }
        }

        private void ProcessTestModeEnabledOn(IAsyncResult resultObject, object data, XTSResultDelegate callback)
        {
            ProcessTestModeEnabled(resultObject, data, callback, true);
        }

        private void ProcessTestModeEnabledOff(IAsyncResult resultObject, object data, XTSResultDelegate callback)
        {
            ProcessTestModeEnabled(resultObject, data, callback, false);
        }

        private void ProcessTestModeEnabled(IAsyncResult resultObject, object data, XTSResultDelegate callback, bool on)
        {
            if (data is WebException)
            {
                WebServiceObjectsVoidCallback(resultObject, data);
                callback(false);
            }
            else
            {
                this.diagnostics.OutputEnabled = on;
                callback(true);
            }
        }
    }
}
