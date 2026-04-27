using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

namespace Configuration
{
    /// <summary>
    /// This class defines the configruation data used by the
    /// GLMachineMeasurement plugin
    /// </summary>
    public class GLMachineMeasurementConfiguration : ConfigurationSection
    {
        [ConfigurationProperty("settings")]
        public GLMachineMeasurementConfigurationElement Settings
        {
            get
            {
                GLMachineMeasurementConfigurationElement url = (GLMachineMeasurementConfigurationElement)base["settings"];
                return url;
            }
        }
    }

    public class GLMachineMeasurementConfigurationElement : ConfigurationElement
    {
        [ConfigurationProperty("RunSchedule", DefaultValue = (int)21600000, IsRequired = false, IsKey = false)]
        public int RunSchedule
        {
            get
            {
                return (int)this["RunSchedule"];
            }
            set
            {
                this["RunSchedule"] = value;
            }
        }

        [ConfigurationProperty("TempPath", DefaultValue = "d:\temp", IsRequired = false, IsKey = false)]
        public string TempPath
        {
            get
            {
                return (string)this["TempPath"];
            }
            set
            {
                this["TempPath"] = value;
            }
        }        
    }

    public class ReportGlobal
    {
        private static bool databaseRolling;

        public static bool DatabaseRolling
        {
            get
            {

                return databaseRolling;
            }
            set
            {
                databaseRolling = value;
            }
        }
    }
}

