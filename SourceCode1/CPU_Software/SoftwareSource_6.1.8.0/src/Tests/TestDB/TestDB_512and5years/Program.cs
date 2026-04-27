using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Data.SQLite;
using System.Threading;
using DatabaseConnector;

namespace TestDB_512and5years
{
    class Program
    {
        static SqliteConnector dbc;
        static void Main(string[] args)
        {
            dbc = new SqliteConnector(@"Data Source=C:\database\amot_xtsii_data.db3");
            DbConnection conn = dbc.Connect();
            Random r = new Random();

            //Create data in the database from DateTime.UtcNow - 5 years to DateTime.UtcNow - 5 years
            DateTime startTime = DateTime.UtcNow.AddYears(-5);
            long unixStartTime = ConvertToUnixTimestamp(startTime);
            long numberOfRecords = ConvertToUnixTimestamp(startTime) / 10;
            
            using (DbTransaction dbTransaction = conn.BeginTransaction())
            {
                for (int rec = 0; rec < numberOfRecords; rec++)
                {
                    unixStartTime += 10;

                }

                dbTransaction.Commit();
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
