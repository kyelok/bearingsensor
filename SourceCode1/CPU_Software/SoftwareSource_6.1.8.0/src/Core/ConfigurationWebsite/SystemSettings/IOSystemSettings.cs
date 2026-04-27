using System;
using System.Linq;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.SQLite;
using System.IO;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.IO.Ports;
using DataCollectionSDK;
using SerialConfig;
using System.Runtime.InteropServices;


namespace SystemSettings
{
    /// <summary>
    /// This class is used to Import and Export the system settings
    /// </summary>
    public class IOSystemSettings
    {

        #region NativeMethods
        /// <summary>
        /// Native Methods used for reading and Writting .ini files.
        /// </summary>
        private class NativeMethods
        {
            [DllImport("KERNEL32.DLL", EntryPoint = "GetPrivateProfileStringW", SetLastError = true, CharSet = CharSet.Unicode, ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
            public static extern int GetPrivateProfileString(
              string lpAppName,
              string lpKeyName,
              string lpDefault,
              string lpReturnString,
              int nSize,
              string lpFilename);

            [DllImport("KERNEL32.DLL", EntryPoint = "WritePrivateProfileStringW", SetLastError = true, CharSet = CharSet.Unicode, ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
            public static extern int WritePrivateProfileString(
              string lpAppName,
              string lpKeyName,
              string lpString,
              string lpFilename);
        }
        #endregion

        private readonly Field[] GlMachineFields = new Field[] 
        { 
            new Field("gl_ipAddress", typeof(string)),
            new Field("gl_loginName", typeof(string)),
            new Field("gl_password", typeof(string))
        };
        
        private readonly Field[] GraphScaleFields = new Field[] 
        { 
            new Field("SensorDeviation", typeof(int)),
            new Field("SensorWear", typeof(int))
        };
        
        private readonly Field[] ShipInfoFields = new Field[]
        { 
            new Field("VesselName",typeof(string),@"^[A-Za-z0-9-\+\.\s]+$"),
            new Field("ImoNo", typeof(string), @"^\d{7}$"),
            new Field("ClassificationSociety", typeof(string), @"^[A-Za-z0-9-\+\.\s]+$"),
            new Field("ClassRegisterNo", typeof(string), @"^[A-Za-z0-9-\+\.\s]+$"),
            new Field("Component", typeof(string), @"^[A-Za-z0-9-\+\.\s]+$"),
            new Field("EngineLicenser", typeof(string), @"^[A-Za-z0-9-\+\.\s]+$"),
            new Field("EngineMaker", typeof(string), @"^[A-Za-z0-9-\+\.\s]+$"),
            new Field("EngineType", typeof(string), @"^[A-Za-z0-9-\+\.\s]+$"),
            new Field("EngineSerialNumber", typeof(string), @"^[A-Za-z0-9-\+\.\s]+$")
        };

        private readonly Field[] TemperatureFields = new Field[] 
        { 
            new Field("enable", typeof(int)),
            new Field("sensorNumber", typeof(int)),
            new Field("rtdPerPlc", typeof(int)),           
            new Field("barScale", typeof(int)),
            new Field("barScaleDev", typeof(int)),
            new Field("rising", typeof(int)),
            new Field("falling", typeof(int)),
             new Field("mainbearing", typeof(int)),
            new Field("crankpin", typeof(int)),
            new Field("crosshead", typeof(int))
        };
       
        private readonly string TemperatureTable = "temperatureSettings";
        private readonly string TemperatureSensorTable = "temperature";
        private readonly string GlMachineTable = "glMachineSettings";
        private readonly string GraphScaleTable = "graphScale";
        private readonly string ShipInfoTable = "shipinfo";
        private readonly string SpuTable = "config";
        private readonly string FileName = "Amot_Settings.ini";
        private readonly string TemperatureFileName = "Temperature_Settings.ini";

        private const string temperatureHeading = "TEMPERATURE_SETTINGS";
        private const string temperatureSensorHeading = "TEMPERATURE_SENSOR_SETTINGS";      
        private const string ShipInfoHeading = "SHIP_INFO";
        private const string GraphSettingsHeading = "GRAPH_SETTINGS";
        private const string GlSettingsHeading = "GL_SETTINGS";
        private const string SpuSettingsHeading = "SPU_SETTINGS";
        private const string SpuSerialSettingsHeading = "SPU_SERIAL_CONFIG";
        private const string ExtSerialSettingsHeading = "EXT_SERIAL_CONFIG";


        private DatabaseSDK dbSDK;
        private DatabaseSDK dbSDKEvent;
        /// <summary>
        /// Constructs a IOSystemSettings object
        /// </summary>
        /// <param name="dbSDK">The database object to read and write the settings to and from</param>
        public IOSystemSettings(DatabaseSDK dbSDK)
        {
            this.dbSDK = dbSDK;
        }

        public IOSystemSettings(DatabaseSDK dbSDK, DatabaseSDK dbSDKEvent)
        {
            this.dbSDK = dbSDK;
            this.dbSDKEvent = dbSDKEvent;
        }

        /// <summary>
        /// Exports the system settings to a INI file
        /// </summary>
        /// <param name="path">The path to write the ini file too.</param>
        /// <returns>A FileInfo object that points at the ini file</returns>
        public FileInfo Export(string path)
        {
            string iniFilename = Path.Combine(path, this.FileName);

            if (File.Exists(iniFilename))
            {
                File.Delete(iniFilename);
            }

            //Create the file
            WriteSerialSEttingsToIniFile(iniFilename);
            WriteSpuSettingsToIniFile(iniFilename);
            WriteDatabaseFieldsToIniFile(this.ShipInfoFields, this.ShipInfoTable, ShipInfoHeading, iniFilename);
            WriteDatabaseFieldsToIniFile(this.GraphScaleFields, this.GraphScaleTable, GraphSettingsHeading, iniFilename);
            WriteDatabaseFieldsToIniFile(this.GlMachineFields, this.GlMachineTable, GlSettingsHeading, iniFilename);

            return new FileInfo(iniFilename);
        }

        /// <summary>
        /// Exports the temperature settings to a INI file
        /// </summary>
        /// <param name="path">The path to write the ini file too.</param>
        /// <returns>A FileInfo object that points at the ini file</returns>
        public FileInfo ExportTemperature(string path)
        {
            string iniFilename = Path.Combine(path, this.TemperatureFileName);

            if (File.Exists(iniFilename))
            {
                File.Delete(iniFilename);
            }

            //Create the file            
            WriteDatabaseFieldsToIniFile(this.TemperatureFields, this.TemperatureTable, temperatureHeading, iniFilename);
            WriteTemperatureSensorSettingsToIniFile(iniFilename);            

            return new FileInfo(iniFilename);
        }

        /// <summary>
        /// Imports the system settings from a ini file
        /// </summary>
        /// <param name="settingsFilename">The ini file that contains the settings to import</param>
        public void Import(string settingsFilename)
        {
            List<string> sql = new List<string>();
            SerialConfigData spuSerial = null;
            SerialConfigData extSerial = null;

            //Get all the categories from the settings file
            List<string> categories = GetCategories(settingsFilename);

            foreach (string category in categories)
            {
                switch (category)
                {
                    case ShipInfoHeading:
                        sql.Add(ReadIniFileSection(settingsFilename, category, ShipInfoFields, ShipInfoTable));
                        break;
                    case GraphSettingsHeading:
                        sql.Add(ReadIniFileSection(settingsFilename, category, GraphScaleFields, GraphScaleTable));
                        break;
                    case GlSettingsHeading:
                        sql.Add(ReadIniFileSection(settingsFilename, category, GlMachineFields, GlMachineTable));
                        break;
                    case SpuSettingsHeading:
                        sql.AddRange(ImportSPUSettings(settingsFilename, category));
                        break;
                    case SpuSerialSettingsHeading:
                        spuSerial = ImportSerialSettings(settingsFilename, category);
                        break;
                    case ExtSerialSettingsHeading:
                        extSerial = ImportSerialSettings(settingsFilename, category);
                        break;
                    default:
                        break;
                }
            }

            //Write the configuration to the database
            dbSDK.ExecuteSQLStatements(sql.ToArray());
            
            //Write serial configuration to the serial config
            SerialConfigTools.WriteNewSerialConfig(spuSerial, extSerial);
        }

        /// <summary>
        /// Imports the temperature settings from a ini file
        /// </summary>
        /// <param name="settingsFilename">The ini file that contains the settings to import</param>
        public void ImportTemperature(string settingsFilename)
        {
            List<string> sql = new List<string>();
            List<string> sqlEvent = new List<string>();

            //Get all the categories from the settings file
            List<string> categories = GetCategories(settingsFilename);

            foreach (string category in categories)
            {
                switch (category)
                {                    
                    case temperatureHeading:
                        sql.Add(ReadTemperatureIniFileSection(settingsFilename, category, TemperatureFields, TemperatureTable));
                        break;
                    case temperatureSensorHeading:
                        sqlEvent.AddRange(ImportTemperatureSensorSettings(settingsFilename, category));
                        break;
                    default:
                        break;
                }
            }

            //Write the configuration to the database
            dbSDK.ExecuteSQLStatements(sql.ToArray());
            dbSDKEvent.ExecuteSQLStatements(sqlEvent.ToArray());            
        }

        /// <summary>
        /// Imports the serial settings from a ini file
        /// </summary>
        /// <param name="settingsFilename">The ini file that holds the settings to import</param>
        /// <param name="section">The section to import the settinsg from</param>
        /// <returns>A SerialConfigData object that holds the imported settings</returns>
        private SerialConfigData ImportSerialSettings(string settingsFilename, string section)
        {
            SerialConfigData config = new SerialConfigData();

            config.BaudRate = int.Parse(GetIniFileString(settingsFilename, section, "BaudRate", string.Empty));
            config.DataBits = int.Parse(GetIniFileString(settingsFilename, section, "DataBits", string.Empty));
            config.Parity = (Parity)Enum.Parse(typeof(Parity), GetIniFileString(settingsFilename, section, "Parity", string.Empty));
            config.PortName = GetIniFileString(settingsFilename, section, "PortName", string.Empty);
            config.StopBits = (StopBits)Enum.Parse(typeof(StopBits), GetIniFileString(settingsFilename, section, "StopBits", string.Empty));

            if (!SerialConfigTools.ValidateSerialData(config))
            {
                throw new FormatException("Serial configuration data missing from file or invalid");
            }       

            return config;
        }

        /// <summary>
        /// Imports the SPU settings from a ini file
        /// </summary>
        /// <param name="settingsFilename">The ini file to import the settings from</param>
        /// <param name="section">The section in the file to import the setttings from</param>
        /// <returns>An array of sql commands that can be used to insert the imported settinng into a database</returns>
        private string[] ImportSPUSettings(string settingsFilename, string section)
        {
            List<string> result = new List<string>();

            List<string> keys = GetKeys(settingsFilename, section);

            foreach (string key in keys)
            {
                //Check if record exists in database
                using (DbDataReader reader = dbSDK.Select(dbSDK.GetDbConnection(), String.Format("Name FROM {0} WHERE Name = '{1}';", this.SpuTable, key)))
                {
                    if (reader.Read())
                    {
                        string value = GetIniFileString(settingsFilename, section, key, string.Empty);
                        //A corresponding record was found
                        //Write new value
                        result.Add(String.Format("UPDATE {0} SET Value = {1}, WEBupdate = {3} WHERE Name = '{2}';", this.SpuTable, value, key, DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks)));
                    }
                    else
                    {
                        //No corresponding record found. File is invalid
                        throw new FormatException(string.Format("Invalid SPU value record in file ({0})", key));
                    }
                }
            }

            return result.ToArray();
        }

        /// <summary>
        /// Imports the temprature sensor settings from a ini file
        /// </summary>
        /// <param name="settingsFilename">The ini file to import the settings from</param>
        /// <param name="section">The section in the file to import the setttings from</param>
        /// <returns>An array of sql commands that can be used to insert the imported settinng into a database</returns>
        private string[] ImportTemperatureSensorSettings(string settingsFilename, string section)
        {
            List<string> result = new List<string>();

            List<string> keys = GetKeys(settingsFilename, section);

            foreach (string key in keys)
            {                
                //Check if record exists in database
                using (DbDataReader reader = dbSDKEvent.Select(dbSDKEvent.GetDbConnection(), String.Format("channelID FROM {0} WHERE channelID = '{1}';", this.TemperatureSensorTable, key)))
                {
                    if (reader.Read())
                    {
                        string value = GetIniFileString(settingsFilename, section, key, string.Empty);
                        value.Trim();
                        string channelName = value.Substring(0, value.IndexOf(','));
                        value = value.Remove(0, value.IndexOf(',') + 1);
                        value.Trim();

                        string enable = value.Substring(0, value.IndexOf(','));
                        int temperatureEnable = 0;
                        if (enable.Equals("Disabled")) temperatureEnable = 0;
                        if (enable.Equals("Enabled")) temperatureEnable = 1;

                        value = value.Remove(0, value.IndexOf(',') + 1);
                        value.Trim();
                        string alarmLevelstring = value.Substring(0, value.IndexOf(','));
                        int alarmLevel = Convert.ToInt32(alarmLevelstring);

                        value = value.Remove(0, value.IndexOf(',') + 1);
                        value.Trim();
                        int slowdownLevel = Convert.ToInt32(value);


                        //A corresponding record was found
                        //Write new value
                        result.Add(String.Format("UPDATE {0} SET channelname = '{1}', temperatureEnable = {2}, alarmLevel = {3}, slowdownLevel = {4} WHERE ChannelID = {5};", this.TemperatureSensorTable, channelName, temperatureEnable, alarmLevel, slowdownLevel, key));
                    }
                    else
                    {
                        //No corresponding record found. File is invalid
                        throw new FormatException(string.Format("Invalid temperature value record in file ({0})", key));
                    }
                }
            }

            return result.ToArray();
        }

        /// <summary>
        /// Writes the SPU settings to a ini file
        /// </summary>
        /// <param name="settingsFilename">The ini file to write the settings to.</param>
        private void WriteSpuSettingsToIniFile(string settingsFilename)
        {
            using (DbDataReader reader = dbSDK.Select(dbSDK.GetDbConnection(), String.Format("* FROM {0};", this.SpuTable)))
            {
                while (reader.Read()) //Read all returned records
                {
                    string description = reader.GetString(reader.GetOrdinal("Name"));
                    string value = reader.GetInt32(reader.GetOrdinal("Value")).ToString();
                    NativeMethods.WritePrivateProfileString(SpuSettingsHeading, description, value, settingsFilename);
                }
            }
        }

        /// <summary>
        /// Writes the temperature sensor settings to a ini file
        /// </summary>
        /// <param name="settingsFilename">The ini file to write the settings to.</param>
        private void WriteTemperatureSensorSettingsToIniFile(string settingsFilename)
        {
            using (DbDataReader reader = this.dbSDKEvent.Select(dbSDKEvent.GetDbConnection(), String.Format("* FROM {0};", this.TemperatureSensorTable)))
            {
                while (reader.Read()) //Read all returned records
                {
                    int description = reader.GetInt32(reader.GetOrdinal("ChannelID"));
                    string channel = (description).ToString();
                    string value = reader.GetString(reader.GetOrdinal("channelname"));
                    if (reader.GetInt32(reader.GetOrdinal("temperatureEnable")) == 0) { value += ",Disabled"; }
                    else { value += ",Enabled"; }
                    value += ("," + reader.GetInt32(reader.GetOrdinal("alarmLevel")).ToString());
                    value += ("," + reader.GetInt32(reader.GetOrdinal("slowdownLevel")).ToString());                    
                    NativeMethods.WritePrivateProfileString(temperatureSensorHeading, channel, value, settingsFilename);
                }
            }
        }

        /// <summary>
        /// Writes the database fields defind in fields from table into a ini file
        /// </summary>
        /// <param name="fields">The fields to read form the datagbase and write to the ini file</param>
        /// <param name="table">The table to read the fields from</param>
        /// <param name="section">The section to write the fields too in the ini file</param>
        /// <param name="settingsFilename">The ini file to write the settings to</param>
        private void WriteDatabaseFieldsToIniFile(Field[] fields, string table, string section, string settingsFilename)
        {
            //Read fields from database
            using (DbDataReader reader = dbSDK.Select(dbSDK.GetDbConnection(), String.Format("* from {0};", table)))
            {
                if (reader.Read())
                {
                    foreach (Field field in fields)
                    { 
                        if (field.Type == typeof(string))
                        {
                            NativeMethods.WritePrivateProfileString(section, field.Name, reader.GetString(reader.GetOrdinal(field.Name)).ToString(), settingsFilename);
                        }
                        else if (field.Type == typeof(int))
                        {
                            NativeMethods.WritePrivateProfileString(section, field.Name, reader.GetInt64(reader.GetOrdinal(field.Name)).ToString(), settingsFilename);
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Writes the serial configuration settings to a ini file.
        /// </summary>
        /// <param name="settingsFilename">The ini file to write the settings to.</param>
        private void WriteSerialSEttingsToIniFile(string settingsFilename)
        {
            //Get reqd data from SerialConfigTools
            SerialConfigData spuSerial;
            SerialConfigData extSerial;

            SerialConfigTools.ReadSerialConfig(out spuSerial, out extSerial);

            NativeMethods.WritePrivateProfileString(SpuSerialSettingsHeading, "BaudRate", spuSerial.BaudRate.ToString(), settingsFilename);
            NativeMethods.WritePrivateProfileString(SpuSerialSettingsHeading, "DataBits", spuSerial.DataBits.ToString(), settingsFilename);
            NativeMethods.WritePrivateProfileString(SpuSerialSettingsHeading, "Parity", spuSerial.Parity.ToString(), settingsFilename);
            NativeMethods.WritePrivateProfileString(SpuSerialSettingsHeading, "PortName", spuSerial.PortName.ToString(), settingsFilename);
            NativeMethods.WritePrivateProfileString(SpuSerialSettingsHeading, "StopBits", spuSerial.StopBits.ToString(), settingsFilename);

            NativeMethods.WritePrivateProfileString(ExtSerialSettingsHeading, "BaudRate", extSerial.BaudRate.ToString(), settingsFilename);
            NativeMethods.WritePrivateProfileString(ExtSerialSettingsHeading, "DataBits", extSerial.DataBits.ToString(), settingsFilename);
            NativeMethods.WritePrivateProfileString(ExtSerialSettingsHeading, "Parity", extSerial.Parity.ToString(), settingsFilename);
            NativeMethods.WritePrivateProfileString(ExtSerialSettingsHeading, "PortName", extSerial.PortName.ToString(), settingsFilename);
            NativeMethods.WritePrivateProfileString(ExtSerialSettingsHeading, "StopBits", extSerial.StopBits.ToString(), settingsFilename);
        }

        private string ReadIniFileSection(string iniFile, string section, Field[] fields, string table)
        {
            StringBuilder result = new StringBuilder(String.Format("INSERT INTO {0} VALUES(", table));
            foreach(Field field in fields)
            {
                string value = GetIniFileString(iniFile, section, field.Name, string.Empty);
                {
                    if (field.Type == typeof(string))
                    {
                        if (field.Valid(value))
                        {
                            result.AppendFormat("'{0}',", value);
                        }
                        else
                        {
                            throw new FormatException(string.Format("The value {0} is invalid for field {1}",value,field.Name));
                        }
                    }
                    else
                    {
                        if (value != string.Empty)
                        {
                            result.AppendFormat("{0},",value);
                        }
                    }
                }
            }

            //Remove last comma and add closing bracket to SQL string
            result.Remove(result.Length - 1, 1);
            result.Append(");");

            return result.ToString();
        }

        private string ReadTemperatureIniFileSection(string iniFile, string section, Field[] fields, string table)
        {
            StringBuilder result = new StringBuilder(String.Format("INSERT INTO {0} VALUES(", table));
            foreach (Field field in fields)
            {
                string value = GetIniFileString(iniFile, section, field.Name, string.Empty);
                {
                    if (field.Name.Equals("sensorNumber") && (Convert.ToInt16(value) < 1))
                    {
                        value = "INVALID";
                    }

                    if (field.Type == typeof(string))
                    {
                        if (field.Valid(value))
                        {
                            result.AppendFormat("'{0}',", value);
                        }
                        else
                        {
                            throw new FormatException(string.Format("The value {0} is invalid for field {1}", value, field.Name));
                        }
                    }
                    else
                    {
                        if (value != string.Empty)
                        {
                            result.AppendFormat("{0},", value);
                        }
                    }
                }
            }

            //Remove last comma and add closing bracket to SQL string
            result.Remove(result.Length - 1, 1);
            result.Append(");");

            return result.ToString();
        }        

        // <summary>
        /// Gets the content.
        /// </summary>
        /// <param name="iniFile">The ini file.</param>
        /// <param name="category">The category.</param>
        /// <param name="key">The key.</param>
        /// <param name="defaultValue">The default value.</param>
        /// <returns></returns>
        private static string GetIniFileString(string iniFile, string category, string key, string defaultValue)
        {
            string returnString = new string(' ', 1024);
            NativeMethods.GetPrivateProfileString(category, key, defaultValue, returnString, 1024, iniFile);
            return returnString.Split('\0')[0];
        }

        /// <summary>
        /// Gets the keys.
        /// </summary>
        /// <param name="iniFile">The ini file.</param>
        /// <param name="category">The category.</param>
        private static List<string> GetKeys(string iniFile, string category)
        {
            string returnString = new string(' ', 32768);
            NativeMethods.GetPrivateProfileString(category, null, null, returnString, 32768, iniFile);
            List<string> result = new List<string>(returnString.Split('\0'));
            result.RemoveRange(result.Count - 2, 2);
            return result;
        }

        /// <summary>
        /// Gets the categories.
        /// </summary>
        /// <param name="iniFile">The ini file.</param>
        /// <returns></returns>
        private static List<string> GetCategories(string iniFile)
        {
            string returnString = new string(' ', 65536);
            NativeMethods.GetPrivateProfileString(null, null, null, returnString, 65536, iniFile);
            List<string> result = new List<string>(returnString.Split('\0'));
            result.RemoveRange(result.Count - 2, 2);
            return result;
        }
    }
}
