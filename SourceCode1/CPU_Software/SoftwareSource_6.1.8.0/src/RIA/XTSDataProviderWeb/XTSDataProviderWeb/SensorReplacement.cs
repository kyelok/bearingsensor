/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: Christopher Peerman, 12/04/2012
 */

using System;
using System.Net;
using System.Collections.Generic;
using WebServiceObjects;
using System.IO;

namespace XTS
{
    public partial class XTSDataProviderWeb
    {
        /// <summary>
        /// Saves a file to the specified path that includes the data
        /// </summary>
        /// <param name="cylinder">The cylinder that the sensor is in</param>
        /// <param name="sensor">The sensor within the cylinder to export data of</param>
        /// <param name="fileStream">Stream to save data to</param>
        public void SaveReplacementData(uint cylinder, uint sensor, System.IO.Stream fileStream)
        {
            Int16 sensorId = (Int16)(((cylinder - 1) * 2) + sensor - 1);

            StreamDownloader download = new StreamDownloader(this.errorCallback, BusyOperation, fileStream);
            serverRequests.DownloadSensorReplacementData(sensorId,download.DownloadCompleted);
            BusyOperation(true);
        }

        /// <summary>
        /// Reads the specified file and sets the relevant data for the specified sensor
        /// </summary>
        /// <param name="cylinder">The cylinder that the sensor is in</param>
        /// <param name="sensor">The sensor within the cylinder to import data of</param>
        /// <param name="fileStream">Stream to read data from</param>
        public void ImportReplacementData(uint cylinder, uint sensor, System.IO.FileStream fileStream)
        {
            bool success = false;
            try
            {
                Int16 sensorId = (Int16)(((cylinder - 1) * 2) + sensor - 1);

                MemoryStream data = new MemoryStream();

                if (fileStream != null)
                {
                    byte[] buffer = new byte[1024];
                    int read;
                    do
                    {
                        read = fileStream.Read(buffer, 0, buffer.Length);
                        if (read > 0)
                        {
                            data.Write(buffer, 0, read);
                        }
                    } while (read > 0);

                    // Validate import data is for specified sensor
                    string dataString = System.Text.Encoding.UTF8.GetString(data.ToArray(), 0, (int)data.Length);

                    string[] tokens = dataString.Split('=');
                    if (tokens.Length == 2)
                    {
                        string chSensor = tokens[0].Trim();
                        if (chSensor.StartsWith("CH"))
                        {
                            string strSensor = chSensor.Remove(0, 2);
                            if (sensorId == (Int16.Parse(strSensor)-1))
                            {
                                // This will throw an exception if the offset is invalid
                                int offset = int.Parse(tokens[1]);

                                success = true;
                                serverRequests.UploadSensorReplacementData(
                                    dataString,
                                    WebServiceObjectsVoidCallback, auth);
                            }
                        }
                    }
                }
            }
            catch
            { }

            if (!success)
            {
                this.errorCallback(XTSErrors.SensorReplaceImportFileError, null);
            }
        }

        /// <summary>
        /// Starts the sensor replace procedure on the specified sensor
        /// </summary>
        /// <param name="cylinder">The cylinder that the sensor is in</param>
        /// <param name="sensor">The sensor within the cylinder to replace</param>
        /// <param name="failure">The failure date entered by the user</param>
        public void ReplaceSensor(uint cylinder, uint sensor, DateTime failure)
        {
            //Calculate the sensor id from cylinder and sensor
            Int16 sensorId = (Int16)(((cylinder - 1) * 2) + sensor - 1);
            //Send WebInvoke request to engine/sensor/replace/{sensor}
            this.serverRequests.StartSensorReplace(sensorId, failure, WebServiceObjectsVoidCallback, auth);
        }

        /// <summary>
        /// Informs the backend that the sensors in slowroll state have undergone slowroll
        /// procedure and are ready for 50 hour averaging.
        /// </summary>
        /// <param name="sensors">Sensors that completed the operation</param>
        public void ReplaceSensorSlowrollComplete(List<XTSSensor.XTSSensorID> sensors)
        {
            foreach (var sensor in sensors)
            {
                Int16 sensorId = (Int16)(((sensor.cylinder - 1) * 2) + sensor.sensor - 1);
                this.serverRequests.StartSensorAverage(sensorId, WebServiceObjectsVoidCallback, auth);
            }
        }

        /// <summary>
        /// Cancels a running sensor replacement
        /// </summary>
        /// <param name="cylinder">The cylinder that the sensor is in</param>
        /// <param name="sensor">The sensor within the cylinder to cancel the replacement of</param>
        public void CancelReplaceSensor(uint cylinder, uint sensor)
        {
            Int16 sensorId = (Int16)(((cylinder - 1) * 2) + sensor - 1);
            this.serverRequests.CancelSensorReplace(sensorId, WebServiceObjectsVoidCallback, auth);
        }

        /// <summary>
        /// Callback for handling sensor replacement data
        /// </summary>
        /// <param name="resultObject"></param>
        /// <param name="data"></param>
        /// <param name="callback"></param>
        public void UpdateSensorReplaceDataCallback(IAsyncResult resultObject, object data, XTSResultDelegate callback) 
        {
            if (data is WebException)
            {
                WebServiceObjectsVoidCallback(resultObject, data);
                callback(false);
            }
            else
            {
                this.ProcessSensorReplacement((SensorReplacementStatus[])data);
                callback(true);
            }
        }

        /// <summary>
        /// Performs a peak calibration operation
        /// </summary>
        /// <param name="callback">Called when the operation completes</param>
        public void UpdateSensorReplaceData(XTSResultDelegate callback)
        {
            XTSWebResultDelegate xtsdelegate = new XTSWebResultDelegate(callback, UpdateSensorReplaceDataCallback);
            this.serverRequests.GetSensorReplaceState(xtsdelegate.WebServiceCallback);
        }
    }
}
