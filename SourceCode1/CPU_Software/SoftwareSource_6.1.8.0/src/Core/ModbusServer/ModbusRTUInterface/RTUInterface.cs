using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using Modbus.Device;
using Modbus.Data;
using Modbus;
using System.IO.Ports;
using System.IO;
using Storage;
using HelperClasses;

namespace ModbusRTUInterface
{
    /// <summary>
    /// This class consumes Modbus requests from a stack and sends them to the Modbus devices
    /// on the configured COM port.
    /// </summary>
    public class RTUInterface
    {
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        private readonly object _syncRoot = new object();

        SerialPort port;
        IModbusSerialMaster modbusMaster;
        static CommunicationStatistics comStats;
        bool running;
        int sequentialFailureCount;
        int throttle;

        /// <summary>
        /// Constructs an RTUInterface class
        /// </summary>
        /// <param name="comport">The SerialPort object that has been opened and configured for use with Modbus</param>
        public RTUInterface(SerialPort port)
        {
            this.port = port;
            this.running = true;
            this.sequentialFailureCount = 0;

            if (!this.port.IsOpen)
            {
                logger.Info("Opening RTUInterface Serial Port");
                try
                {
                    this.port.Open();
                }
                catch (InvalidOperationException)
                {
                    logger.Info("Failed to open RTUInterface Serial Port.  Open will be re-attempted on next operation.");
                }
            }

            try
            {
                comStats = new CommunicationStatistics();
            }
            catch (Exception e)
            {
                logger.FatalFormat("Failed open CommunicationStatisitcs datastore. Communication Statisitcs will not be reported. {0}",e.Message);
            }

            // create modbus master
            modbusMaster = ModbusSerialMaster.CreateRtu(port);
            modbusMaster.Transport.Retries = ConfigurationData.Instance.Attempts;
            throttle = ConfigurationData.Instance.Throttle;

        }

        /// <summary>
        /// An object that can be used to synchronize access to the RTUInterface.
        /// </summary>
        public object SyncRoot
        {
            get
            {
                return _syncRoot;
            }
        }

        /// <summary>
        /// Reads the state of the coils of the slave identified by id
        /// </summary>
        /// <param name="id">The id/address of the slave to read from</param>
        /// <param name="startAddress">The address of the coil to start reading from</param>
        /// <param name="count">The number of coils to read</param>
        /// <returns>An array of bools that represents the state of the coils</returns>
        public bool[] ReadCoils(byte id, ushort startAddress, ushort count)
        {
            bool[] result = null;

            try
            {
                Thread.Sleep(this.throttle);
                Thread.Sleep(100);
                result = modbusMaster.ReadCoils(id, startAddress, count);
                comStats.PacketsRead++;
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUNoRS485Comms);
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUSerialPortFailure);
                this.sequentialFailureCount = 0;
            }
            catch (Exception e)
            {
                HandleException(e, false, true, false);
                throw;
            }
            finally
            {
                UpdateErrorCounts(modbusMaster.Transport.RetryCount, modbusMaster.Transport.CrcErrorCount);
            }

