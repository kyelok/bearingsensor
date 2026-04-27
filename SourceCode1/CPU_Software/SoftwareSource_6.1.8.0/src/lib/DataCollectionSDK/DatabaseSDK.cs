/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Globalization;
using System.IO;
using System.Threading;
using FaultErrorIndicators;
using System.Data.SQLite;
using System.Diagnostics.CodeAnalysis;

namespace DataCollectionSDK
{
    /// <summary>
    /// This class contains the database code that data
    /// collection modules can use.
    /// </summary>
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", MessageId = "SDK")]
    public class DatabaseSDK
    {
        /// <summary>
        /// Database factory
        /// </summary>
        DbProviderFactory dbFactory;

        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        /// <summary>
        /// The amount of time to wait for the database to unlock
        /// </summary>
        private int dbRetryDuration;
        
        /// <summary>
        /// The number of times to retry a database operation
        /// </summary>
        private int dbRetryCount;

        /// <summary>
        /// The period of data that should be removed when
        /// the database is full.
        /// </summary>
        private int dbDeletePeriod;

        string databaseName;

        /// <summary>
        /// The connection string used to open the database
        /// </summary>
        string connectionString;

        /// <summary>
        /// Flag used to determine if the SQLite extenstion function
        /// has been initalised.
        /// </summary>
        static bool initialisedFunctions = false;

        /// <summary>
        /// Creates a DatabaseSDK
        /// </summary>
        /// <param name="databaseName">The name of the database to create this 
        /// SDK for.</param>
        /// <param name="retryCount">The number of retries that should be 
        /// performed on this database when it is busy</param>
        /// <param name="retryDuration">The number of milliseconds that should 
        /// elapse before retrying</param>
        /// <param name="deletePeriod">The number of seconds that define the 
        /// period of oldest data that should be removed from the database 
        /// on a disk full error.</param>
        public DatabaseSDK(string databaseName, int retryCount, int retryDuration, int deletePeriod)
        {
            this.dbRetryCount = retryCount;
            this.dbRetryDuration = retryDuration;
            this.dbDeletePeriod = deletePeriod;

            int removeAt = databaseName.LastIndexOf('\\');

            if (removeAt != -1)
            {
                string databasePath = databaseName.Remove(removeAt);
                if (!Directory.Exists(databasePath))
                {
                    //Create the path
                    Directory.CreateDirectory(databasePath);
                }
            }

            this.databaseName = databaseName;
            this.connectionString = @"Data Source=" + databaseName;
            dbFactory = DbProviderFactories.GetFactory("System.Data.SQLite");

            if (initialisedFunctions == false)
            {
                SQLiteFunction.RegisterFunction(typeof(AMOTAvg));
                initialisedFunctions = true;
            }

            logger.InfoFormat("Init: Database source {0}", connectionString);
        }

        /// <summary>
        /// Perform a raw SQL request without data being returned
        /// </summary>
        /// <param name="connection">Connection obtained by Connect()</param>
        /// <param name="sql">SQL query</param>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Security", "CA2100:Review SQL queries for security vulnerabilities")]
        public void ExecuteNonQuery(DbConnection connection, string sql)
        {
            DbCommand command = dbFactory.CreateCommand();
            command.Connection = connection;
            command.CommandText = sql;

            command.ExecuteNonQuery();
        }


        /// <summary>
        /// Executes a List of sql statements on the database
        /// </summary>
        /// <param name="sqlStatements">The statements to execute</param>
        /// <returns>True if success, otherwise false.</returns>
        public bool ExecuteSQLStatements(string[] sqlStatements)
        {
            return ExecuteSQLStatements(sqlStatements, FaultCodes.DatabaseWriteFailure, FaultCodes.DatabaseFailure, FaultCodes.DatabaseFailure);
        }

