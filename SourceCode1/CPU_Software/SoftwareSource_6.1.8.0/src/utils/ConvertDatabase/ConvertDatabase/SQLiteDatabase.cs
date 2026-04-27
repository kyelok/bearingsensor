using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Data.SQLite;
using System.IO;

namespace ConvertDatabase
{
    class SQLiteDatabase
    {
        Dictionary<string, InsertTable> tables = new Dictionary<string, InsertTable>();
        string databasePath;

        SQLiteCommand[] eventLogCreateCommands = new SQLiteCommand[]
        {
            new SQLiteCommand ("DROP TABLE IF EXISTS alarms"),
            new SQLiteCommand ("DROP TABLE IF EXISTS eventlog"),
            new SQLiteCommand ("DROP TABLE IF EXISTS learning_status"),
            new SQLiteCommand ("CREATE TABLE eventlog (eventdatetime INTEGER NOT NULL, channel INTEGER, datatype INTEGER, eventid INTEGER, eventcode INTEGER, description TEXT NOT NULL, ackdatetime INTEGER, ackUserId TEXT);"),
            new SQLiteCommand ("CREATE TABLE learning_status (time_stamp integer, status integer);"),
            new SQLiteCommand ("CREATE INDEX events_time_stamp_index ON eventlog (eventdatetime);"),
            new SQLiteCommand ("CREATE TRIGGER del_old_events_records AFTER INSERT ON eventlog BEGIN DELETE FROM eventlog WHERE eventdatetime < ( (SELECT MAX(eventdatetime) FROM eventlog ) - 157784630); END;")
        };

