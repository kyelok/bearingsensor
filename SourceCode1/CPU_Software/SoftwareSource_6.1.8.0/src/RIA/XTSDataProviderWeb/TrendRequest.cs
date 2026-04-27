/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: Christopher Peerman, 17/04/2012
 */
using System;
using System.Text;
using WebServiceObjects;
using System.Collections.Generic;

namespace XTS
{
    /// <summary>
    /// Trend request class, used to manage what was being requested during a trend operation
    /// </summary>
    internal class TrendRequest
    {
        /// <summary>
        /// The end time of the request
        /// </summary>
        public DateTime End { get; set; }

        /// <summary>
        /// The span in minutes that defines the sub porition of time to
        /// return data for
        /// </summary>
        public TimeSpan TrendSpan { get; set; }

        /// <summary>
        /// The time span that defines the complete date range to return data for
        /// </summary>
        public TimeSpan TotalTrendSpan { get; set; }

        /// <summary>
        /// The sensors requested
        /// </summary>
        public int[] Sensors { get; set; }

        /// <summary>
        /// The sensor deviations requested
        /// </summary>
        public int[] SensorDeviationList { get; set; }

        /// <summary>
        /// The cylinders requested
        /// </summary>
        public int[] CylinderList { get; set; }

        /// <summary>
        /// The cylinder deviations 
        /// </summary>
        public int[] CylinderDeviationList { get; set; }

        /// <summary>
        /// The temperature 
        /// </summary>
        public int[] TemperatureList { get; set; }

        /// <summary>
        /// Obtain the SLEM value
        /// </summary>
        public bool SLEM { get; set; }

        /// <summary>
        /// Obtain the WIO Activity
        /// </summary>
        public bool WIOActivity { get; set; }

        /// <summary>
        /// Obtain the WIO PPM
        /// </summary>
        public bool WIOPPM { get; set; }

        /// <summary>
        /// Obtain the WIO Temp
        /// </summary>
        public bool WIOTemp { get; set; }

        /// <summary>
        /// Obtain the CPP mA
        /// </summary>
        public bool CPPMa { get; set; }

        /// <summary>
        /// Obtain the CPP Pcnt
        /// </summary>
        public bool CPPPcnt { get; set; }

        /// <summary>
        /// Obtain the RPM
        /// </summary>
        public bool RPM { get; set; }

        // Forces high res during export operations
        public bool HighRes { get; set; }

        /// <summary>
        /// Returns trend data starting at the latest record written to the database and going backwards by
        /// trendDuration.
        /// </summary>
        public TrendRequest(XTSTrends trends, TimeSpan trendDuration, TimeSpan totalTrendDuration)
            : this(trends, DateTime.MaxValue, trendDuration, totalTrendDuration)
        {}

        /// <summary>
        /// Returns a range of trend data calculated from End Date and Duration.
        /// </summary>
        /// <param name="end">The end time to calculate the range of data returned from.</param>
        /// <param name="trendDuration">The TimeSpan that is used to calculate how many records should be returned.</param>
        public TrendRequest(XTSTrends trends, DateTime end, TimeSpan trendDuration, TimeSpan totalTrendDuration)
            : this(trends.TrendConfiguration, end, trendDuration, totalTrendDuration, false)
        { }