        /// <summary>
        /// Executes a List of sql statements on the database
        /// </summary>
        /// <param name="sqlStatements">A List of strings that contain the SQL statements to execute</param>
        /// <param name="writeFailure">The fault code to raise on a write failure</param>
        /// <param name="param name="criticalFailure">The fault code to raise on a critical failure</param>
        /// <param name="missedLogFailure">The fault code to raise on missing a log</param>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", MessageId = "SQL")]
        public bool ExecuteSQLStatements(string[] sqlStatements, FaultCodes writeFailure, FaultCodes criticalFailure, FaultCodes missedLogFailure)
        {
            bool databaseFileOK = true;

            if (sqlStatements.Length > 0)
            {
                for (int retry = 0; retry < dbRetryCount; retry++)
                {
                    int sqlIndex;
                    try
                    {
                        using (DbConnection dbConnection = GetDbConnection())
                        {
                            using (DbTransaction dbTransaction = dbConnection.BeginTransaction())
                            {
                                for (sqlIndex = 0; sqlIndex < sqlStatements.Length; sqlIndex++)
                                {
                                    ExecuteNonQuery(dbConnection, sqlStatements[sqlIndex]);
                                }

                                dbTransaction.Commit();
                            }
                        }
                        Faults.Instance.ClearFault(writeFailure);
                        Faults.Instance.ClearFault(criticalFailure);
                        Faults.Instance.ClearFault(missedLogFailure);
                        break;  // Break out of retry loop
                    }
                    catch (DbException e)
                    {
                        DatabaseErrorCode dbError = TranslateException(e);

                        switch (dbError)
                        {
                            case DatabaseErrorCode.DbInternalError:
                            case DatabaseErrorCode.DbBusy:

                                //if database continues to be busy or throw internal error
                                if (retry - 1 == dbRetryCount)
                                {
                                    Faults.Instance.SignalFault(writeFailure);
                                }

                                logger.InfoFormat("Log: Retry count {0} : {1}", retry, e.Message);
                                Thread.Sleep(dbRetryDuration);
                                break;

                            case DatabaseErrorCode.DbFull:

                                //if database continues to be full
                                if (retry - 1 == dbRetryCount)
                                {
                                    Faults.Instance.SignalFault(writeFailure);
                                }

                                logger.ErrorFormat("Log: Database{0} is full, trying to delete old data", databaseName);
                                DeleteOldData();
                                break;

                            case DatabaseErrorCode.DbTableNotFound:
                            case DatabaseErrorCode.DbCorrupt:

                                Faults.Instance.SignalFault(criticalFailure);

                                try
                                {
                                    logger.ErrorFormat("Log: Database {1} is corrupt (Error Code {0}, trying to relocate corrupt database", dbError, databaseName);

                                    MoveCorruptDatabase();
                                    databaseFileOK = false;
                                }
                                catch (IOException)
                                {
                                    try
                                    {
                                        logger.Error("Log: Failed to relocate corrupt database, deleting database.");

                                        DeleteCorruptDatabase();
                                        databaseFileOK = false;
                                    }
                                    catch (IOException)
                                    {
                                        throw new IOException("Failed to delete corrupt database", e);
                                    }
                                }
                                break;

                            case DatabaseErrorCode.DbSystemFailure:
                            case DatabaseErrorCode.DbUnknown:
                                // Critical system failure, not much we can do
                                logger.ErrorFormat("Log: Critical Database Error {0} occured.", dbError);
                                Faults.Instance.SignalFault(criticalFailure);
                                try
                                {
                                    logger.ErrorFormat("Log: Database {1} is corrupt (Error Code {0}, trying to relocate corrupt database", dbError, databaseName);

                                    MoveCorruptDatabase();
                                    databaseFileOK = false;
                                }
                                catch (IOException)
                                {
                                    try
                                    {
                                        logger.Error("Log: Failed to relocate corrupt database, deleting database.");

                                        DeleteCorruptDatabase();
                                        databaseFileOK = false;
                                    }
                                    catch (IOException)
                                    {
                                        throw new IOException("Failed to delete corrupt database", e);
                                    }
                                }
                                break;
                                throw;
                            case DatabaseErrorCode.DbLowSystemMemory:
                            case DatabaseErrorCode.DbSQLError:
                                throw;
                        }
                    }
                    catch (ArgumentOutOfRangeException e)
                    {
                        logger.ErrorFormat("Log: {0}", e.Message);
                        Faults.Instance.SignalFault(missedLogFailure);
                    }
                }
            }

            return databaseFileOK;
        }

        /// <summary>
        /// Creates a table in the database
        /// </summary>
        /// <param name="connection">The DbConnection to create the table for.</param>
        /// <param name="sql">The sql command to use to create the table.</param>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Security", "CA2100:Review SQL queries for security vulnerabilities")]
        public void CreateTable(DbConnection connection, string sql)
        {
            using (DbCommand command = dbFactory.CreateCommand())
            {
                command.Connection = connection;
                command.CommandText = "CREATE TABLE IF NOT EXISTS " + sql;
                command.ExecuteNonQuery();
            }
        }

