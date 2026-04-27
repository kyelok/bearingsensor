/* 
 * XTSWebResultDelegate.cs
 * 
 * Provides the glue between the web objects and the XTSWebResultDelegate objects
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: CPeerman, 04/04/2012
 */
using System;
namespace XTS
{
    /// <summary>
    /// Provides the glue between the web objects and the XTSWebResultDelegate objects
    /// </summary>
    public class XTSWebResultDelegate
    {
        /// <summary>
        /// Definition for the function by the WebServiceCallback function
        /// </summary>
        /// <param name="data">The data returned by the web server</param>
        /// <param name="callback">The XTSResultDelegate this function should call</param>
        public delegate void WebServiceObjectsCallbackParams(IAsyncResult resultObject, object data, XTSResultDelegate callback, params object[] objects);

        public delegate void WebServiceObjectsCallback(IAsyncResult resultObject, object data, XTSResultDelegate callback);
        
        /// <summary>
        /// The XTSResultDelegate too call
        /// </summary>
        private XTSResultDelegate xtsCallback;

        /// <summary>
        /// The callback to process the data
        /// </summary>
        private WebServiceObjectsCallback callback;

        /// <summary>
        /// The callback to process the data
        /// </summary>
        private WebServiceObjectsCallbackParams callbackParams;

        private object[] parameters;

        /// <summary>
        /// Constructor for this delegate
        /// </summary>
        /// <param name="xtsCallback">The XTSResultDelegate this function should call</param>
        /// <param name="callback">The function which should be called by the WebServiceCallback</param>
        public XTSWebResultDelegate(XTSResultDelegate xtsCallback, WebServiceObjectsCallback callback)
        {
            this.callback = callback;
            this.xtsCallback = xtsCallback;
        }

        /// <summary>
        /// Constructor for this delegate
        /// </summary>
        /// <param name="xtsCallback">The XTSResultDelegate this function should call</param>
        /// <param name="callback">The function which should be called by the WebServiceCallback</param>
        public XTSWebResultDelegate(XTSResultDelegate xtsCallback, WebServiceObjectsCallbackParams callback, params object[] callbackParams)            
        {
            this.callbackParams = callback;
            this.xtsCallback = xtsCallback;
            this.parameters = callbackParams;
        }

        /// <summary>
        /// Called by the UI thread 
        /// </summary>
        /// <param name="data"></param>
        public void WebServiceCallback(IAsyncResult resultObject, object data)
        {
            if (callback != null)
            {
                callback(resultObject, data, xtsCallback);
            }
            else if (callbackParams != null)
            {
                callbackParams(resultObject, data, xtsCallback, parameters);
            }
        }
    }
}
