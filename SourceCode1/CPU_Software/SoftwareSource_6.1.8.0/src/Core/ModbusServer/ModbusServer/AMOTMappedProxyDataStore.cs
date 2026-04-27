using System;
using System.Threading;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ModbusRTUInterface;
using Modbus;
using Modbus.Data;
using Modbus.Message;
using HelperClasses;
using ModbusRegisters;
using System.Runtime.Remoting.Messaging;

namespace ModbusServer
{
    /// <summary>
    /// The AMOT Mapped Proxy Data Store class uses the
    /// Modbus mapper to map external ids and registers to internal ids and registers before requesting them 
    /// from the RTUInterface
    /// </summary>
    class AMOTMappedProxyDataStore : AMOTProxyDataStore, IDisposable
    {
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

#if false
        //Add a timer that is used to update polled or cached registers
        //into the cached modbus map
        System.Timers.Timer cachedUpdateTimer;
#endif

        /// <summary>
        /// Flag indicating if the SPU is connected and communicating correctly.
        /// </summary>
        bool spuConnected;

        /// <summary>
        /// Flag used to indicate if the Datastores internal threads should be running.
        /// </summary>
        bool running;

        /// <summary>
        /// Constructs a mapped proxy data store.  This is a data store that will lookup registers
        /// in the register map before making requests to the RTU.  Depending on the configuraiton of the
        /// map some requests may use the cached map version of the register.
        /// </summary>
        /// <param name="mapper">The mapper that hold the register configuration</param>
        /// <param name="rtuInterface">The RTU interface that is used to comunicate on the RS-485</param>
        public AMOTMappedProxyDataStore(ModbusMapper mapper, RTUInterface rtuInterface) :
            base(mapper, rtuInterface)
        {
            this.running = true;

#if false
            this.cachedUpdateTimer = new System.Timers.Timer();

            //Disable this code for now
            //The timed update of registers causes to much overhead on the SPU
            this.cachedUpdateTimer.Elapsed += new System.Timers.ElapsedEventHandler(UpdateRegisters);
            this.cachedUpdateTimer.Interval = 12500;
            this.cachedUpdateTimer.AutoReset = false;
            this.cachedUpdateTimer.Start();
#endif
            spuConnected = true;
        }

        /// <summary>
        /// Finalizer to make sure that dispose is handled correctly.
        /// </summary>
        ~AMOTMappedProxyDataStore()
        {
            Dispose(false);
        }

#if false

        //Disable this code for now
        //The timed update of registers causes to much overhead on the SPU


        /// <summary>
        /// Method that is called by the timer to check if any registers need updating.
        /// If registers do need updating then they will be updated.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="evnt"></param>
        void UpdateRegisters(object sender, System.Timers.ElapsedEventArgs evnt)
        {
            List<ModbusRegister> registers;
            ushort slaveId = 1;
            ushort startAddress = 0;
            ushort count = 50;
            int totalNumberOfMappedRegisters;
            int totalNumberOfRegisters;
            int actualNumberOfRegisters;
            Stopwatch watch = new Stopwatch();

            this.cachedUpdateTimer.Stop();
            totalNumberOfRegisters = this.modbusMapper.InternalCount(slaveId);
            totalNumberOfMappedRegisters = totalNumberOfRegisters;

            actualNumberOfRegisters = 0;

            watch.Start();

            try
            {
                while (totalNumberOfRegisters > 0 && this.running)
                {
                    //Get a list of all the registers that need updating
                    registers = this.modbusMapper.GetInternalRegisters(slaveId, startAddress, count);
                    registers.Sort(new RegisterInternalAddressComparer());

                    if (registers.Count > 0)
                    {
                        int retryCount = 0;
                        while (retryCount < 3)
                        {
                            //Read the registers
                            //The base method will read the registers and automatically load the result into the map.
                            try
                            {
                                ReadHoldingRegistersInBlocks(registers);
                                spuConnected = true;
                                break;
                            }
                            catch (Exception e)
                            {
                                if (e is TimeoutException || e is InvalidOperationException)
                                {
                                    //Failed to read any registers
                                    logger.ErrorFormat("RTU Interface failed to read {0} registers starting at {1} from Slave {2}", registers.Count, registers[0].InternalAddress, registers[0].InternalId);
                                    retryCount++;
                                    spuConnected = false;
                                }
                                else
                                {
                                    throw;
                                }
                            }
                        }
                    }

                    startAddress += count;
                    actualNumberOfRegisters += registers.Count;
                    totalNumberOfRegisters -= count;
                }
            }
            catch (Exception e)
            {
                if (!(e is TimeoutException))
                {
                    logger.ErrorFormat("Caught exception {0}", e.ToString());
                }               
            }

            watch.Stop();
            logger.InfoFormat("Requested and updated a total of {0} internal registers in {1} ms from a total of {2} mapped registers.", actualNumberOfRegisters, watch.ElapsedMilliseconds, totalNumberOfMappedRegisters);

            if (this.running && this.cachedUpdateTimer != null)
            {
                this.cachedUpdateTimer.Interval = 12500;
                this.cachedUpdateTimer.Start();
            }
        }
#endif

