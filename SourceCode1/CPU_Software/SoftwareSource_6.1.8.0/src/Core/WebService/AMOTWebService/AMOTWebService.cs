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
    /// <summary>
    /// AMOT Web service. See the IWebService interface for details on endpoints
    /// </summary>
    [ServiceContract]
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single,ConcurrencyMode = ConcurrencyMode.Multiple)]
    public partial class WebService
    {
        /// <summary>
        /// Engine management logic class
        /// </summary>
        private EngineManagement engineManagement;

        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        /// <summary>
        /// Default constructor
        /// </summary>
        public WebService()
        {
            engineManagement = new EngineManagement();
            InitialiseSensorSetup();
            InitialiseUsers();
        }

        /// <summary>
        /// Returns the client access policy for silver light clients
        /// </summary>
        /// <returns>An XML string to return to the client that requested the access policy.</returns>
        [OperationContract]
        [WebGet(UriTemplate = "/clientaccesspolicy.xml")]
        public Stream GetSilverlightPolicy()
        {
            string result = @"<?xml version=""1.0"" encoding=""utf-8""?>
<access-policy>
    <cross-domain-access>
        <policy>
            <allow-from http-request-headers=""*"">
                <domain uri=""*""/>
            </allow-from>
            <grant-to>
                <resource path=""/"" include-subpaths=""true""/>
            </grant-to>
        </policy>
    </cross-domain-access>
</access-policy>";
            WebOperationContext.Current.OutgoingResponse.ContentType = "application/xml";
            WebOperationContext.Current.OutgoingResponse.Headers.Add("Cache-Control", "no-cache");
            WebOperationContext.Current.OutgoingResponse.Headers.Add("Pragma", "no-cache");
            return new MemoryStream(Encoding.UTF8.GetBytes(result));
        }

    }
}
