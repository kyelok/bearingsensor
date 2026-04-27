using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Data.SQLite;
using System.Threading;
using DataCollectionSDK;

namespace TestDB
{
    class Program
    {
        static void Main(string[] args)
        {
            DatabaseSDK dbc = new DatabaseSDK(@"C:\database\amot_xtsii_data.db3",0,0,0);
            DbConnection conn = dbc.GetDbConnection();
            Random r = new Random();
            DateTime startTime = DateTime.UtcNow.AddYears(-5);
            long unixStartTime = ConvertToUnixTimestamp(startTime);
            long numberOfRecords = ConvertToUnixTimestamp(startTime) / 10;
            long runTime = 0;

            //for (int n = 0; n < numberOfRecords; n++)
            {
                //Console.WriteLine("Loop " + (n + 1) + " of " + numberOfRecords / 10000);

                DbTransaction dbTransaction;
                dbTransaction = conn.BeginTransaction();
                for (int i = 0; i < numberOfRecords; i++)
            {
                    if (i % 10000 == 0)
                {
                        dbTransaction.Commit();
                        dbTransaction = conn.BeginTransaction();

                        Console.Clear();
                        Console.SetWindowPosition(0, 0);
                        Console.WriteLine("Inserted {0} records", i);
                    }

                    dbc.InsertInto(conn, "senValComp VALUES(" + unixStartTime + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + ");");
                    dbc.InsertInto(conn, "senDevComp VALUES(" + unixStartTime + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + ");");
                    dbc.InsertInto(conn, "RefValues VALUES(" + unixStartTime + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + ");");
                    dbc.InsertInto(conn, "DynAlarm VALUES(" + unixStartTime + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + ");");
                    dbc.InsertInto(conn, "CylAveComp VALUES(" + unixStartTime + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + ");");
                    dbc.InsertInto(conn, "CylDevComp VALUES(" + unixStartTime + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + ");");
                    dbc.InsertInto(conn, "Rpm VALUES(" + unixStartTime + "," + r.Next(0, 110) + ", 0);");
                    dbc.InsertInto(conn, "SLEM VALUES(" + unixStartTime + "," + r.Next(-500, 500) + ");");
                    dbc.InsertInto(conn, "WaterInOil VALUES(" + unixStartTime + "," + r.Next(1000, 10000) + "," + r.Next(-1000, 1000) + "," + r.Next(0, 0) + ");");
                    dbc.InsertInto(conn, "RunTime VALUES(" + unixStartTime + "," + runTime + ");");
                    dbc.InsertInto(conn, "CylSum VALUES(" + unixStartTime + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + ");");
                    dbc.InsertInto(conn, "MBNSum VALUES(" + unixStartTime + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + "," + r.Next(-500, 500) + ");");

                    unixStartTime += 10;
                    runTime++;
                }
            }
        }

        static DateTime ConvertFromUnixTimestamp(Int64 timestamp)
        {
            DateTime origin = new DateTime(1970, 1, 1, 0, 0, 0, 0);
            return origin.AddSeconds(timestamp);
        }

        static int ConvertToUnixTimestamp(DateTime date)
        {
            DateTime origin = new DateTime(1970, 1, 1, 0, 0, 0, 0);
            TimeSpan diff = date - origin;
            return ((int)Math.Floor(diff.TotalSeconds));
        }


    }
}
