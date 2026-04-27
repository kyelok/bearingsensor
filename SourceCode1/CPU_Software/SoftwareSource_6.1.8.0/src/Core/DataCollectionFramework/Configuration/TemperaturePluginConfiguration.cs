using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

namespace Configuration
{
    /// <summary>
    /// This class defines the configruation data used by the
    /// Temperature plugin
    /// </summary>
    public class TemperaturePluginConfigSection : ConfigurationSection
    {
        [ConfigurationProperty("settings")]
        public TemperaturePluginConfigurationElement Settings
        {
            get
            {
                TemperaturePluginConfigurationElement url = (TemperaturePluginConfigurationElement)base["settings"];
                return url;
            }
        }
    }

    public class TemperaturePluginConfigurationElement : ConfigurationElement
    {
        [ConfigurationProperty("NumberOfSensors", DefaultValue = (short)0, IsRequired = false, IsKey = false)]
        public short NumberOfSensors
        {
            get
            {
                return (short)this["NumberOfSensors"];
            }
            set
            {
                this["NumberOfSensors"] = value;
            }
        }
    
        [ConfigurationProperty("RtdNumberPerModule", DefaultValue = (short)4, IsRequired = false, IsKey = false)]
        public short RtdNumberPerModule
        {
            get
            {
                return (short)this["RtdNumberPerModule"];
            }
            set
            {
                this["RtdNumberPerModule"] = value;
            }
        }

        [ConfigurationProperty("BarScaleTemperature", DefaultValue = (int)500, IsRequired = false, IsKey = false)]
        public int BarScaleTemperature
        {
            get
            {
                return (int)this["BarScaleTemperature"];
            }
            set
            {
                this["BarScaleTemperature"] = value;
            }
        }

        [ConfigurationProperty("BarScaleTemperatureDev", DefaultValue = (int)500, IsRequired = false, IsKey = false)]
        public int BarScaleTemperatureDev
        {
            get
            {
                return (int)this["BarScaleTemperatureDev"];
            }
            set
            {
                this["BarScaleTemperatureDev"] = value;
            }
        }

        [ConfigurationProperty("TemperatureAlarm", DefaultValue = (int)100, IsRequired = false, IsKey = false)]
        public int TemperatureAlarm
        {
            get
            {
                return (int)this["TemperatureAlarm"];
            }
            set
            {
                this["TemperatureAlarm"] = value;
            }
        }

        [ConfigurationProperty("TemperatureSlowdown", DefaultValue = (int)200, IsRequired = false, IsKey = false)]
        public int TemperatureSlowdown
        {
            get
            {
                return (int)this["TemperatureSlowdown"];
            }
            set
            {
                this["TemperatureSlowdown"] = value;
            }
        }

        [ConfigurationProperty("TemperatureDevAlarm", DefaultValue = (int)100, IsRequired = false, IsKey = false)]
        public int TemperatureDevAlarm
        {
            get
            {
                return (int)this["TemperatureDevAlarm"];
            }
            set
            {
                this["TemperatureDevAlarm"] = value;
            }
        }

        [ConfigurationProperty("TemperatureDevSlowdown", DefaultValue = (int)200, IsRequired = false, IsKey = false)]
        public int TemperatureDevSlowdown
        {
            get
            {
                return (int)this["TemperatureDevSlowdown"];
            }
            set
            {
                this["TemperatureDevSlowdown"] = value;
            }
        }
    }

    public class TemperatureGloabal
    {
        private static short[] temperature;
        
        public static short[] Temperature
        {
            get
            {

                return temperature;
            }
            set
            {
                temperature = value;
            }
        }

        private static ushort[] alarmList;

        public static ushort[] AlarmList
        {
            get
            {

                return alarmList;
            }
            set
            {
                alarmList = value;
            }
        }

        private static ushort[] slowdownList;

        public static ushort[] SlowdownList
        {
            get
            {

                return slowdownList;
            }
            set
            {
                slowdownList = value;
            }
        }

        private static ushort[] connectionStatusList;

        public static ushort[] ConnectionStatusList
        {
            get
            {

                return connectionStatusList;
            }
            set
            {
                connectionStatusList = value;
            }
        }

