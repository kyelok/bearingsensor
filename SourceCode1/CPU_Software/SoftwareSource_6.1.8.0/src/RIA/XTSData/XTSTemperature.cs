/* 
 * XTSTemperature.cs
 * 
 * Temperature data class
 * 
 * Copyright (C) Amot 2013. All rights reserved.
 * 
 * Originator: FrankF, 26/06/2013
 */

using System;
using AMOTConstants;


namespace XTS
{  
    /// <summary>
    ///  The complete tempearture that stores temperaure data and lists the components.
    /// </summary>
    public class XTSEngineTemperature : XTSData
    {
        /// <summary>
        /// Internal data for Temperature sensor number
        /// </summary>
        private int temperatureSensors;
        /// <summary>
        /// how many tempearture sensors actually installed
        /// </summary>
        public int TemperatureSensors
        {
            get
            {
                return this.temperatureSensors;
            }
            set
            {
                this.temperatureSensors = value;
            }
        }

        /// <summary>
        /// Internal data for Temperature bar scale
        /// </summary>
        private int temperatureBarscale;

        public int TemperatureBarscale
        {
            get
            {
                return this.temperatureBarscale;
            }
            set
            {
                this.temperatureBarscale = value;
            }
        }

        /// <summary>
        /// Internal data for Temperature dev bar scale
        /// </summary>
        private int temperatureDevBarscale;

        public int TemperatureDevBarscale
        {
            get
            {
                return this.temperatureDevBarscale;
            }
            set
            {
                this.temperatureDevBarscale = value;
            }
        }

        /// <summary>
        /// Internal data for Temperature alarm level
        /// </summary>
        private int temperatureAlarmLevel;

        public int TemperatureAlarmLevel
        {
            get
            {
                return this.temperatureAlarmLevel;
            }
            set
            {
                this.temperatureAlarmLevel = value;
            }
        }

        /// <summary>
        /// Internal data for Temperature slowdown level
        /// </summary>
        private int temperatureSlowdownLevel;

        public int TemperatureSlowdownLevel
        {
            get
            {
                return this.temperatureSlowdownLevel;
            }
            set
            {
                this.temperatureSlowdownLevel = value;
            }
        }

        /// <summary>
        /// Internal collection of beraing temperature in this engine.
        /// </summary>
        private XTSDataCollection<XTSBearTemperature> beraingtemperature;
        /// <summary>
        /// The collection of temprature that are in this engine.
        /// </summary>
        public XTSDataCollection<XTSBearTemperature> Bearingtemperature
        {
            get
            {
                return this.beraingtemperature;
            }
            set
            {
                this.beraingtemperature = value;
                OnPropertyChanged("Beraingtemperature");
            }
        }
    }
}