        SQLiteCommand[] dataLoggerCreateCommands = new SQLiteCommand[]
            {
                new SQLiteCommand("DROP TABLE IF EXISTS CylAveComp;"),
                new SQLiteCommand("DROP TABLE IF EXISTS CylDevComp;"),
                new SQLiteCommand("DROP TABLE IF EXISTS CylSum;"),
                new SQLiteCommand("DROP TABLE IF EXISTS DynAlarm;"),
                new SQLiteCommand("DROP TABLE IF EXISTS MBNSum;"),
                new SQLiteCommand("DROP TABLE IF EXISTS RefValues;"),
                new SQLiteCommand("DROP TABLE IF EXISTS Rpm;"),
                new SQLiteCommand("DROP TABLE IF EXISTS RunTime;"),
                new SQLiteCommand("DROP TABLE IF EXISTS SLEM;"),
                new SQLiteCommand("DROP TABLE IF EXISTS WaterInOil;"),
                new SQLiteCommand("DROP TABLE IF EXISTS senDevComp;"),
                new SQLiteCommand("DROP TABLE IF EXISTS senValComp;"),
                new SQLiteCommand("CREATE TABLE CylAveComp (time_stamp INTEGER, cylav1 INTEGER,cylav2 INTEGER,cylav3 INTEGER,cylav4 INTEGER,cylav5 INTEGER,cylav6 INTEGER,cylav7 INTEGER,cylav8 INTEGER,cylav9 INTEGER,cylav10 INTEGER,cylav11 INTEGER,cylav12 INTEGER,cylav13 INTEGER,cylav14 INTEGER);"),
                new SQLiteCommand("CREATE TABLE CylDevComp (time_stamp INTEGER, cyldev1 INTEGER,cyldev2 INTEGER,cyldev3 INTEGER,cyldev4 INTEGER,cyldev5 INTEGER,cyldev6 INTEGER,cyldev7 INTEGER,cyldev8 INTEGER,cyldev9 INTEGER,cyldev10 INTEGER,cyldev11 INTEGER,cyldev12 INTEGER,cyldev13 INTEGER,cyldev14 INTEGER);"),
                new SQLiteCommand("CREATE TABLE CylSum (time_stamp INTEGER, cylsum1 INTEGER,cylsum2 INTEGER,cylsum3 INTEGER,cylsum4 INTEGER,cylsum5 INTEGER,cylsum6 INTEGER,cylsum7 INTEGER,cylsum8 INTEGER,cylsum9 INTEGER,cylsum10 INTEGER,cylsum11 INTEGER,cylsum12 INTEGER,cylsum13 INTEGER,cylsum14 INTEGER);"),
                new SQLiteCommand("CREATE TABLE DynAlarm (time_stamp INTEGER, single1 INTEGER,cylsum1 INTEGER,mbnsum1 INTEGER,single2 INTEGER,cylsum2 INTEGER,mbnsum2 INTEGER);"),
                new SQLiteCommand("CREATE TABLE MBNSum (time_stamp INTEGER, mbnsum1 INTEGER,mbnsum2 INTEGER,mbnsum3 INTEGER,mbnsum4 INTEGER,mbnsum5 INTEGER,mbnsum6 INTEGER,mbnsum7 INTEGER,mbnsum8 INTEGER,mbnsum9 INTEGER,mbnsum10 INTEGER,mbnsum11 INTEGER,mbnsum12 INTEGER,mbnsum13 INTEGER,mbnsum14 INTEGER);"),
                new SQLiteCommand("CREATE TABLE RefValues (time_stamp INTEGER, refv1a INTEGER,refv1b INTEGER,refv2a INTEGER,refv2b INTEGER,refv3a INTEGER,refv3b INTEGER,refv4a INTEGER,refv4b INTEGER,refv5a INTEGER,refv5b INTEGER,refv6a INTEGER,refv6b INTEGER,refv7a INTEGER,refv7b INTEGER,refv8a INTEGER,refv8b INTEGER,refv9a INTEGER,refv9b INTEGER,refv10a INTEGER,refv10b INTEGER,refv11a INTEGER,refv11b INTEGER,refv12a INTEGER,refv12b INTEGER,refv13a INTEGER,refv13b INTEGER,refv14a INTEGER,refv14b INTEGER);"),
                new SQLiteCommand("CREATE TABLE Rpm (time_stamp INTEGER, rpm1 INTEGER,direction INTEGER);"),
                new SQLiteCommand("CREATE TABLE RunTime (time_stamp INTEGER, runtime INTEGER);"),
                new SQLiteCommand("CREATE TABLE SLEM (time_stamp INTEGER, slemmv INTEGER);"),
                new SQLiteCommand("CREATE TABLE WaterInOil (time_stamp INTEGER, wateractivity INTEGER,ppm INTEGER,temp INTEGER);"),
                new SQLiteCommand("CREATE TABLE senDevComp (time_stamp INTEGER, dev1a INTEGER,dev1b INTEGER,dev2a INTEGER,dev2b INTEGER,dev3a INTEGER,dev3b INTEGER,dev4a INTEGER,dev4b INTEGER,dev5a INTEGER,dev5b INTEGER,dev6a INTEGER,dev6b INTEGER,dev7a INTEGER,dev7b INTEGER,dev8a INTEGER,dev8b INTEGER,dev9a INTEGER,dev9b INTEGER,dev10a INTEGER,dev10b INTEGER,dev11a INTEGER,dev11b INTEGER,dev12a INTEGER,dev12b INTEGER,dev13a INTEGER,dev13b INTEGER,dev14a INTEGER,dev14b INTEGER);"),
                new SQLiteCommand("CREATE TABLE senValComp (time_stamp INTEGER, comp1a INTEGER,comp1b INTEGER,comp2a INTEGER,comp2b INTEGER,comp3a INTEGER,comp3b INTEGER,comp4a INTEGER,comp4b INTEGER,comp5a INTEGER,comp5b INTEGER,comp6a INTEGER,comp6b INTEGER,comp7a INTEGER,comp7b INTEGER,comp8a INTEGER,comp8b INTEGER,comp9a INTEGER,comp9b INTEGER,comp10a INTEGER,comp10b INTEGER,comp11a INTEGER,comp11b INTEGER,comp12a INTEGER,comp12b INTEGER,comp13a INTEGER,comp13b INTEGER,comp14a INTEGER,comp14b INTEGER);"),
                new SQLiteCommand("CREATE INDEX CylAveComp_index ON CylAveComp (time_stamp);"),
                new SQLiteCommand("CREATE INDEX CylDevComp_index ON CylDevComp (time_stamp);"),
                new SQLiteCommand("CREATE INDEX CylSum_index ON CylSum (time_stamp);"),
                new SQLiteCommand("CREATE INDEX DynAlarm_index ON DynAlarm (time_stamp);"),
                new SQLiteCommand("CREATE INDEX MBNSum_index ON MBNSum (time_stamp);"),
                new SQLiteCommand("CREATE INDEX RefValues_index ON RefValues (time_stamp);"),
                new SQLiteCommand("CREATE INDEX Rpm_index ON Rpm (time_stamp);"),
                new SQLiteCommand("CREATE INDEX RunTime_index ON RunTime (time_stamp);"),
                new SQLiteCommand("CREATE INDEX SLEM_index ON SLEM (time_stamp);"),
                new SQLiteCommand("CREATE INDEX WaterInOil_index ON WaterInOil (time_stamp);"),
                new SQLiteCommand("CREATE INDEX senDevComp_index ON senDevComp (time_stamp);"),
                new SQLiteCommand("CREATE INDEX senValComp_index ON senValComp (time_stamp);"),
                new SQLiteCommand("CREATE TRIGGER del_old_CylAveComp_records AFTER INSERT ON CylAveComp BEGIN DELETE FROM CylAveComp WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM CylAveComp ) - 157784630); END;"),
                new SQLiteCommand("CREATE TRIGGER del_old_CylDevComp_records AFTER INSERT ON CylDevComp BEGIN DELETE FROM CylDevComp WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM CylDevComp ) - 157784630); END;"),
                new SQLiteCommand("CREATE TRIGGER del_old_CylSum_records AFTER INSERT ON CylSum BEGIN DELETE FROM CylSum WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM CylSum ) - 157784630); END;"),
                new SQLiteCommand("CREATE TRIGGER del_old_DynAlarm_records AFTER INSERT ON DynAlarm BEGIN DELETE FROM DynAlarm WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM DynAlarm ) - 157784630); END;"),
                new SQLiteCommand("CREATE TRIGGER del_old_MBNSum_records AFTER INSERT ON MBNSum BEGIN DELETE FROM MBNSum WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM MBNSum ) - 157784630); END;"),
                new SQLiteCommand("CREATE TRIGGER del_old_RefValues_records AFTER INSERT ON RefValues BEGIN DELETE FROM RefValues WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM RefValues ) - 157784630); END;"),
                new SQLiteCommand("CREATE TRIGGER del_old_Rpm_records AFTER INSERT ON Rpm BEGIN DELETE FROM Rpm WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM Rpm ) - 157784630); END;"),
                new SQLiteCommand("CREATE TRIGGER del_old_RunTime_records AFTER INSERT ON RunTime BEGIN DELETE FROM RunTime WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM RunTime ) - 157784630); END;"),
                new SQLiteCommand("CREATE TRIGGER del_old_SLEM_records AFTER INSERT ON SLEM BEGIN DELETE FROM SLEM WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM SLEM ) - 157784630); END;"),
                new SQLiteCommand("CREATE TRIGGER del_old_WaterInOil_records AFTER INSERT ON WaterInOil BEGIN DELETE FROM WaterInOil WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM WaterInOil ) - 157784630); END;"),
                new SQLiteCommand("CREATE TRIGGER del_old_senDevComp_records AFTER INSERT ON senDevComp BEGIN DELETE FROM senDevComp WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM senDevComp ) - 157784630); END;"),
                new SQLiteCommand("CREATE TRIGGER del_old_senValComp_records AFTER INSERT ON senValComp BEGIN DELETE FROM senValComp WHERE time_stamp < ( (SELECT MAX(time_stamp) FROM senValComp ) - 157784630); END;")
        };

