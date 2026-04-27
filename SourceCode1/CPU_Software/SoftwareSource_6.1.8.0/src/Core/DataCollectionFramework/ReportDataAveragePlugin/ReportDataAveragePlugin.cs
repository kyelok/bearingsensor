/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Text;
using System.IO;
using System.Data;
using System.Data.Common;
using FaultErrorIndicators;
using HelperClasses;
using ModbusDb;
using DataCollectionSDK;
using Configuration;
using System.Threading;
using Modbus;

namespace ReportDataAveragePlugin
{
    /// <summary>
    /// Modbus client plugin. Consumes data from the Modbus and saves this to the database
    /// </summary>
    public class ReportDataAveragePlugin : IExtInterface
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
        private bool initialized = false;
        Int64 lastTimeStamp;
        const Int32 secondsIn6hr = 21600;
        private bool dBsuccess = true;
        bool noData = false;
        private Int64 timeStampLog = 0;
        private bool database6hrEmpty = false;
        private Int64 oldestruntime = 0;

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
        private DatabaseSDK aVeragedatabase;

        /// <summary>
        /// The module configuration for this object
        /// </summary>
        ModuleConfiguration configuration;

        /// <summary>
        /// Data structs of modbus readings
        /// </summary>
        Registers[] registers;

        private string[] sensorCyclinderDb = {
            "Runtime6hr",
            "Rpm6hr",
            "senValComp6hr",
            "senDevComp6hr",
            "CylAveComp6hr",
            "CylDevComp6hr",            
            "WaterInOil6hr",
            "SLEM6hr",
            "CylStatus6hr"
        };

        private string[] SenValCompChannelNames = {                                              
            "comp1a",
            "comp1amin",
            "comp1amax",
		    "comp1b",
            "comp1bmin",
            "comp1bmax",
		    "comp2a",
            "comp2amin",
            "comp2amax",
		    "comp2b",
            "comp2bmin",
            "comp2bmax",
		    "comp3a",
            "comp3amin",
            "comp3amax",
		    "comp3b",
            "comp3bmin",
            "comp3bmax",
		    "comp4a",
            "comp4amin",
            "comp4amax",
		    "comp4b",
            "comp4bmin",
            "comp4bmax",
		    "comp5a",
            "comp5amin",
            "comp5amax",
		    "comp5b",
            "comp5bmin",
            "comp5bmax",
		    "comp6a",
            "comp6amin",
            "comp6amax",
		    "comp6b",
            "comp6bmin",
            "comp6bmax",
		    "comp7a",
            "comp7amin",
            "comp7amax",
		    "comp7b",
            "comp7bmin",
            "comp7bmax",
		    "comp8a",
            "comp8amin",
            "comp8amax",
		    "comp8b",
            "comp8bmin",
            "comp8bmax",
		    "comp9a",
            "comp9amin",
            "comp9amax",
		    "comp9b",
            "comp9bmin",
            "comp9bmax",
		    "comp10a",
            "comp10amin",
            "comp10amax",
		    "comp10b",
            "comp10bmin",
            "comp10bmax",
		    "comp11a",
            "comp11amin",
            "comp11amax",
		    "comp11b",
            "comp11bmin",
            "comp11bmax",
		    "comp12a",
            "comp12amin",
            "comp12amax",
		    "comp12b",
            "comp12bmin",
            "comp12bmax",
		    "comp13a",
            "comp13amin",
            "comp13amax",
		    "comp13b",
            "comp13bmin",
            "comp13bmax",
		    "comp14a",
            "comp14amin",
            "comp14amax",
		    "comp14b",
            "comp14bmin",
            "comp14bmax"
	    };

