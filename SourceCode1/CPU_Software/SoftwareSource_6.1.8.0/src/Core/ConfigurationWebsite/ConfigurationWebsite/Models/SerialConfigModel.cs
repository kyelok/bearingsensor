using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Mvc;
using System.Web.Security;
using System.IO.Ports;
using SerialConfig;


namespace ConfigurationWebsite.Models
{
    public class SerialConfigModel
    {
        public SerialConfigData SpuSerial { get; set; }
        public SerialConfigData ExtSerial { get; set; }
        public bool ConfigModified { get; set; }
        public bool CanSave { get; set; }
        public bool CanReboot { get; set; }

        public SerialConfigModel() 
        {
            SpuSerial = new SerialConfigData();
            ExtSerial = new SerialConfigData();

            this.CanSave = false;
            this.CanReboot = false;
        }
    }


    

    

}
