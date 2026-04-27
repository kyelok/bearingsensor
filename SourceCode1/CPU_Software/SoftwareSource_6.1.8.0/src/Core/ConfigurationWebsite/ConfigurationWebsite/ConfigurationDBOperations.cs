using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Common;
using DataCollectionSDK;
using Modbus;

namespace ConfigurationWebsite
{
    /// <summary>
    /// 
    /// </summary>
    public class ConfigurationDBOperations
    {
        string dbFileName;
        public ConfigurationDBOperations(string dbFileName)
        {
            this.dbFileName = dbFileName;
        }
        /// <summary>
        /// Creates the database
        /// </summary>
        public void CreateDB()
        {
            DatabaseSDK dbSDK = new DatabaseSDK(dbFileName, 5, 100, 66);
            List<string> sqlToRun = new List<string>();
            //Generate SQL CREATE TABLE string
            sqlToRun.Add(
                "CREATE TABLE IF NOT EXISTS config(SPU_Reg INTEGER, Max_Limit INTEGER, Description VARCHAR, UIControl INTEGER, Value INTEGER, WEBupdate INTEGER, SPUupdate INTEGER);"
                );

            //Generate CREATE INDEX string for the first column
            sqlToRun.Add("CREATE INDEX IF NOT EXISTS config_index ON config (SPU_Reg);");

            dbSDK.ExecuteSQLStatements(sqlToRun.ToArray());
        }

        public void WriteNewRecordToDatabase(string[] values)
        {
            //Generate SQL string
            StringBuilder sql = new StringBuilder("INSERT INTO config VALUES(");
            foreach (string value in values)
            {
                sql.Append(String.Format("{0},", value));
            }
            //Remove comma and add closing bracket
            sql.Remove(sql.Length - 1, 1);
            sql.Append(");");
            DatabaseSDK dbSDK = new DatabaseSDK(dbFileName, 5, 100, 66);

            string[] tempArray = new string[1] { sql.ToString() };
            dbSDK.ExecuteSQLStatements(tempArray);
        }

        /// <summary>
        /// Replace a record in the database with a new one with the same ID
        /// </summary>
        /// <param name="dbFileName"></param>
        /// <param name="tableName"></param>
        /// <param name="values"></param>
        /// <param name="register">The ID of the record that will be replaced</param>
        public void UpdateFieldInRecord(string value, int register, string fieldToUpdate)
        {
            string[] sql = new string[1] { String.Format("UPDATE config SET {0} = {1} WHERE SPU_Reg = {2};", fieldToUpdate, value, register) };
            DatabaseSDK dbSDK = new DatabaseSDK(dbFileName, 5, 100, 66);
            dbSDK.ExecuteSQLStatements(sql);

        }
        /// <summary>
        /// Reads one record from the database.
        /// </summary>
        /// <param name="dbFileName">Filename of the database</param>
        /// <param name="tableName">Table to query</param>
        /// <param name="register">Primary key/Modbus register of returned record</param>
        /// <returns>The record for a given register. NULL if no record matching query</returns>
        public Object[] ReadValueFromDatabase(int register)
        {
            DatabaseSDK dbSDK = new DatabaseSDK(dbFileName, 5, 100, 66);
            using (DbConnection conn = dbSDK.GetDbConnection())
            {
                string sql = String.Format("* FROM config WHERE Spu_Reg = {0}", register);
                using (DbDataReader reader = dbSDK.Select(conn, sql))
                {
                    if (reader.Read())
                    {
                        Object[] result = new Object[reader.FieldCount];
                        reader.GetValues(result); //data returned to result passed by reference
                        return result;
                    }
                    else
                    {
                        return null;
                    }

                }
            }
        }

        /// <summary>
        /// Updates modbus registers with data from the database
        /// </summary>
        /// <param name="forceAll">
        /// If TRUE - Forces all values in database to be written to modbus. 
        /// If FALSE only writes values where last web update occurred more recently than last SPU update
        /// </param>
        public void Update(bool forceAll)
        {
            //Iterate through each record
            DatabaseSDK dbSDK = new DatabaseSDK(dbFileName, 5, 100, 66);
            using (DbConnection conn = dbSDK.GetDbConnection())
            {
                string sql = "* FROM config";

                using (DbDataReader reader = dbSDK.Select(conn, sql))
                {
                    //Iterate records returned
                    while (reader.Read())
                    {
                        //Check both dates
                        Int64 webUpdateDate = reader.GetInt64(reader.GetOrdinal("WEBupdate"));
                        Int64 spuUpdateDate = reader.GetInt64(reader.GetOrdinal("SPUupdate"));

                        if (webUpdateDate > spuUpdateDate || forceAll)
                        {
                            //SPU out of date. Get and write new values to modbus
                            UInt16 register = Convert.ToUInt16(reader.GetInt32(reader.GetOrdinal("Spu_Reg")));
                            UInt16 value = Convert.ToUInt16(reader.GetInt32(reader.GetOrdinal("Value")));

                            using (ModbusSDK modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                            {
                                modbusSDK.WriteSingleRegister(1, register, value);
                            }
                            //Set SPUupdate date correctly
                            this.UpdateFieldInRecord(DatabaseSDK.ConvertToUnixTimestamp(DateTime.Now.Ticks).ToString(), register, "SPUupdate");
                        }
                        //ELSE do nothing
                    } //Next record or stop
                }
            }
        }
    }
}
