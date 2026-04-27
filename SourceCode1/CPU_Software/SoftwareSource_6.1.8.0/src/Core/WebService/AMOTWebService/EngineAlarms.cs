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
using System.Runtime.Caching;

namespace WebService
{
    public partial class WebService
    {
        /// <summary>
        /// Returns the engine alarms
        /// </summary>
        /// <returns>The engine alarms</returns>
        [OperationContract]
        [WebGet(UriTemplate = "engine/alarms", ResponseFormat = WebMessageFormat.Json)]
        public EngineAlarm[] GetEngineAlarms()
        {
            EngineAlarm[] returnData;
            string expireHeader;

            expireHeader = DateTime.UtcNow.AddMilliseconds(LiveEngineDataTimeout).ToString();
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Expires", expireHeader);

            ObjectCache cache = MemoryCache.Default;
            string cacheKey = "688DBEEA-4564-4DE9-92F6-1162832F3978";
            returnData = (EngineAlarm[])cache.Get(cacheKey);

            if (returnData == null)
            {
                try
                {
                    returnData = engineManagement.GetEngineAlarms();
                    CacheItemPolicy cacheItemPolicy = new CacheItemPolicy();
                    cacheItemPolicy.AbsoluteExpiration = DateTime.Now.AddMilliseconds(LiveEngineDataTimeout);
                    cache.Add(cacheKey, returnData, cacheItemPolicy);
                }
                catch (Exception e)
                {
                    log.Error(e.ToString());

                    outResponse = WebOperationContext.Current.OutgoingResponse;
                    outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                    return null;
                }
            }

            return returnData;
        }

        /// <summary>
        /// Returns the count of active alarms
        /// </summary>
        /// <returns>The number of active alarms</returns>
        [OperationContract]
        [WebGet(UriTemplate = "engine/alarms/count", ResponseFormat = WebMessageFormat.Json)]
        public Int32 GetEngineAlarmsCount()
        {
            Int32? returnData;
            string expireHeader;

            expireHeader = DateTime.UtcNow.AddMilliseconds(LiveEngineDataTimeout).ToString();
            log.InfoFormat("Setting HTTP Expire Header to {0}", expireHeader);

            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Expires", expireHeader);

            ObjectCache cache = MemoryCache.Default;
            string cacheKey = "A35E50D1-C8E5-4F25-8F26-BEE3A8BAB127";
            returnData = (Int32?)cache.Get(cacheKey);

            if (returnData == null)
            {
                try
                {
                    returnData = engineManagement.GetEngineAlarmsCount();
                    CacheItemPolicy cacheItemPolicy = new CacheItemPolicy();
                    cacheItemPolicy.AbsoluteExpiration = DateTime.Now.AddMilliseconds(LiveEngineDataTimeout);
                    cache.Add(cacheKey, returnData, cacheItemPolicy);
                }
                catch (Exception e)
                {
                    log.Error(e.ToString());

                    outResponse = WebOperationContext.Current.OutgoingResponse;
                    outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                    return -1;
                }
            }

            return (int)returnData;
        }

        /// <summary>
        /// This method puts the SPU into alarm output test mode
        /// </summary>
        [OperationContract]
        [WebInvoke(UriTemplate = "engine/alarms/ack", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised EngineAlarmsAck(int[] alarms)
        {
            Authorised userAuthorised = new Authorised();

            string countCacheKey = "A35E50D1-C8E5-4F25-8F26-BEE3A8BAB127";
            string alarmsCacheKey = "688DBEEA-4564-4DE9-92F6-1162832F3978";

            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.AckAlarms);

                if (userAuthorised.UserAuthorised)
                {
                    engineManagement.EngineAlarmsAck(alarms, GetUserName());
                    userAuthorised.Success = true;
                }

                ObjectCache cache = MemoryCache.Default;
                cache.Remove(countCacheKey);
                cache.Remove(alarmsCacheKey);
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }

            return userAuthorised;
        }

        [OperationContract]
        [WebInvoke(UriTemplate = "engine/alarms/ignore", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised EngineAlarmsIgnore(int[] alarms)
        {
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.AckAlarms);
                if (userAuthorised.UserAuthorised)
                {
                    engineManagement.EngineAlarmsIgnore(alarms, GetUserName());
                }
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }

            return userAuthorised;
        }
    }
}
