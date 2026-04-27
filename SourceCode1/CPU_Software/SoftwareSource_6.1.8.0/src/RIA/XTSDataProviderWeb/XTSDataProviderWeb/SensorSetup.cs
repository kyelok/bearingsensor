/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: Christopher Peerman, 12/04/2012
 */

using System;
using System.Collections.Generic;
using WebServiceObjects;
using System.Net;

namespace XTS
{
    public partial class XTSDataProviderWeb
    {
        XTSEngine.XTSSensorMode requestedMode;

        /// <summary>
        /// Requests the DC mode
        /// </summary>
        /// <param name="mode">Mode to request.</param>
        public void SetSensorMode(XTSEngine.XTSSensorMode mode, XTSResultDelegate callback)
        {
            this.requestedMode = mode;
            SensorDCMode dcMode = SensorDCMode.DCMode;
            bool unknown = false;

            switch (mode)
            {
                case XTSEngine.XTSSensorMode.DCMode:
                    {
                        dcMode = SensorDCMode.DCMode;
                        break;
                    }
                case XTSEngine.XTSSensorMode.PulseMode:
                    {
                        dcMode = SensorDCMode.PulseMode;
                        break;
                    }
                case XTSEngine.XTSSensorMode.DCPeakHold:
                    {
                        dcMode = SensorDCMode.DCPeakHold;
                        break;
                    }
                default:
                    {
                        unknown = true;
                        break;
                    }
            }

            // If we have a valid mode, POST it to the server
            if (!unknown)
            {
                XTSWebResultDelegate xtsdelegate = new XTSWebResultDelegate(callback, SetSensorModeCallback);
                this.serverRequests.SetSensorMode(dcMode, xtsdelegate.WebServiceCallback, auth);
            }
        }

        /// <summary>
        /// Callback for handling Sensor setup
        /// </summary>
        /// <param name="resultObject"></param>
        /// <param name="data"></param>
        /// <param name="callback"></param>
        public void SetSensorModeCallback(IAsyncResult resultObject, object data, XTSResultDelegate callback)
        {
            if (data is WebException)
            {
                WebServiceObjectsVoidCallback(resultObject, data);
                callback(false);
            }
            else
            {
                this.engineData.SensorMode = this.requestedMode;
                callback(true);
            }
        }

        /// <summary>
        /// Resets the peak for the specified sensor
        /// </summary>
        public void ResetSensorReadingPeak(uint cylIndex, uint senIndex)
        {
            Int16 sensor = (Int16)(((cylIndex - 1) * 2) + senIndex - 1);
            this.serverRequests.SensorPeekReset(new Int16[] { sensor }, WebServiceObjectsVoidCallback, auth);
        }

        /// <summary>
        /// Resets the peak for all sensors
        /// </summary>
        public void ResetSensorReadingPeak()
        {
            Int16[] sensors = new Int16[this.engineData.Cylinders.Count * 2];
            int sensorNumber = 0;

            foreach (XTSCylinder cylinder in this.engineData.Cylinders)
            {
                sensors[sensorNumber++] = (Int16)((cylinder.Index - 1) * 2);
                sensors[sensorNumber++] = (Int16)(((cylinder.Index - 1) * 2) + 1);
            }

            this.serverRequests.SensorPeekReset(sensors, WebServiceObjectsVoidCallback, auth);
        }

        /// <summary>
        /// Callback for the peak calibration operation. 
        /// </summary>
        /// <param name="data">When the SensorStartCalibratePeak is called back the 'data' will be null.
        /// When the SensorMonitorCalibratePeek a list of sensors which are still being calibrated is 
        /// returned in data.</param>
        /// <param name="callback">Callback which needs to be called when the operation completes</param>
        /// <param name="parameters">0 - Initial list of sensors to calibrate, 1 DateTime timeout</param>
        internal void PeakCalibrationCallback(IAsyncResult resultObject, object data, XTSResultDelegate callback, params object[] parameters)
        {
            if (data is WebException)
            {
                callback(false);
                return;
            }

            if (data is Authorised)
            {
                if (!ProcessAuthorisedResponse((Authorised)data))
                {
                    OnError(XTSErrors.UnauthorisedUser, null);
                    callback(false);
                    return;
                }
                else
                {
                    if (parameters.Length == 1)
                    {
                        DateTime timeout = DateTime.Now.AddSeconds(120);

                        XTSWebResultDelegate xtsdelegate = new XTSWebResultDelegate(callback, PeakCalibrationCallback, parameters[0], timeout);
                        this.serverRequests.SensorMonitorCalibratePeek((Int16[])parameters[0], xtsdelegate.WebServiceCallback, auth);
                        return;
                    }
                    else
                    {
                        Int16[] sensors = ((Authorised)data).DataArray;
                        DateTime timeout = (DateTime)parameters[1];

                        if (sensors.Length == ((Int16[])parameters[0]).Length)
                        {
                            callback(true);
                            return;
                        }

                        if (timeout > DateTime.Now)
                        {
                            XTSWebResultDelegate xtsdelegate = new XTSWebResultDelegate(callback, PeakCalibrationCallback, parameters[0], timeout);
                            this.serverRequests.SensorMonitorCalibratePeek(sensors, xtsdelegate.WebServiceCallback, auth);
                        }
                        else
                        {
                            callback(false);
                            return;
                        }
                    }
                }
            }
            else
            {
                callback(false);
            }
        }

        /// <summary>
        /// Calls peak calibration with a list of sensors to be calibrated.
        /// </summary>
        /// <param name="sensors">List of sensors</param>
        public void PeakCalibration(List<XTSSensor.XTSSensorID> sensors, XTSResultDelegate callback)
        {
            Int16[] webSensors = new Int16[sensors.Count];
            int sensorNumber = 0;

            // Convert sensors to web server version
            foreach (XTSSensor.XTSSensorID sensor in sensors)
            {
                webSensors[sensorNumber++] = (Int16)(((sensor.cylinder - 1) * 2) + sensor.sensor - 1);
            }

            XTSWebResultDelegate xtsdelegate = new XTSWebResultDelegate(callback, PeakCalibrationCallback, webSensors);
            this.serverRequests.SensorStartCalibratePeak(webSensors, xtsdelegate.WebServiceCallback, auth);
        }

        /// <summary>
        /// Enables or disables a specific sensor
        /// </summary>
        /// <param name="sensor">Sensor to enable/disable</param>
        /// <param name="enabled">True enables sensor, false disables</param>
        public void SetSensorEnabled(XTSSensor.XTSSensorID sensor, bool enabled)
        {
            Int16 sensorId;
            sensorId = (Int16)(((sensor.cylinder - 1) * 2) + sensor.sensor - 1);

            if (enabled)
            {
                this.serverRequests.SensorEnable(sensorId, WebServiceObjectsVoidCallback, auth);
            }
            else
            {
                this.serverRequests.SensorDisable(sensorId, WebServiceObjectsVoidCallback, auth);
            }
        }
    }
}
