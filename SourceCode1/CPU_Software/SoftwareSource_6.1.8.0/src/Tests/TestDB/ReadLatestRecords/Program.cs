using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Threading;
using DatabaseConnector;

namespace ReadLatestRecords
{
    class Program
    {
        static void Main(string[] args)
        {
            
            /* Arguments:
             * ----------
             * 0  Database path
             * 1  Tables to read from, space deliminated
             * Example: 
             * --------
             * ReadLatestRecords C:\path\to\database.db3 Table_1 Table_2 Table_3
             */
            IDatabaseConnector dbc = new SqliteConnector("data source =\"" + args[0] + "\"");
            using (DbConnection conn = dbc.Connect())
            {
                for (int i = 1; i < args.Length; i++)
                {
                    Object[] values;
                    using (DbDataReader dbDataReader = dbc.Select(conn, String.Format("* FROM {0} WHERE rowid = (SELECT MAX(rowid) FROM {0})", args[i])))
                    {
                        dbDataReader.Read();
                        values = new Object[dbDataReader.FieldCount];
                        dbDataReader.GetValues(values);
                    }
                    //Print out values to console
                    foreach(Int64 value in values)
                    {
                        Console.Write(value + "  |  ");
                    }
                    Console.Write('\n');
                }
            }
        }
    }
}
