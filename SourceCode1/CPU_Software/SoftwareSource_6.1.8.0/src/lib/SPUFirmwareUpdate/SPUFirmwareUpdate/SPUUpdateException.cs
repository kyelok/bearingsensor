using System;
using System.Collections.Generic;
using System.Text;

namespace SPUFirmwareUpdate
{
    public class SPUUpdateException : Exception
    {
        /// <summary>
        /// Constructs  SPUUpdateException
        /// </summary>
        public SPUUpdateException()
            : base()
		{
		}

        /// <summary>
        /// Constructs  SPUUpdateException
        /// </summary>
        /// <param name="message">The error message to include in the exception</param>
        public SPUUpdateException(string message)
            : base(message)
		{
		}

        /// <summary>
        /// Constructs  SPUUpdateException
        /// </summary>
        /// <param name="message">The error message to include in the exception</param>
        /// <param name="innerException">The inner exception to include in this exception</param>
        public SPUUpdateException(string message, Exception innerException)
            : base(message, innerException)
		{
		}
    }
}
