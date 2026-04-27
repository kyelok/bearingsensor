using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DataCollectionSDK;
using System.Data.Common;
using System.Data;
using System.Configuration;
using HelperClasses;
using System.IO;
using System.Runtime.Serialization;
using WebServiceObjects;
using System.Globalization;

namespace TrendPlugin
{
    /// <summary>
    /// This class is used to query the database for trend data.
    /// Each instance of this class holds a query for retrieving trend data from 
    /// the database.
    /// </summary>
    public class TrendQuery : IDisposable
    {
        /// <summary>
        /// The database connector object
        /// </summary>
        private DatabaseSDK dataCollectionDatabase;

        /// <summary>
        /// The number of seconds in a year.
        /// </summary>
        const int SecondsInAYear = 31556926;

        int[] Sensor;
        int[] SensorDeviation;
        int[] Cylinder;
        int[] CylinderDeviation;
        int[] Temperature;
        bool SLEM;
        bool WIOActivity;
        bool WIOPPM;
        bool WIOTemp;
        bool RPM;
        bool averaged;
        bool highRes;
        bool CppmA;
        bool CppPercent;

        int timestampOfMostRecentRecord;
        DateTime spanStartDate;
        DateTime endDate;
        DbParameter startDateParameter;
        DbParameter endDateParameter;
        bool processedFirstRecord;
        InternalDownloadOperation downloadOperation;

        List<TableToQuery> tablesToQuery;

        DateTime timeToUseForQuery;
        TimeSpan spanToUseForQuery;

        List<TrendPoints> completedQueries;

        string exportFolderUID = string.Empty;

        public bool AllRecordsRead { get; set; }

        public Dictionary<string, StreamWriter> exportStreams;

        /// <summary>
        /// Constructs a TrendQuery object
        /// </summary>
        /// <param name="end">The date of the most recent trend point to retrieve as a uix time stamp.</param>
        /// <param name="span">The number of minutes worth of data to retreive</param>
        /// <param name="Sensor">A list of the sensors to retrieve</param>
        /// <param name="SensorDeviation">A list of the sensor deviations to retreive</param>
        /// <param name="Cylinder">A list of cylinders to retreive</param>
        /// <param name="CylinderDeviation">A list of cylinder deviations to retreive</param>
        /// <param name="SLEM">A Flag indicating if SLEM should be retrieved</param>
        /// <param name="WIOActivity">A Flag indicating if WIOACtiviyt should be retrieved</param>
        /// <param name="WIOPPM">A Flag indicating if WIOPPM should be retrieved</param>
        /// <param name="WIOTemp">A Flag indicating if WIOTemp shoould be retrieved</param>
        /// <param name="RPM">A Flag indicating if RPM should be retrieved</param>
        public TrendQuery(string end, string span, string Sensor, string SensorDeviation, string Cylinder, string CylinderDeviation, string Temperature,
            string SLEM, string WIOActivity, string WIOPPM, string WIOTemp, string RPM, string CppmA, string CppPercent, string TotalTimeSpan, string HighRes = "False", InternalDownloadOperation downloadOperation = null)
        {
            ModuleConfiguration configuration = ModuleConfiguration.GetApplicationConfiguration();
            DataCollectionConfigurationSection dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;

            dataCollectionDatabase = new DatabaseSDK(dataCollectionConfig.Database.DataLogger,
                                dataCollectionConfig.Database.DbRetryCount,
                dataCollectionConfig.Database.DbRetryDuration,
                dataCollectionConfig.Database.DbDeletePeriod);

            this.tablesToQuery = new List<TableToQuery>();

            this.downloadOperation = downloadOperation;

            ConvertURLToQuery(end, span, Sensor, SensorDeviation, Cylinder, CylinderDeviation, Temperature, SLEM, WIOActivity, WIOPPM, WIOTemp, RPM, CppmA, CppPercent, HighRes, TotalTimeSpan);

            startDateParameter = dataCollectionDatabase.CreateParameter("startdate", DatabaseSDK.ConvertToUnixTimestamp(spanStartDate.Ticks));
            endDateParameter = dataCollectionDatabase.CreateParameter("enddate", DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks));



            timeToUseForQuery = spanStartDate;
            processedFirstRecord = false;
            AllRecordsRead = false;
            completedQueries = new List<TrendPoints>();
        }

        ~TrendQuery()
        {
        }

