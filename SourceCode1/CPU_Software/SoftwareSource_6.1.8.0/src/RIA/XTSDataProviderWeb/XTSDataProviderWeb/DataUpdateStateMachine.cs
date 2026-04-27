/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: Christopher Peerman, 12/04/2012
 */

using System;
using System.Threading;
using System.Collections.Generic;
using System.Net;
using WebServiceObjects;

namespace XTS
{
    public partial class XTSDataProviderWeb
    {
        /// <summary>
        /// Internal representation of EngineData
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
        /// Termination of threads when running is set to false
        /// </summary>
        private bool running = false;

        /// <summary>
        /// Reference to engine poll thread used to check it has exited cleanly
        /// </summary>
        private Thread enginePollThread = null;

        /// <summary>
        /// Reference to the dynamic poll thread.  Used to check it has exited.
        /// </summary>
        private Thread dynamicPollThread = null;

        /// <summary>
        /// Event that is used to control the requesting of Engine data
        /// </summary>
        private AutoResetEvent waitForEngineData = new AutoResetEvent(false);

        /// <summary>
        /// Event that is used to control requesting of Dynamic data
        /// </summary>
        private AutoResetEvent waitForDynamicData = new AutoResetEvent(false);

        /// <summary>
        /// The Surveyor Alarm Level
        /// </summary>
        public Int16 SurveyorAlarmLevel { get; set; }

        /// <summary>
        /// The Surveyor Slowdown Level
        /// </summary>
        public Int16 SurveyorSlowdownLevel { get; set; }

        /// <summary>
        /// The timoout period to wait before aborting a web request.
        /// </summary>
        private const Int32 WebRequestTimeout = 120000;

        /// <summary>
        /// Counts the number of engine datas that
        /// have be recieved that are not live.
        /// This count is used to control is the comms to the SPUs,
        /// SEDMs or WIOs should be greyed or not.
        /// </summary>
        private int notLiveEngineDataCount = 0;

        private int registerFaultCnt = 0;

        /// <summary>
        /// Thread that is used to poll for the data required on each of the screens
        /// </summary>
        private void DynamicPollThread()
        {
            int sleepInMilliseconds = 5000;
            XTSMode currentMode = this.screenMode;
            IAsyncResult asyncOperation = null;

            while (this.running)
            {
                int specificRequestTimeout = 0;
                currentMode = this.screenMode;

                asyncOperation = null;

                switch (this.screenMode)
                {
                    case XTSMode.Diagnostics:
                        asyncOperation = this.serverRequests.GetDiagnostics(this.ProcessData);
                        sleepInMilliseconds = 5000;
                        break;
                    case XTSMode.SensorReplace:
                        asyncOperation = this.serverRequests.GetSensorReplaceState(this.ProcessData);
                        sleepInMilliseconds = 10000;
                        break;
                    case XTSMode.SensorSetup:
                        asyncOperation = this.serverRequests.GetSensorSetup(this.ProcessData);
                        sleepInMilliseconds = 1000;
                        break;
                    case XTSMode.SurveyorTest:
                        asyncOperation = null; // Implemented in its own callback thread
                        sleepInMilliseconds = 5000;
                        break;
                    case XTSMode.Trends:
                        specificRequestTimeout = 60000;
                        if (this.newTrendRequest.WaitOne(10000))
                        {
                            asyncOperation = RequestTrendData();
                        }
                        else if (this.rangeRequested.realtime)
                        {
                            // If real time request data even on timeout
                            asyncOperation = RequestTrendData();
                        }
                        sleepInMilliseconds = 0; // Used in wait timeout
                        break;
                    case XTSMode.Learning:
                        asyncOperation = this.serverRequests.EngineLearningStatus(this.ProcessData);
                        sleepInMilliseconds = 6000;
                        break;
                    case XTSMode.Reporting:
                        asyncOperation = this.serverRequests.ReportProgress(this.ProcessData);
                        sleepInMilliseconds = 2500;
                        break;
                    case XTSMode.Temperature:
                        //Get temperature in the package of engine data
                        //asyncOperation = this.serverRequests.GetTemperatureSetting(this.ProcessData);
                        //sleepInMilliseconds = 5000;
                        break;
                    default:
                        asyncOperation = null;
                        sleepInMilliseconds = 5000;
                        break;
                }

                if (asyncOperation != null)
                {
                    if (this.waitForDynamicData.WaitOne(WebRequestTimeout + specificRequestTimeout) == false)
                    {
                        System.Diagnostics.Debug.WriteLine("Dynamic data web request timed out.");

                        if (!asyncOperation.IsCompleted)
                        {
                            HttpWebRequest request = (HttpWebRequest)asyncOperation.AsyncState;
                            request.Abort();
                        }
                        continue;
                    }
                }

                if (currentMode != this.screenMode)
                {
                    continue; // The mode has changed
                }
                else
                {
                    Thread.Sleep(sleepInMilliseconds);
                }
            }
        }

