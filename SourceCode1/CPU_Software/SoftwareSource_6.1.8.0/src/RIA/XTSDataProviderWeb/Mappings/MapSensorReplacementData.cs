/* 
 * MapSensorReplacementData.cs
 * 
 * This file holds the methods that are used to map the sensor replacement data from the web servce
 * to the correct XTS Data classes.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: GSmith, 03/04/2012
 */

using System;
using System.Globalization;
using System.Collections.Generic;
using WebServiceObjects;

namespace XTS
{
    public class MapSensorReplacementData
    {
        static public void SensorReplacementDataToXTSData(XTSEngine engine, SensorReplacementStatus[] sensorReplacement)
        {
            //%Y-%m-%d %H:%M:%S
            //Year-month-day 24 hour minute second
            string dateFormat = "yyyy-MM-dd H:mm:ss";

            foreach (SensorReplacementStatus status in sensorReplacement)
            {
                int cylinderNumber;
                int sensor;

                //status.Sensor will be a number between 0 and 27
                //This needs to be converted to Cylinder array index and Sensor 1 or 2
                sensor = (status.Sensor % 2) + 1;
                cylinderNumber = (status.Sensor + 2) / 2;
                
                lock (engine.SyncRoot)
                {
                    XTSSensor currentSensor = null;

                    foreach (var xtsCylinder in engine.Cylinders)
                    {
                        if (xtsCylinder.Index == cylinderNumber)
                        {
                            foreach (var xtsSensor in xtsCylinder.Sensors)
                            {
                                if (xtsSensor.Index == sensor)
                                {
                                    currentSensor = xtsSensor;
                                    break;
                                }
                            }
                            break;
                        }
                    }

                    XTSSensor.XTSSensorReplace replaceData = new XTSSensor.XTSSensorReplace();

                    currentSensor.Replace.Stage = (AMOTConstants.SensorReplacementStage)status.Stage;
                    currentSensor.Replace.TimeRemaining = (uint)status.MinutesRemaining;
                    currentSensor.Replace.TotalTime = (uint)status.TotalMinutes;
                    currentSensor.Replace.FailureDate = DateTime.ParseExact(status.FailureDate, dateFormat, CultureInfo.InvariantCulture);
                    
                    if (status.ReplacementDate != string.Empty)
                    {
                        currentSensor.Replace.ReplacementDate = DateTime.ParseExact(status.ReplacementDate, dateFormat, CultureInfo.InvariantCulture);
                    }
                }
            }
        }
    }
}
