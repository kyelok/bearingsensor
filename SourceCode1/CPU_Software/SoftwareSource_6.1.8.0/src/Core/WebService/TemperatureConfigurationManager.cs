/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using WebServiceObjects;
using DataCollectionSDK;
using HelperClasses;
using System.IO;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;
using System.Data.Common;
using EventLogging;
using Configuration;

namespace WebService
{
    internal class TemperatureConfigManager
    {
        private DatabaseSDK databaseSDK;        

        /// <summary>
        /// Default constructor
        /// </summary>
        public TemperatureConfigManager(DatabaseSDK databaseSDK)
        {
            this.databaseSDK = databaseSDK;            

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
            sqlStatement.Append("    rtdGood boolean");             // temperature  slowdown
            sqlStatement.Append(");");

            databaseSDK.ExecuteSQLStatements(new String[] { sqlStatement.ToString() }, FaultErrorIndicators.FaultCodes.EventLogWriteFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog);           
        }

        /// <summary>
        /// Updates the temperature configuration
        /// </summary>
        /// <param name="configuration">The new configuration</param>
        public void SetTemperatureConfiguration(TemperatureConfiguration configuration)
        {
            string[] sqlInsert = new string[1];
            for (int i = 0; i < 3; i++)
            {                
                for (int sensor = 0; sensor < configuration.TemperatureSensors; sensor++)
                {
                    sqlInsert[0] = string.Format("update temperature set channelname='{0}', temperatureEnable={1}, alarmLevel={2}, slowdownLevel={3} where channelID={4};",
                        configuration.TemperatureChannelName[sensor], configuration.Enable[sensor] ? 1 : 0, configuration.TemperatureAlarmLevel[sensor],
                        configuration.TemperatureSlowdownLevel[sensor], configuration.Id[sensor]);
                    databaseSDK.ExecuteSQLStatements(sqlInsert);

                    if (i == 2)
                    {
                        EventLog logger = new EventLog();

                        logger.TemperatureSetting(configuration.TemperatureChannelName[sensor], configuration.Enable[sensor], configuration.TemperatureAlarmLevel[sensor], configuration.TemperatureSlowdownLevel[sensor]);
                    }
                }
            }
        }

        /// <summary>
        /// Exports the settings to a Stream in CSV format.
        /// </summary>
        /// <param name="output">The Stream to export the event log too.</param>
        public void ExportToCSV(StreamWriter output)
        {
            
            StringBuilder stringBuilder = new StringBuilder();
            output.WriteLine("\"Sensor number\",\"Rtd per module\", \"Rising hysteresis\", \"Falling hysteresis\"");
            output.WriteLine("{0},{1},{2},{3}", TemperatureGloabal.SensorNumber, TemperatureGloabal.RtdPerPlc, TemperatureGloabal.Rising, TemperatureGloabal.Falling);

            output.WriteLine("\"Channel name\",\"Enable\",\"Alarm level\",\"Slowdown level\",\"Connection issue\"");            

            using (DbConnection connection = databaseSDK.GetDbConnection())
            {
                using (DbDataReader data = databaseSDK.Select(connection, TemperatureDatabaseObject.TemperatureColumns + " from temperature;"))
                {                        
                    while (data.Read())
                    {
                        int channelID = data.GetInt32(0);
                        string channelName = data.GetString(1);
                        string temperatureEnable = data.GetInt32(2) == 0 ? "No" : "Yes";
                        ushort temperature = (ushort)data.GetInt32(3);
                        bool temperatureAlarm = data.GetInt32(4) == 0 ? false : true;
                        bool temperatureSlowdown = data.GetInt32(5) == 0 ? false : true;
                        ushort alarmLevel = (ushort)data.GetInt32(6);
                        ushort slowdownLevel = (ushort)data.GetInt32(7);
                        short temperatureDev = (short)data.GetInt32(8);
                        string rtdGood = data.GetInt32(9) == 0 ? "Yes" : "No";

                        output.WriteLine("\"{0}\",\"{1}\",{2},{3},\"{4}\"",
                                channelName, temperatureEnable, alarmLevel, slowdownLevel,rtdGood);
                    }
                }
            }               
        }

        /// <summary>
        /// Exports the temperature setting to a CVS file.
        /// </summary>
        /// <param name="file">The file to export the event log</param>
        public void ExportToCVS(string file)
        {
            using (StreamWriter output = new StreamWriter(File.Create(file)))
            {
                ExportToCSV(output);
                output.Flush();
                output.Close();
            }
        }
    }
}
