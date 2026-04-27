using System;
using System.IO;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Data;
using WebServiceObjects;
using System.Threading.Tasks;
using System.Collections.Generic;
using HelperClasses;
using log4net;

namespace TrendPlugin
{
    /// <summary>
    /// This class defines the web service that is used to query the trend data
    /// </summary>
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single)]
    public class TrendWebService : ITrendStreamer
    {

        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);


        Dictionary<string, TrendQuery> queries = new Dictionary<string, TrendQuery>();

        /// <summary>
        /// Starts a Trend data query
        /// </summary>
        /// <param name="end">The date of the most recent trend point to retrieve as a uix time stamp.</param>
        /// <param name="span">The number of minutes worth of data to retreive</param>
        /// <param name="Sensor">A list of the sensors to retrieve</param>
        /// <param name="SensorDeviation">A list of the sensor deviations to retreive</param>
        /// <param name="Cylinder">A list of cylinders to retreive</param>
        /// <param name="CylinderDeviation">A list of cylinder deviations to retreive</param>
        /// <param name="SLEM">A Flag indicating if SLEM should be retrieved</param>
        /// <param name="WIOActivity">A Flag indicating if WIOACtiviyt should be retrieved</param>
        /// <param name="WIOPPM">A Flag indicating if WIOPPM should be retrieved</param>
        /// <param name="WIOTemp">A Flag indicating if WIOTemp shoould be retrieved</param>
        /// <param name="RPM">A Flag indicating if RPM should be retrieved</param>
        /// <returns>The session id assigned to the query.  This session id can be used to request the results of the query</returns>
        public string StartTrend(string end, string span, string Sensor, string SensorDeviation, string Cylinder, string CylinderDeviation, string Temperature, string SLEM, string WIOActivity, string WIOPPM, string WIOTemp, string RPM, string CppmA, string CppPercent, string TotalTimeSpan)
        {
            string sessionId = Guid.NewGuid().ToString();
            TrendQuery query = new TrendQuery(end, span, Sensor, SensorDeviation, Cylinder, CylinderDeviation, Temperature, SLEM, WIOActivity, WIOPPM, WIOTemp, RPM, CppmA, CppPercent, TotalTimeSpan);

            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            this.queries.Add(sessionId, query);

            Task.Factory.StartNew(() =>
            {
                try
                {
                    query.QueryTrendData(sessionId, false);
                }
                catch (Exception e)
                {
                    log.ErrorFormat("Caught unhandled exception {0}", e.ToString());

                    try
                    {
                        query.AllRecordsRead = true;
                    }
                    catch (Exception)
                    { }
                }

            });

            return sessionId;
        }

        /// <summary>
        /// Gets the current processed query data
        /// </summary>
        /// <returns></returns>
        public EngineTrendResult Processed(string sessionId)
        {
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            EngineTrendResult result = null;
            try
            {
                if (this.queries.ContainsKey(sessionId))
                {
                    result = this.queries[sessionId].ProcessedTrends();
                    result.SessionId = sessionId;
                }
            }
            catch (Exception e)
            {
                log.ErrorFormat("Caught unhandled exception {0}", e.ToString());
            }

            return result;
        }

        /// <summary>
        /// Stops a trend query
        /// </summary>
        /// <param name="sessionId"></param>
        /// <returns></returns>
        public bool Stop(string sessionId)
        {
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            try
            {
                if (this.queries.ContainsKey(sessionId))
                {
                    this.queries.Remove(sessionId);
                }
            }
            catch (Exception e)
            {
                log.ErrorFormat("Caught unhandled exception {0}", e.ToString());
            }

            return true;
        }

        /// <summary>
        /// Exports Trend data
        /// </summary>
        /// <param name="end">The date of the most recent trend point to retrieve as a uix time stamp.</param>
        /// <param name="span">The number of minutes worth of data to retreive</param>
        /// <param name="Sensor">A list of the sensors to retrieve</param>
        /// <param name="SensorDeviation">A list of the sensor deviations to retreive</param>
        /// <param name="Cylinder">A list of cylinders to retreive</param>
        /// <param name="CylinderDeviation">A list of cylinder deviations to retreive</param>
        /// <param name="SLEM">A Flag indicating if SLEM should be retrieved</param>
        /// <param name="WIOActivity">A Flag indicating if WIOACtiviyt should be retrieved</param>
        /// <param name="WIOPPM">A Flag indicating if WIOPPM should be retrieved</param>
        /// <param name="WIOTemp">A Flag indicating if WIOTemp shoould be retrieved</param>
        /// <param name="RPM">A Flag indicating if RPM should be retrieved</param>
        /// <param name="HighRes">A flag indicating if the data should be exported in high or low resolution</param>
        /// <returns>A DownloadOperation object containing information about the export</returns>
        public DownloadOperation ExportTrendData(string end, string span, string Sensor, string SensorDeviation, string Cylinder,
                                          string CylinderDeviation, string Temperature, string SLEM, string WIOActivity,
                                          string WIOPPM, string WIOTemp, string RPM, string CppmA, string CppPercent, string HighRes)
        {
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            // Setup the download operation
            InternalDownloadOperation downloadOperation = new InternalDownloadOperation();

            string exportFile;
            DateTime time = DateTime.UtcNow;

            exportFile = String.Format("trend_{0}_{1}_{2:X}.csv", end, span, Environment.TickCount);

            downloadOperation.FilePath = FullFilePath(exportFile);
            string exportUri = WebOperationContext.Current.IncomingRequest.UriTemplateMatch.BaseUri.ToString();
            downloadOperation.DownloadURL = string.Format("{0}download/{1}", exportUri, exportFile);

            string sessionId = Guid.NewGuid().ToString();
            TrendQuery query = new TrendQuery(end, span, Sensor, SensorDeviation, Cylinder, CylinderDeviation, Temperature, SLEM, WIOActivity, WIOPPM, WIOTemp, RPM, CppmA, CppPercent, span, HighRes, downloadOperation);
            this.queries.Add(sessionId, query);

            Task.Factory.StartNew(() =>
            {
                try
                {
                    //Query the trend data, flagging that we want to export the results
                    query.QueryTrendData(sessionId, true);
                }
                catch (Exception e)
                {
                    log.ErrorFormat("Caught unhandled exception {0}", e.ToString());
                }
                
            });

            DownloadOperation dl = new DownloadOperation();
            dl.SessionId = sessionId;

            return dl;
        }

        /// <summary>
        /// Downloads a exported data file from the file system
        /// </summary>
        /// <param name="name">The name of the file to download</param>
        /// <returns>The Stream object that can be used to read the trend data from</returns>
        public Stream ExportDataFile(string name)
        {
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            AutoFileDeleteStream deleteStream = new AutoFileDeleteStream(FullFilePath(name), FileMode.Open);

            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            return deleteStream;
        }

        public DownloadOperation ExportProgress(string sessionId)
        {
            DownloadOperation downloadOperation = new DownloadOperation();
            
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            try
            {
                if (this.queries.ContainsKey(sessionId))
                {
                    downloadOperation.PercentDone = this.queries[sessionId].ExportProgress;
                    if (this.queries[sessionId].ExportComplete)
                    {
                        downloadOperation.PercentDone = 100;
                        downloadOperation.FileURL = this.queries[sessionId].ExportURL;
                    }
                }
            }
            catch (Exception e)
            {
                log.ErrorFormat("Caught unhandled exception {0}", e.ToString());
                downloadOperation.Error = true;
                downloadOperation.PercentDone = 100;
            }

            downloadOperation.SessionId = sessionId;
            return downloadOperation;    
        }

        private string FullFilePath(string name)
        {
            string tempFolder = TrendQuery.TempFolder();
            return tempFolder + name;
        }

        private int[] CommaSeperatedListToIntArray(string csv)
        {
            if (csv == null || csv.Length == 0)
                return null;

            string[] cvsData = csv.Split(',');
            int[] data = new int[cvsData.Length];

            for (int i = 0; i < cvsData.Length; i++)
            {
                data[i] = Int32.Parse(cvsData[i]);
            }

            return data;
        }
    }
}
