/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Configuration;

namespace Configuration
{  
    public class SPUDataCollectionConfigElement : ConfigurationElement
    {
        [ConfigurationProperty("RunSchedule", DefaultValue = (int)10000, IsRequired = false, IsKey = false)]
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

        [ConfigurationProperty("LogSchedule", DefaultValue = (int)10000, IsRequired = false, IsKey = false)]
        public int LogSchedule
        {
            get
            {
                return (int)this["LogSchedule"];
            }
            set
            {
                this["LogSchedule"] = value;
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

        [ConfigurationProperty("ModbusPort", DefaultValue = (int)1502, IsRequired = false, IsKey = false)]
        public int ModbusPort
        {
            get
            {
                return (int)this["ModbusPort"];
            }
            set
            {
                this["ModbusPort"] = value;
            }
        }

        [ConfigurationProperty("ModbusAddress", DefaultValue = (string)"127.0.0.1", IsRequired = false, IsKey = false)]
        public string ModbusAddress
        {
            get
            {
                return (string)this["ModbusAddress"];
            }
            set
            {
                this["ModbusAddress"] = value;
            }
        }

        [ConfigurationProperty("ModbusTimeout", DefaultValue = (int)120000, IsRequired = false, IsKey = false)]
        public int ModbusTimeout
        {
            get
            {
                return (int)this["ModbusTimeout"];
            }
            set
            {
                this["ModbusTimeout"] = value;
            }
        }
    }
}