        /// <summary>
        /// Insert data into a table
        /// </summary>
        /// <param name="connection">Connection obtained by Connect()</param>
        /// <param name="sql">Insert SQL</param>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Security", "CA2100:Review SQL queries for security vulnerabilities")]
        public void InsertInto(DbConnection connection, string sql)
        {
            using (DbCommand command = dbFactory.CreateCommand())
            {
                command.Connection = connection;
                command.CommandText = "INSERT INTO " + sql;
                command.ExecuteNonQuery();
            }
        }

        /// <summary>
        /// Converts DateTime.Ticks to a Int64 Unix timestamp
        /// </summary>
        /// <param name="ticks">The ticks to convert</param>
        /// <returns>The Unix time stamp</returns>
        public static Int64 ConvertToUnixTimestamp(Int64 ticks)
        {
            DateTime origin = new DateTime(1970, 1, 1, 0, 0, 0, 0);
            TimeSpan diff = new DateTime(ticks) - origin;
            return ((Int64)Math.Floor(diff.TotalSeconds));
        }

        /// <summary>
        /// Converts from a Int64 Unix time stamp to a DateTime object
        /// </summary>
        /// <param name="time">The Int64 unix time stamp</param>
        /// <returns>The DateTime object created from the timestamp</returns>
        public static DateTime ConvertFromUnixTimeStamp(Int64 time)
        {
            DateTime origin = new DateTime(1970, 1, 1, 0, 0, 0, 0);
            return origin.AddSeconds(time);
        }

        /// <summary>
        /// Gets a connection to the database
        /// </summary>
        /// <returns>The DbConnection object that can be used to access the database</returns>
        public DbConnection GetDbConnection()
        {
            DbConnection connection;

            connection = dbFactory.CreateConnection();
            connection.ConnectionString = this.connectionString; //Example: "Server=127.0.0.1;Port=5432;User Id=joe;Password=secret;Database=joedata;"
            connection.Open();
            using (DbCommand command = dbFactory.CreateCommand())
            {
                command.Connection = connection;
                command.CommandText = "PRAGMA journal_mode=WAL";
                command.ExecuteNonQuery();
                command.CommandText = "PRAGMA page_size = 4096;";
                command.ExecuteNonQuery();
            }

            return connection;
        }

        /// <summary>
        /// Creates a DbCommand object for use with the database
        /// </summary>
        /// <param name="sql">The sql statement to create the command from</param>
        /// <returns>A DbCommand that contains the sql statement passed.</returns>
        public DbCommand CreateCommand(string sql)
        {
            SQLiteCommand command = (SQLiteCommand)dbFactory.CreateCommand();
            command.CommandText = sql;
            return (DbCommand)command;
        }

        /// <summary>
        /// Creates a DbParameter oebject
        /// </summary>
        /// <param name="name">The name of the parameter</param>
        /// <param name="value">The value to store in the parameter</param>
        /// <returns>The DbParamater that is created</returns>
        public DbParameter CreateParameter(string name, object value)
        {
            SQLiteParameter paramter = (SQLiteParameter)dbFactory.CreateParameter();
            paramter.ParameterName = name;
            paramter.Value = value;

            return (DbParameter)paramter;
        }

        /// <summary>
        /// Executes a PRAGMA command on the database
        /// </summary>
        /// <param name="connection">Connection to the database</param>
        /// <param name="sql">The command to execute</param>
        /// <returns>The result of the pragma.</returns>
        public DbDataReader Pragma(DbConnection connection, string sql)
        {
            DbDataReader rc = null;
            for (int retry = 0; retry < dbRetryCount; retry++)
            {
                try
                {
                    using (DbCommand command = dbFactory.CreateCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "PRAGMA " + sql;
                        rc = command.ExecuteReader();
                    }
                    break;
                }
                catch (DbException e)
                {
                    DatabaseErrorCode dbError = TranslateException(e);

                    switch (dbError)
                    {
                        case DatabaseErrorCode.DbBusy:

                            //if database continues to be busy or throw internal error
                            if (retry - 1 == dbRetryCount)
                            {
                                Faults.Instance.SignalFault(FaultCodes.DatabaseReadFailure);
                            }

                            logger.InfoFormat("Log: Pragma Retry count {0} : {1}", retry, e.Message);
                            Thread.Sleep(dbRetryDuration);
                            break;

                        case DatabaseErrorCode.DbInternalError:
                        case DatabaseErrorCode.DbFull:
                        case DatabaseErrorCode.DbTableNotFound:
                        case DatabaseErrorCode.DbSQLError:
                        case DatabaseErrorCode.DbCorrupt:
                        case DatabaseErrorCode.DbSystemFailure:
                        case DatabaseErrorCode.DbLowSystemMemory:
                        case DatabaseErrorCode.DbUnknown:
                            // Critical system failure, not much we can do
                            logger.ErrorFormat("Log: Pragma Critical Database Error {0} occured {1}.", dbError, databaseName);
                            Faults.Instance.SignalFault(FaultCodes.DatabaseReadFailure);
                            throw;
                    }
                }
            }
            return rc;
        }

