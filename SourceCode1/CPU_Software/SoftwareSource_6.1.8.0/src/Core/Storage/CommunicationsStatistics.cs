using System;
using System.Collections.Generic;
using System.Text;
using System.Data.Common;
using System.Data.SQLite;
using System.Threading;
using HelperClasses;
using FaultErrorIndicators;
using System.Globalization;
using System.Configuration;
using DataCollectionSDK;

namespace Storage
{
    /// <summary>
    /// This class stores the Communication Statistics
    /// for the Modbus RTU interface.  It stores the number of failed
    /// packets and the number of retries
    /// </summary>
    public class CommunicationStatistics
    {
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        const int MaxWriteRetries = 3;

        Int64 communicationRetries;
        Int64 writesFailed;
        Int64 readsFailed;
        Int64 crcErrors;
        Int64 packetsWritten;
        Int64 packetsRead;
        Int64 whenToFlushCommStats;
        Int64 flushCounter;
        bool readFromDatabase;
        Faults faults = Faults.Instance;

        DatabaseSDK database;

        

        /// <summary>
        /// Constructs a CommunicationStatistics object and populates it
        /// with the data stored in the Communication Statistics database.
        /// </summary>
        public CommunicationStatistics()
            : this(false)
        {
        }

        /// <summary>
        /// Constructs a CommincationStatistics object that
        /// returns values directly from the database.
        /// </summary>
        /// <param name="readFromDatabase"></param>
        public CommunicationStatistics(bool readFromDatabase)
        {
            string databaseFile = @"d:\database\amot_xtsii_commstats.db3";
            if (ConfigurationManager.AppSettings["commsdatabase"] != null)
            {
                databaseFile = ConfigurationManager.AppSettings["commsdatabase"];
            }

            database = new DatabaseSDK(databaseFile, 3, 500, (int)TimeSpan.FromDays(182).TotalMilliseconds);

            CreateDatabase();

            InitialiseStatistics();
            this.flushCounter = 0;
            this.readFromDatabase = readFromDatabase;
        }

        /// <summary>
        /// Initialiseses the statistics.
        /// </summary>
        private void InitialiseStatistics()
        {
            try
            {
                InitStatsFromDatabase();
            }
            catch (Exception e)
            {
                //Failed get stats from the database
                communicationRetries = 0;
                writesFailed = 0;
                readsFailed = 0;
                crcErrors = 0;
                packetsWritten = 0;
                packetsRead = 0;

                logger.WarnFormat("Failed to read commincations statistics form database.  No statistics will be stored. {0}", e.Message);
                faults.SignalFault(FaultCodes.CommsStatisticsFailure);
            }

            whenToFlushCommStats = 10;

        }

        /// <summary>
        /// Gets and sets the number of failed writes.
        /// </summary>
        public Int64 FailedWrites
        {
            get
            {
                Int64 r = writesFailed;

                if (readFromDatabase)
                {
                    r = ReadStat("failed_writes");
                }

                return r;
            }

            set
            {
                writesFailed = value;
                Flush();
            }
        }

        /// <summary>
        /// Gets and sets the number of failed reads
        /// </summary>
        public Int64 FailedReads
        {
            get
            {
                Int64 r = readsFailed;
                if (readFromDatabase)
                {
                    r = ReadStat("failed_reads");
                }

                return r;
            }

            set
            {
                readsFailed = value;
                Flush();
            }
        }

        /// <summary>
        /// Gets and Sets the number of crc errors
        /// </summary>
        public Int64 CrcErrors
        {
            get
            {
                Int64 r = crcErrors;

                if (readFromDatabase)
                {
                    r = ReadStat("crc_errors");
                }

                return r;
            }

            set
            {
                crcErrors = value;
                Flush();
            }
        }

        /// <summary>
        /// Gets and Sets the number of retries
        /// </summary>
        public Int64 Retries
        {
            get
            {
                Int64 r = communicationRetries;
                if (readFromDatabase)
                {
                    r = ReadStat("retries");
                }

                return r;
            }

            set
            {
                communicationRetries = value;
                Flush();
            }
        }

        /// <summary>
        /// Gets and Sets the number of packets that have been written
        /// </summary>
        public Int64 PacketsWritten
        {
            get
            {
                Int64 r = packetsWritten;
                if (readFromDatabase)
                {
                    r = ReadStat("packets_written");
                }

                return r;
            }

            set
            {
                packetsWritten = value;
                Flush();
            }
        }

        /// <summary>
        /// Gets and Sets the number of packets that have been read
        /// </summary>
        public Int64 PacketsRead
        {
            get
            {
                Int64 r = packetsRead;
                if (readFromDatabase)
                {
                    r = ReadStat("packets_read");
                }

                return r;
            }

            set
            {
                packetsRead = value;
                Flush();
            }
        }

        public void ResetStatistics()
        {
            UpdateDatabase("comm_stats (retries, failed_writes, failed_reads, crc_errors, packets_written, packets_read, reset) values (0,0,0,0,0,0,1)");
        }

