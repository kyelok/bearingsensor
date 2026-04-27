using System;
using System.Diagnostics.CodeAnalysis;
using System.Globalization;
using System.Linq;
using log4net;
using Modbus.Data;
using Modbus.IO;
using Modbus.Message;
using Unme.Common;

namespace Modbus.Device
{
    /// <summary>
    /// Modbus slave device.
    /// </summary>
    public abstract class ModbusSlave : ModbusDevice
    {
        private static readonly ILog _logger = LogManager.GetLogger(typeof(ModbusSlave));

        internal ModbusSlave(byte unitId, ModbusTransport transport)
            : base(transport)
        {
            DataStore = DataStoreFactory.CreateDefaultDataStore();
            UnitId = unitId;
        }

        /// <summary>
        /// Occurs when a modbus slave receives a request.
        /// </summary>
        public event EventHandler<ModbusSlaveRequestEventArgs> ModbusSlaveRequestReceived;

        /// <summary>
        /// Gets or sets the data store.
        /// </summary>
        public DataStore DataStore { get; set; }

        /// <summary>
        /// Gets or sets the unit ID.
        /// </summary>
        public byte UnitId { get; set; }

        /// <summary>
        /// Start slave listening for requests.
        /// </summary>
        public abstract void Listen();

        internal static ReadCoilsInputsResponse ReadCoils(ReadCoilsInputsRequest request, DataStore dataStore)
        {
            DiscreteCollection data = dataStore.ReadCoils(request.SlaveAddress, request.StartAddress, request.NumberOfPoints);
            ReadCoilsInputsResponse response = new ReadCoilsInputsResponse(request.FunctionCode, request.SlaveAddress, data.ByteCount, data);

            return response;
        }

        internal static ReadCoilsInputsResponse ReadInputs(ReadCoilsInputsRequest request, DataStore dataStore)
        {
            DiscreteCollection data = dataStore.ReadInputs(request.SlaveAddress, request.StartAddress, request.NumberOfPoints);
            ReadCoilsInputsResponse response = new ReadCoilsInputsResponse(request.FunctionCode, request.SlaveAddress, data.ByteCount, data);

            return response;
        }

        internal static ReadHoldingInputRegistersResponse ReadHoldingRegisters(ReadHoldingInputRegistersRequest request, DataStore dataStore)
        {
            ReadHoldingInputRegistersResponse response;
            RegisterCollection data = dataStore.ReadHoldingRegisters(request.SlaveAddress, request.StartAddress, request.NumberOfPoints);

            if (data != null)
            {
                _logger.DebugFormat("dataStore.ReadHoldingRegisters {0}", data);
                response = new ReadHoldingInputRegistersResponse(request.FunctionCode, request.SlaveAddress, data);
            }
            else
            {
                throw new SlaveException(new SlaveExceptionResponse(request.SlaveAddress, request.FunctionCode, 11));
            }

            _logger.DebugFormat("Holding Register Response {0}", response);

            return response;
        }

        internal static ReadHoldingInputRegistersResponse ReadHoldingRegistersTemp(ReadHoldingInputRegistersRequest request, DataStore dataStore)
        {
            ReadHoldingInputRegistersResponse response;
            RegisterCollection data = dataStore.ReadHoldingRegistersTemp(request.SlaveAddress, request.StartAddress, request.NumberOfPoints);

            if (data != null)
            {
                _logger.DebugFormat("dataStore.ReadHoldingRegisters {0}", data);
                response = new ReadHoldingInputRegistersResponse(request.FunctionCode, request.SlaveAddress, data);
            }
            else
            {
                throw new SlaveException(new SlaveExceptionResponse(request.SlaveAddress, request.FunctionCode, 11));
            }

            _logger.DebugFormat("Holding Register Response {0}", response);

            return response;
        }

        internal static ReadHoldingInputRegistersResponse ReadInputRegisters(ReadHoldingInputRegistersRequest request, DataStore dataStore)
        {
            RegisterCollection data = dataStore.ReadInputRegisters(request.SlaveAddress, request.StartAddress, request.NumberOfPoints);
            ReadHoldingInputRegistersResponse response = new ReadHoldingInputRegistersResponse(request.FunctionCode, request.SlaveAddress, data);

            return response;
        }

        internal static WriteSingleCoilRequestResponse WriteSingleCoil(WriteSingleCoilRequestResponse request, DataStore dataStore)
        {
            dataStore.WriteSingleCoil(request.SlaveAddress, (request.Data[0] == Modbus.CoilOn), request.StartAddress);

            return request;
        }

        internal static WriteMultipleCoilsResponse WriteMultipleCoils(WriteMultipleCoilsRequest request, DataStore dataStore)
        {
            dataStore.WriteMultipleCoils(request.SlaveAddress, request.Data.Take(request.NumberOfPoints).ToArray(), request.StartAddress);

            WriteMultipleCoilsResponse response = new WriteMultipleCoilsResponse(request.SlaveAddress, request.StartAddress, request.NumberOfPoints);

            return response;
        }

        internal static WriteSingleRegisterRequestResponse WriteSingleHoldingRegister(WriteSingleRegisterRequestResponse request, DataStore dataStore)
        {
            dataStore.WriteMultipleRegisters(request.SlaveAddress, request.Data.Take(1).ToArray(), request.StartAddress);

            return request;
        }

