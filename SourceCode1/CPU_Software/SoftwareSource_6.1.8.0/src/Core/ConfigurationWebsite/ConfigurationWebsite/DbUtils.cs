using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.SQLite;
using ConfigurationWebsite.Models;
using DataCollectionSDK;
using System.Text;
using EventLogging;

namespace ConfigurationWebsite
{
    public class DbUtils
    {
        static string spuConfigTable = "CREATE TABLE IF NOT EXISTS {0}(NAME VARCHAR NOT NULL UNIQUE, SPU_Reg INTEGER NOT NULL UNIQUE, Min_Limit LONG, Max_Limit LONG, Description VARCHAR, UIControl INTEGER, Value LONG NOT NULL, WEBupdate INTEGER, SPUupdate INTEGER, DataType INTEGER, AccessLevel INTEGER);";

        public static void DropTempTable(DatabaseSDK dbSDK)
        {
            string[] sql = new string[1] { "DROP TABLE IF EXISTS temp;" };
            dbSDK.ExecuteSQLStatements(sql);
        }

        public static void WriteTempTableToMainTable(DatabaseSDK dbSDK)
        {
            //Ensure that table exists before writing
            DbUtils.CreateDB(dbSDK);

            string[] sql = new string[1] { "REPLACE INTO config SELECT * FROM temp;" };
            dbSDK.ExecuteSQLStatements(sql);
        }


        public static void DeleteRecord(DatabaseSDK dbSDK, int rowid)
        {
            string[] sql = new string[1] { String.Format("DELETE FROM config WHERE rowid={0};", rowid) };
            dbSDK.ExecuteSQLStatements(sql);
        }

        /// <summary>
        /// Update a single field in a table
        /// </summary>
        /// <param name="dbFileName"></param>
        /// <param name="tableName"></param>
        /// <param name="values"></param>
        /// <param name="register">The ID of the record that will be replaced</param>
        public static bool UpdateFieldInRecord(DatabaseSDK dbSDK, string value, int register, string fieldToUpdate, string table)
        {
            string[] sql = new string[1] { String.Format("UPDATE {3} SET {0} = {1} WHERE SPU_Reg = {2};", fieldToUpdate, value, register, table) };
            try
            {
                dbSDK.ExecuteSQLStatements(sql);
            }
            catch (SQLiteException)
            {
                return false;
            }
            return true;
        }

        public static ConfigRecord PopulateConfigRecordFromDataReader(DbDataReader reader)
        {
            ConfigRecord result = new ConfigRecord(
                (int)reader.GetInt64(reader.GetOrdinal("rowid")),
                reader.GetString(reader.GetOrdinal("Name")),
                (int)reader.GetInt64(reader.GetOrdinal("SPU_Reg")),
                reader.GetString(reader.GetOrdinal("Description")),
                reader.GetInt64(reader.GetOrdinal("Min_Limit")),
                reader.GetInt64(reader.GetOrdinal("Max_Limit")),
                (UiControl)reader.GetInt32(reader.GetOrdinal("UIControl")),
                reader.GetInt64(reader.GetOrdinal("Value")),
                DatabaseSDK.ConvertFromUnixTimeStamp(reader.GetInt64(reader.GetOrdinal("SPUupdate"))),
                DatabaseSDK.ConvertFromUnixTimeStamp(reader.GetInt64(reader.GetOrdinal("WEBupdate"))),
                (SPUDataType)reader.GetInt32(reader.GetOrdinal("DataType")),
                reader.GetString(reader.GetOrdinal("AccessLevel")));

            return result;
        }

        public static ConfigRecord PopulateConfigRecordFromDb(DatabaseSDK dbSDK, int spuRegister)
        {
            ConfigRecord result = null;

            using (DbConnection conn = dbSDK.GetDbConnection())
            {
                using (DbDataReader reader = dbSDK.Select(conn, String.Format("rowid, * FROM config WHERE SPU_Reg={0}", spuRegister)))
                {
                    while (reader.Read())
                    {
                        result = PopulateConfigRecordFromDataReader(reader);
                    }
                }
            }

            return result;
        }

        public static bool UpdateFieldInRecord(DatabaseSDK dbSDK, ConfigRecord model, string username)
        {
            string[] sql = new string[1] 
            { 
                String.Format("UPDATE config SET Value = {0}, WEBupdate = {1} WHERE SPU_Reg = {2};",
                model.Value,
                DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks),
                model.Register)
            };

            ConfigRecord existingRecord = PopulateConfigRecordFromDb(dbSDK, model.Register);
            dbSDK.ExecuteSQLStatements(sql);

            EventLog logger = new EventLog();

            StringBuilder logLineBuilder = new StringBuilder("Changed config value of register ");
            logLineBuilder.Append(model.Register);
            logLineBuilder.Append(" old: ");
            logLineBuilder.Append(existingRecord.Value);
            logLineBuilder.Append(" new: ");
            logLineBuilder.Append(model.Value);

            logger.LogGeneralEvent(logLineBuilder.ToString(), username);
            return true;
        }

