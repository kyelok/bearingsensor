using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using log4net;

namespace ConvertDatabase
{
    class SQLExpressDatabase
    {
        ExtractTable[] tablesToExtract = new ExtractTable[] 
        {
			new ExtractTable("CylAveComp","SELECT COUNT(*) FROM [CylAveComp]","SELECT [sampledatetime], [cylave1], [cylave2], [cylave3], [cylave4], [cylave5], [cylave6], [cylave7], [cylave8], [cylave9], [cylave10], [cylave11], [cylave12], [cylave13], [cylave14] FROM (SELECT ROW_NUMBER() OVER(ORDER BY [sampledatetime]) AS rowNumber, [sampledatetime], [cylave1], [cylave2], [cylave3], [cylave4], [cylave5], [cylave6], [cylave7], [cylave8], [cylave9], [cylave10], [cylave11], [cylave12], [cylave13], [cylave14] FROM [CylAveComp]) AS countedTable WHERE rowNumber > (@pageSize * (@currentPage - 1)) AND rowNumber <= (@pageSize * @currentPage)"),
            new ExtractTable("CylDevComp","SELECT COUNT(*) FROM [CylDevComp]","SELECT [sampledatetime], [cyldev1], [cyldev2], [cyldev3], [cyldev4], [cyldev5], [cyldev6], [cyldev7], [cyldev8], [cyldev9], [cyldev10], [cyldev11], [cyldev12], [cyldev13], [cyldev14] FROM (SELECT ROW_NUMBER() OVER(ORDER BY [sampledatetime]) AS rowNumber, [sampledatetime], [cyldev1], [cyldev2], [cyldev3], [cyldev4], [cyldev5], [cyldev6], [cyldev7], [cyldev8], [cyldev9], [cyldev10], [cyldev11], [cyldev12], [cyldev13], [cyldev14] FROM [CylDevComp]) AS countedTable WHERE rowNumber > (@pageSize * (@currentPage - 1)) AND rowNumber <= (@pageSize * @currentPage)"),
            new ExtractTable("CylSum","SELECT COUNT(*) FROM [CylSum]","SELECT [sampledatetime], [cylsum1], [cylsum2], [cylsum3], [cylsum4], [cylsum5], [cylsum6], [cylsum7], [cylsum8], [cylsum9], [cylsum10], [cylsum11], [cylsum12], [cylsum13], [cylsum14] FROM (SELECT ROW_NUMBER() OVER(ORDER BY [sampledatetime]) AS rowNumber, [sampledatetime], [cylsum1], [cylsum2], [cylsum3], [cylsum4], [cylsum5], [cylsum6], [cylsum7], [cylsum8], [cylsum9], [cylsum10], [cylsum11], [cylsum12], [cylsum13], [cylsum14] FROM [CylSum]) AS countedTable WHERE rowNumber > (@pageSize * (@currentPage - 1)) AND rowNumber <= (@pageSize * @currentPage)"),
            new ExtractTable("DynAlarm","SELECT COUNT(*) FROM [DynAlarm]","SELECT [sampledatetime], [single1], [cylsum1], [mbnsum1], [single2], [cylsum2], [mbnsum2] FROM (SELECT ROW_NUMBER() OVER(ORDER BY [sampledatetime]) AS rowNumber, [sampledatetime], [single1], [cylsum1], [mbnsum1], [single2], [cylsum2], [mbnsum2] FROM [DynAlarm]) AS countedTable WHERE rowNumber > (@pageSize * (@currentPage - 1)) AND rowNumber <= (@pageSize * @currentPage)"),
            new ExtractTable("EventLog","SELECT COUNT(*) FROM [EventLog]","SELECT [eventdatetime], [channel], [datatype], [eventid], [eventcode], [description], [ackdatetime], [ackname] FROM (SELECT ROW_NUMBER() OVER(ORDER BY [eventdatetime]) AS rowNumber, [eventdatetime], [channel], [datatype], [eventid], [eventcode], [description], [ackdatetime], [ackname] FROM [EventLog]) AS countedTable WHERE rowNumber > (@pageSize * (@currentPage - 1)) AND rowNumber <= (@pageSize * @currentPage)"),
            new ExtractTable("MBNSum","SELECT COUNT(*) FROM [MBNSum]","SELECT [sampledatetime], [MBNsum1], [MBNsum2], [MBNsum3], [MBNsum4], [MBNsum5], [MBNsum6], [MBNsum7], [MBNsum8], [MBNsum9], [MBNsum10], [MBNsum11], [MBNsum12], [MBNsum13], [MBNsum14] FROM (SELECT ROW_NUMBER() OVER(ORDER BY [sampledatetime]) AS rowNumber, [sampledatetime], [MBNsum1], [MBNsum2], [MBNsum3], [MBNsum4], [MBNsum5], [MBNsum6], [MBNsum7], [MBNsum8], [MBNsum9], [MBNsum10], [MBNsum11], [MBNsum12], [MBNsum13], [MBNsum14] FROM [MBNSum]) AS countedTable WHERE rowNumber > (@pageSize * (@currentPage - 1)) AND rowNumber <= (@pageSize * @currentPage)"),
            new ExtractTable("RefValues","SELECT COUNT(*) FROM [RefValues]","SELECT [sampledatetime], [refv1a], [refv1b], [refv2a], [refv2b], [refv3a], [refv3b], [refv4a], [refv4b], [refv5a], [refv5b], [refv6a], [refv6b], [refv7a], [refv7b], [refv8a], [refv8b], [refv9a], [refv9b], [refv10a], [refv10b], [refv11a], [refv11b], [refv12a], [refv12b], [refv13a], [refv13b], [refv14a], [refv14b] FROM (SELECT ROW_NUMBER() OVER(ORDER BY [sampledatetime]) AS rowNumber, [sampledatetime], [refv1a], [refv1b], [refv2a], [refv2b], [refv3a], [refv3b], [refv4a], [refv4b], [refv5a], [refv5b], [refv6a], [refv6b], [refv7a], [refv7b], [refv8a], [refv8b], [refv9a], [refv9b], [refv10a], [refv10b], [refv11a], [refv11b], [refv12a], [refv12b], [refv13a], [refv13b], [refv14a], [refv14b] FROM [RefValues]) AS countedTable WHERE rowNumber > (@pageSize * (@currentPage - 1)) AND rowNumber <= (@pageSize * @currentPage)"),
            new ExtractTable("Rpm","SELECT COUNT(*) FROM [Rpm]","SELECT [sampledatetime], [rpm1], [rpm2] FROM (SELECT ROW_NUMBER() OVER(ORDER BY [sampledatetime]) AS rowNumber, [sampledatetime], [rpm1], [rpm2] FROM [Rpm]) AS countedTable WHERE rowNumber > (@pageSize * (@currentPage - 1)) AND rowNumber <= (@pageSize * @currentPage)"),
            new ExtractTable("RunTime","SELECT COUNT(*) FROM [RunTime]","SELECT [sampledatetime], [runtime] FROM (SELECT ROW_NUMBER() OVER(ORDER BY [sampledatetime]) AS rowNumber, [sampledatetime], [runtime] FROM [RunTime]) AS countedTable WHERE rowNumber > (@pageSize * (@currentPage - 1)) AND rowNumber <= (@pageSize * @currentPage)"),
            new ExtractTable("SenDevComp","SELECT COUNT(*) FROM [SenDevComp]","SELECT [sampledatetime], [dev1a], [dev1b], [dev2a], [dev2b], [dev3a], [dev3b], [dev4a], [dev4b], [dev5a], [dev5b], [dev6a], [dev6b], [dev7a], [dev7b], [dev8a], [dev8b], [dev9a], [dev9b], [dev10a], [dev10b], [dev11a], [dev11b], [dev12a], [dev12b], [dev13a], [dev13b], [dev14a], [dev14b] FROM (SELECT ROW_NUMBER() OVER(ORDER BY [sampledatetime]) AS rowNumber, [sampledatetime], [dev1a], [dev1b], [dev2a], [dev2b], [dev3a], [dev3b], [dev4a], [dev4b], [dev5a], [dev5b], [dev6a], [dev6b], [dev7a], [dev7b], [dev8a], [dev8b], [dev9a], [dev9b], [dev10a], [dev10b], [dev11a], [dev11b], [dev12a], [dev12b], [dev13a], [dev13b], [dev14a], [dev14b] FROM [SenDevComp]) AS countedTable WHERE rowNumber > (@pageSize * (@currentPage - 1)) AND rowNumber <= (@pageSize * @currentPage)"),
            new ExtractTable("SenValComp","SELECT COUNT(*) FROM [SenValComp]","SELECT [sampledatetime], [comp1a], [comp1b], [comp2a], [comp2b], [comp3a], [comp3b], [comp4a], [comp4b], [comp5a], [comp5b], [comp6a], [comp6b], [comp7a], [comp7b], [comp8a], [comp8b], [comp9a], [comp9b], [comp10a], [comp10b], [comp11a], [comp11b], [comp12a], [comp12b], [comp13a], [comp13b], [comp14a], [comp14b] FROM (SELECT ROW_NUMBER() OVER(ORDER BY [sampledatetime]) AS rowNumber, [sampledatetime], [comp1a], [comp1b], [comp2a], [comp2b], [comp3a], [comp3b], [comp4a], [comp4b], [comp5a], [comp5b], [comp6a], [comp6b], [comp7a], [comp7b], [comp8a], [comp8b], [comp9a], [comp9b], [comp10a], [comp10b], [comp11a], [comp11b], [comp12a], [comp12b], [comp13a], [comp13b], [comp14a], [comp14b] FROM [SenValComp]) AS countedTable WHERE rowNumber > (@pageSize * (@currentPage - 1)) AND rowNumber <= (@pageSize * @currentPage)"),
            new ExtractTable("SLEM","SELECT COUNT(*) FROM [SLEM]","SELECT [sampledatetime], [slemmv] FROM (SELECT ROW_NUMBER() OVER(ORDER BY [sampledatetime]) AS rowNumber, [sampledatetime], [slemmv] FROM [SLEM]) AS countedTable WHERE rowNumber > (@pageSize * (@currentPage - 1)) AND rowNumber <= (@pageSize * @currentPage)"),
            new ExtractTable("WaterInOil","SELECT COUNT(*) FROM [WaterInOil]","SELECT [sampledatetime], [wateractivity], [ppm], [temp] FROM (SELECT ROW_NUMBER() OVER(ORDER BY [sampledatetime]) AS rowNumber, [sampledatetime], [wateractivity], [ppm], [temp] FROM [WaterInOil]) AS countedTable WHERE rowNumber > (@pageSize * (@currentPage - 1)) AND rowNumber <= (@pageSize * @currentPage)"),
		};

