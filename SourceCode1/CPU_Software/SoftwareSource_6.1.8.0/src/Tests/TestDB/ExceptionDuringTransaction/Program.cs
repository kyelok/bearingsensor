using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Data.SQLite;
using System.Threading;
using DatabaseConnector;

namespace ExceptionDuringTransaction
{
    class Program
    {
        static SqliteConnector dbc;
        static void Main(string[] args)
        {
            dbc = new SqliteConnector(@"Data Source=C:\TestDB\Exception.db3");
            DbConnection conn = dbc.Connect();
            Random r = new Random();

            dbc.CreateTable(conn, "CylAveComp(time_stamp INTEGER, cylav1 INTEGER,cylav2 INTEGER,cylav3 INTEGER,cylav4 INTEGER,cylav5 INTEGER,cylav6 INTEGER,cylav7 INTEGER,cylav8 INTEGER,cylav9 INTEGER,cylav10 INTEGER,cylav11 INTEGER,cylav12 INTEGER,cylav13 INTEGER,cylav14 INTEGER);");
            dbc.ExecuteNonQuery(conn, "CREATE INDEX IF NOT EXISTS CylAveComp_index ON CylAveComp(time_stamp);");
            dbc.ExecuteNonQuery(conn, string.Format("CREATE TRIGGER IF NOT EXISTS del_old_{0}_records AFTER INSERT ON {0} BEGIN DELETE FROM {0} WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM {0} ) - 157784630); END;", "CylAveComp"));

            dbc.CreateTable(conn, "CylDevComp(time_stamp INTEGER, cyldev1 INTEGER,cyldev2 INTEGER,cyldev3 INTEGER,cyldev4 INTEGER,cyldev5 INTEGER,cyldev6 INTEGER,cyldev7 INTEGER,cyldev8 INTEGER,cyldev9 INTEGER,cyldev10 INTEGER,cyldev11 INTEGER,cyldev12 INTEGER,cyldev13 INTEGER,cyldev14 INTEGER);");
            dbc.ExecuteNonQuery(conn, "CREATE INDEX IF NOT EXISTS CylDevComp_index ON CylDevComp(time_stamp);");
            dbc.ExecuteNonQuery(conn, string.Format("CREATE TRIGGER IF NOT EXISTS del_old_{0}_records AFTER INSERT ON {0} BEGIN DELETE FROM {0} WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM {0} ) - 157784630); END;", "CylDevComp"));

            dbc.CreateTable(conn, "CylSum(time_stamp INTEGER, cylsum1 INTEGER,cylsum2 INTEGER,cylsum3 INTEGER,cylsum4 INTEGER,cylsum5 INTEGER,cylsum6 INTEGER,cylsum7 INTEGER,cylsum8 INTEGER,cylsum9 INTEGER,cylsum10 INTEGER,cylsum11 INTEGER,cylsum12 INTEGER,cylsum13 INTEGER,cylsum14 INTEGER);");
            dbc.ExecuteNonQuery(conn, "CREATE INDEX IF NOT EXISTS CylSum_index ON CylSum(time_stamp);");
            dbc.ExecuteNonQuery(conn, string.Format("CREATE TRIGGER IF NOT EXISTS del_old_{0}_records AFTER INSERT ON {0} BEGIN DELETE FROM {0} WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM {0} ) - 157784630); END;", "CylSum"));

            dbc.CreateTable(conn, "DynAlarm(time_stamp INTEGER, single1 INTEGER,cylsum1 INTEGER,mbnsum1 INTEGER,single2 INTEGER,cylsum2 INTEGER,mbnsum2 INTEGER);");
            dbc.ExecuteNonQuery(conn, "CREATE INDEX IF NOT EXISTS DynAlarm_index ON DynAlarm(time_stamp);");
            dbc.ExecuteNonQuery(conn, string.Format("CREATE TRIGGER IF NOT EXISTS del_old_{0}_records AFTER INSERT ON {0} BEGIN DELETE FROM {0} WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM {0} ) - 157784630); END;", "DynAlarm"));

            dbc.CreateTable(conn, "MBNSum(time_stamp INTEGER, mbnsum1 INTEGER,mbnsum2 INTEGER,mbnsum3 INTEGER,mbnsum4 INTEGER,mbnsum5 INTEGER,mbnsum6 INTEGER,mbnsum7 INTEGER,mbnsum8 INTEGER,mbnsum9 INTEGER,mbnsum10 INTEGER,mbnsum11 INTEGER,mbnsum12 INTEGER,mbnsum13 INTEGER,mbnsum14 INTEGER);");
            dbc.ExecuteNonQuery(conn, "CREATE INDEX IF NOT EXISTS MBNSum_index ON MBNSum(time_stamp);");
            dbc.ExecuteNonQuery(conn, string.Format("CREATE TRIGGER IF NOT EXISTS del_old_{0}_records AFTER INSERT ON {0} BEGIN DELETE FROM {0} WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM {0} ) - 157784630); END;", "MBNSum"));

            dbc.CreateTable(conn, "RefValues(time_stamp INTEGER, refv1a INTEGER,refv1b INTEGER,refv2a INTEGER,refv2b INTEGER,refv3a INTEGER,refv3b INTEGER,refv4a INTEGER,refv4b INTEGER,refv5a INTEGER,refv5b INTEGER,refv6a INTEGER,refv6b INTEGER,refv7a INTEGER,refv7b INTEGER,refv8a INTEGER,refv8b INTEGER,refv9a INTEGER,refv9b INTEGER,refv10a INTEGER,refv10b INTEGER,refv11a INTEGER,refv11b INTEGER,refv12a INTEGER,refv12b INTEGER,refv13a INTEGER,refv13b INTEGER,refv14a INTEGER,refv14b INTEGER);");
            dbc.ExecuteNonQuery(conn, "CREATE INDEX IF NOT EXISTS RefValues_index ON RefValues(time_stamp);");
            dbc.ExecuteNonQuery(conn, string.Format("CREATE TRIGGER IF NOT EXISTS del_old_{0}_records AFTER INSERT ON {0} BEGIN DELETE FROM {0} WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM {0} ) - 157784630); END;", "RefValues"));

            dbc.CreateTable(conn, "Rpm(time_stamp INTEGER, rpm1 INTEGER);");
            dbc.ExecuteNonQuery(conn, "CREATE INDEX IF NOT EXISTS Rpm_index ON Rpm(time_stamp);");
            dbc.ExecuteNonQuery(conn, string.Format("CREATE TRIGGER IF NOT EXISTS del_old_{0}_records AFTER INSERT ON {0} BEGIN DELETE FROM {0} WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM {0} ) - 157784630); END;", "Rpm"));

            dbc.CreateTable(conn, "RunTime(time_stamp INTEGER, runtime INTEGER);");
            dbc.ExecuteNonQuery(conn, "CREATE INDEX IF NOT EXISTS RunTime_index ON RunTime(time_stamp);");
            dbc.ExecuteNonQuery(conn, string.Format("CREATE TRIGGER IF NOT EXISTS del_old_{0}_records AFTER INSERT ON {0} BEGIN DELETE FROM {0} WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM {0} ) - 157784630); END;", "RunTime"));

            dbc.CreateTable(conn, "SLEM(time_stamp INTEGER, slemmv INTEGER);");
            dbc.ExecuteNonQuery(conn, "CREATE INDEX IF NOT EXISTS SLEM_index ON SLEM(time_stamp);");
            dbc.ExecuteNonQuery(conn, string.Format("CREATE TRIGGER IF NOT EXISTS del_old_{0}_records AFTER INSERT ON {0} BEGIN DELETE FROM {0} WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM {0} ) - 157784630); END;", "SLEM"));

            dbc.CreateTable(conn, "WaterInOil(time_stamp INTEGER, wateractivity INTEGER,ppm INTEGER,temp INTEGER);");
            dbc.ExecuteNonQuery(conn, "CREATE INDEX IF NOT EXISTS WaterInOil_index ON WaterInOil(time_stamp);");
            dbc.ExecuteNonQuery(conn, string.Format("CREATE TRIGGER IF NOT EXISTS del_old_{0}_records AFTER INSERT ON {0} BEGIN DELETE FROM {0} WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM {0} ) - 157784630); END;", "WaterInOil"));

            dbc.CreateTable(conn, "senDevComp(time_stamp INTEGER, dev1a INTEGER,dev1b INTEGER,dev2a INTEGER,dev2b INTEGER,dev3a INTEGER,dev3b INTEGER,dev4a INTEGER,dev4b INTEGER,dev5a INTEGER,dev5b INTEGER,dev6a INTEGER,dev6b INTEGER,dev7a INTEGER,dev7b INTEGER,dev8a INTEGER,dev8b INTEGER,dev9a INTEGER,dev9b INTEGER,dev10a INTEGER,dev10b INTEGER,dev11a INTEGER,dev11b INTEGER,dev12a INTEGER,dev12b INTEGER,dev13a INTEGER,dev13b INTEGER,dev14a INTEGER,dev14b INTEGER);");
            dbc.ExecuteNonQuery(conn, "CREATE INDEX IF NOT EXISTS senDevComp_index ON senDevComp(time_stamp);");
            dbc.ExecuteNonQuery(conn, string.Format("CREATE TRIGGER IF NOT EXISTS del_old_{0}_records AFTER INSERT ON {0} BEGIN DELETE FROM {0} WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM {0} ) - 157784630); END;", "senDevComp"));

            dbc.CreateTable(conn, "senValComp(time_stamp INTEGER, comp1a INTEGER,comp1b INTEGER,comp2a INTEGER,comp2b INTEGER,comp3a INTEGER,comp3b INTEGER,comp4a INTEGER,comp4b INTEGER,comp5a INTEGER,comp5b INTEGER,comp6a INTEGER,comp6b INTEGER,comp7a INTEGER,comp7b INTEGER,comp8a INTEGER,comp8b INTEGER,comp9a INTEGER,comp9b INTEGER,comp10a INTEGER,comp10b INTEGER,comp11a INTEGER,comp11b INTEGER,comp12a INTEGER,comp12b INTEGER,comp13a INTEGER,comp13b INTEGER,comp14a INTEGER,comp14b INTEGER);");
            dbc.ExecuteNonQuery(conn, "CREATE INDEX IF NOT EXISTS senValComp_index ON senValComp(time_stamp);");
            dbc.ExecuteNonQuery(conn, string.Format("CREATE TRIGGER IF NOT EXISTS del_old_{0}_records AFTER INSERT ON {0} BEGIN DELETE FROM {0} WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM {0} ) - 157784630); END;", "senValComp"));

            Console.WriteLine("An exception will be thrown on writing the third record.");

            DateTime startTime = DateTime.Now;

            //for (int n = 0; n < 5; n++)
            {
                //Console.WriteLine("Loop " + (n + 1) + " of 5");

                //There will be 2 transactions
                for (int n = 0; n < 2; n++)
                {
                    try
                    {
                        using (DbTransaction dbTransaction = conn.BeginTransaction())
                        {
                            for (int i = 0; i < 4; i++)
                            {
                                Console.WriteLine("Writing record " + (i + 1) + " of 4");
                                startTime = startTime + new TimeSpan(0, 0, 10);

                                //Write random data to each table
                                dbc.InsertInto(conn, "senValComp VALUES(" + ConvertToUnixTimestamp(startTime) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + ");");
                                dbc.InsertInto(conn, "senDevComp VALUES(" + ConvertToUnixTimestamp(startTime) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + ");");
                                dbc.InsertInto(conn, "RefValues VALUES(" + ConvertToUnixTimestamp(startTime) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + ");");
                                dbc.InsertInto(conn, "DynAlarm VALUES(" + ConvertToUnixTimestamp(startTime) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + ");");
                                dbc.InsertInto(conn, "CylAveComp VALUES(" + ConvertToUnixTimestamp(startTime) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + ");");

                                //THROW EXCEPTION on third write of first operation only
                                if (n == 0 && i == 2)
                                {
                                    throw new SQLiteException();
                                }

                                dbc.InsertInto(conn, "CylDevComp VALUES(" + ConvertToUnixTimestamp(startTime) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + ");");
                                dbc.InsertInto(conn, "Rpm VALUES(" + ConvertToUnixTimestamp(startTime) + "," + r.Next(100) + ");");
                                dbc.InsertInto(conn, "SLEM VALUES(" + ConvertToUnixTimestamp(startTime) + "," + r.Next(100) + ");");
                                dbc.InsertInto(conn, "WaterInOil VALUES(" + ConvertToUnixTimestamp(startTime) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + ");");
                                dbc.InsertInto(conn, "RunTime VALUES(" + ConvertToUnixTimestamp(startTime) + "," + r.Next(100) + ");");
                                dbc.InsertInto(conn, "CylSum VALUES(" + ConvertToUnixTimestamp(startTime) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + ");");
                                dbc.InsertInto(conn, "MBNSum VALUES(" + ConvertToUnixTimestamp(startTime) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + "," + r.Next(100) + ");");
                            }
                            //Commit transaction
                            dbTransaction.Commit();
                        }
                    }
                    catch (SQLiteException)
                    {
                        Console.WriteLine("SQLiteException thrown!");
                    }
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
