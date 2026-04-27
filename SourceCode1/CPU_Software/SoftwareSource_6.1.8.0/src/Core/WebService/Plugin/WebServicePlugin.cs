/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System.ServiceModel.Web;
using DataCollectionSDK;
using System;

namespace WebService
{
    /// <summary>
    /// Web service plugin component for the Extension framework
    /// </summary>
    public class WebServicePlugin : IExtInterface 
    {
        /// <summary>
        /// The web services host object
        /// </summary>
        private WebServiceHost webServiceHost;

        /// <summary>
        /// Web service instance
        /// </summary>
        private WebService webServiceInstance;

        readonly object syncRoot = new object();
        
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

        public object SyncRoot
        {
            get
            {
                return syncRoot;
            }
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
            webServiceHost.Close();
        }

        /// <summary>
        /// Initialisation
        /// netsh http add urlacl url=http://+:8081/ user=everyone
        /// </summary>
        public void Init()
        {
            webServiceInstance = new WebService();

            webServiceHost = new WebServiceHost(webServiceInstance);
            webServiceHost.Open();
        }

        /// <summary>
        /// Run
        /// </summary>
        public void Run()
        {
        }

        /// <summary>
        /// Log
        /// </summary>
        public void Log(DateTime logTime)
        {
        }
    }
}
