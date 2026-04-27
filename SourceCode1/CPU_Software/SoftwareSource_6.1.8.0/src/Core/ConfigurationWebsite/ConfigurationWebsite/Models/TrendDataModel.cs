using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConfigurationWebsite.Models
{
    public class TrendDataModel
    {
        public string Status { get; set; }
        public bool IsEnabled { get; set; }

        public bool CanSave { get; set; }

        public TrendDataModel()
        {
            this.CanSave = false;
        }
    }
}