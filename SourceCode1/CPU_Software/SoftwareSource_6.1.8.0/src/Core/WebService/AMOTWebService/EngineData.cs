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
using System.Collections.Generic;
using System.Runtime.Serialization.Json;
using System.Runtime.Caching;

namespace WebService
{
    public partial class WebService
    {
        /// <summary>
        /// The key that is used to access the cached engine data
        /// </summary>
        static string EngineDataCacheKey = "7F84E8AC-BD30-4666-BFD6-B316FDF11012";

        /// <summary>
        /// Current engine data
        /// </summary>
        private EngineData liveEngineData = null;

        /// <summary>
        /// Time out in seconds between updates of the engine data
        /// </summary>
        public static readonly int LiveEngineDataTimeout = 5000;


        /// <summary>
        /// Returns the live engine non cacched data
        /// </summary>
        /// <returns>The live engine data</returns>
        [OperationContract]
        [WebGet(UriTemplate = "engine/livenc", ResponseFormat = WebMessageFormat.Json)]
        public EngineDataNonCached GetLiveEngineDataNC()
        {
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");
            ObjectCache cache = MemoryCache.Default;

            EngineDataNonCached liveEngineDataNC = null;
            try
            {
                liveEngineDataNC = engineManagement.GetLiveEngineDataNC();
            }
            catch (Exception e)
            {
                log.Error(e.ToString());
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                return null;
            }

            log.Info("Returning liveEngineDataNC to client");
            return liveEngineDataNC;
        }

        /// <summary>
        /// Returns the live engine data
        /// </summary>
        /// <returns>The live engine data</returns>
        [OperationContract]
        [WebGet(UriTemplate = "engine/live", ResponseFormat = WebMessageFormat.Json)]
        public EngineData GetLiveEngineData()
        {
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");
            ObjectCache cache = MemoryCache.Default;


            liveEngineData = (EngineData)cache.Get(EngineDataCacheKey);

            if (liveEngineData == null)
            {
                try
                {
                    log.Info("Updating live engine data");

                    liveEngineData = engineManagement.GetLiveEngineData();
                    // Store data in the cache
                    CacheItemPolicy cacheItemPolicy = new CacheItemPolicy();
                    cacheItemPolicy.AbsoluteExpiration = DateTime.Now.AddMilliseconds(LiveEngineDataTimeout);
                    cache.Add(EngineDataCacheKey, liveEngineData, cacheItemPolicy);
                }
                catch (Exception e)
                {
                    log.Error(e.ToString());
                    outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                    return null;
                }
            }

            log.Info("Returning liveEngineData to client");
            return liveEngineData;
        }

        

        /// <summary>
        /// Handles a trend configuration being saved from the RIA
        /// </summary>
        /// <param name="trendsConfiguration">The trend configuration data to store in the database.</param>
        [OperationContract]
        [WebInvoke(UriTemplate = "engine/trendconfig", RequestFormat = WebMessageFormat.Json)]
        public void SetTrendConfiguration(TrendConfiguration trendConfiguration)
        {
            try
            {
                log.Info("Updating live engine data");

                //Save the TrendConfiguration into the Database
                engineManagement.SetTrendConfiguration(trendConfiguration);
            }
            catch (Exception e)
            {
                log.Error(e.ToString());
                OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }
        }

        /// <summary>
        /// Gets a trend configuration from the database
        /// </summary>
        /// <returns>A TrendConfiguration object</returns>
        [OperationContract]
        [WebGet(UriTemplate = "engine/trendconfig/{slot}", ResponseFormat = WebMessageFormat.Json)]
        public TrendConfiguration GetTrendConfiguration(string slot)
        {
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            try
            {
                log.Info("GetTrendConfiguration");

                return engineManagement.GetTrendConfiguration(uint.Parse(slot));
            }
            catch (Exception e)
            {
                log.Error(e.ToString());
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }
            return null;
        }

        [OperationContract]
        [WebGet(UriTemplate = "/engine/trendconfigs", ResponseFormat = WebMessageFormat.Json)]
        public String[] TrendConfigurations()
        {
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            try
            {
                log.Info("Getting trend configs");

                return engineManagement.GetTrendConfigurations();
            }
            catch (Exception e)
            {
                log.Error(e.ToString());
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }
            return null;
        }

        /// <summary>
        /// Handles temperature configuration being saved from the RIA
        /// </summary>
        /// <param name="temperatureConfiguration">The temperaure configuration data to store in the database.</param>
        [OperationContract]
        [WebInvoke(UriTemplate = "/temperatureconfig", RequestFormat = WebMessageFormat.Json)]
        public void SetTemperatureConfiguration(TemperatureConfiguration temperatureConfiguration)
        {
            try
            {
                log.Info("Updating temperature configuration");

                //Save the TrendConfiguration into the Database
                engineManagement.SetTemperatureConfiguration(temperatureConfiguration);
            }
            catch (Exception e)
            {
                log.Error(e.ToString());
                OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }
        }
        
        /// <summary>
        /// Gets a temperature configuration from the database
        /// </summary>
        /// <returns>A temperature Configuration object</returns>
        [OperationContract]
        [WebGet(UriTemplate = "/temperaturelive", ResponseFormat = WebMessageFormat.Json)]
        public TemperatureConfiguration GetTemperatureLive()
        {
            TemperatureConfiguration returnData;
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Cache-Control", "no-cache");

            ObjectCache cache = MemoryCache.Default;
            string cacheKey = "8ED90540-F1C4-4520-96F5-317CE45BDE82";

            returnData = (TemperatureConfiguration)cache.Get(cacheKey);

            if (returnData == null)
            {
                try
                {
                    returnData = engineManagement.GetLiveTemperatureData();
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
    }
}
