using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Common;
using IpConfig;


namespace IpConfig
{
    public class IpData
    {
        public bool UsesDHCP { get; set; }
        
        public string[] IpAddress { get; set; }

        public string[] NetMask { get; set; }

        public string[] Dns { get; set; }

        public string[] GateWay { get; set; }
    }
}
