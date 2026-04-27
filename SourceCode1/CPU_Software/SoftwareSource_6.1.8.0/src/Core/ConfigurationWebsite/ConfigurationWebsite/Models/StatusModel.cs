using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ConfigurationWebsite.Models
{
    /// <summary>
    /// Model suitable for when only a string indicating a status need be passed to a view
    /// </summary>
    public class StatusModel 
    {
        public StatusModel(string message)
        {
            this.Message = message;
        }
        public string Message { get; set; }
    }
}
