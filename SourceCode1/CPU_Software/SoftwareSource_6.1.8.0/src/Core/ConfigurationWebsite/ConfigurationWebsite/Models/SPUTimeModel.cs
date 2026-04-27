using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Mvc;
using System.Web.Security;
using WebServiceObjects;

namespace ConfigurationWebsite.Models
{
    public class SPUTimeModel
    {
        /// <summary>
        /// Year
        /// </summary>
        public int  Year { get; set; }

        /// <summary>
        /// Month
        /// </summary>
        [Required]
        public int Month { get; set; }

        /// <summary>
        /// Day
        /// </summary>
        public int Day { get; set; }

        /// <summary>
        /// Hour
        /// </summary>
        public int Hour { get; set; }

        /// <summary>
        /// Minute
        /// </summary>
        [Required]
        public int Minute { get; set; }

        /// <summary>
        /// Second
        /// </summary>
        public int Second { get; set; }

        public bool CanReboot { get; set; }
        public bool ConfigModified { get; set; }
        public bool CanSave { get; set; }
        public bool CanRestartServer { get; set; }

        public SPUTimeModel() 
        {            
            this.CanSave = false;
            this.CanReboot = false;
            this.ConfigModified = false;
            this.CanRestartServer = false;
        }
    }
}