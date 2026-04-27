using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Modbus.Device;
using System.IO.Ports;
using System.Threading;

namespace ModbusServer
{
    class ExternalRTUServer : IServerInterface
    {
        SerialPort port;
        bool contineToRun;
        ModbusSlave slave;

        Thread internalThread;

        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        /// <summary>
        /// Constructs a ExternalRTUServer
        /// </summary>
        /// <param name="port">The serial port the server should use</param>
        /// <param name="dataStore">The data store the server should use</param>
        public ExternalRTUServer(SerialPort port, AMOTMappedProxyDataStore dataStore)
        {
            this.port = port;
            //The slave id is ignored by our modifed version of the Modbus serial slave
            this.slave = ModbusSerialSlave.CreateRtu(0, port);
            slave.DataStore = dataStore;
        }

        /// <summary>
        /// Internal method that is used to starts the server listening for requests
        /// </summary>
        private void Listen()
        {
            slave.Listen();
        }

        /// <summary>
        /// Starts the server listening for requests
        /// </summary>
        public void Start()
        {
            contineToRun = true;
            internalThread = new Thread(Run);
            internalThread.Start(this);
        }

        /// <summary>
        /// Stops the server listening for requests
        /// </summary>
        public void Stop()
        {
            contineToRun = false;
            this.port.Close();
        }

        /// <summary>
        /// Method called in a seperate thread to contain the execution of the server
        /// </summary>
        /// <param name="data"></param>
        static public void Run(object data)
        {
            ExternalRTUServer rtuServer = (ExternalRTUServer)data;

            logger.Info("Started listening for requests");
            while (rtuServer.contineToRun)
            {
                try
                {
                    rtuServer.Listen();
                }
                catch (Exception e)
                {
                    logger.ErrorFormat("Caught Exception {0}", e);
                }
            }

            logger.Info("Stopped listening for requests");
        }
    }
}
