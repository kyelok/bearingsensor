using System;
using System.Collections.Generic;
using System.Globalization;

namespace Modbus.Message
{
    //Disable warnings about XML comments for public functions.
    #pragma warning disable 1591

    /// <summary>
    /// The SlaveExceptionResponse class is used to format an exception response for returning to a Modbus master.
    /// </summary>
	public class SlaveExceptionResponse : ModbusMessage, IModbusMessage
	{
		private static readonly Dictionary<byte, string> _exceptionMessages = CreateExceptionMessages();		

        /// <summary>
        /// Default constructor for a SlaveExceptionResponse
        /// </summary>
		public SlaveExceptionResponse()
		{
		}

        /// <summary>
        /// Constructs a SlaveExceptionResponse for a specfic exception
        /// </summary>
        /// <param name="slaveAddress">The id of the slave the exception relates too.</param>
        /// <param name="functionCode">The Modbus function code that caused the exception.</param>
        /// <param name="exceptionCode">The Modbus exception code</param>
		public SlaveExceptionResponse(byte slaveAddress, byte functionCode, byte exceptionCode)
			: base(slaveAddress, functionCode)	
		{
			SlaveExceptionCode = exceptionCode;
		}

        /// <summary>
        /// Gets the minium size of SlaveExceptionResponse in bytes.
        /// </summary>
		public override int MinimumFrameSize
		{
			get { return 3; }
		}

        /// <summary>
        /// Gets the Modbus exception code for this exception
        /// </summary>
		public byte SlaveExceptionCode
		{
			get { return MessageImpl.ExceptionCode.Value; }
			set { MessageImpl.ExceptionCode = value; }
		}

		/// <summary>
		/// Returns a <see cref="T:System.String"></see> that represents the current <see cref="T:System.Object"></see>.
		/// </summary>
		/// <returns>
		/// A <see cref="T:System.String"></see> that represents the current <see cref="T:System.Object"></see>.
		/// </returns>
		public override string ToString()
		{
			string message = _exceptionMessages.ContainsKey(SlaveExceptionCode) ? _exceptionMessages[SlaveExceptionCode] : Resources.Unknown;
			return String.Format(CultureInfo.InvariantCulture, Resources.SlaveExceptionResponseFormat, Environment.NewLine, FunctionCode, SlaveExceptionCode, message);
		}

		internal static Dictionary<byte, string> CreateExceptionMessages()
		{
			Dictionary<byte, string> messages = new Dictionary<byte, string>(9);

			messages.Add(1, Resources.IllegalFunction);
			messages.Add(2, Resources.IllegalDataAddress);
			messages.Add(3, Resources.IllegalDataValue);
			messages.Add(4, Resources.SlaveDeviceFailure);
			messages.Add(5, Resources.Acknowlege);
			messages.Add(6, Resources.SlaveDeviceBusy);
			messages.Add(8, Resources.MemoryParityError);
			messages.Add(10, Resources.GatewayPathUnavailable);
			messages.Add(11, Resources.GatewayTargetDeviceFailedToRespond);

			return messages;
		}

		protected override void InitializeUnique(byte[] frame)
		{
			if (FunctionCode <= Modbus.ExceptionOffset)
				throw new FormatException(Resources.SlaveExceptionResponseInvalidFunctionCode);

			SlaveExceptionCode = frame[2];
		}
    }

    #pragma warning restore 1591
}
