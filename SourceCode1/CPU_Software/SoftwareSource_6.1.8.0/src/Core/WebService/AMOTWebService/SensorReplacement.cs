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

namespace WebService
{
    public partial class WebService
    {
        /// <summary>
        /// Gets the replacement state for all sensors in the system
        /// </summary>
        /// <returns>An array of SensorReplacementStatus</returns>
        [OperationContract]
        [WebGet(UriTemplate = "engine/sensor/replace", ResponseFormat = WebMessageFormat.Json)]
        public SensorReplacementStatus[] GetSensorReplacementStatus()
        {
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;

            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");


            try
            {
                return engineManagement.GetSensorReplacementStatus();
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                return null;
            }
        }

        /// <summary>
        /// Moves a sensor to the average stage of sensor repalcement
        /// </summary>
        /// <param name="sensor">The id of the sensor to start averaging on</param>
        [OperationContract]
        [WebInvoke(UriTemplate = "engine/sensor/replace/{sensor}/average", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised SensorReplacementAverage(string sensor)
        {
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.SensorReplacement);

                if (userAuthorised.UserAuthorised)
                {
                    engineManagement.StartSensorReplacementAverage(Int16.Parse(sensor, CultureInfo.InvariantCulture));
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
        /// Gets the replacement data for the sensor.
        /// </summary>
        /// <param name="sensor">The id of the sensor that has completed sensor replacement</param>
        [OperationContract]
        [WebGet(UriTemplate = "engine/sensor/replacementdata/{sensor}")]
        public Stream SensorGetReplacementData(string sensor)
        {
            try
            {
                OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.Headers.Add("Cache-Control", "no-cache");
                outResponse.Headers.Add("Pragma", "no-cache");
                outResponse.ContentType = "text/plain";
                return engineManagement.GetSensorReplacementData(Int16.Parse(sensor, CultureInfo.InvariantCulture));

            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                return null;
            }
        }

        /// <summary>
        /// Reads the sensor replacement offset file and sends it to the SPU.
        /// </summary>
        /// <param name="sensorOffsetsFile">The stream that the sensor replacement file can be read
        /// from.</param>
        [OperationContract, WebInvoke(UriTemplate = "engine/sensor/replace/upload", ResponseFormat = WebMessageFormat.Json)]
        public Authorised SensorReplacementUploadOffset(string sensorOffsetsData)
        {
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.SensorReplacement);

                if (userAuthorised.UserAuthorised)
                {
                    userAuthorised.Success = engineManagement.SetSensorReplacementData(sensorOffsetsData, GetUserName());
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
        /// Sets the Sensor Replacement information
        /// </summary>
        /// <param name="Date">Failure date of the sensor</param>
        /// <param name="sensor">The id of the sensor being replaced</param>
        [OperationContract]
        [WebInvoke(UriTemplate = "engine/sensor/replace/{sensor}", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised StartSensorReplacement(string sensor, string date)
        {
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.SensorReplacement);

                if (userAuthorised.UserAuthorised)
                {
                    engineManagement.StartSensorReplacement(date, short.Parse(sensor, CultureInfo.InvariantCulture), GetUserName());
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
        /// Cancels a Sensor Replacement
        /// </summary>
        /// <param name="sensor">The id of the sensor being cancelled</param>
        [OperationContract]
        [WebInvoke(UriTemplate = "engine/sensor/replace/{sensor}/cancel", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised SensorReplacementCancel(string sensor)
        {
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.SensorReplacement);

                if (userAuthorised.UserAuthorised)
                {
                    engineManagement.SensorReplacementCancel(short.Parse(sensor, CultureInfo.InvariantCulture), GetUserName());
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