        SqlConnection databaseConnection;
        List<string> databaseses;
        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public SQLExpressDatabase()
        {
            try
            {
                databaseses = new List<string>();
                //Data Source=localhost;Initial Catalog=C:\DATABASE\DATA\XTSDB2012.MDF;Integrated Security=True
                string connectionString = string.Format("Data Source=.\\SQLEXPRESS;Integrated Security=True;Connection Timeout=120");
                this.databaseConnection = new SqlConnection(connectionString);

                log.InfoFormat("Opening SQLExpress database {0}", connectionString);
                this.databaseConnection.Open();
                log.InfoFormat("Database timeout is set to {0} seconds", this.databaseConnection.ConnectionTimeout);
                log.Info("Enumerating databases");
                System.Data.SqlClient.SqlCommand sqlCommand = new System.Data.SqlClient.SqlCommand();
                sqlCommand.Connection = this.databaseConnection;
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.CommandText = "sp_databases";

                System.Data.SqlClient.SqlDataReader dataReader;
                dataReader = sqlCommand.ExecuteReader();

                while (dataReader.Read())
                {
                    string dbName = dataReader.GetString(0);
                    log.InfoFormat("Found database {0}", dbName);
                    if (dbName != "master" && dbName != "model" && dbName != "msdb" && dbName != "tempdb")
                    {
                        databaseses.Add(dbName);
                    }
                }

                databaseses.Sort();

                this.databaseConnection.Close();
            }
            catch (Exception e)
            {
                log.ErrorFormat("Caught exception {0}", e);
                throw;
            }
        }

