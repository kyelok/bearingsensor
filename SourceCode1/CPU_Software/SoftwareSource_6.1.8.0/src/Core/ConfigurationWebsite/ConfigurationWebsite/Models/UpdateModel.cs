using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConfigurationWebsite.Models
{
    public class UpdateModel
    {
        public List<String> FileList { get; set; }

        public bool CanClearUpdatePackages { get; set; }
        public bool CanRestart { get; set; }
        public bool CanSystemUpdateComplete { get; set; }
        public bool CanSPUFirmwareUpdate { get; set; }
        public bool CanSystemUpdate { get; set; }

        public UpdateModel()
        {
            this.CanClearUpdatePackages = false;
            this.CanRestart = false;
            this.CanSystemUpdateComplete = false;
            this.CanSPUFirmwareUpdate = false;
            this.CanSystemUpdate = false;
        }
    }
}