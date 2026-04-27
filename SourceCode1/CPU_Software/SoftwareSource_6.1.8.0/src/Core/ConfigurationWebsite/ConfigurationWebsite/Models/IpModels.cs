using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;
using System.Data.Common;
using ConfigurationWebsite.Models;
using DataCollectionSDK;
using Modbus;
using IpConfig;

namespace ConfigurationWebsite.Models
{
    public class IpDataModel
    {
        //IpData elements
        public string NetworkInterface { get; set; }
        public bool UsesDHCP { get; set; }

        [Required(ErrorMessage = "An IP Address is required")]
        [RegularExpression(@"\b(?:\d{1,3}\.){3}\d{1,3}\b", ErrorMessage = "Please enter a valid IP Address")]
        public string IpAddress { get; set; }
        
        [Required(ErrorMessage = "A Netmask is required")]
        [RegularExpression(@"\b(?:\d{1,3}\.){3}\d{1,3}\b", ErrorMessage = "Please enter a valid Subnet Mask")]
        public string NetMask { get; set; }
        
        [Required(ErrorMessage = "A DNS Address is required")]
        [RegularExpression(@"\b(?:\d{1,3}\.){3}\d{1,3}\b", ErrorMessage = "Please enter a valid DNS Address")]
        public string Dns0 { get; set; }
        
        [RegularExpression(@"\b(?:\d{1,3}\.){3}\d{1,3}\b", ErrorMessage = "Please enter a valid DNS Address")]
        public string Dns1 { get; set; }
        
        public string GateWay { get; set; }

        public string ipTypeRadio { get; set; }

        public bool CanSave { get; set; }

        public IpDataModel()
        {
            this.CanSave = false;
        }
    }
}