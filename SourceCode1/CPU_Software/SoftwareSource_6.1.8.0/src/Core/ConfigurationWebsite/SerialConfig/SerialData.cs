using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SerialConfig
{
    public class SerialData
    {
        public string PortName { get; set; }
        public string BaudRate { get; set; }
        public Parity Parity { get; set; }
        public int StopBits { get; set; }
        public int DataBits { get; set; }
    }

    public enum Parity
    {
        Odd, Even, Mark, Space, None
    }
}
