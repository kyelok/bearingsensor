using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Modbus.Data;
using Modbus.Message;
using ModbusRTUInterface;
using HelperClasses;

namespace ModbusServer
{
    /// <summary>
    /// The AMOT Data store proxy classes proxies
    /// data store read and write requests to the RTUInterface.
    /// </summary>
    class AMOTProxyDataStore : DataStore
    {

        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        RTUInterface rtuInterface;
        RTUInterface rtuTempInterface;
        protected ModbusMapper modbusMapper;

        public AMOTProxyDataStore(ModbusMapper map, RTUInterface rtuInterface)
        {
            this.rtuInterface = rtuInterface;            
            this.modbusMapper = map;
        }

        public AMOTProxyDataStore(ModbusMapper map, RTUInterface rtuInterface, RTUInterface rtuTempInterface)
        {
            this.rtuInterface = rtuInterface;
            this.rtuTempInterface = rtuTempInterface;
            this.modbusMapper = map;
        }

        public override DiscreteCollection ReadCoils(byte slaveId, ushort startAddress, ushort count)
        {
            DiscreteCollection discreteValues = null;
            bool[] values;

            try
            {
                using (TimedLock.Lock(rtuInterface.SyncRoot))
                {
                    values = rtuInterface.ReadCoils(slaveId, startAddress, count);

                    if (values != null)
                    {
                        discreteValues = new DiscreteCollection(values);
                    }
                }
            }
            catch (LockTimeoutException)
            {
                logger.Warn("Timed-out trying to lock RtuInterface for access.");
            }

            return discreteValues;
        }

        public override RegisterCollection ReadInputRegisters(byte slaveId, ushort startAddress, ushort count)
        {
            RegisterCollection registerValues = null;
            ushort[] values;

            try
            {
                using (TimedLock.Lock(rtuInterface.SyncRoot))
                {
                    values = rtuInterface.ReadInputRegisters(slaveId, startAddress, count);

                    if (values != null)
                    {
                        registerValues = new RegisterCollection(values);
                    }
                }
            }
            catch (LockTimeoutException)
            {
                logger.Warn("Timed-out trying to lock RtuInterface for access.");
            }

            return registerValues;
        }
        
        public override DiscreteCollection ReadInputs(byte slaveId, ushort startAddress, ushort count)
        {
            DiscreteCollection discreteValues = null;
            bool[] values;

            try
            {
                using (TimedLock.Lock(rtuInterface.SyncRoot))
                {
                    values = rtuInterface.ReadInputs(slaveId, startAddress, count);

                    if (values != null)
                    {
                        discreteValues = new DiscreteCollection(values);
                    }
                }
            }
            catch (LockTimeoutException)
            {
                logger.Warn("Timed-out trying to lock RtuInterface for access.");
            }

            return discreteValues;
        }

        public override RegisterCollection ReadHoldingRegisters(byte slaveId, ushort startAddress, ushort count)
        {
            RegisterCollection registerValues = null;
            ushort[] values;

            try
            {
                using (TimedLock.Lock(rtuInterface.SyncRoot, TimeSpan.FromSeconds(30)))
                {
                    values = rtuInterface.ReadHoldingRegisters(slaveId, startAddress, count);

                    if (values != null)
                    {
                        logger.DebugFormat("Read {0} values from the RTUInterface", values.Length);
                        registerValues = new RegisterCollection(values);
                        if (this.modbusMapper != null)
                        {
                            //Load the values into the mapped view
                            modbusMapper.UpdateMapFromInternalResponse(registerValues, slaveId, startAddress);
                        }
                    }
                    else
                    {
                        logger.DebugFormat("Read 0 values from the RTUInterface");
                    }
                }
            }
            catch (LockTimeoutException)
            {
                logger.Warn("Timed-out trying to lock RtuInterface for access.");
            }

            return registerValues;
        }

        public override RegisterCollection ReadHoldingRegistersTemp(byte slaveId, ushort startAddress, ushort count)
        {
            RegisterCollection registerValues = null;
            ushort[] values;

            try
       {
                using (TimedLock.Lock(rtuTempInterface.SyncRoot, TimeSpan.FromSeconds(50)))
                {
                    values = rtuTempInterface.ReadHoldingRegistersTemp(slaveId, startAddress, count);

                    if (values != null)
                    {
                        logger.DebugFormat("Read {0} values from the RTUInterface", values.Length);
                        registerValues = new RegisterCollection(values);
                        if (this.modbusMapper != null)
                        {
                            //Load the values into the mapped view
                            //modbusMapper.UpdateMapFromInternalResponse(registerValues, slaveId, startAddress);
                        }
                    }
                    else
                    {
                        logger.DebugFormat("Read 0 values from the RTUInterface");
                    }
                }
            }
            catch (LockTimeoutException)
            {
                logger.Warn("Timed-out trying to lock RtuInterface for access.");
            }

            return registerValues;
        }

        public override void WriteMultipleCoils(byte slaveId, bool[] values, ushort startAddress)
        {
            try
            {
                using (TimedLock.Lock(rtuInterface.SyncRoot))
                {
                    rtuInterface.WriteMultipleCoils(slaveId, startAddress, values);
                }
            }
            catch (LockTimeoutException)
            {
                logger.Warn("Timed-out trying to lock RtuInterface for access.");
            }
        }

        public override void WriteMultipleRegisters(byte slaveId, ushort[] values, ushort startAddress)
        {
            try
            {
                using (TimedLock.Lock(rtuInterface.SyncRoot))
                {
                    rtuInterface.WriteMultipleRegisters(slaveId, startAddress, values);
                }
            }
            catch (LockTimeoutException)
            {
                logger.Warn("Timed-out trying to lock RtuInterface for access.");
            }
        }

        public override RegisterCollection ReadWriteMultipleRegisters(byte slaveId, ushort readStartAddress, ushort readCount, ushort[] writeData, ushort writeStartAddress)
        {
            RegisterCollection registerValues = null;
            ushort[] values;

            try
            {
                using (TimedLock.Lock(rtuInterface.SyncRoot))
                {
                    values = rtuInterface.ReadWriteMultipleRegisters(slaveId, readStartAddress, readCount, writeStartAddress, writeData);

                    if (values != null)
                    {
                        registerValues = new RegisterCollection(values);

                        if (this.modbusMapper != null)
                        {
                            //Load the values into the mapped view
                            modbusMapper.UpdateMapFromInternalResponse(registerValues, slaveId, readStartAddress);
                        }

                    }
                }
            }
            catch (LockTimeoutException)
            {
                logger.Warn("Timed-out trying to lock RtuInterface for access.");
            }

            return registerValues;
        }
    }
}
