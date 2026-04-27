using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO.Ports;
using System.Configuration;
using System.Net;
using HelperClasses;
using System.Globalization;

namespace Storage
{
    /// <summary>
    /// The configuration class is a singleton that can be used to query
    /// for system configuration data.
    /// </summary>
    public sealed class ConfigurationData
    {
        /// <summary>
        /// Section within the application .config file which contains the configuration data
        /// </summary>
        private const String ModbusServerSection = "modbusServer";

        /// <summary>
        /// The configuration data structure
        /// </summary>
        private static readonly ConfigurationData instance = new ConfigurationData();

        /// <summary>
        /// Configuration connection
        /// </summary>
        private ModuleConfiguration configuration;

        /// <summary>
        /// Logger
        /// </summary>
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        /// <summary>
        /// Access to the singleton instance of the ConfigurationData
        /// </summary>
        public static ConfigurationData Instance
        {
            get
            {
                return instance;
            }
        }

        /// <summary>
        /// Explicit static constructor to tell C# compiler not to mark type as beforefieldinit 
        /// </summary>
        static ConfigurationData()
        {
        }

        /// <summary>
        /// Default constructor
        /// </summary>
        ConfigurationData()
        {
            configuration = ModuleConfiguration.GetApplicationConfiguration();
        }

        /// <summary>
        /// Creates and returns a handle to the default internal serial port. If the object is not created it will be created
        /// otherwise the existing serial port handle will be returned.
        /// </summary>
        /// <returns>The internal serial port handle</returns>
        public SerialPort CreateDefaultSerialPort()
        {
            SerialPort port;

            port = new SerialPort("COM6", InternalBaudRate, InternalParity, InternalDataBits, InternalStopBits);
            port.ReadTimeout = RTUReadTimeout;
            port.WriteTimeout = RTUWriteTimeout;

            return port;
        }

        /// <summary>
        /// Creates and returns a handle to the internal serial port. If the object is not created it will be created
        /// otherwise the existing serial port handle will be returned.
        /// </summary>
        /// <returns>The internal serial port handle</returns>
        public SerialPort CreateInternalSerialPort()
        {
            SerialPort port;

            port = new SerialPort(InternalComPort, InternalBaudRate, InternalParity, InternalDataBits, InternalStopBits);
            port.ReadTimeout = RTUReadTimeout;
            port.WriteTimeout = RTUWriteTimeout;
  
            return port;
        }

        /// <summary>
        /// Creates and returns a handle to the internal temperature serial port. If the object is not created it will be created
        /// otherwise the existing serial port handle will be returned.
        /// </summary>
        /// <returns>The internal serial port handle</returns>
        public SerialPort CreateTemperatureSerialPort()
        {
            SerialPort port;

            port = new SerialPort(InternalTempComPort, InternalTempBaudRate, InternalTempParity, InternalTempDataBits, InternalTempStopBits);
            port.ReadTimeout = RTUReadTimeout;
            port.WriteTimeout = RTUWriteTimeout;

            return port;
        }

        /// <summary>
        /// Creates and returns a handle to the external serial port. If the object is not created it will be created
        /// otherwise the existing serial port handle will be returned.
        /// </summary>
        /// <returns>The external serial port handle</returns>
        public SerialPort CreateExternalSerialPort()
        {
            SerialPort port;

            port = new SerialPort(ExternalComPort, ExternalBaudRate, Parity.None, 8, StopBits.One);
            port.ReadTimeout = SerialPort.InfiniteTimeout;
            port.WriteTimeout = 1000;

            return port;
        }

        /// <summary>
        /// Gets and Sets the location that configuration files are located
        /// </summary>
        static public string ConfigurationFilesLocation
        {
            get
            {
                return ModuleConfiguration.GetConfigurationDirectory();
            }
        }

        /// <summary>
        /// Gets the device name of the internal serial port
        /// </summary>
        public string InternalComPort
        {
            get
            {
                string defaultValue = "COM2";
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["InternalComPort"] != null)
                {
                    return section.Settings["InternalComPort"].Value;
                }

                logger.InfoFormat("InternalComPort not defined in configuration, using default value '{0}'", defaultValue);
                return defaultValue;
            }
        }