        string[,] cylAveComp = new string[,]
                {
                    {"sampledatetime" ,"time_stamp"},   {"cylave1", "cylav1"},    {"cylave2", "cylav2"},    {"cylave3", "cylav3"},    {"cylave4", "cylav4"},
                    {"cylave5","cylav5"},               {"cylave6","cylav6"},     {"cylave7","cylav7"},     {"cylave8","cylav8"},     {"cylave9","cylav9"}, 
                    {"cylave10","cylav10"},             {"cylave11","cylav11"},   {"cylave12","cylav12"},   {"cylave13","cylav13"},   {"cylave14", "cylav14"}
                };
        string[,] cylDevComp = new string[,]
                {
                    {"sampledatetime","time_stamp"},    {"cyldev1","cyldev1"},      {"cyldev2","cyldev2"},      {"cyldev3","cyldev3"},      {"cyldev4","cyldev4"}, 
                    {"cyldev5","cyldev5"},              {"cyldev6","cyldev6"},      {"cyldev7","cyldev7"},      {"cyldev8","cyldev8"},      {"cyldev9","cyldev9"}, 
                    {"cyldev10","cyldev10"},            {"cyldev11","cyldev11"},    {"cyldev12","cyldev12"},    {"cyldev13","cyldev13"},    {"cyldev14","cyldev14"}
                };

        string[,] cylSum = new string[,]
            {
                              
                {"sampledatetime","time_stamp"},    {"cylsum1","cylsum1"},      {"cylsum2","cylsum2"},      {"cylsum3","cylsum3"},      {"cylsum4","cylsum4"}, 
                {"cylsum5","cylsum5"},              {"cylsum6","cylsum6"},      {"cylsum7","cylsum7"},      {"cylsum8","cylsum8"},      {"cylsum9","cylsum9"}, 
                {"cylsum10","cylsum10"},            {"cylsum11","cylsum11"},    {"cylsum12","cylsum12"},    {"cylsum13","cylsum13"},    {"cylsum14", "cylsum14"}
            };

        string[,] dynAlarm = new string[,]
                {
                    {"sampledatetime","time_stamp"}, {"single1","single1"}, {"cylsum1","cylsum1"}, {"mbnsum1","mbnsum1"}, {"single2","single2"}, {"cylsum2","cylsum2"}, {"mbnsum2", "mbnsum2"}
                };
        string[,] mBNSum = new string[,]
            {
                {"sampledatetime","time_stamp"}, {"MBNsum1","mbnsum1"}, {"MBNsum2","mbnsum2"}, {"MBNsum3","mbnsum3"}, {"MBNsum4","mbnsum4"}, 
                {"MBNsum5","mbnsum5"}, {"MBNsum6","mbnsum6"}, {"MBNsum7","mbnsum7"}, {"MBNsum8","mbnsum8"}, {"MBNsum9","mbnsum9"}, {"MBNsum10","mbnsum10"}, 
                {"MBNsum11","mbnsum11"}, {"MBNsum12","mbnsum12"}, {"MBNsum13","mbnsum13"}, {"MBNsum14","mbnsum14"}
            };

