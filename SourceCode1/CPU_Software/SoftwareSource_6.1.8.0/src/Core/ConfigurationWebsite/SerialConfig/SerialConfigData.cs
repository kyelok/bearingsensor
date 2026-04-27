using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Security;
using System.IO.Ports;
using SerialConfig;

namespace SerialConfig
{
    public class SerialConfigData
    {
        public string PortName { get; set; }
        public int BaudRate { get; set; }
        [Required(ErrorMessage = "*")]
        public Parity Parity { get; set; }
        [Required(ErrorMessage = "*")]
        public StopBits StopBits { get; set; }
        [Required(ErrorMessage = "*")]
        public int DataBits { get; set; }
    }
}
