/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: Christopher Peerman, 12/04/2012
 */
using System;
using System.Collections.Generic;
using System.Net;
using System.Threading;
using WebServiceObjects;

namespace XTS
{
    public partial class XTSDataProviderWeb
    {
        private struct TrendRange
        {
            /// <summary>
            /// Flag indicating if the trend requests are realtime or historical
            /// </summary>
            public bool realtime;
            /// <summary>
            /// The TimeSpan to use for calculting how much data should be returned based on the lastDateInRange
            /// </summary>
            public TimeSpan duration;
            /// <summary>
            /// The latest date that the data returned should be based on
            /// </summary>
            public DateTime endTime;
        }

        /// <summary>
        /// The internal configurations for trend collections
        /// </summary>
        private XTSTrends trendData;

        /// <summary>
        /// Lock trend data in simulator thread
        /// </summary>
        private object trendLock = new Object();

        /// <summary>
        /// The configurations for trend collections
        /// </summary>
        public XTSTrends Trends
        {
            get
            {
                return trendData;
            }
        }

        /// <summary>
        /// Sync object used to sync trends
        /// </summary>
        private object SyncTrendList = new object();

        private TrendRange rangeCurrent;
        private TrendRange rangeRequested;

        private AutoResetEvent newTrendRequest = new AutoResetEvent(false);

        private bool realTimeMinorUpdate = false;