        /// <summary>
        /// Performs a select query on the database
        /// </summary>
        /// <param name="connection">The connection object for the database to perform the select on</param>
        /// <param name="sql">The sql statement to use for the select</param>
        /// <returns>A DbDataReader that holds the result of the select</returns>
        public DbDataReader Select(DbConnection connection, string sql)
        {
            DbDataReader rc = null;
            for (int retry = 0; retry < dbRetryCount; retry++)
            {
                try
                {
                    using (DbCommand command = dbFactory.CreateCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "SELECT " + sql;
                        rc = command.ExecuteReader();
                    }
                    break;
                }
                catch (DbException e)
                {
                    DatabaseErrorCode dbError = TranslateException(e);

                    switch (dbError)
                    {
                        case DatabaseErrorCode.DbBusy:

                            //if database continues to be busy or throw internal error
                            if (retry - 1 == dbRetryCount)
                            {
                                Faults.Instance.SignalFault(FaultCodes.DatabaseReadFailure);
                            }

                            logger.InfoFormat("Log: Retry count {0} : {1}", retry, e.Message);
                            Thread.Sleep(dbRetryDuration);
                            break;

                        case DatabaseErrorCode.DbInternalError:
                        case DatabaseErrorCode.DbFull:
                        case DatabaseErrorCode.DbTableNotFound:
                        case DatabaseErrorCode.DbSQLError:
                        case DatabaseErrorCode.DbCorrupt:
                        case DatabaseErrorCode.DbSystemFailure:
                        case DatabaseErrorCode.DbLowSystemMemory:
                        case DatabaseErrorCode.DbUnknown:
                            // Critical system failure, not much we can do
                            logger.ErrorFormat("Log: Pragma Critical Database Error {0} occured {1}.", dbError, databaseName);
                            Faults.Instance.SignalFault(FaultCodes.DatabaseReadFailure);
                            throw;
                    }
                }
            }
            return rc;
        }

        /// <summary>
        /// Generic version of Select into Data Table that
        /// sets the generic database failure faults.
        /// </summary>
        /// <param name="sql">The select query (minus select) to execute on the database.</param>
        /// <returns>The datatable</returns>
        public DataTable SelectIntoDataTable(string sql)
        {
            return SelectIntoDataTable(sql, FaultCodes.DatabaseReadFailure, FaultCodes.DatabaseFailure);
        }


        /// <summary>
        /// Performs a select on the database and returns the result as a DataTable.
        /// </summary>
        /// <param name="conn">The connection to the database.</param>
        /// <param name="sql">The select query (minus select) to execute on the database.</param>
        /// <param name="readFailure">The fault code to raise on a read failure</param>
        /// <param name="databaseFailure">The fault code to raise on a database failure</param>
        /// <returns>A DateTable that holds the result of the select.</returns>
        public DataTable SelectIntoDataTable(string sql, FaultCodes readFailure, FaultCodes databaseFailure)
        {
            DataTable table = new DataTable();
            SelectIntoDataTable(table, sql, readFailure, databaseFailure);
            return table;
        }

        /// <summary>
        /// Performs a select on a table and adds the result of the select
        /// into a DataTable object.
        /// </summary>
        /// <param name="table">The DataTable object to add the result of the select into.</param>
        /// <param name="sql">The sql statementto use for the select.</param>
        public void SelectIntoDataTable(DataTable table, string sql)
        {
            using (SQLiteConnection connection = (SQLiteConnection)GetDbConnection())
            {
                using (SQLiteCommand command = (SQLiteCommand)dbFactory.CreateCommand())
                {
                    command.Connection = (SQLiteConnection)connection;
                    command.CommandText = "SELECT " + sql;
                    using (SQLiteDataAdapter ad = new SQLiteDataAdapter(command))
                    {
                        ad.Fill(table);
                    }
                }
            }
        }