        string[,] refValues = new string[,]
            {
                {"sampledatetime","time_stamp"},    {"refv1a","refv1a"},    {"refv1b","refv1b"},    {"refv2a","refv2a"},    {"refv2b","refv2b"}, 
                {"refv3a","refv3a"},                {"refv3b","refv3b"},    {"refv4a", "refv4a"},   {"refv4b","refv4b"},    {"refv5a","refv5a"},    {"refv5b","refv5b"}, 
                {"refv6a","refv6a"},                {"refv6b","refv6b"},    {"refv7a","refv7a"},    {"refv7b","refv7b"},    {"refv8a","refv8a"},    { "refv8b","refv8b"}, 
                {"refv9a","refv9a"},                {"refv9b","refv9b"},    {"refv10a","refv10a"},  {"refv10b","refv10b"},  {"refv11a","refv11a"}, 
                {"refv11b","refv11b"},              {"refv12a","refv12a"},  {"refv12b","refv12b"},  {"refv13a","refv13a"},  {"refv13b","refv13b"}, {"refv14a","refv14a"}, {"refv14b","refv14b"}
            };

        string[,] rpm = new string[,]
            {
                {"sampledatetime","time_stamp"}, {"rpm1","rpm1"}, {"rpm2",string.Empty}, {"","direction"}
            };

        string[,] runTime = new string[,]
            {
                {"sampledatetime","time_stamp"}, {"runtime","runtime"}
            };

        string[,] senDevComp = new string[,]
            {
                                            
                {"sampledatetime","time_stamp"}, {"dev1a","dev1a"}, {"dev1b","dev1b"}, {"dev2a","dev2a"}, {"dev2b","dev2b"}, 
            {"dev3a","dev3a"}, {"dev3b","dev3b"}, {"dev4a","dev4a"}, {"dev4b","dev4b"}, 
            {"dev5a","dev5a"}, {"dev5b","dev5b"}, {"dev6a","dev6a"}, {"dev6b","dev6b"}, {"dev7a","dev7a"}, {"dev7b","dev7b"}, 
            {"dev8a","dev8a"}, {"dev8b","dev8b"}, {"dev9a","dev9a"}, {"dev9b","dev9b"}, {"dev10a","dev10a"}, {"dev10b","dev10b"}, 
            {"dev11a","dev11a"}, {"dev11b","dev11b"}, {"dev12a","dev12a"}, {"dev12b","dev12b"}, {"dev13a","dev13a"}, {"dev13b","dev13b"}, {"dev14a","dev14a"}, {"dev14b","dev14b"}
            };

        string[,] senValComp = new string[,]
            {
                {"sampledatetime","time_stamp"}, {"comp1a","comp1a"}, {"comp1b","comp1b"}, {"comp2a","comp2a"}, {"comp2b","comp2b"}, 
            {"comp3a","comp3a"}, {"comp3b","comp3b"}, {"comp4a","comp4a"}, {"comp4b","comp4b"}, {"comp5a","comp5a"}, {"comp5b","comp5b"}, 
            {"comp6a","comp6a"}, {"comp6b","comp6b"}, {"comp7a","comp7a"}, {"comp7b","comp7b"}, {"comp8a","comp8a"}, {"comp8b","comp8b"}, 
            {"comp9a","comp9a"}, {"comp9b","comp9b"}, {"comp10a","comp10a"}, {"comp10b","comp10b"}, 
            {"comp11a","comp11a"}, {"comp11b","comp11b"}, {"comp12a","comp12a"}, {"comp12b","comp12b"}, 
            {"comp13a","comp13a"}, {"comp13b","comp13b"}, {"comp14a","comp14a"}, {"comp14b", "comp14b"}
            };

        string[,] slem = new string[,]
            {
                {"sampledatetime","time_stamp"}, {"slemmv","slemmv"}
            };

        string[,] waterInOil = new string[,]
            {
                {"sampledatetime","time_stamp"}, {"wateractivity","wateractivity"}, {"ppm","ppm"}, {"temp","temp"}
            };

        string[,] eventlog = new string[,]
            {
                {"eventdatetime","eventdatetime"}, {"channel","channel"}, {"datatype","datatype"}, {"eventid","eventid"}, 
                {"eventcode","eventcode"}, {"description","description"}, {"ackdatetime","ackdatetime"}, {"ackname","ackUserId"}
            };

        public string DatabaseName
        {
            get
            {
                return this.databasePath;
            }
        }

