using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConfigurationWebsite.Models
{
    public class SensorsModel
    {
        public SensorsModel()
        {
            this.Status = null;
        }

        public List<Sensor> Sensors { get; set; }
        public bool ModbusWorks { get; set; }
        public string ExceptionDetails { get; set; }

        public bool CanSave { get; set; }
        public string Status { get; set; }
    }

    public class Sensor
    {
        public int SensorId { get; set; }
        public bool Enabled { get; set; }
        public bool AlarmMasked { get; set; }
    }
}