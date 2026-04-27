/* 
 * MapEngineData.cs
 * 
 * This file holds the method that is used to map the engine data from the web servce
 * to the correct XTS Data classes.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: GSmith, 27/03/2012
 */

using System;
using System.Collections.Generic;
using WebServiceObjects;

namespace XTS
{
    /// <summary>
    /// This class maps the temperature Data returned from the Web Service to
    /// the XTSEngineTemperature class
    /// </summary>
    public class MapTemperatureData
    {

        /// <summary>
        /// This function maps the EngineData retrieved from the WebService into the XTSEngine and XTSGeneral
        /// objects.
        /// </summary>
        /// <param name="engine">The XTSEngine object that the data should be mapped into</param>
        /// <param name="general">The XTSGeneral object that the data should be mapped into</param>
        /// <param name="data">The EngineData retrived from the web server</param>
        static public void TemperatureDataToXTSData(XTSEngineTemperature temperaure, TemperatureConfiguration data)
        {

            lock (temperaure.SyncRoot)
            {
                temperaure.TemperatureSensors = data.TemperatureSensors;
                temperaure.TemperatureBarscale = data.TemperatureBarScale;
                temperaure.TemperatureDevBarscale = data.TemperatureDevBarScale;
                temperaure.TemperatureAlarmLevel = data.TemperatureBarScaleAlarm;
                temperaure.TemperatureSlowdownLevel = data.TemperatureBarScaleSlowdown;

                if (data.TemperatureChannelValue.Length > 0)
                {
                    List<XTSBearTemperature> temperaturList = new List<XTSBearTemperature>();
                    for (uint i = 0; i < data.TemperatureSensors; i++)
                    {
                        XTSBearTemperature xtsTemperature = new XTSBearTemperature(i + 1);
                                                
                        xtsTemperature.Enable = data.Enable[i];
                        xtsTemperature.Temperature = data.TemperatureChannelValue[i];
                        xtsTemperature.Channelname = data.TemperatureChannelName[i];
                        xtsTemperature.TemperatureDev = data.TemperatureDevValue[i];
                        xtsTemperature.AlarmLevel = data.TemperatureAlarmLevel[i];
                        xtsTemperature.SlowdownLevel = data.TemperatureSlowdownLevel[i];

                        if (data.TemperatureSlowdownArrary[i])
                        {
                            xtsTemperature.DisplayStatus = XTSSensorStatus.Slowdown;
                        }
                        else if (data.TemperatureAlarmArrary[i])
                        {
                            xtsTemperature.DisplayStatus = XTSSensorStatus.Alarm;
                        }
                        else
                        {
                            xtsTemperature.DisplayStatus = XTSSensorStatus.Normal;
                        }

                        //always display dev to normal
                        xtsTemperature.DisplayDevStatus = XTSSensorStatus.Normal;

                        /*
                        if (engine.Bearingtemperature[i].TemperatureDev > data.TemperatureDevSlowdownLevel)
                        {
                            engine.Bearingtemperature[i].DisplayDevStatus= XTSSensorStatus.Slowdown;
                        }
                        else if (engine.Bearingtemperature[i].TemperatureDev > data.TemperatureDevAlarmLevel)
                        {
                            engine.Bearingtemperature[i].DisplayDevStatus = XTSSensorStatus.Alarm;
                        }
                        else
                        {
                            engine.Bearingtemperature[i].DisplayDevStatus = XTSSensorStatus.Normal;
                        }
                            * */
                        temperaturList.Add(xtsTemperature);
                    }
                    temperaure.Bearingtemperature = new XTSDataCollection<XTSBearTemperature>(temperaturList);
                }
            }
        }
    }
}