        internal static WriteMultipleRegistersResponse WriteMultipleHoldingRegisters(WriteMultipleRegistersRequest request, DataStore dataStore)
        {
            dataStore.WriteMultipleRegisters(request.SlaveAddress, request.Data.Take(request.NumberOfPoints).ToArray(), request.StartAddress);

            WriteMultipleRegistersResponse response = new WriteMultipleRegistersResponse(request.SlaveAddress, request.StartAddress, request.NumberOfPoints);

            return response;
        }

        internal static ReadHoldingInputRegistersResponse ReadWriteMultipleRegisters(ReadWriteMultipleRegistersRequest request, DataStore dataStore)
        {
            RegisterCollection data = dataStore.ReadWriteMultipleRegisters(request.SlaveAddress, request.ReadRequest.StartAddress, request.ReadRequest.NumberOfPoints, request.WriteRequest.Data.Take(request.WriteRequest.NumberOfPoints).ToArray(), request.WriteRequest.StartAddress);
            ReadHoldingInputRegistersResponse response = new ReadHoldingInputRegistersResponse(request.FunctionCode, request.SlaveAddress, data);

            return response;
        }

        internal static IModbusMessage HandleDiagnosticRequest(DiagnosticsRequestResponse diagnosticsRequestResponse, DataStore dataStore)
        {
            RegisterCollection data = dataStore.HandleDiagnosticRequest(diagnosticsRequestResponse.SlaveAddress, diagnosticsRequestResponse.SubFunctionCode, diagnosticsRequestResponse.Data);
            DiagnosticsRequestResponse response = new DiagnosticsRequestResponse(diagnosticsRequestResponse.SubFunctionCode, diagnosticsRequestResponse.SlaveAddress, data);
            return response;
        }

        [SuppressMessage("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily", Justification = "Cast is not unneccessary.")]
        internal IModbusMessage ApplyRequest(IModbusMessage request)
        {
            ModbusSlaveRequestReceived.Raise(this, new ModbusSlaveRequestEventArgs(request));

            IModbusMessage response;

            try
            {
                switch (request.FunctionCode)
                {
                    case Modbus.ReadCoils:
                        response = ReadCoils((ReadCoilsInputsRequest)request, DataStore);
                        break;
                    case Modbus.ReadInputs:
                        response = ReadInputs((ReadCoilsInputsRequest)request, DataStore);
                        break;
                    case Modbus.ReadHoldingRegisters:
                        if(request.SlaveAddress == 1)
                        response = ReadHoldingRegisters((ReadHoldingInputRegistersRequest)request, DataStore);
                        else
                        response = ReadHoldingRegistersTemp((ReadHoldingInputRegistersRequest)request, DataStore);
                        break;
                    case Modbus.ReadInputRegisters:
                        response = ReadInputRegisters((ReadHoldingInputRegistersRequest)request, DataStore);
                        break;
                    case Modbus.Diagnostics:
                        response = HandleDiagnosticRequest((DiagnosticsRequestResponse)request, DataStore);
                        break;
                    case Modbus.WriteSingleCoil:
                        response = WriteSingleCoil((WriteSingleCoilRequestResponse)request, DataStore);
                        break;
                    case Modbus.WriteSingleRegister:
                        response = WriteSingleHoldingRegister((WriteSingleRegisterRequestResponse)request, DataStore);
                        break;
                    case Modbus.WriteMultipleCoils:
                        response = WriteMultipleCoils((WriteMultipleCoilsRequest)request, DataStore);
                        break;
                    case Modbus.WriteMultipleRegisters:
                            response = WriteMultipleHoldingRegisters((WriteMultipleRegistersRequest)request, DataStore);
                        break;
                    case Modbus.ReadWriteMultipleRegisters:
                            response = ReadWriteMultipleRegisters((ReadWriteMultipleRegistersRequest)request, DataStore);
                        break;
                    default:
                        string errorMessage = String.Format(CultureInfo.InvariantCulture, "Unsupported function code {0}", request.FunctionCode);
                        _logger.Error(errorMessage);
                        throw new NotImplementedException(errorMessage);
                }
            }
            catch (InvalidOperationException)
            {
                response = new SlaveExceptionResponse(request.SlaveAddress, (byte)(request.FunctionCode + 0x80), 11);
            }
            catch (TimeoutException)
            {
                response = new SlaveExceptionResponse(request.SlaveAddress, (byte)(request.FunctionCode + 0x80), 11);
            }
            catch (SlaveException se)
            {
                response = new SlaveExceptionResponse(request.SlaveAddress, (byte)(request.FunctionCode + 0x80), se.SlaveExceptionCode);
            }
            catch (FormatException)
            {
                response = new SlaveExceptionResponse(request.SlaveAddress, (byte)(request.FunctionCode + 0x80), 0x04);
            }
            catch (NotImplementedException)
            {
                response = new SlaveExceptionResponse(request.SlaveAddress, (byte)(request.FunctionCode + 0x80), 0x01);
            }
            catch (InvalidCRCException)
            {
                response = new SlaveExceptionResponse(request.SlaveAddress, (byte)(request.FunctionCode + 0x80), 0x03);
            }
            catch (Exception e)
            {
                _logger.FatalFormat("Caught Exception {0}", e.ToString());
                throw;
            }

            return response;
        }
    }
}