        /// <summary>
        /// Gets the baud rate of the internal serial port
        /// </summary>
        public int InternalBaudRate
        {
            get
            {
                int defaultValue = 38400;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["InternalBaudRate"] != null)
                {
                    try
                    {
                        return Int32.Parse(section.Settings["InternalBaudRate"].Value, CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("InternalBaudRate not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("InternalBaudRate not defined in configuration, using default value '{0}'", defaultValue);
                }
                return defaultValue;
            }
        }

        /// <summary>
        /// Gets the parity of the internal serial port
        /// </summary>
        public Parity InternalParity
        {
            get
            {
                int defaultValue = (int)Parity.None;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["InternalParity"] != null)
                {
                    try
                    {
                        return (Parity)Int32.Parse(section.Settings["InternalParity"].Value, CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("InternalParity not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("InternalParity not defined in configuration, using default value '{0}'", defaultValue);
                }
                return (Parity)defaultValue;
            }
        }

        /// <summary>
        /// Gets the number of data bits for the internal serial port
        /// </summary>
        public int InternalDataBits
        {
            get
            {
                int defaultValue = 8;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["InternalDataBits"] != null)
                {
                    try
                    {
                        return Int32.Parse(section.Settings["InternalDataBits"].Value, CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("InternalDataBits not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("InternalDataBits not defined in configuration, using default value '{0}'", defaultValue);
                }
                return defaultValue;
            }
        }

        /// <summary>
        /// Gets the number of stop bits for the internal serial port
        /// </summary>
        public StopBits InternalStopBits
        {
            get
            {
                int defaultValue = (int)StopBits.One;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["InternalStopBits"] != null)
                {
                    try
                    {
                        return (StopBits)Int32.Parse(section.Settings["InternalStopBits"].Value,CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("InternalStopBits not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("InternalStopBits not defined in configuration, using default value '{0}'", defaultValue);
                }
                return (StopBits)defaultValue;
            }
        }

        /// <summary>
        /// Gets the enable status of the internal temperature serial port
        /// </summary>
        public int InternalTempEnable
        {
            get
            {
                int defaultValue = 0;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["Tempenable"] != null)
                {
                    try
                    {
                        return Int32.Parse(section.Settings["Tempenable"].Value, CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("Tempenable not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("Tempenable not defined in configuration, using default value '{0}'", defaultValue);
                }
                return defaultValue;
            }
        }

        /// <summary>
        /// Gets the enable status of the internal bearing serial port
        /// </summary>
        public int InternaBearingEnable
        {
            get
            {
                int defaultValue = 1;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["Bearingenable"] != null)
                {
                    try
                    {
                        return Int32.Parse(section.Settings["Bearingenable"].Value, CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("Bearingenable not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("Bearingenable not defined in configuration, using default value '{0}'", defaultValue);
                }
                return defaultValue;
            }
        }

        /// <summary>
        /// Gets the enable status of the internal bearing serial port
        /// </summary>
        public int ExternalComEnable
        {
            get
            {
                int defaultValue = 0;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["ExternalComEnable"] != null)
                {
                    try
                    {
                        return Int32.Parse(section.Settings["ExternalComEnable"].Value, CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("ExternalComEnable not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("ExternalComEnable not defined in configuration, using default value '{0}'", defaultValue);
                }
                return defaultValue;
            }
        }

        /// <summary>
        /// Gets the device name of the internal temperature serial port
        /// </summary>
        public string InternalTempComPort
        {
            get
            {
                string defaultValue = "COM2";
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["TempComPort"] != null)
                {
                    return section.Settings["TempComPort"].Value;
                }

                logger.InfoFormat("TempComPort not defined in configuration, using default value '{0}'", defaultValue);
                return defaultValue;
            }
        }

        /// <summary>
        /// Gets the baud rate of the internal temperature serial port
        /// </summary>
        public int InternalTempBaudRate
        {
            get
            {
                int defaultValue = 38400;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["TempBaudRate"] != null)
                {
                    try
                    {
                        return Int32.Parse(section.Settings["TempBaudRate"].Value, CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("TempBaudRate not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("TempBaudRate not defined in configuration, using default value '{0}'", defaultValue);
                }
                return defaultValue;
            }
        }

        /// <summary>
        /// Gets the parity of the internal temperature serial port
        /// </summary>
        public Parity InternalTempParity
        {
            get
            {
                int defaultValue = (int)Parity.None;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["TempParity"] != null)
                {
                    try
                    {
                        return (Parity)Int32.Parse(section.Settings["TempParity"].Value, CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("TempParity not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("TempParity not defined in configuration, using default value '{0}'", defaultValue);
                }
                return (Parity)defaultValue;
            }
        }

        /// <summary>
        /// Gets the number of data bits for the internal temperature serial port
        /// </summary>
        public int InternalTempDataBits
        {
            get
            {
                int defaultValue = 8;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["TempDataBits"] != null)
                {
                    try
                    {
                        return Int32.Parse(section.Settings["TempDataBits"].Value, CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("TempDataBits not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("TempDataBits not defined in configuration, using default value '{0}'", defaultValue);
                }
                return defaultValue;
            }
        }

        /// <summary>
        /// Gets the number of stop bits for the internal temperature serial port
        /// </summary>
        public StopBits InternalTempStopBits
        {
            get
            {
                int defaultValue = (int)StopBits.One;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["TempStopBits"] != null)
                {
                    try
                    {
                        return (StopBits)Int32.Parse(section.Settings["TempStopBits"].Value, CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("TempStopBits not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("TempStopBits not defined in configuration, using default value '{0}'", defaultValue);
                }
                return (StopBits)defaultValue;
            }
        }

        /// <summary>
        /// Gets the RTU read timeout value in ms
        /// </summary>
        public int RTUReadTimeout
        {
            get
            {
                int defaultValue = 1000;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["RTUReadTimeout"] != null)
                {
                    try
                    {
                        return Int32.Parse(section.Settings["RTUReadTimeout"].Value, CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("RTUReadTimeout not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("RTUReadTimeout not defined in configuration, using default value '{0}'", defaultValue);
                }
                return defaultValue;
            }
        }

        /// <summary>
        /// Gets the RTU write timeout value in ms
        /// </summary>
        public int RTUWriteTimeout
        {
            get
            {
                int defaultValue = 1000;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["RTUWriteTimeout"] != null)
                {
                    try
                    {
                        return Int32.Parse(section.Settings["RTUWriteTimeout"].Value, CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("RTUWriteTimeout not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("RTUWriteTimeout not defined in configuration, using default value '{0}'", defaultValue);
                }
                return defaultValue;
            }
        }

        /// <summary>
        /// Gets the number of RTU retries to perform upon a failure
        /// </summary>
        public int Attempts
        {
            get
            {
                int defaultValue = 3;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["Attempts"] != null)
                {
                    try
                    {
                        return Int32.Parse(section.Settings["Attempts"].Value, CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("Attempts not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("Attempts not defined in configuration, using default value '{0}'", defaultValue);
                }
                return defaultValue;
            }
        }

        /// <summary>
        /// Gets the number of RTU retries to perform upon a failure
        /// </summary>
        public int Throttle
        {
            get
            {
                int defaultValue = 1;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["Throttle"] != null)
                {
                    try
                    {
                        return Int32.Parse(section.Settings["Throttle"].Value, CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("Throttle not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("Throttle not defined in configuration, using default value '{0}'", defaultValue);
                }
                return defaultValue;
            }
        }

        /// <summary>
        /// Gets the device name of the external serial port
        /// </summary>
        public string ExternalComPort
        {
            get
            {
                string defaultValue = "COM1";
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["ExternalComPort"] != null)
                {
                    return section.Settings["ExternalComPort"].Value;
                }

                logger.InfoFormat("ExternalComPort not defined in configuration, using default value '{0}'", defaultValue);
                return defaultValue;
            }
        }

        /// <summary>
        /// Gets the baud rate of the external serial port
        /// </summary>
        public int ExternalBaudRate
        {
            get
            {
                int defaultValue = 38400;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["ExternalBaudRate"] != null)
                {
                    try
                    {
                        return Int32.Parse(section.Settings["ExternalBaudRate"].Value, CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("ExternalBaudRate not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("ExternalBaudRate not defined in configuration, using default value '{0}'", defaultValue);
                }
                return defaultValue;
            }
        }

        /// <summary>
        /// Gets the parity of the internal serial port
        /// </summary>
        public Parity ExternalParity
        {
            get
            {
                int defaultValue = (int)Parity.None;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["ExternalParity"] != null)
                {
                    try
                    {
                        return (Parity)Int32.Parse(section.Settings["ExternalParity"].Value, CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("ExternalParity not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("ExternalParity not defined in configuration, using default value '{0}'", defaultValue);
                }
                return (Parity)defaultValue;
            }
        }

        /// <summary>
        /// Gets the number of data bits for the internal serial port
        /// </summary>
        public int ExternalDataBits
        {
            get
            {
                int defaultValue = 8;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["ExternalDataBits"] != null)
                {
                    try
                    {
                        return Int32.Parse(section.Settings["ExternalDataBits"].Value, CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("ExternalDataBits not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("ExternalDataBits not defined in configuration, using default value '{0}'", defaultValue);
                }
                return defaultValue;
            }
        }

        /// <summary>
        /// Gets the number of stop bits for the internal serial port
        /// </summary>
        public StopBits ExternalStopBits
        {
            get
            {
                int defaultValue = (int)StopBits.One;
                AppSettingsSection section = (AppSettingsSection)configuration.GetSection(ModbusServerSection);
                if (section != null && section.Settings["ExternalStopBits"] != null)
                {
                    try
                    {
                        return (StopBits)Int32.Parse(section.Settings["ExternalStopBits"].Value, CultureInfo.CurrentCulture);
                    }
                    catch
                    {
                        logger.ErrorFormat("ExternalStopBits not a number in configuration, using default value {0}", defaultValue);
                    }
                }
                else
                {
                    logger.InfoFormat("ExternalStopBits not defined in configuration, using default value '{0}'", defaultValue);
                }
                return (StopBits)defaultValue;
            }
        }
    }
}