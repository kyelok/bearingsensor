/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Globalization;
using System.IO;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using WebServiceObjects;
using UserManagement;
using EventLogging;

namespace WebService
{
    public partial class WebService
    {
        /// <summary>
        /// Reference to the event logger
        /// </summary>
        EventLog logger = new EventLog();

        /// <summary>
        /// Sync object used to synchronise between threads
        /// </summary>
        private Object sensorSetupSPUSync = new Object();

        /// <summary>
        /// Current sensor data
        /// </summary>
        private SensorSetup sensorSetupData = null;

        /// <summary>
        /// Stop watch used to time the duration between data updates
        /// </summary>
        private System.Diagnostics.Stopwatch sensorSetupStopWatch;

        /// <summary>
        /// Time out in seconds between updates of the data
        /// </summary>
        public static readonly int SensorSetupTimeout = 1000;

        /// <summary>
        /// Initialises the live engine data
        /// </summary>
        private void InitialiseSensorSetup()
        {
            sensorSetupStopWatch = new System.Diagnostics.Stopwatch();
            sensorSetupStopWatch.Start();
        }

        /// <summary>
        /// Returns the sensor setup information
        /// </summary>
        /// <returns>Sensor setup information</returns>
        [OperationContract]
        [WebGet(UriTemplate = "engine/sensor/setup", ResponseFormat = WebMessageFormat.Json)]
        public SensorSetup GetSensorSetup()
        {
            bool haveSyncLock = false;

            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;

            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");
            
            try
            {
                // Make sure that the data only updates once every n seconds, and is
                // not updated multiple times by lots of clients
                if (sensorSetupStopWatch.Elapsed.TotalMilliseconds > SensorSetupTimeout)
                {
                    haveSyncLock = System.Threading.Monitor.TryEnter(sensorSetupSPUSync);

                    if (haveSyncLock)
                    {
                        // We have the lock, make sure that another thread hasn't already update the data
                        sensorSetupData = engineManagement.GetSensorSetup();
                    }
                }

                return sensorSetupData;
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                return null;
            }
            finally
            {
                if (haveSyncLock)
                {
                    sensorSetupStopWatch.Restart();
                    System.Threading.Monitor.Exit(sensorSetupSPUSync);
                }
            }
        }

        /// <summary>
        /// Returns the sensor that are excluded from slow roll
        /// </summary>
        /// <returns>Sensor setup information</returns>
        [OperationContract]
        [WebGet(UriTemplate = "engine/sensor/slowroll", ResponseFormat = WebMessageFormat.Json)]
        public bool[] GetSlowrolledSensors()
        {
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;

            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            try
            {
                return engineManagement.GetSlowrolledSensors();
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                return null;
            }
        }

        /// <summary>
        /// Sets the sensor mode
        /// </summary>
        /// <param name="mode">The mode to set</param>
        /// <returns>TRUE set ok, otherwise failure</returns>
        [OperationContract]
        [WebInvoke(UriTemplate = "engine/sensor/mode", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised SetSensorMode(Int16 mode)
        {
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.SensorControl);

                if (userAuthorised.UserAuthorised)
                {
                    userAuthorised.Success = engineManagement.SetSensorMode(mode, GetUserName());
                }
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                userAuthorised.Success = false;
            }

            return userAuthorised;
        }


        /// <summary>
        /// This method starts the sensor peak calibration.
        /// </summary>
        /// <param name="sensors">An array of the sensors to calibrate.
        /// Each item in the array should be between 0 and 27</param>
        [OperationContract]
        [WebInvoke(UriTemplate = "engine/sensor/calibrate/peek/start", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised SensorStartCalibratePeek(Int16[] sensors)
        {
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.SensorControl);

                if (userAuthorised.UserAuthorised)
                {
                    engineManagement.SensorStartCalibratePeek(sensors);
                }
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }

            return userAuthorised;
        }

        /// <summary>
        /// This method monitors the progress of the peak calibration
        /// </summary>
        /// <param name="sensors">An array of the sensors to monitor.
        /// Each item in the array should be between 0 and 27</param>
        /// <returns>An array of the sensors that have not yet calibrated.</returns>
        [OperationContract]
        [WebInvoke(UriTemplate = "engine/sensor/calibrate/peek/monitor", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised SensorMonitorCalibratePeek(Int16[] sensors)
        {
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.SensorControl);

                if (userAuthorised.UserAuthorised)
                {
                    userAuthorised.DataArray = engineManagement.SensorMonitorCalibratePeek(sensors);
                }
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                return null;
            }

            return userAuthorised;
        }

        /// <summary>
        /// Sensor peek reset
        /// </summary>
        /// <param name="sensors">Sensors to reset</param>
        [OperationContract]
        [WebInvoke(UriTemplate = "engine/sensor/reset/peek", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised SensorPeekReset(Int16[] sensors)
        {
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.SensorControl);

                if (userAuthorised.UserAuthorised)
                {
                    engineManagement.SensorPeekReset(sensors, GetUserName());
                }
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }

            return userAuthorised;
        }

        /// <summary>
        /// Initiates the calibration order
        /// </summary>
        [OperationContract]
        [WebInvoke(UriTemplate = "engine/sensor/calibrate/order", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised SensorCalibrateOrder()
        {
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.SensorControl);

                if (userAuthorised.UserAuthorised)
                {
                    engineManagement.SensorCalibrateOrder();
                }
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }

            return userAuthorised;
        }

        /// <summary>
        /// Gets the RPM Limit
        /// </summary>
        /// <returns>The RPM limit set in the SPU</returns>
        [OperationContract]
        [WebGet(UriTemplate = "engine/rpm/limit", ResponseFormat = WebMessageFormat.Json)]
        public Int16 GetRPMLimit()
        {

            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;

            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            try
            {
                return engineManagement.GetRPMLimit();
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                return 0;
            }
        }


        /// <summary>
        /// Enables a sensor
        /// </summary>
        [OperationContract]
        [WebInvoke(UriTemplate = "engine/sensor/enable", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised SensorEnable(UInt16 sensorId)
        {
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.SensorControl);

                if (userAuthorised.UserAuthorised)
                {
                    engineManagement.SensorEnable(sensorId, true);
                    logger.SensorEnable(sensorId, true, GetUserName());
                }
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }

            return userAuthorised;
        }

        /// <summary>
        /// Disables a sensor
        /// </summary>
        [OperationContract]
        [WebInvoke(UriTemplate = "engine/sensor/disable", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised SensorDisable(UInt16 sensorId)
        {
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.SensorControl);

                if (userAuthorised.UserAuthorised)
                {
                    engineManagement.SensorEnable(sensorId, false);
                    logger.SensorEnable(sensorId, false, GetUserName());
                }
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }

            return userAuthorised;
        }
    }
}