        /// <summary>
        /// Queries the trend data
        /// </summary>
        public void QueryTrendData(string sessionId, bool export)
        {
            AllRecordsRead = false;

            EngineTrendResult result = null;

            if (export)
            {
                exportStreams = new Dictionary<string, StreamWriter>();

                // Each export folder is unique
                exportFolderUID = string.Format("Export_{0:X}", Environment.TickCount);

                result = new EngineTrendResult(DatabaseSDK.ConvertToUnixTimestamp(spanStartDate.Ticks), DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks), timestampOfMostRecentRecord, averaged);

                for (int i = 0; i < 28; i++)
                {
                    CreateTempExportFile(string.Format("Sensor {0}", i), string.Format("Sensor {0}.{1}", (i / 2) + 1, (i % 2) + 1));
                    CreateTempExportFile(string.Format("Sensor Deviation {0}", i), string.Format("Sensor Deviation {0}.{1}", (i / 2) + 1, (i % 2) + 1));
                }

                for (int i = 0; i < 14; i++)
                {
                    CreateTempExportFile(string.Format("Cylinder {0}", i), string.Format("Cylinder {0}", i + 1));
                    CreateTempExportFile(string.Format("Cylinder Deviation {0}", i), string.Format("Cylinder Deviation {0}", i + 1));
                }                

                CreateTempExportFile("SLEM", "SLEM");
                CreateTempExportFile("WIO Activity", "WIO Activity");
                CreateTempExportFile("WIO PPM", "WIO PPM");
                CreateTempExportFile("WIO Temp", "WIO Temp");
                CreateTempExportFile("RPM", "RPM");
                CreateTempExportFile("CPP mA", "CPP mA");
                CreateTempExportFile("CPP percent", "CPP percent");

                for (int i = 0; i < 56; i++)
                {
                    CreateTempExportFile(string.Format("Temperature {0}", i), string.Format("Temperature {0}", i + 1));
                }
            }

            TimeSpan span = endDate.Subtract(spanStartDate);
            Int64 totalSpanInSeconds = (Int64)(span.TotalSeconds * tablesToQuery.Count);
            Int64 totalProcessSeconds = 0;

            using (DbConnection connection = dataCollectionDatabase.GetDbConnection())
            {
                if (!this.averaged)
                {
                    totalProcessSeconds = QueryHighresolution(sessionId, export, totalSpanInSeconds, totalProcessSeconds, connection);
                }
                else
                {
                    totalProcessSeconds = QueryLowResolutionData(sessionId, export, totalSpanInSeconds, totalProcessSeconds, connection);
                }
            }

            AllRecordsRead = true;