        /// <summary>
        /// Reads the holding registers.
        /// </summary>
        /// <param name="slaveId">The slave id of the device to read registers from</param>
        /// <param name="startAddress">The start register address to read registers from</param>
        /// <param name="count">The number of registers to read</param>
        /// <exception cref="Modbus.SlaveException">Throws a Modbus.SlaveException is the ModbusMapper is not initialised.</exception>
        /// <returns>A RegisterCollection that holds data read from the registers.</returns>
        public override RegisterCollection ReadHoldingRegisters(byte slaveId, ushort startAddress, ushort count)
        {
            RegisterCollection response = new RegisterCollection();

            // Check if we have SPU comms and return if we don't
            if (FaultErrorIndicators.Faults.Instance.IsSignaled(FaultErrorIndicators.FaultCodes.RTUNoRS485Comms))
            {
                throw new Modbus.SlaveException(new Modbus.Message.SlaveExceptionResponse(slaveId, 0, 0x0B));
            }

            try
            {
                List<ModbusRegister> registers;

                if (this.modbusMapper == null)
                {
                    throw new Modbus.SlaveException(new Modbus.Message.SlaveExceptionResponse(slaveId, 0, 0x01));
                }

                registers = this.modbusMapper.GetLiveReadRegisters(slaveId, startAddress, count);

                if (registers.Count > 0)
                {
                    logger.DebugFormat("Reading {0} Live registers starting at {1} from slave {2}", count, startAddress, slaveId);
                    response = ReadHoldingRegistersInBlocks(registers);

                    if (response.Count <= 0)
                    {
                        spuConnected = false;
                    }
                    else
                    {
                        spuConnected = true;
                    }

                }

                if (spuConnected != true)
                {
                    throw new Modbus.SlaveException(new Modbus.Message.SlaveExceptionResponse(slaveId, 0, 0x0B));
                }

                response = this.modbusMapper.CreateExternalResponseFromMap(slaveId, startAddress, count);

                //Read the cached registers
                registers = this.modbusMapper.GetPolledOrCachedReadRegisters(slaveId, startAddress, count);

                if (registers.Count > 0)
                {
                    logger.DebugFormat("Reading {0} Cached registers starting at {1} from slave {2}", count, startAddress, slaveId);
                    AsyncReadHoldingRegisterInBlocks call = new AsyncReadHoldingRegisterInBlocks(ReadHoldingRegistersInBlocks);
                    AsyncCallback completedCallback = new AsyncCallback(ReadHoldingRegisterInBlocksCompletedCallback);
                    call.BeginInvoke(registers, completedCallback, registers);
                }

            }
            catch (Exception e)
            {
                if (!(e is TimeoutException))
                {
                    logger.ErrorFormat("Caught exception: {0}", e.ToString());
                }
                throw;
            }

            return response;
        }

        /// <summary>
        /// This is the delegate that is used to asyncronously read from the
        /// RTUInterface.
        /// </summary>
        private delegate RegisterCollection AsyncReadHoldingRegisterInBlocks(List<ModbusRegister> registers);

