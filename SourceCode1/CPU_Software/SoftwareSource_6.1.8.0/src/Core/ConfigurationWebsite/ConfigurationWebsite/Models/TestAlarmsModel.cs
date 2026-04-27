using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DataCollectionSDK;

namespace ConfigurationWebsite.Models
{
    public class TestAlarmsModel
    {
        public DigitalOutputState[] Status { get; set; }
        public string ModbusStatus { get; set; }
        public bool TestModeEnabled { get; set; }

        public bool CanEnableTest { get; set; }
        public bool CanDisableTest { get; set; }
        public bool CanToggle { get; set; }
        public bool SPUNoAction { get; set; }
        public bool TestModeExit { get; set; }

        public TestAlarmsModel()
        {
            this.CanEnableTest = false;
            this.CanDisableTest = false;
            this.CanToggle = false;
            this.SPUNoAction = false;
            this.TestModeExit = false;
        }
    }
}