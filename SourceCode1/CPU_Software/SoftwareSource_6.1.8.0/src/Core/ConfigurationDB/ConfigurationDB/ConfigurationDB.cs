using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataCollectionSDK;

namespace ConfigurationDB
{
    /// <summary>
    /// 
    /// </summary>
    public class ConfigurationDB
    {
        /// <summary>
        /// Creates the database
        /// </summary>
        public void CreateDB(string dbFileName, string tableName, string[][] fieldNameAndType)
        {
            DatabaseSDK dbSDK = new DatabaseSDK(dbFileName, 5, 100, 66);
            List<string> sqlToRun = new List<string>();
            //Generate SQL CREATE TABLE string
            StringBuilder sql = new StringBuilder(String.Format("CREATE TABLE IF NOT EXISTS {0} (", tableName));
            for (int i = 0; i > fieldNameAndType.Length; i++)
            {
                sql.Append(String.Format("{0} {1},", fieldNameAndType[i][0], fieldNameAndType[i][1]));
            }
            //Remove comma and add closing bracket
            sql.Remove(sql.Length - 1, 1);
            sql.Append(");");

            sqlToRun.Add(sql.ToString());
            sql = null;

            //Generate CREATE INDEX string for the first column
            sqlToRun.Add(string.Format("CREATE INDEX IF NOT EXISTS {0}_index ON {0} (time_stamp);", fieldNameAndType[0][0]));

            dbSDK.ExecuteSQLStatements(sqlToRun.ToArray());
        }

        public void WriteNewRecordToDatabase(string dbFileName, string tableName, string[] values)
        {
            //Check that values comforms with database schema
            //TODO

            //Generate SQL string
            StringBuilder sql = new StringBuilder(String.Format("INSERT INTO {0} (", tableName));
            foreach (string value in values)
            {
                sql.Append(String.Format("{0},", value));
            }

            DatabaseSDK dbSDK = new DatabaseSDK(dbFileName, 5, 100, 66);

            //TODO: Rewrite DatabaseSDK to take single SQL commands
            //HACK: Add sql.ToString() to an array before passing to ExecureSQLStatements(string[])
            string[] tempArray = new string[1] { sql.ToString() };
            dbSDK.ExecuteSQLStatements(tempArray);
        }

        /// <summary>
        /// Replace a record in the database with a new one with the same ID
        /// </summary>
        /// <param name="dbFileName"></param>
        /// <param name="tableName"></param>
        /// <param name="values"></param>
        /// <param name="recordID">The ID of the record that will be replaced</param>
        public void ReplaceRecordInDatabase(string dbFileName, string tableName, string values[], int recordID)
        {


        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="dbFileName">Filename of the database</param>
        /// <param name="tableName">Table to query</param>
        /// <param name="register">Primary key/Modbus register of returned record</param>
        /// <returns>The record for a given register</returns>
        public Object[] ReadValuesFromDatabase(string dbFileName, string tableName, int register)
        {
            
        }

        /// <summary>
        /// Checks whether some values comply with the schema of a pre-existing db
        /// </summary>
        /// <param name="dbFileName"></param>
        /// <param name="tableName"></param>
        /// <param name="values"></param>
        /// <returns>TRUE if compliant, FALSE if not</returns>
        private bool CheckDbSchemaCompliance(string dbFileName, string tableName, string[] values)
        {
            return true;
        }
    
    }
}
