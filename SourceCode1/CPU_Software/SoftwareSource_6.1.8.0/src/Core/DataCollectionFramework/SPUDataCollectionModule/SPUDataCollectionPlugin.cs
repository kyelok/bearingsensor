/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using FaultErrorIndicators;
using HelperClasses;
using ModbusDb;
using DataCollectionSDK;
using Configuration;
using System.Threading;
using EventLogging;
using System.Management;
using System.Text;
using System.Security.Cryptography;
using System.Net.NetworkInformation;

namespace ModbusClientPlugin
{
    /// <summary>
    /// Modbus client plugin. Consumes data from the Modbus and saves this to the database
    /// </summary>
    public class SPUDataCollectionPlugin : IExtInterface
    {
        /// <summary>
        /// The amount of time to wait for the database to unlock
        /// </summary>
        private int dbRetryDuration;

        /// <summary>
        /// The number of times to retry a database operation
        /// </summary>
        private int dbRetryCount;

        /// <summary>
        /// Delete period when the database is running out of space
        /// </summary>
        private int dbDeletePeriod;

        private string databaseName;
        private bool initialize = true;
        Int64 lastTimeStamp;

        private bool registered = true;

        /// <summary>
        /// Modbus slave unit Id
        /// </summary>
        private byte modbusSlaveUnitId;

        readonly object syncRoot = new object();

        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        /// <summary>
        /// Return amount of milliseconds between executions
        /// </summary>
        public int RunSchedule
        { get; set; }

        /// <summary>
        /// Return amount of milliseconds between writing to logfile
        /// </summary>
        public int LogSchedule
        { get; set; }

        public object SyncRoot
        {
            get
            {
                return syncRoot;
            }
        }

        /// <summary>
        /// Stop any internal services
        /// </summary>
        public void Stop()
        {
            //DoNothing
        }

        /// <summary>
        /// Flag indicating that this is a realtime task
        /// </summary>
        public bool Realtime
        {
            get
            {
                return true;
            }
        }

        private ModbusSDK connection;

        private DatabaseSDK database;        

        /// <summary>
        /// The module configuration for this object
        /// </summary>
        ModuleConfiguration configuration;

        /// <summary>
        /// Data structs of modbus readings
        /// </summary>
        Registers[] registers;

        /// <summary>
        /// Constructor
        /// </summary>
        public SPUDataCollectionPlugin()
        {
            configuration = ModuleConfiguration.GetApplicationConfiguration();
            ModbusDbRegistersSection registers = configuration.GetSection("ModbusRegisters") as ModbusDbRegistersSection;
            SPUDataCollectionConfigSection moduleSettings = configuration.GetSection("SPUDataCollectionPlugin") as SPUDataCollectionConfigSection;
            DataCollectionConfigurationSection dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;

            if (moduleSettings == null)
                moduleSettings = new SPUDataCollectionConfigSection();
            if (dataCollectionConfig == null)
                dataCollectionConfig = new DataCollectionConfigurationSection();

            this.registers = registers.Registers;
            //Sort the registers by table name
            //WARNING!!!!! The rest of the code assumes that the registers are sorted by table name
            Array.Sort(this.registers, new TableComparer());

            modbusSlaveUnitId = dataCollectionConfig.Mobus.ModbusSlaveUnitId;

            RunSchedule = moduleSettings.Settings.RunSchedule;
            LogSchedule = moduleSettings.Settings.LogSchedule;

            dbRetryDuration = dataCollectionConfig.Database.DbRetryDuration;
            dbRetryCount = dataCollectionConfig.Database.DbRetryCount;
            dbDeletePeriod = moduleSettings.Settings.DbDeletePeriod;
            databaseName = dataCollectionConfig.Database.DataLogger;

            this.connection = new ModbusSDK(moduleSettings.Settings.ModbusAddress, moduleSettings.Settings.ModbusPort, moduleSettings.Settings.ModbusTimeout);
            this.lastTimeStamp = 0;
        }

