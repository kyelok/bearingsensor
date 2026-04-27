using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ModbusRTUInterface;

namespace ModbusServer
{
    /// <summary>
    /// The Server interface is implemented by the server classes.
    /// </summary>
    interface IServerInterface
    {
        void Start();
        void Stop();
    }
}