        public string TableName(int table)
        {
            return this.tablesToExtract[table].Table;
        }

        public string DatabaseName(int database)
        {
            return this.databaseses[database];
        }

        public Int32 NumberOfRows(int table, int database)
        {
            int retryCount = 1;
            Int32 count = 0;
            bool continueToLoop = true;

            while (continueToLoop)
            {
                try
                {
                    this.databaseConnection.Open();
                    this.databaseConnection.ChangeDatabase(this.databaseses[database]);
                    this.tablesToExtract[table].CountCommand.Connection = this.databaseConnection;
                    count = (Int32)this.tablesToExtract[table].CountCommand.ExecuteScalar();
                    continueToLoop = false;
                }
                catch (SqlException)
                {
                    log.InfoFormat("Database error.  Retry {0}", retryCount);
                    retryCount++;
                    if (retryCount >= 3)
                    {
                        throw;
                    }
                    
                }
                finally
                {
                    this.databaseConnection.Close();
                }
            }

            return count;
        }

        public DataTable Extract(int table, int database, int numberRowsToExtract, int rowToStartAt)
        {
            int retryCount = 1;
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable result = null;
            bool continueToLoop = true;

            while (continueToLoop)
            {
                try
                {
                    this.databaseConnection.Open();
                    this.databaseConnection.ChangeDatabase(this.databaseses[database]);
                    this.tablesToExtract[table].ExtractCommand.Connection = this.databaseConnection;
                    this.tablesToExtract[table].ExtractCommand.Parameters["@pageSize"].Value = numberRowsToExtract;
                    this.tablesToExtract[table].ExtractCommand.Parameters["@currentPage"].Value = rowToStartAt;

                    //set the SelectCommand of the adapter
                    da.SelectCommand = this.tablesToExtract[table].ExtractCommand;
                    // create a new DataTable
                    result = new DataTable();
                    //fill the DataTable
                    da.Fill(result);
                    continueToLoop = false;
                }
                catch (SqlException)
                {
                    log.InfoFormat("Database error.  Retry {0}", retryCount);
                    retryCount++;
                    if (retryCount >= 3)
                    {
                        throw;
                    }
                }
                finally
                {
                    this.databaseConnection.Close();
                }
            }

            return result;

        }

        public int NumberOfTables
        {
            get
            {
                return tablesToExtract.Length;
            }
        }

        public int NumberOfDatabases
        {
            get
            {
                return this.databaseses.Count;
            }
        }
    }

    public class ExtractTable
    {
        public SqlCommand ExtractCommand;
        public SqlCommand CountCommand;
        public string InsertDatabase;
        public string Table;

        public ExtractTable(string tableName, string countQuery, string extractQuery)
        {
            this.ExtractCommand = new SqlCommand(extractQuery);
            this.ExtractCommand.Parameters.Add("@pageSize", SqlDbType.BigInt);
            this.ExtractCommand.Parameters.Add("@currentPage", SqlDbType.BigInt);
            this.ExtractCommand.CommandTimeout = 300;
            this.CountCommand = new SqlCommand(countQuery);
            this.CountCommand.CommandTimeout = 300;
            this.Table = tableName;
        }
    }
}
