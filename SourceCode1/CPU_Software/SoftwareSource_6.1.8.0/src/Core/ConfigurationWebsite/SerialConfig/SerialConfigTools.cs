using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO.Ports;
using System.Configuration;
using HelperClasses;

namespace SerialConfig
{
    public class SerialConfigTools
    {
        public static readonly string ModbusServerConfigFile = "ModbusServerConfigFile";
        public static readonly int[] BaudRates = new int[11] { 300, 1200, 2400, 4800, 9600, 14400, 19200, 28800, 38400, 57600, 115200 };
        public static readonly int[] DataBits = new int[4] { 5, 6, 7, 8 };

        public static void WriteNewSerialConfig(SerialConfigData SpuSerial, SerialConfigData ExtSerial)
        {
            ModuleConfiguration config = ConfigurationHelper.GetWebConfiguration(ModbusServerConfigFile);
            AppSettingsSection section = (AppSettingsSection)config.GetSection("modbusServer");

            section.Settings.Remove("InternalComPort");
            section.Settings.Remove("InternalBaudRate");
            section.Settings.Remove("InternalParity");
            section.Settings.Remove("InternalStopBits");
            section.Settings.Remove("InternalDataBits");

            section.Settings.Add("InternalComPort", SpuSerial.PortName);
            section.Settings.Add("InternalBaudRate", SpuSerial.BaudRate.ToString());
            section.Settings.Add("InternalParity", ((int)SpuSerial.Parity).ToString());
            section.Settings.Add("InternalStopBits", ((int)SpuSerial.StopBits).ToString());
            section.Settings.Add("InternalDataBits", ((int)SpuSerial.DataBits).ToString());

            section.Settings.Remove("ExternalComPort");
            section.Settings.Remove("ExternalBaudRate");
            section.Settings.Remove("ExternalParity");
            section.Settings.Remove("ExternalStopBits");
            section.Settings.Remove("ExternalDataBits");

            section.Settings.Add("ExternalComPort", ExtSerial.PortName);
            section.Settings.Add("ExternalBaudRate", ExtSerial.BaudRate.ToString());
            section.Settings.Add("ExternalParity", ((int)ExtSerial.Parity).ToString());
            section.Settings.Add("ExternalStopBits", ((int)ExtSerial.StopBits).ToString());
            section.Settings.Add("ExternalDataBits", ((int)ExtSerial.DataBits).ToString());

            config.Save();
        }

        public static void ReadSerialConfig(out SerialConfigData SpuSerial, out SerialConfigData ExtSerial)
        {

            ModuleConfiguration config = ConfigurationHelper.GetWebConfiguration(ModbusServerConfigFile);
            AppSettingsSection section = (AppSettingsSection)config.GetSection("modbusServer");
            SpuSerial = new SerialConfigData();
            ExtSerial = new SerialConfigData();

            SpuSerial.PortName = section.Settings["InternalComPort"].Value;
            SpuSerial.BaudRate = Int32.Parse(section.Settings["InternalBaudRate"].Value);
            SpuSerial.Parity = (Parity)Int32.Parse(section.Settings["InternalParity"].Value);
            SpuSerial.StopBits = (StopBits)Int32.Parse(section.Settings["InternalStopBits"].Value);

            int dataBits = Int32.Parse(section.Settings["InternalDataBits"].Value);
            switch (dataBits)
            {
                case 5: SpuSerial.DataBits = dataBits; break;
                case 6: SpuSerial.DataBits = dataBits; break;
                case 7: SpuSerial.DataBits = dataBits; break;
                case 8: SpuSerial.DataBits = dataBits; break;
                default: SpuSerial.DataBits = 8; break;
            }

            ExtSerial.PortName = section.Settings["ExternalComPort"].Value;
            ExtSerial.BaudRate = Int32.Parse(section.Settings["ExternalBaudRate"].Value);
            ExtSerial.Parity = (Parity)Int32.Parse(section.Settings["ExternalParity"].Value);
            ExtSerial.StopBits = (StopBits)Int32.Parse(section.Settings["ExternalStopBits"].Value);

            dataBits = Int32.Parse(section.Settings["ExternalDataBits"].Value);
            switch (dataBits)
            {
                case 5: ExtSerial.DataBits = dataBits; break;
                case 6: ExtSerial.DataBits = dataBits; break;
                case 7: ExtSerial.DataBits = dataBits; break;
                case 8: ExtSerial.DataBits = dataBits; break;
                default: ExtSerial.DataBits = 8; break;
            }
        }

        public static bool ValidateSerialData(SerialConfigData data)
        {
            if(!SerialConfigTools.BaudRates.Contains(data.BaudRate))
            {
                return false;
            }
            if (!SerialConfigTools.DataBits.Contains(data.DataBits))
            {
                return false;
            }
            if (data.Parity == null)
            {
                return false;
            }
            if (data.StopBits == null)
            {
                return false;
            }
            if (data.PortName == null)
            {
                return false;
            }

            //If we reach this stage, nothing has failed validation
            return true;

        }

        public static string[] GetSortedPortNames()
        {
            string[] result = SerialPort.GetPortNames();

            Array.Sort(result);

            return result;
        }
    }


}