        /// <summary>
        /// This callback is called when the ReadHoldingRegisterInBlocksDelegate completes.
        /// </summary>
        /// <param name="ar"></param>
        private void ReadHoldingRegisterInBlocksCompletedCallback(IAsyncResult ar)
        {
            AsyncResult result = (AsyncResult)ar;
            AsyncReadHoldingRegisterInBlocks caller = (AsyncReadHoldingRegisterInBlocks)result.AsyncDelegate;

            try
            {
                caller.EndInvoke(ar);
            }
            catch (TimeoutException)
            {
                logger.Debug("Timed out trying to read registers.  The Modbus map will not be updated.");
            }
            catch (Exception e)
            {
                logger.FatalFormat("Caught unhandled exception {0}. Trying to read registers. The Modbus map will not be updated.", e.Message);
            }
        }


        /// <summary>
        /// Writes to multiple registers
        /// </summary>
        /// <param name="slaveId">The slave id to write to</param>
        /// <param name="values">The values to write</param>
        /// <param name="startAddress">The address to start teh write at.</param>
        /// <exception cref="Modbus.SlaveException">Throws a Modbus.SlaveException is the ModbusMapper is not initialised.</exception>
        public override void WriteMultipleRegisters(byte slaveId, ushort[] values, ushort startAddress)
        {
            if (this.modbusMapper == null)
            {
                throw new Modbus.SlaveException(new Modbus.Message.SlaveExceptionResponse(slaveId, 0, 0x01));
            }

            try
            {
                if (slaveId != 0)
                {
                    //Load the register map with the values to be written
                    this.modbusMapper.SetRegisterValues(slaveId, startAddress, values);
                }

                //Get the internal registers 
                List<ModbusRegister> registers = this.modbusMapper.GetInternalWriteRegisters(slaveId, startAddress, values.Length);
                WriteHoldingRegistersInBlocks(registers);
            }
            catch (Exception e)
            {
                logger.ErrorFormat("Caught Exception: {0}", e.Message);
                throw;
            }
        }

        /// <summary>
        /// This method sorts the list of registers to be read into contiguous blocks to optimize the
        /// reads made on the Modbus.
        /// </summary>
        /// <param name="registers">The registers that are to be read.</param>
        /// <returns>A RegisterCollection that holds data read from the registers.</returns>
        private RegisterCollection ReadHoldingRegistersInBlocks(List<ModbusRegister> registers)
        {
            RegisterCollection result = new Modbus.Data.RegisterCollection();

            logger.DebugFormat("Reading {0} registers", registers.Count);

            if (registers.Count > 0)
            {
                ushort nextExpectedAddress = registers[0].InternalAddress;
                ushort internalStartAddress;
                ushort internalCount = 0;
                byte internalSlaveId;

                internalStartAddress = nextExpectedAddress;
                internalSlaveId = registers[0].InternalId;

                //Split the registers array into contiguous register requests

                for (int i = 0; i < registers.Count; i++)
                {
                    if ((registers[i].InternalAddress == nextExpectedAddress) && (registers[i].InternalId == internalSlaveId))
                    {
                        //Address is contiguous
                        nextExpectedAddress = (ushort)(registers[i].InternalAddress + 1);
                        internalCount++;
                    }
                    else
                    {
                        logger.DebugFormat("Reading registers {1} registers starting at address {0} from Slave {2}", internalStartAddress, internalCount, internalSlaveId);
                        //End of of contiguous block
                        //Read the block from the rtuInterface
                        RegisterCollection fromRtu = base.ReadHoldingRegisters(internalSlaveId, internalStartAddress, internalCount);

                        if (fromRtu != null)
                        {
                            //Add the block returned from the RTU to the results collection
                            foreach (ushort r in fromRtu)
                            {
                                result.Add(r);
                            }
                        }

                        //Build the next set.
                        internalStartAddress = registers[i].InternalAddress;
                        nextExpectedAddress = (ushort)(internalStartAddress + 1);
                        internalSlaveId = registers[i].InternalId;
                        internalCount = 1;
                    }
                }

                logger.DebugFormat("Have read {0} registers out of a total of {1} registers.  Need to read {2} more registers", result.Count, registers.Count, (registers.Count - result.Count));

                //It is possible that the for loop will exit without having requested a contiguous block of registers
                //In this case we need to request that block
                if (result.Count != registers.Count)
                {
                    internalCount = (ushort)(registers.Count - result.Count);
                    logger.DebugFormat("Reading registers {1} registers starting at address {0} from Slave {2}", internalStartAddress, internalCount, internalSlaveId);
                    RegisterCollection fromRtu = base.ReadHoldingRegisters(internalSlaveId, internalStartAddress, internalCount);

                    if (fromRtu != null)
                    {
                        //Add the block returned from the RTU to the results collection
                        foreach (ushort r in fromRtu)
                        {
                            result.Add(r);
                        }
                    }
                }
            }

            logger.DebugFormat("Read a total of {0} registers", result.Count);

            return result;
        }