            return result;
        }

        /// <summary>
        /// Reads the values from the holding registers of the slave identified by id
        /// </summary>
        /// <param name="id">The id/address of the slave to read from</param>
        /// <param name="startAddress">The address of the register to start reading from</param>
        /// <param name="count">The number of registers to read</param>
        /// <returns>An array of ushorts that contain the values of the registers read</returns>
        public ushort[] ReadHoldingRegisters(byte id, ushort startAddress, ushort count)
        {
            ushort[] result = null;

            try
            {
                Thread.Sleep(30);
                result = modbusMaster.ReadHoldingRegisters(id, startAddress, count);
                comStats.PacketsRead++;
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUNoRS485Comms);
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUSerialPortFailure);
                this.sequentialFailureCount = 0;
            }
            catch (Exception e)
            {
                HandleException(e, false, true, false);
                throw;
            }
            finally
            {
                UpdateErrorCounts(modbusMaster.Transport.RetryCount, modbusMaster.Transport.CrcErrorCount);
            }

            return result;
        }

		/// <summary>
        /// Reads the values from the holding registers of the slave identified by id
        /// </summary>
        /// <param name="id">The id/address of the slave to read from</param>
        /// <param name="startAddress">The address of the register to start reading from</param>
        /// <param name="count">The number of registers to read</param>
        /// <returns>An array of ushorts that contain the values of the registers read</returns>
        public ushort[] ReadHoldingRegistersTemp(byte id, ushort startAddress, ushort count)
        {
            ushort[] result = null;

            try
            {
                Thread.Sleep(50);
                result = modbusMaster.ReadHoldingRegistersTemp(id, startAddress, count);
                comStats.PacketsRead++;
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUNoRS485Comms);
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUSerialPortFailure);
                this.sequentialFailureCount = 0;
            }
            catch (Exception e)
            {
                HandleException(e, false, true, true);
                throw;
            }
            finally
            {
                UpdateErrorCounts(modbusMaster.Transport.RetryCount, modbusMaster.Transport.CrcErrorCount);
            }

            return result;
        }
        /// <summary>
        /// Reads the values from the input registers of the slave identified by id
        /// </summary>
        /// <param name="id">The id/address of the slave to read from</param>
        /// <param name="startAddress">The address of the register to start reading from</param>
        /// <param name="count">The number of registers to read</param>
        /// <returns>An array of ushorts that contain the values of the registers read</returns>
        public ushort[] ReadInputRegisters(byte id, ushort startAddress, ushort count)
        {
            ushort[] result = null;

            try
            {
                Thread.Sleep(100);
                Thread.Sleep(this.throttle);
                result = modbusMaster.ReadInputRegisters(id, startAddress, count);
                comStats.PacketsRead++;
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUNoRS485Comms);
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUSerialPortFailure);
                this.sequentialFailureCount = 0;
            }
            catch (Exception e)
            {
                HandleException(e, false, true, false);
                throw;
            }
            finally
            {
                UpdateErrorCounts(modbusMaster.Transport.RetryCount, modbusMaster.Transport.CrcErrorCount);
            }

            return result;
        }

        /// <summary>
        /// Reads the state of the inputs of the slave identified by id
        /// </summary>
        /// <param name="id">The id/address of the slave to read from</param>
        /// <param name="startAddress">The address of the inputs to start reading from</param>
        /// <param name="count">The number of inputs to read</param>
        /// <returns>An array of bools that represents the state of the inputs</returns>
        public bool[] ReadInputs(byte id, ushort startAddress, ushort count)
        {
            bool[] result = null;

            try
            {
                Thread.Sleep(100);
                Thread.Sleep(this.throttle);
                result = modbusMaster.ReadInputs(id, startAddress, count);
                comStats.PacketsRead++;
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUNoRS485Comms);
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUSerialPortFailure);
                this.sequentialFailureCount = 0;
            }
            catch (Exception e)
            {
                HandleException(e, false, true, false);
                throw;
            }
            finally
            {
                UpdateErrorCounts(modbusMaster.Transport.RetryCount, modbusMaster.Transport.CrcErrorCount);
            }

            return result;
        }

        /// <summary>
        /// Reads and Writes Multiple Registers in one modbus access
        /// </summary>
        /// <param name="id">The id/address of the slave to read/write from</param>
        /// <param name="startReadAddress">The address to start reading from</param>
        /// <param name="readCount">The number of inputs to read</param>
        /// <param name="startWriteAddress">The address to start writing too</param>
        /// <param name="writeData">The data to write</param>
        /// <returns>An array of ushorts that contain the values of the registers read.</returns>
        public ushort[] ReadWriteMultipleRegisters(byte id, ushort startReadAddress, ushort readCount, ushort startWriteAddress, ushort[] writeData)
        {
            ushort[] result = null;

            try
            {
                Thread.Sleep(100);
                Thread.Sleep(this.throttle);
                //Thread.Sleep(this.throttle);
                result = modbusMaster.ReadWriteMultipleRegisters(id, startReadAddress, readCount, startWriteAddress, writeData);
                comStats.PacketsRead++;
                comStats.PacketsWritten++;
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUNoRS485Comms);
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUSerialPortFailure);
                this.sequentialFailureCount = 0;
            }
            catch (Exception e)
            {
                HandleException(e, true, true, false);
                throw;
            }
            finally
            {
                UpdateErrorCounts(modbusMaster.Transport.RetryCount, modbusMaster.Transport.CrcErrorCount);
            }

            return result;
        }

        /// <summary>
        /// Sets the state of multiple coils
        /// </summary>
        /// <param name="id">The id/address of the slave to set the state of the coils</param>
        /// <param name="startAddress">The start address of the coils to set</param>
        /// <param name="data">An array that contains the states to set the coils to</param>
        public void WriteMultipleCoils(byte id, ushort startAddress, bool[] data)
        {
            try
            {
                Thread.Sleep(100);
                Thread.Sleep(this.throttle);
                modbusMaster.WriteMultipleCoils(id, startAddress, data);
                comStats.PacketsWritten++;
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUNoRS485Comms);
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUSerialPortFailure);
                this.sequentialFailureCount = 0;
            }
            catch (Exception e)
            {
                HandleException(e, true, false, false);
                throw;
            }
            finally
            {
                UpdateErrorCounts(modbusMaster.Transport.RetryCount, modbusMaster.Transport.CrcErrorCount);
            }
        }

        /// <summary>
        /// Writes values to multiple registers.
        /// </summary>
        /// <param name="id">The id/address of the slave to write too</param>
        /// <param name="startAddress">The start address to start the write at</param>
        /// <param name="data">An array that contains the register values to write</param>
        public void WriteMultipleRegisters(byte id, ushort startAddress, ushort[] data)
        {
            try
            {
                Thread.Sleep(100);
                Thread.Sleep(this.throttle);
                modbusMaster.WriteMultipleRegisters(id, startAddress, data);
                comStats.PacketsWritten++;
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUNoRS485Comms);
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUSerialPortFailure);
                this.sequentialFailureCount = 0;
            }
            catch (Exception e)
            {
                HandleException(e, true, false, false);
                logger.ErrorFormat("Failed to write {2} number of registers to slave id {0} starting at register {1}", id, startAddress,data.Length);

                string values = string.Empty;
                for(int i=0;i<data.Length;i++)
                {
                    values = values + " " + data[i];
                }

                logger.ErrorFormat("Data {0}",values);
                throw;
            }
            finally
            {
                UpdateErrorCounts(modbusMaster.Transport.RetryCount, modbusMaster.Transport.CrcErrorCount);
            }
        }

        /// <summary>
        /// Sets the state of a single coil
        /// </summary>
        /// <param name="id">The id/address of the slave to set the coil for</param>
        /// <param name="coilAddress">The address of the coil to set</param>
        /// <param name="value">The state to set teh coil at</param>
        public void WriteSingleCoil(byte id, ushort coilAddress, bool value)
        {
            try
            {
                Thread.Sleep(100);
                Thread.Sleep(this.throttle);
                modbusMaster.WriteSingleCoil(id, coilAddress, value);
                comStats.PacketsWritten++;
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUNoRS485Comms);
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUSerialPortFailure);
                this.sequentialFailureCount = 0;
            }
            catch (Exception e)
            {
                HandleException(e, true, false, false);
                throw;
            }
            finally
            {
                UpdateErrorCounts(modbusMaster.Transport.RetryCount, modbusMaster.Transport.CrcErrorCount);
            }
        }

        /// <summary>
        /// Writes a value to a single register
        /// </summary>
        /// <param name="id">The id/address of the slave to send the write to</param>
        /// <param name="registerAddress">The address of the register to write</param>
        /// <param name="value">The value to write to the register</param>
        public void WriteSingleRegister(byte id, ushort registerAddress, ushort value)
        {
            try
            {
                Thread.Sleep(100);
                Thread.Sleep(this.throttle);
                modbusMaster.WriteSingleRegister(id, registerAddress, value);
                comStats.PacketsWritten++;
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUNoRS485Comms);
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUSerialPortFailure);
                this.sequentialFailureCount = 0;
            }
            catch (Exception e)
            {
                HandleException(e, true, false, false);
                throw;
            }
            finally
            {
                UpdateErrorCounts(modbusMaster.Transport.RetryCount, modbusMaster.Transport.CrcErrorCount);
            }
        }

        /// <summary>
        /// Sends a diagnostics request to a modbus slave
        /// <param name="slaveId">The slave id to sent the request too.</param>
        /// <param name="subfunctionCode">The dianostics sub function code to use.</param>
        /// <param name="data">The data to send.</param>
        /// <returns>An array of ushorts returned by the slave in repsonse to the diagnostics request.</returns>
        /// </summary>
        public RegisterCollection WriteDiagnostics(byte slaveId, ushort subfunctionCode, ushort[] data)
        {
            RegisterCollection result = new RegisterCollection();

            try
            {
                result = modbusMaster.DiagnosticRequest(slaveId, subfunctionCode, data);
                comStats.PacketsWritten++;
                comStats.PacketsRead++;
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUNoRS485Comms);
                FaultErrorIndicators.Faults.Instance.ClearFault(FaultErrorIndicators.FaultCodes.RTUSerialPortFailure);
                this.sequentialFailureCount = 0;
            }
            catch (Exception e)
            {
                HandleException(e, true, false, false);
                throw;
            }
            finally
            {
                UpdateErrorCounts(modbusMaster.Transport.RetryCount, modbusMaster.Transport.CrcErrorCount);
            }

            return result;

        }

        private void UpdateErrorCounts(int retryCount, int crcErrorCount)
        {
            comStats.Retries += retryCount;
            comStats.CrcErrors += crcErrorCount;
        }

        private void HandleException(Exception e, bool writeOperation, bool readOperation, bool Temp)
        {
            if (e is TimeoutException)
            {
                if (writeOperation)
                {                    
                    comStats.FailedWrites++;
                    if (!Temp)
                    {
                        logger.ErrorFormat("Timeout writing to SPU. Successful: {0}, Failed: {1}, CRC: {2}", comStats.PacketsWritten, comStats.FailedWrites, comStats.CrcErrors);
                    }
                    else
                    {
                        logger.ErrorFormat("Timeout writing to TMP. Successful: {0}, Failed: {1}, CRC: {2}", comStats.PacketsWritten, comStats.FailedWrites, comStats.CrcErrors);
                    }
                }

                if (readOperation)
                {
                    comStats.FailedReads++;
                    if (!Temp)
                    {
                        logger.ErrorFormat("Timeout reading from SPU. Successful: {0}, Failed: {1}, CRC: {2}", comStats.PacketsRead, comStats.FailedReads, comStats.CrcErrors);
                    }
                    else
                    {
                        logger.ErrorFormat("Timeout reading from TMP. Successful: {0}, Failed: {1}, CRC: {2}", comStats.PacketsRead, comStats.FailedReads, comStats.CrcErrors);
                    }
                }

                this.sequentialFailureCount++;

                if (this.sequentialFailureCount >= 3)
                {
                    if (!Temp)
                    {
                        FaultErrorIndicators.Faults.Instance.SignalFault(FaultErrorIndicators.FaultCodes.RTUNoRS485Comms);
                    }
                }
            }
            else if (e is InvalidOperationException)
            {
                //This will be thrown if there is a problem with the comport
                //we want to catch it and handle it at this level. We will report this as
                //a timeout to the high levels

                if (this.running)
                {
                    if (!Temp)
                    {

                        logger.Fatal("The SPU RTUInterface serial port has failed.  Will attempt to re-open on next operation.");
                    }
                    else
                    {
                        logger.Fatal("The TMP RTUInterface serial port has failed.  Will attempt to re-open on next operation.");
                    }
                    //First attempt to re open this port
                    try
                    {
                        this.port.Open();
                    }
                    catch (Exception ex)
                    {
                        //Eat the exception.
                        if (!Temp)
                        {

                            logger.FatalFormat("Trying to reopen SPU Serial Port. Caught Exception {0}", ex.ToString());
                        }
                        else
                        {
                            logger.FatalFormat("Trying to reopen TMP Serial Port. Caught Exception {0}", ex.ToString());
                        }

                        if (!Temp)
                        {
                            FaultErrorIndicators.Faults.Instance.SignalFault(FaultErrorIndicators.FaultCodes.RTUSerialPortFailure);
                        }
                    }
                }
                else
                {
                    if (!Temp)
                    {

                        logger.Info("The SPU RTUInterface has been shutdown.  The serial port will not be re-opened.");
                    }
                    else
                    {
                        logger.Info("The TMP RTUInterface has been shutdown.  The serial port will not be re-opened.");
                    }                    
                }

                throw new TimeoutException();
            }
        }

        /// <summary>
        /// Shutdowns the RTU interface
        /// and detches it from the serial port
        /// </summary>
        public void Stop()
        {
            this.running = false;
        }
    }
}
