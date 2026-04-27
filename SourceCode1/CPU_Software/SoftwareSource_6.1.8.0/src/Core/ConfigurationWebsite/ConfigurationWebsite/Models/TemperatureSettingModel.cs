using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Mvc;
using System.Web.Security;


namespace ConfigurationWebsite.Models
{
    public class TemperatureSettingModel
    {
        [Range(0, 1, ErrorMessage = "Value must be between 0 and 1")]
        public int enable { get; set; }
        [Range(1, 64, ErrorMessage = "Value must be between 1 and 64")]
        public int sensorNumber { get; set; }
        [Range(0, 64, ErrorMessage = "Value must be between 0 and 64")]
        public int mainsensorNumber { get; set; }
        [Range(0, 64, ErrorMessage = "Value must be between 0 and 64")]
        public int crankPinsensorNumber { get; set; }
        [Range(0, 64, ErrorMessage = "Value must be between 0 and 64")]
        public int crossHeadsensorNumber { get; set; }
        [Range(1, 64, ErrorMessage = "Value must be between 1 and 64")]
        public int RtdPerPlc { get; set; }
        [Range(10, 500, ErrorMessage = "Value must be between 10 and 500")]
        public int tempGraphScale { get; set; }
        [Range(10, 500, ErrorMessage = "Value must be between 10 and 500")]
        public int tempGraphDevScale { get; set; }
        [Range(0, 50, ErrorMessage = "Value must be between 0 and 50")]
        public int risingHysteresis { get; set; }
        [Range(0, 50, ErrorMessage = "Value must be between 0 and 50")]
        public int fallingHysteresis { get; set; }

        public bool ModuleEnabled { get; set; }
        public bool CanSave { get; set; }
        public bool Saved { get; set; }
        public bool Imported { get; set; }
        public string Message { get; set; }
        public string MessageImport { get; set; }

        public TemperatureSettingModel()
        {
            this.ModuleEnabled = false;
            this.CanSave = false;
            this.Saved = false;
            this.Imported = false;
            this.enable = 0;
            this.sensorNumber = 0;
            this.mainsensorNumber = 0;
            this.crankPinsensorNumber = 0;
            this.crossHeadsensorNumber = 0;
            this.RtdPerPlc = 28;
            this.tempGraphScale = 100;
            this.tempGraphDevScale = 100;
            this.risingHysteresis = 5;
            this.fallingHysteresis = 5;

            this.Message = String.Empty;
            this.MessageImport = String.Empty;
        }
    }
}