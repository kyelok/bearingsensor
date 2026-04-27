/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: Christopher Peerman, 12/04/2012
 */

using System;
using System.Linq;
using System.Threading;
using System.Collections.Generic;
using System.Net;
using WebServiceObjects;

namespace XTS
{
    public partial class XTSDataProviderWeb
    {
        /// <summary>
        /// Internal data for Alarms
        /// </summary>
        private XTSDataCollection<XTSAlarm> alarms;

        /// <summary>
        /// Internal data for Events
        /// </summary>
        private XTSDataCollection<XTSAlarm> eventLogs;


        /// <summary>
        /// List of Alarms that need to be displayed in the UI
        /// </summary>
        public XTSDataCollection<XTSAlarm> Alarms
        {
            get
            {
                return this.alarms;
            }
        }

        /// <summary>
        /// List of Events
        /// </summary>
        public XTSDataCollection<XTSAlarm> EventLogs
        {
            get
            {
                return this.eventLogs;
            }
        }

        /// <summary>
        /// Event that is used to control requesting of Event Log data
        /// </summary>
        private AutoResetEvent waitForAlarmList = new AutoResetEvent(false);

        /// <summary>
        /// Reference to the event log poll thread
        /// </summary>
        private Thread eventlogPollThread = null;

        /// <summary>
        /// Use a dictionary of alarms. Where <alarmId, XTSAlarm object>
        /// </summary> 
        private Dictionary<int, XTSAlarm> activeAlarms = new Dictionary<int, XTSAlarm>();

        /// <summary>
        /// The offset of the next set of events to read
        /// </summary>
        private int eventLogOffset = -1;

        /// <summary>
        /// Populates the EventLog collection with the specified events
        /// </summary>
        /// <param name="index">The index of the event to get</param>
        /// <param name="count">Number of events to get</param>
        public void GetEventLog(int index, int count)
        {
            this.serverRequests.GetEventLog(this.ProcessEventLog, index, count, false);
        }

