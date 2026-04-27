/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */

using System;
using System.IO;
using System.Net;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Threading;

namespace WebServiceObjects
{
    /// <summary>
    /// Wraps the functionality of WebClient with customised functions for custom type processing callbacks etc.
    /// </summary>
    public class JsonWebClient
    {
        #region Callback Delegates
        /// <summary>
        /// Callback definition for calls that request data
        /// </summary>
        /// <param name="data">Data returned from the request</param>
        public delegate void WebServiceObjectsCallback(object data);

        /// <summary>
        /// Callback definition for failed async requests
        /// </summary>
        /// <param name="error">The reason for the error</param>
        public delegate void WebServiceObjectsErrorCallback(WebException error);
        #endregion // Callback Delegates

        /// <summary>
        /// The timeout for the static Json upload/download functions to
        /// wait when performing an operation.
        /// </summary>
        /// <remarks>If we intend to POST a lot of data, it may be advisable to make this a parameter
        /// of the synchronous calls.</remarks>
        public const int COMMS_TIMEOUT = 10000;

        #region Member Variables
        /// <summary>
        /// Authentication information
        /// </summary>
        private string auth = null;

        /// <summary>
        /// Internal Response data
        /// </summary>
        private string response = null;
        /// <summary>
        /// The result of the transfer
        /// </summary>
        public string Response
        {
            get
            {
                return response;
            }
        }

        /// <summary>
        /// Internal data for DataHandlerCallback
        /// </summary>
        private WebServiceObjectsCallback dataHandlerCallback = null;
        /// <summary>
        /// The callback for handling the converted response data
        /// </summary>
        public WebServiceObjectsCallback DataHandlerCallback
        {
            set
            {
                this.dataHandlerCallback = value;
            }
        }

        /// <summary>
        /// Internal data for ErrorCallback
        /// </summary>
        private WebServiceObjectsErrorCallback errorCallback = null;
        /// <summary>
        /// The callback for handling the converted response data
        /// </summary>
        public WebServiceObjectsErrorCallback ErrorCallback
        {
            set
            {
                this.errorCallback = value;
            }
        }

        /// <summary>
        /// Internal data type to convert the Json response to
        /// </summary>
        private Type responseType;
        /// <summary>
        /// The data type to convert the Json response to
        /// </summary>
        public Type ResponseType
        {
            set
            {
                this.responseType = value;
            }
        }

        /// <summary>
        /// The url of the current request
        /// </summary>
        private Uri url;

        /// <summary>
        /// The data to upload
        /// </summary>
        private byte[] uploadData;

        private WebException responseException;

        /// <summary>
        /// Used for synchronous calls, where data complete callback is waited for
        /// </summary>
        private ManualResetEvent transferComplete = new ManualResetEvent(false);

        #endregion // Member Variables

        #region Constructor
        /// <summary>
        /// Default Constructor
        /// </summary>
        public JsonWebClient() : this(null)
        {
        }

        public JsonWebClient(string auth)
        {
            this.auth = auth;
        }

        #endregion // Constructor

        #region Upload Data
        /// <summary>
        /// POST the data to the specified URL
        /// </summary>
        /// <param name="url">The address to send the data</param>
        /// <param name="data">The data to send</param>
        public void UploadData(string url, byte[] data)
        {
            this.transferComplete.Reset();
            this.response = null;
            this.url = new Uri(url);
            this.uploadData = data;
            Thread uploadThread = new Thread(new ThreadStart(UploadDataThread));
            uploadThread.Start();
        }

        /// <summary>
        /// It is necessary to do the actual download on a separate thread in Silverlight
        /// </summary>
        private void UploadDataThread()
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(this.url);
            request.Method = "POST";
            request.ContentType = "application/json";
            request.ContentLength = this.uploadData.Length;
            if (this.auth != null)
            {
                request.Headers["Authorization"] = this.auth;
            }
            request.BeginGetRequestStream(this.AddPayload, request);
        }

        private void AddPayload(IAsyncResult result)
        {
            HttpWebRequest request = (HttpWebRequest)result.AsyncState;
            Stream stream = request.EndGetRequestStream(result);
            stream.Write(this.uploadData, 0, this.uploadData.Length);
            stream.Flush();
            stream.Close();
            request.BeginGetResponse(this.TransferCompleted, request);
        }

