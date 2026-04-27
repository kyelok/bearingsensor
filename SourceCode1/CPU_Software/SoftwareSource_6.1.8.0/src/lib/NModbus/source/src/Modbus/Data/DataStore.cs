using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using Unme.Common;

namespace Modbus.Data
{
	/// <summary>
	/// Object simulation of device memory map.
	/// The underlying collections are thread safe when using the ModbusMaster API to read/write values.
	/// You can use the SyncRoot property to synchronize direct access to the DataStore collections.
	/// </summary>
	public class DataStore
	{
		private readonly object _syncRoot = new object();

		/// <summary>
		/// Initializes a new instance of the <see cref="DataStore"/> class.
		/// </summary>
		public DataStore()
		{
			CoilDiscretes = new ModbusDataCollection<bool> { ModbusDataType = ModbusDataType.Coil };
			InputDiscretes = new ModbusDataCollection<bool> { ModbusDataType = ModbusDataType.Input };
			HoldingRegisters = new ModbusDataCollection<ushort> { ModbusDataType = ModbusDataType.HoldingRegister };
			InputRegisters = new ModbusDataCollection<ushort> { ModbusDataType = ModbusDataType.InputRegister };
		}

		/// <summary>
		/// Occurs when the DataStore is written to via a Modbus command.
		/// </summary>		
		public event EventHandler<DataStoreEventArgs> DataStoreWrittenTo;

		/// <summary>
		/// Occurs when the DataStore is read from via a Modbus command.
		/// </summary>
		public event EventHandler<DataStoreEventArgs> DataStoreReadFrom;

		/// <summary>
		/// Gets the coil discretes.
		/// </summary>
		public ModbusDataCollection<bool> CoilDiscretes { get; private set; }

		/// <summary>
		/// Gets the input discretes.
		/// </summary>
		public ModbusDataCollection<bool> InputDiscretes { get; private set; }

		/// <summary>
		/// Gets the holding registers.
		/// </summary>
		public ModbusDataCollection<ushort> HoldingRegisters { get; private set; }

		/// <summary>
		/// Gets the input registers.
		/// </summary>
		public ModbusDataCollection<ushort> InputRegisters { get; private set; }

		/// <summary>
		/// An object that can be used to synchronize direct access to the DataStore collections.
		/// </summary>
		public object SyncRoot
		{
			get
			{
				return _syncRoot;
			}
		}

		/// <summary>
		/// Retrieves subset of data from collection.
		/// </summary>
		/// <typeparam name="T">The collection type.</typeparam>
		/// <typeparam name="U">The type of elements in the collection.</typeparam>
        internal static T ReadData<T, U>(DataStore dataStore, ModbusDataCollection<U> dataSource, ushort startAddress, ushort count, object syncRoot) where T : Collection<U>, new()
		{
            if (startAddress < 0 || startAddress >= dataSource.Count)
				throw new ArgumentOutOfRangeException("Start address was out of range. Must be non-negative and <= the size of the collection.");

            if (dataSource.Count < startAddress + count)
				throw new ArgumentOutOfRangeException("Read is outside valid range.");

			U[] dataToRetrieve;
			lock (syncRoot)
                dataToRetrieve = dataSource.Slice(startAddress, count).ToArray();

			T result = new T();
			for (int i = 0; i < count; i++)
				result.Add(dataToRetrieve[i]);

            dataStore.DataStoreReadFrom.Raise(dataStore, DataStoreEventArgs.CreateDataStoreEventArgs(startAddress, dataSource.ModbusDataType, result));

			return result;
		}

		/// <summary>
		/// Write data to data store.
		/// </summary>
		/// <typeparam name="TData">The type of the data.</typeparam>
		internal static void WriteData<TData>(DataStore dataStore, IEnumerable<TData> items, ModbusDataCollection<TData> destination, ushort startAddress, object syncRoot)
		{
            if (startAddress < 0 || startAddress >= destination.Count)
				throw new ArgumentOutOfRangeException("Start address was out of range. Must be non-negative and <= the size of the collection.");

            if (destination.Count < startAddress + items.Count())
				throw new ArgumentOutOfRangeException("Items collection is too large to write at specified start index.");

			lock (syncRoot)
                Update(items, destination, startAddress);

			dataStore.DataStoreWrittenTo.Raise(dataStore, DataStoreEventArgs.CreateDataStoreEventArgs(startAddress, destination.ModbusDataType, items));
		}

		/// <summary>
		/// Updates subset of values in a collection.
		/// </summary>
		internal static void Update<T>(IEnumerable<T> items, IList<T> destination, int startIndex)
		{
			if (startIndex < 0 || destination.Count < startIndex + items.Count())
				throw new ArgumentOutOfRangeException("Index was out of range. Must be non-negative and less than the size of the collection.");

			items.ForEachWithIndex((item, index) => destination[index + startIndex] = item);
		}

        /// <summary>
        /// Returns the state of the coils
        /// </summary>
        /// <param name="slaveId">The slave id to return the state for</param>
        /// <param name="startAddress">The start address to start reading the coils from</param>
        /// <param name="count">The number of coils to read</param>
        /// <returns>A DiscreteCollection containing the state of the coils</returns>
        public virtual DiscreteCollection ReadCoils(byte slaveId, ushort startAddress, ushort count)
        {
            return ReadData<DiscreteCollection, bool>(this, this.CoilDiscretes, startAddress, count, this.SyncRoot);
        }