        /// <summary>
        /// Selects which callback should be called based upon
        /// the data recived in the response.
        /// </summary>
        /// <param name="resultObject">The result object for the Async web call</param>
        /// <param name="data">The data returned form the web service.</param>
        public void ProcessData(IAsyncResult resultObject, object data)
        {
            this.waitForDynamicData.Set();

            if (data is WebException)
            {
                System.Diagnostics.Debug.WriteLine(data);
                return;
            }

            if (data is Diagnostics)
            {
                ProcessDiagnostics((Diagnostics)data);

                if (diagnostics.SPU2Comms.HasValue &&
                    !diagnostics.SPU2Comms.Value)
                {
                    this.generalData.SetMessageString("XTSStringSPU2Error");
                }
                else
                {
                    // Only clear if our current string displays the error message
                    if (this.General.Message == "XTSStringSPU2Error")
                    {
                        this.General.SetMessageString("XTSStringStatusDefault");
                    }
                }
            }

            if (data is SensorReplacementStatus[])
            {
                ProcessSensorReplacement((SensorReplacementStatus[])data);
            }

            if (data is SensorSetup)
            {
                ProcessSensorSetup((SensorSetup)data);
            }

            if (data is EngineLearningStatus)
            {
                ProcessEngineLearning((EngineLearningStatus)data);
            }
            
            if (data is ReportProgress)
            {
                ReportProgressCallback(resultObject,(ReportProgress)data);
            }

            if (data is TemperatureConfiguration)
            {
                ProcessTemperature((TemperatureConfiguration)data);
            }
        }

        /// <summary>
        /// Thread for polling for engine data
        /// </summary>
        private void EnginePollThread()
        {
            int start, delta;
            int sleepPeriod = 5000;
            IAsyncResult asyncOperation;

            this.trendData.TrendConfiguration.CollectionChanged += new System.Collections.Specialized.NotifyCollectionChangedEventHandler(TrendConfiguration_CollectionChanged);

            while (this.running)
            {
                start = Environment.TickCount;
                this.serverRequests.GetEngineLiveDataNC(this.ProcessEngineDataNC);
                asyncOperation = this.serverRequests.GetEngineLiveData(this.ProcessEngineData);

                // Wait for the engine data to be processed before requesting the next
                if (this.waitForEngineData.WaitOne(WebRequestTimeout) == false)
                {
                    System.Diagnostics.Debug.WriteLine("Engine data web request timed out.");

                    if (asyncOperation.IsCompleted)
                        System.Diagnostics.Debug.WriteLine("Engine data web request not signalled but marked completed");

                    HttpWebRequest request = (HttpWebRequest)asyncOperation.AsyncState;
                    request.Abort();
                    continue;
                }

                delta = Environment.TickCount - start;
                if (delta < sleepPeriod)
                {
                    System.Diagnostics.Debug.WriteLine("Engine data recieved in {0}ms, sleeping for {1}ms", delta, sleepPeriod - delta);
                    Thread.Sleep(sleepPeriod - delta);
                }
                else
                {
                    System.Diagnostics.Debug.WriteLine("Engine data recieved in {0}ms, EXPECTED {1}", delta, sleepPeriod);
                }
            }

            this.trendData.TrendConfiguration.CollectionChanged -= TrendConfiguration_CollectionChanged;
        }

