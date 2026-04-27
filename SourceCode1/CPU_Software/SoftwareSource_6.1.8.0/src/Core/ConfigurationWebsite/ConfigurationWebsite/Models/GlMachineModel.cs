using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Mvc;
using System.Web.Security;

namespace ConfigurationWebsite.Models
{
    public class GlMachineModel
    {
        public string IpAddress { get; set; }
        public string LoginName { get; set; }
        public string Password { get; set; }
        public string Status { get; set; }

        public bool CanSave { get; set; }

        public string SessionID { get; set; }

        public GlMachineModel()
        {
            this.CanSave = false;
        }
    }

    //[RegularExpression(@"\b(?:\d{1,3}\.){3}\d{1,3}\b", ErrorMessage = "Please enter a valid IP Address")]
}