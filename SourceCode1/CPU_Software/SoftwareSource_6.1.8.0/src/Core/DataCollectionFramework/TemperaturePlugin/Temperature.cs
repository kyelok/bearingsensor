using System;
using System.Collections.Generic;
using System.IO;
using DataCollectionSDK;
using EventLogging;
using FaultErrorIndicators;
using HelperClasses;
using AMOTConstants;
using System.Text;
using System.Data.Common;
using Configuration;
using WebServiceObjects;
using System.Threading;
using System.Linq;
using ModbusDb;
using WebService;
using Modbus;

namespace TemperaturePlugin
{
    public class TemperaturePlugin : IExtInterface
    {
        public ushort[] tempbyteArray;
        public ushort[] tempbyteArrayPlcTemperature;
        public ushort[] tempbyteArrayPlcStatus;
        public ushort[] tempbyteArrayRegister;
        public ushort[] tempbyteArrayRegisterCmp;
        private IEnumerable<ushort> tempbyte = null;
        //private IEnumerable<ushort> tempbyteReg = null;
        private ushort[] tempbyte1 = null;
        private ushort[] tempbyte2 = null;
        private ushort[] tempbyte3 = null;
        private ushort[] tempbyte4 = null;

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
        private string databaseName_event;
        private string databaseName_config;

        Int64 lastTimeStamp;

        /// <summary>
        /// Modbus slave unit Id
        /// </summary>
        private byte modbusSlaveUnitId;
        private byte TempModbusSlaveUnitId2 = 2;
        private byte TempModbusSlaveUnitId3 = 3;
        private byte TempModbusSlaveUnitId4 = 4;
        private byte TempModbusSlaveUnitId5 = 5;
        private byte ChannelPerPLC = 28;
        private byte TotalReadingFromPLC = 56;

        readonly object syncRoot = new object();

        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        private EventLogging.EventLog eventLog;

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

        private bool nosensor = false;
        private bool initialize = true;
        private static bool[] alarmset;
        private static bool[] Slowdownset;
        private bool slowdownHasset = false;
		private bool alarmHasset = false;
        private UInt64 [] PlcModuleLossComm1;
        
        private bool powerOnDelay;
        /// <summary>
        /// Internal Modbus connection
        /// </summary>
        // TODO: RENAME THIS TO MODBUS!!
        public ModbusSDK ModbusInternal
        {
            get
            {
                return mobusInternal_Internal;
            }
        }
        /// <summary>
        /// Internal Modbus connection. Do not use this directly.
        /// </summary>
        private ModbusSDK mobusInternal_Internal;

        private ModbusSDK connection;

        private DatabaseSDK database;
        private DatabaseSDK database_event;
        private DatabaseSDK database_config;

        public TemperatureDatabaseObject[] activeTemperature;

        /// <summary>
        /// The module configuration for this object
        /// </summary>
        ModuleConfiguration configuration;

        private ushort TemperatureHigh = 250;
        private ushort TemperatureLow = 20;

        /// <summary>
        /// Data structs of modbus readings
        /// </summary>
        Registers[] registers;

        /// <summary>
        /// The Temperature configuration for this object
        /// </summary>
        TemperaturePluginConfigSection temperaturePluginConfiguration;

        /// <summary>
        /// Constructor
        /// </summary>
        public TemperaturePlugin()
        {
            configuration = ModuleConfiguration.GetApplicationConfiguration();
            ModbusDbRegistersSection registers = configuration.GetSection("ModbusRegisters") as ModbusDbRegistersSection;
            SPUDataCollectionConfigSection moduleSettings = configuration.GetSection("SPUDataCollectionPlugin") as SPUDataCollectionConfigSection;
            DataCollectionConfigurationSection dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;
            temperaturePluginConfiguration = configuration.GetSection("TemperaturePlugin") as TemperaturePluginConfigSection;

            if (moduleSettings == null)
                moduleSettings = new SPUDataCollectionConfigSection();
            if (dataCollectionConfig == null)
                dataCollectionConfig = new DataCollectionConfigurationSection();
            if (temperaturePluginConfiguration == null)
                temperaturePluginConfiguration = new TemperaturePluginConfigSection();

            eventLog = new EventLogging.EventLog();
            mobusInternal_Internal = new ModbusSDK(ModbusSDK.ModbusPort.Internal);

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
            databaseName_event = dataCollectionConfig.Database.EventLog;
            databaseName_config = dataCollectionConfig.Database.ConfigurationDb;

            this.connection = new ModbusSDK(moduleSettings.Settings.ModbusAddress, dataCollectionConfig.Mobus.ModbusTemperatureHostPort, moduleSettings.Settings.ModbusTimeout);
            this.lastTimeStamp = 0;
        }

        /// <summary>
        /// Sets up the plugin for operation
        /// </summary>
        public void Init()
        {
            database = new DatabaseSDK(databaseName, this.dbRetryCount, this.dbRetryDuration, this.dbDeletePeriod);
            database_event = new DatabaseSDK(databaseName_event, this.dbRetryCount, this.dbRetryDuration, this.dbDeletePeriod);
            database_config = new DatabaseSDK(databaseName_config, this.dbRetryCount, this.dbRetryDuration, this.dbDeletePeriod);
            activeTemperature = new TemperatureDatabaseObject[64];
            for (int i = 0; i < activeTemperature.Length; i++)
            {
                activeTemperature[i] = new TemperatureDatabaseObject(i);
            }
            InitialiseDb();
            EventLog log = new EventLog();
            //log.SystemStartup();

            TemperatureGloabal.AlarmList = new ushort[4];
            TemperatureGloabal.SlowdownList = new ushort[4];
            TemperatureGloabal.ConnectionStatusList = new ushort[4];
            TemperatureGloabal.LosePowerList = new ushort[4];
            TemperatureGloabal.ShortStatusList = new ushort[4];
            TemperatureGloabal.OpenStatusList = new ushort[4];

            alarmset = new bool[64];
            Slowdownset = new bool[64];
            PlcModuleLossComm1 = new UInt64[64];
            
            powerOnDelay = true;
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
                "JOIN temperature ON senValComp.time_stamp == temperature.time_stamp " +
                "JOIN SLEM ON senValComp.time_stamp == SLEM.time_stamp " +
                "JOIN Rpm ON senValComp.time_stamp == Rpm.time_stamp " +
                "JOIN WaterInOil ON senValComp.time_stamp == WaterInOil.time_stamp;");
            
