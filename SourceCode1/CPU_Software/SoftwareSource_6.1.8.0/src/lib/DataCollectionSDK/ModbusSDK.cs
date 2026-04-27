using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Sockets;
using FaultErrorIndicators;
using Modbus.Device;
using HelperClasses;
using System.Net;

namespace DataCollectionSDK
{
    /// <summary>
    /// This class contains the modbus access functions that
    /// otehr modules can use to access the Modbus
    /// </summary>
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", MessageId = "SDK")]
    public class ModbusSDK : System.IDisposable
    {
        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        /// <summary>
        /// Modbus TCP/IP connection
        /// </summary>
        TcpClient client;

        /// <summary>
        /// Modbus master object
        /// </summary>
        private ModbusIpMaster master;
        
        string ipAddress;
        int port;
        int timeout;

        /// <summary>
        /// Enum that defines if a port is internal or external
        /// </summary>
        public enum ModbusPort { Internal, External, InternalTemp }

        public readonly Object syncRoot = new Object();

        /// <summary>
        /// Constructs a ModbusSDK object for use with the External port
        /// </summary>
        public ModbusSDK()
            : this(ModbusPort.External)
        {
        }

        /// <summary>
        /// Constructs a ModbusSDK object
        /// </summary>
        /// <param name="port">The port to use.</param>
        /// <param name="useWebConfig">Should the objecr use the web or appliaction configuration.</param>
        public ModbusSDK(ModbusPort port, bool useWebConfig = false)
        {
            ModuleConfiguration configuration;

            if (useWebConfig)
            {
                configuration = ModuleConfiguration.GetWebConfiguration();
            }
            else
            {
                configuration = ModuleConfiguration.GetApplicationConfiguration();
            }

            DataCollectionConfigurationSection dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;

            if (dataCollectionConfig == null)
                dataCollectionConfig = new DataCollectionConfigurationSection(); // Defaults

            this.ipAddress = dataCollectionConfig.Mobus.ModbusHostIP;
            switch (port)
            {
                case ModbusPort.Internal: this.port = dataCollectionConfig.Mobus.ModbusInternalHostPort; break;
                case ModbusPort.External: this.port = dataCollectionConfig.Mobus.ModbusExternalHostPort; break;
                case ModbusPort.InternalTemp: this.port = dataCollectionConfig.Mobus.ModbusExternalHostPort; break;
            }

            this.timeout = dataCollectionConfig.Mobus.ModbusTCPIPTimeout;
        }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1704:IdentifiersShouldBeSpelledCorrectly", MessageId = "ip")]
        public ModbusSDK(string ipAddress, int port, int timeout)
        {
            this.ipAddress = ipAddress;
            this.port = port;
            this.timeout = timeout;
        }

        /// <summary>
        /// Finalizer to make sure that dispose is handled correctly.
        /// </summary>
        ~ModbusSDK()
        {
            Dispose(false);        
        }

        /// <summary>
        /// Closes the connection to the modbus server.
        /// </summary>
        public void Close()
        {
            if (client != null)
            {
                this.client.Close();
                this.client = null;
            }
            this.master = null;
        }

        /// <summary>
        /// Test whether the Modbus TCP/IP is connected
        /// </summary>
        public bool IsModbusConnected()
        {
            if (client != null && client.Connected)
            {
                return true;
            }
            return false;
        }

        /// <summary>
        /// Attempts to connect to modbus
        /// </summary>
        /// <returns>TRUE - Success, FALSE - Failure</returns>
        private bool ModbusConnect()
        {
            if (IsModbusConnected())
            {
                return true;
            }

            try
            {
                this.master = null;
                if (client != null)
                {
                    client.Close();
                }
                client = new TcpClient(this.ipAddress, this.port);
            }
            catch (SocketException e)
            {
                logger.ErrorFormat("ModbusConnect: TCP exception during initialisation: {0}", e.Message);

                Faults.Instance.SignalFault(FaultCodes.ModbusConnectionFailure);
                return false;
            }

            this.master = ModbusIpMaster.CreateIp(client);
            this.master.Transport.ReadTimeout = this.timeout;
            this.master.Transport.WriteTimeout = this.timeout;
            logger.Info("ModbusConnect: Link established.");

            Faults.Instance.ClearFault(FaultCodes.ModbusConnectionFailure);

            return true;
        }

        /// <summary>
        /// Sets and Gets the Modbus Read and Write timeouts
        /// </summary>
        public int Timeout
        {
            get
            {
                return this.timeout;
            }

            set
            {
                this.timeout = value;

                //Check if the master has been created.
                //If it has change it's timeouts.
                if (this.master != null)
                {
                    this.master.Transport.ReadTimeout = value;
                    this.master.Transport.WriteTimeout = value;
                }
            }
        }

