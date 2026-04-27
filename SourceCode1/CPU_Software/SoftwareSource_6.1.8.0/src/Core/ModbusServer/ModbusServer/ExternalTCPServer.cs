using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Sockets;
using System.Threading;
using Modbus.Device;
using Modbus.Data;
using ModbusRTUInterface;
using HelperClasses;

namespace ModbusServer
{
    class ExternalTCPServer : IServerInterface
    {
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        const byte SlaveId = 1;
        const int ModbusPort = 502;

        TcpListener slaveListener;
        AMOTMappedProxyDataStore dataStore;

        public ExternalTCPServer(AMOTMappedProxyDataStore dataStore)
        {
            this.dataStore = dataStore;
        }

        public void Start()
        {
            //Create TCP Listener for local connections
            //Modbus TCP/IP standard port is 502.
            this.slaveListener = new TcpListener(IPAddress.Any, ModbusPort);
            this.slaveListener.Start();

            ModbusSlave slave = ModbusTcpSlave.CreateTcp(SlaveId,slaveListener);
            slave.DataStore = this.dataStore;

            slave.Listen();
            logger.InfoFormat("Started Modbus External Server on Port {0} for all IP Addresses", ModbusPort);
        }

        public void Stop()
        {
            this.slaveListener.Stop();
            logger.InfoFormat("Stopped Modbus External on Port {0} for all IP Addresses", ModbusPort);
        }
    }
}
