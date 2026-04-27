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
using System.Collections.Generic;
using System.Runtime.Caching;
using DataCollectionSDK;

namespace WebService
{
    public partial class WebService
    {
        /// <summary>
        /// Get diagnostic information
        /// </summary>
        /// <returns>Diagnostic information</returns>
        [OperationContract]
        [WebGet(UriTemplate = "diagnostics", ResponseFormat = WebMessageFormat.Json)]
        public Diagnostics Diagnostics()
        {
            Diagnostics returnData;
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Cache-Control", "no-cache");

            ObjectCache cache = MemoryCache.Default;
            string cacheKey = "8ED90540-F1C4-4520-96F5-317CE45BDE82";

            returnData = (Diagnostics)cache.Get(cacheKey);
            
            if (returnData == null)
            {
            try
            {
                    returnData = engineManagement.Diagnostics();
                    CacheItemPolicy cacheItemPolicy = new CacheItemPolicy();
                    cacheItemPolicy.AbsoluteExpiration = DateTime.Now.AddMilliseconds(LiveEngineDataTimeout);
                    cache.Add(cacheKey, returnData, cacheItemPolicy);
            }
            catch (Exception e)
            {
                log.Error(e.ToString());
                    outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                    return null;
                }
            }

            return returnData;
        }

        /// <summary>
        /// Get diagnostic information
        /// </summary>
        /// <returns>Diagnostic information</returns>
        [OperationContract]
        [WebGet(UriTemplate = "diagnostics/faults", ResponseFormat = WebMessageFormat.Json)]
        public CoreFaults Faults()
        {
            CoreFaults returnData;
            string expireHeader;

            expireHeader = DateTime.UtcNow.AddMilliseconds(LiveEngineDataTimeout).ToString();
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Expires", expireHeader);

            ObjectCache cache = MemoryCache.Default;
            string cacheKey = "CED486BC-F5DC-4AC0-9575-AF08909374A3";

            returnData = (CoreFaults)cache.Get(cacheKey);

            if (returnData == null)
            {
                try
                {
                    returnData = engineManagement.GetFaults();
                    CacheItemPolicy cacheItemPolicy = new CacheItemPolicy();
                    cacheItemPolicy.AbsoluteExpiration = DateTime.Now.AddMilliseconds(LiveEngineDataTimeout);
                    cache.Add(cacheKey, returnData, cacheItemPolicy);
                }
                catch (Exception e)
                {
                    log.Error(e.ToString());
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                return null;
            }
        }

            return returnData;
        }

        /// <summary>
        /// Enables SPU alarm test mode
        /// </summary>
        [OperationContract]
        [WebInvoke(UriTemplate = "diagnostics/alarm/test/on", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised AlarmTestModeOn()
        {
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.Diagnostics);

                if (userAuthorised.UserAuthorised)
                {
                    engineManagement.EnableSPUAlarmTestMode(true, GetUserName());
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
        /// Disable SPU alarm test mode
        /// </summary>
        [OperationContract]
        [WebInvoke(UriTemplate = "diagnostics/alarm/test/off", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised AlarmTestModeOff()
        {
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.Diagnostics);

                if (userAuthorised.UserAuthorised)
                {
                    engineManagement.EnableSPUAlarmTestMode(false, GetUserName());
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
        /// Turns the SPU alarm identified by alarm_id on.
        /// </summary>
        /// <param name="alarm_id">The id of the alarm to turn on.  This must be "1", "2" or "3"</param>
        [OperationContract]
        [WebInvoke(UriTemplate = "diagnostics/alarm/on", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised AlarmOn(int alarm_id)
        {
            Authorised userAuthorised = new Authorised();
            userAuthorised.Success = false;

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.Diagnostics);

                if (userAuthorised.UserAuthorised)
                {
                    userAuthorised.Success = engineManagement.EnableSPUAlarm(alarm_id, DigitalOutputState.On, GetUserName());
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
        /// Turns the SPU alarm identified by alarm_id off.
        /// </summary>
        /// <param name="alarm_id">The id of the alarm to turn off.  This must be "1", "2" or "3"</param>
        [OperationContract]
        [WebInvoke(UriTemplate = "diagnostics/alarm/off", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised AlarmOff(int alarm_id)
        {
            Authorised userAuthorised = new Authorised();
            userAuthorised.Success = false;

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.Diagnostics);

                if (userAuthorised.UserAuthorised)
                {
                    userAuthorised.Success = engineManagement.EnableSPUAlarm(alarm_id, DigitalOutputState.Off, GetUserName());
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
        /// Resets the comms stats that are stored by the modbus server
        /// </summary>
        [OperationContract]
        [WebInvoke(UriTemplate = "diagnostics/comms/reset", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised CommStatsReset()
        {
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.Diagnostics);

                if (userAuthorised.UserAuthorised)
                {
                    engineManagement.ResetCommStats();
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

        [OperationContract]
        [WebGet(UriTemplate = "modbus/{start}/{end}", ResponseFormat = WebMessageFormat.Json)]
        public short[] ReadModbusRegisters(string start, string end)
        {
            try
            {
                WebOperationContext.Current.OutgoingResponse.Headers.Add("Cache-Control", "no-cache");
                return engineManagement.ReadModbusRegisters(UInt16.Parse(start), UInt16.Parse(end));
            }
            catch (Exception e)
            {
                WebOperationContext.Current.OutgoingResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                log.Error(e.ToString());
                return null;
            }
        }

        [OperationContract]
        [WebGet(UriTemplate = "modbus/w/{start}/{value}", ResponseFormat = WebMessageFormat.Json)]
        public Stream WriteModbusRegisters(string start, string value)
        {
            WebOperationContext.Current.OutgoingResponse.Headers.Add("Cache-Control", "no-cache");
            WebOperationContext.Current.OutgoingResponse.ContentType = "text/html";
            try
            {
                engineManagement.WriteModbusRegister(UInt16.Parse(start), UInt16.Parse(value));
                return new MemoryStream(Encoding.UTF8.GetBytes(
                    string.Format("Written {0} to {1}", value, start)
                    ));
            }
            catch (Exception e)
            {
                return new MemoryStream(Encoding.UTF8.GetBytes(
                    string.Format(e.ToString())
                    ));
            }
            
        }

        /// <summary>
        /// Returns the client access policy for silver light clients
        /// </summary>
        /// <returns>An XML string to return to the client that requested the access policy.</returns>
        [OperationContract]
        [WebGet(UriTemplate = "/debug")]
        public Stream GetDebug()
        {
            WebOperationContext.Current.OutgoingResponse.ContentType = "text/html";
            WebOperationContext.Current.OutgoingResponse.Headers.Add("Cache-Control", "no-cache");
            return new MemoryStream(Encoding.UTF8.GetBytes(Resources.Debug));
        }
    }
}