        void TrendConfiguration_CollectionChanged(object sender, System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
        {
            RefreshTrendData();
        }

        /// <summary>
        /// Sets the range of the trend data to be displayed.
        /// </summary>
        /// <param name="end">The last date time to be shown.</param>
        /// <param name="durationMinutes">The number of minutes to show.</param>
        /// <param name="realtime">If set to true, the end parameter is ignored and only the latest data is shown.</param>
        public void SetTrendRange(DateTime end, int durationMinutes, bool realtime)
        {
            lock (this.trendLock)
            {
                this.rangeRequested.endTime = end;
                this.rangeRequested.realtime = realtime;
                this.rangeRequested.duration = TimeSpan.FromMinutes(durationMinutes);

                if (!realtime)
                {
                    // Shift graph ready for new data to come in
                    // giving quick feedback to users
                    // NOTE: Graph will move on incoming data for realtime mode.
                    this.Trends.LastHistoryUpdate = end;
                }
                else
                {
                    PruneFuture(end);
                    PruneHistory(end.AddMinutes(-durationMinutes));
                }

                this.newTrendRequest.Set();
            }
        }

        /// <summary>
        ///  Request new data from the server
        /// </summary>
        public void RefreshTrendData()
        {
            lock (this.trendLock)
            {
                this.rangeCurrent.duration = TimeSpan.FromMinutes(0);
                this.newTrendRequest.Set();
            }
        }

        /// <summary>
        /// Requests the full batch of trend data from the server
        /// </summary>
        /// <returns>The async request</returns>
        public IAsyncResult RequestTrendData()
        {
            IAsyncResult rc = null;
            if (this.rangeRequested.realtime)
            {
                TimeSpan ts = TimeSpan.FromMinutes(0);
                lock (this.trendLock)
                {
                    this.realTimeMinorUpdate = false;
                    // If time span has changed, we need to get all data again 
                    if (!this.rangeRequested.duration.Equals(this.rangeCurrent.duration))
                    {
                        ClearTrendsData();
                    }
                    // For realtime only request the amount of time since the last update date + a
                    // little to offset the lag in the SPU Date Time
                    if ((this.Trends.LastHistoryUpdate == DateTime.MinValue) || (this.rangeCurrent.duration.TotalMinutes == 0))
                    {
                        ClearTrendsData();
                        ts = this.rangeRequested.duration;
                    }
                    else
                    {
                        ts = this.General.SPUDateTime.Subtract(this.Trends.LastHistoryUpdate);
                        if (ts > this.rangeCurrent.duration)
                        {
                            ClearTrendsData();
                            ts = this.rangeRequested.duration;
                        }
                        else
                        {
                            ts.Add(TimeSpan.FromSeconds(10));
                            this.realTimeMinorUpdate = true;
                        }
                    }
                    this.rangeCurrent.duration = this.rangeRequested.duration;
                    this.rangeCurrent.realtime = this.rangeRequested.realtime;
                    this.rangeCurrent.endTime = this.rangeRequested.endTime;
                }
                if (ts.TotalMinutes > 0)
                {
                    System.Diagnostics.Debug.WriteLine("RequestTrendData: Requesting realtime data: {0} for {1} minutes", this.rangeRequested.endTime, ts.TotalMinutes);
                    rc = RequestTrendDataRealTime(ts, this.rangeRequested.duration);
                }
            }
            else
            {
                DateTime? requestEnd = null;
                TimeSpan? requestDuration = null;
                lock (this.trendLock)
                {
                    this.realTimeMinorUpdate = false;
                    // Narrow down the request to only those outside our current range
                    DateTime newStart = this.rangeRequested.endTime.Add(-this.rangeRequested.duration);

                    if (!this.rangeRequested.duration.Equals(this.rangeCurrent.duration))
                    {
                        // If duration has changed, we need to refresh all data as avg. will have changed.
                        System.Diagnostics.Debug.WriteLine("RequestTrendData: New span");

                        requestEnd = this.rangeRequested.endTime;
                        requestDuration = this.rangeRequested.duration;

                        ClearTrendsData();
                    }
                    else
                    {
                        // Get range to request
                        DateTime currentStart = this.rangeCurrent.endTime.Add(-this.rangeCurrent.duration);
                        if ((this.rangeRequested.endTime <= currentStart) || (newStart >= this.rangeCurrent.endTime))
                        {
                            // Outside range, clear data down and set new range
                            System.Diagnostics.Debug.WriteLine("RequestTrendData: Outside Range new: {0}-{1}->{2} old: {3}-{4}->{5}",
                                this.rangeRequested.endTime, this.rangeRequested.duration.TotalMinutes, newStart,
                                this.rangeCurrent.endTime, this.rangeCurrent.duration.TotalMinutes, currentStart);

                            requestEnd = this.rangeRequested.endTime;
                            requestDuration = this.rangeRequested.duration;

                            ClearTrendsData();
                        }
                        else if (this.rangeRequested.endTime > this.rangeCurrent.endTime)
                        {
                            // We have moved to the future
                            // Request from this.lastDateInRange to end
                            System.Diagnostics.Debug.WriteLine("RequestTrendData: Moved future: {0}-{1}->{2} old: {3}-{4}->{5}",
                                this.rangeRequested.endTime, this.rangeRequested.duration.TotalMinutes, newStart,
                                this.rangeCurrent.endTime, this.rangeCurrent.duration.TotalMinutes, currentStart);

                            requestEnd = this.rangeRequested.endTime;
                            requestDuration = this.rangeRequested.endTime.Subtract(this.rangeCurrent.endTime);

                            // Clear from currentStart to newStart
                            if (currentStart < newStart)
                            {
                                ClearTrendsData(currentStart, newStart);
                            }
                        }
                        else if (newStart < currentStart)
                        {
                            // We have moved to the past
                            // Request from newStart to currentStart
                            System.Diagnostics.Debug.WriteLine("RequestTrendData: Moved past: {0}-{1}->{2} old: {3}-{4}->{5}",
                                this.rangeRequested.endTime, this.rangeRequested.duration.TotalMinutes, newStart,
                                this.rangeCurrent.endTime, this.rangeCurrent.duration.TotalMinutes, currentStart);

                            requestEnd = currentStart;
                            requestDuration = currentStart.Subtract(newStart);

                            // Clear from end to this.lastDateInRange
                            if (this.rangeRequested.endTime < this.rangeCurrent.endTime)
                            {
                                ClearTrendsData(this.rangeRequested.endTime, this.rangeCurrent.endTime);
                            }
                        }
                    }

                    if (requestEnd != null)
                    {
                        PruneFuture(rangeRequested.endTime);
                        PruneHistory(newStart);
                    }
                    this.rangeCurrent.duration = this.rangeRequested.duration;
                    this.rangeCurrent.realtime = this.rangeRequested.realtime;
                    this.rangeCurrent.endTime = this.rangeRequested.endTime;
                }
                if (requestEnd != null)
                {
                    System.Diagnostics.Debug.WriteLine("RequestTrendData: Requesting historic data: {0} for {1} minutes", requestEnd, requestDuration.Value.TotalMinutes);
                    rc = RequestTrendData(requestEnd.Value, requestDuration.Value, this.rangeRequested.duration);
                }
            }
            return rc;
        }

        /// <summary>
        /// Requests the specified batch of trend data from the server
        /// </summary>
        /// <param name="end">The last date for the data to get.</param>
        /// <param name="duration">The length of data to obtain</param>
        /// <param name="realtime">If this request is a realtime, ignoes end parameter</param>
        /// <returns>The async request</returns>
        private IAsyncResult RequestTrendDataRealTime(TimeSpan duration, TimeSpan fullLength)
        {
            return RequestTrendData(null, duration, fullLength, true);
        }

        private IAsyncResult RequestTrendData(DateTime end, TimeSpan duration, TimeSpan fullLength)
        {
            return RequestTrendData(end, duration, fullLength, false);
        }

        private IAsyncResult RequestTrendData(DateTime? end, TimeSpan duration, TimeSpan fullLength, bool realtime)
        {
            IAsyncResult asyncResult;
            TrendRequest trendRequest;

            if (false == System.Threading.Monitor.TryEnter(SyncTrendList))
            {
                return null;
            }

            try
            {
                System.Diagnostics.Debug.WriteLine("RequestTrendData: {0}-{1}mins realtime:{2}", end, duration.TotalMinutes, realtime);

                //Check if realtime
                if (realtime)
                {
                    trendRequest = new TrendRequest(this.Trends, duration, fullLength);
                }
                else
                {
                    trendRequest = new TrendRequest(this.Trends, end.Value, duration, fullLength);
                }
            }
            finally
            {
                System.Threading.Monitor.Exit(SyncTrendList);
            }

            asyncResult = trendRequest.MakeRequest(serverRequests, ProcessTrendStartRequest);

            return asyncResult;
        }

        /// <summary>
        /// Processes the response from starting a trend
        /// </summary>
        /// <param name="resultObject"></param>
        /// <param name="data">Teh result of the request from the web service</param>
        public void ProcessTrendStartRequest(IAsyncResult resultObject, object data)
        {
            this.waitForDynamicData.Set();

            if (data is WebException)
            {
                return;
            }

            this.currentSession = (string)data;
            serverRequests.GetTrendProgress(ProcessTrend, this.currentSession);
        }

        string currentSession;
        /// <summary>
        /// Only set to busy if we haven't already.  This stops us over increasing the ref count
        /// in the UI.
        /// </summary>
        private bool notBusy = true;

        public void ProcessTrend(IAsyncResult resultObject, object data)
        {
            if (data is WebException)
            {
                return;
            }

            EngineTrendResult result = (EngineTrendResult)data;

            if (result != null)
            {
                ProcessTrendData(result);

                if (!result.LastRecords)
                {
                    if (!this.realTimeMinorUpdate)
                    {
                        if (this.notBusy)
                        {
                            BusyOperation(true);
                            this.notBusy = false;
                        }
                    }
                    serverRequests.GetTrendProgress(ProcessTrend, result.SessionId);
                }
                else
                {
                    BusyOperation(false);
                    this.notBusy = true;
                    serverRequests.DeleteTrendProgress(result.SessionId);
                }
            }
        }

        /// <summary>
        /// Processes a trend configuration from the server
        /// </summary>
        /// <param name="resultObject">The request object</param>
        /// <param name="data">The data for the object</param>
        public void ProcessTrendConfiguration(IAsyncResult resultObject, object data)
        {
            if (data is WebException)
            {
                return;
            }
            else if (data is TrendConfiguration)
            {
                TrendConfiguration configuratonFromWebService = (TrendConfiguration)data;

                if (configuratonFromWebService.Details != null)
                {
                    List<XTSTrend> trends = new List<XTSTrend>();

                    foreach (TrendDetail detail in configuratonFromWebService.Details)
                    {
                        trends.Add(TrendDetailToXTSTrend(detail));
                    }

                    lock (this.trendLock)
                    {
                        ClearTrendConfig();
                        this.trendData.TrendConfiguration.AddRange(trends);
                    }
                }
                else
                {
                    lock (this.trendLock)
                    {
                        ClearTrendConfig();
                    }
                }
            }
        }

        /// <summary>
        /// Updates the trend configuration
        /// </summary>
        /// <param name="toUpdate">List of trends to update/add</param>
        /// <param name="toRemove">List of trends to remove from the config</param>
        public void UpdateTrendConfig(List<XTSTrendDetail> toUpdate, List<XTSTrendDetail> toRemove)
        {
            lock (this.trendLock)
            {
                this.trendData.TrendConfiguration.SuspendCollectionChangeNotification = true;
                // Remove deselected items.  This will fail silently if the item isn't in the current config
                foreach (XTSTrendDetail trendDetail in toRemove)
                {
                    RemoveTrendFromConfig(trendDetail);
                }
                // Add selected items to trend config.  This will preserve the order for existing trends.
                foreach (XTSTrendDetail trendDetail in toUpdate)
                {
                    AddTrendToConfig(trendDetail, false);
                }
                this.trendData.TrendConfiguration.SuspendCollectionChangeNotification = false;
                this.trendData.TrendConfiguration.Refresh();
            }
        }

        /// <summary>
        /// Adds a trend into the currently active trend config list.
        /// If it exists, the details of the trend will be updated if updateDetails is true.
        /// </summary>
        /// <param name="trend">Description of the trend</param>
        /// <param name="trend">Trend type</param>
        /// <param name="updateDetails">Specifies if the details should be updated if the trend config already contains this trend</param>
        public void AddTrendToConfig(XTSTrendDetail trend, bool updateDetails)
        {
            XTSTrend tr = SearchTrendConfig(trend);
            if (tr == null)
            {
                // If this is a new trend, then check if we need to
                // generate a colour for it
                if (trend.Colour == null)
                {
                    trend.AutoColour();
                }
                this.trendData.TrendConfiguration.Add(new XTSTrend(trend));
            }
            else if ((updateDetails) && (trend != tr.Detail))
            {
                // Don't need to update details if we have been sent the actual
                // detail object of the trend

                // Update trend details of existing trend detail
                tr.Detail.Colour = trend.Colour;
                tr.Detail.Description = trend.Description;
                tr.Detail.Axis = trend.Axis;
            }
        }

        /// <summary>
        /// Removes a trend from the currently active trend config list.
        /// </summary>
        /// <param name="trend">Description of the trend</param>
        /// <param name="trend">Trend type</param>
        public void RemoveTrendFromConfig(XTSTrendDetail trend)
        {
            XTSTrend tr = SearchTrendConfig(trend);
            if (tr != null)
            {
                this.trendData.TrendConfiguration.Remove(tr);
            }
        }

        /// <summary>
        /// Removes all trends from the current configuration.
        /// </summary>
        public void ClearTrendConfig()
        {
            lock (this.trendLock)
            {
                // Reset any requests so that we get new complete data
                this.rangeCurrent.duration = TimeSpan.FromMinutes(0);
                this.trendData.TrendConfiguration.Clear();
            }
        }

        /// <summary>
        /// This method clears all history data stored in the trends that are currently being displayed.
        /// </summary>
        private void ClearTrendsData()
        {
            System.Diagnostics.Debug.WriteLine("EngineTrends::ClearTrendsData");
            foreach (XTSTrend trend in this.trendData.TrendConfiguration)
            {
                trend.History.Clear();
                trend.Low = 0;
                trend.High = 0;
                trend.Min = 0;
                trend.Max = 0;
                trend.endRange = DateTime.MinValue;
                trend.startRange = DateTime.MinValue;
                trend.IsAveraged = false;
            }
            // Reset any requests so that we get new complete data
            this.rangeCurrent.duration = TimeSpan.FromMinutes(0);
        }

        /// <summary>
        /// Remove the trend data between the two specified dates
        /// </summary>
        /// <param name="start"></param>
        /// <param name="end"></param>
        private void ClearTrendsData(DateTime start, DateTime end)
        {
            foreach (XTSTrend trend in this.trendData.TrendConfiguration)
            {
                ClearTrendsData(trend, start, end);
            }
            // Reset any requests so that we get new complete data
            this.rangeCurrent.duration = TimeSpan.FromMinutes(0);
        }

        private void ClearTrendsData(XTSTrend trend, DateTime start, DateTime end)
        {
            System.Diagnostics.Debug.WriteLine("EngineTrends::ClearTrendsData {0}->{1} {2}", start, end, trend.Detail.Description);
            List<XTSTrendHistory> inRange = new List<XTSTrendHistory>();
            // Create list of history that we want to remove
            foreach (XTSTrendHistory history in trend.History)
            {
                if ((history.TimeDate >= start) && (history.TimeDate <= end))
                {
                    inRange.Add(history);
                }
            }
            // Now remove data
            trend.History.RemoveRange(inRange);

            trend.endRange = end;
            trend.startRange = start;
        }

        /// <summary>
        /// Searchs for a trend configuration.
        /// </summary>
        /// <param name="key">The string to match the XTSTrendDetail.ToString() against when searching.</param>
        /// <returns>The XTSTrend that matchs key or null.</returns>
        private XTSTrend SearchTrendConfig(string key)
        {
            foreach (XTSTrend trend in this.trendData.TrendConfiguration)
            {
                if (trend.Detail.ToString() == key)
                {
                    return trend;
                }
            }

            return null;
        }

        /// <summary>
        /// Search the current trend configuration for a trend that matches the specified trend detail.
        /// </summary>
        /// <param name="detail">The trend detail to search for.</param>
        /// <returns>The matched trend, null if it couldn't be found.</returns>
        private XTSTrend SearchTrendConfig(XTSTrendDetail detail)
        {
            XTSTrend rc = null;
            bool found = false;
            foreach (XTSTrend trend in this.trendData.TrendConfiguration)
            {
                if (trend.Detail.TrendType == detail.TrendType)
                {
                    switch (detail.TrendType)
                    {
                        case XTSTrendDetail.XTSTrendType.Cylinder:
                            {
                                // Search Cylinder IDs
                                XTSTrendCylinder cylinderNew = ((XTSTrendCylinder)detail);
                                XTSTrendCylinder cylinder = (XTSTrendCylinder)trend.Detail;
                                if (cylinder.Index == cylinderNew.Index)
                                {
                                    found = true;
                                }
                                break;
                            }
                        case XTSTrendDetail.XTSTrendType.CylinderDeviation:
                            {
                                // Search Cylinder IDs
                                XTSTrendCylinderDeviation cylinderNew = (XTSTrendCylinderDeviation)detail;
                                XTSTrendCylinderDeviation cylinder = (XTSTrendCylinderDeviation)trend.Detail;
                                if (cylinder.Index == cylinderNew.Index)
                                {
                                    found = true;
                                }
                                break;
                            }
                        case XTSTrendDetail.XTSTrendType.Sensor:
                            {
                                // Search Cylinder/Sensor IDs
                                XTSTrendSensor sensorNew = (XTSTrendSensor)detail;
                                XTSTrendSensor sensor = (XTSTrendSensor)trend.Detail;
                                if ((sensor.Cylinder == sensorNew.Cylinder) &&
                                    (sensor.Index == sensorNew.Index))
                                {
                                    found = true;
                                }
                                break;
                            }
                        case XTSTrendDetail.XTSTrendType.SensorDeviation:
                            {
                                // Search Cylinder/Sensor IDs
                                XTSTrendSensorDeviation sensorNew = (XTSTrendSensorDeviation)detail;
                                XTSTrendSensorDeviation sensor = (XTSTrendSensorDeviation)trend.Detail;
                                if ((sensor.Cylinder == sensorNew.Cylinder) &&
                                    (sensor.Index == sensorNew.Index))
                                {
                                    found = true;
                                }
                                break;
                            }
                        case XTSTrendDetail.XTSTrendType.Temperature:
                            {
                                // Search Cylinder/Sensor IDs
                                XTSTrendTemperature temperatureNew = (XTSTrendTemperature)detail;
                                XTSTrendTemperature temperature = (XTSTrendTemperature)trend.Detail;
                                if (temperature.Index == temperatureNew.Index)
                                {
                                    found = true;
                                }
                                break;
                            }
                        default:
                            {
                                found = true;
                                break;
                            }
                    }
                }
                if (found)
                {
                    rc = trend;
                    break;
                }
            }
            return rc;
        }

        /// <summary>
        /// Stores the current trend config into one of the presets.
        /// </summary>
        /// <param name="slot">The slot to store the current trend in.</param>
        /// <param name="description">The description to set of the saved config.</param>
        public void SaveCurrentTrend(uint slot, string description)
        {
            List<TrendDetail> details = new List<TrendDetail>();

            if (slot > 9)
            {
                throw new ArgumentOutOfRangeException("Slot is too high!  Only support 0-9");
            }

            //Send to the Web Services the following data:
            //Slot
            //Description
            //Array of TrendDetails for the slot
            foreach (XTSTrend trend in this.trendData.TrendConfiguration)
            {
                details.Add(new TrendDetail(XTSTrendDetailToItemId(trend.Detail), trend.Detail.Description, trend.Detail.Colour.ToString(), (int)trend.Detail.TrendType, trend.Detail.Axis));
            }

            // Save the config even if empty
            TrendConfiguration configuration = new TrendConfiguration(slot, description, details.ToArray());
            this.serverRequests.SaveTrendConfiguration(ProcessSaveTrendConfiguration, configuration, this.auth);
        }

        /// <summary>
        /// This method creates an id string for the item that the trend is displaying.
        /// The id string us used to indentify which sensor or cylinder the trend is displaying.
        /// </summary>
        /// <param name="detail">The trend detail to create the id string for.</param>
        /// <returns>The id string created.</returns>
        private string XTSTrendDetailToItemId(XTSTrendDetail detail)
        {
            string item;

            switch (detail.TrendType)
            {
                case XTSTrendDetail.XTSTrendType.Cylinder:
                    item = string.Format("{0}", ((XTSTrendCylinder)detail).Index);
                    break;
                case XTSTrendDetail.XTSTrendType.CylinderDeviation:
                    item = string.Format("{0}", ((XTSTrendCylinderDeviation)detail).Index);
                    break;
                case XTSTrendDetail.XTSTrendType.Sensor:
                    item = string.Format("{0}.{1}", ((XTSTrendSensor)detail).Cylinder, ((XTSTrendSensor)detail).Index);
                    break;
                case XTSTrendDetail.XTSTrendType.SensorDeviation:
                    item = string.Format("{0}.{1}", ((XTSTrendSensorDeviation)detail).Cylinder, ((XTSTrendSensorDeviation)detail).Index);
                    break;
                case XTSTrendDetail.XTSTrendType.Temperature:
                    item = string.Format("{0}", ((XTSTrendTemperature)detail).Index);
                    break;
                default:
                    item = string.Empty;
                    break;
            }

            return item;
        }

        /// <summary>
        /// Creates a XTSTrendDetail object from a TrendDetail recieved from the Web Server
        /// </summary>
        /// <param name="detail">The TrendDetail object from the Web Server</param>
        /// <returns>An XTSTrendDetail object created from the TrendDetail recieved from the Web Services</returns>
        private XTSTrend TrendDetailToXTSTrend(TrendDetail detail)
        {
            XTSTrendDetail.XTSTrendType type = (XTSTrendDetail.XTSTrendType)detail.Type;
            XTSTrendDetail trendDetail = null;

            switch (type)
            {
                case XTSTrendDetail.XTSTrendType.Cylinder:
                    trendDetail = new XTSTrendCylinder(detail.Description, uint.Parse(detail.Id));
                    break;
                case XTSTrendDetail.XTSTrendType.CylinderDeviation:
                    trendDetail = new XTSTrendCylinderDeviation(detail.Description, uint.Parse(detail.Id));
                    break;
                case XTSTrendDetail.XTSTrendType.Sensor:
                    {
                        string[] idParts = detail.Id.Split(new char[] { '.' });
                        if (idParts.Length == 2)
                        {
                            trendDetail = new XTSTrendSensor(detail.Description, uint.Parse(idParts[0]), uint.Parse(idParts[1]));
                        }
                    }
                    break;
                case XTSTrendDetail.XTSTrendType.SensorDeviation:
                    {
                        string[] idParts = detail.Id.Split(new char[] { '.' });
                        if (idParts.Length == 2)
                        {
                            trendDetail = new XTSTrendSensorDeviation(detail.Description, uint.Parse(idParts[0]), uint.Parse(idParts[1]));
                        }
                    }
                    break;
                case XTSTrendDetail.XTSTrendType.Temperature:
                    trendDetail = new XTSTrendTemperature(detail.Description, uint.Parse(detail.Id));
                    break;
                case XTSTrendDetail.XTSTrendType.RPM:
                    trendDetail = new XTSTrendRPM(detail.Description);
                    break;
                case XTSTrendDetail.XTSTrendType.SEDMmV:
                    trendDetail = new XTSTrendSEDMmV(detail.Description);
                    break;
                case XTSTrendDetail.XTSTrendType.WIO:
                    trendDetail = new XTSTrendWIO(detail.Description);
                    break;
                case XTSTrendDetail.XTSTrendType.WIOPPM:
                    trendDetail = new XTSTrendWIOPPM(detail.Description);
                    break;
                case XTSTrendDetail.XTSTrendType.CPPMA:
                    trendDetail = new XTSTrendCPPMA(detail.Description);
                    break;
                case XTSTrendDetail.XTSTrendType.CPPPCNT:
                    trendDetail = new XTSTrendCPPPER(detail.Description);
                    break;
                default:
                    trendDetail = null;
                    break;
            }

            if (trendDetail != null)
            {
                trendDetail.Colour = ColorFromString.ToColor(detail.Colour);
                trendDetail.Axis = detail.Axis;
            }

            return new XTSTrend(trendDetail);
        }

        /// <summary>
        /// Replaces the current list of trends with those from the config
        /// </summary>
        /// <param name="slot">The slot to load the config from.</param>
        public void LoadCurrentTrend(uint slot)
        {
            //Retreive from the web services the data for slot
            serverRequests.LoadTrendConfigration(slot, ProcessTrendConfiguration);
        }

        /// <summary>
        /// This method makes a request to the Web Service to
        /// get a list of the trend configurations.
        /// </summary>
        public void GetTrendConfigurations()
        {
            serverRequests.GetTrendConfigurations(this.ProcessTrendConfigurations);
        }

        /// <summary>
        /// Processes the result of getting a list of trend configurations
        /// </summary>
        /// <param name="resultObject">The handle to the web service request</param>
        /// <param name="data">The data returned from the web service</param>
        public void ProcessTrendConfigurations(IAsyncResult resultObject, object data)
        {
            if (data is WebException)
            {
                System.Diagnostics.Debug.WriteLine(data);
                GetTrendConfigurations();
                return;
            }

            if (data is string[])
            {
                string[] configurations = (string[])data;
                for (int i = 0; i < Math.Min(configurations.Length, this.trendData.ConfigNames.Length); i++)
                {
                    //Get the trend configuration slots and copy them to the this.trendData.
                    this.trendData.ConfigNames[i] = configurations[i];
                }
            }
        }

        /// <summary>
        /// Processes the result of a Save Trend Configuration request and requests the list of trend configurations
        /// from the web service.
        /// </summary>
        /// <param name="resultObject">The handle to the web service request.</param>
        /// <param name="data">The data returned from the web service.</param>
        public void ProcessSaveTrendConfiguration(IAsyncResult resultObject, object data)
        {
            if (data is WebException)
            {
                System.Diagnostics.Debug.WriteLine(data);
                return;
            }
            else
            {
                GetTrendConfigurations();
            }
        }

        /// <summary>
        /// Processes the trend data response from the web service.
        /// </summary>
        /// <param name="data"></param>
        public void ProcessTrendData(EngineTrendResult engineTrends)
        {
            Dictionary<string, List<XTSTrendHistory>> trendData;
            DateTime dateToRemoveDataFor;
            bool averaged;
            DateTime latestDate;

            if (false == System.Threading.Monitor.TryEnter(SyncTrendList))
            {
                return;
            }

            try
            {
                System.Diagnostics.Debug.WriteLine("Trend RX: start {0}, end {1}, events {2}",
                    ConvertFromUnixTimeStamp(engineTrends.StartOfSpan),
                    ConvertFromUnixTimeStamp(engineTrends.EndOfSpan),
                    engineTrends.TrendData.Count);

                if (this.rangeCurrent.realtime)
                {
                    // Realtime, so let's base our timespan on the latest date returned in the request
                    latestDate = ConvertFromUnixTimeStamp(engineTrends.DateTimeOfMostRecentRecord);
                    PruneFuture(latestDate);
                    PruneHistory(latestDate.Add(-this.rangeCurrent.duration));
                    this.Trends.LastHistoryUpdate = latestDate;
                }
                else
                {
                    // if it's not realtime, this would have been updated when a request was made
                    latestDate = this.Trends.LastHistoryUpdate;
                }

                dateToRemoveDataFor = latestDate.Subtract(this.rangeCurrent.duration);

                //To stop the UI from "locking up" when processing the trend data
                //we need to prepare the data to copy to the chart and then pass it off to
                //the UI thread to actually update the data.

                trendData = new Dictionary<string, List<XTSTrendHistory>>();
                averaged = engineTrends.Averaged;

                foreach (TrendPoints dataFromWebService in engineTrends.TrendData)
                {
                    DateTime trendTime = ConvertFromUnixTimeStamp(dataFromWebService.Date);

                    //Flatten the data from the web service into a collection of data for each trend item.

                    foreach (TrendPoint point in dataFromWebService.sensorPoints)
                    {
                        if (point != null)
                        {
                            XTSTrendSensor ts = new XTSTrendSensor(null, (uint)(point.Id / 2) + 1, (uint)(point.Id % 2) + 1);
                            FlattenTrendData(trendData, ts.ToString(), trendTime, point, averaged);
                        }
                    }

                    foreach (TrendPoint point in dataFromWebService.sensorDevPoints)
                    {
                        if (point != null)
                        {
                            XTSTrendSensorDeviation ts = new XTSTrendSensorDeviation(null, (uint)(point.Id / 2) + 1, (uint)(point.Id % 2) + 1);
                            FlattenTrendData(trendData, ts.ToString(), trendTime, point, averaged);
                        }
                    }

                    foreach (TrendPoint point in dataFromWebService.cylinderPoints)
                    {
                        if (point != null)
                        {
                            XTSTrendCylinder ts = new XTSTrendCylinder(null, (uint)point.Id + 1);
                            FlattenTrendData(trendData, ts.ToString(), trendTime, point, averaged);
                        }
                    }

                    foreach (TrendPoint point in dataFromWebService.cylinderDevPoints)
                    {
                        if (point != null)
                        {
                            XTSTrendCylinderDeviation ts = new XTSTrendCylinderDeviation(null, (uint)point.Id + 1);
                            FlattenTrendData(trendData, ts.ToString(), trendTime, point, averaged);
                        }
                    }

                    foreach (TrendPoint point in dataFromWebService.temperaturePoints)
                    {
                        if (point != null)
                        {
                            XTSTrendTemperature ts = new XTSTrendTemperature(null, (uint)point.Id + 1);
                            FlattenTrendData(trendData, ts.ToString(), trendTime, point, averaged);
                        }
                    }
                    if (dataFromWebService.slemPoint != null)
                    {
                        XTSTrendSEDMmV ts = new XTSTrendSEDMmV(null);
                        FlattenTrendData(trendData, ts.ToString(), trendTime, dataFromWebService.slemPoint, averaged);
                    }

                    if (dataFromWebService.rpmPoint != null)
                    {
                        XTSTrendRPM ts = new XTSTrendRPM(null);
                        FlattenTrendData(trendData, ts.ToString(), trendTime, dataFromWebService.rpmPoint, averaged);
                    }

                    if (dataFromWebService.wioPPMPoint != null)
                    {
                        XTSTrendWIOPPM ts = new XTSTrendWIOPPM(null);
                        FlattenTrendData(trendData, ts.ToString(), trendTime, dataFromWebService.wioPPMPoint, averaged);
                    }

                    if (dataFromWebService.wioActivityPoint != null)
                    {
                        XTSTrendWIO ts = new XTSTrendWIO(null);
                        FlattenTrendData(trendData, ts.ToString(), trendTime, dataFromWebService.wioActivityPoint, averaged);
                    }

                    if (dataFromWebService.cppmAPoint != null)
                    {
                        XTSTrendCPPMA ts = new XTSTrendCPPMA(null);
                        FlattenTrendData(trendData, ts.ToString(), trendTime, dataFromWebService.cppmAPoint, averaged);
                    }

                    if (dataFromWebService.cppPercentPoint != null)
                    {
                        XTSTrendCPPPER ts = new XTSTrendCPPPER(null);
                        FlattenTrendData(trendData, ts.ToString(), trendTime, dataFromWebService.cppPercentPoint, averaged);
                    }
                }
            }
            finally
            {
                System.Threading.Monitor.Exit(SyncTrendList);
            }

            //We need to update the graph on the UI thread
            //We do this by passing anonymous function that holds the code to run
            //to the dispatcher.
            System.Windows.Deployment.Current.Dispatcher.BeginInvoke(() =>
                {
                    lock (this.trendLock)
                    {
                        if (trendData != null)
                        {
                            foreach (KeyValuePair<string, List<XTSTrendHistory>> history in trendData)
                            {
                                XTSTrend trend = SearchTrendConfig(history.Key);

                                if ((trend != null) && (history.Value.Count > 0))
                                {
                                    DateTime fullViewEnd = latestDate;
                                    DateTime fullViewStart = latestDate.AddMinutes(-this.rangeCurrent.duration.TotalMinutes);
                                    System.Diagnostics.Debug.WriteLine("Lasthistory time: {0}, start: {1}", fullViewEnd, fullViewStart);
                                    
                                    List<XTSTrendHistory> historyGood = new List<XTSTrendHistory>();
                                    foreach (XTSTrendHistory h in history.Value)
                                    {
                                        if ((h.TimeDate >= fullViewStart) && ( h.TimeDate <= fullViewEnd))
                                        {
                                            // Value inside range, add to "good" list
                                            historyGood.Add(h);
                                        }
                                    }

                                    if (historyGood.Count > 0)
                                    {
                                        // Find earliest point and latest point within provided data
                                        // so we can delete data from current so we can add the new received
                                        XTSTrendHistory first = historyGood[0];
                                        DateTime startOfSpan = first.TimeDate;
                                        DateTime endOfSpan = first.TimeDate;

                                        // Enable for debug output of incoming data
                                        //int i = 0;
                                        //System.Diagnostics.Debug.WriteLine("Incoming Data:");
                                        foreach (XTSTrendHistory h in historyGood)
                                        {
                                            if (startOfSpan > h.TimeDate)
                                            {
                                                startOfSpan = h.TimeDate;
                                            }
                                            if (endOfSpan < h.TimeDate)
                                            {
                                                endOfSpan = h.TimeDate;
                                            }
                                            //System.Diagnostics.Debug.WriteLine("  {0} {1} : {2}", i++, h.Actual, h.TimeDate);
                                        }

                                        // Remove this chunk of data within the date range of the new data from existing data
                                        // so that we don't get any duplicates
                                        ClearTrendsData(trend, startOfSpan, endOfSpan);

                                        historyGood.AddRange(trend.History);
                                        historyGood.Sort();

                                        // Copy new data
                                        trend.History.Clear();
                                        trend.History.AddRange(historyGood);
                                        
                                        /* Code to dump contents if required
                                        System.Diagnostics.Debug.WriteLine("Final Data:");
                                        foreach (XTSTrendHistory h in trend.History)
                                        {
                                            System.Diagnostics.Debug.WriteLine("  {0} {1} : {2}", i++, h.Actual, h.TimeDate);
                                        }
                                         */

                                        // Process new data for min/max etc.
                                        ParseHistoryMinMax(trend);

                                        // Set averaged state
                                        trend.IsAveraged = averaged;

                                        // Remove all data preceding
                                        // NOTE: Not required anymore? Data is cleared when request is made.
                                        //PruneHistory(trend, dateToRemoveDataFor);
                                    }
                                }
                            }
                        }
                    }
                });
        }

        /// <summary>
        /// Flattens a trend data point from the web service stored by time into
        /// trend data point stored by type of trend
        /// </summary>
        /// <param name="trendData">The Dictionary that holds the trend data</param>
        /// <param name="key">The key to store this data point against in the Dictionary</param>
        /// <param name="trendTime">The timestamp of this datapoint</param>
        /// <param name="point">The data point to store</param>
        private void FlattenTrendData(Dictionary<string, List<XTSTrendHistory>> trendData, string key, DateTime trendTime, TrendPoint point, bool averaged)
        {
            XTSTrendHistory trendHistory;

            if (averaged)
            {
                trendHistory = new XTSTrendHistory(trendTime, point.Actual, point.Low, point.High);
            }
            else
            {
                trendHistory = new XTSTrendHistory(trendTime, point.Actual);
            }

            if (!trendData.ContainsKey(key))
            {
                trendData.Add(key, new List<XTSTrendHistory>());
            }

            // We need to compare to the previous and move error value times to cause
            // the graph to draw vertical lines for error states
            if (trendData[key].Count > 0)
            {
                XTSTrendHistory previous = trendData[key][trendData[key].Count - 1];
                // previous is error, current is good
                if ((previous.Actual < -32000) &&
                    (trendHistory.Actual >= -32000))
                {
                    // Add copy of error to good time -1ms
                    // We don't need high/low as this is an error value we're adding
                    XTSTrendHistory errorHistory = new XTSTrendHistory(trendHistory.TimeDate.AddMilliseconds(-1), trendHistory.Actual);
                    trendData[key].Add(errorHistory);
                }
                // previous is good, current is bad
                else if ((previous.Actual >= -32000) &&
                    (trendHistory.Actual < -32000))
                {
                    // Move error current time to previous plus 1ms
                    trendHistory.TimeDate = previous.TimeDate.AddMilliseconds(1);
                }
            }

            trendData[key].Add(trendHistory);
        }

        /// <summary>
        /// Parses the trend's history and calculates min/max values
        /// </summary>
        /// <param name="trend"></param>
        private void ParseHistoryMinMax(XTSTrend trend)
        {
            if (trend.History.Count > 0)
            {
                trend.Min = trend.History[0].Actual;
                trend.Max = trend.History[0].Actual;
                foreach (XTSTrendHistory history in trend.History)
                {
                    if (Math.Abs(history.Actual) < Math.Abs(XTSEngine.SensorFailureRPMORR))
                    {
                        // Update the min and max values
                        if (trend.Max == 0 && trend.Min == 0 && trend.History.Count == 0)
                        {
                            trend.Max = history.Actual;
                            trend.Min = history.Actual;
                        }
                        else
                        {
                            if (history.Actual > trend.Max)
                            {
                                trend.Max = history.Actual;
                            }

                            if (history.Actual < trend.Min)
                            {
                                trend.Min = history.Actual;
                            }
                        }
                    }
                }
            }
        }

        private void PruneHistory(DateTime dateTime)
        {
            foreach (XTSTrend trend in this.trendData.TrendConfiguration)
            {
                PruneHistory(trend, dateTime);
            }
        }

        /// <summary>
        /// Removes old trend history from the range 
        /// when it is no longer required
        /// </summary>
        /// <param name="xtsTrend">The trend that needs to be pruned</param>
        /// <param name="dateTime">The date to start the pruning from.</param>
        private void PruneHistory(XTSTrend xtsTrend, DateTime dateTime)
        {
            List<XTSTrendHistory> oldHistory = new List<XTSTrendHistory>();
            List<XTSTrendHistory> currentHistory = xtsTrend.History.GetCopy();
            foreach (XTSTrendHistory history in currentHistory)
            {
                if (history.TimeDate < dateTime)
                {
                    System.Diagnostics.Debug.WriteLine("Removing: Point {0}, {1}, {2}, {3}", history.TimeDate, history.Actual, history.Low, history.High);
                    oldHistory.Add(history);
                }
            }

            xtsTrend.History.RemoveRange(oldHistory);
        }


        private void PruneFuture(DateTime dateTime)
        {
            foreach (XTSTrend trend in this.trendData.TrendConfiguration)
            {
                PruneFuture(trend, dateTime);
            }
        }

        /// <summary>
        /// Removes newer trend history from the range 
        /// when it is no longer required
        /// </summary>
        /// <param name="xtsTrend">The trend that needs to be pruned</param>
        /// <param name="dateTime">The date to start the pruning from.</param>
        private void PruneFuture(XTSTrend xtsTrend, DateTime dateTime)
        {
            List<XTSTrendHistory> oldHistory = new List<XTSTrendHistory>();
            List<XTSTrendHistory> currentHistory = xtsTrend.History.GetCopy();
            foreach (XTSTrendHistory history in currentHistory)
            {
                if (history.TimeDate > dateTime)
                {
                    System.Diagnostics.Debug.WriteLine("Removing: Point {0}, {1}, {2}, {3}", history.TimeDate, history.Actual, history.Low, history.High);
                    oldHistory.Add(history);
                }
            }

            xtsTrend.History.RemoveRange(oldHistory);
        }
    }
}