        /// <summary>
        /// Sets up the plugin for operation
        /// </summary>
        public void Init()
        {
            TemperatureGloabal.LostCommunicationSpu = false;            
            database = new DatabaseSDK(databaseName, this.dbRetryCount, this.dbRetryDuration, this.dbDeletePeriod);
            InitialiseDb();            

            string keyFile = @"c:\AMOT\Key.txt";
            string password = "AmotXtsw22015revion107EncryptKey";
            string tempFile = @"c:\match2.txt";

            string decryptedKey = string.Empty;
            string tempString = string.Empty;

            string cpuID = string.Empty;
            ManagementClass mc = new ManagementClass("win32_processor");
            ManagementObjectCollection moc = mc.GetInstances();

            foreach (ManagementObject mo in moc)
            {
                if (cpuID == "")
                {
                    //Remark gets only the first CPU ID
                    cpuID = mo.Properties["processorID"].Value.ToString();

                }
            }

            string macAddr = GetMacAddress1();
            //if (macAddr.Length > 1) macAddr = macAddr.Remove(0, 1);
            //if (macAddr.Length > 1) macAddr = macAddr.Remove(macAddr.Length - 1, 1);

            cpuID = cpuID + "-" + macAddr;

            decryptedKey = string.Empty;
            tempString = string.Empty;
            try
            {
                if (File.Exists(keyFile))
                {
                    if (File.Exists(tempFile))
                    {
                        File.Delete(tempFile);
                    }

                    Decrypt(keyFile, tempFile, password);

                    using (StreamReader sr = File.OpenText(tempFile))
                    {
                        tempString = sr.ReadToEnd();
                        sr.Close();
                    }

                    if (File.Exists(tempFile))
                    {
                        File.Delete(tempFile);
                    }
                }
                else
                {
                    //FaultErrorIndicators.Faults.Instance.SignalFault(FaultCodes.IMOModifiedError);
                    registered = false;
                }

                String sFinal = tempString;
                String scpuID = cpuID;

                //compare the new CPUID with decrypted, if different send error code to RIA
                if (!sFinal.Trim().Equals(scpuID.Trim()))
                {
                    //FaultErrorIndicators.Faults.Instance.SignalFault(FaultCodes.IMOModifiedError);
                    registered = false;
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                //FaultErrorIndicators.Faults.Instance.SignalFault(FaultCodes.IMOModifiedError);
                registered = false;
            }  
        }

        /// <summary>
        /// Sets up database once it is connected. Creates tables, indexes and triggers
        /// </summary>
        private void InitialiseDb()
        {
            List<string> sqlStatements = new List<string>();
            string sqlColumns = "time_stamp INTEGER, ";
            string table = this.registers[0].Table;
            int numberOfStatements = 3;

            //The registers array is already sorted by table name create sql create string for each table
            foreach (Registers r in this.registers)
            {
                if (r.Table == table)
                {
                    sqlColumns = sqlColumns + r.CreateColums();
                }
                else
                {
                    sqlColumns = sqlColumns.TrimEnd(new char[] { ',' });
                    sqlStatements.Add(string.Format("CREATE TABLE IF NOT EXISTS {0} ({1});", table, sqlColumns));
                    sqlStatements.Add(string.Format("CREATE INDEX IF NOT EXISTS {0}_index ON {0} (time_stamp);", table));
                    sqlStatements.Add(string.Format("CREATE TRIGGER IF NOT EXISTS del_old_{0}_records AFTER INSERT ON {0} BEGIN DELETE FROM {0} WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM {0} ) - 157784630); END;", table));
                    table = r.Table;
                    numberOfStatements += 3;
                    sqlColumns = "time_stamp INTEGER, ";
                    sqlColumns = sqlColumns + r.CreateColums();
                }
            }

            if (sqlStatements.Count != numberOfStatements)
            {
                //Add the last set of statements to the list
                sqlColumns = sqlColumns.TrimEnd(new char[] { ',' });
                sqlStatements.Add(string.Format("CREATE TABLE IF NOT EXISTS {0} ({1});", table, sqlColumns));
                sqlStatements.Add(string.Format("CREATE INDEX IF NOT EXISTS {0}_index ON {0} (time_stamp);", table));
                sqlStatements.Add(string.Format("CREATE TRIGGER IF NOT EXISTS del_old_{0}_records AFTER INSERT ON {0} BEGIN DELETE FROM {0} WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM {0} ) - 157784630); END;", table));
            }

            // Create a view of all the data
            sqlStatements.Add("CREATE VIEW IF NOT EXISTS trendsView AS " +
                "SELECT senValComp.time_stamp AS time_stamp,* FROM senValComp " +
                "JOIN senDevComp ON senValComp.time_stamp == senDevComp.time_stamp " +
                "JOIN CylAveComp ON senValComp.time_stamp == CylAveComp.time_stamp " +
                "JOIN CylDevComp ON senValComp.time_stamp == CylDevComp.time_stamp " +
                "JOIN SLEM ON senValComp.time_stamp == SLEM.time_stamp " +
                "JOIN Rpm ON senValComp.time_stamp == Rpm.time_stamp " +
                "JOIN WaterInOil ON senValComp.time_stamp == WaterInOil.time_stamp;");

            //Ignore the return value
            //If the database create fails then there is not much we can
            //do.
            this.database.ExecuteSQLStatements(sqlStatements.ToArray(), FaultErrorIndicators.FaultCodes.DataLoggerDatabaseWriteFailure, FaultErrorIndicators.FaultCodes.DataLoggerDatabaseFailure, FaultErrorIndicators.FaultCodes.DataLoggerDatabaseMissedLog);
        }



        /// <summary>
        /// Called according to the logSchedule
        /// </summary>
        public void Log(DateTime logTime)
        {
            List<string> sqlStatements = new List<string>();
            string sqlColumns;
            Int64 timeStamp;
            string sqlValues;
            string table = this.registers[0].Table;
            int numberOfTables = 1;

            int roundBy = (10000 * 10000);
            timeStamp = DatabaseSDK.ConvertToUnixTimestamp(((logTime.Ticks + (roundBy / 2)) / roundBy) * roundBy);

            if (this.lastTimeStamp != 0)
            {
                if (this.lastTimeStamp == timeStamp)
                {
                    //logger.WarnFormat("Duplicate timestamp - SPU {0} {1}", timeStamp, this.lastTimeStamp);
                    return;
                }
            }

            this.lastTimeStamp = timeStamp;

            sqlValues = String.Format("{0}, ", timeStamp);
            sqlColumns = "time_stamp, ";


            bool spuConnected = (Faults.Instance.IsSignaled(FaultCodes.RTUNoRS485Comms) || Faults.Instance.IsSignaled(FaultCodes.ModbusReadFailure));
            if (registered == true)
            {

            //The registers array is already sorted by table name create sql insert string for each table
            foreach (Registers r in this.registers)
            {
                if (!(r.Description.Equals("Temperature sensor values")))
                {
                    lock (this.SyncRoot)
                    {
                        if (r.Table == table)
                        {
                                    sqlColumns = sqlColumns + r.ColumnNames();
                                    sqlValues = sqlValues + r.Values(TemperatureGloabal.LostCommunicationSpu);
                                }
                                else
                                {
                            sqlColumns = sqlColumns.TrimEnd(new char[] { ',', ' ' });
                            sqlValues = sqlValues.TrimEnd(new char[] { ',', ' ' });
                            sqlStatements.Add(string.Format("insert into {0} ( {1} ) VALUES ( {2} );", table, sqlColumns, sqlValues));
                            table = r.Table;
                            numberOfTables++;
                            sqlColumns = "time_stamp, ";
                            sqlValues = String.Format("{0}, ", timeStamp);

                            sqlColumns = sqlColumns + r.ColumnNames();
                            sqlValues = sqlValues + r.Values(TemperatureGloabal.LostCommunicationSpu);
                        }
                    }
                }
            }

            if (sqlStatements.Count != numberOfTables)
            {
                //Add the last set of statements to the list
                sqlColumns = sqlColumns.TrimEnd(new char[] { ',', ' ' });
                sqlValues = sqlValues.TrimEnd(new char[] { ',', ' ' });
                sqlStatements.Add(string.Format("insert into {0} ( {1} ) VALUES ( {2} );", table, sqlColumns, sqlValues));
            }

            //Insert the data into the database
            if (this.database.ExecuteSQLStatements(sqlStatements.ToArray(), FaultErrorIndicators.FaultCodes.DataLoggerDatabaseWriteFailure, FaultErrorIndicators.FaultCodes.DataLoggerDatabaseFailure, FaultErrorIndicators.FaultCodes.DataLoggerDatabaseMissedLog) == false)
            {
                //Something very bad happened to the database when inserting the
                //data.  We need to re-create the database.
                this.InitialiseDb();
            }

            System.GC.Collect();
        }
        }

        /// <summary>
        /// Called by ScheduleCreator, calls ModbusRead() to get data from Modbus
        /// </summary>
        public void Run()
        {
            if (this.initialize == true)
            {
                this.initialize = false;
                string version = "";
                string[] lines = System.IO.File.ReadAllLines(@"d:\versionnumbers.txt");
                foreach (string line in lines)
                {
                    if (line.Contains("SPUAlarmMonitor") == true) { version = line.Remove(0, 16); version.Trim(); }
                }

                //logger.WarnFormat("Software version: '{0}' ", version);
                EventLog log = new EventLog();
                log.SystemStartup(version);
            }
                try
                {
                    // Read each register
                    foreach (Registers reg in registers)
                    {
                        if (!(reg.Description.Equals("Temperature sensor values")))
                        {
                            // Throws exception InvalidOperationException when disconnected
                            int retryCount = 1;
                            while (retryCount < 3)
                            {
                                try
                                {
                                    ushort[] buffer = this.connection.ReadHoldingRegisters(modbusSlaveUnitId, reg.StartReg, reg.Count);
                                    lock (this.SyncRoot)
                                    {
                                        for (int i = 0; i < Math.Min(reg.Count, buffer.Length); i++)
                                        {
                                            reg.Value[i] = (Int16)buffer[i];
                                        }
                                        buffer = null;
                                    }
                                    retryCount = 3;
                                    TemperatureGloabal.LostCommunicationSpu = false;
                                }
                                catch (Modbus.SlaveException se)
                                {
                                    if (se.SlaveExceptionCode == 11 && retryCount < 3)
                                    {
                                        //Timeout retry the request.
                                        retryCount++;
                                        if (retryCount == 3)
                                        {
                                            TemperatureGloabal.LostCommunicationSpu = true;
                                            throw;
                                        }
                                        continue;
                                    }
                                    else
                                    {
                                        throw;
                                    }
                                }
                            }
                            //if (TemperatureGloabal.LostCommunicationSpu == true) break;
                        }

                        Faults.Instance.ClearFault(FaultCodes.ModbusReadFailure);
                    }
                }
                catch (Exception e)
                {
                    TemperatureGloabal.LostCommunicationSpu = true;
                    if (e is IOException)
                    {
                        Faults.Instance.SignalFault(FaultCodes.ModbusConnectionFailure);
                        logger.ErrorFormat("Failure during read: {0} ", e.ToString());
                        this.connection.Close();
                    }
                    else if (e is Modbus.SlaveException)
                    {
                        Faults.Instance.SignalFault(FaultCodes.ModbusReadFailure);
                        logger.ErrorFormat("Failure during read: {0} ", e.ToString());
                    }
                    else
                    {
                        throw;
                    }
                }
            }

        // Decrypt a file into another file using a password 
        public static void Decrypt(string fileIn,
                    string fileOut, string Password)
        {

            // First we are going to open the file streams 
            FileStream fsIn = new FileStream(fileIn,
                        FileMode.Open, FileAccess.Read);
            FileStream fsOut = new FileStream(fileOut,
                        FileMode.OpenOrCreate, FileAccess.Write);

            // Then we are going to derive a Key and an IV from
            // the Password and create an algorithm 
            PasswordDeriveBytes pdb = new PasswordDeriveBytes(Password,
                new byte[] {0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 
            0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76});
            Rijndael alg = Rijndael.Create();

            alg.Key = pdb.GetBytes(32);
            alg.IV = pdb.GetBytes(16);

            // Now create a crypto stream through which we are going
            // to be pumping data. 
            // Our fileOut is going to be receiving the Decrypted bytes. 
            CryptoStream cs = new CryptoStream(fsOut,
                alg.CreateDecryptor(), CryptoStreamMode.Write);

            // Now will will initialize a buffer and will be 
            // processing the input file in chunks. 
            // This is done to avoid reading the whole file (which can be
            // huge) into memory. 
            int bufferLen = 4096;
            byte[] buffer = new byte[bufferLen];
            int bytesRead;

            do
            {
                // read a chunk of data from the input file 
                bytesRead = fsIn.Read(buffer, 0, bufferLen);

                // Decrypt it 
                cs.Write(buffer, 0, bytesRead);

            } while (bytesRead != 0);

            // close everything 
            cs.Close(); // this will also close the unrelying fsOut stream 
            fsIn.Close();
        }        

        private string GetMacAddress1()
        {
            string macAddresses = string.Empty;

            foreach (NetworkInterface nic in NetworkInterface.GetAllNetworkInterfaces())
            {
                if (nic.GetPhysicalAddress().ToString().Trim() != "")
                {
                    macAddresses += nic.GetPhysicalAddress().ToString();
                    break;
                }                
        }
    
            return macAddresses;
        }
    }        
}
