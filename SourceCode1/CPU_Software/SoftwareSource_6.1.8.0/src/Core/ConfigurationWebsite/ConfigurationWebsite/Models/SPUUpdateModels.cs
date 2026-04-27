using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SPUFirmwareUpdate;

namespace ConfigurationWebsite.Models
{
    public class SPUUpdateModel
    {
        public String ErrorMessage { get; set; }
        public String VersionInfo { get; set; }
    }

    public class SPUUpdateProgressModel
    {
        public String[] UpdateStages = new String[] { "Reading File: ", 
                                        "Checking Current Version(s): ",
                                        "Erasing SPI Flash: ",
                                        "Writing SPI Flash: ",
                                        "Erasing Slave SPU: ",
                                        "Programming Slave SPU: ",
                                        "Erasing Master SPU: ",
                                        "Programming Master SPU: ",
                                        "Checking New Version(s): "};
        public bool CanReboot { get; set; }

        public bool UpdateStarted { get; set; }

        public bool CanSystemUpdate { get; set; }

        public SPUUpdateProgressModel() 
        {            
            this.CanReboot = false;
        }
    }
}