        private string[] SenDevCompChannelNames = {
		    "dev1a",
            "dev1amin",
            "dev1amax",
		    "dev1b",
            "dev1bmin",
            "dev1bmax",
		    "dev2a",
            "dev2amin",
            "dev2amax",
		    "dev2b",
            "dev2bmin",
            "dev2bmax",
		    "dev3a",
            "dev3amin",
            "dev3amax",
		    "dev3b",
            "dev3bmin",
            "dev3bmax",
		    "dev4a",
            "dev4amin",
            "dev4amax",
		    "dev4b",
            "dev4bmin",
            "dev4bmax",
		    "dev5a",
            "dev5amin",
            "dev5amax",
		    "dev5b",
            "dev5bmin",
            "dev5bmax",
		    "dev6a",
            "dev6amin",
            "dev6amax",
		    "dev6b",
            "dev6bmin",
            "dev6bmax",
		    "dev7a",
            "dev7amin",
            "dev7amax",
		    "dev7b",
            "dev7bmin",
            "dev7bmax",
		    "dev8a",
            "dev8amin",
            "dev8amax",
		    "dev8b",
            "dev8bmin",
            "dev8bmax",
		    "dev9a",
            "dev9amin",
            "dev9amax",
		    "dev9b",
            "dev9bmin",
            "dev9bmax",
		    "dev10a",
            "dev10amin",
            "dev10amax",
		    "dev10b",
            "dev10bmin",
            "dev10bmax",
		    "dev11a",
            "dev11amin",
            "dev11amax",
		    "dev11b",
            "dev11bmin",
            "dev11bmax",
		    "dev12a",
            "dev12amin",
            "dev12amax",
		    "dev12b",
            "dev12bmin",
            "dev12bmax",
		    "dev13a",
            "dev13amin",
            "dev13amax",
		    "dev13b",
            "dev13bmin",
            "dev13bmax",
		    "dev14a",
            "dev14amin",
            "dev14amax",
		    "dev14b",
            "dev14bmin",
            "dev14bmax"
	    };

        private string[] CylAveCompChannelNames6hr = {
		    "cylav1",
            "cylav1min",
            "cylav1max",
		    "cylav2",
            "cylav2min",
            "cylav2max",
		    "cylav3",
            "cylav3min",
            "cylav3max",
		    "cylav4",
            "cylav4min",
            "cylav4max",
		    "cylav5",
            "cylav5min",
            "cylav5max",
		    "cylav6",
            "cylav6min",
            "cylav6max",
		    "cylav7",
            "cylav7min",
            "cylav7max",
		    "cylav8",
            "cylav8min",
            "cylav8max",
		    "cylav9",
            "cylav9min",
            "cylav9max",
		    "cylav10",
            "cylav10min",
            "cylav10max",
		    "cylav11",
            "cylav11min",
            "cylav11max",
		    "cylav12",
            "cylav12min",
            "cylav12max",
		    "cylav13",
            "cylav13min",
            "cylav13max",
		    "cylav14",
            "cylav14min",
            "cylav14max"
	    };

        private string[] CylDevCompChannelNames6hr = {
		    "cyldev1",
            "cyldev1min",
            "cyldev1max",
		    "cyldev2",
            "cyldev2min",
            "cyldev2max",
		    "cyldev3",
            "cyldev3min",
            "cyldev3max",
		    "cyldev4",
            "cyldev4min",
            "cyldev4max",
		    "cyldev5",
            "cyldev5min",
            "cyldev5max",
		    "cyldev6",
            "cyldev6min",
            "cyldev6max",
		    "cyldev7",
            "cyldev7min",
            "cyldev7max",
		    "cyldev8",
            "cyldev8min",
            "cyldev8max",
		    "cyldev9",
            "cyldev9min",
            "cyldev9max",
		    "cyldev10",
            "cyldev10min",
            "cyldev10max",
		    "cyldev11",
            "cyldev11min",
            "cyldev11max",
		    "cyldev12",
            "cyldev12min",
            "cyldev12max",
		    "cyldev13",
            "cyldev13min",
            "cyldev13max",
		    "cyldev14",
            "cyldev14min",
            "cyldev14max"
	    };

        private string[] Rpm6hr = {
		    "rpm1",
            "rpm1min",
            "rpm1max"
	    };

        private string[] RunTime6hr = {
		    "runtime"
	    };

        private string[] WaterInOil6hr = {
		    "wateractivity",
            "wateractivitymin",
            "wateractivitymax",
            "ppm",
            "ppmmin",
            "ppmmax"
	    };

        private string[] SLEM6hr = {
		    "slemmv",
            "slemmvmin",
            "slemmvmax"
	    };

        private string[] CylStatus6hr = {		    
            "cylav1",
            "cylav2",
            "cylav3",
            "cylav4",
            "cylav5",
            "cylav6",
            "cylav7",
            "cylav8",
            "cylav9",
            "cylav10",
            "cylav11",
            "cylav12",
            "cylav13",
            "cylav14"            
	    };

        public String CreateColums(string[] tableColumn)
        {
            StringBuilder columns = new StringBuilder();

            foreach (String field in tableColumn)
            {
                columns.AppendFormat("{0} INTEGER,", field);
            }

            return columns.ToString();
        }

