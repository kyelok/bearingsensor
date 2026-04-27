using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConfigurationDB
{
    /// <summary>
    /// Structure to hold configuration parameters
    /// </summary>
    class Parameters
    {
        public int ID { get; set; }
        public int Min_Limit { get; set; }
        public string Description { get; set; }
        public int Value { get; set; }
        public DateTime WEBupdate { get; set; }
        public DateTime SPUupdate { get; set; }
    }
}
