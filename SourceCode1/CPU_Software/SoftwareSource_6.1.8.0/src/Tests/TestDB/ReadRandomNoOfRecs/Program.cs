using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Data.SQLite;
using System.Threading;
using System.Diagnostics;
using DatabaseConnector;
using TriggerInsertTest;

namespace ReadRandomNoOfRecs
{
    class Program
    {
        static IDatabaseConnector dbc;
        static DbConnection conn;

        static void Main(string[] args)
        {
            //Get db connection info
            Console.WriteLine("Enter filepath to database:");
            String filepath = Console.ReadLine();

            //Connect to db
            dbc = new SqliteConnector(@"Data Source=" + filepath);
            conn = dbc.Connect();
            
            Console.WriteLine("Enter sleep duration in ms (1000 = 1 sec):");
            Run(int.Parse(Console.ReadLine()));
            //while (true)
            //{
            //    Console.WriteLine("How many times would you like to query the db?\nType number or press ENTER for 1");
            //    try { Run(int.Parse(Console.ReadLine())); }
            //    catch (FormatException) { Run(1); }
            //}
        }

        private static void Run(int sleep)
        {
            Random random = new Random();
            List<TableData> tableData = new List<TableData>();
            tableData.Add(new TableData("senValComp", 29));
            tableData.Add(new TableData("senDevComp", 29));
            tableData.Add(new TableData("RefValues", 29));
            tableData.Add(new TableData("DynAlarm", 7));
            tableData.Add(new TableData("CylAveComp", 15));
            tableData.Add(new TableData("CylDevComp", 15));
            tableData.Add(new TableData("Rpm", 2));
            tableData.Add(new TableData("SLEM", 2));
            tableData.Add(new TableData("WaterInOil", 4));
            tableData.Add(new TableData("RunTime", 2));
            tableData.Add(new TableData("CylSum", 15));
            tableData.Add(new TableData("MBNSum", 15));

            while (true)
            {
                
                int noOfRecordsToRead = random.Next(1, 100);
                foreach (TableData td in tableData)
                {
                    Console.WriteLine("Querying data from: " + td.name);
                    //Generate SQL query string

                    string sql = "* FROM " + td.name + " WHERE rowid BETWEEN ((SELECT MAX(rowid) FROM " + td.name + ")-" + noOfRecordsToRead + ") AND (SELECT MAX(rowid) FROM " + td.name
                        + ");";
                    //Console.Write(" with sql: " + sql);
                    //Run SQL query

                    //Perform read
                    try
                    {

                        DbDataReader reader = dbc.Select(conn, sql);
                        while (reader.Read())
                        {
                            Object[] values = new Object[td.fields];
                            reader.GetValues(values);

                            foreach (Object value in values)
                            {
                                Console.Write(value + "|");
                            }
                            Console.WriteLine('\n');
                        }
                    }
                    catch (SQLiteException e)
                    {
                        Console.WriteLine("EXCEPTION: " + e + " " + e.ErrorCode);
                    }
                    
                }
                Thread.Sleep(sleep);
            }
        }
    }
}

