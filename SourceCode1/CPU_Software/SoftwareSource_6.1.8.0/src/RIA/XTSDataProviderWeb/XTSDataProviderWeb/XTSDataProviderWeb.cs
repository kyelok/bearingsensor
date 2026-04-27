/* 
 * XTSDataProviderWeb.cs
 * 
 * The XTSDataProviderWeb class implements the IXTSDataProvider interface.
 * It is responsible for updating the XTSData classes of the interface with
 * data retreived from the XTS Web Server.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 26/01/2012
 */

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Net;
using WebServiceObjects;
using System.IO;
using System.Windows.Media.Imaging;
using System.Windows.Controls;

namespace XTS
{
    /// <summary>
    /// Responsible for updating the XTSData classes of the interface with
    /// data retreived from the XTS Web Server.
    /// </summary>
    public partial class XTSDataProviderWeb : IXTSDataProvider
    {
        /// <summary>
        /// The server to get data from
        /// </summary>
        // TODO: Configure these so that they point at the XTS Server of the real system
        // For now left several in for debugging.
        //public static readonly string DefaultServerAddress = "10.154.18.46";
//        public static readonly string DefaultServerAddress = "10.150.225.62";
        public static readonly string DefaultServerAddress = "localhost";
        //public static readonly string DefaultServerAddress = "urban";          // JGoss main dev machine
        //public static readonly string DefaultServerAddress = "rooster";        // JGoss laptop
        //public static readonly string DefaultServerAddress = "10.150.225.126"; // AMOT Old XTS-W

        /// <summary>
        /// The maximum number of consecutive errors before dispalying the error dialog
        /// </summary>
        static int MaxCommsError = 3;

        /// <summary>
        /// The port opened for server data
        /// </summary>
        public static readonly int ServerPort = 8081;

        /// <summary>
        /// The object used for network comms
        /// </summary>
        internal ServerRequests serverRequests = null;

        /// <summary>
        /// Object used for requesting data from the
        /// web server.
        /// </summary>
        internal ServerRequests webServerRequests = null;

        /// <summary>
        /// A list of the errors that are active in the system
        /// </summary>
        Dictionary<XTSErrors, int> activeErrors;

        /// <summary>
        /// This is used to determine what data
        /// the dynamic polling thread retreives.
        /// </summary>
        private XTSMode screenMode;

        /// <summary>
        /// Internal representation of general data
        /// </summary>
        private XTSGeneral generalData;

        /// <summary>
        /// SPU Update time, status message etc.
        /// </summary>
        public XTSGeneral General
        {
            get { return this.generalData; }
        }

        /// <summary>
        /// The version information for the system, firmware etc.
        /// </summary>
        public XTSVersion VersionInfo
        {
            get
            {
                return this.versionInfo;
            }
        }
        private XTSVersion versionInfo;

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
        private XTSDiagnostics diagnostics;

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

        private Image capturedWebPage = null;

        /// <summary>
        /// Gets the image of a captured web page
        /// </summary>
        public Image WebPageCapture
        {
            get
            {
                return this.capturedWebPage;
            }
        }

        /// <summary>
        /// Default constructor
        /// </summary>
        public XTSDataProviderWeb()
        {
            this.engineData = new XTSEngine();
            this.generalData = new XTSGeneral();
            this.temperatureData = new XTSEngineTemperature();
            this.reportData = new XTSReport();
            this.alarms = new XTSDataCollection<XTSAlarm>();
            this.eventLogs = new XTSDataCollection<XTSAlarm>();
            this.users = new XTSUserData();
            this.learning = new XTSLearning();
            this.diagnostics = new XTSDiagnostics();
            this.versionInfo = new XTSVersion();
            this.surveyorTest = new XTSSurveyorTest();            
            this.activeErrors = new Dictionary<XTSErrors, int>();
            this.diagnostics.CPUCoreOK = true;
            this.diagnostics.CPUCommsNetwork = true;

            // TODO: Confirm these URLs!
            this.generalData.HelpURL = "/content/help/index.html";
            this.generalData.ConfigURL = "/config";
            
            this.trendData = new XTSTrends();

            for (int i = 0; i < 10; i++)
            {
                this.trendData.ConfigNames[i] = string.Format("");
            }
        }

        /// <summary>
        /// Controls special states within the data provider for certain types of data reception.
        /// </summary>
        /// <param name="mode">The mode that the data provider should be in</param>
        public void SetMode(XTSMode mode)
        {
            if (this.screenMode == XTSMode.SurveyorTest)
            {
                SetSurveyorTestMode(XTSSurveyorTest.SurveyorTestState.Stopped, NullResultDelegate);
            }

            this.screenMode = mode;

            this.waitForDynamicData.Set();
        }