        /// <summary>
        /// Callback function that is called when requesting engine data from
        /// the Web Service that isn't server cached
        /// </summary>
        /// <param name="data">The EngineData object returned from the Web Service</param>
        public void ProcessEngineDataNC(IAsyncResult resultObject, object data)
        {
            if (data is WebException)
            {
                OnError(XTSErrors.CommsFailure, null);
                this.waitForEngineData.Set();
                System.Diagnostics.Debug.WriteLine("ProcessEngineDataNC: {0}", data.ToString());
                return;
            }

            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess() == false)
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new Action<IAsyncResult, object>(ProcessEngineDataNC), resultObject, data);
                return;
            }

            if (data == null)
            {
                return;
            }

            if ((data is EngineDataNonCached) &&
                (this.engineData != null))
            {
                EngineDataNonCached ednc = data as EngineDataNonCached;
                lock (this.diagnostics.SyncRoot)
                {
                    if ((ednc.SPUDigitalOutputs != null) && (ednc.SPUDigitalOutputs.Length >= 3))
                    {
                        diagnostics.SystemStatus = ednc.SPUDigitalOutputs[0];
                        diagnostics.SPUAlarm = ednc.SPUDigitalOutputs[1];
                        diagnostics.SPUSlowdown = ednc.SPUDigitalOutputs[2];
                        System.Diagnostics.Debug.WriteLine("Engine Data received alarm outputs: {0} {1} {2}", ednc.SPUDigitalOutputs[0], ednc.SPUDigitalOutputs[1], ednc.SPUDigitalOutputs[2]);
                    }

                }
            }
        }

        /// <summary>
        /// Callback function that is called when requesting engine data from
        /// the Web Service.
        /// </summary>
        /// <param name="data">The EngineData object returned from the Web Service</param>
        public void ProcessEngineData(IAsyncResult resultObject, object data)
        {
            if (data is WebException)
            {
                OnError(XTSErrors.CommsFailure, null);
                this.waitForEngineData.Set();
                System.Diagnostics.Debug.WriteLine("ProcessEngineData: {0}", data.ToString());
                return;
            }

            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess() == false)
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new Action<IAsyncResult, object>(ProcessEngineData), resultObject, data);
                return;
            }

            if (data == null)
            {
                return;
            }

            this.ClearCommsError();

            if (this.engineData == null)
            {
                this.engineData = new XTSEngine();
            }
            
            //Fill in the XTSEngine data object using the data returned from the web service
            MapEngineData.SetupXTSEngineFromData(this.engineData, this.General, data as EngineData);

            //if (((EngineData)data).LiveData || ((EngineData)data).PLCCommsOK)
            {
                MapEngineData.EngineDataToXTSData(this.engineData, this.General, this.Learning, this.diagnostics, this.versionInfo, data as EngineData);
                
                if (((EngineData)data).LiveData)
                {
                    this.General.BarScaleRPM = (uint)((EngineData)data).MaximumTrendRPM;
                    this.notLiveEngineDataCount = 0;
                }
                else
                {
                    notLiveEngineDataCount++;

                    if (notLiveEngineDataCount > 3)
                    {
                        if (this.engineData.SEDM != null)
                        {
                            this.engineData.SEDM.Connection = null;
                        }

                        if (this.engineData.WIO != null)
                        {
                            this.engineData.WIO.Connection = null;
                        }

                        this.diagnostics.SPUComms = null;
                        this.diagnostics.SPU2Comms = null;
                        this.diagnostics.CPUCoreOK = false;
                    }
                }
            }

            ProcessFaults(((EngineData)data).faults);

            this.waitForEngineData.Set();
        }

        /// <summary>
        /// Handles the response to get faults request
        /// </summary>
        /// <param name="resultObject"></param>
        /// <param name="data">The data from the GetFaults</param>
        private void ProcessFaults(CoreFaults faults)
        {
            bool spuFault = false;
            bool coreFault = false;
            
            if (faults != null)
            {
                if (faults.ActiveFaults != null)
                {
                    foreach (Int16 fault in faults.ActiveFaults)
                    {
                        //Check for specific faults
                        if (fault >= 1 && fault <= 3)
                        {
                            //RTU has failed to communicate with the SPU
                            spuFault = true;
                        }
                        else
                        {
                            //Core software
                            coreFault = true;
                        }

                        if (fault == 47)
                        {
                            registerFaultCnt++;
                            if (registerFaultCnt >= 20)
                            {
                                OnError(XTSErrors.RegistrationError, null);
                                registerFaultCnt = 0;
                            }
                        }

                    }
                }
            }

            if(this.diagnostics.SPUComms == true) this.diagnostics.SPUComms = !spuFault;
            this.diagnostics.CPUCoreOK = !coreFault;

            if (faults.ActiveFaults.Length > 0)
            {
                this.General.SetMessageString("XTSStringCoreError", faults.ActiveFaults);
            }
            else
            {
                // Only clear if our current string displays the error message
                if (this.General.Message == "XTSStringCoreError")
                {
                    this.General.SetMessageString("XTSStringStatusDefault");
                }
            }
        }

        /// <summary>
        /// Processes the Diagnostics result from the
        /// web server.
        /// </summary>
        /// <param name="data">The diagnostics repsonse from the web service</param>
        public void ProcessDiagnostics(object data)
        {
            MapDiagnosticData.DiagnosticDataToXTSData(this.diagnostics, this.versionInfo, data as Diagnostics);
        }

        /// <summary>
        /// Processes the Sensor Replacment response from the
        /// web service.
        /// </summary>
        /// <param name="data">The sensor replacement response from the web service</param>
        public void ProcessSensorReplacement(SensorReplacementStatus[] data)
        {
            MapSensorReplacementData.SensorReplacementDataToXTSData(this.engineData, data);
        }

        /// <summary>
        /// Processes the response to the engine learn request to the web service
        /// </summary>
        /// <param name="data"></param>
        public void ProcessEngineLearning(object data)
        {
            MapLearningData.EngineLearningStatusToXTSData(this.learning, this.engineData, data as EngineLearningStatus);
        }

        /// <summary>
        /// Convert sensor setup to values in XTS Data
        /// </summary>
        public void ProcessSensorSetup(object data)
        {
            MapSensorSetupData.SensorSetupDataToXTSData(this.engineData, data as SensorSetup);
        }

        /// <summary>
        /// Convert temperature to values in XTS Data
        /// </summary>
        public void ProcessTemperature(object data)
        {
            MapTemperatureData.TemperatureDataToXTSData(this.temperatureData, data as TemperatureConfiguration);
        }

        public static DateTime ConvertFromUnixTimeStamp(double time)
        {
            DateTime origin = new DateTime(1970, 1, 1, 0, 0, 0, 0);
            return origin.AddSeconds(time);
        }

        /// <summary>
        /// Checks the Authorised response from the Web Server
        /// and handles a not authorised reponse if the user does not have
        /// the correct user level.
        /// </summary>
        /// <param name="authorisedResponse">The Authorised reponse from the web server</param>
        /// <returns>true if the user is authorised, otherwise false.</returns>
        private bool ProcessAuthorisedResponse(Authorised authorisedResponse)
        {
            if (!authorisedResponse.UserAuthorised)
            {
                OnError(XTSErrors.UnauthorisedUser, null);
            }

            return authorisedResponse.UserAuthorised;
        }
    }
}
