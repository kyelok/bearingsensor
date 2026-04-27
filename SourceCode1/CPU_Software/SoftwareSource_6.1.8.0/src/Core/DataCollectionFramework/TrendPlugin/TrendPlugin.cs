/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.ServiceModel;
using System.ServiceModel.Web;
using DataCollectionSDK;
using System.ServiceModel.Description;

namespace TrendPlugin
{
    public class TrendPlugin : IExtInterface 
    {
        /// <summary>
        /// RunSchedule schedule for webservice
        /// </summary>
        public int RunSchedule
        {
            get { return 0; }
        }

        /// <summary>
        /// LogSchedule schedule for webservice
        /// </summary>
        public int LogSchedule
        {
            get { return 0; }
        }

        /// <summary>
        /// Flag indicating that this is a realtime task
        /// </summary>
        public bool Realtime
        {
            get
            {
                return false;
            }
        }

        /// <summary>
        /// Stop any internal services
        /// </summary>
        public void Stop()
        {
            
        }

        /// <summary>
        /// Internal sync object to lock access to this plugin on.
        /// </summary>
        private object syncRoot = new object();

        /// <summary>
        /// Gets the sync object to lock access to this plugin on.
        /// </summary>
        public object SyncRoot
        {
            get { return syncRoot; }
        }

        /// <summary>
        /// The reports plugin service host
        /// </summary>
        private ServiceHost serviceHost;

        /// <summary>
        /// Called to initialise the object for use.
        /// </summary>
        public void Init()
        {
            string address = "http://localhost:8081/trend/";
            WebHttpBinding binding = new WebHttpBinding();
            binding.TransferMode = TransferMode.Streamed;
            binding.MaxReceivedMessageSize = int.MaxValue;
            //binding.ReaderQuotas.MaxArrayLength = int.MaxValue;

            serviceHost = new ServiceHost(typeof(TrendWebService), new Uri(address));
            serviceHost.AddServiceEndpoint(typeof(ITrendStreamer), binding, address).Behaviors.Add(new WebHttpBehavior());
            serviceHost.Open();
        }

        /// <summary>
        /// Called when the RunSchedule milliseconds have elapsed.
        /// The method that implements this interface should
        /// perform all the data collection work.
        /// </summary>
        public void Run()
        {
        }

        /// <summary>
        /// Called when the LogSchedule milliseconds have elapsed.
        /// The method that implements this interface should perform
        /// all the data logging work.
        /// </summary>
        /// <param name="logTime">The time to stamp this log entry with.</param>
        public void Log(DateTime logTime)
        {
        }
    }
}