        /// <summary>
        /// Starts the capture of the web page currently being shown
        /// </summary>
        /// <param name="id">The id of the web page (read form the title)</param>
        /// <param name="width">The width of the browser window</param>
        /// <param name="height">The height of the browser window</param>
        public void CaptureWebPage(string id, int width, int height)
        {
            this.webServerRequests.CaptureWebPage(id, width, height, new JsonWebClient.WebServiceStreamCallback(CaptureWebPageCallback));
        }

        /// <summary>
        /// Method called when the web page capture is complete
        /// </summary>
        /// <param name="result"></param>
        /// <param name="stream"></param>
        private void CaptureWebPageCallback(IAsyncResult result, Stream stream)
        {
            if (stream != null)
            {
                BitmapImage image = new BitmapImage();
                image.SetSource(stream);
                this.capturedWebPage.Source = image;
                stream.Close();
            }
        }

        /// <summary>
        /// Asks the SPU to override the alarm output with the specified state
        /// </summary>
        /// <param name="output">The index of the alarm 0-3</param>
        /// <param name="active">True - set alarm output active</param>
        public void SetAlarmOutputState(uint output, bool active)
        {
            JsonWebClient.WebServiceObjectsCallback callback = null;
            if (active)
            {
                switch (output)
                {
                    case 1:
                        {
                            callback = new JsonWebClient.WebServiceObjectsCallback(AlarmOutputOn1StateCallback);
                            break;
                        }
                    case 2:
                        {
                            callback = new JsonWebClient.WebServiceObjectsCallback(AlarmOutputOn2StateCallback);
                            break;
                        }
                    case 3:
                        {
                            callback = new JsonWebClient.WebServiceObjectsCallback(AlarmOutputOn3StateCallback);
                            break;
                        }
                    default:
                        {
                            break;
                        }
                }
                if (callback != null)
                {
                    this.serverRequests.AlarmOn(output, callback, auth);
                }
            }
            else
            {
                switch (output)
                {
                    case 1:
                        {
                            callback = new JsonWebClient.WebServiceObjectsCallback(AlarmOutputOff1StateCallback);
                            break;
                        }
                    case 2:
                        {
                            callback = new JsonWebClient.WebServiceObjectsCallback(AlarmOutputOff2StateCallback);
                            break;
                        }
                    case 3:
                        {
                            callback = new JsonWebClient.WebServiceObjectsCallback(AlarmOutputOff3StateCallback);
                            break;
                        }
                    default:
                        {
                            break;
                        }
                }
                if (callback != null)
                {
                    this.serverRequests.AlarmOff(output, callback, auth);
                }
            }
        }

        internal void AlarmOutputOn1StateCallback(IAsyncResult resultObject, object data)
        {
            AlarmOutputStateCallback(resultObject, data, 1, true);
        }
        internal void AlarmOutputOn2StateCallback(IAsyncResult resultObject, object data)
        {
            AlarmOutputStateCallback(resultObject, data, 2, true);
        }
        internal void AlarmOutputOn3StateCallback(IAsyncResult resultObject, object data)
        {
            AlarmOutputStateCallback(resultObject, data, 3, true);
        }

        internal void AlarmOutputOff1StateCallback(IAsyncResult resultObject, object data)
        {
            AlarmOutputStateCallback(resultObject, data, 1, false);
        }
        internal void AlarmOutputOff2StateCallback(IAsyncResult resultObject, object data)
        {
            AlarmOutputStateCallback(resultObject, data, 2, false);
        }
        internal void AlarmOutputOff3StateCallback(IAsyncResult resultObject, object data)
        {
            AlarmOutputStateCallback(resultObject, data, 3, false);
        }

