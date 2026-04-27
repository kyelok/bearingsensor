/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: Christopher Peerman, 12/04/2012
 */
using System;
using System.IO;
using System.Net;
using WebServiceObjects;
using System.Threading;

namespace XTS
{
    public partial class XTSDataProviderWeb
    {
        private enum DownloadType
        {
            SystemStatus,
            VerificationData,
            SpeedAccumulatedTable,
            Trend
        }

        /// <summary>
        /// Exports the current trend to the specified file.
        /// </summary>
        /// <param name="fileStream">The filestream opened to write the data to.</param>
        /// <param name="highRes">The quality of the data, true = high detail</param>
        public void ExportCurrentTrend(System.IO.Stream fileStream, bool highRes)
        {

            //To export the trend we need the export the data that is displayed on the screen
            TrendRequest trendRequest = new TrendRequest(this.trendData.TrendConfiguration, this.Trends.LastHistoryUpdate, this.rangeCurrent.duration, this.rangeCurrent.duration, highRes);
            XTSWebResultDelegate resultsDelegate = new XTSWebResultDelegate(null, SaveWithDownloadOperationCallback, fileStream, DownloadType.Trend, trendRequest, 0);
            trendRequest.MakeRequest(serverRequests, resultsDelegate.WebServiceCallback, true);
        }

        /// <summary>
        /// Stores the system status CSV file.
        /// </summary>
        /// <param name="fileStream">Stream to save data to</param>
        public void SaveSystemStatus(Stream fileStream)
        {
            XTSWebResultDelegate resultsDelegate = new XTSWebResultDelegate(null, SaveWithDownloadOperationCallback, fileStream, DownloadType.SystemStatus, 0);
            this.serverRequests.DownloadSystemExport(resultsDelegate.WebServiceCallback, false);
        }
        
        /// <summary>
        /// Stores the learning verification file.
        /// </summary>
        /// <param name="fileStream">Stream to save data to</param>
        public void SaveLearningVerification(System.IO.Stream fileStream)
        {
            System.Diagnostics.Debug.WriteLine("User Started to LearningVerification download"); 
            XTSWebResultDelegate resultsDelegate = new XTSWebResultDelegate(null, SaveWithDownloadOperationCallback, fileStream, DownloadType.VerificationData, 0);
            this.serverRequests.DownloadSystemExport(resultsDelegate.WebServiceCallback, true);
        }

        /// <summary>
        /// Stores the event log csv file.
        /// </summary>
        /// <param name="fileStream">Stream to save data to</param>
        public void SaveEventLog(Stream fileStream)
        {
            StreamDownloader download = new StreamDownloader(this.errorCallback, BusyOperation, fileStream);
            BusyOperation(true); 
            serverRequests.DownloadEventLog(download.DownloadCompleted);            
        }

        /// <summary>
        /// Stores the temperature setting csv file.
        /// </summary>
        /// <param name="fileStream">Stream to save data to</param>
        public void SaveTemperatureSetting(Stream fileStream)
        {
            StreamDownloader download = new StreamDownloader(this.errorCallback, BusyOperation, fileStream);
            BusyOperation(true);
            serverRequests.DownloadTemperature(download.DownloadCompleted);
        }

        /// <summary>
        /// Saves a file to the specified path that includes the data
        /// </summary>
        /// <param name="fileStream">Stream to save data to</param>
        public void SaveSpeedAccumulatedTableConfig(Stream fileStream)
        {
            XTSWebResultDelegate resultsDelegate = new XTSWebResultDelegate(null, SaveWithDownloadOperationCallback, fileStream, DownloadType.SpeedAccumulatedTable, 0);
            this.serverRequests.DownloadSpeedComp(resultsDelegate.WebServiceCallback);
        }

