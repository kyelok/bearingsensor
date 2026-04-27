using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Modbus
{
    /// <summary>
    /// Exception that is thrown by the Modbus transport if a CRC error is detected when
    /// decoding a modbus frame.
    /// </summary>
    public class InvalidCRCException : Exception
    {
        /// <summary>
        /// Constructs  InvalidCRCException
        /// </summary>
        public InvalidCRCException()
		{
		}

        /// <summary>
        /// Constructs  InvalidCRCException
        /// </summary>
        /// <param name="message">The error message to include in the exception</param>
        public InvalidCRCException(string message)
			: base(message)
		{
		}

        /// <summary>
        /// Constructs  InvalidCRCException
        /// </summary>
        /// <param name="message">The error message to include in the exception</param>
        /// <param name="innerException">The inner exception to include in this exception</param>
        public InvalidCRCException(string message, Exception innerException)
			: base(message, innerException)
		{
		}
    }
}
