/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Configuration;

namespace WebService
{

    public class WebServiceConfiguration : ConfigurationSection
    {
        [ConfigurationProperty("settings")]
        public DataRetrieverConfigurationElement Settings
        {
            get
            {
                DataRetrieverConfigurationElement url = (DataRetrieverConfigurationElement)base["settings"];
                return url;
            }
        }
    }

    public class DataRetrieverConfigurationElement : ConfigurationElement
    {
        [ConfigurationProperty("SensorStatusBaseReg", DefaultValue = (ushort)0, IsRequired = false, IsKey = false)]
        public UInt16 SensorStatusBaseReg
        {
            get
            {
                return (UInt16)this["SensorStatusBaseReg"];
            }
            set
            {
                this["SensorStatusBaseReg"] = value;
            }
        }

        [ConfigurationProperty("SensorStatusCount", DefaultValue = (ushort)0, IsRequired = false, IsKey = false)]
        public UInt16 SensorStatusCount
        {
            get
            {
                return (UInt16)this["SensorStatusCount"];
            }
            set
            {
                this["SensorStatusCount"] = value;
            }
        }

        [ConfigurationProperty("SensorDevStatusBaseReg", DefaultValue = (ushort)0, IsRequired = false, IsKey = false)]
        public UInt16 SensorDevStatusBaseReg
        {
            get
            {
                return (UInt16)this["SensorDevStatusBaseReg"];
            }
            set
            {
                this["SensorDevStatusBaseReg"] = value;
            }
        }

        [ConfigurationProperty("SensorDevStatusCount", DefaultValue = (ushort)0, IsRequired = false, IsKey = false)]
        public UInt16 SensorDevStatusCount
        {
            get
            {
                return (UInt16)this["SensorDevStatusCount"];
            }
            set
            {
                this["SensorDevStatusCount"] = value;
            }
        }

        [ConfigurationProperty("CylinderStatusBaseReg", DefaultValue = (ushort)0, IsRequired = false, IsKey = false)]
        public UInt16 CylinderStatusBaseReg
        {
            get
            {
                return (UInt16)this["CylinderStatusBaseReg"];
            }
            set
            {
                this["CylinderStatusBaseReg"] = value;
            }
        }

        [ConfigurationProperty("CylinderStatusCount", DefaultValue = (ushort)0, IsRequired = false, IsKey = false)]
        public UInt16 CylinderStatusCount
        {
            get
            {
                return (UInt16)this["CylinderStatusCount"];
            }
            set
            {
                this["CylinderStatusCount"] = value;
            }
        }

        [ConfigurationProperty("CylinderDevStatusBaseReg", DefaultValue = (ushort)0, IsRequired = false, IsKey = false)]
        public UInt16 CylinderDevStatusBaseReg
        {
            get
            {
                return (UInt16)this["CylinderDevStatusBaseReg"];
            }
            set
            {
                this["CylinderDevStatusBaseReg"] = value;
            }
        }

        [ConfigurationProperty("CylinderDevStatusCount", DefaultValue = (ushort)0, IsRequired = false, IsKey = false)]
        public UInt16 CylinderDevStatusCount
        {
            get
            {
                return (UInt16)this["CylinderDevStatusCount"];
            }
            set
            {
                this["CylinderDevStatusCount"] = value;
            }
        }

        [ConfigurationProperty("SLEMStatusBaseReg", DefaultValue = (ushort)0, IsRequired = false, IsKey = false)]
        public UInt16 SLEMStatusBaseReg
        {
            get
            {
                return (UInt16)this["SLEMStatusBaseReg"];
            }
            set
            {
                this["SLEMStatusBaseReg"] = value;
            }
        }

        [ConfigurationProperty("SLEMStatusCount", DefaultValue = (ushort)0, IsRequired = false, IsKey = false)]
        public UInt16 SLEMStatusCount
        {
            get
            {
                return (UInt16)this["SLEMStatusCount"];
            }
            set
            {
                this["SLEMStatusCount"] = value;
            }
        }

        [ConfigurationProperty("WIOActivityStatusBaseReg", DefaultValue = (ushort)0, IsRequired = false, IsKey = false)]
        public UInt16 WIOActivityStatusBaseReg
        {
            get
            {
                return (UInt16)this["WIOActivityStatusBaseReg"];
            }
            set
            {
                this["WIOActivityStatusBaseReg"] = value;
            }
        }

        [ConfigurationProperty("WIOActivityStatusCount", DefaultValue = (ushort)0, IsRequired = false, IsKey = false)]
        public UInt16 WIOActivityStatusCount
        {
            get
            {
                return (UInt16)this["WIOActivityStatusCount"];
            }
            set
            {
                this["WIOActivityStatusCount"] = value;
            }
        }


        [ConfigurationProperty("AlarmShutdownLevelsBaseReg", DefaultValue = (ushort)2079, IsRequired = false, IsKey = false)]
        public UInt16 AlarmShutdownLevelsBaseReg
        {
            get
            {
                return (UInt16)this["AlarmShutdownLevelsBaseReg"];
            }
            set
            {
                this["AlarmShutdownLevelsBaseReg"] = value;
            }
        }

        [ConfigurationProperty("AlarmShutdownLevelsCount", DefaultValue = (ushort)5, IsRequired = false, IsKey = false)]
        public UInt16 AlarmShutdownLevelsCount
        {
            get
            {
                return (UInt16)this["AlarmShutdownLevelsCount"];
            }
            set
            {
                this["AlarmShutdownLevelsCount"] = value;
            }
        }
    }            
}