        /// <summary>
        /// Processes the result from GetEventLog request
        /// </summary>
        /// <param name="resultObject"></param>
        /// <param name="data">The data returned by the web service.</param>
        private void ProcessEventLog(IAsyncResult resultObject, object data)
        {

            // As the XTSDataCollection only adds XLSAlarms in the UI thread we switch to the UI thread to perform the add operation
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess() == false)
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new Action<IAsyncResult, object>(ProcessEventLog), resultObject, data);
                this.waitForAlarmList.Set();
                return;
            }

            // Handle error conditions
            if (data == null)
            {
                return;
            }

            if (data is WebException)
            {
                System.Diagnostics.Debug.WriteLine("ProcessEventLog: " + data.ToString());
                return;
            }

            EventLogResult eventLogResult = (EventLogResult)data;

            if (eventLogResult != null)
            {
                // Build the list of event log items
                if (eventLogResult.Events != null)
                {
                    this.eventLogs.Clear();
                    foreach (EventLogItem logItem in eventLogResult.Events)
                    {
                        AddEvent(logItem.Eventid,
                                XTSAlarm.XTSAlarmType.General,
                                ConvertFromUnixTimeStamp(logItem.EventDateTime),
                                logItem.Description,
                                logItem.AckUserId,
                                ConvertFromUnixTimeStamp(logItem.Ackdatetime));
                    }
                }
            }
        }

        /// <summary>
        /// Thread polls for alarms and events
        /// </summary>
        private void EventlogPollThread()
        {
            int start, delta;
            int sleepPeriod = 2000;
            IAsyncResult asyncOperation;
            while (this.running)
            {
                start = Environment.TickCount;

                // Incase anything has come through reset
                this.waitForAlarmList.Reset();

                //System.Diagnostics.Debug.WriteLine("Reading next event from offset {0}", eventLogOffset);
                asyncOperation = this.serverRequests.GetEventLog(this.ProcessAlarmList, eventLogOffset, 100, true);

                // Wait for the engine data to be processed before requesting the next
                if (this.waitForAlarmList.WaitOne(10000) == false)
                {
                    if (asyncOperation.IsCompleted)
                        System.Diagnostics.Debug.WriteLine("Event log web request not signalled but marked completed");

                    HttpWebRequest request = (HttpWebRequest)asyncOperation.AsyncState;
                    request.Abort();
                    continue;
                }

                delta = Environment.TickCount - start;
                if (delta < sleepPeriod)
                {
                    Thread.Sleep(sleepPeriod - delta);
                }
            }
        }

        /// <summary>
        /// Callback function for handling the alarm list returned from the event log.
        /// </summary>
        /// <param name="data">The Event log holding Alarms that is returned by the Web Service</param>
        private void ProcessAlarmList(IAsyncResult resultObject, object data)
        {
            this.waitForAlarmList.Set();

            // Handle error conditions
            if (data == null)
            {
                return;
            }

            if (data is WebException)
            {
                return;
            }

            EventLogResult eventLogResult = (EventLogResult)data;

            if (eventLogResult.Events != null)
            {
                eventLogOffset = eventLogResult.ResultsOffset + eventLogResult.Events.Length;
            }

            // As the XTSDataCollection only adds XLSAlarms in the UI thread we switch to the UI thread to perform the add operation
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess() == false)
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new Action<IAsyncResult,object>(ProcessAlarmList), resultObject, data);
                return;
            }


            // Build the list of events
            //
            Dictionary<int, XTSAlarm> stillActiveAlarms = new Dictionary<int, XTSAlarm>();


            if (eventLogResult.EngineAlarms != null && eventLogResult.EngineAlarms.Length > 0)
            {
                foreach (EngineAlarm engineAlarm in eventLogResult.EngineAlarms)
                {
                    if (activeAlarms.ContainsKey(engineAlarm.AlarmId))
                    {
                        XTSAlarm alarm = activeAlarms[engineAlarm.AlarmId];
                        alarm.Count = engineAlarm.Count;
                        //7-12-2013 FF: update the alarm to reflect the latest triggering value and timestamp
                        alarm.Timestamp = ConvertFromUnixTimeStamp(engineAlarm.AlarmOn);
                        alarm.Message = engineAlarm.AlarmString;

                        // Check that the acknowledgement of the event
                        if (alarm.Acknowledged != engineAlarm.Acked)
                        {
                            if (engineAlarm.Acked)
                            {
                                alarm.Acknowledge(engineAlarm.AckUser, ConvertFromUnixTimeStamp(engineAlarm.AckTime));
                            }
                            else
                            {
                                alarm.Acknowledge(null, DateTime.MinValue);
                            }
                        }

                        // Check if the alarm is off
                        if (engineAlarm.AlarmOff != 0)
                        {
                            //Alarm has gone off.  Mark it as cleared.
                            alarm.Level = XTSAlarm.XTSAlarmLevel.Cleared;
                        }
                        else
                        {
                            alarm.Level = XTSAlarm.XTSAlarmLevel.Present;
                        }

                        if (alarm.Acknowledged)
                        {
                            DateTime ackTime = ConvertFromUnixTimeStamp(engineAlarm.AckTime);
                            string ackUser = engineAlarm.AckUser;

                            if (alarm.AckTimestamp != ackTime || alarm.AckUser != ackUser)
                            {
                                alarm.Acknowledge(ackUser, ackTime);
                            }
                        }
                    }
                    else
                    {
                        XTSAlarm.XTSAlarmType alarmType;
                        // This is a new alarm, add it to the list  
                        switch (engineAlarm.DataType)
                        {
                            case LogDataTypes.General:
                                alarmType = XTSAlarm.XTSAlarmType.General;
                                break;
                            case LogDataTypes.Slowdown:
                                alarmType = XTSAlarm.XTSAlarmType.Slowdown;
                                break;
                            case LogDataTypes.Alarm:
                            case LogDataTypes.RTN:
                            case LogDataTypes.Prewarning:
                            case LogDataTypes.SLEM:
                            default:
                                alarmType = XTSAlarm.XTSAlarmType.Alarm;
                                break;
                        }

                        activeAlarms[engineAlarm.AlarmId] = AddEvent(engineAlarm.AlarmId,
                            alarmType,
                            ConvertFromUnixTimeStamp(engineAlarm.AlarmOn),
                            engineAlarm.AlarmString,
                            engineAlarm.AckUser,
                            ConvertFromUnixTimeStamp(engineAlarm.AckTime));


                    }

                    stillActiveAlarms[engineAlarm.AlarmId] = activeAlarms[engineAlarm.AlarmId];
                }
            }
            
            else
            {

                //There are no alarms active on the server
                //We need to update the alarms list to mark
                //our current alarms as ack'ed and cleared.
                
                    /*
                    foreach (XTSAlarm alarm in this.alarms)
                    {
                        if (!alarm.Acknowledged)
                        {
                            alarm.Acknowledge("", DateTime.UtcNow);
                        }
                    }
                     * */
                //There are no alarms active on the server, meaning no alarm from database, we need to remove all alarms from list
                if (this.alarms != null)
                {
                    if (this.alarms.Count > 0)
                    {
                        for (int index = 0; index < this.alarms.Count; index++)
                        {
                            this.alarms.RemoveAt(index);
                        }
                    }
                }
            }

            // Remove the cleared alarms. We use the Linq Except to create a list, as this however enumerates
            // upon the live dictionary we are unable to change the live dictionary, so instead we add the
            // key pairs to a list and then delete the items from the list.
            lock (alarmSync)
            {
                List<int> indexesToRemove = new List<int>();
                List<KeyValuePair<int, XTSAlarm>> itemsToRemove = new List<KeyValuePair<int, XTSAlarm>>();
                IEnumerable<KeyValuePair<int, XTSAlarm>> clearedAlarms = activeAlarms.Except(stillActiveAlarms);

                foreach (KeyValuePair<int, XTSAlarm> clearedAlarm in clearedAlarms)
                {
                    clearedAlarm.Value.Level = XTSAlarm.XTSAlarmLevel.Cleared;
                    itemsToRemove.Add(clearedAlarm);
                    for(int i=0;i<this.alarms.Count;i++)
                    {
                        if (this.alarms[i].AlarmID == clearedAlarm.Value.AlarmID)
                        {
                            indexesToRemove.Add(i);
                        }
                    }                    
                }

                foreach (KeyValuePair<int, XTSAlarm> clearedAlarm in itemsToRemove)
                {
                    activeAlarms.Remove(clearedAlarm.Key);
                }

                foreach (int i in indexesToRemove)
                {
                    try
                    {
                        this.alarms.RemoveAt(i);
                    }
                    catch (ArgumentOutOfRangeException)
                    {
                        //Range not valid
                    }
                }

                //Sort the alarms list into the correct order
                //This is:
                // unack'ed
                // acked
                // cleared
                this.alarms.BubbleSort();

                UpdateAlarmCount();

            }
        }

        /// <summary>
        /// Adds an event or alarm to the interal event or alarm lists
        /// </summary>
        /// <param name="alarmId"></param>
        /// <param name="alarmType"></param>
        /// <param name="alarmTime"></param>
        /// <param name="message"></param>
        /// <param name="ackUser"></param>
        /// <param name="ackTime"></param>
        /// <returns></returns>
        private XTSAlarm AddEvent(int alarmId, XTSAlarm.XTSAlarmType alarmType, DateTime alarmTime, String message, string ackUser, DateTime ackTime)
        {
            XTSAlarm alarm = new XTSAlarm(alarmId);
            alarm.Message = message;
            alarm.Level = XTSAlarm.XTSAlarmLevel.Present;
            alarm.Type = alarmType;
            alarm.Timestamp = alarmTime;
            alarm.Count = 0;
            
            if (ackTime != ConvertFromUnixTimeStamp(0))
            {
                alarm.Acknowledge(ackUser, ackTime);
            }

            if (alarm.Type == XTSAlarm.XTSAlarmType.General)
            {
                this.eventLogs.Add(alarm);
            }
            else
            {
                this.alarms.Add(alarm);
            }

            return alarm;
        }

        /// <summary>
        /// Web server callback from the AcknowledgeAlarm request
        /// </summary>
        /// <param name="data">The data from the webserver</param>
        /// <param name="callback">Callback from the application</param>
        public void AcknowledgeAlarmCallback(IAsyncResult resultObject, object data, XTSResultDelegate callback)
        {
            if (data is WebException)
            {
                callback(false);
            }
            else
            {
                Authorised authorised = data as Authorised;
                if (authorised.Success &&
                    ProcessAuthorisedResponse(authorised))
                {
                    UpdateAlarmCount();
                    callback(true);
                }
                else
                {
                    callback(false);
                }
            }
        }

        /// <summary>
        /// Web server callback from the IgnoreAlarm request
        /// </summary>
        /// <param name="data">The data from the webserver</param>
        /// <param name="callback">Callback from the application</param>
        private void IgnoreAlarmCallback(IAsyncResult resultObject, object data, XTSResultDelegate callback)
        {
            if (data is WebException)
            {
                callback(false);
            }
            else
            {
                callback(true);
            }
        }

        /// <summary>
        /// Acknowledges an alarm
        /// </summary>
        /// <param name="alarmId">The alarm Id to acknowledge</param>
        /// <param name="callback">The callback</param>
        public void AcknowledgeAlarm(int alarmId, XTSResultDelegate callback)
        {
            XTSWebResultDelegate xtsdelegate = new XTSWebResultDelegate(callback, AcknowledgeAlarmCallback);
            this.serverRequests.EngineAlarmsAck(xtsdelegate.WebServiceCallback, new Int16[] { (Int16)alarmId }, auth);
        }

        /// <summary>
        /// Ignore an alarm
        /// </summary>
        /// <param name="alarmId">The alarm Id to ignore</param>
        /// <param name="callback">The callback</param>
        public void IgnoreAlarm(int alarmId, XTSResultDelegate callback)
        {
            XTSWebResultDelegate xtsdelegate = new XTSWebResultDelegate(callback, IgnoreAlarmCallback);
            this.serverRequests.EngineAlarmsIgnore(xtsdelegate.WebServiceCallback, new Int16[] { (Int16)alarmId }, auth);
        }

        private object alarmSync = new object();

        /// <summary>
        /// Updates the number of active events within the count
        /// </summary>
        private void UpdateAlarmCount()
        {
            uint unackedalarms = 0;
            lock (alarmSync)
            {
                    foreach (XTSAlarm alarm in alarms)
                    {
                        if (alarm.Acknowledged == false)
                        {
                            unackedalarms++;
                    }
                }
                this.generalData.UnackedAlarms = unackedalarms;
            }
        }
    }
}