        /// <summary>
        /// Returns the state of the inputs
        /// </summary>
        /// <param name="slaveId">The slave id to return the state for</param>
        /// <param name="startAddress">The start address to start reading the inputs from</param>
        /// <param name="count">The number of inputs to read</param>
        /// <returns>A DiscreteCollection containing the state of the inputs</returns>
        public virtual DiscreteCollection ReadInputs(byte slaveId, ushort startAddress, ushort count)
        {
            return ReadData<DiscreteCollection, bool>(this, this.InputDiscretes, startAddress, count, this.SyncRoot);
        }

        /// <summary>
        /// Returns the values of holding registers
        /// </summary>
        /// <param name="slaveId">The slave id to read the registers from</param>
        /// <param name="startAddress">The address to start reading the registers from</param>
        /// <param name="count">The number of registers to read</param>
        /// <returns>A RegisterCollection containing the values of the registers</returns>
        public virtual RegisterCollection ReadHoldingRegisters(byte slaveId, ushort startAddress, ushort count)
        {
            return ReadData<RegisterCollection, ushort>(this, this.HoldingRegisters, startAddress, count, this.SyncRoot);
        }

        /// <summary>
        /// Returns the values of holding registers
        /// </summary>
        /// <param name="slaveId">The slave id to read the registers from</param>
        /// <param name="startAddress">The address to start reading the registers from</param>
        /// <param name="count">The number of registers to read</param>
        /// <returns>A RegisterCollection containing the values of the registers</returns>
        public virtual RegisterCollection ReadHoldingRegistersTemp(byte slaveId, ushort startAddress, ushort count)
        {
            return ReadData<RegisterCollection, ushort>(this, this.HoldingRegisters, startAddress, count, this.SyncRoot);
        }

        /// <summary>
        /// Returns the values in the input registers
        /// </summary>
        /// <param name="slaveId">The slave id to read the registers from</param>
        /// <param name="startAddress">The address to start reading the registers from</param>
        /// <param name="count">The number of registers to read</param>
        /// <returns>A RegisterCollection containing the values of the registers</returns>
        public virtual RegisterCollection ReadInputRegisters(byte slaveId, ushort startAddress, ushort count)
        {
            return ReadData<RegisterCollection, ushort>(this, this.InputRegisters, startAddress, count, this.SyncRoot);
        }

        /// <summary>
        /// Sets the value of a single Coil
        /// </summary>
        /// <param name="slaveId">The slave id to set the coil on</param>
        /// <param name="value">The value to set the coil to</param>
        /// <param name="startAddress">The address of the coil to set</param>
        public virtual void WriteSingleCoil(byte slaveId, bool value, ushort startAddress)
        {
            WriteData(this, new DiscreteCollection(value), this.CoilDiscretes, startAddress, this.SyncRoot);
        }

        /// <summary>
        /// Ses the value of multiple coils
        /// </summary>
        /// <param name="slaveId">The slave id to set the coils on</param>
        /// <param name="values">The values to set the coils to</param>
        /// <param name="startAddress">The address of the first coil to set</param>
        public virtual void WriteMultipleCoils(byte slaveId, bool[] values, ushort startAddress)
        {
            WriteData(this, values, this.CoilDiscretes, startAddress, this.SyncRoot);
        }

        /// <summary>
        /// Writes values to multiple holding registers
        /// </summary>
        /// <param name="slaveId">The slave id to write the registers to</param>
        /// <param name="values">The values to write to the registers</param>
        /// <param name="startAddress">The address of the first register to write</param>
        public virtual void WriteMultipleRegisters(byte slaveId, ushort[] values, ushort startAddress)
        {
            WriteData(this, values, this.HoldingRegisters, startAddress, this.SyncRoot);
        }
        
        /// <summary>
        /// Reads and then writes multiple holding registers
        /// </summary>
        /// <param name="slaveId">The slave id to read and write the registers to/from</param>
        /// <param name="readStartAddress">The address to start the read from</param>
        /// <param name="readCount">The number of registers to read</param>
        /// <param name="writeData">The data to write</param>
        /// <param name="writeStartAddress">The address to start the write to.</param>
        /// <returns></returns>
        public virtual RegisterCollection ReadWriteMultipleRegisters(byte slaveId, ushort readStartAddress, ushort readCount, ushort[] writeData, ushort writeStartAddress)
        {
            RegisterCollection values;
            values = ReadData<RegisterCollection, ushort>(this, this.HoldingRegisters, readStartAddress, readCount, this.SyncRoot);
            WriteMultipleRegisters(slaveId, writeData, writeStartAddress);

            return values;
            
        }

        /// <summary>
        /// This function processes a diagnostics request from a client
        /// </summary>
        /// <param name="slaveId">The address of the slave to send the request too</param>
        /// <param name="subfunctionCode">The diagnostics sub function code</param>
        /// <param name="data">The query data to send</param>
        /// <returns>Returns the diagnostics request sent by the client</returns>
        public virtual RegisterCollection HandleDiagnosticRequest(byte slaveId, ushort subfunctionCode, RegisterCollection data)
        {
            return data;
        }
    }
}
