using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Data.SQLite;
using System.Threading;
using System.Diagnostics;

namespace TriggerInsertTest
{
    /// <summary>
    /// Use this program to insert data into a 'full' database.
    /// The following information will be given:
    ///  * Time taken for operation to take place
    ///  * Size of database before and after operation took place
    /// </summary>
    class Program
    {

        static SqliteConnector dbc;
        static DbConnection conn;

        static void Main(string[] args)
        {
            //Get db connection info
            Console.WriteLine("Enter filepath to database:");
            String filepath = Console.ReadLine();

            //Connect to db
            dbc = new SqliteConnector(@"Data Source=" + filepath);
            conn = dbc.Connect();

            while (true)
            {
                Run();
            }
        }

        private static void Run()
        {
            //Get name of table to work with
            Console.WriteLine("Enter name of table to add value to, or all:");
            String tbl = Console.ReadLine();

            if (tbl == "all")
            {
                InsertIntoAll();
            }
            else
            {
                InsertIntoTbl(tbl, 0);
            }
        }

        private static void InsertIntoAll()
        {
            Random r = new Random();
            Stopwatch sw = new Stopwatch();
            Int64 timestamp = 0;

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

            DbDataReader reader = dbc.Select(conn, "* from " + "senValComp" + " where rowid = (select max(rowid) from " + "senValComp" + ");");
            while (reader.Read())
            {
                timestamp = (Int64)reader.GetValue(0);
            }

            Console.WriteLine("Latest timestamp = " + timestamp.ToString());

            timestamp = timestamp + 10; //Increment timestamp

            //Get number of records in table
            foreach (TableData td in tableData)
            {
                int beforeRecords = 0;

                reader = dbc.Select(conn, "COUNT(Rowid) from " + td.name + ";");
                while (reader.Read())
                {
                    td.beforeRecords = (int)reader.GetValue(0);
                }
                Console.WriteLine("Records before for "+ td.name +"+: " + beforeRecords);

                reader.Close();
            }
            

            using (DbTransaction dbTransaction = conn.BeginTransaction())
            {
                // ***START STOPWATCH***
                sw.Start();

                //Write random data to each table
                dbc.InsertInto(conn, "senValComp VALUES(" + timestamp + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + ");");
                dbc.InsertInto(conn, "senDevComp VALUES(" + timestamp + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + ");");
                dbc.InsertInto(conn, "RefValues VALUES(" + timestamp + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + ");");
                dbc.InsertInto(conn, "DynAlarm VALUES(" + timestamp + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + ");");
                dbc.InsertInto(conn, "CylAveComp VALUES(" + timestamp + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + ");");
                dbc.InsertInto(conn, "CylDevComp VALUES(" + timestamp + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + ");");
                dbc.InsertInto(conn, "Rpm VALUES(" + timestamp + "," + r.Next(100) + ");");
                dbc.InsertInto(conn, "SLEM VALUES(" + timestamp + "," + r.Next(100) + ");");
                dbc.InsertInto(conn, "WaterInOil VALUES(" + timestamp + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + ");");
                dbc.InsertInto(conn, "RunTime VALUES(" + timestamp + "," + r.Next(100) + ");");
                dbc.InsertInto(conn, "CylSum VALUES(" + timestamp + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + ");");
                dbc.InsertInto(conn, "MBNSum VALUES(" + timestamp + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + ");");

                //Commit transaction
                dbTransaction.Commit();
            }
            // ***STOP STOPWATCH***
            sw.Stop();
            // Get the elapsed time as a TimeSpan value.
            TimeSpan ts = sw.Elapsed;

            // Format and display the TimeSpan value.
            string elapsedTime = String.Format("{0:00}:{1:00}:{2:00}.{3:00}",
                ts.Hours, ts.Minutes, ts.Seconds,
                ts.Milliseconds / 10);
            Console.WriteLine("Operation time was (HH:MM:SS:ms): " + elapsedTime);

            //Iterate tabledata
            foreach (TableData td in tableData)
            {
                GetResults(td.name, td.fields, timestamp, td.beforeRecords);
            }
        }

