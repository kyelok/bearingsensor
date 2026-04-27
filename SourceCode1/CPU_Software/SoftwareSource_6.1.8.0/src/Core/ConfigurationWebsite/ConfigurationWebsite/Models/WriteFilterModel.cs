using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConfigurationWebsite.Models
{
    public class WriteFilterModel
    {
        public bool DiskProtectionStatusCurrent { get; set; }
        public bool DiskProtectionStatusNext { get; set; }
        public string Status { get; set; }

        public bool CanEnableWriteFilter { get; set; }
        public bool CanDisableWriteFilter { get; set; }

        public bool CanEnableDisableDiskProtection { get; set; }

        public bool CanReboot { get; set; }

        public WriteFilterModel()
        {
            this.CanEnableWriteFilter = false;
            this.CanDisableWriteFilter = false;
            this.CanEnableDisableDiskProtection = false;
            this.CanReboot = false;
        }
    }
}