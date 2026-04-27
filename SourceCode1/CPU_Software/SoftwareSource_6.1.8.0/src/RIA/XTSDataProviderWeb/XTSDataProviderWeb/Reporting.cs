using System;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using WebServiceObjects;

namespace XTS
{
    public partial class XTSDataProviderWeb
    {
        /// <summary>
        /// The report data
        /// </summary>
        private XTSReport reportData;
        /// <summary>
        /// The report progress etc.
        /// </summary>
        public XTSReport ReportData
        {
            get
            {
                return this.reportData;
            }
        }

        /// <summary>
        /// Starts a reported with the selected parameters, 
        /// </summary>
        /// <param name="callback">Callback when request is complete</param>
        public void StartReport(string startDate, string endDate, bool allEvents, bool sensorAbsolute,
            bool sensorDeviation, bool cylinderAbsolute, bool cylinderDeviation,
            bool singleSensor, bool cylinderSum, bool mBNSum, string channels,
            string reportType, int numActiveChannels, bool enableData,
            XTSResultDelegate callback)
        {
            XTSWebResultDelegate xtsdelegate = new XTSWebResultDelegate(callback, WebServiceObjectsBoolCallback);

            this.serverRequests.StartReport(this.ProcessData, startDate, endDate, allEvents, sensorAbsolute,
                    sensorDeviation, cylinderAbsolute, cylinderDeviation, singleSensor, cylinderSum, mBNSum,
                    channels, reportType, numActiveChannels, enableData);
        }
        
        /// <summary>
        /// Saves a report zip file to the specified path that includes the data
        /// </summary>
        public void DownloadReport(string reportName, System.IO.Stream fileStream)
        {
            StreamDownloader download = new StreamDownloader(this.errorCallback, BusyOperation, fileStream);
            serverRequests.DownloadReport(reportName, download.DownloadCompleted);
            BusyOperation(true);
        }

        /// <summary>
        /// Handles the callback from StartReport and ReportProgress
        /// </summary>
        private void ReportProgressCallback(IAsyncResult result, object data)
        {
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess() == false)
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new Action<IAsyncResult, object>(ReportProgressCallback), result, data);
                return;
            }

            ReportProgress progress = (ReportProgress)data;

            if (progress != null)
            {
                bool previousRunning = this.reportData.IsRunning;

                this.reportData.IsRunning = progress.InProgress;
                this.reportData.Progress = progress.Progress;


                if (!CompareStringList(progress.CompletedReports, this.reportData.Completed))
                {
                    this.reportData.Completed.Clear();
                    foreach (string report in progress.CompletedReports)
                    {
                        this.reportData.Completed.Add(report);
                    }
                }

                if (!CompareStringList(progress.AvailableReports, this.reportData.Available))
                {
                    this.reportData.Available.Clear();
                    foreach (string society in progress.AvailableReports)
                    {
                        this.reportData.Available.Add(society);
                    }
                }

                this.reportData.LastReportDate = progress.GLReportDate;

                if (progress.Completed)
                {
                    // If our previous running state was true, and we have completed,
                    // then updated message to tell user we have just completed
                    if (previousRunning)
                    {
                        this.generalData.SetMessageString("XTSStringReportCompleted");
                    }
                }
                else if (progress.InProgress)
                {
                    this.generalData.SetMessageString("XTSStringReportInProgress");
                }
            }
        }

        /// <summary>
        /// Checks if the lists match, order ignored
        /// </summary>
        /// <param name="list1">ICollection to compare</param>
        /// <param name="list2">ICollection to compare</param>
        /// <returns>true - the lists match</returns>
        private bool CompareStringList(System.Collections.Generic.ICollection<string> list1, System.Collections.Generic.ICollection<string> list2)
        {
            bool rc = true;
            if (list1.Count != list2.Count)
            {
                rc = false;
            }
            else
            {
                foreach (string str1 in list1)
                {
                    if (!list2.Contains(str1))
                    {
                        rc = false;
                        break;
                    }
                }
            }
            return rc;
        }
    }
}