        /// <summary>
        /// Uses a DbCommand to select data into a DataTable
        /// </summary>
        /// <param name="connection">The database connection to perform the command on</param>
        /// <param name="table">The DataTable to select the data into</param>
        /// <param name="command">The command to use for selecting the data</param>
        public void CommandIntoDataTable(DbConnection connection, DataTable table, DbCommand command)
        {
            command.Connection = connection;
            using (SQLiteDataAdapter ad = new SQLiteDataAdapter((SQLiteCommand)command))
            {
                ad.Fill(table);
            }
        }

        /// <summary>
        /// Wrapper for select into table that provides database error handling
        /// </summary>
        /// <param name="table"></param>
        /// <param name="sql"></param>
        /// <param name="readFailure"></param>
        /// <param name="databaseFailure"></param>
        private void SelectIntoDataTable(DataTable table, string sql, FaultCodes readFailure, FaultCodes databaseFailure)
        {
            for (int retry = 0; retry < dbRetryCount; retry++)
            {
                try
                {
                    SelectIntoDataTable(table, sql);
                    Faults.Instance.ClearFault(readFailure);
                    Faults.Instance.ClearFault(databaseFailure);
                    break;
                }
                catch (DbException e)
                {
                    DatabaseErrorCode dbError = TranslateException(e);

                    switch (dbError)
                    {
                        case DatabaseErrorCode.DbInternalError:
                        case DatabaseErrorCode.DbBusy:

                            //if database continues to be busy or throw internal error
                            if (retry - 1 == dbRetryCount)
                            {
                                Faults.Instance.SignalFault(readFailure);
                            }

                            logger.InfoFormat("Log: Retry count {0} : {1}", retry, e.Message);
                            Thread.Sleep(dbRetryDuration);
                            break;

                        case DatabaseErrorCode.DbFull:

                            //if database continues to be full
                            if (retry - 1 == dbRetryCount)
                            {
                                Faults.Instance.SignalFault(readFailure);
                            }

                            logger.ErrorFormat("Log: Database{0} is full, trying to delete old data", databaseName);
                            break;

                        case DatabaseErrorCode.DbTableNotFound:
                            throw;
                        case DatabaseErrorCode.DbSQLError:
                            throw;
                        case DatabaseErrorCode.DbCorrupt:
                        case DatabaseErrorCode.DbSystemFailure:
                        case DatabaseErrorCode.DbLowSystemMemory:
                        case DatabaseErrorCode.DbUnknown:
                            // Critical system failure, not much we can do
                            logger.ErrorFormat("Log: Critical Database Error {0} occured.", dbError);
                            Faults.Instance.SignalFault(databaseFailure);
                            throw;
                    }
                }
            }
        }

        /// <summary>
        /// Translates a DbException to an error code
        /// </summary>
        /// <param name="e">Exception to translate</param>
        /// <returns>One of the DatabaseErrorCodes enumerated error codes</returns>
        [SuppressMessage("Microsoft.Naming", "CA1704:IdentifiersShouldBeSpelledCorrectly", MessageId = "e")]
        public DatabaseErrorCode TranslateException(DbException e)
        {
            SQLiteException ee = (SQLiteException)e;

            //The SQLite does not correctly set the table not found error code
            //handle this case first before checking the error code

            if (e.Message.Contains("no such table"))
            {
                return DatabaseErrorCode.DbTableNotFound;
            }
            else
            {
                switch (ee.ErrorCode)
                {
                    case SQLiteErrorCode.Ok:
                    case SQLiteErrorCode.Done:
                    case SQLiteErrorCode.Row:
                        return DatabaseErrorCode.DbOk;

                    case SQLiteErrorCode.Busy:
                    case SQLiteErrorCode.Locked:
                    case SQLiteErrorCode.Protocol:
                        return DatabaseErrorCode.DbBusy;

                    case SQLiteErrorCode.Internal:
                    case SQLiteErrorCode.Perm:
                    case SQLiteErrorCode.Auth:
                        return DatabaseErrorCode.DbInternalError;

                    case SQLiteErrorCode.Error:
                    case SQLiteErrorCode.Range:
                    case SQLiteErrorCode.TooBig:
                    case SQLiteErrorCode.Constraint:
                    case SQLiteErrorCode.Abort:
                    case SQLiteErrorCode.Mismatch:
                    case SQLiteErrorCode.Misuse:
                        return DatabaseErrorCode.DbSQLError;

                    case SQLiteErrorCode.NoMem:
                        return DatabaseErrorCode.DbLowSystemMemory;

                    case SQLiteErrorCode.IOErr:
                    case SQLiteErrorCode.NOLFS:
                        return DatabaseErrorCode.DbSystemFailure;

                    case SQLiteErrorCode.NotFound:
                        return DatabaseErrorCode.DbTableNotFound;

                    case SQLiteErrorCode.Full:
                        return DatabaseErrorCode.DbFull;

                    case SQLiteErrorCode.Empty:
                    case SQLiteErrorCode.CantOpen:
                    case SQLiteErrorCode.Format:
                    case SQLiteErrorCode.Corrupt:
                    case SQLiteErrorCode.NotADatabase:
                        return DatabaseErrorCode.DbCorrupt;
                }
                return DatabaseErrorCode.DbUnknown;
            }
        }

