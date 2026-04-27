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

namespace WebService
{
    public partial class WebService
    {
        /// <summary>
        /// Return the event log
        /// </summary>
        /// <returns>The event log</returns>
        [OperationContract]
        [WebGet(UriTemplate = "eventlog?offset={offset}&limit={limit}&alarms={alarms}", ResponseFormat = WebMessageFormat.Json)]
        public EventLogResult EventLog(int offset, int limit, int alarms)
        {
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;

            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            try
            {
                EventLogResult eventLogResult = engineManagement.ReadEventLog(offset, limit);
                if (alarms > 0)
                {
                    if (eventLogResult == null)
                        eventLogResult = new EventLogResult(0, offset, null);
                    eventLogResult.EngineAlarms = GetEngineAlarms();
                }
                return eventLogResult;
            }
            catch (Exception e)
            {
                log.Error(e.ToString());
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                return null;
            }
        }

        /// <summary>
        /// Export the event log
        /// </summary>
        /// <returns>Stream to the event log file</returns>
        [OperationContract]
        [WebGet(UriTemplate = "eventlog/export")]
        public Stream EventLogExport()
        {
            try
            {
                OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.Headers.Add("Cache-Control", "no-cache");
                outResponse.Headers.Add("Pragma", "no-cache");
                outResponse.ContentType = "text/plain";
                //WebOperationContext.Current.OutgoingResponse.Headers.Add("Content-Disposition: attachment; filename=eventlog.txt");
                return engineManagement.ExportEventLog();
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
        /// Export the event log
        /// </summary>
        /// <returns>Stream to the event log file</returns>
        [OperationContract]
        [WebGet(UriTemplate = "temperature/export")]
        public Stream TemperatureSettingExport()
        {
            try
            {
                OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.Headers.Add("Cache-Control", "no-cache");
                outResponse.Headers.Add("Pragma", "no-cache");
                outResponse.ContentType = "text/plain";
                //WebOperationContext.Current.OutgoingResponse.Headers.Add("Content-Disposition: attachment; filename=eventlog.txt");
                return engineManagement.ExportTemperatureSetting();
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                return null;
            }
        }
    }
}