        public static bool AddNewRecordToDb(DatabaseSDK dbSDK, ConfigRecord model, string table, string username, long UnixTimestamp = 0)
        {
            //Ensure that table exists before writing
            DbUtils.CreateDB(dbSDK);

            using (DbConnection conn = dbSDK.GetDbConnection())
            {
                string[] sql = new string[1] {
                    
                    //Write values from model
                    String.Format(
                        "INSERT OR REPLACE INTO {8} VALUES ('{9}', {0}, {1}, {2}, '{3}', {4}, {5}, {6}, {7}, {10}, '{11}');", 
                        model.Register,
                        model.MinLimit,
                        model.MaxLimit,
                        model.Description,
                        (int)model.UiControl,
                        model.Value,
                        DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks),
                        UnixTimestamp,
                        table,
                        model.Name,
                        (int)model.Type,
                        model.UserFunction)
                };

                dbSDK.ExecuteSQLStatements(sql);

                EventLog logger = new EventLog();

                StringBuilder logLineBuilder = new StringBuilder("Adding config value of register ");
                logLineBuilder.Append(model.Register);
                logLineBuilder.Append(" with value of ");
                logLineBuilder.Append(model.Value);

                logger.LogGeneralEvent(logLineBuilder.ToString(), username);

                return true;
            }
        }

        /// <summary>
        /// Creates the database using its own instance of DatabaseSDK
        /// </summary>
        public static void CreateDB(DatabaseSDK dbSDK, string table)
        {
            List<string> sqlToRun = new List<string>();
            //Generate SQL CREATE TABLE string
            sqlToRun.Add(
                String.Format(spuConfigTable, table)
                );

            //Generate CREATE INDEX string for the first column
            sqlToRun.Add(String.Format("CREATE INDEX IF NOT EXISTS config_index ON {0} (SPU_Reg);", table));

            dbSDK.ExecuteSQLStatements(sqlToRun.ToArray());
        }

        /// <summary>
        /// Creates the database using another instance of DatabaseSDK
        /// </summary>
        /// <param name="dbSDK">Instance of DatabaseSDK to use</param>
        public static void CreateDB(DatabaseSDK dbSDK)
        {
            List<string> sqlToRun = new List<string>();
            //Generate SQL CREATE TABLE string

            sqlToRun.Add(
                String.Format(spuConfigTable, "config")
                );
            sqlToRun.Add(
                String.Format(spuConfigTable, "temp")
                );

            sqlToRun.Add(
                "CREATE TABLE IF NOT EXISTS shipinfo(VesselName VARCHAR, ImoNo VARCHAR, ClassificationSociety VARCHAR, ClassRegisterNo VARCHAR, Component VARCHAR, EngineLicenser VARCHAR, EngineMaker VARCHAR, EngineType VARCHAR, EngineSerialNumber VARCHAR);"
                );
            sqlToRun.Add(
                "CREATE TRIGGER IF NOT EXISTS del_old_shipinfo_trigger AFTER INSERT ON shipinfo BEGIN DELETE FROM shipinfo WHERE rowid < (SELECT MAX(rowid) from shipinfo); END;"
                );
            sqlToRun.Add(
                "CREATE TABLE IF NOT EXISTS xtsSerialNumber(SerialNumber VARCHAR);"
                );
            sqlToRun.Add(
                "CREATE TRIGGER IF NOT EXISTS del_old_xtsSerialNumber_trigger AFTER INSERT ON xtsSerialNumber BEGIN DELETE FROM xtsSerialNumber WHERE rowid < (SELECT MAX(rowid) from xtsSerialNumber); END;"
                );
            sqlToRun.Add(
                "CREATE TABLE IF NOT EXISTS trendDataOutput(isEnabled INTEGER);"
                ); //NOTE: Sqlite does not have a boolean data type. Integer used instead. 1=TRUE, 0=FALSE
            sqlToRun.Add(
                "CREATE TRIGGER IF NOT EXISTS del_old_trendDataOutput_trigger AFTER INSERT ON trendDataOutput BEGIN DELETE FROM trendDataOutput WHERE rowid < (SELECT MAX(rowid) from trendDataOutput); END;"
                );

            sqlToRun.Add(
                "CREATE TABLE IF NOT EXISTS glMachineSettings(gl_ipAddress VARCHAR, gl_loginName VARCHAR, gl_password VARCHAR);"
                );
            sqlToRun.Add(
                "CREATE TRIGGER IF NOT EXISTS del_old_glMachineSettings_trigger AFTER INSERT ON glMachineSettings BEGIN DELETE FROM glMachineSettings WHERE rowid < (SELECT MAX(rowid) from glMachineSettings); END;"
                );
            sqlToRun.Add(
                "CREATE TABLE IF NOT EXISTS graphScale(SensorDeviation INTEGER, SensorWear INTEGER);"
                );
            sqlToRun.Add(
                "CREATE TRIGGER IF NOT EXISTS del_old_graphScale_trigger AFTER INSERT ON graphScale BEGIN DELETE FROM graphScale WHERE rowid < (SELECT MAX(rowid) from graphScale); END;"
                );
            sqlToRun.Add(
                "CREATE TABLE IF NOT EXISTS temperatureSettings(enable INTEGER, sensorNumber INTEGER, rtdPerPlc INTEGER, barScale INTEGER, barScaleDev INTEGER, rising INTEGER, falling INTEGER, mainbearing INTEGER, crankpin INTEGER, crosshead INTEGER);"
                );
            sqlToRun.Add(
                "CREATE TRIGGER IF NOT EXISTS del_old_temperatureSettings_trigger AFTER INSERT ON temperatureSettings BEGIN DELETE FROM temperatureSettings WHERE rowid < (SELECT MAX(rowid) from temperatureSettings); END;"
                );

            //Generate CREATE INDEX string for the first column
            sqlToRun.Add(String.Format("CREATE INDEX IF NOT EXISTS config_index ON {0} (SPU_Reg);", "config"));
            sqlToRun.Add(String.Format("CREATE INDEX IF NOT EXISTS config_index ON {0} (SPU_Reg);", "temp"));

            dbSDK.ExecuteSQLStatements(sqlToRun.ToArray());
        }
    }
}