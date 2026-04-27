using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

namespace Configuration
{
    public class AlarmMonitoringConfigurationSection : ConfigurationSection
    {
        [ConfigurationProperty("settings")]
        public AlarmMonitoringConfigurationElement Settings
        {
            get
            {
                AlarmMonitoringConfigurationElement url = (AlarmMonitoringConfigurationElement)base["settings"];
                return url;
            }
        }
    }

    public class AlarmMonitoringConfigurationElement : ConfigurationElement
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", MessageId = "TCPIP"), ConfigurationProperty("ModbusTCPIPTimeout", DefaultValue = (int)5000, IsRequired = false, IsKey = false)]
        public int ModbusTCPIPTimeout
        {
            get
            {
                return (int)this["ModbusTCPIPTimeout"];
            }
            set
            {
                this["ModbusTCPIPTimeout"] = value;
            }
        }

        [ConfigurationProperty("ModbusSlaveUnitId", DefaultValue = (byte)1, IsRequired = false, IsKey = false)]
        public byte ModbusSlaveUnitId
        {
            get
            {
                return (byte)this["ModbusSlaveUnitId"];
            }
            set
            {
                this["ModbusSlaveUnitId"] = value;
            }
        }

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

        [ConfigurationProperty("DbRetryDuration", DefaultValue = (int)250, IsRequired = false, IsKey = false)]
        public int DbRetryDuration
        {
            get
            {
                return (int)this["DbRetryDuration"];
            }
            set
            {
                this["DbRetryDuration"] = value;
            }
        }

        [ConfigurationProperty("DbRetryCount", DefaultValue = (int)3, IsRequired = false, IsKey = false)]
        public int DbRetryCount
        {
            get
            {
                return (int)this["DbRetryCount"];
            }
            set
            {
                this["DbRetryCount"] = value;
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
    }
}