        /// <summary>
        /// Callback for requesting an alarm state - prompts a refresh of the diagnostics data.
        /// </summary>
        /// <param name="resultObject"></param>
        /// <param name="data"></param>
        /// <param name="callback"></param>
        /// <param name="obj"></param>
        internal void AlarmOutputStateCallback(IAsyncResult resultObject, object data, uint alarm, bool active)
        {
            // Dafault this will be used to set the alarm state in the data provider
            // to the unknown state
            bool? value = null;
            bool update = true;
            if (data == null)
            {
            }
            else if (data is WebException)
            {
            }
            else if (data is Authorised)
            {
                Authorised authorised = data as Authorised;
                if (ProcessAuthorisedResponse(authorised))
                {
                    if (authorised.Success)
                    {
                        value = active;
                    }
                    // If we failed, we'll set alarm state to default null/unknown state
                }
                else
                {
                    // If we failed due to request being unauthorised
                    // leave alarm state as is
                    update = false;
                }
            }
            if (update)
            {
                System.Diagnostics.Debug.WriteLine("Set Alarm Callback received: {0} -> {1}", alarm, value);
                switch (alarm)
                {
                    case 1:
                        {
                            this.diagnostics.AlarmOutput0 = value;
                            break;
                        }
                    case 2:
                        {
                            this.diagnostics.AlarmOutput1 = value;
                            break;
                        }
                    case 3:
                        {
                            this.diagnostics.AlarmOutput2 = value;
                            break;
                        }
                    default:
                        {
                            break;
                        }
                }
            }
            // Refresh diagnostics to update alarm output states
            // Don't need to refresh diagnostics as states updated based on success/fail of returned message
            //this.serverRequests.GetDiagnostics(this.ProcessData);
        }

        /// <summary>
        /// Resets the SPU communication statistics
        /// </summary>
        public void ResetCommStats()
        {
            this.serverRequests.ResetCommStats(WebServiceObjectsVoidCallback, auth);
        }

        private XTSErrorDelegate errorCallback;
        private XTSBusyDelegate BusyOperation;
        private XTSProgressDelegate ProgressOperation;

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
            this.BusyOperation = busyCallback;
            this.ProgressOperation = progressCallback;
        }

        /// <summary>
        /// Callback for general errors.
        /// </summary>
        /// <param name="errorCode">The error the occurred.</param>
        /// <param name="parameters">Generic paramters for the type of error that occurred.</param>
        protected void OnError(XTSErrors errorCode, object[] parameters)
        {
            int count = 0;
            if (errorCode != XTSErrors.UnauthorisedUser &&
                errorCode != XTSErrors.EngineLearnVefificationCodeIncorrect)
            {
                //Check if the errorCode is already in the activeErrors Dictonary
                this.activeErrors.TryGetValue(errorCode, out count);
                count++;

                if (this.activeErrors.ContainsKey(errorCode))
                {
                    this.activeErrors[errorCode] = count;
                }
                else
                {
                    try
                    {
                        this.activeErrors.Add(errorCode, count);
                    }
                    catch (ArgumentException)
                    {
                        //This will get thrown if we try and add the same key twice
                    }
                }
            }
            else
            {
                count = MaxCommsError;
            }

            if (count >= MaxCommsError)
            {
                if (this.diagnostics.CPUCommsNetwork == false && (errorCode == XTSErrors.CommsFailure || errorCode == XTSErrors.RegistrationError))
                {
                    this.General.SetMessageString("XTSStringCommsError", (int)errorCode);
                }
                else
                {
                    if (errorCode == XTSErrors.CommsFailure || errorCode == XTSErrors.RegistrationError)
                    {
                        lock (this.diagnostics)
                        {
                            this.diagnostics.CPUCoreOK = false;
                            this.diagnostics.CPUCommsNetwork = false;
                        }
                    }

                    if (errorCallback != null)
                    {
                        errorCallback(errorCode, parameters);
                    }

                    this.General.SetMessageString("XTSStringCommsError", (int)errorCode);                    
                }
            }
        }

        /// <summary>
        /// Clears the comms error count
        /// </summary>
        public void ClearCommsError()
        {
            if (this.activeErrors.ContainsKey(XTSErrors.CommsFailure))
            {
                if (this.activeErrors[XTSErrors.CommsFailure] != 0)
                {
                    this.diagnostics.CPUCoreOK = true;
                    this.diagnostics.CPUCommsNetwork = true;
                }

                this.activeErrors[XTSErrors.CommsFailure] = 0;
            }

            if (this.General.Message == "XTSStringCommsError")
            {
                this.General.SetMessageString("XTSStringStatusDefault");                
            }
        }

        /// <summary>
        /// Empty results delegate, used when nothing is needed to be processed
        /// </summary>
        public void NullResultDelegate(bool success)
        {
            ClearCommsError();
        }

        internal void WebServiceObjectsVoidCallback(IAsyncResult resultObject, object data)
        {
            if (data is WebException)
            {
            }
            else
            {
                if (data is Authorised)
                {
                    ProcessAuthorisedResponse((Authorised)data);
                }

                ClearCommsError();
            }
        }

        internal void WebServiceObjectsBoolCallback(IAsyncResult resultObject, object data, XTSResultDelegate callback)
        {
            if (data is WebException)
            {
                callback(false);
            }
            else
            {
                ClearCommsError();
                callback((bool)data);
            }
        }
    }
}