        public SQLiteDatabase(string databasePath)
        {
            this.databasePath = databasePath;

            if (File.Exists(string.Format("{0}\\amot_xtsii_data.db3", this.databasePath)))
            {
                File.Delete(string.Format("{0}\\amot_xtsii_data.db3", this.databasePath));
            }

            if (File.Exists(string.Format("{0}\\amot_xtsii_event.db3", this.databasePath)))
            {
                File.Delete(string.Format("{0}\\amot_xtsii_event.db3", this.databasePath));
            }


            //Create the database files for the datalogger and event log
            using (SQLiteConnection connection = new SQLiteConnection(string.Format("Data Source={0}\\amot_xtsii_data.db3", this.databasePath)))
            {
                connection.Open();
                using (SQLiteTransaction tran = connection.BeginTransaction())
                {
                    foreach (SQLiteCommand command in dataLoggerCreateCommands)
                    {
                        command.Connection = connection;
                        command.ExecuteNonQuery();
                    }

                    tran.Commit();
                }
                connection.Close();
            }

            using (SQLiteConnection connection = new SQLiteConnection(string.Format("Data Source={0}\\amot_xtsii_event.db3", this.databasePath)))
            {
                connection.Open();
                using (SQLiteTransaction tran = connection.BeginTransaction())
                {
                    foreach (SQLiteCommand command in eventLogCreateCommands)
                    {
                        command.Connection = connection;
                        command.ExecuteNonQuery();
                    }

                    tran.Commit();
                }
                connection.Close();
            }

            SQLiteCommand cmdCylAveComp = new SQLiteCommand();
            cmdCylAveComp.Parameters.Add("@time_stamp", DbType.Int64);
            cmdCylAveComp.Parameters.Add("@cylav1", DbType.Int64);
            cmdCylAveComp.Parameters.Add("@cylav2", DbType.Int64);
            cmdCylAveComp.Parameters.Add("@cylav3", DbType.Int64);
            cmdCylAveComp.Parameters.Add("@cylav4", DbType.Int64);
            cmdCylAveComp.Parameters.Add("@cylav5", DbType.Int64);
            cmdCylAveComp.Parameters.Add("@cylav6", DbType.Int64);
            cmdCylAveComp.Parameters.Add("@cylav7", DbType.Int64);
            cmdCylAveComp.Parameters.Add("@cylav8", DbType.Int64);
            cmdCylAveComp.Parameters.Add("@cylav9", DbType.Int64);
            cmdCylAveComp.Parameters.Add("@cylav10", DbType.Int64);
            cmdCylAveComp.Parameters.Add("@cylav11", DbType.Int64);
            cmdCylAveComp.Parameters.Add("@cylav12", DbType.Int64);
            cmdCylAveComp.Parameters.Add("@cylav13", DbType.Int64);
            cmdCylAveComp.Parameters.Add("@cylav14", DbType.Int64);
            cmdCylAveComp.CommandText = "INSERT INTO CylAveComp (time_stamp, cylav1, cylav2, cylav3, cylav4, cylav5, cylav6, cylav7, cylav8, cylav9, cylav10, cylav11, cylav12, cylav13, cylav14) VALUES (@time_stamp, @cylav1, @cylav2, @cylav3, @cylav4, @cylav5, @cylav6, @cylav7, @cylav8, @cylav9, @cylav10, @cylav11, @cylav12, @cylav13, @cylav14)";
            tables.Add("CylAveComp", new InsertTable("amot_xtsii_data.db3", "CylAveComp", cylAveComp, cmdCylAveComp, ""));

            SQLiteCommand cmdCylDevComp = new SQLiteCommand();
            cmdCylDevComp.Parameters.Add("@time_stamp", DbType.Int64);
            cmdCylDevComp.Parameters.Add("@cyldev1", DbType.Int64);
            cmdCylDevComp.Parameters.Add("@cyldev2", DbType.Int64);
            cmdCylDevComp.Parameters.Add("@cyldev3", DbType.Int64);
            cmdCylDevComp.Parameters.Add("@cyldev4", DbType.Int64);
            cmdCylDevComp.Parameters.Add("@cyldev5", DbType.Int64);
            cmdCylDevComp.Parameters.Add("@cyldev6", DbType.Int64);
            cmdCylDevComp.Parameters.Add("@cyldev7", DbType.Int64);
            cmdCylDevComp.Parameters.Add("@cyldev8", DbType.Int64);
            cmdCylDevComp.Parameters.Add("@cyldev9", DbType.Int64);
            cmdCylDevComp.Parameters.Add("@cyldev10", DbType.Int64);
            cmdCylDevComp.Parameters.Add("@cyldev11", DbType.Int64);
            cmdCylDevComp.Parameters.Add("@cyldev12", DbType.Int64);
            cmdCylDevComp.Parameters.Add("@cyldev13", DbType.Int64);
            cmdCylDevComp.Parameters.Add("@cyldev14", DbType.Int64);
            cmdCylDevComp.CommandText = "INSERT INTO CylDevComp (time_stamp, cyldev1, cyldev2, cyldev3, cyldev4, cyldev5, cyldev6, cyldev7, cyldev8, cyldev9, cyldev10, cyldev11, cyldev12, cyldev13, cyldev14) VALUES (@time_stamp, @cyldev1, @cyldev2, @cyldev3, @cyldev4, @cyldev5, @cyldev6, @cyldev7, @cyldev8, @cyldev9, @cyldev10, @cyldev11, @cyldev12, @cyldev13, @cyldev14)";
            tables.Add("CylDevComp", new InsertTable("amot_xtsii_data.db3", "CylDevComp", cylDevComp, cmdCylDevComp, ""));

            SQLiteCommand cmdCylSum = new SQLiteCommand();
            cmdCylSum.Parameters.Add("@time_stamp", DbType.Int64);
            cmdCylSum.Parameters.Add("@cylsum1", DbType.Int64);
            cmdCylSum.Parameters.Add("@cylsum2", DbType.Int64);
            cmdCylSum.Parameters.Add("@cylsum3", DbType.Int64);
            cmdCylSum.Parameters.Add("@cylsum4", DbType.Int64);
            cmdCylSum.Parameters.Add("@cylsum5", DbType.Int64);
            cmdCylSum.Parameters.Add("@cylsum6", DbType.Int64);
            cmdCylSum.Parameters.Add("@cylsum7", DbType.Int64);
            cmdCylSum.Parameters.Add("@cylsum8", DbType.Int64);
            cmdCylSum.Parameters.Add("@cylsum9", DbType.Int64);
            cmdCylSum.Parameters.Add("@cylsum10", DbType.Int64);
            cmdCylSum.Parameters.Add("@cylsum11", DbType.Int64);
            cmdCylSum.Parameters.Add("@cylsum12", DbType.Int64);
            cmdCylSum.Parameters.Add("@cylsum13", DbType.Int64);
            cmdCylSum.Parameters.Add("@cylsum14", DbType.Int64);
            cmdCylSum.CommandText = "INSERT INTO CylSum (time_stamp, cylsum1, cylsum2, cylsum3, cylsum4, cylsum5, cylsum6, cylsum7, cylsum8, cylsum9, cylsum10, cylsum11, cylsum12, cylsum13, cylsum14) VALUES (@time_stamp, @cylsum1, @cylsum2, @cylsum3, @cylsum4, @cylsum5, @cylsum6, @cylsum7, @cylsum8, @cylsum9, @cylsum10, @cylsum11, @cylsum12, @cylsum13, @cylsum14)";
            tables.Add("CylSum", new InsertTable("amot_xtsii_data.db3", "CylSum", cylSum, cmdCylSum, ""));

            SQLiteCommand cmdDynAlarm = new SQLiteCommand();
            cmdDynAlarm.Parameters.Add("@time_stamp", DbType.Int64);
            cmdDynAlarm.Parameters.Add("@single1", DbType.Int64);
            cmdDynAlarm.Parameters.Add("@cylsum1", DbType.Int64);
            cmdDynAlarm.Parameters.Add("@mbnsum1", DbType.Int64);
            cmdDynAlarm.Parameters.Add("@single2", DbType.Int64);
            cmdDynAlarm.Parameters.Add("@cylsum2", DbType.Int64);
            cmdDynAlarm.Parameters.Add("@mbnsum2", DbType.Int64);
            cmdDynAlarm.CommandText = "INSERT INTO DynAlarm (time_stamp, single1, cylsum1, mbnsum1, single2, cylsum2, mbnsum2) VALUES (@time_stamp, @single1, @cylsum1, @mbnsum1, @single2, @cylsum2, @mbnsum2)";
            tables.Add("DynAlarm", new InsertTable("amot_xtsii_data.db3", "DynAlarm", dynAlarm, cmdDynAlarm, ""));

            SQLiteCommand cmdeventlog = new SQLiteCommand();
            cmdeventlog.Parameters.Add("@eventdatetime", DbType.Int64);
            cmdeventlog.Parameters.Add("@channel", DbType.Int64);
            cmdeventlog.Parameters.Add("@datatype", DbType.Int64);
            cmdeventlog.Parameters.Add("@eventid", DbType.Int64);
            cmdeventlog.Parameters.Add("@eventcode", DbType.Int64);
            cmdeventlog.Parameters.Add("@description", DbType.String);
            cmdeventlog.Parameters.Add("@ackdatetime", DbType.Int64);
            cmdeventlog.Parameters.Add("@ackUserId", DbType.String);
            cmdeventlog.CommandText = "INSERT INTO eventlog (eventdatetime, channel, datatype, eventid, eventcode, description, ackdatetime, ackUserId) VALUES (@eventdatetime, @channel, @datatype, @eventid, @eventcode, @description, @ackdatetime, @ackUserId)";
            tables.Add("EventLog", new InsertTable("amot_xtsii_event.db3", "eventlog", eventlog, cmdeventlog, ""));

            SQLiteCommand cmdMBNSum = new SQLiteCommand();
            cmdMBNSum.Parameters.Add("@time_stamp", DbType.Int64);
            cmdMBNSum.Parameters.Add("@mbnsum1", DbType.Int64);
            cmdMBNSum.Parameters.Add("@mbnsum2", DbType.Int64);
            cmdMBNSum.Parameters.Add("@mbnsum3", DbType.Int64);
            cmdMBNSum.Parameters.Add("@mbnsum4", DbType.Int64);
            cmdMBNSum.Parameters.Add("@mbnsum5", DbType.Int64);
            cmdMBNSum.Parameters.Add("@mbnsum6", DbType.Int64);
            cmdMBNSum.Parameters.Add("@mbnsum7", DbType.Int64);
            cmdMBNSum.Parameters.Add("@mbnsum8", DbType.Int64);
            cmdMBNSum.Parameters.Add("@mbnsum9", DbType.Int64);
            cmdMBNSum.Parameters.Add("@mbnsum10", DbType.Int64);
            cmdMBNSum.Parameters.Add("@mbnsum11", DbType.Int64);
            cmdMBNSum.Parameters.Add("@mbnsum12", DbType.Int64);
            cmdMBNSum.Parameters.Add("@mbnsum13", DbType.Int64);
            cmdMBNSum.Parameters.Add("@mbnsum14", DbType.Int64);
            cmdMBNSum.CommandText = "INSERT INTO MBNSum (time_stamp, mbnsum1, mbnsum2, mbnsum3, mbnsum4, mbnsum5, mbnsum6, mbnsum7, mbnsum8, mbnsum9, mbnsum10, mbnsum11, mbnsum12, mbnsum13, mbnsum14) VALUES (@time_stamp, @mbnsum1, @mbnsum2, @mbnsum3, @mbnsum4, @mbnsum5, @mbnsum6, @mbnsum7, @mbnsum8, @mbnsum9, @mbnsum10, @mbnsum11, @mbnsum12, @mbnsum13, @mbnsum14)";
            tables.Add("MBNSum", new InsertTable("amot_xtsii_data.db3", "MBNSum", mBNSum, cmdMBNSum, ""));


            SQLiteCommand cmdRefValues = new SQLiteCommand();
            cmdRefValues.Parameters.Add("@time_stamp", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv1a", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv1b", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv2a", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv2b", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv3a", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv3b", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv4a", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv4b", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv5a", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv5b", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv6a", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv6b", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv7a", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv7b", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv8a", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv8b", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv9a", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv9b", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv10a", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv10b", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv11a", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv11b", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv12a", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv12b", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv13a", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv13b", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv14a", DbType.Int64);
            cmdRefValues.Parameters.Add("@refv14b", DbType.Int64);
            cmdRefValues.CommandText = "INSERT INTO RefValues (time_stamp, refv1a, refv1b, refv2a, refv2b, refv3a, refv3b, refv4a, refv4b, refv5a, refv5b, refv6a, refv6b, refv7a, refv7b, refv8a, refv8b, refv9a, refv9b, refv10a, refv10b, refv11a, refv11b, refv12a, refv12b, refv13a, refv13b, refv14a, refv14b) VALUES (@time_stamp, @refv1a, @refv1b, @refv2a, @refv2b, @refv3a, @refv3b, @refv4a, @refv4b, @refv5a, @refv5b, @refv6a, @refv6b, @refv7a, @refv7b, @refv8a, @refv8b, @refv9a, @refv9b, @refv10a, @refv10b, @refv11a, @refv11b, @refv12a, @refv12b, @refv13a, @refv13b, @refv14a, @refv14b)";
            tables.Add("RefValues", new InsertTable("amot_xtsii_data.db3", "RefValues", refValues, cmdRefValues, ""));

            SQLiteCommand cmdRpm = new SQLiteCommand();
            cmdRpm.Parameters.Add("@time_stamp", DbType.Int64);
            cmdRpm.Parameters.Add("@rpm1", DbType.Int64);
            cmdRpm.Parameters.Add("@direction", DbType.Int64);
            cmdRpm.CommandText = "INSERT INTO Rpm (time_stamp, rpm1, direction) VALUES (@time_stamp, @rpm1, @direction)";
            tables.Add("Rpm", new InsertTable("amot_xtsii_data.db3", "Rpm", rpm, cmdRpm, ""));

            SQLiteCommand cmdRunTime = new SQLiteCommand();
            cmdRunTime.Parameters.Add("@time_stamp", DbType.Int64);
            cmdRunTime.Parameters.Add("@runtime", DbType.Int64);
            cmdRunTime.CommandText = "INSERT INTO RunTime (time_stamp, runtime) VALUES (@time_stamp, @runtime)";
            tables.Add("RunTime", new InsertTable("amot_xtsii_data.db3", "RunTime", runTime, cmdRunTime, ""));

            SQLiteCommand cmdsenDevComp = new SQLiteCommand();
            cmdsenDevComp.Parameters.Add("@time_stamp", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev1a", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev1b", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev2a", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev2b", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev3a", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev3b", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev4a", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev4b", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev5a", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev5b", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev6a", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev6b", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev7a", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev7b", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev8a", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev8b", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev9a", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev9b", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev10a", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev10b", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev11a", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev11b", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev12a", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev12b", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev13a", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev13b", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev14a", DbType.Int64);
            cmdsenDevComp.Parameters.Add("@dev14b", DbType.Int64);
            cmdsenDevComp.CommandText = "INSERT INTO senDevComp (time_stamp, dev1a, dev1b, dev2a, dev2b, dev3a, dev3b, dev4a, dev4b, dev5a, dev5b, dev6a, dev6b, dev7a, dev7b, dev8a, dev8b, dev9a, dev9b, dev10a, dev10b, dev11a, dev11b, dev12a, dev12b, dev13a, dev13b, dev14a, dev14b) VALUES (@time_stamp, @dev1a, @dev1b, @dev2a, @dev2b, @dev3a, @dev3b, @dev4a, @dev4b, @dev5a, @dev5b, @dev6a, @dev6b, @dev7a, @dev7b, @dev8a, @dev8b, @dev9a, @dev9b, @dev10a, @dev10b, @dev11a, @dev11b, @dev12a, @dev12b, @dev13a, @dev13b, @dev14a, @dev14b)";
            tables.Add("SenDevComp", new InsertTable("amot_xtsii_data.db3", "senDevComp", senDevComp, cmdsenDevComp, ""));

            SQLiteCommand cmdsenValComp = new SQLiteCommand();
            cmdsenValComp.Parameters.Add("@time_stamp", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp1a", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp1b", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp2a", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp2b", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp3a", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp3b", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp4a", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp4b", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp5a", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp5b", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp6a", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp6b", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp7a", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp7b", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp8a", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp8b", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp9a", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp9b", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp10a", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp10b", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp11a", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp11b", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp12a", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp12b", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp13a", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp13b", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp14a", DbType.Int64);
            cmdsenValComp.Parameters.Add("@comp14b", DbType.Int64);
            cmdsenValComp.CommandText = "INSERT INTO senValComp (time_stamp, comp1a, comp1b, comp2a, comp2b, comp3a, comp3b, comp4a, comp4b, comp5a, comp5b, comp6a, comp6b, comp7a, comp7b, comp8a, comp8b, comp9a, comp9b, comp10a, comp10b, comp11a, comp11b, comp12a, comp12b, comp13a, comp13b, comp14a, comp14b) VALUES (@time_stamp, @comp1a, @comp1b, @comp2a, @comp2b, @comp3a, @comp3b, @comp4a, @comp4b, @comp5a, @comp5b, @comp6a, @comp6b, @comp7a, @comp7b, @comp8a, @comp8b, @comp9a, @comp9b, @comp10a, @comp10b, @comp11a, @comp11b, @comp12a, @comp12b, @comp13a, @comp13b, @comp14a, @comp14b)";
            tables.Add("SenValComp", new InsertTable("amot_xtsii_data.db3", "senValComp", senValComp, cmdsenValComp, ""));

            SQLiteCommand cmdSLEM = new SQLiteCommand();
            cmdSLEM.Parameters.Add("@time_stamp", DbType.Int64);
            cmdSLEM.Parameters.Add("@slemmv", DbType.Int64);
            cmdSLEM.CommandText = "INSERT INTO SLEM (time_stamp, slemmv) VALUES (@time_stamp, @slemmv)";
            tables.Add("SLEM", new InsertTable("amot_xtsii_data.db3", "SLEM", slem, cmdSLEM, ""));

            SQLiteCommand cmdWaterInOil = new SQLiteCommand();
            cmdWaterInOil.Parameters.Add("@time_stamp", DbType.Int64);
            cmdWaterInOil.Parameters.Add("@wateractivity", DbType.Int64);
            cmdWaterInOil.Parameters.Add("@ppm", DbType.Int64);
            cmdWaterInOil.Parameters.Add("@temp", DbType.Int64);
            cmdWaterInOil.CommandText = "INSERT INTO WaterInOil (time_stamp, wateractivity, ppm, temp) VALUES (@time_stamp, @wateractivity, @ppm, @temp)";

            tables.Add("WaterInOil", new InsertTable("amot_xtsii_data.db3", "WaterInOil", waterInOil, cmdWaterInOil, ""));
        }

        public void Insert(string table, DataTable data)
        {
            //Lookup insert string for table
            InsertTable insert = this.tables[table];
            using (SQLiteConnection connection = new SQLiteConnection(string.Format("Data Source={0}\\{1}", this.databasePath, insert.databaseName)))
            {
                connection.Open();
                //Start Transaction
                using (SQLiteTransaction tran = connection.BeginTransaction())
                {
                    insert.insertCommand.Connection = connection;

                    foreach (DataRow row in data.Rows)
                    {
                        foreach (DataColumn column in data.Columns)
                        {
                            //Construct insert
                            //Lookup column name for each row
                            for (int i = 0; i < insert.columns.Length; i++)
                            {
                                if (insert.columns[i, 0] == column.ColumnName)
                                {
                                    //Found the column
                                    //Check if it is a special column
                                    if (column.ColumnName == "sampledatetime" || column.ColumnName == "eventdatetime" || column.ColumnName == "ackdatetime")
                                    {
                                        Int64 dateTime = ConvertToUnixTimestamp(((DateTime)row[column]));
                                        insert.insertCommand.Parameters["@" + insert.columns[i, 1]].Value = dateTime;
                                    }
                                    else
                                    {
                                        if (insert.columns[i, 1] != string.Empty)
                                        {
                                            insert.insertCommand.Parameters["@" + insert.columns[i, 1]].Value = row[column];
                                        }
                                    }

                                    break;
                                }
                            }
                        }

                        insert.insertCommand.ExecuteNonQuery();
                    }

                    //Commit transaction
                    tran.Commit();
                }
                connection.Close();
            }
        }

        public static Int64 ConvertToUnixTimestamp(DateTime dt)
        {
            DateTime origin = new DateTime(1970, 1, 1, 0, 0, 0, 0);
            TimeSpan diff = dt - origin;
            return ((Int64)Math.Floor(diff.TotalSeconds));
        }
    }

    public class InsertTable
    {
        public string table;
        public string databaseName;
        public string[,] columns;
        public SQLiteCommand insertCommand;

        public InsertTable(string databaseName, string table, string[,] columns, SQLiteCommand insertCommand, string createString)
        {
            this.columns = columns;
            this.table = table;
            this.databaseName = databaseName;
            this.insertCommand = insertCommand;
        }
    }

}
