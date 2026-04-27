/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
namespace Configuration
{
    using System;
    using System.Configuration;

    public class SensorReplacementPluginConfigElement : ConfigurationElement
    {
        [ConfigurationProperty("RunSchedule", DefaultValue = (int)/*900000*/5000, IsRequired = false, IsKey = false)]
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

        [ConfigurationProperty("DbDeletePeriod", DefaultValue = (int)15724800, IsRequired = false, IsKey = false)]
        public int DbDeletePeriod
        {
            get
            {
                return (int)this["DbDeletePeriod"];
            }
            set
            {
                this["DbDeletePeriod"] = value;
            }
        }

        [ConfigurationProperty("NumberOfRecords50Hours", DefaultValue = (int)18000, IsRequired = false, IsKey = false)]
        public int NumberOfRecords50Hours
        {
            get
            {
                return (int)this["NumberOfRecords50Hours"];
            }
            set
            {
                this["NumberOfRecords50Hours"] = value;
            }
        }

        [ConfigurationProperty("NumberOfRecords500Hours", DefaultValue = (int)180000, IsRequired = false, IsKey = false)]
        public int NumberOfRecords500Hours
        {
            get
            {
                return (int)this["NumberOfRecords500Hours"];
            }
            set
            {
                this["NumberOfRecords500Hours"] = value;
            }
        }

        [ConfigurationProperty("ExportFolder", DefaultValue = "d:\\exports\\", IsRequired = false, IsKey = false)]
        public string ExportFolder
        {
            get
            {
                return (string)this["ExportFolder"];
            }
            set
            {
                this["ExportFolder"] = value;
            }
        }
    }
}