        public String ColumnNames(string[] tableColumn)
        {
            StringBuilder columns = new StringBuilder();
            foreach (String field in tableColumn)
            {
                columns.AppendFormat("{0}, ", field);
            }

            return columns.ToString();
        }

        public String Values(Int64[] value, int ActualLength)
        {
            StringBuilder values = new StringBuilder();

            if (value != null)
            {
                for (int i = 0; i < ActualLength; i++)
                {
                    values.AppendFormat("{0}, ", value[i].ToString());
                }
            }
            return values.ToString();
        }

        /// <summary>
        /// Constructor
        /// </summary>
        public ReportDataAveragePlugin()
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

            RunSchedule = moduleSettings.Settings.RunSchedule;
            LogSchedule = moduleSettings.Settings.LogSchedule;

            dbRetryDuration = dataCollectionConfig.Database.DbRetryDuration + 100;
            dbRetryCount = dataCollectionConfig.Database.DbRetryCount + 2;
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
            string dataAverageDb = databaseName;
            if (dataAverageDb.Contains("amot_xtsii_data")) dataAverageDb = dataAverageDb.Replace("amot_xtsii_data", "amot_xtsii_dataaverage");

            configuration = ModuleConfiguration.GetApplicationConfiguration();
            DataCollectionConfigurationSection dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;

            if (dataCollectionConfig == null)
                dataCollectionConfig = new DataCollectionConfigurationSection();

