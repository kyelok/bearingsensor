using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

namespace Configuration
{

    public class EngineLearnConfiguration : ConfigurationSection
    {
        [ConfigurationProperty("settings")]
        public ManTablesConfigurationElement Settings
        {
            get
            {
                ManTablesConfigurationElement url = (ManTablesConfigurationElement)base["settings"];
                return url;
            }
        }
    }

    public class ManTablesConfigurationElement : ConfigurationElement
    {
        [ConfigurationProperty("RunSchedule", DefaultValue = (int)5000, IsRequired = false, IsKey = false)]
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
        [ConfigurationProperty("SpeedCompDirectory", DefaultValue = (string)@"d:\exports\", IsRequired = false, IsKey = false)]
        public string SpeedCompDirectory
        {
            get
            {
                if (((string)this["SpeedCompDirectory"]).EndsWith(@"\"))
                {
                    return (string)this["SpeedCompDirectory"];
                }
                else
                {
                    return ((string)this["SpeedCompDirectory"]) + @"\";
                }
            }
            set
            {
                this["SpeedCompDirectory"] = value;
            }
        }
    }
}