        private void SaveWithDownloadOperationCallback(IAsyncResult resultObject, object data, XTSResultDelegate callback, params object[] objects)
        {
            if (data is WebException)
            {
                System.Diagnostics.Debug.WriteLine("SaveWithDownloadOperationCallback WebException while downloading.");
                ProgressOperation(100);
                WebServiceObjectsVoidCallback(resultObject, data);
                return;
            }

            DownloadType downloadType = (DownloadType)objects[1];
            DownloadOperation operation = (DownloadOperation)data;

            System.Diagnostics.Debug.WriteLine("SaveWithDownloadOperationCallback Handling Download type {0}", downloadType);
            System.Diagnostics.Debug.WriteLine("SaveWithDownloadOperationCallback Handling Download operation {0} {1} {2}", operation.Error, operation.FileURL, operation.PercentDone);

            ProgressOperation((uint)operation.PercentDone);

            //Determine if the operation has been reset from a different station
            //by checking that the percentage reported back from the web service is
            //not less then the percentage received from the web service.
            if (operation.PercentDone < (int)objects[objects.Length-1])
            {
                System.Diagnostics.Debug.WriteLine("SaveWithDownloadOperationCallback {0} < {1}", operation.PercentDone, (int)objects[objects.Length - 1]);
                ProgressOperation((uint)100);
 
                System.Diagnostics.Debug.WriteLine("SaveWithDownloadOperationCallback Operation Reset");

                if (objects[0] is Stream)
                {
                    System.Diagnostics.Debug.WriteLine("SaveWithDownloadOperationCallback Closing the stream.");
                    StreamDownloader download = new StreamDownloader(this.errorCallback, BusyOperation, (Stream)objects[0]);
                    download.CleanupFileStream();
                }

                OnError(XTSErrors.General, new object[] { "Operation Reset" });
            }
            else if (operation.FileURL != null)
            {
                ProgressOperation(100);

                BusyOperation(true);

                System.Diagnostics.Debug.WriteLine("SaveWithDownloadOperationCallback Creating StreamDownloader.");
                StreamDownloader download = new StreamDownloader(this.errorCallback, BusyOperation, (Stream)objects[0]);
                System.Diagnostics.Debug.WriteLine("SaveWithDownloadOperationCallback Started Download.");
                serverRequests.Download(operation.FileURL, download.DownloadCompleted);

                if (downloadType == DownloadType.Trend)
                {
                    //Remove the query
                    serverRequests.DeleteTrendProgress(operation.SessionId);
                }

            }
            else
            {
                Thread.Sleep(50); // Stop from requesting every millisecond
                XTSWebResultDelegate resultsDelegate;
                
                switch (downloadType)
                {
                    case DownloadType.SystemStatus:
                        resultsDelegate = new XTSWebResultDelegate(null, SaveWithDownloadOperationCallback, objects[0], objects[1], operation.PercentDone);
                        this.serverRequests.DownloadSystemExport(resultsDelegate.WebServiceCallback, false);
                        break;
                    case DownloadType.VerificationData:
                        resultsDelegate = new XTSWebResultDelegate(null, SaveWithDownloadOperationCallback, objects[0], objects[1], operation.PercentDone);
                        this.serverRequests.DownloadSystemExport(resultsDelegate.WebServiceCallback, true);
                        break;
                    case DownloadType.SpeedAccumulatedTable:
                        resultsDelegate = new XTSWebResultDelegate(null, SaveWithDownloadOperationCallback, objects[0], objects[1], operation.PercentDone);
                        this.serverRequests.DownloadSpeedComp(resultsDelegate.WebServiceCallback);
                        break;
                    case DownloadType.Trend:
                        resultsDelegate = new XTSWebResultDelegate(null, SaveWithDownloadOperationCallback, objects[0], objects[1], objects[2], operation.PercentDone);
                        serverRequests.GetTrendExportProgress(resultsDelegate.WebServiceCallback, operation.SessionId);
                        break;
                }
            }
        }
        
        internal class StreamDownloader
        {
            private System.IO.Stream stream;
            private XTSBusyDelegate BusyOperation;
            private XTSErrorDelegate onError;
            
            public StreamDownloader(XTSErrorDelegate error, XTSBusyDelegate BusyOperation, Stream fileStream)
            {
                this.BusyOperation = BusyOperation;
                this.stream = fileStream;
                this.onError = error;
            }

            /// <summary>
            /// Cleans up the file stream on the UI thread
            /// </summary>
            public void CleanupFileStream()
            {
                if (System.Windows.Deployment.Current.Dispatcher.CheckAccess() == false)
                {
                    System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new Action(CleanupFileStream));
                    return;
                }

                BusyOperation(false);
                stream.Flush();
                stream.Close();                
            }

            public void DownloadCompleted(IAsyncResult result, Stream inputStream)
            {
                System.Diagnostics.Debug.WriteLine("StreamDownloader.DownloadCompleted called.");

                if (System.Windows.Deployment.Current.Dispatcher.CheckAccess() == false)
                {
                    System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new Action<IAsyncResult, Stream>(DownloadCompleted), result, inputStream);
                    
                    System.Diagnostics.Debug.WriteLine("StreamDownloader.DownloadCompleted rescheduled by the dispatcher");
                    return;
                }

                System.Diagnostics.Debug.WriteLine("StreamDownloader.DownloadCompleted.  Downloading.");

                if (inputStream != null)
                {
                    System.Diagnostics.Debug.WriteLine("StreamDownloader.DownloadCompleted Starting to download");

                    byte[] buffer = new byte[1024];
                    int read;
                    do
                    {
                        System.Diagnostics.Debug.WriteLine("StreamDownloader.DownloadCompleted Reading {0} bytes from stream", buffer.Length);
                        read = inputStream.Read(buffer, 0, buffer.Length);
                        System.Diagnostics.Debug.WriteLine("StreamDownloader.DownloadCompleted Read {0} bytes from stream", read);

                        if (read > 0)
                        {
                            stream.Write(buffer, 0, read);
                        }
                    } while (read > 0);

                    System.Diagnostics.Debug.WriteLine("StreamDownloader.DownloadCompleted File downloaded.");
                }
                else
                {
                    System.Diagnostics.Debug.WriteLine("StreamDownloader.DownloadCompleted inputStream is null.");
                    if (onError != null)
                    {
                        onError(XTSErrors.FileDownloadError, null);
                    }
                }

                CleanupFileStream();
            }
        }
    }
}
