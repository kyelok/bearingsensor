using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Mvc;
using System.Web.Security;


namespace ConfigurationWebsite.Models
{
    public class GraphScaleModel
    {
        [Range(500, 3000, ErrorMessage="Value must be between 500 and 3000")]
        public int SensorWear { get; set; }
        [Range(500, 3000, ErrorMessage = "Value must be between 500 and 3000")]
        public int SensorDeviation { get; set; }

        public bool CanSave { get; set; }

        public GraphScaleModel()
        {
            this.CanSave = false;
            this.SensorDeviation = 1000;
            this.SensorWear = 1000;
        }
    }
}