        /// <summary>
        /// Connects to the Modbus and reads a number of registers from the Modbus
        /// </summary>
        /// <param name="slaveAddress">The Modbus slave address to read from.</param>
        /// <param name="registerAddress">The register address to read</param>
        /// <param name="numberOfPoints">The number of points to read.</param>
        /// <returns>The points read from the Modbus.</returns>
        public ushort[] ReadHoldingRegisters(byte slaveAddress, ushort registerAddress, ushort numberOfPoints)
        {
            ushort[] result = null;
            if (ModbusConnect())
            {
                try
                {
                    result = this.master.ReadHoldingRegisters(slaveAddress, registerAddress, numberOfPoints);
                    Faults.Instance.ClearFault(FaultCodes.ModbusReadFailure);
                }
                catch (Exception)
                {
                    throw;
                }
            }
            else
            {
                throw new Modbus.SlaveException("Unable to connect to Modbus server");
            }

            return result;
        }

		/// <summary>
        /// Connects to the Modbus and reads a number of registers from the Modbus
        /// </summary>
        /// <param name="slaveAddress">The Modbus slave address to read from.</param>
        /// <param name="registerAddress">The register address to read</param>
        /// <param name="numberOfPoints">The number of points to read.</param>
        /// <returns>The points read from the Modbus.</returns>
        /// 
        
        public ushort[] ReadHoldingRegistersTemp(byte slaveAddress, ushort registerAddress, ushort numberOfPoints)
        {
            ushort[] result = null;
            if (ModbusConnect())
            {
                try
                {
                    result = this.master.ReadHoldingRegistersTemp(slaveAddress, registerAddress, numberOfPoints);
                    Faults.Instance.ClearFault(FaultCodes.ModbusReadFailure);
                }
                catch (Exception)
                {
                    throw;
                }
            }
            else
            {
                throw new Modbus.SlaveException("Unable to connect to Modbus server");
            }

            return result;
        }        
        
        /// <summary>
        /// Connects to the Modbus and writes to a single holding register.
        /// </summary>
        /// <param name="slaveAddress">The Modbus slave address to write to.</param>
        /// <param name="registerAddress">The register address to write to.</param>
        /// <param name="value">The value to write.</param>
        public void WriteSingleRegister(byte slaveAddress, ushort registerAddress, ushort value)
        {
            if (ModbusConnect())
            {
                try
                {
                    this.master.WriteSingleRegister(slaveAddress, registerAddress, value);
                    Faults.Instance.ClearFault(FaultCodes.ModbusWriteFailure);
                }
                catch (Exception)
                {
                    Faults.Instance.SignalFault(FaultCodes.ModbusWriteFailure);
                    throw;
                }
            }
            else
            {
                throw new Modbus.SlaveException("Unable to connect to Modbus server");
            }
        }

        /// <summary>
        /// Connects to the Modbus and writes to a range of holding registers.
        /// </summary>
        /// <param name="slaveAddress">The Modbus slave address to write to.</param>
        /// <param name="registerAddress">The base register address to start the write at.</param>
        /// <param name="value">The values to write.</param>
        public void WriteMultipleRegisters(byte slaveAddress, ushort registerAddress, ushort[] values)
        {
            if (ModbusConnect())
            {
                try
                {
                    this.master.WriteMultipleRegisters(slaveAddress, registerAddress, values);
                    Faults.Instance.ClearFault(FaultCodes.ModbusWriteFailure);
                }
                catch (Exception)
                {
                    Faults.Instance.SignalFault(FaultCodes.ModbusWriteFailure);
                    throw;
                }
            }
            else
            {
                throw new Modbus.SlaveException("Unable to connect to Modbus server");
            }
        }

