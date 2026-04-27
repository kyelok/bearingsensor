using System;
using System.Globalization;
using System.IO;
using System.IO.Ports;
using log4net;
using Modbus.IO;
using Modbus.Message;
using Unme.Common;

namespace Modbus.Device
{
	/// <summary>
	/// Modbus serial slave device.
	/// </summary>
	public class ModbusSerialSlave : ModbusSlave
	{
		private static readonly ILog _logger = LogManager.GetLogger(typeof(ModbusSerialSlave));

		private ModbusSerialSlave(byte unitId, ModbusTransport transport)
			: base(unitId, transport)
		{
		}

		private ModbusSerialTransport SerialTransport
		{
			get
			{
				var transport = Transport as ModbusSerialTransport;
				if (transport == null)
					throw new ObjectDisposedException("SerialTransport");

				return transport;
			}
		}

		/// <summary>
		/// Modbus ASCII slave factory method.
		/// </summary>
		public static ModbusSerialSlave CreateAscii(byte unitId, SerialPort serialPort)
		{
			if (serialPort == null)
				throw new ArgumentNullException("serialPort");
			
			return CreateAscii(unitId, new SerialPortAdapter(serialPort));
		}

		/// <summary>
		/// Modbus ASCII slave factory method.
		/// </summary>
		public static ModbusSerialSlave CreateAscii(byte unitId, IStreamResource streamResource)
		{
			if (streamResource == null)
				throw new ArgumentNullException("streamResource");
			
			return new ModbusSerialSlave(unitId, new ModbusAsciiTransport(streamResource));
		}

		/// <summary>
		/// Modbus RTU slave factory method.
		/// </summary>
		public static ModbusSerialSlave CreateRtu(byte unitId, SerialPort serialPort)
		{
			if (serialPort == null)
				throw new ArgumentNullException("serialPort");

			return CreateRtu(unitId, new SerialPortAdapter(serialPort));
		}

		/// <summary>
		/// Modbus RTU slave factory method.
		/// </summary>
		public static ModbusSerialSlave CreateRtu(byte unitId, IStreamResource streamResource)
		{
			if (streamResource == null)
				throw new ArgumentNullException("streamResource");

			return new ModbusSerialSlave(unitId, new ModbusRtuTransport(streamResource));
		}

		/// <summary>
		/// Start slave listening for requests.
		/// </summary>
		public override void Listen()
		{
            IModbusMessage request;

			while (true)
			{
                request = null;

				try
				{
                    try
                    {
                        // read request and build message
                        byte[] frame = SerialTransport.ReadRequest();
                        request = ModbusMessageFactory.CreateModbusRequest(frame);

                        if (SerialTransport.CheckFrame && !SerialTransport.ChecksumsMatch(request, frame))
                        {
                            string errorMessage = String.Format(CultureInfo.InvariantCulture, "Checksums failed to match {0} != {1}", request.MessageFrame.Join(", "), frame.Join(", "));
                            _logger.Error(errorMessage);
                            throw new InvalidCRCException(errorMessage);
                        }

                        //For the the Core we actually want to respond to all slave addresses
                        //the Proxy data store will determine if the slave is supported
#if false
                        
						// only service requests addressed to this particular slave
						if (request.SlaveAddress != UnitId)
						{
							_logger.DebugFormat("NModbus Slave {0} ignoring request intended for NModbus Slave {1}", UnitId, request.SlaveAddress);
							continue;
						}
#endif

                        // perform action
                        IModbusMessage response = ApplyRequest(request);

                        // write response
                        SerialTransport.Write(response);
                    }
                    catch (IOException ioe)
                    {
                        _logger.ErrorFormat("IO Exception encountered while listening for requests - {0}", ioe.Message);
                        SerialTransport.DiscardInBuffer();
                    }
                    catch (TimeoutException te)
                    {
                        _logger.ErrorFormat("Timeout Exception encountered while listening for requests - {0}", te.Message);
                        SerialTransport.DiscardInBuffer();
                    }
                    catch (SlaveException se)
                    {
                        IModbusMessage response = new SlaveExceptionResponse(request.SlaveAddress, (byte)(request.FunctionCode + 0x80), se.SlaveExceptionCode);
                        SerialTransport.DiscardInBuffer();
                        SerialTransport.Write(response);
                    }
				}
				catch (InvalidOperationException)
				{
					// when the underlying transport is disposed
					break;
				}
			}
		}
	}
}
