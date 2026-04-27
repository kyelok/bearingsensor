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
        /// <summary>
        /// Callback definition for calls that request data
        /// </summary>
        /// <param name="data">Either returns a WebException or the data returned from the request</param>
        public delegate void WebServiceObjectsCallback(IAsyncResult resultObject, object data);

        /// <summary>
        /// Callback definition for calls that request data
        /// </summary>
        /// <param name="data">Either returns a WebException or the data returned from the request</param>
        public delegate void WebServiceStreamCallback(IAsyncResult resultObject, Stream stream);
        
        /// <summary>
        /// Authentication information
        /// </summary>
        private string auth = null;
        
        /// <summary>
        /// Internal data for DataHandlerCallback
        /// </summary>
        private WebServiceObjectsCallback dataHandlerCallback = null;


        /// <summary>
        /// Internal data type to convert the Json response to
        /// </summary>
        private Type responseDataType;
        
        /// <summary>
        /// The data to upload
        /// </summary>
        private byte[] uploadData;

        /// <summary>
        /// 
        /// </summary>
        private WebServiceStreamCallback dataStreamCallback;
                
        /// <summary>
        /// Default Constructor
        /// </summary>
        private JsonWebClient(Type responseType, WebServiceObjectsCallback callback) :
            this(responseType, callback, null)
        {     
        }

        private JsonWebClient(Type responseType, WebServiceObjectsCallback callback, string auth)
        {
            this.responseDataType = responseType;
            this.dataHandlerCallback = callback;
            this.auth = auth;
        }

        private JsonWebClient(WebServiceStreamCallback callback)
        {
            this.dataStreamCallback = callback;
        }

        /// <summary>
        /// POST the data to the specified URL
        /// </summary>
        /// <param name="url">The address to send the data</param>
        /// <param name="data">The data to send</param>
        private IAsyncResult UploadData(string url, byte[] data)
        {
            this.uploadData = data;

            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
            request.Method = "POST";
            request.ContentType = "application/json";
            request.ContentLength = this.uploadData.Length;
            if (this.auth != null)
            {
                request.Headers["Authorization"] = this.auth;
            }
            return request.BeginGetRequestStream(this.AddPayload, request);
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
        /// Replacement for the full WebClient DownloadData function.
        /// </summary>
        /// <param name="proxy">The webclient to download data on.</param>
        /// <param name="url">The URI from which to download data. </param>
        /// <returns>A string containing the downloaded resource.</returns>
        private IAsyncResult DownloadData(string url)
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);

            if (this.auth != null)
            {
                request.Headers["Authorization"] = this.auth;
            }
            return request.BeginGetResponse(this.TransferCompleted, request);
        }

        /// <summary>
        /// Callback for a completed HTTPWebRequest
        /// </summary>
        /// <param name="result"></param>
        private void TransferCompleted(IAsyncResult result)
        {
            HttpWebRequest request = (HttpWebRequest)result.AsyncState;
            
            if ((result.IsCompleted) && (request.HaveResponse))
            {
                try
                {
                    HttpWebResponse response = (HttpWebResponse)request.EndGetResponse(result);

                    if (dataStreamCallback != null)
                    {
                        dataStreamCallback(result, response.GetResponseStream());
                    }
                    else if (dataHandlerCallback != null)
                    {
                        StreamReader sr = new StreamReader(response.GetResponseStream());

                        try
                        {
                            string dataFromService = sr.ReadToEnd();
                            this.dataHandlerCallback(result, JsonWebClient.ProcessJsonDataObjects(dataFromService, this.responseDataType));
                        }
                        finally
                        {
                            sr.Close();
                            response.Dispose();
                        }
                    }
                    else
                    {
                        StreamReader sr = new StreamReader(response.GetResponseStream());
                        sr.Close();
                        response.Dispose();
                    }
                }
                catch (WebException e)
                {
                    if (dataStreamCallback != null)
                    {
                        dataStreamCallback(result, null);
                    }
                    else if (dataHandlerCallback != null)
                    {
                        this.dataHandlerCallback(result, e);
                    }
                }
            }
            else
            {
                if (dataStreamCallback != null)
                {
                    dataStreamCallback(result, null);
                }
                else if (dataHandlerCallback != null)
                {
                    WebException e = new WebException("Did not get response", WebExceptionStatus.SendFailure);
                    this.dataHandlerCallback(result, e);
                }
            }
        }

        public static IAsyncResult ReadStreamObject(string url, WebServiceStreamCallback callback)
        {
            JsonWebClient jsonProxy = new JsonWebClient(callback);
            return jsonProxy.DownloadData(url);
        }

        /// <summary>
        /// Reads JSON objects from a specified address on the server
        /// </summary>
        /// <param name="url">The address for the GET operation</param>
        /// <param name="objectType">The type of object to cast to</param>
        /// <exception cref="System.Net.WebException">Thrown if a problem occurs accessing the server</exception>
        public static IAsyncResult ReadJsonDataObjects(string url, Type responseType, WebServiceObjectsCallback callback)
        {
            JsonWebClient jsonProxy = new JsonWebClient(responseType, callback);
            return jsonProxy.DownloadData(url);
        }

        /// <summary>
        /// Performs a POST operation on the server
        /// </summary>
        /// <param name="url">The address for the POST operation</param>
        /// <param name="sendObj">Object to send to the server</param>
        /// <param name="sendObjType">The type of the object to send to the server</param>
        /// <param name="returnObjType">The type of object expected to be returned by the server</param>
        public static IAsyncResult WriteJsonDataObjects(string url, Object sendObj, Type sendObjType, Type returnObjType,
            WebServiceObjectsCallback callback, string auth = null)
        {
            JsonWebClient jsonProxy = new JsonWebClient(returnObjType, callback, auth);

            if (sendObj != null)
            {
                using (MemoryStream stream = new MemoryStream())
                {
                    DataContractJsonSerializer serialiser;
                    serialiser = new DataContractJsonSerializer(sendObjType);
                    serialiser.WriteObject(stream, sendObj);
                    return jsonProxy.UploadData(url, stream.ToArray());
                }
            }
            else
            {
                return jsonProxy.UploadData(url, new byte[0]);
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
            if ((data == null) || (data.Length == 0) || objectType == null)
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
    }
}