        /// <summary>
        /// Intenral dispose method so that dispose is
        /// handled correctly when being finallized.
        /// </summary>
        /// <param name="disposing"></param>
        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                Close();
            }
        }

        /// <summary>
        /// Dispose method to call when finished using the class
        /// </summary>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
            
        }

        /// <summary>
        /// Converts a buffer that holds two modbus registers to a UInt32
        /// </summary>
        /// <param name="buffer">The buffer to convert</param>
        /// <returns>The UInt32 converted from the buffer</returns>
        static public UInt32 ModbusToUInt32(UInt16[] buffer)
        {
            return ModbusToUInt32(buffer, 0);
        }

        /// <summary>
        /// Converts a buffer that holds two modsbus registers to a UInt32
        /// </summary>
        /// <param name="buffer">The buffer that holds the Modbus registers</param>
        /// <returns>A UInt32 converted from the buffer</returns>
        static public UInt32 ModbusToUInt32(UInt16 []buffer, int offset)
        {
            if (buffer.Length+offset < 2)
            {
                throw new ArgumentException("buffer");
            }

            //pcHigh and pcLow are the values returned by our read to the Modbus device
            UInt16 pcHigh = (UInt16)IPAddress.HostToNetworkOrder((short)buffer[offset]);
            UInt16 pcLow = (UInt16)IPAddress.HostToNetworkOrder((short)buffer[offset + 1]);

            //Convert to byte array
            byte[] deviceHighbytes = BitConverter.GetBytes((short)pcHigh);
            byte[] deviceLowbytes = BitConverter.GetBytes((short)pcLow);
            byte[] combinedBytes = new byte[] { deviceHighbytes[0], deviceHighbytes[1], deviceLowbytes[0], deviceLowbytes[1] };

            //Convert the 4 byte array to a int32
            Int32 deviceInt32 = BitConverter.ToInt32(combinedBytes, 0);
            return ((UInt32)IPAddress.NetworkToHostOrder(deviceInt32));
        }

        /// <summary>
        /// Converts a buffer that holds two modbus registers to a Int32
        /// </summary>
        /// <param name="buffer">The buffer to convert</param>
        /// <returns>The Int32 converted from teh buffer</returns>
        static public Int32 ModbusToInt32(UInt16[] buffer)
        {
            return ModbusToInt32(buffer, 0);
        }

        /// <summary>
        /// Converts a buffer that holds two modbus registers to a Int32
        /// </summary>
        /// <param name="buffer">The buffer to convert</param>
        /// <param name="offset">The offset into the array to start the conversion at</param>
        /// <returns>A Int32 converted from the buffer</returns>
        static public Int32 ModbusToInt32(UInt16[] buffer, int offset, bool reverse = false)
        {
            if (buffer.Length+offset < 2)
            {
                throw new ArgumentException("buffer");
            }

            Int16 pcHigh = (Int16)IPAddress.HostToNetworkOrder((short)buffer[offset]);
            Int16 pcLow = (Int16)IPAddress.HostToNetworkOrder((short)buffer[offset + 1]);

            // We are reversing the two 16 bit words to 
            // create a 32 bit word from a grouping that is on the wrong endian
            if (reverse)
            {
                pcLow = (Int16)IPAddress.HostToNetworkOrder((short)buffer[offset]);
                pcHigh = (Int16)IPAddress.HostToNetworkOrder((short)buffer[offset + 1]);
            }

            //Convert to byte array
            byte[] deviceHighbytes = BitConverter.GetBytes((short)pcHigh);
            byte[] deviceLowbytes = BitConverter.GetBytes((short)pcLow);
            byte[] combinedBytes = new byte[] { deviceHighbytes[0], deviceHighbytes[1], deviceLowbytes[0], deviceLowbytes[1] };

            //Convert the 4 byte array to a int32
            Int32 deviceInt32 = BitConverter.ToInt32(combinedBytes, 0);
            return ((Int32)IPAddress.NetworkToHostOrder(deviceInt32));
        }

        /// <summary>
        /// Converts an Int32 to a pair of UInt16s ready to be written to Modbus
        /// </summary>
        /// <param name="value">The Int32 value</param>
        /// <returns>An array of UInt16 representing the 32-bit int</returns>
        static public UInt16[] Int32ToModbus(Int32 value)
        {
            UInt16[] result = new UInt16[2];
            
            //Get bytes
            byte[] int32Bytes = BitConverter.GetBytes(value);

            //Combine first and second pairs of bytes
            result[1] = BitConverter.ToUInt16(int32Bytes, 0);
            result[0] = BitConverter.ToUInt16(int32Bytes, 2);

            return result;
        }

        /// <summary>
        /// Converts a UInt32 to a pair of UInt16s ready to be written to Modbus
        /// </summary>
        /// <param name="value">The UInt32 value</param>
        /// <returns>An array of UInt16 representing the 32-bit uint</returns>
        static public UInt16[] Uint32ToModbus(UInt32 value)
        {
            UInt16[] result = new UInt16[2];

            //Get bytes
            byte[] uint32Bytes = BitConverter.GetBytes(value);

            //Combine first and second pairs of bytes
            result[1] = BitConverter.ToUInt16(uint32Bytes, 0);
            result[0] = BitConverter.ToUInt16(uint32Bytes, 2);

            return result;
        }


    }
}