        /// This method sorts the list of registers to write into contiguous blocks to optimize the
        /// writes made on the Modbus.
        /// </summary>
        /// <param name="registers">The registers that are to be written.</param>
        private void WriteHoldingRegistersInBlocks(List<ModbusRegister> registers)
        {
            if (registers.Count > 0)
            {
                ushort nextExpectedAddress = registers[0].InternalAddress;
                ushort internalStartAddress;
                ushort internalCount = 0;
                byte internalSlaveId;
                List<ushort> valuesToSend = new List<ushort>();

                internalStartAddress = nextExpectedAddress;
                internalSlaveId = registers[0].InternalId;

                //Split the registers array into contiguous register writes

                for (int i = 0; i < registers.Count; i++)
                {
                    if ((registers[i].InternalAddress == nextExpectedAddress) && (registers[i].InternalId == internalSlaveId))
                    {
                        //Address is contiguous
                        nextExpectedAddress = (ushort)(registers[i].InternalAddress + 1);
                        internalCount++;
                        valuesToSend.Add(registers[i].Value);
                    }
                    else
                    {
                        //End of contiguous block
                        //Write the data to the rtuInterface
                        base.WriteMultipleRegisters(internalSlaveId, valuesToSend.ToArray(), internalStartAddress);

                        //Build the next set.
                        nextExpectedAddress = registers[i].InternalAddress;
                        internalStartAddress = nextExpectedAddress;
                        internalSlaveId = registers[i].InternalId;
                        internalCount = 0;
                        valuesToSend.Clear();
                    }
                }

                //It is possible that the for loop will exit without having written a contiguous block of registers
                //Write that block now.
                if (valuesToSend.Count > 0)
                {
                    base.WriteMultipleRegisters(internalSlaveId, valuesToSend.ToArray(), internalStartAddress);
                }
            }
        }


        /// <summary>
        /// Internal dispose method so that dispose is
        /// handled correctly when being finallized.
        /// </summary>
        /// <param name="disposing"></param>
        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                Stop();
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

        //The methods below are not supported by this DataStore
        public override RegisterCollection ReadWriteMultipleRegisters(byte slaveId, ushort readStartAddress, ushort readCount, ushort[] writeData, ushort writeStartAddress)
        {
            throw new SlaveException(new SlaveExceptionResponse(slaveId, (byte)0x1, (byte)0x1));
        }

        public override DiscreteCollection ReadCoils(byte slaveId, ushort startAddress, ushort count)
        {
            throw new SlaveException(new SlaveExceptionResponse(slaveId, (byte)0x1, (byte)0x1));
        }

        public override DiscreteCollection ReadInputs(byte slaveId, ushort startAddress, ushort count)
        {
            throw new SlaveException(new SlaveExceptionResponse(slaveId, (byte)0x2, (byte)0x1));
        }

        public override RegisterCollection ReadInputRegisters(byte slaveId, ushort startAddress, ushort count)
        {
            throw new SlaveException(new SlaveExceptionResponse(slaveId, (byte)0x4, (byte)0x1));
        }

        public override void WriteSingleCoil(byte slaveId, bool value, ushort startAddress)
        {
            throw new SlaveException(new SlaveExceptionResponse(slaveId, (byte)0x5, (byte)0x1));
        }

        public override void WriteMultipleCoils(byte slaveId, bool[] values, ushort startAddress)
        {
            throw new SlaveException(new SlaveExceptionResponse(slaveId, (byte)0xF, (byte)0x1));
        }

        /// <summary>
        /// This function is used to shutdown the internal threads used by
        /// the external data store
        /// </summary>
        internal void Stop()
        {
#if false
            //Disabled for now.
            //See comment for the UpdateRegisters method
            this.cachedUpdateTimer.Stop();
            this.cachedUpdateTimer.Elapsed -= new System.Timers.ElapsedEventHandler(UpdateRegisters);
            this.cachedUpdateTimer.Dispose();
            this.cachedUpdateTimer = null;
#endif

            this.running = false;
        }
    }
}