            if (export)
            {
                // Stitch back together the CSV file
                CreateExportCSV();

                this.downloadOperation.Progress.Complete = true;
                this.downloadOperation.Progress.PercentageProgress = 100;
            }
        }

        private Int64 QueryLowResolutionData(string sessionId, bool export, Int64 totalSpanInSeconds, Int64 totalProcessSeconds, DbConnection connection)
        {
            foreach (TableToQuery query in this.tablesToQuery)
            {
                using (DataTable dbDataTable = new DataTable())
                {
                    processedFirstRecord = false;
                    using (DbCommand command = query.CreateQueryCommand(dataCollectionDatabase))
                    {
                        // Modular Query
                        for (DateTime currentTime = spanStartDate; currentTime < endDate; currentTime = currentTime.Add(spanToUseForQuery))
                        {
                            if (export)
                            {
                                this.downloadOperation.Progress.PercentageProgress = (int)((totalProcessSeconds * 50) / totalSpanInSeconds);
                                totalProcessSeconds += (Int64)spanToUseForQuery.TotalSeconds;
                                //Disable use of the anchor point.  Not required when exporitng the
                                //data.
                                processedFirstRecord = true;
                            }

                            command.Parameters.Add(startDateParameter);
                            command.Parameters.Add(endDateParameter);

                            //The first record is used as an "anchor" data point.  This is required so that
                            //the points are plotted correctly on the graph by the UI.
                            //When exporting data the anchor point is not required.
                            if (processedFirstRecord == false)
                            {
                                command.Parameters["startdate"].Value = DatabaseSDK.ConvertToUnixTimestamp(spanStartDate.AddSeconds(-9).Ticks);
                                command.Parameters["enddate"].Value = DatabaseSDK.ConvertToUnixTimestamp(spanStartDate.Ticks);
                                dataCollectionDatabase.CommandIntoDataTable(connection, dbDataTable, command);
                                processedFirstRecord = true;
                            }
                            else
                            {
                                command.Parameters["startdate"].Value = DatabaseSDK.ConvertToUnixTimestamp(currentTime.AddSeconds(1).Ticks);
                                command.Parameters["enddate"].Value = DatabaseSDK.ConvertToUnixTimestamp(currentTime.Add(spanToUseForQuery).Ticks);
                                dataCollectionDatabase.CommandIntoDataTable(connection, dbDataTable, command);
                            }

                            if (export)
                            {
                                WriteEngineTrendDataCallback(ProcessRowTrendInformation(dbDataTable, sessionId, export, query));
                            }
                            else
                            {
                                ProcessRowTrendInformation(dbDataTable, sessionId, export, query);
                            }

                            command.Parameters.Remove(startDateParameter);
                            command.Parameters.Remove(endDateParameter);
                            dbDataTable.Clear();
                        }
                    }
                }
            }
            return totalProcessSeconds;
        }

        private Int64 QueryHighresolution(string sessionId, bool export, Int64 totalSpanInSeconds, Int64 totalProcessSeconds, DbConnection connection)
        {
            foreach (TableToQuery query in this.tablesToQuery)
            {
                if (export)
                {
                    using (DbCommand command = query.CreateQueryCommand(dataCollectionDatabase))
                    {
                        for (DateTime currentTime = spanStartDate; currentTime < endDate; currentTime = currentTime.Add(spanToUseForQuery))
                        {
                            using (DataTable dbDataTable = new DataTable())
                            {
                                command.Parameters.Add(startDateParameter);
                                command.Parameters.Add(endDateParameter);

                                //Exporting not averaged data.  Each time around the for loop query a single data point
                                //byt selecting data between currentTime and currentTime
                                command.Parameters["startdate"].Value = DatabaseSDK.ConvertToUnixTimestamp(currentTime.Ticks);
                                command.Parameters["enddate"].Value = DatabaseSDK.ConvertToUnixTimestamp(currentTime.Ticks);
                                dataCollectionDatabase.CommandIntoDataTable(connection, dbDataTable, command);

                                WriteEngineTrendDataCallback(ProcessRowTrendInformation(dbDataTable, sessionId, export, query));

                                this.downloadOperation.Progress.PercentageProgress = (int)((totalProcessSeconds * 50) / totalSpanInSeconds);
                                totalProcessSeconds += (Int64)spanToUseForQuery.TotalSeconds;
                            }
                        }
                    }
                }
                else
                {
                    using (DbCommand command = query.CreateQueryCommand(dataCollectionDatabase))
                    {
                        using (DataTable dbDataTable = new DataTable())
                        {
                            // Singular Query
                            command.Parameters.Add(startDateParameter);
                            command.Parameters.Add(endDateParameter);

                            command.Parameters["startdate"].Value = DatabaseSDK.ConvertToUnixTimestamp(spanStartDate.Ticks);
                            command.Parameters["enddate"].Value = DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks);
                            dataCollectionDatabase.CommandIntoDataTable(connection, dbDataTable, command);
                            ProcessRowTrendInformation(dbDataTable, sessionId, export, query);
                        }
                    }
                }
            }
            return totalProcessSeconds;
        }

        private void CreateExportCSV()
        {
            // Close all the open temporary file streams
            foreach (KeyValuePair<string, StreamWriter> exportStream in exportStreams)
            {
                exportStream.Value.Close();
                exportStream.Value.Dispose();
            }

            // Open available files, progress past the first line and begin reading values
            List<ExportFileMetaData> importFiles = new List<ExportFileMetaData>();

            string[] headerInfo = new string[148];
            headerInfo[0] = "Time";

            for (int i = 0; i < 28; i++)
            {
                importFiles.Add(new ExportFileMetaData(string.Format("{0}{1}\\Sensor {2}.csv", TempFolder(), exportFolderUID, i)));
                importFiles.Add(new ExportFileMetaData(string.Format("{0}{1}\\Sensor Deviation {2}.csv", TempFolder(), exportFolderUID, i)));

                headerInfo[1 + i * 2] = string.Format("Sensor {0}.{1}", (i / 2) + 1, (i % 2) + 1);
                headerInfo[2 + i * 2] = string.Format("Sensor Deviation {0}.{1}", (i / 2) + 1, (i % 2) + 1);
            }

            for (int i = 0; i < 14; i++)
            {
                importFiles.Add(new ExportFileMetaData(string.Format("{0}{1}\\Cylinder {2}.csv", TempFolder(), exportFolderUID, i)));
                importFiles.Add(new ExportFileMetaData(string.Format("{0}{1}\\Cylinder Deviation {2}.csv", TempFolder(), exportFolderUID, i)));

                headerInfo[57 + i * 2] = string.Format("Cylinder {0}", i + 1);
                headerInfo[58 + i * 2] = string.Format("Cylinder Deviation {0}", i + 1);
            }

            importFiles.Add(new ExportFileMetaData(string.Format("{0}{1}\\SLEM.csv", TempFolder(), exportFolderUID)));
            importFiles.Add(new ExportFileMetaData(string.Format("{0}{1}\\WIO Activity.csv", TempFolder(), exportFolderUID)));
            importFiles.Add(new ExportFileMetaData(string.Format("{0}{1}\\WIO PPM.csv", TempFolder(), exportFolderUID)));
            importFiles.Add(new ExportFileMetaData(string.Format("{0}{1}\\WIO Temp.csv", TempFolder(), exportFolderUID)));
            importFiles.Add(new ExportFileMetaData(string.Format("{0}{1}\\RPM.csv", TempFolder(), exportFolderUID)));
            importFiles.Add(new ExportFileMetaData(string.Format("{0}{1}\\CPP mA.csv", TempFolder(), exportFolderUID)));
            importFiles.Add(new ExportFileMetaData(string.Format("{0}{1}\\CPP percent.csv", TempFolder(), exportFolderUID)));

            headerInfo[84] = "SLEM";
            headerInfo[85] = "WIO Activity";
            headerInfo[86] = "WIO PPM";
            headerInfo[87] = "WIO Temp";
            headerInfo[88] = "RPM";
            headerInfo[89] = "CPP mA";
            headerInfo[90] = "CPP percent";
            for (int i = 0; i < 56; i++)
            {
                importFiles.Add(new ExportFileMetaData(string.Format("{0}{1}\\Temperature {2}.csv", TempFolder(), exportFolderUID, i)));

                headerInfo[91 + i] = string.Format("Temperature {0}", i + 1);                
            }

            // Now go through and construct the row information based on what is in the files.
            bool finishedReading = false;
            string[] earliestMeta = new string[148];

            using (File.Open(this.downloadOperation.FilePath, FileMode.Create))
            {
            }

            using (StreamWriter writer = new StreamWriter(this.downloadOperation.FilePath, true))
            {
                // Write header information
                writer.Write("\"TIME\"");
                for (int i = 1; i < 148; i++)
                {
                    writer.Write(",\"" + headerInfo[i] + "\"");
                }
                writer.WriteLine();

                while (!finishedReading)
                {
                    // Calc current earliest time
                    DateTime earliestTime = DateTime.MaxValue;

                    finishedReading = true;
                    foreach (ExportFileMetaData meta in importFiles)
                    {
                        if (!meta.EndOfStream)
                        {
                            finishedReading = false;
                        }
                        else
                        {
                            // File has already been fully read, skip it.
                            continue;
                        }

                        if (meta.Time.CompareTo(earliestTime) == -1)
                        {
                            // Earlier
                            earliestTime = meta.Time;

                            // Restart the row information for this time.
                            earliestMeta = new string[148];

                            // Add this info
                            for (int i = 0; i < 148; i++)
                            {
                                if (meta.HeaderName == headerInfo[i])
                                {
                                    earliestMeta[i] = meta.Value;
                                    break;
                                }
                            }

                        }
                        else if (meta.Time.CompareTo(earliestTime) == 0 && earliestTime != DateTime.MaxValue)
                        {
                            // Equal to the current earliest time (but not the initial max time), add this info.
                            for (int i = 0; i < 148; i++)
                            {
                                if (meta.HeaderName == headerInfo[i])
                                {
                                    earliestMeta[i] = meta.Value;
                                    break;
                                }
                            }
                        }
                    }

                    if (earliestTime != DateTime.MaxValue)
                    {
                        // Update the progress bar based on how far along outputing is.
                        this.downloadOperation.Progress.PercentageProgress = (int)(50 + (50.0 / endDate.Subtract(spanStartDate).TotalSeconds) * earliestTime.Subtract(spanStartDate).TotalSeconds);

                        writer.Write(earliestTime);

                        // Write out the row information
                        for (int i = 1; i < 148; i++)
                        {
                            if (string.IsNullOrEmpty(earliestMeta[i]))
                            {
                                // Write out -
                                writer.Write(",-");
                            }
                            else
                            {
                                writer.Write(",{0}", earliestMeta[i]);
                            }
                        }
                        writer.WriteLine();

                        // Progress through the files of those that are currently the earliest
                        foreach (ExportFileMetaData meta in importFiles)
                        {
                            if (meta.Time.CompareTo(earliestTime) == 0 && earliestTime != DateTime.MaxValue)
                            {
                                meta.ReadNextLine();
                            }
                        }
                    }
                }
            }

            // Delete the intermediatte export folder
            if (Directory.Exists(Path.Combine(TempFolder(), exportFolderUID + "\\")))
            {
                Directory.Delete(Path.Combine(TempFolder(), exportFolderUID + "\\"), true);
            }
        }

        private List<TrendPoints> ProcessRowTrendInformation(DataTable table, string sessionId, bool export, TableToQuery query)
        {
            TrendPoints trend = null;

            List<TrendPoints> exportTrendPoints = new List<TrendPoints>();

            foreach (DataRow row in table.Rows)
            {
                if (row.ItemArray[0] is System.DBNull)
                {
                    continue;
                }


                trend = CalculateRowTrendInformation(query, row);

                if (trend != null)
                {
                    if (export)
                    {
                        exportTrendPoints.Add(trend);
                    }
                    else
                    {
                        lock (completedQueries)
                        {
                            completedQueries.Add(trend);
                        }
                    }
                }
            }

            // If the trend data is not being exported, an empty list will be returned.
            return exportTrendPoints;
        }

        private TrendPoints CalculateRowTrendInformation(TableToQuery query, DataRow row)
        {
            TrendPoints trend = new TrendPoints((Int64)row.ItemArray[0], this.averaged);

            if (query.Table == "senValComp")
            {
                CreateTrendPoints(Sensor, trend.sensorPoints, averaged, 1, row);
            }

            if (query.Table == "senDevComp")
            {
                CreateTrendPoints(SensorDeviation, trend.sensorDevPoints, averaged, 1, row);
            }

            if (query.Table == "CylAveComp")
            {
                CreateTrendPoints(Cylinder, trend.cylinderPoints, averaged, 1, row);
            }

            if (query.Table == "CylDevComp")
            {
                CreateTrendPoints(CylinderDeviation, trend.cylinderDevPoints, averaged, 1, row);
            }

            if (query.Table == "temperature")
            {
                CreateTrendPoints(Temperature, trend.temperaturePoints, averaged, 1, row);
            }

            if (query.Table == "SLEM")
            {
                trend.slemPoint = CreateTrendPoint(averaged, 1, row);
            }

            if (query.Table == "rpm")
            {
                trend.rpmPoint = CreateTrendPoint(averaged, 1, row);
            }

            if (query.Table == "WaterInOil" && query.Columns[1] == "wateractivity")
            {
                trend.wioActivityPoint = CalculateWIOTrendPoint(averaged, 1, row);
            }

            if (query.Table == "WaterInOil" && query.Columns[1] == "ppm")
            {
                trend.wioPPMPoint = CreateTrendPoint(averaged, 1, row);
            }

            if (query.Table == "WaterInOil" && query.Columns[1] == "temp")
            {
                trend.wioTempPoint = CreateTrendPoint(averaged, 1, row);
            }

            if (query.Table == "cpp" && query.Columns[1] == "mA")
            {
                trend.cppmAPoint = CalculateWIOTrendPoint(averaged, 1, row);
            }
            if (query.Table == "cpp" && query.Columns[1] == "percent")
            {
                trend.cppPercentPoint = CalculateWIOTrendPoint(averaged, 1, row);
            }
            return trend;
        }

        /// <summary>
        /// Gets an array of all the TrendPoints that have been processed
        /// </summary>
        /// <returns>An array of processed points</returns>
        public EngineTrendResult ProcessedTrends()
        {
            EngineTrendResult result = new EngineTrendResult(DatabaseSDK.ConvertToUnixTimestamp(spanStartDate.Ticks), DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks), timestampOfMostRecentRecord, averaged);

            lock (completedQueries)
            {
                result.TrendData = new List<TrendPoints>();

                // Take up to 100 rows ~ 200kb of data to stop chunking failure
                int takeCount = Math.Min(100, completedQueries.Count);

                result.TrendData.AddRange(completedQueries.Take(takeCount));
                completedQueries.RemoveRange(0, takeCount);

                if (AllRecordsRead && completedQueries.Count <= 0)
                {
                    result.LastRecords = true;
                }
                else
                {
                    result.LastRecords = false;
                }
            }

            return result;
        }


        public bool ExportComplete
        {
            get
            {
                if (this.downloadOperation.Progress.Complete)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

        public int ExportProgress
        {
            get
            {
                return this.downloadOperation.Progress.PercentageProgress;
            }
        }

        public string ExportURL
        {
            get
            {
                return this.downloadOperation.DownloadURL;
            }
        }

        private void WriteEngineTrendDataCallback(List<TrendPoints> trendPoints)
        {
            // Pipe the output via the intermediate path to be constructed later

            // Construct the file name based on the TempFolder
            foreach (TrendPoints points in trendPoints)
            {
                DateTime pointDate = DatabaseSDK.ConvertFromUnixTimeStamp(points.Date);

                WritePoints("Sensor {0}", points.sensorPoints, pointDate);
                WritePoints("Sensor Deviation {0}", points.sensorDevPoints, pointDate);
                WritePoints("Cylinder {0}", points.cylinderPoints, pointDate);
                WritePoints("Cylinder Deviation {0}", points.cylinderDevPoints, pointDate);
                WritePoints("Temperature {0}", points.temperaturePoints, pointDate);
                WritePoint("SLEM", points.slemPoint, pointDate);
                WritePoint("WIO Activity", points.wioActivityPoint, pointDate);
                WritePoint("WIO PPM", points.wioPPMPoint, pointDate);
                WritePoint("WIO Temp", points.wioTempPoint, pointDate);
                WritePoint("RPM", points.rpmPoint, pointDate);
                WritePoint("CPP mA", points.cppmAPoint, pointDate);
                WritePoint("CPP percent", points.cppPercentPoint, pointDate);
            }
        }

        private void WritePoints(string name, TrendPoint[] points, DateTime exportTime)
        {
            // This is causing the slowdown when exporting cyclinder info
            foreach (TrendPoint point in points)
            {
                if (point != null)
                {
                    WritePoint(string.Format(name, point.Id), point, exportTime);
                }
            }
        }

        private void WritePoint(string name, TrendPoint tp, DateTime exportTime)
        {
            if (tp != null)
            {
                // Work out the file name
                string tempExportFilePath = string.Format("{0}{1}\\{2}.csv", TempFolder(), exportFolderUID, name);

                if (!exportStreams.ContainsKey(tempExportFilePath))
                {
                    exportStreams.Add(tempExportFilePath, new StreamWriter(tempExportFilePath, true));
                }
                StreamWriter writer = exportStreams[tempExportFilePath];

                writer.Write(exportTime.ToString("dd/MM/yyyy HH:mm:ss"));
                writer.Write("," + tp.Actual.ToString());
                writer.WriteLine();
            }
        }

        /// <summary>
        /// Calculates the WIO percentage based upon the SPU wio configuration read
        /// form the SPU during the get engine live data poll.
        /// </summary>
        private TrendPoint CalculateWIOTrendPoint(bool averaged, int columnStart, DataRow row)
        {
            TrendPoint point;

            if (averaged)
            {
                int offset = 1 + ((columnStart + 0 - 1) * 3);

                point = new TrendPoint(
                    0,
                    CalculateWioPercent((Int64)row.ItemArray[offset]),
                    CalculateWioPercent((Int64)row.ItemArray[offset + 1]),
                    CalculateWioPercent((Int64)row.ItemArray[offset + 2]));
            }
            else
            {
                point = new TrendPoint(0, CalculateWioPercent((Int64)row.ItemArray[columnStart]));
            }

            return point;
        }

        /// <summary>
        /// Calculates the WIO percent from the WIO Activity stored in the database
        /// </summary>
        /// <param name="valueFromDatabase">The WIO activity value read from the database</param>
        /// <returns>The WIO percent</returns>
        private short CalculateWioPercent(Int64 valueFromDatabase)
        {
            //WIO is enabled
            short value = -32761;

            if (valueFromDatabase > -32000)
            {
                value = (short)(valueFromDatabase / 100);
            }
            else
            {
                value = (short)valueFromDatabase;
            }

            return value;
        }

        /// <summary>
        /// Creates a TrendPoint for a single item
        /// </summary>
        /// <param name="averaged">Should the TrendPoint be averaged</param>
        /// <param name="columnStart">The column that the data should be read from for the point</param>
        /// <param name="row">The row from the database to read the data from</param>
        /// <returns>A TrendPoint that holds the point read from the database</returns>
        private TrendPoint CreateTrendPoint(bool averaged, int columnStart, DataRow row)
        {
            return CreatePoint(0, 0, averaged, columnStart, row);
        }

        /// <summary>
        /// Creates an array of TrendPoints
        /// </summary>
        /// <param name="itemsToCollect">The items to create TrendPoints for</param>
        /// <param name="averaged">Should the TrendPoints be averaged</param>
        /// <param name="columnStart">The column that the data should be read from for the point</param>
        /// <param name="row">The row from the database to read the data from</param>
        /// <returns>An array of TrendPoints that hold the data.</returns>
        private TrendPoint[] CreateTrendPoints(int[] itemsToCollect, TrendPoint[] points, bool averaged, int columnStart, DataRow row)
        {
            for (int i = 0; i < itemsToCollect.Length; i++)
            {
                int id = itemsToCollect[i];

                points[id] = CreatePoint(id, i, averaged, columnStart, row);
            }

            return points;
        }

        private TrendPoint CreatePoint(int id, int index, bool averaged, int columnStart, DataRow row)
        {
            TrendPoint point = null;

            if (averaged)
            {
                int offset = 1 + ((columnStart + index - 1) * 3);

                if (!(row.ItemArray[offset + 0] is System.DBNull))
                {
                    point = new TrendPoint(
                        id,
                        (short)(long)row.ItemArray[offset + 0],
                        (short)(long)row.ItemArray[offset + 1],
                        (short)(long)row.ItemArray[offset + 2]);
                }
            }
            else
            {
                if (!(row.ItemArray[columnStart + index] is System.DBNull))
                {
                    point = new TrendPoint(id, (short)(Int64)row.ItemArray[columnStart + index]);
                }
            }

            return point;
        }

        /// <summary>
        /// Converts a cylinder number to a database column name
        /// </summary>
        /// <param name="prefix">The prefix part of the database column name.</param>
        /// <param name="Cylinders">The cylinder number</param>
        /// <returns>A correctly formatted database column name</returns>
        private string[] CylinderIdToDBColumn(string prefix, int[] cylinders)
        {
            string[] cylinder = new string[cylinders.Length];
            for (int i = 0; i < cylinder.Length; i++)
            {
                cylinder[i] = string.Format("{0}{1}", prefix, cylinders[i] + 1);
            }
            return cylinder;
        }

        /// <summary>
        /// Converts a sensor number of a database column name
        /// </summary>
        /// <param name="prefix">The prefix part of the database column name.</param>
        /// <param name="Sensor">The sensor number</param>
        /// <returns>A correctly formatted database column name</returns>
        private string[] SensorIdToDBColumn(string prefix, int[] Sensor)
        {
            string[] sensors = new string[Sensor.Length];
            for (int i = 0; i < sensors.Length; i++)
            {
                sensors[i] = string.Format("{0}{1}{2}", prefix, (Sensor[i] / 2) + 1, (Sensor[i] % 2 == 0) ? "a" : "b");
            }
            return sensors;
        }

        /// <summary>
        /// Converts the parameters from the URL into a
        /// format that can be used for querying the database
        /// <param name="end">The date of the most recent trend point to retrieve as a uix time stamp.</param>
        /// <param name="span">The number of minutes worth of data to retreive</param>
        /// <param name="Sensor">A list of the sensors to retrieve</param>
        /// <param name="SensorDeviation">A list of the sensor deviations to retreive</param>
        /// <param name="Cylinder">A list of cylinders to retreive</param>
        /// <param name="CylinderDeviation">A list of cylinder deviations to retreive</param>
        /// <param name="SLEM">A Flag indicating if SLEM should be retrieved</param>
        /// <param name="WIOActivity">A Flag indicating if WIOACtiviyt should be retrieved</param>
        /// <param name="WIOPPM">A Flag indicating if WIOPPM should be retrieved</param>
        /// <param name="WIOTemp">A Flag indicating if WIOTemp shoould be retrieved</param>
        /// <param name="RPM">A Flag indicating if RPM should be retrieved</param>
        /// <param name="alwaysHighResolution">A Flag indicating if data should be avergaed or not</param>
        /// </summary>
        private void ConvertURLToQuery(string end, string span, string Sensor, string SensorDeviation, string Cylinder,
                                       string CylinderDeviation, string Temperature, string SLEM, string WIOActivity, string WIOPPM, string WIOTemp, string RPM,
                                       string CppmA, string CppPercent, string HighRes, string TotalTimeSpan)
        {

            int spanSeconds;
            int totalTimeSpanSeconds;

            this.SLEM = (SLEM == null ? false : Boolean.Parse(SLEM));
            this.WIOActivity = (WIOActivity == null ? false : Boolean.Parse(WIOActivity));
            this.WIOPPM = (WIOPPM == null ? false : Boolean.Parse(WIOPPM));
            this.WIOTemp = (WIOTemp == null ? false : Boolean.Parse(WIOTemp));
            this.RPM = (RPM == null ? false : Boolean.Parse(RPM));
            this.CppmA = (CppmA == null ? false : Boolean.Parse(CppmA));
            this.CppPercent = (CppPercent == null ? false : Boolean.Parse(CppPercent));
            this.highRes = (HighRes == null ? false : Boolean.Parse(HighRes));
            this.Sensor = CommaSeperatedListToIntArray(Sensor);
            this.SensorDeviation = CommaSeperatedListToIntArray(SensorDeviation);
            this.Cylinder = CommaSeperatedListToIntArray(Cylinder);
            this.CylinderDeviation = CommaSeperatedListToIntArray(CylinderDeviation);
            this.Temperature = CommaSeperatedListToIntArray(Temperature);

            spanSeconds = Int32.Parse(span);
            //Fix the number of span seconds to one year
            if (spanSeconds > SecondsInAYear)
            {
                spanSeconds = SecondsInAYear;
            }

            //Check the total time span
            if (TotalTimeSpan != null && TotalTimeSpan != string.Empty)
            {
                totalTimeSpanSeconds = Int32.Parse(TotalTimeSpan);
            }
            else
            {
                //No total time span set
                //Use the spanSeconds as the total time span
                totalTimeSpanSeconds = spanSeconds;
            }

            //Fix the total number of span seconds to one year
            if (totalTimeSpanSeconds > SecondsInAYear)
            {
                totalTimeSpanSeconds = SecondsInAYear;
            }

            if (totalTimeSpanSeconds <= (120 * 60) || highRes)
            {
                averaged = false;
            }
            else
            {
                averaged = true;
            }

            if (this.Sensor != null)
            {
                this.tablesToQuery.Add(new TableToQuery("senValComp", SensorIdToDBColumn("comp", this.Sensor), averaged));
            }

            if (this.SensorDeviation != null)
            {
                this.tablesToQuery.Add(new TableToQuery("senDevComp", SensorIdToDBColumn("dev", this.SensorDeviation), averaged));
            }
            if (this.Cylinder != null)
            {
                this.tablesToQuery.Add(new TableToQuery("CylAveComp", CylinderIdToDBColumn("cylav", this.Cylinder), averaged));
            }
            if (this.CylinderDeviation != null)
            {
                this.tablesToQuery.Add(new TableToQuery("CylDevComp", CylinderIdToDBColumn("cyldev", this.CylinderDeviation), averaged));
            }
            if (this.Temperature != null)
            {
                this.tablesToQuery.Add(new TableToQuery("temperature", CylinderIdToDBColumn("temp", this.Temperature), averaged));
            }
            if (this.SLEM)
            {
                this.tablesToQuery.Add(new TableToQuery("SLEM", "slemmv", averaged));
            }
            if (this.RPM)
            {
                this.tablesToQuery.Add(new TableToQuery("rpm", "rpm1", averaged));
            }
            if (this.WIOActivity)
            {
                this.tablesToQuery.Add(new TableToQuery("WaterInOil", "wateractivity", averaged));
            }
            if (this.WIOPPM)
            {
                this.tablesToQuery.Add(new TableToQuery("WaterInOil", "ppm", averaged));
            }

            if (this.WIOTemp)
            {
                this.tablesToQuery.Add(new TableToQuery("WaterInOil", "temp", averaged));
            }
            if (this.CppmA)
            {
                this.tablesToQuery.Add(new TableToQuery("cpp", "mA", averaged));
            }
            if (this.CppPercent)
            {
                this.tablesToQuery.Add(new TableToQuery("cpp", "percent", averaged));
            }

            endDate = ConvertURLTimeToDateTime(end);

            string rangeSQL = "MAX(time_stamp) FROM trendsView;";
            using (DataTable rangeDT = dataCollectionDatabase.SelectIntoDataTable(rangeSQL))
            {
                timestampOfMostRecentRecord = (int)(long)rangeDT.Rows[0].ItemArray[0];
            }

            //Check if this is a realtime query
            if (endDate.Date == DateTime.MaxValue.Date)
            {
                //Realtime query so set the end date to that of the most
                //recent database record.
                endDate = DatabaseSDK.ConvertFromUnixTimeStamp(timestampOfMostRecentRecord);
            }

            spanStartDate = endDate.Subtract(new TimeSpan(0, 0, spanSeconds));

            //Calculate the number of minutes that the data should be averaged by for the span provided
            double min = Math.Ceiling((double)(TimeSpan.FromSeconds(totalTimeSpanSeconds).TotalMinutes / 720));

            if (!this.averaged)
            {
                spanToUseForQuery = TimeSpan.FromSeconds(10);
            }
            else
            {
                spanToUseForQuery = TimeSpan.FromMinutes(min);
            }
        }

        private int[] CommaSeperatedListToIntArray(string csv)
        {
            if (csv == null || csv.Length == 0)
                return null;

            string[] cvsData = csv.Split(',');
            int[] data = new int[cvsData.Length];

            for (int i = 0; i < cvsData.Length; i++)
            {
                data[i] = Int32.Parse(cvsData[i]);
            }

            return data;
        }

        private void CreateTempExportFile(string name, string columnTitle)
        {
            // Check if the export folder in the temporary folder exists
            if (!Directory.Exists(Path.Combine(TempFolder(), exportFolderUID + "\\")))
            {
                Directory.CreateDirectory(Path.Combine(TempFolder(), exportFolderUID + "\\"));
            }

            string tempExportFilePath = string.Format("{0}{1}\\{2}.csv", TempFolder(), exportFolderUID, name);

            // Only the Time and single column title is required.
            using (StreamWriter writer = new StreamWriter(tempExportFilePath, false))
            {
                writer.Write("\"Time\"");
                writer.Write(",\"" + columnTitle + "\"");
                writer.WriteLine();
            }
        }

        public static DateTime ConvertURLTimeToDateTime(String end)
        {
            return new DateTime(
                Int32.Parse(end.Substring(0, 4)),
                Int32.Parse(end.Substring(4, 2)),
                Int32.Parse(end.Substring(6, 2)),
                Int32.Parse(end.Substring(8, 2)),
                Int32.Parse(end.Substring(10, 2)),
                Int32.Parse(end.Substring(12, 2)));
        }

        public static String ConvertDateTimeToURLTime(DateTime date)
        {
            return String.Format("{0:D4}{1:D2}{2:D2}{3:D2}{4:D2}{5:D2}",
                date.Year, date.Month, date.Day, date.Hour, date.Minute, date.Second);
        }

        public void Dispose()
        {
            //this.command.Dispose();
        }

        /// <summary>
        /// Gets the temp folder used by the query
        /// </summary>
        /// <returns>The temp folder used by the query</returns>
        static public string TempFolder()
        {
            ModuleConfiguration configuration = ModuleConfiguration.GetApplicationConfiguration();
            DataCollectionConfigurationSection dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;

            if (!Directory.Exists(dataCollectionConfig.Database.TempFolder))
            {
                Directory.CreateDirectory(dataCollectionConfig.Database.TempFolder);
            }

            return dataCollectionConfig.Database.TempFolder + @"\";
        }
    }

    internal class ExportFileMetaData
    {
        private StreamReader exportStream;


        public ExportFileMetaData(string fileName)
        {
            exportStream = File.OpenText(fileName);

            string headerInformation = exportStream.ReadLine();
            HeaderName = headerInformation.Split(',')[1].Replace("\"", "");

            this.Time = DateTime.MaxValue;
            this.Value = string.Empty;
            this.EndOfStream = false;

            this.ReadNextLine();
        }

        /// <summary>
        /// Gets the value indicating the name of the column the data is associated to
        /// </summary>
        public string HeaderName { get; private set; }

        public DateTime Time { get; private set; }

        public string Value { get; private set; }

        public bool EndOfStream { get; private set; }

        public void ReadNextLine()
        {
            if (!exportStream.EndOfStream)
            {
                string lineFeed = exportStream.ReadLine();
                string[] lineData = lineFeed.Split(',');

                if (lineData.Length == 2)
                {
                    this.Time = DateTime.ParseExact(lineData[0], "dd/MM/yyyy HH:mm:ss", CultureInfo.InvariantCulture);
                    this.Value = lineData[1];
                }
                else
                {
                    // Error parsing the file

                    this.Time = DateTime.MaxValue;
                    this.Value = string.Empty;
                    this.EndOfStream = true;
                    exportStream.Close();
                }
            }
            else
            {
                this.Time = DateTime.MaxValue;
                this.Value = string.Empty;
            }

            if (exportStream.EndOfStream)
            {
                this.EndOfStream = true;
                exportStream.Close();
            }
        }
    }

    /// <summary>
    /// This class holds information about which columns
    /// should be queried from the database for a table.
    /// </summary>
    internal class TableToQuery
    {
        public TableToQuery(string tableName, string column, bool averaged)
            : this(tableName, new string[] { column }, averaged)
        { }

        public TableToQuery(string tableName, string[] columns, bool averaged)
        {
            this.Table = tableName;
            this.Columns = new List<string>();
            this.Columns.Add("time_stamp");
            this.Columns.AddRange(columns);
            this.Averaged = averaged;
        }

        public DbCommand CreateQueryCommand(DatabaseSDK database)
        {
            StringBuilder columnsQuery = new StringBuilder();

            if (!this.Averaged)
            {
                foreach (string columnName in this.Columns)
                {
                    if (columnsQuery.Length > 0)
                    {
                        columnsQuery.AppendFormat(",{0}", columnName);
                    }
                    else
                    {
                        columnsQuery.AppendFormat("{0}", columnName);
                    }
                }
            }
            else
            {
                foreach (string columnName in this.Columns)
                {
                    if (columnName == this.Columns[0])
                    {
                        columnsQuery.Append("time_stamp");
                        continue;
                    }

                    columnsQuery.AppendFormat(",AMOTAvg({0})", columnName);
                    columnsQuery.AppendFormat(",MIN({0})", columnName);
                    columnsQuery.AppendFormat(",MAX({0})", columnName);
                }
            }

            return database.CreateCommand(string.Format("select {0} from {1} where time_stamp BETWEEN @startdate AND @enddate;", columnsQuery, this.Table));
        }

        /// <summary>
        /// The Table that this query refers too.
        /// </summary>
        public string Table
        { get; set; }

        /// <summary>
        /// The Columns that ths query will return
        /// </summary>
        public List<string> Columns
        { get; set; }

        /// <summary>
        /// Gets or sets the flag indicating that
        /// the is query should average the data or not
        /// </summary>
        public bool Averaged
        { get; set; }
    }
}
