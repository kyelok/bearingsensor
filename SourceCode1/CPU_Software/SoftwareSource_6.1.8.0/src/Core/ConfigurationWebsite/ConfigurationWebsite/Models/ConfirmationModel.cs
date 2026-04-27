using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConfigurationWebsite.Models
{
    public class ConfirmationModel
    {
        public string Message { get; set; }
        public ConfirmationItem ConfirmationItem { get; set; }
    }

    public enum ConfirmationItem 
    {
        Reboot,
        DisableWriteFilter,
        UnprotectDrive
    }
}