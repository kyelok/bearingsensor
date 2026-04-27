/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: Christopher Peerman, 12/04/2012
 */

using System;
using System.Collections.Generic;
using System.Net;
using System.Threading;
using WebServiceObjects;

namespace XTS
{
    public partial class XTSDataProviderWeb
    {
        /// <summary>
        /// Internal representation of Temperature
        /// </summary>
        private XTSEngineTemperature temperatureData;
        /// <summary>
        /// Reflects the architecture of the temperature.
        /// </summary>
        public XTSEngineTemperature TemperatureData
        {
            get
            {
                return this.temperatureData;
            }
        }

        /// <summary>
        /// Stores the current temperature config.
        /// </summary>
        /// <param name="slot">The slot to store the current trend in.</param>
        /// <param name="description">The description to set of the saved config.</param>
        public void SaveCurrentTemperature(XTSBearTemperature[] temperatureArray)
        {
            
            int id = 0;
            int[] ids = new int[temperatureArray.Length];
            bool[] enable = new bool[temperatureArray.Length];
            string[] name = new string[temperatureArray.Length];
            Int16[] alarmLevel = new Int16[temperatureArray.Length];
            Int16[] slowdownLevel = new Int16[temperatureArray.Length];
            foreach (XTSBearTemperature oneTemp in temperatureArray)
            {
                ids[id]= id;
                enable[id] = oneTemp.Enable;
                name[id] = oneTemp.Channelname;
                alarmLevel[id] = (Int16)oneTemp.AlarmLevel;
                slowdownLevel[id] = (Int16)oneTemp.SlowdownLevel;
                id++;
            }
            TemperatureConfiguration configuration = new TemperatureConfiguration(ids, enable, name, alarmLevel, slowdownLevel);
            configuration.TemperatureSensors = temperatureArray.Length;
            
            this.serverRequests.SaveTemperatureSetting(ProcessSaveTrendConfiguration, configuration, this.auth);
        }       
    }
}