        public bool HaveStatisticsBeenReset()
        {
            bool reset = false;

            try
            {
                using (DbConnection connection = database.GetDbConnection())
                {
                    using (DbDataReader reader = database.Select(connection, "* from comm_stats"))
                    {
                        if (reader.HasRows)
                        {
                            if (reader.Read())
                            {
                                reset = reader.GetBoolean(reader.GetOrdinal("reset"));
                            }
                        }
                    }
                }

                faults.ClearFault(FaultCodes.CommsStatisticsFailure);
            }
            catch (Exception e)
            {
                logger.WarnFormat("Failed to read commincations statistics form database.  No statistics will be stored. {0}", e.Message);
                faults.SignalFault(FaultCodes.CommsStatisticsFailure);

                CreateDatabase();
            }

            return reset;
        }

        /// <summary>
        /// Initialises the communication statistics from the data stored in the database.
        /// </summary>
        private void InitStatsFromDatabase()
        {
            using (DbConnection connection = database.GetDbConnection())
            {
                using (DbDataReader reader = database.Select(connection, "* from comm_stats"))
                {
                    if (reader.HasRows)
                    {
                        if (reader.Read())
                        {
                            communicationRetries = reader.GetInt64(reader.GetOrdinal("retries"));
                            writesFailed = reader.GetInt64(reader.GetOrdinal("failed_writes"));
                            readsFailed = reader.GetInt64(reader.GetOrdinal("failed_reads"));
                            crcErrors = reader.GetInt64(reader.GetOrdinal("crc_errors"));
                            packetsWritten = reader.GetInt64(reader.GetOrdinal("packets_written"));
                            packetsRead = reader.GetInt64(reader.GetOrdinal("packets_read"));
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Reads the value of the column passed in columnName as a Int64
        /// </summary>
        /// <param name="columnName">Name of the column to read</param>
        /// <returns>The value of the column, or 0 if the column can not be read.</returns>
        private Int64 ReadStat(string columnName)
        {
            Int64 value = 0;

            try
            {
                using (DbConnection connection = database.GetDbConnection())
                {
                    using (DbDataReader reader = database.Select(connection, columnName + " from comm_stats"))
                    {
                        if (reader.HasRows)
                        {
                            if (reader.Read())
                            {
                                value = reader.GetInt64(0);
                            }
                        }
                    }
                }

                faults.ClearFault(FaultCodes.CommsStatisticsFailure);
            }
            catch (Exception e)
            {
                logger.WarnFormat("Failed to read commincations statistics form database. {0}", e.Message);
                faults.SignalFault(FaultCodes.CommsStatisticsFailure);

                CreateDatabase();
            }

            return value;
        }

        /// <summary>
        /// Flushes the Communication Statistics to the database when the flushCounter
        /// is equal to or greater the value of whenToFlushCommStats.
        /// </summary>
        public void Flush()
        {
            flushCounter++;

            if (flushCounter >= whenToFlushCommStats)
            {

                bool reset = this.HaveStatisticsBeenReset();

                //If stats have been reset
                if (reset)
                {
                    communicationRetries = 0;
                    writesFailed = 0;
                    readsFailed = 0;
                    crcErrors = 0;
                    packetsWritten = 0;
                    packetsRead = 0;
                }

                StringBuilder insertCommand = new StringBuilder("comm_stats (retries, failed_writes, failed_reads, crc_errors, packets_written, packets_read, reset) values (");

                insertCommand.Append(communicationRetries);
                insertCommand.Append(", ");
                insertCommand.Append(writesFailed);
                insertCommand.Append(", ");
                insertCommand.Append(readsFailed);
                insertCommand.Append(", ");
                insertCommand.Append(crcErrors);
                insertCommand.Append(", ");
                insertCommand.Append(packetsWritten);
                insertCommand.Append(", ");
                insertCommand.Append(packetsRead);
                insertCommand.Append(", 0)");

                UpdateDatabase(insertCommand.ToString());

                flushCounter = 0;
            }
        }

        private void UpdateDatabase(string insertCommand)
        {
            try
            {
                using (DbConnection connection = database.GetDbConnection())
                {
                    using (DbTransaction transaction = connection.BeginTransaction())
                    {
                        database.ExecuteNonQuery(connection, "delete from comm_stats");
                        database.InsertInto(connection, insertCommand);
                        transaction.Commit();
                        faults.ClearFault(FaultCodes.CommsStatisticsFailure);
                    }
                }
            }
            catch (SQLiteException)
            {
                logger.FatalFormat(CultureInfo.CurrentCulture,"Failed to write commincations statistics to database.");
                faults.SignalFault(FaultCodes.CommsStatisticsFailure);
                CreateDatabase();
            }
        }

        private void CreateDatabase()
        {
            try
            {
                using (DbConnection connection = database.GetDbConnection())
                {
                    database.CreateTable(connection, "comm_stats (retries integer, failed_writes integer, failed_reads integer, crc_errors integer, packets_written integer, packets_read integer, reset integer)");
                }
            }
            catch (Exception e)
            {
                logger.FatalFormat(CultureInfo.CurrentCulture, "Failed to create commincations statistics database. {0}", e.ToString());
            }
        }
    }
}