        private static ushort[] shortStatusList;

        public static ushort[] ShortStatusList
        {
            get
            {

                return shortStatusList;
            }
            set
            {
                shortStatusList = value;
            }
        }

        private static ushort[] openStatusList;

        public static ushort[] OpenStatusList
        {
            get
            {

                return openStatusList;
            }
            set
            {
                openStatusList = value;
            }
        }

        private static ushort[] losePowerList;

        public static ushort[] LosePowerList
        {
            get
            {

                return losePowerList;
            }
            set
            {
                losePowerList = value;
            }
        }

        private static bool[] alarmListLiveEngine;

        public static bool[] AlarmListLiveEngine
        {
            get
            {

                return alarmListLiveEngine;
            }
            set
            {
                alarmListLiveEngine = value;
            }
        }

        private static bool[] slowdownListLiveEngine;

        public static bool[] SlowdownListLiveEngine
        {
            get
            {

                return slowdownListLiveEngine;
            }
            set
            {
                slowdownListLiveEngine = value;
            }
        }

        private static bool lostCommunicationPlc;

        public static bool LostCommunicationPlc
        {
            get
            {

                return lostCommunicationPlc;
            }
            set
            {
                lostCommunicationPlc = value;
            }
        }

        private static bool lostCommunicationSpu;

        public static bool LostCommunicationSpu
        {
            get
            {

                return lostCommunicationSpu;
            }
            set
            {
                lostCommunicationSpu = value;
            }
        }

        private static string[] channelName;

        public static string[] ChannelName
        {
            get
            {

                return channelName;
            }
            set
            {
                channelName = value;
            }
        }

        private static bool[] rtdGood;

        public static bool[] RtdGood
        {
            get
            {

                return rtdGood;
            }
            set
            {
                rtdGood = value;
            }
        }

        private static short sensorNumber;
        
        public static short SensorNumber
        {
            get
            {

                return sensorNumber;
            }
            set
            {
                sensorNumber = value;
            }
        }

        private static short mainbearingNumber;

        public static short MainbearingNumber
        {
            get
            {

                return mainbearingNumber;
            }
            set
            {
                mainbearingNumber = value;
            }
        }

        private static short crankpinbearingNumber;

        public static short CrankpinbearingNumber
        {
            get
            {

                return crankpinbearingNumber;
            }
            set
            {
                crankpinbearingNumber = value;
            }
        }

        private static short crossheadbearingNumber;

        public static short CrossheadbearingNumber
        {
            get
            {

                return crossheadbearingNumber;
            }
            set
            {
                crossheadbearingNumber = value;
            }
        }

        private static ushort plcVersionNumber;

        public static ushort PlcVersionNumber
        {
            get
            {

                return plcVersionNumber;
            }
            set
            {
                plcVersionNumber = value;
            }
        }

        private static short rtdPerPlc;

        public static short RtdPerPlc
        {
            get
            {

                return rtdPerPlc;
            }
            set
            {
                rtdPerPlc = value;
            }
        }

        private static short graphScale;

        public static short GraphScale
        {
            get
            {

                return graphScale;
            }
            set
            {
                graphScale = value;
            }
        }

        private static short devgraphScale;

        public static short DevGraphScale
        {
            get
            {

                return devgraphScale;
            }
            set
            {
                devgraphScale = value;
            }
        }

        private static short rising;

        public static short Rising
        {
            get
            {

                return rising;
            }
            set
            {
                rising = value;
            }
        }

        private static short falling;

        public static short Falling
        {
            get
            {

                return falling;
            }
            set
            {
                falling = value;
            }
        }

        private static ushort[] alarmTrigger;

        public static ushort[] AlarmTrigger
        {
            get
            {

                return alarmTrigger;
            }
            set
            {
                alarmTrigger = value;
            }
        }

        private static ushort[] slowdownTrigger;

        public static ushort[] SlowdownTrigger
        {
            get
            {

                return slowdownTrigger;
            }
            set
            {
                slowdownTrigger = value;
            }
        }
    }
}