        /// <summary>
        /// Deletes the first n-months from the database where n is defined in DeletePeriod
        /// </summary>
        private void DeleteOldData()
        {
            List<string> sqlStatements = new List<string>();

            using (DbConnection dbConnection = GetDbConnection())
            {
                using (DbDataReader dbDataReader = Select(dbConnection, String.Format(CultureInfo.InvariantCulture, "name FROM sqlite_master WHERE type ='table' order by name)")))
                {
                    while (dbDataReader.Read())
                    {
                        sqlStatements.Add(String.Format(CultureInfo.InvariantCulture, "DELETE FROM {0} WHERE time_stamp < ((SELECT MIN(time_stamp) FROM {0}) + {1});", dbDataReader.GetString(0), this.dbDeletePeriod));
                    }
                }
            }

            ExecuteSQLStatements(sqlStatements.ToArray(), FaultCodes.DatabaseWriteFailure, FaultCodes.DatabaseFailure, FaultCodes.DatabaseFailure);

        }

        /// <summary>
        /// Delete a corrupt dabase
        /// </summary>
        public void DeleteCorruptDatabase()
        {
            File.Delete(this.databaseName);
        }

        /// <summary>
        /// Move a corrupt database file
        /// </summary>
        public void MoveCorruptDatabase()
        {
            String dbFilePath = databaseName;
            String dbNewPath = dbFilePath + "." + DateTime.UtcNow.Ticks.ToString() + ".corrupt";

            if (File.Exists(dbNewPath))
            {
                File.Delete(dbNewPath);
            }

            File.Move(dbFilePath, dbNewPath);
            logger.ErrorFormat("Corrupt database renamed {0}.corrupt", dbFilePath);
        }
    }

    /// <summary>
    /// The AMOTAvg function is used to perform averaging of data.
    /// 
    /// The AMOT SPU uses error codes -32760 to -32766, normally if these codes are found the 
    /// function will also average these. For example if we have the data 10, -32763, 10, 10
    /// then we would recieve the average trend of -8184 which is obviously wrong. In this
    /// case we return the error code -32763 to indicate the error.
    /// </summary>
    [SQLiteFunction(Name = "AMOTAvg", Arguments = 1, FuncType = FunctionType.Aggregate)]
    public class AMOTAvg : SQLiteFunction
    {
        class Counter
        {
            public int Count { get; set; }

            public Int64 Value { get; set; }
        }

        /// <summary>
        /// Step for each operation
        /// </summary>
        /// <param name="args">The arguments for the command to process</param>
        /// <param name="stepNumber">The 1-based step number. This is incrememted 
        /// each time the step method is called.</param>
        /// <param name="contextData">A placeholder for implementers to store contextual 
        /// data pertaining to the current context.</param>
        public override void Step(object[] args, int stepNumber, ref object contextData)
        {
            Counter counter = (Counter)contextData;
            if (contextData == null)
            {
                counter = new Counter();
                contextData = counter;
            }
            if (counter.Value > -32700 && counter.Value < 32700)
            {
                Int64 value64 = (Int64)args[0];
                if (value64 > -32700 && value64 < 32700)
                {
                    counter.Count++;
                    counter.Value += value64;
                }
                else
                {
                    counter.Count = 1;
                    counter.Value = value64;
                }
            }
        }

        /// <summary>
        /// Complete processing
        /// </summary>
        /// <param name="contextData">A placeholder for implementers to store contextual 
        /// data pertaining to the current context.</param>
        /// <returns>The final object</returns>
        public override object Final(object contextData)
        {
            if (contextData != null)
            {
                Counter counter = (Counter)contextData;
                if (counter.Value != 0 && counter.Count > 0)
                {
                    return (Int64)(counter.Value / counter.Count);
                }
                return (Int64)0;
            }
            return contextData;
        }
    }
}