        private static void InsertIntoTbl(String tbl, int fields)
        {

            //Get number of records in table
            int beforeRecords = 0;

            DbDataReader reader = dbc.Select(conn, "COUNT(Rowid) from " + tbl + ";");
            while (reader.Read())
            {
                beforeRecords = int.Parse(reader.GetValue(0).ToString());
            }
            Console.WriteLine("Records before: " + beforeRecords);

            reader.Close();

            //If no number of fields is given ask the user
            if (fields == 0)
            {
                //Get number of fields
                Console.WriteLine("Enter number of fields: ");
                String fieldsStr = Console.ReadLine();
                fields = int.Parse(fieldsStr);
            }
            //Generate SQL INSERT statement
            StringBuilder sql = new StringBuilder(tbl + " VALUES(");

            Int64 timestamp = 0;

            reader = dbc.Select(conn, "* from " + tbl + " where rowid = (select max(rowid) from " + tbl + ");");
            while (reader.Read())
            {
                //sql.Append(((Int64)reader.GetValue(0)+1).ToString() +",");
                timestamp = (Int64)reader.GetValue(0);
            }

            Console.WriteLine("Latest timestamp = " + timestamp.ToString());

            sql.Append((timestamp + 10).ToString() + ",");

            
            for (int i = 1; i < fields; i++)
            {
                sql.Append((500+i) + ",");
            }
            sql.Remove(sql.Length - 1, 1);
            sql.Append(");");

            Console.WriteLine("SQL statement: INSERT INTO " + sql.ToString());

            // ***START STOPWATCH***
            Stopwatch sw = new Stopwatch();
            sw.Start();

            //Perform SQL INSERT operation
            using (DbTransaction dbTransaction = conn.BeginTransaction())
            {
                dbc.InsertInto(conn, sql.ToString());
                dbTransaction.Commit();
            }

            // ***STOP STOPWATCH***
            sw.Stop();
            // Get the elapsed time as a TimeSpan value.
            TimeSpan ts = sw.Elapsed;

            // Format and display the TimeSpan value.
            string elapsedTime = String.Format("{0:00}:{1:00}:{2:00}.{3:00}",
                ts.Hours, ts.Minutes, ts.Seconds,
                ts.Milliseconds / 10);
            Console.WriteLine("Operation time was (HH:MM:SS:ms): " + elapsedTime);

            GetResults(tbl, fields, timestamp, beforeRecords);
            
        }

        private static void GetResults(String tbl, int fields, Int64 timestamp, int beforeRecords)
        {
            //Get/compare number of records
            int afterRecords = 0;

            DbDataReader reader = dbc.Select(conn, "COUNT(Rowid) from " + tbl + ";");
            while (reader.Read())
            {
                afterRecords = int.Parse(reader.GetValue(0).ToString());
            }
            Console.WriteLine("Records after for " + tbl + ": " + afterRecords);

            reader.Close();

            reader = dbc.Select(conn, "* from " + tbl + " where rowid = (select max(rowid) from " + tbl + ");");
            while (reader.Read())
            {
                Object[] values = new Object[fields];
                reader.GetValues(values);
                Console.WriteLine(tbl + " Newest record is: ");
                foreach (Object value in values)
                {
                    Console.Write(value + " | ");
                }
                if ((Int64)values[0] == (timestamp + 10))
                {
                    Console.WriteLine(tbl + " Latest timestamp is previous timestamp+1");
                }
                else
                {
                    Console.WriteLine(tbl +" Timestamps do not match");
                }
                Console.Write('\n');
            }

            if (afterRecords == beforeRecords)
            {
                Console.WriteLine(tbl + " Records After == Records before | Trigger working!\nBefore: " + beforeRecords + "\nAfter:  " + afterRecords);
            }
            else if (afterRecords > beforeRecords)
            {
                Console.WriteLine(tbl + " Records After > Records before | Trigger not working or database was undersize.");
            }


        }
    }
}
