/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Text;

namespace SPUFirmwareUpdate
{
    public class InvalidFirmwareFileException : SPUUpdateException
    {
        /// <summary>
        /// Constructs  InvalidFirmwareFileException
        /// </summary>
        public InvalidFirmwareFileException()
            : base("Invalid Firmware")
		{
		}

        /// <summary>
        /// Constructs  InvalidFirmwareFileException
        /// </summary>
        /// <param name="message">The error message to include in the exception</param>
        public InvalidFirmwareFileException(string message)
            : base("Invalid Firmware: " + message)
		{
		}

        /// <summary>
        /// Constructs  InvalidFirmwareFileException
        /// </summary>
        /// <param name="message">The error message to include in the exception</param>
        /// <param name="innerException">The inner exception to include in this exception</param>
        public InvalidFirmwareFileException(string message, Exception innerException)
            : base(("Invalid Firmware: " + message), innerException)
		{
		}
    }
}