        public TrendRequest(XTSDataCollection<XTSTrend> trendConfiguration, DateTime end, TimeSpan trendDuration, TimeSpan totalTrendDuration, bool highRes = false)
        {
            List<int> sensors = new List<int>();
            List<int> sensorsDev = new List<int>();
            List<int> cylinders = new List<int>();
            List<int> cylindersDev = new List<int>();
            List<int> temperature = new List<int>();

            //Create the list of items to request from the web service from the trends object
            foreach (XTSTrend trend in trendConfiguration)
            {
                switch (trend.Detail.TrendType)
                {
                    case XTSTrendDetail.XTSTrendType.Sensor:
                        {
                            XTSTrendSensor detail = (XTSTrendSensor)trend.Detail;
                            //Calculate backend sensor number from cylinder and sensor
                            int sensorId = (int)(((detail.Cylinder - 1) * 2) + detail.Index - 1);
                            sensors.Add(sensorId);
                        }
                        break;
                    case XTSTrendDetail.XTSTrendType.SensorDeviation:
                        {
                            XTSTrendSensorDeviation detail = (XTSTrendSensorDeviation)trend.Detail;
                            //Calculate backend sensor number from cylinder and sensor
                            int sensorId = (int)(((detail.Cylinder - 1) * 2) + detail.Index - 1);
                            sensorsDev.Add(sensorId);
                        }
                        break;
                    case XTSTrendDetail.XTSTrendType.Cylinder:
                        {
                            XTSTrendCylinder detail = (XTSTrendCylinder)trend.Detail;
                            //Calculate backend cylinder number
                            cylinders.Add((int)detail.Index - 1);
                        }
                        break;
                    case XTSTrendDetail.XTSTrendType.CylinderDeviation:
                        {
                            XTSTrendCylinderDeviation detail = (XTSTrendCylinderDeviation)trend.Detail;
                            //Calculate backend cylinder number
                            cylindersDev.Add((int)detail.Index - 1);
                        }
                        break;
                    case XTSTrendDetail.XTSTrendType.Temperature:
                        {
                            XTSTrendTemperature detail = (XTSTrendTemperature)trend.Detail;
                            temperature.Add((int)detail.Index -1);
                        }
                        break;
                    case XTSTrendDetail.XTSTrendType.RPM:
                        {
                            RPM = true;
                        }
                        break;
                    case XTSTrendDetail.XTSTrendType.SEDMmV:
                        {
                            SLEM = true;
                        }
                        break;
                    case XTSTrendDetail.XTSTrendType.WIO:
                        {
                            WIOActivity = true;
                        }
                        break;
                    case XTSTrendDetail.XTSTrendType.WIOPPM:
                        {
                            WIOPPM = true;
                        }
                        break;
                    case XTSTrendDetail.XTSTrendType.CPPMA:
                        {
                            CPPMa = true;
                        }
                        break;

                    case XTSTrendDetail.XTSTrendType.CPPPCNT:
                        {
                            CPPPcnt = true;
                        }
                        break;

                    default:
                        break;
                }
            }
            End = end;
            TrendSpan = trendDuration;
            TotalTrendSpan = totalTrendDuration;

            if (sensors.Count > 0)
            {
                Sensors = sensors.ToArray();
            }
            else
            {
                Sensors = null;
            }

            if (sensorsDev.Count > 0)
            {
                SensorDeviationList = sensorsDev.ToArray();
            }
            else
            {
                SensorDeviationList = null;
            }

            if (cylinders.Count > 0)
            {
                CylinderList = cylinders.ToArray();
            }
            else
            {
                CylinderList = null;
            }

            if (cylindersDev.Count > 0)
            {
                CylinderDeviationList = cylindersDev.ToArray();
            }
            else
            {
                CylinderDeviationList = null;
            }

            if (temperature.Count > 0)
            {
                TemperatureList = temperature.ToArray();
            }
            else
            {
                TemperatureList = null;
            }

            HighRes = highRes;
        }

        /// <summary>
        /// Makes a request to the server using the configured information
        /// </summary>
        /// <param name="serverRequests">The server request function</param>
        /// <param name="callback">The callback for this function</param>
        /// <returns>The async object</returns>
        public IAsyncResult MakeRequest(ServerRequests serverRequests, JsonWebClient.WebServiceObjectsCallback callback, bool export = false)
        {
            if (this.End == DateTime.MaxValue)
            {
                System.Diagnostics.Debug.WriteLine("Requesting {0} minutes of data that procede the latest record in the database.", this.TrendSpan.TotalMinutes);
            }
            else
            {
                System.Diagnostics.Debug.WriteLine("Requesting data from the database between {0} and {1}.", End.Subtract(this.TrendSpan), End);
            }

            return serverRequests.GetEngineTrendData(callback, this.End, (long)this.TrendSpan.TotalSeconds,
                toCSV(Sensors), toCSV(SensorDeviationList), toCSV(CylinderList), toCSV(CylinderDeviationList), toCSV(TemperatureList),
                SLEM, WIOActivity, WIOPPM, WIOTemp, RPM, CPPMa, CPPPcnt, (long)this.TotalTrendSpan.TotalSeconds, export, HighRes);
        }

        /// <summary>
        /// Convert an int array to comma seperated values
        /// </summary>
        /// <param name="values">The values to convert</param>
        /// <returns>The CSV interpretation of the array</returns>
        private string toCSV(int[] values)
        {
            if (values == null)
                return null;

            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < values.Length; i++)
            {
                if (i == 0)
                    sb.AppendFormat("{0}", values[i]);
                else
                    sb.AppendFormat(",{0}", values[i]);
            }
            return sb.ToString();
        }
    }
}