            InitialiseDbTemperaure();
        }

        private void InitialiseDbTemperaure()
        {
            List<string> sqlStatements = new List<string>();
            //Ignore the return value
            //If the database create fails then there is not much we can
            //do.
            this.database.ExecuteSQLStatements(sqlStatements.ToArray(), FaultErrorIndicators.FaultCodes.DataLoggerDatabaseWriteFailure, FaultErrorIndicators.FaultCodes.DataLoggerDatabaseFailure, FaultErrorIndicators.FaultCodes.DataLoggerDatabaseMissedLog);

            StringBuilder sqlStatement = new StringBuilder();

            sqlStatement.Append("CREATE TABLE IF NOT EXISTS temperature (");
            sqlStatement.Append("    channelID integer primary key,");   // Unique channel Id
            sqlStatement.Append("    channelname TEXT NOT NULL,");             // channel name
            sqlStatement.Append("    temperatureEnable boolean,");             // temperature  enable
            sqlStatement.Append("    temperature integer,");             // temperature            
            sqlStatement.Append("    temperatureAlarm boolean,");             // temperature  alarm          
            sqlStatement.Append("    temperatureSlowdown boolean,");             // temperature  slowdown            
            sqlStatement.Append("    alarmLevel integer,");             // alarmlevel            
            sqlStatement.Append("    slowdownLevel integer,");             // slowdownLevel
            sqlStatement.Append("    temperatureDev integer,");             // temperatureDev 
            sqlStatement.Append("    rtdGood boolean");             //
            sqlStatement.Append(");");

            database_event.ExecuteSQLStatements(new String[] { sqlStatement.ToString() }, FaultErrorIndicators.FaultCodes.EventLogWriteFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog);

            sqlStatement = new StringBuilder();            
            sqlStatement.Append("CREATE TABLE IF NOT EXISTS temperatureSettings (");            
            sqlStatement.Append("    enable integer,");
            sqlStatement.Append("    sensorNumber integer,");
            sqlStatement.Append("    rtdPerPlc integer,");
            sqlStatement.Append("    barScale integer,");
            sqlStatement.Append("    barScaleDev integer,");
            sqlStatement.Append("    rising integer,");
            sqlStatement.Append("    falling integer,");
            sqlStatement.Append("    mainbearing integer,");
            sqlStatement.Append("    crankpin integer,");
            sqlStatement.Append("    crosshead integer");
            sqlStatement.Append(");");
            database_config.ExecuteSQLStatements(new String[] { sqlStatement.ToString() }, FaultErrorIndicators.FaultCodes.EventLogWriteFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog);

            bool databaseupdate = false;

            using (DbDataReader reader = database_config.Select(database_config.GetDbConnection(), "* FROM temperatureSettings;"))
            {
                if (reader.Read())
                {
                    try
                    {
                        //model.enable = reader.GetInt32(reader.GetOrdinal("enable"));
                        TemperatureGloabal.SensorNumber = (short)reader.GetInt32(reader.GetOrdinal("sensorNumber"));
                        TemperatureGloabal.RtdPerPlc = (short)reader.GetInt32(reader.GetOrdinal("rtdPerPlc"));
                        TemperatureGloabal.GraphScale = (short)reader.GetInt32(reader.GetOrdinal("barScale"));
                        TemperatureGloabal.DevGraphScale = (short)reader.GetInt32(reader.GetOrdinal("barScaleDev"));
                        TemperatureGloabal.Rising = (short)reader.GetInt32(reader.GetOrdinal("rising"));
                        TemperatureGloabal.Falling = (short)reader.GetInt32(reader.GetOrdinal("falling"));
                        TemperatureGloabal.MainbearingNumber = (short)reader.GetInt32(reader.GetOrdinal("mainbearing"));
                        TemperatureGloabal.CrankpinbearingNumber = (short)reader.GetInt32(reader.GetOrdinal("crankpin"));
                        TemperatureGloabal.CrossheadbearingNumber = (short)reader.GetInt32(reader.GetOrdinal("crosshead"));
                    }
                    catch (Exception e)
                    {
                        logger.WarnFormat("Update temperature setting database");
                        databaseupdate = true;
                    }
                }
                else
                {
                    TemperatureGloabal.SensorNumber = temperaturePluginConfiguration.Settings.NumberOfSensors;
                    TemperatureGloabal.RtdPerPlc = temperaturePluginConfiguration.Settings.RtdNumberPerModule;
                    TemperatureGloabal.GraphScale = (short)temperaturePluginConfiguration.Settings.BarScaleTemperature;
                    TemperatureGloabal.DevGraphScale = (short)temperaturePluginConfiguration.Settings.BarScaleTemperatureDev;
                    TemperatureGloabal.Rising = 5;
                    TemperatureGloabal.Falling = 5;
                    TemperatureGloabal.MainbearingNumber = 0;
                    TemperatureGloabal.CrankpinbearingNumber = 0;
                    TemperatureGloabal.CrossheadbearingNumber = 0;
                
                    database_config.ExecuteSQLStatements(new string[1] { string.Format("INSERT INTO temperatureSettings VALUES({0},{1},{2},{3},{4},{5},{6},{7},{8},{9});", 
                    1,
                    temperaturePluginConfiguration.Settings.NumberOfSensors,
                    temperaturePluginConfiguration.Settings.RtdNumberPerModule,
                    (short)temperaturePluginConfiguration.Settings.BarScaleTemperature,
                    (short)temperaturePluginConfiguration.Settings.BarScaleTemperatureDev,
                    5,
                    5,
                    0,
                    0,
                    0) });
                }
            }

            if (databaseupdate == true)
            {
                sqlStatement = new StringBuilder();
                sqlStatement.Append("DROP TABLE IF EXISTS temperatureSettings;");
                database_config.ExecuteSQLStatements(new String[] { sqlStatement.ToString() }, FaultErrorIndicators.FaultCodes.EventLogWriteFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog);
                Thread.Sleep(200);
                sqlStatement = new StringBuilder();
                sqlStatement.Append("CREATE TABLE IF NOT EXISTS temperatureSettings (");
                sqlStatement.Append("    enable integer,");
                sqlStatement.Append("    sensorNumber integer,");
                sqlStatement.Append("    rtdPerPlc integer,");
                sqlStatement.Append("    barScale integer,");
                sqlStatement.Append("    barScaleDev integer,");
                sqlStatement.Append("    rising integer,");
                sqlStatement.Append("    falling integer,");
                sqlStatement.Append("    mainbearing integer,");
                sqlStatement.Append("    crankpin integer,");
                sqlStatement.Append("    crosshead integer");
                sqlStatement.Append(");");
                database_config.ExecuteSQLStatements(new String[] { sqlStatement.ToString() }, FaultErrorIndicators.FaultCodes.EventLogWriteFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog);

                database_config.ExecuteSQLStatements(new string[1] { string.Format("INSERT INTO temperatureSettings VALUES({0},{1},{2},{3},{4},{5},{6},{7},{8},{9});", 
                    1,
                    TemperatureGloabal.SensorNumber,
                    TemperatureGloabal.RtdPerPlc,
                    TemperatureGloabal.GraphScale,
                    TemperatureGloabal.DevGraphScale,
                    TemperatureGloabal.Rising,
                    TemperatureGloabal.Falling,
                    TemperatureGloabal.MainbearingNumber,
                    TemperatureGloabal.CrankpinbearingNumber,                    
                    TemperatureGloabal.CrossheadbearingNumber) });

                databaseupdate = false;
            }
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
            // Temperature is in the register list #12 !!!!!
            string table = this.registers[12].Table;
            int numberOfTables = 1;

            int roundBy = (10000 * 10000);
            timeStamp = DatabaseSDK.ConvertToUnixTimestamp(((logTime.Ticks + (roundBy / 2)) / roundBy) * roundBy);

            if (this.lastTimeStamp != 0)
            {
                if (this.lastTimeStamp == timeStamp)
                {
                    //logger.WarnFormat("Duplicate timestamp - temperature {0} {1}", timeStamp, this.lastTimeStamp);
                    return;
                }
            }

            this.lastTimeStamp = timeStamp;

            sqlValues = String.Format("{0}, ", timeStamp);
            sqlColumns = "time_stamp, ";


            bool spuConnected = (Faults.Instance.IsSignaled(FaultCodes.RTUNoRS485Comms) || Faults.Instance.IsSignaled(FaultCodes.ModbusReadFailure));

            short tempSensor = 0;
            //The registers array is already sorted by table name create sql insert string for each table
            foreach (Registers r in this.registers)
            {
                if (r.Description.Equals("Temperature sensor values") && tempSensor < TemperatureGloabal.SensorNumber)
                {
                    tempSensor++;
                    lock (this.SyncRoot)
                    {
                        if (r.Table == table)
                        {
                            sqlColumns = sqlColumns + r.ColumnNames();
                            sqlValues = sqlValues + r.Values(TemperatureGloabal.LostCommunicationPlc);
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
                            sqlValues = sqlValues + r.Values(TemperatureGloabal.LostCommunicationPlc);
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

        /// <summary>
        /// Called by ScheduleCreator, calls ModbusRead() to get data from Modbus
        /// </summary>
        public void Run()
        {
            if (this.initialize == true)
            {
                this.initialize = false;

                //clear alarm/slowdown
                Thread.Sleep(1000);
                if (ReadSPUAlarmMode(3, DigitalOutputState.On))
                {
                    EnableSPUAlarmNoTestMode(3, DigitalOutputState.Off, "Bearing temperature");
                }
                if (ReadSPUAlarmMode(2, DigitalOutputState.On))
                {
                    EnableSPUAlarmNoTestMode(2, DigitalOutputState.Off, "Bearing temperature");
                }

                for (ushort i = 0; i < alarmset.Length; i++)
                {
                    alarmset[i] = false;
                    Slowdownset[i] = false;
                    PlcModuleLossComm1[i] = 0;                    
                }

                tempbyteArrayRegisterCmp = new ushort[64];
            }

            //Read from database
            using (DbDataReader reader = database_config.Select(database_config.GetDbConnection(), "* FROM temperatureSettings;"))
            {
                if (reader.Read())
                {
                    //model.enable = reader.GetInt32(reader.GetOrdinal("enable"));
                    TemperatureGloabal.SensorNumber = (short)reader.GetInt32(reader.GetOrdinal("sensorNumber"));
                    TemperatureGloabal.RtdPerPlc = (short)reader.GetInt32(reader.GetOrdinal("rtdPerPlc"));
                    TemperatureGloabal.GraphScale = (short)reader.GetInt32(reader.GetOrdinal("barScale"));
                    TemperatureGloabal.DevGraphScale = (short)reader.GetInt32(reader.GetOrdinal("barScaleDev"));
                    TemperatureGloabal.Rising = (short)reader.GetInt32(reader.GetOrdinal("rising"));
                    TemperatureGloabal.Falling = (short)reader.GetInt32(reader.GetOrdinal("falling"));
                    TemperatureGloabal.MainbearingNumber = (short)reader.GetInt32(reader.GetOrdinal("mainbearing"));
                    TemperatureGloabal.CrankpinbearingNumber = (short)reader.GetInt32(reader.GetOrdinal("crankpin"));
                    TemperatureGloabal.CrossheadbearingNumber = (short)reader.GetInt32(reader.GetOrdinal("crosshead"));
                }
                else
                {
                    TemperatureGloabal.SensorNumber = temperaturePluginConfiguration.Settings.NumberOfSensors;
                    TemperatureGloabal.RtdPerPlc = temperaturePluginConfiguration.Settings.RtdNumberPerModule;
                    TemperatureGloabal.GraphScale = (short)temperaturePluginConfiguration.Settings.BarScaleTemperature;
                    TemperatureGloabal.DevGraphScale = (short)temperaturePluginConfiguration.Settings.BarScaleTemperatureDev;
                    TemperatureGloabal.Rising = 5;
                    TemperatureGloabal.Falling = 5;
                    TemperatureGloabal.MainbearingNumber = 0;
                    TemperatureGloabal.CrankpinbearingNumber = 0;
                    TemperatureGloabal.CrossheadbearingNumber = 0;
                }
            }

            if (this.nosensor == false && TemperatureGloabal.SensorNumber == 0)
            {
                this.nosensor = true;

                //clear alarm/slowdown

                if (TemperatureGloabal.AlarmList != null)
                {
                    for (ushort i = 0; i < TemperatureGloabal.AlarmList.Length; i++)
                    {
                        TemperatureGloabal.AlarmList[i] = 0;
                    }
                }

                if (TemperatureGloabal.SlowdownList != null)
                {
                    for (ushort i = 0; i < TemperatureGloabal.SlowdownList.Length; i++)
                    {
                        TemperatureGloabal.SlowdownList[i] = 0;
                    }
                }

                if (TemperatureGloabal.ConnectionStatusList != null)
                {
                    for (ushort i = 0; i < TemperatureGloabal.ConnectionStatusList.Length; i++)
                    {
                        TemperatureGloabal.ConnectionStatusList[i] = 0;
                    }
                }

                if (TemperatureGloabal.ShortStatusList != null)
                {
                    for (ushort i = 0; i < TemperatureGloabal.ShortStatusList.Length; i++)
                    {
                        TemperatureGloabal.ShortStatusList[i] = 0;
                    }
                }

                if (TemperatureGloabal.OpenStatusList != null)
                {
                    for (ushort i = 0; i < TemperatureGloabal.OpenStatusList.Length; i++)
                    {
                        TemperatureGloabal.OpenStatusList[i] = 0;
                    }
                }

                if (TemperatureGloabal.LosePowerList != null)
                {
                    for (ushort i = 0; i < TemperatureGloabal.LosePowerList.Length; i++)
                    {
                        TemperatureGloabal.LosePowerList[i] = 0;
                    }
                }

                if (ReadSPUAlarmMode(2, DigitalOutputState.On))
                {
                    if (TemperatureGloabal.LostCommunicationSpu == false) { EnableSPUAlarmNoTestMode(2, DigitalOutputState.Off, "Bearing temperature"); }
                }

                if (ReadSPUAlarmMode(3, DigitalOutputState.On))
                {
                    if (TemperatureGloabal.LostCommunicationSpu == false) { EnableSPUAlarmNoTestMode(3, DigitalOutputState.Off, "Bearing temperature"); }
                }
            }

            if (TemperatureGloabal.SensorNumber != 0)
            {
                this.nosensor = false;
            }

            string[] name = null;
            try
            {
                byte PlcModuleInstalled =
                            (TemperatureGloabal.SensorNumber % (TemperatureGloabal.RtdPerPlc * 7) == 0)
                            ? (byte)(TemperatureGloabal.SensorNumber / (TemperatureGloabal.RtdPerPlc * 7))
                            : (byte)(TemperatureGloabal.SensorNumber / (TemperatureGloabal.RtdPerPlc * 7) + 1);
                ChannelPerPLC = (byte)(TemperatureGloabal.RtdPerPlc * 7);
                TotalReadingFromPLC = (byte)(ChannelPerPLC * 2);

                /*
                if (PlcModuleInstalled > 0)
                {
                    tempbyte1 = this.connection.ReadHoldingRegistersTemp(TempModbusSlaveUnitId2, reg.StartReg, ChannelPerPLC);
                    tempbyteArray = tempbyte1;
                    Thread.Sleep(2500);
                }
                if (PlcModuleInstalled > 1)
                {
                    tempbyte2 = this.connection.ReadHoldingRegistersTemp(TempModbusSlaveUnitId3, reg.StartReg, ChannelPerPLC);
                    tempbyte = tempbyte1.Concat(tempbyte2);
                    tempbyteArray = tempbyte.ToArray();
                    Thread.Sleep(2500);
                }
                if (PlcModuleInstalled > 2)
                {
                    tempbyte3 = this.connection.ReadHoldingRegistersTemp(TempModbusSlaveUnitId4, reg.StartReg, ChannelPerPLC);
                    tempbyte = tempbyte1.Concat(tempbyte3);
                    tempbyteArray = tempbyte.ToArray();
                    Thread.Sleep(2500);
                }
                if (PlcModuleInstalled > 3)
                {
                    tempbyte4 = this.connection.ReadHoldingRegistersTemp(TempModbusSlaveUnitId5, reg.StartReg, ChannelPerPLC);
                    tempbyte = tempbyte1.Concat(tempbyte4);
                    tempbyteArray = tempbyte.ToArray();
                    Thread.Sleep(2500);
                }

                bool connectionIssue = false;
                for (int i = 0; i < Math.Min(tempbyteArray.Length, TemperatureGloabal.SensorNumber); i++)
                {
                    if (tempbyteArray[i] == 65436 || tempbyteArray[i] == 500 || tempbyteArray[i] == 5000)
                    {
                        connectionIssue = true;
                    }
                }
                */
                int[] shortCircuit = new int[TemperatureGloabal.SensorNumber];
                int[] openCircuit = new int[TemperatureGloabal.SensorNumber];
                int[] LooseCircuit = new int[TemperatureGloabal.SensorNumber];
                int[] LostPower = new int[TemperatureGloabal.SensorNumber];
                int[] LostComm = new int[TemperatureGloabal.SensorNumber];
                int[] OtherErrors = new int[TemperatureGloabal.SensorNumber];

                tempbyteArrayPlcTemperature = new ushort[ChannelPerPLC];
                tempbyteArrayPlcStatus = new ushort[ChannelPerPLC];

                int readTimes = 10;
                int maxTempRate = 50;

                for (int i = 0; i < TemperatureGloabal.SensorNumber; i++)
                {
                    shortCircuit[i] = 0;
                    openCircuit[i] = 0;
                    LooseCircuit[i] = 0;
                    LostPower[i] = 0;                    
                    OtherErrors[i] = 0;
                    LostComm[i] = 0;
                }

                //if (connectionIssue == true)
                {
                    //connectionIssue = false;
                    for (int j = 0; j < readTimes; j++)
                    {                                                
                        if (powerOnDelay == false && tempbyteArray != null)
                        {
                            for (int newarrry = 0; newarrry < Math.Min(tempbyteArray.Length, TemperatureGloabal.SensorNumber); newarrry++)
                            {
                                tempbyteArrayRegisterCmp[newarrry] = tempbyteArray[newarrry];
                            }
                        }

                        if (PlcModuleInstalled > 0)
                        {
                            tempbyte1 = this.connection.ReadHoldingRegistersTemp(TempModbusSlaveUnitId2, 0, TotalReadingFromPLC);
                            tempbyteArray = tempbyte1;
                            //Thread.Sleep(200);
                        }
                        if (PlcModuleInstalled > 1)
                        {
                            tempbyte2 = this.connection.ReadHoldingRegistersTemp(TempModbusSlaveUnitId3, 0, TotalReadingFromPLC);
                            tempbyte = tempbyte1.Concat(tempbyte2);
                            tempbyteArray = tempbyte.ToArray();
                            //Thread.Sleep(200);
                        }
                        if (PlcModuleInstalled > 2)
                        {
                            tempbyte3 = this.connection.ReadHoldingRegistersTemp(TempModbusSlaveUnitId4, 0, TotalReadingFromPLC);
                            tempbyte = tempbyte1.Concat(tempbyte3);
                            tempbyteArray = tempbyte.ToArray();
                            //Thread.Sleep(100);
                        }
                        if (PlcModuleInstalled > 3)
                        {
                            tempbyte4 = this.connection.ReadHoldingRegistersTemp(TempModbusSlaveUnitId5, 0, TotalReadingFromPLC);
                            tempbyte = tempbyte1.Concat(tempbyte4);
                            tempbyteArray = tempbyte.ToArray();
                            //Thread.Sleep(100);
                        }
                        Thread.Sleep(100);
                        if (tempbyteArray != null)
                        {
                            int plcVersion = tempbyteArray.Length - 1;
                            TemperatureGloabal.PlcVersionNumber = tempbyteArray[plcVersion];
                            TemperatureGloabal.PlcVersionNumber >>= 6;
                        }

                        //skip the first 1 second reading
                        if (powerOnDelay == false)
                        {
                            for (byte i = 0; i < TemperatureGloabal.SensorNumber; i++)
                            {
                                if ((tempbyteArray[i + ChannelPerPLC] & 0x4) != 0)
                                {
                                    LostPower[i]++;
                                }
                                else if ((tempbyteArray[i + ChannelPerPLC] & 0x8) != 0)
                                {
                                    openCircuit[i]++;
                                }
                                else if ((tempbyteArray[i + ChannelPerPLC] & 0x10) != 0)
                                {
                                    shortCircuit[i]++;
                                }
                                //all other errors
                                else if ((tempbyteArray[i + ChannelPerPLC] & 0x1) != 0 || (tempbyteArray[i + ChannelPerPLC] & 0x2) != 0)
                                {
                                    OtherErrors[i]++;
                                }

                                //compare two consecutive readings
                                //if (j > 0)
                                {
                                    if (Math.Abs(tempbyteArray[i] - tempbyteArrayRegisterCmp[i]) >= maxTempRate)
                                    {
                                        LooseCircuit[i]++;
                                    }

                                    //when lost communication, the reading is not changing
                                    if (Math.Abs(tempbyteArray[i] - tempbyteArrayRegisterCmp[i]) == 0)
                                    {
                                        LostComm[i]++;
                                    }

                                }
                            }
                        }                        
                    }
                    if (powerOnDelay == true)
                    {
                        powerOnDelay = false;
                    }
                }                

                tempbyteArrayRegister = new ushort[TemperatureGloabal.SensorNumber];
                for (int newarrry = 0; newarrry < TemperatureGloabal.SensorNumber; newarrry++)
                {
                    tempbyteArrayRegister[newarrry] = tempbyteArray[newarrry];
                }

                //check for 4 seconds temperature reading, if they are 
                for (int i = 0; i < TemperatureGloabal.SensorNumber; i++)
                {
                    if (LostComm[i] == readTimes)
                    {
                        PlcModuleLossComm1[i]++;
                    }
                    else
                    {
                        PlcModuleLossComm1[i] = 0;
                    }                    
                }

                for (int i = 0; i < TemperatureGloabal.SensorNumber; i++)
                {          
                    /*          
                    if (activeTemperature[i].TemperatureEnable == false)
                    {
                        tempbyteArrayRegister[i] = 0xFED4; //-300
                    }
                    else if (LostPower[i] > 3)
                    {
                        tempbyteArrayRegister[i] = 0xFE70;  //-400
                    }                    
                    else if (shortCircuit[i] == readTimes)
                    {
                        tempbyteArrayRegister[i] = 0xFDA8; //-500
                    }
                    else if (openCircuit[i] == readTimes)
                    {
                        tempbyteArrayRegister[i] = 0xFE0C; //-600
                    }                   
                    else if (shortCircuit[i] > 0 || openCircuit[i] > 0 || LooseCircuit[i] > 2)
                    {
                        tempbyteArrayRegister[i] = 0xFD44; //-700
                    }                    
                    else if (OtherErrors[i] == readTimes)
                    {
                        tempbyteArrayRegister[i] = 0xFE70;  //-400
                    }

                    else if (LostComm[i] == 9) //read for 2 seconds, if no changing alarm out module issue
                    {
                        tempbyteArrayRegister[i] = 0xFE70;  //-400                       
                    }
                    */

                    
                    if (activeTemperature[i].TemperatureEnable == false)
                    {
                        tempbyteArrayRegister[i] = 0xF448; //-3000
                    }
                    else if (LostPower[i] > 3)
                    {
                        tempbyteArrayRegister[i] = 0xF060;  //-4000
                    }                    
                    else if (OtherErrors[i] == readTimes)
                    {
                        tempbyteArrayRegister[i] = 0xF060;  //-4000
                    }
                    else if (shortCircuit[i] == readTimes)
                    {
                        tempbyteArrayRegister[i] = 0xEC78; //-5000
                    }
                    else if (openCircuit[i] == readTimes)
                    {
                        tempbyteArrayRegister[i] = 0xE890; //-6000
                    }
                    else if (shortCircuit[i] > 0 || openCircuit[i] > 0 || LooseCircuit[i] > 2)
                    {
                        tempbyteArrayRegister[i] = 0xE4A8; //-7000
                    }
                    else if (PlcModuleLossComm1[i] >= 5)
                            //read for 5 seconds, if no changing alarm out module issue
                    {
                        tempbyteArrayRegister[i] = 0xF060;  //-4000
                    }
                }

                // Read each register
                short tempSensor = 0;
                foreach (Registers reg in registers)
                {
                    if (reg.Description.Equals("Temperature sensor values") && tempSensor < TemperatureGloabal.SensorNumber)
                    {
                        tempSensor++;
                       
                        name = reg.ChannelName;

                        ProcessTemperature(tempbyteArrayRegister, name);

                        lock (this.SyncRoot)
                        {
                            for (int i = 0; i < Math.Min(reg.Count, tempbyteArrayRegister.Length); i++)
                            {
                                //2-RTD module has reading of factor 10, while 4-RTD module deos not
                                //if (TemperatureGloabal.RtdPerPlc == 2) { reg.Value[i] = (short)(tempbyteArrayRegister[i]); reg.Value[i] /= 10;}
                                //else { reg.Value[i] = (Int16)(tempbyteArrayRegister[i]); }

                                reg.Value[i] = (short)(tempbyteArrayRegister[i]); reg.Value[i] /= 10;
                                //logger.ErrorFormat("Caught exception {0}", reg.ChannelName[i]);
                                //if (reg.Value[i] >= 500) reg.Value[i] = 0;
                                //if (reg.Value[i] < -50) reg.Value[i] = 0;
                            }
                            tempbyteArray = null;
                            tempbyteArrayRegister = null;
                        }
                    }
                }
                               
                TemperatureGloabal.LostCommunicationPlc = false;
            }
            catch (Exception e)
            {
                logger.ErrorFormat("Caught exception {0}", e.Message);
                Faults.Instance.SignalFault(FaultErrorIndicators.FaultCodes.RTUSerialPortFailure);
                TemperatureGloabal.LostCommunicationPlc = true;

                if(ReadSPUAlarmMode(2, DigitalOutputState.Off))
                {
                    EnableSPUAlarmNoTestMode(2, DigitalOutputState.On, "Bearing temperature");
                    alarmHasset = true;
                }
            }
        }

        //process temperature and log then in event\temperature database
        private void ProcessTemperature(ushort[] tempbyteArray, string[] channelname)
        {
            List<String> updateSQL = new List<string>();
            short[] temperatureArray = new short[TemperatureGloabal.SensorNumber];
            short[] temperatureDevArray = new short[TemperatureGloabal.SensorNumber];            

            //these global variables are for temperature alarm list
            TemperatureGloabal.Temperature = new short[TemperatureGloabal.SensorNumber];           

            //these global variables are for temperature alarm live engine request
            TemperatureGloabal.AlarmListLiveEngine = new bool[TemperatureGloabal.SensorNumber];
            TemperatureGloabal.SlowdownListLiveEngine = new bool[TemperatureGloabal.SensorNumber];
            TemperatureGloabal.ChannelName = new string[TemperatureGloabal.SensorNumber];
            TemperatureGloabal.RtdGood = new bool[TemperatureGloabal.SensorNumber];

            TemperatureGloabal.AlarmTrigger = new ushort[TemperatureGloabal.SensorNumber];
            TemperatureGloabal.SlowdownTrigger = new ushort[TemperatureGloabal.SensorNumber];

            //if database has temperature logged in, then read them out
            try
            {
                ProcessDatabasetemp();
            }
            catch (DbException)
            {
                database_event.MoveCorruptDatabase();
                InitialiseDbTemperaure();
            }

            //Raw data from PLC is in 0.1C, convert them into 1.0C
            for (int i = 0; i < tempbyteArray.Length; i++)
            {
                //if (TemperatureGloabal.RtdPerPlc == 2) { temperatureArray[i] = (short)(tempbyteArray[i]); temperatureArray[i] /= 10; }
                //else { temperatureArray[i] = (short)(tempbyteArray[i]); }
                temperatureArray[i] = (short)(tempbyteArray[i]); temperatureArray[i] /= 10;

                if (temperatureArray[i] < -300 && temperatureArray[i] > -800)
                {
                    activeTemperature[i].RTDGood = false;
                    //temperatureArray[i] = 0;
                }
                else activeTemperature[i].RTDGood = true;
            }

            //Sum of temperature for processing temperature deviation
            for (int i = 0; i < tempbyteArray.Length; i++)
            {
                for (int j = 0; j < tempbyteArray.Length; j++)
                {
                    if ((i != j) && (activeTemperature[j].TemperatureEnable == true) && (activeTemperature[j].RTDGood == true) ) temperatureDevArray[i] += (short)temperatureArray[j];
                }
            }

            bool alarm = false;
            bool slowdown = false;

            //calculate the valid sensor number for dev, excluding disabled and failed sensors
            short validDevSensor = TemperatureGloabal.SensorNumber;
            validDevSensor--;
            for (int i = 0; i < tempbyteArray.Length; i++)
            {
                if (activeTemperature[i].TemperatureEnable == false || activeTemperature[i].RTDGood == false) validDevSensor--;
            }

            //Collect TemperatureDatabaseObject and log them into database
            //Set global variable for alarm
            for (int i = 0, alarmCount = 0, bitShift = 0; i < tempbyteArray.Length; i++)
            {
                TemperatureDatabaseObject temperature = new TemperatureDatabaseObject(i,
                                                                                      activeTemperature[i].TemperatureChannelName,
                                                                                      activeTemperature[i].TemperatureEnable,
                                                                                      temperatureArray[i],
                                                                                      false, //temperature.TemperatureAlarm
                                                                                      false, //temperature.TemperatureSlowdown
                                                                                      activeTemperature[i].AlarmLevel,
                                                                                      activeTemperature[i].SlowdownLevel,
                                                                                      0,
                                                                                      activeTemperature[i].RTDGood);

                //process temperature deviation - dividing sum by (channel - 1)
                if (validDevSensor > 0) temperatureDevArray[i] /= validDevSensor;
                temperatureDevArray[i] -= (short)temperatureArray[i];
                short channelDev = 0;
                channelDev -= temperatureDevArray[i];
                temperatureDevArray[i] = channelDev;

                if (activeTemperature[i].TemperatureEnable == false || activeTemperature[i].RTDGood == false) temperatureDevArray[i] = 0;

                //temperature.Temperature = temperatureArray[i];
                temperature.TemperatureDev = temperatureDevArray[i];

                TemperatureGloabal.AlarmTrigger[i] = activeTemperature[i].AlarmLevel;
                TemperatureGloabal.SlowdownTrigger[i] = activeTemperature[i].SlowdownLevel;
                TemperatureGloabal.RtdGood[i] = activeTemperature[i].RTDGood;

                int risingSlowdown = temperature.SlowdownLevel;// +temperature.SlowdownLevel * TemperatureGloabal.Falling / 100;
                int risingAlarm = temperature.AlarmLevel;// +temperature.AlarmLevel * TemperatureGloabal.Falling / 100;
                int fallingSlowdown = temperature.SlowdownLevel - temperature.SlowdownLevel * TemperatureGloabal.Rising / 100;
                int fallingAlarm = temperature.AlarmLevel - temperature.AlarmLevel * TemperatureGloabal.Rising / 100;
                
                if (activeTemperature[i].TemperatureEnable == true)
                {
                    if (activeTemperature[i].RTDGood == true)
                    {
                        if (temperature.Temperature >= risingAlarm)
                        {
                            temperature.TemperatureAlarm = true;                            
                            alarmset[i] = true;
                        }
                        else if (alarmset[i])
                        {
                            if (temperature.Temperature <= fallingAlarm)
                            {
                                temperature.TemperatureAlarm = false;
                                alarmset[i] = false;
                            }
                            else
                            {
                                temperature.TemperatureAlarm = true;
                            }
                        }
                        else
                        {
                            temperature.TemperatureAlarm = false;
                        }

                        if (temperature.Temperature >= risingSlowdown)
                        {
                            temperature.TemperatureSlowdown = true;                            
                            Slowdownset[i] = true;
                        }
                        else if (Slowdownset[i])
                        {
                            if (temperature.Temperature <= fallingSlowdown)
                            {
                                temperature.TemperatureSlowdown = false;
                                Slowdownset[i] = false;
                            }
                            else
                            {
                                temperature.TemperatureSlowdown = true;
                            }
                        }
                        else
                        {
                            temperature.TemperatureSlowdown = false;
                        }

                        /*
                        if (temperature.TemperatureSlowdown == false)
                        {
                            if (temperature.Temperature <= fallingAlarm)
                            {
                                temperature.TemperatureAlarm = false;
                                alarmset[i] = true;
                            }

                            //alarmset is used to not setting alarm when slowdown is triggered, 
                            if ((temperature.Temperature >= risingAlarm) && (alarmset[i] == true))
                            {
                                temperature.TemperatureAlarm = true;
                            }
                            else
                            {
                                temperature.TemperatureAlarm = false;
                            }
                           
                        }
                        else
                        {
                            temperature.TemperatureAlarm = false;
                        }
                         * */
                    }
                    else
                    {
                        temperature.TemperatureSlowdown = false;
                        temperature.TemperatureAlarm = true;
                    }
                }
                else
                {
                    //only check when the sensor is enabled
                    temperature.TemperatureSlowdown = false;
                    temperature.TemperatureAlarm = false;
                }
                
                updateSQL.Add(temperature.UpdateInDatabaseSQL());

                activeTemperature[i] = temperature;

                //TemperatureGloabal.RtdGood[i] = activeTemperature[i].RTDGood;

                //temperature value for both alarm list generating and live engine request
                TemperatureGloabal.Temperature[i] = activeTemperature[i].Temperature;

                //Tempearture channel name
                TemperatureGloabal.ChannelName[i] = activeTemperature[i].TemperatureChannelName;

                //alarm/slowdown array for live engine request
                TemperatureGloabal.AlarmListLiveEngine[i] = activeTemperature[i].TemperatureAlarm;
                TemperatureGloabal.SlowdownListLiveEngine[i] = activeTemperature[i].TemperatureSlowdown;

                //process for sending to SPU -> AMS
                if (TemperatureGloabal.AlarmListLiveEngine[i] == true) alarm = true;
                if (TemperatureGloabal.SlowdownListLiveEngine[i] == true) slowdown = true;
                //set alarm when any rtd lose connection
                if (activeTemperature[i].TemperatureEnable == true && TemperatureGloabal.RtdGood[i] == false) alarm = true;
                if (TemperatureGloabal.LostCommunicationPlc == true) alarm = true;
                
                //alarm/slowdown array for alarm list generating
                alarmCount = i / 16;
                bitShift = i % 16;
                //convert the alarm boolen list into ushort array, 16 boolen element to 1 array element
                if (activeTemperature[i].TemperatureEnable == true && activeTemperature[i].RTDGood == true)
                {
                    //Thread.Sleep(1000);

                    if (activeTemperature[i].TemperatureAlarm == true)
                    {
                        TemperatureGloabal.AlarmList[alarmCount] |= (ushort)(1 << bitShift);
                    }
                    else
                    {
                        TemperatureGloabal.AlarmList[alarmCount] &= (ushort)(~(1 << bitShift));
                    }

                    //coovert the slowdown boolen list into ushort array, 16 boolen element to 1 array element
                    if (activeTemperature[i].TemperatureSlowdown == true)
                    {
                        TemperatureGloabal.SlowdownList[alarmCount] |= (ushort)(1 << bitShift);
                    }
                    else
                    {
                        TemperatureGloabal.SlowdownList[alarmCount] &= (ushort)(~(1 << bitShift));
                    }

                    TemperatureGloabal.OpenStatusList[alarmCount] &= (ushort)(~(1 << bitShift));
                    TemperatureGloabal.ConnectionStatusList[alarmCount] &= (ushort)(~(1 << bitShift));
                    TemperatureGloabal.ShortStatusList[alarmCount] &= (ushort)(~(1 << bitShift));
                    TemperatureGloabal.LosePowerList[alarmCount] &= (ushort)(~(1 << bitShift));
                }
                else
                {
                    TemperatureGloabal.AlarmList[alarmCount] &= (ushort)(~(1 << bitShift));
                    TemperatureGloabal.SlowdownList[alarmCount] &= (ushort)(~(1 << bitShift));
                }
                
                //coovert the rtd connection status list into ushort array, 16 boolen element to 1 array element
                if (TemperatureGloabal.RtdGood[i] == false)
                {
                    if (activeTemperature[i].TemperatureEnable)
                    {
                        TemperatureGloabal.AlarmList[alarmCount] &= (ushort)(~(1 << bitShift));
                        TemperatureGloabal.SlowdownList[alarmCount] &= (ushort)(~(1 << bitShift));

                        if (TemperatureGloabal.Temperature[i] == -700)
                        {
                            TemperatureGloabal.ConnectionStatusList[alarmCount] |= (ushort)(1 << bitShift);
                        }
                        else
                        {
                            TemperatureGloabal.ConnectionStatusList[alarmCount] &= (ushort)(~(1 << bitShift));
                        }

                        if (TemperatureGloabal.Temperature[i] == -600)
                        {
                            TemperatureGloabal.OpenStatusList[alarmCount] |= (ushort)(1 << bitShift);
                        }
                        else
                        {
                            TemperatureGloabal.OpenStatusList[alarmCount] &= (ushort)(~(1 << bitShift));
                        }

                        if (TemperatureGloabal.Temperature[i] == -500)
                        {
                            TemperatureGloabal.ShortStatusList[alarmCount] |= (ushort)(1 << bitShift);
                        }
                        else
                        {
                            TemperatureGloabal.ShortStatusList[alarmCount] &= (ushort)(~(1 << bitShift));
                        }

                        if (TemperatureGloabal.Temperature[i] == -400)
                        {
                            TemperatureGloabal.LosePowerList[alarmCount] |= (ushort)(1 << bitShift);
                        }
                        else
                        {
                            TemperatureGloabal.LosePowerList[alarmCount] &= (ushort)(~(1 << bitShift));
                        }
                    }
                }
                else
                {
                    TemperatureGloabal.OpenStatusList[alarmCount] &= (ushort)(~(1 << bitShift));
                    TemperatureGloabal.ConnectionStatusList[alarmCount] &= (ushort)(~(1 << bitShift));
                    TemperatureGloabal.ShortStatusList[alarmCount] &= (ushort)(~(1 << bitShift));
                    TemperatureGloabal.LosePowerList[alarmCount] &= (ushort)(~(1 << bitShift));
                }
            }

            if ((alarm == true) && (alarmHasset ==  false) && (ReadSPUAlarmMode(2, DigitalOutputState.Off)))
            {
                if (TemperatureGloabal.LostCommunicationSpu == false) { EnableSPUAlarmNoTestMode(2, DigitalOutputState.On, "Bearing temperature"); alarmHasset = true; }
            }
            else if ((alarm == false) && (alarmHasset == true) && (ReadSPUAlarmMode(2, DigitalOutputState.On)))
            {
                if (TemperatureGloabal.LostCommunicationSpu == false) { EnableSPUAlarmNoTestMode(2, DigitalOutputState.Off, "Bearing temperature"); alarmHasset = false; }
            }

            //set slowdown condition to SPU then to AMS
            if ((slowdown == true) && (slowdownHasset == false) && (ReadSPUAlarmMode(3, DigitalOutputState.Off)))
            {
                if (TemperatureGloabal.LostCommunicationSpu == false) { EnableSPUAlarmNoTestMode(3, DigitalOutputState.On, "Bearing temperature"); slowdownHasset = true; }
            }
            else if ((slowdown == false) && (slowdownHasset == true) && (ReadSPUAlarmMode(3, DigitalOutputState.On)))
            {
                if (TemperatureGloabal.LostCommunicationSpu == false) { EnableSPUAlarmNoTestMode(3, DigitalOutputState.Off, "Bearing temperature"); slowdownHasset = false; }
            }

            // Commit the changes to the database
            if (updateSQL.Count > 0)
            {
                using (DbConnection connection = database_event.GetDbConnection())
                {
                    if (database_event.ExecuteSQLStatements(updateSQL.ToArray(), FaultErrorIndicators.FaultCodes.EventLogWriteFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog) == false)
                    {
                        InitialiseDb();
                    }
                }
            }
        }

        /// <summary>
        /// This function reads all temperature from the temperature database
        /// and determines if there state machine needs to be advanced.
        /// </summary>
        /// <param name="updateSQL">Will be populated with the SQL commands used to advance an alarms state in teh database.</param>
        private void ProcessDatabasetemp()
        {            
            using (DbConnection connection = database_event.GetDbConnection())
            {
                using (DbDataReader data = database_event.Select(connection, TemperatureDatabaseObject.TemperatureColumns + " from temperature;"))
                {
                    TemperatureDatabaseObject temperatureObject;
                    while (data.Read())
                    {
                        int channelID = data.GetInt32(0);
                        string channelName = data.GetString(1);
                        bool temperatureEnable = data.GetInt32(2) == 0 ? false : true;
                        short temperature = (short)data.GetInt32(3);
                        bool temperatureAlarm = data.GetInt32(4) == 0 ? false : true;
                        bool temperatureSlowdown = data.GetInt32(5) == 0 ? false : true;
                        ushort alarmLevel = (ushort)data.GetInt32(6);
                        ushort slowdownLevel = (ushort)data.GetInt32(7);
                        short temperatureDev = (short)data.GetInt32(8);
                        bool rtdGood = data.GetInt32(9) == 0 ? false : true;

                        // Read the item from the database
                        temperatureObject = new TemperatureDatabaseObject(
                            channelID,
                            channelName,
                            temperatureEnable,
                            temperature,
                            temperatureAlarm,
                            temperatureSlowdown,
                            alarmLevel,
                            slowdownLevel,
                            temperatureDev,
                            rtdGood);

                        activeTemperature[temperatureObject.ChannelId] = temperatureObject;
                    }
                }
            }
        }

        /// <summary>
        /// Enables or disables a specific SPU alarm without entering test mode. This can be used when the SPU alarm output
        /// is enabled.
        /// </summary>
        /// <param name="alarm_id">the id of the alarm to enable</param>
        /// <param name="enabled">Flag indicating if the alarm should be enabled or disabled.</param>
        private bool EnableSPUAlarmNoTestMode(int alarm_id, DigitalOutputState state, string user)
        {
            bool rc = false;
            logger.WarnFormat("Command: Set SPU alarm {0} {1}", alarm_id, state);
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                eventLog.LogGeneralEvent("SPU Alarm " + alarm_id + " " + state, user);
                SPUSDK.SetSPUAlarmStateNoTestMode(ModbusInternal, alarm_id, state);
                DigitalOutputState[] states = SPUSDK.GetSPUAlarmStates(ModbusInternal);
                rc = (states[alarm_id - 1] == state);
            }
            if (!rc)
            {
                logger.ErrorFormat("Set SPU alarm {0} {1} failed.", alarm_id, state);
            }
            return rc;
        }

        /// <summary>
        /// Read system status
        /// </summary>
        /// <param name="alarm_id">the id of the alarm to enable</param>
        /// <param name="enabled">Flag indicating if the alarm should be enabled or disabled.</param>
        private bool ReadSPUAlarmMode(int alarm_id, DigitalOutputState state)
        {
            bool rc = false;            
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {                
                DigitalOutputState[] states = SPUSDK.GetSPUAlarmStates(ModbusInternal);
                rc = (states[alarm_id - 1] == state);
            }            
            return rc;
        }
    }
}
