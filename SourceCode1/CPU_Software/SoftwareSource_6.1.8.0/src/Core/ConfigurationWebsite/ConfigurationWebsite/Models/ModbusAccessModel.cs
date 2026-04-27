using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace ConfigurationWebsite.Models
{
    public class ModbusAccessModel
    {
        
        [Range(0, UInt16.MaxValue, ErrorMessage = "Must be between 0 and 65535")]
        public UInt16 StartReg { get; set; }

        [Range(1, 125, ErrorMessage = "Must be between 1 and 125")]
        public UInt16 NoOfRegistersToRead { get; set; }
        
        public UInt16[] Values { get; set; }

        [Required(ErrorMessage = "Must be between 0 and 65535")]
        [Range(0, UInt16.MaxValue, ErrorMessage = "Must be between 0 and 65535")]
        public UInt16 WriteValue { get; set; }

        [Required(ErrorMessage = "Must be between 0 and 65535")]
        [Range(0, UInt16.MaxValue, ErrorMessage = "Must be between 0 and 65535")]
        public UInt16 WriteReg { get; set; }

        public string Error { get; set; }

        public bool CanRead { get; set; }
        public bool CanWrite { get; set; }

        public ModbusAccessModel()
        {
            this.NoOfRegistersToRead = 1;
            this.CanRead = false;
            this.CanWrite = false;
        }
    }
}