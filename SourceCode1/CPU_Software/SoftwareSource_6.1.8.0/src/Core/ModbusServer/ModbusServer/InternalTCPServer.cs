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

    /// <summary>
    /// The Internal TCP Server class provides an interface
    /// to Modbus data for the Web Server and SPU Data collection module
    /// </summary>

    class InternalTCPServer : IServerInterface
    {

        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        const byte SlaveId = 1;
        const int ModbusPort = 1502;

        TcpListener slaveListener;
        ModbusSlave slave;
        IPAddress address;
        AMOTProxyDataStore dataStore;

        public InternalTCPServer(AMOTProxyDataStore dataStore)
        {
            this.dataStore = dataStore;   
        }

        public void Start()
        {
            //Create TCP Listener for local connections
            //Modbus TCP/IP standard port is 502.  But this port
            //will be used for the external Modbus server so use 1502 for internal connections
            address = new IPAddress(new byte[] {127,0,0,1});
            
            slaveListener = new TcpListener(address,ModbusPort);

            try
            {
                slaveListener.Start();
            }
            catch (SocketException se)
            {
                logger.FatalFormat("TcpListener throw SocketException with error code {0}.", se.ErrorCode);
                throw;
            }

            slave = ModbusTcpSlave.CreateTcp(SlaveId,slaveListener);
            slave.DataStore = this.dataStore;
            slave.Listen();
            logger.InfoFormat("Started Modbus slave for {0} on Port {1}", address, ModbusPort);

        }

        public void Stop()
        {
            this.slaveListener.Stop();
            logger.InfoFormat("Stopped Modbus slave for {0} on Port {1}", address, ModbusPort);
        }
    }
}