        /// <summary>
        /// Callback for the WebClient when the upload has completed.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">A UploadStringCompletedEventArgs that contains event data.</param>
        private void proxy_UploadStringCompleted(Object sender, UploadStringCompletedEventArgs e)
        {
            if (!e.Cancelled && (e.Error == null))
            {
                HandleResponse(e.Result);
            }
            this.transferComplete.Set();
        }
        #endregion // Upload Data

        #region Download Data
        /// <summary>
        /// Replacement for the full WebClient DownloadData function.
        /// </summary>
        /// <param name="proxy">The webclient to download data on.</param>
        /// <param name="url">The URI from which to download data. </param>
        /// <returns>A string containing the downloaded resource.</returns>
        public void DownloadData(string url)
        {
            this.transferComplete.Reset();
            this.response = null;
            this.url = new Uri(url);
            Thread downloadThread = new Thread(new ThreadStart(DownloadDataThread));
            downloadThread.Start();
        }

        /// <summary>
        /// It is necessary to do the actual download on a separate thread in Silverlight
        /// </summary>
        private void DownloadDataThread()
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(this.url);

            if (this.auth != null)
            {
                request.Headers["Authorization"] = this.auth;
            }
            request.BeginGetResponse(this.TransferCompleted, request);
        }
        #endregion // Download Data

        #region Callback and handler for upload/download responses
        /// <summary>
        /// Callback for a completed HTTPWebRequest
        /// </summary>
        /// <param name="result"></param>
        private void TransferCompleted(IAsyncResult result)
        {
            HttpWebRequest request = (HttpWebRequest)result.AsyncState;
            responseException = null;
            if ((result.IsCompleted) && (request.HaveResponse))
            {
                try
                {
                    using (HttpWebResponse response = (HttpWebResponse)request.EndGetResponse(result))
                    {
                        using (StreamReader sr = new StreamReader(response.GetResponseStream()))
                        {
                            HandleResponse(sr.ReadToEnd());
                        }
                    }
                }
                catch (WebException e)
                {
                    if (this.errorCallback != null)
                    {
                        this.errorCallback(e);
                    }
                }
            }
            else
            {
                if (this.errorCallback != null)
                {
                    this.errorCallback(null);
                }
            }
            this.transferComplete.Set();
        }

        /// <summary>
        /// Function for handling the response data from the server
        /// </summary>
        /// <param name="result">Response from the server</param>
        private void HandleResponse(string result)
        {
            this.response = result;
            if (dataHandlerCallback != null)
            {
                this.dataHandlerCallback(JsonWebClient.ProcessJsonDataObjects(result, this.responseType));
            }
        }
        #endregion // Callback and handler for upload/download responses

        /// <summary>
        /// Waits for the current transfer to be signalled.
        /// </summary>
        /// <param name="timeout">Time in ms to wait for the signal.</param>
        /// <returns>true if the operation succeeds within the timeout, false if it timeouts</returns>
        public bool WaitComplete(int timeout)
        {
            bool rc = false;

            if (this.transferComplete.WaitOne(timeout))
            {
                rc = true;
            }

            if (responseException != null)
            {
                throw responseException;
            }

            return rc;
        }

        #region Static Functions for Makeing Json Requests
        /// <summary>
        /// Reads JSON objects from a specified address on the server
        /// </summary>
        /// <param name="url">The address for the GET operation</param>
        /// <param name="objectType">The type of object to cast to</param>
        /// <exception cref="System.Net.WebException">Thrown if a problem occurs accessing the server</exception>
        /// <returns></returns>
        public static object ReadJsonDataObjects(string url, Type objectType)
        {
            return ReadJsonDataObjects(url, objectType, null, null);
        }

        /// <summary>
        /// Reads JSON objects from a specified address on the server
        /// </summary>
        /// <param name="url">The address for the GET operation</param>
        /// <param name="objectType">The type of object to cast to</param>
        /// <exception cref="System.Net.WebException">Thrown if a problem occurs accessing the server</exception>
        public static object ReadJsonDataObjects(string url, Type objectType, WebServiceObjectsCallback callback, WebServiceObjectsErrorCallback errorCallback)
        {
            JsonWebClient jsonProxy = new JsonWebClient();
            jsonProxy.ResponseType = objectType;
            jsonProxy.DownloadData(url);
            jsonProxy.DataHandlerCallback = callback;
            jsonProxy.ErrorCallback = errorCallback;

            if (errorCallback == null)
            {
                jsonProxy.ErrorCallback = jsonProxy.DefaultWebServiceObjectsErrorCallback;
            }

            if (jsonProxy.WaitComplete(JsonWebClient.COMMS_TIMEOUT))
            {
                return JsonWebClient.ProcessJsonDataObjects(jsonProxy.Response, objectType);
            }
            else
            {
                return null;
            }
        }

        //private void DefaultErrorCallback(WebException error)
        //{
        //    Console.WriteLine("Oh dear!!!");
        //}

        //public static object WriteJsonDataObjects(string url, Object sendObj, Type sendObjType, Type returnObjType, string username = null, string password = null)
        //public static void   WriteJsonDataObjects(string url, Object sendObj, Type sendObjType, Type returnObjType, WebServiceObjectsCallback callback, WebServiceObjectsErrorCallback errorCallback, string username = null, string password = null)

        public void DefaultWebServiceObjectsErrorCallback(WebException error)
        {
            responseException = error;
        }

        /// <summary>
        /// Performs a POST operation on the server
        /// </summary>
        /// <param name="url">The address for the POST operation</param>
        /// <param name="sendObj">Object to send to the server</param>
        /// <param name="sendObjType">The type of the object to send to the server</param>
        /// <param name="returnObjType">The type of object expected to be returned by the server</param>
        /// <returns>The data object as returnObjType</returns>
        public static object WriteJsonDataObjects(string url, Object sendObj, Type sendObjType, Type returnObjType, string auth = null)
        {
            return WriteJsonDataObjects(url, sendObj, sendObjType, returnObjType, null, null, auth);
        }

        /// <summary>
        /// Performs a POST operation on the server
        /// </summary>
        /// <param name="url">The address for the POST operation</param>
        /// <param name="sendObj">Object to send to the server</param>
        /// <param name="sendObjType">The type of the object to send to the server</param>
        /// <param name="returnObjType">The type of object expected to be returned by the server</param>
        public static object WriteJsonDataObjects(string url, Object sendObj, Type sendObjType, Type returnObjType,
            WebServiceObjectsCallback callback, WebServiceObjectsErrorCallback errorCallback,
            string auth = null)
        {
            JsonWebClient jsonProxy = new JsonWebClient(auth);
            jsonProxy.ErrorCallback = errorCallback;
            jsonProxy.DataHandlerCallback = callback;
            jsonProxy.ResponseType = returnObjType;

            if (errorCallback == null)
            {
                jsonProxy.ErrorCallback = jsonProxy.DefaultWebServiceObjectsErrorCallback;
            }

            if (sendObj != null)
            {
                using (MemoryStream stream = new MemoryStream())
                {
                    DataContractJsonSerializer serialiser;
                    serialiser = new DataContractJsonSerializer(sendObjType);
                    serialiser.WriteObject(stream, sendObj);
                    jsonProxy.UploadData(url, stream.ToArray());
                }
            }
            else
            {
                jsonProxy.UploadData(url, new byte[0]);
            }

            if (jsonProxy.WaitComplete(JsonWebClient.COMMS_TIMEOUT))
            {
                return JsonWebClient.ProcessJsonDataObjects(jsonProxy.Response, returnObjType);
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// Converts a json data string to the specified object type
        /// </summary>
        /// <param name="data">The data to convert</param>
        /// <param name="objectType">The target type</param>
        /// <returns>The target data</returns>
        private static object ProcessJsonDataObjects(string data, Type objectType)
        {
            if ((data == null) || (data.Length == 0))
            {
                return null;
            }

            // We may be able to do this with a StreamWriter?
            byte[] dataBytes = Encoding.UTF8.GetBytes(data);
            using (MemoryStream stream = new MemoryStream(dataBytes))
            {
                DataContractJsonSerializer obj = new DataContractJsonSerializer(objectType);
                return obj.ReadObject(stream);
            }
        }
        #endregion // Static Functions for Makeing Json Requests
    }
}