            database = new DatabaseSDK(databaseName, this.dbRetryCount, this.dbRetryDuration, this.dbDeletePeriod);
            aVeragedatabase = new DatabaseSDK(dataAverageDb, this.dbRetryCount, this.dbRetryDuration, this.dbDeletePeriod);
            InitialiseDb();
        }

        /// <summary>
        /// Sets up database once it is connected. Creates tables, indexes and triggers
        /// </summary>
        private void InitialiseDb()
        {
            ReportGlobal.DatabaseRolling = true;   //always set DB rolling true even for DB already updated, it will set to false after check for sure

            List<string> sqlStatements = new List<string>();
            string sqlColumns = "time_stamp INTEGER, ";
            string table = this.sensorCyclinderDb[0];
            int numberOfStatements = 3;

            //The registers array is already sorted by table name create sql create string for each table
            foreach (string r in this.sensorCyclinderDb)
            {
                if (r == table)
                {
                    sqlColumns = sqlColumns + CreateColums(RunTime6hr);
                }
                else
                {
                    sqlColumns = sqlColumns.TrimEnd(new char[] { ',' });
                    sqlStatements.Add(string.Format("CREATE TABLE IF NOT EXISTS {0} ({1});", table, sqlColumns));
                    sqlStatements.Add(string.Format("CREATE INDEX IF NOT EXISTS {0}_index ON {0} (time_stamp);", table));
                    sqlStatements.Add(string.Format("CREATE TRIGGER IF NOT EXISTS del_old_{0}_records AFTER INSERT ON {0} BEGIN DELETE FROM {0} WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM {0} ) - 157784630); END;", table));
                    table = r;
                    numberOfStatements += 3;
                    sqlColumns = "time_stamp INTEGER, ";
                    switch (numberOfStatements)
                    {
                        case 6: sqlColumns = sqlColumns + CreateColums(Rpm6hr); break;
                        case 9: sqlColumns = sqlColumns + CreateColums(SenValCompChannelNames); break;
                        case 12: sqlColumns = sqlColumns + CreateColums(SenDevCompChannelNames); break;
                        case 15: sqlColumns = sqlColumns + CreateColums(CylAveCompChannelNames6hr); break;
                        case 18: sqlColumns = sqlColumns + CreateColums(CylDevCompChannelNames6hr); break;
                        case 21: sqlColumns = sqlColumns + CreateColums(WaterInOil6hr); break;
                        case 24: sqlColumns = sqlColumns + CreateColums(SLEM6hr); break;
                        case 27: sqlColumns = sqlColumns + CreateColums(CylStatus6hr); break;
                        default: break;
                    }
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

            //Ignore the return value
            //If the database create fails then there is not much we can
            //do.
            this.aVeragedatabase.ExecuteSQLStatements(sqlStatements.ToArray(), FaultErrorIndicators.FaultCodes.DataLoggerDatabaseWriteFailure, FaultErrorIndicators.FaultCodes.DataLoggerDatabaseFailure, FaultErrorIndicators.FaultCodes.DataLoggerDatabaseMissedLog);
        }

        /// <summary>
        /// Called according to the logSchedule
        /// </summary>
        public void Log(DateTime logTime)
        {
            DateTime endDate = logTime;
            DateTime startDate = endDate.AddHours(-6);
            Int64 timeStamp;
            Int64 timeStampAvg;

            int roundBy = (10000 * 10000);

            timeStamp = DatabaseSDK.ConvertToUnixTimestamp(((logTime.Ticks + (roundBy / 2)) / roundBy) * roundBy);
            timeStampAvg = DatabaseSDK.ConvertToUnixTimestamp(((startDate.Ticks + (roundBy / 2)) / roundBy) * roundBy);
            timeStampLog = DatabaseSDK.ConvertToUnixTimestamp(logTime.Ticks);

            if (this.lastTimeStamp != 0)
            {
                if (this.lastTimeStamp == timeStamp)
                {
                    //logger.WarnFormat("Duplicate timestamp - SPU {0} {1}", timeStamp, this.lastTimeStamp);
                    return;
                }
            }

            this.lastTimeStamp = timeStamp;

            if (timeStamp % secondsIn6hr == 0 && initialized == true) //this is exactly at 6hr
            {
                //In case software is running first time and no 6hr database is rolled from original data
                if (database6hrEmpty == true)
                {
                    string strSql = "min(time_stamp) as mintimestamp, max(time_stamp) as maxtimestamp FROM RunTime where runtime > 0";
                    using (System.Data.DataTable data = database.SelectIntoDataTable(strSql))
                    {
                        if (data.Rows.Count == 1)
                        {
                            DataRow row = data.Rows[0];
                            if (!row.IsNull(0) && !row.IsNull(1))
                            {
                                oldestruntime = row.Field<Int64>(0);
                            }
                        }
                    }
                    //The timestamp in 6hr database is always on the right edge of 6hr interval, if software does not start at 6hr edge, use the immediate before 6hr edge 
                    //For instance, software first time start at 10:00AM, when time reaches to 12:00PM, average data between 10:00AM and 12:00PM register for 6:00AM timestamp
                    //startDate = DatabaseSDK.ConvertFromUnixTimeStamp(oldestruntime);
                    //timeStampAvg = DatabaseSDK.ConvertToUnixTimestamp(((startDate.Ticks + (roundBy / 2)) / roundBy) * roundBy);
                    database6hrEmpty = false;
                }

                GenerateAverageData(startDate, endDate, timeStampAvg);
            }

        }

        /// <summary>
        /// Called by ScheduleCreator, calls ModbusRead() to get data from Modbus
        /// </summary>
        public void Run()
        {
            if (this.initialized == false)
            {
                string strSql;
                Int64 latestruntime = 0;
                Int64 oldest6hrtime = 0;
                Int64 latest6hrtime = 0;
                bool firstNot6hr = false;
                bool alreadyWrite = false;

                DateTime startDate = new DateTime(1970, 1, 1);
                DateTime endDate = startDate.AddHours(6);

                strSql = "min(time_stamp) as mintimestamp, max(time_stamp) as maxtimestamp FROM RunTime where runtime > 0";
                using (System.Data.DataTable data = database.SelectIntoDataTable(strSql))
                {
                    if (data.Rows.Count == 1)
                    {
                        DataRow row = data.Rows[0];
                        if (!row.IsNull(0) && !row.IsNull(1))
                        {
                            oldestruntime = row.Field<Int64>(0);
                            latestruntime = row.Field<Int64>(1);
                        }
                    }
                }

                strSql = "min(time_stamp) as mintimestamp6hr, max(time_stamp) as maxtimestamp6hr FROM Runtime6hr";
                using (System.Data.DataTable data = aVeragedatabase.SelectIntoDataTable(strSql))
                {
                    if (data.Rows.Count == 1)
                    {
                        DataRow row = data.Rows[0];
                        if (!row.IsNull(0) && !row.IsNull(1))
                        {
                            oldest6hrtime = row.Field<Int64>(0);
                            latest6hrtime = row.Field<Int64>(1);
                        }
                    }
                }

                //6hr database is empty
                if (oldest6hrtime == 0)
                {
                    database6hrEmpty = true;

                    for (int second = 0; second < secondsIn6hr; second += 10)
                    {
                        if (((oldestruntime + second) % secondsIn6hr) == 0)
                        {
                            oldest6hrtime = oldestruntime + second;
                            break;
                        }
                    }

                    //raw data logging time_stamp is not starting from 6hr even
                    if (oldestruntime != oldest6hrtime) firstNot6hr = true;
                    else firstNot6hr = false;
                }
                else //in case database updage is not complete, start from where is left, must be in 6hr boundary
                {
                    for (int second = 0; second < secondsIn6hr; second += 10)
                    {
                        if ((latest6hrtime + second) % secondsIn6hr == 0)
                        {
                            latest6hrtime = latest6hrtime + second;
                            break;
                        }
                    }

                    oldest6hrtime = latest6hrtime;
                }

                if ((firstNot6hr == false) && ((latestruntime - latest6hrtime) <= secondsIn6hr))
                {
                    initialized = true;
                    ReportGlobal.DatabaseRolling = false;
                }

                while ((latestruntime - latest6hrtime) > secondsIn6hr)
                {
                    //less than 6hr
                    if (firstNot6hr == true)
                    {
                        //The timestamp in 6hr database is always on the right edge of 6hr interval, if software does not start at 6hr edge, use the immediate before 6hr edge 
                        //For instance, software first time start at 10:00AM, when time reaches to 12:00PM, average data between 10:00AM and 12:00PM register for 6:00AM timestamp
                        startDate = DatabaseSDK.ConvertFromUnixTimeStamp(oldestruntime);
                        endDate = DatabaseSDK.ConvertFromUnixTimeStamp(oldest6hrtime);
                        GenerateAverageData(startDate, endDate, (oldest6hrtime - secondsIn6hr));
                        firstNot6hr = false;
                    }
                    else //for 6hr aveaging
                    {
                        alreadyWrite = false;
                        startDate = DatabaseSDK.ConvertFromUnixTimeStamp(oldest6hrtime);
                        endDate = startDate.AddHours(6);
                        if (timeStampLog % 10 == 0) Thread.Sleep(100);

                        strSql = "time_stamp FROM Runtime6hr where time_stamp == " + oldest6hrtime;
                        using (System.Data.DataTable data = aVeragedatabase.SelectIntoDataTable(strSql))
                        {
                            if (data.Rows.Count == 1)
                            {
                                DataRow row = data.Rows[0];
                                if (!row.IsNull(0))
                                {
                                    alreadyWrite = true;
                                }
                            }
                        }

                        if (alreadyWrite == false) GenerateAverageData(startDate, endDate, oldest6hrtime);
                        if (dBsuccess == true) oldest6hrtime += secondsIn6hr;
                    }

                    //This will make sure the 6hr database will be update to the latest <6hr
                    strSql = "max(time_stamp) as maxtimestamp FROM RunTime where runtime >= 0";
                    using (System.Data.DataTable data = database.SelectIntoDataTable(strSql))
                    {
                        if (data.Rows.Count == 1)
                        {
                            DataRow row = data.Rows[0];
                            if (!row.IsNull(0))
                            {
                                latestruntime = Convert.ToInt64(row.ItemArray.GetValue(0));
                            }
                        }
                    }

                    strSql = "max(time_stamp) as maxtimestamp6hr FROM Runtime6hr";
                    using (System.Data.DataTable data = aVeragedatabase.SelectIntoDataTable(strSql))
                    {
                        if (data.Rows.Count == 1)
                        {
                            DataRow row = data.Rows[0];
                            if (!row.IsNull(0))
                            {
                                latest6hrtime = Convert.ToInt64(row.ItemArray.GetValue(0));
                            }
                        }
                    }
                    if ((latestruntime - latest6hrtime) < 2 * secondsIn6hr)
                    {
                        break;
                    }                    
                }

                initialized = true;
                ReportGlobal.DatabaseRolling = false;
            }
        }

        private void GenerateAverageData(DateTime startDate, DateTime endDate, Int64 timeStamp)
        {
            List<string> sqlStatements = new List<string>();
            string strSql;
            string sqlColumns;
            string sqlValues;
            string table = this.sensorCyclinderDb[0];
            int numberOfTables = 1;
            sqlValues = String.Format("{0}, ", timeStamp);
            sqlColumns = "time_stamp, ";

            //The registers array is already sorted by table name create sql insert string for each table
            foreach (string r in this.sensorCyclinderDb)
            {
                Int64[] averagedData = new Int64[SenValCompChannelNames.Length];

                lock (this.SyncRoot)
                {
                    if (r == table)
                    {
                        for (int channel = 0; channel < this.RunTime6hr.Length; channel++)
                        {
                            strSql = "min(runtime) as runtimemin, max(runtime) as runtimemax FROM RunTime where runtime > 0 and time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks);
                            using (System.Data.DataTable data = database.SelectIntoDataTable(strSql))
                            {
                                if (data.Rows.Count == 1)
                                {
                                    DataRow row = data.Rows[0];
                                    if (!row.IsNull(0) && !row.IsNull(1))
                                    {
                                        averagedData[channel] = Convert.ToInt64(TimeSpan.FromMinutes(row.Field<Int64>(1) - row.Field<Int64>(0)).TotalMinutes);
                                        noData = false;
                                    }
                                    else
                                    {
                                        averagedData[channel] = -32766;
                                        noData = true;
                                    }
                                }
                                else
                                {
                                    averagedData[channel] = -32766;
                                    noData = true;
                                }
                            }
                        }

                        sqlColumns = sqlColumns + ColumnNames(RunTime6hr);
                        sqlValues = sqlValues + Values(averagedData, RunTime6hr.Length);
                    }
                    else
                    {
                        sqlColumns = sqlColumns.TrimEnd(new char[] { ',', ' ' });
                        sqlValues = sqlValues.TrimEnd(new char[] { ',', ' ' });
                        sqlStatements.Add(string.Format("insert into {0} ( {1} ) VALUES ( {2} );", table, sqlColumns, sqlValues));
                        table = r;
                        numberOfTables++;
                        sqlColumns = "time_stamp, ";
                        sqlValues = String.Format("{0}, ", timeStamp);

                        switch (numberOfTables)
                        {
                            case 2:
                                for (int channel = 0; channel < this.Rpm6hr.Length; )
                                {
                                    strSql = "round(avg(" + Rpm6hr[channel] + "),0), min(" + Rpm6hr[channel] + "), max(" + Rpm6hr[channel] + ") from Rpm where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks) + " and " + Rpm6hr[channel] + " > -32000";
                                    using (System.Data.DataTable data = database.SelectIntoDataTable(strSql))
                                    {
                                        if (data.Rows.Count == 1)
                                        {
                                            DataRow row = data.Rows[0];
                                            if (!row.IsNull(0) && !row.IsNull(1) && !row.IsNull(2))
                                            {
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(0)); channel++;
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(1)); channel++;
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(2)); channel++;
                                            }
                                            else
                                            {
                                                averagedData[channel] = -32766; channel++;
                                                averagedData[channel] = -32766; channel++;
                                                averagedData[channel] = -32766; channel++;
                                            }
                                        }
                                        else
                                        {
                                            averagedData[channel] = -32766; channel++;
                                            averagedData[channel] = -32766; channel++;
                                            averagedData[channel] = -32766; channel++;
                                        }
                                    }
                                }
                                sqlColumns = sqlColumns + ColumnNames(Rpm6hr);
                                sqlValues = sqlValues + Values(averagedData, Rpm6hr.Length);
                                break;

                            case 3:
                                for (int channel = 0; channel < SenValCompChannelNames.Length; )
                                {
                                    strSql = "round(avg(" + SenValCompChannelNames[channel] + "),0), min(" + SenValCompChannelNames[channel] + "), max(" + SenValCompChannelNames[channel] + ") from SenValComp where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks) + " and " + SenValCompChannelNames[channel] + " > -32000";
                                    using (System.Data.DataTable data = database.SelectIntoDataTable(strSql))
                                    {
                                        if (data.Rows.Count == 1)
                                        {
                                            DataRow row = data.Rows[0];
                                            if (!row.IsNull(0) && !row.IsNull(1) && !row.IsNull(2))
                                            {
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(0)); channel++;
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(1)); channel++;
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(2)); channel++;
                                            }
                                            else
                                            {
                                                averagedData[channel] = -32766; channel++;
                                                averagedData[channel] = -32766; channel++;
                                                averagedData[channel] = -32766; channel++;
                                            }
                                        }
                                        else
                                        {
                                            averagedData[channel] = -32766; channel++;
                                            averagedData[channel] = -32766; channel++;
                                            averagedData[channel] = -32766; channel++;
                                        }
                                    }
                                }
                                sqlColumns = sqlColumns + ColumnNames(SenValCompChannelNames);
                                sqlValues = sqlValues + Values(averagedData, SenValCompChannelNames.Length);
                                break;

                            case 4:
                                for (int channel = 0; channel < SenDevCompChannelNames.Length; )
                                {
                                    strSql = "round(avg(" + SenDevCompChannelNames[channel] + "),0), min(" + SenDevCompChannelNames[channel] + "), max(" + SenDevCompChannelNames[channel] + ") from SenDevComp where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks) + " and " + SenDevCompChannelNames[channel] + " > -32000";
                                    using (System.Data.DataTable data = database.SelectIntoDataTable(strSql))
                                    {
                                        if (data.Rows.Count == 1)
                                        {
                                            DataRow row = data.Rows[0];
                                            if (!row.IsNull(0) && !row.IsNull(1) && !row.IsNull(2))
                                            {
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(0)); channel++;
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(1)); channel++;
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(2)); channel++;
                                            }
                                            else
                                            {
                                                averagedData[channel] = -32766; channel++;
                                                averagedData[channel] = -32766; channel++;
                                                averagedData[channel] = -32766; channel++;
                                            }
                                        }
                                        else
                                        {
                                            averagedData[channel] = -32766; channel++;
                                            averagedData[channel] = -32766; channel++;
                                            averagedData[channel] = -32766; channel++;
                                        }
                                    }
                                }
                                sqlColumns = sqlColumns + ColumnNames(SenDevCompChannelNames);
                                sqlValues = sqlValues + Values(averagedData, SenDevCompChannelNames.Length);
                                break;

                            case 5:
                                for (int channel = 0; channel < CylAveCompChannelNames6hr.Length; )
                                {
                                    strSql = "round(avg(" + CylAveCompChannelNames6hr[channel] + "),0), min(" + CylAveCompChannelNames6hr[channel] + "), max(" + CylAveCompChannelNames6hr[channel] + ") from CylAveComp where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks) + " and " + CylAveCompChannelNames6hr[channel] + " > -32000";
                                    using (System.Data.DataTable data = database.SelectIntoDataTable(strSql))
                                    {
                                        if (data.Rows.Count == 1)
                                        {
                                            DataRow row = data.Rows[0];
                                            if (!row.IsNull(0) && !row.IsNull(1) && !row.IsNull(2))
                                            {
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(0)); channel++;
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(1)); channel++;
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(2)); channel++;
                                            }
                                            else
                                            {
                                                averagedData[channel] = -32766; channel++;
                                                averagedData[channel] = -32766; channel++;
                                                averagedData[channel] = -32766; channel++;
                                            }
                                        }
                                        else
                                        {
                                            averagedData[channel] = -32766; channel++;
                                            averagedData[channel] = -32766; channel++;
                                            averagedData[channel] = -32766; channel++;
                                        }
                                    }
                                }
                                sqlColumns = sqlColumns + ColumnNames(CylAveCompChannelNames6hr);
                                sqlValues = sqlValues + Values(averagedData, CylAveCompChannelNames6hr.Length);
                                break;

                            case 6:
                                for (int channel = 0; channel < CylDevCompChannelNames6hr.Length; )
                                {
                                    strSql = "round(avg(" + CylDevCompChannelNames6hr[channel] + "),0), min(" + CylDevCompChannelNames6hr[channel] + "), max(" + CylDevCompChannelNames6hr[channel] + ") from CylDevComp where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks) + " and " + CylDevCompChannelNames6hr[channel] + " > -32000";
                                    using (System.Data.DataTable data = database.SelectIntoDataTable(strSql))
                                    {
                                        if (data.Rows.Count == 1)
                                        {
                                            DataRow row = data.Rows[0];
                                            if (!row.IsNull(0) && !row.IsNull(1) && !row.IsNull(2))
                                            {
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(0)); channel++;
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(1)); channel++;
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(2)); channel++;
                                            }
                                            else
                                            {
                                                averagedData[channel] = -32766; channel++;
                                                averagedData[channel] = -32766; channel++;
                                                averagedData[channel] = -32766; channel++;
                                            }
                                        }
                                        else
                                        {
                                            averagedData[channel] = -32766; channel++;
                                            averagedData[channel] = -32766; channel++;
                                            averagedData[channel] = -32766; channel++;
                                        }
                                    }
                                }
                                sqlColumns = sqlColumns + ColumnNames(CylDevCompChannelNames6hr);
                                sqlValues = sqlValues + Values(averagedData, CylDevCompChannelNames6hr.Length);
                                break;

                            case 7:
                                for (int channel = 0; channel < this.WaterInOil6hr.Length; )
                                {
                                    strSql = "round(avg(" + WaterInOil6hr[channel] + "),0), min(" + WaterInOil6hr[channel] + "), max(" + WaterInOil6hr[channel] + ") from WaterInOil where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks) + " and " + WaterInOil6hr[channel] + " > -32000";
                                    using (System.Data.DataTable data = database.SelectIntoDataTable(strSql))
                                    {
                                        if (data.Rows.Count == 1)
                                        {
                                            DataRow row = data.Rows[0];
                                            if (!row.IsNull(0) && !row.IsNull(1) && !row.IsNull(2))
                                            {
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(0)); channel++;
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(1)); channel++;
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(2)); channel++;
                                            }
                                            else
                                            {
                                                averagedData[channel] = -32766; channel++;
                                                averagedData[channel] = -32766; channel++;
                                                averagedData[channel] = -32766; channel++;
                                            }
                                        }
                                        else
                                        {
                                            averagedData[channel] = -32766; channel++;
                                            averagedData[channel] = -32766; channel++;
                                            averagedData[channel] = -32766; channel++;
                                        }
                                    }
                                }
                                sqlColumns = sqlColumns + ColumnNames(WaterInOil6hr);
                                sqlValues = sqlValues + Values(averagedData, WaterInOil6hr.Length);
                                break;

                            case 8:
                                for (int channel = 0; channel < this.SLEM6hr.Length; )
                                {
                                    strSql = "round(avg(" + SLEM6hr[channel] + "),0), min(" + SLEM6hr[channel] + "), max(" + SLEM6hr[channel] + ") from SLEM where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startDate.Ticks) + " and time_stamp < " + DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks) + " and " + SLEM6hr[channel] + " > -32000";
                                    using (System.Data.DataTable data = database.SelectIntoDataTable(strSql))
                                    {
                                        if (data.Rows.Count == 1)
                                        {
                                            DataRow row = data.Rows[0];
                                            if (!row.IsNull(0) && !row.IsNull(1) && !row.IsNull(2))
                                            {
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(0)); channel++;
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(1)); channel++;
                                                averagedData[channel] = Convert.ToInt64(row.ItemArray.GetValue(2)); channel++;
                                            }
                                            else
                                            {
                                                averagedData[channel] = -32766; channel++;
                                                averagedData[channel] = -32766; channel++;
                                                averagedData[channel] = -32766; channel++;
                                            }
                                        }
                                        else
                                        {
                                            averagedData[channel] = -32766; channel++;
                                            averagedData[channel] = -32766; channel++;
                                            averagedData[channel] = -32766; channel++;
                                        }
                                    }
                                }
                                sqlColumns = sqlColumns + ColumnNames(SLEM6hr);
                                sqlValues = sqlValues + Values(averagedData, SLEM6hr.Length);
                                break;

                            case 9:
                                //Track the unknown
                                bool NoUnknown = true;
                                for (int channel = 0; channel < CylStatus6hr.Length; )
                                {
                                    strSql = "COUNT (*) FROM CylAveComp" + " WHERE time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startDate.Ticks) + " AND time_stamp <= " + DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks) + " AND " + CylStatus6hr[channel] + " < -32000";
                                    using (System.Data.DataTable data = database.SelectIntoDataTable(strSql))
                                    {
                                        Int64 countOfRecords = data.Rows[0].Field<Int64>(0);
                                        if (countOfRecords > 0)
                                        {
                                            averagedData[channel] = -32766;
                                            NoUnknown = false;
                                        }
                                        channel++;
                                    }
                                }
                                if (NoUnknown == false)
                                {
                                    sqlColumns = sqlColumns + ColumnNames(CylStatus6hr);
                                    sqlValues = sqlValues + Values(averagedData, CylStatus6hr.Length);
                                }
                                break;

                            default: break;
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

            dBsuccess = true;
            //if (noData == false)
            {
                //Insert the data into the database
                if (this.aVeragedatabase.ExecuteSQLStatements(sqlStatements.ToArray(), FaultErrorIndicators.FaultCodes.DataLoggerDatabaseWriteFailure, FaultErrorIndicators.FaultCodes.DataLoggerDatabaseFailure, FaultErrorIndicators.FaultCodes.DataLoggerDatabaseMissedLog) == false)
                {
                    logger.ErrorFormat("{0}", sqlStatements.ToArray().ToString());
                    //Something very bad happened to the database when inserting the
                    //data.  We need to re-create the database.
                    dBsuccess = false;
                    this.InitialiseDb();
                }
            }
            System.GC.Collect();
        }
    }

}
