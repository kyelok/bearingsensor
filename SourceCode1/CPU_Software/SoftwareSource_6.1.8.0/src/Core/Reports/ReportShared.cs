using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DataCollectionSDK;
using System.Data.Common;

namespace Reports
{
    /// <summary>
    /// This class holds methods and constants that are shared between the AMOT and GL
    /// report.
    /// </summary>
    public class ReportShared
    {
        static public string[] ChannelNames = 
        {   "comp1a",   "comp1b",   "comp2a",   "comp2b",   "comp3a",   "comp3b", 
            "comp4a",   "comp4b",   "comp5a",   "comp5b",   "comp6a",   "comp6b",
            "comp7a",   "comp7b",   "comp8a",   "comp8b",   "comp9a",   "comp9b", 
            "comp10a",  "comp10b",  "comp11a",  "comp11b",  "comp12a",  "comp12b",
            "comp13a",  "comp13b",  "comp14a",  "comp14b"
        };

        static public string[] ChannelNamesXML = 
        {
            "1.1",  "1.2",  "2.1",  "2.2", 
            "3.1",  "3.2",  "4.1",  "4.2", 
            "5.1",  "5.2",  "6.1",  "6.2", 
            "7.1",  "7.2",  "8.1",  "8.2", 
            "9.1",  "9.2",  "10.1", "10.2", 
            "11.1", "11.2", "12.1", "12.2", 
            "13.1", "13.2", "14.1", "14.2" 
        };

        static public string[] CylinderNamesXML = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14" };

        static public string[] ChannelNamesAMOT = 
        {
            "1A", "1B", "2A", "2B", "3A", "3B", 
            "4A", "4B", "5A", "5B", "6A", "6B", 
            "7A", "7B", "8A", "8B", "9A", "9B", 
            "10A", "10B", "11A", "11B", "12A", 
            "12B", "13A", "13B", "14A", "14B" 
        };

        static public string[] SenValCompChannelNames6hr = {                                              
            "comp1a",
            "comp1amin",
            "comp1amax",
		    "comp1b",
            "comp1bmin",
            "comp1bmax",
		    "comp2a",
            "comp2amin",
            "comp2amax",
		    "comp2b",
            "comp2bmin",
            "comp2bmax",
		    "comp3a",
            "comp3amin",
            "comp3amax",
		    "comp3b",
            "comp3bmin",
            "comp3bmax",
		    "comp4a",
            "comp4amin",
            "comp4amax",
		    "comp4b",
            "comp4bmin",
            "comp4bmax",
		    "comp5a",
            "comp5amin",
            "comp5amax",
		    "comp5b",
            "comp5bmin",
            "comp5bmax",
		    "comp6a",
            "comp6amin",
            "comp6amax",
		    "comp6b",
            "comp6bmin",
            "comp6bmax",
		    "comp7a",
            "comp7amin",
            "comp7amax",
		    "comp7b",
            "comp7bmin",
            "comp7bmax",
		    "comp8a",
            "comp8amin",
            "comp8amax",
		    "comp8b",
            "comp8bmin",
            "comp8bmax",
		    "comp9a",
            "comp9amin",
            "comp9amax",
		    "comp9b",
            "comp9bmin",
            "comp9bmax",
		    "comp10a",
            "comp10amin",
            "comp10amax",
		    "comp10b",
            "comp10bmin",
            "comp10bmax",
		    "comp11a",
            "comp11amin",
            "comp11amax",
		    "comp11b",
            "comp11bmin",
            "comp11bmax",
		    "comp12a",
            "comp12amin",
            "comp12amax",
		    "comp12b",
            "comp12bmin",
            "comp12bmax",
		    "comp13a",
            "comp13amin",
            "comp13amax",
		    "comp13b",
            "comp13bmin",
            "comp13bmax",
		    "comp14a",
            "comp14amin",
            "comp14amax",
		    "comp14b",
            "comp14bmin",
            "comp14bmax"
	    };

        static public string[] SenDevCompChannelNames6hr = {
		    "dev1a",
            "dev1amin",
            "dev1amax",
		    "dev1b",
            "dev1bmin",
            "dev1bmax",
		    "dev2a",
            "dev2amin",
            "dev2amax",
		    "dev2b",
            "dev2bmin",
            "dev2bmax",
		    "dev3a",
            "dev3amin",
            "dev3amax",
		    "dev3b",
            "dev3bmin",
            "dev3bmax",
		    "dev4a",
            "dev4amin",
            "dev4amax",
		    "dev4b",
            "dev4bmin",
            "dev4bmax",
		    "dev5a",
            "dev5amin",
            "dev5amax",
		    "dev5b",
            "dev5bmin",
            "dev5bmax",
		    "dev6a",
            "dev6amin",
            "dev6amax",
		    "dev6b",
            "dev6bmin",
            "dev6bmax",
		    "dev7a",
            "dev7amin",
            "dev7amax",
		    "dev7b",
            "dev7bmin",
            "dev7bmax",
		    "dev8a",
            "dev8amin",
            "dev8amax",
		    "dev8b",
            "dev8bmin",
            "dev8bmax",
		    "dev9a",
            "dev9amin",
            "dev9amax",
		    "dev9b",
            "dev9bmin",
            "dev9bmax",
		    "dev10a",
            "dev10amin",
            "dev10amax",
		    "dev10b",
            "dev10bmin",
            "dev10bmax",
		    "dev11a",
            "dev11amin",
            "dev11amax",
		    "dev11b",
            "dev11bmin",
            "dev11bmax",
		    "dev12a",
            "dev12amin",
            "dev12amax",
		    "dev12b",
            "dev12bmin",
            "dev12bmax",
		    "dev13a",
            "dev13amin",
            "dev13amax",
		    "dev13b",
            "dev13bmin",
            "dev13bmax",
		    "dev14a",
            "dev14amin",
            "dev14amax",
		    "dev14b",
            "dev14bmin",
            "dev14bmax"
	    };

        static public string[] CylAveCompChannelNames6hr = {
		    "cylav1",
            "cylav1min",
            "cylav1max",
		    "cylav2",
            "cylav2min",
            "cylav2max",
		    "cylav3",
            "cylav3min",
            "cylav3max",
		    "cylav4",
            "cylav4min",
            "cylav4max",
		    "cylav5",
            "cylav5min",
            "cylav5max",
		    "cylav6",
            "cylav6min",
            "cylav6max",
		    "cylav7",
            "cylav7min",
            "cylav7max",
		    "cylav8",
            "cylav8min",
            "cylav8max",
		    "cylav9",
            "cylav9min",
            "cylav9max",
		    "cylav10",
            "cylav10min",
            "cylav10max",
		    "cylav11",
            "cylav11min",
            "cylav11max",
		    "cylav12",
            "cylav12min",
            "cylav12max",
		    "cylav13",
            "cylav13min",
            "cylav13max",
		    "cylav14",
            "cylav14min",
            "cylav14max"
	    };

        static public string[] CylDevCompChannelNames6hr = {
		    "cyldev1",
            "cyldev1min",
            "cyldev1max",
		    "cyldev2",
            "cyldev2min",
            "cyldev2max",
		    "cyldev3",
            "cyldev3min",
            "cyldev3max",
		    "cyldev4",
            "cyldev4min",
            "cyldev4max",
		    "cyldev5",
            "cyldev5min",
            "cyldev5max",
		    "cyldev6",
            "cyldev6min",
            "cyldev6max",
		    "cyldev7",
            "cyldev7min",
            "cyldev7max",
		    "cyldev8",
            "cyldev8min",
            "cyldev8max",
		    "cyldev9",
            "cyldev9min",
            "cyldev9max",
		    "cyldev10",
            "cyldev10min",
            "cyldev10max",
		    "cyldev11",
            "cyldev11min",
            "cyldev11max",
		    "cyldev12",
            "cyldev12min",
            "cyldev12max",
		    "cyldev13",
            "cyldev13min",
            "cyldev13max",
		    "cyldev14",
            "cyldev14min",
            "cyldev14max"
	    };

        static public string[] Rpm6hr = {
		    "rpm1",
            "rpm1min",
            "rpm1max"
	    };

        static public string[] RunTime6hr = {
		    "runtime"
	    };

        static public string[] WaterInOil6hr = {
		    "wateractivity",
            "wateractivitymin",
            "wateractivitymax",
            "ppm",
            "ppmmin",
            "ppmmax"
	    };

        static public string[] SLEM6hr = {
		    "slemmv",
            "slemmvmin",
            "slemmvmax"
	    };

        static public Int64[] GetHoursRunForRange(DatabaseSDK database, DateTime startDate, DateTime endDate)
        {
            Int64[] returnArray = { -1, -1 };

            string strSql = null;
            Int64 min = -1;
            Int64 max = -1;

            // ********************** hours run for entire report period *********************
            // Get the hours run min and max for the time period
            strSql = "min(runtime) as runtimemin from runtime where runtime > 0 and time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startDate.Ticks) + " AND time_stamp " + "<= " + DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks) + ";";

            using (DataTable data = database.SelectIntoDataTable(strSql))
            {
                if (data.Rows.Count == 1)
                {
                    DataRow row = data.Rows[0];
                    if (!row.IsNull(0))
                    {
                        min = row.Field<Int64>(0);
                    }
                }
            }

            strSql = "max(runtime) as runtimemax from runtime where time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startDate.Ticks) + " AND time_stamp " + "<= " + DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks) + ";";

            using (DataTable data = database.SelectIntoDataTable(strSql))
            {
                if (data.Rows.Count == 1)
                {
                    DataRow row = data.Rows[0];
                    if (!row.IsNull(0))
                    {
                        max = row.Field<Int64>(0);
                    }
                }
            }

            returnArray[0] = (long)TimeSpan.FromMinutes(min).TotalHours;
            returnArray[1] = (long)TimeSpan.FromMinutes(max).TotalHours;

            return returnArray;

        }

        static public Int64 NumberOfUnknownStatusRecords(DatabaseSDK dataLogger, DateTime startDate, DateTime endDate, int cylinder)
        {
            Int64 countOfRecords = 0;

            string sqlQuery = "COUNT (*) FROM CylAveComp" + " WHERE time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startDate.Ticks) + " AND time_stamp <= " + DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks) + " " + "AND cylav" + (cylinder + 1) + " < -32000";

            using (DataTable data = dataLogger.SelectIntoDataTable(sqlQuery))
            {
                countOfRecords = data.Rows[0].Field<Int64>(0);
            }

            return countOfRecords;
        }

        static public Int64 NumberOfUnknownStatusRecordsFrom6hr(DatabaseSDK dataLogger, DateTime startDate, DateTime endDate, int cylinder)
        {
            Int64 countOfRecords = 0;

            string sqlQuery = "COUNT (*) FROM CylStatus6hr" + " WHERE time_stamp >= " + DatabaseSDK.ConvertToUnixTimestamp(startDate.Ticks) + " AND time_stamp <= " + DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks) + " " + "AND cylav" + (cylinder + 1) + " < -32000";

            using (DataTable data = dataLogger.SelectIntoDataTable(sqlQuery))
            {
                countOfRecords = data.Rows[0].Field<Int64>(0);
            }

            return countOfRecords;
        }

        static public Int64 NumberOfPreWarningStatusRecords(DatabaseSDK eventLog, DateTime startDate, DateTime endDate, string channelCriteria)
        {
            Int64 countOfRecords = 0;

            string sqlQuery = "COUNT (*) FROM eventlog WHERE eventdatetime >= " + DatabaseSDK.ConvertToUnixTimestamp(startDate.Ticks) + " AND eventdatetime <= " + DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks) + " " + channelCriteria + " AND datatype = 4";

            using (DataTable data = eventLog.SelectIntoDataTable(sqlQuery))
            {
                countOfRecords = data.Rows[0].Field<Int64>(0);
            }

            return countOfRecords;
        }

        static public Int64 NumberOfAlarmOrSlowDownStatusRecord(DatabaseSDK eventLog, DateTime startDate, DateTime endDate, string channelCriteria)
        {
            Int64 countOfRecords = 0;

            string sqlQuery = "COUNT (*) FROM eventlog WHERE eventdatetime >= " + DatabaseSDK.ConvertToUnixTimestamp(startDate.Ticks) + " AND eventdatetime <= " + DatabaseSDK.ConvertToUnixTimestamp(endDate.Ticks) + " " + channelCriteria + " AND (datatype = 1 OR datatype = 2)";

            using (DataTable data = eventLog.SelectIntoDataTable(sqlQuery))
            {
                countOfRecords = data.Rows[0].Field<Int64>(0);
            }

            return countOfRecords;
        }

        /// <summary>
        /// Reads the ShipInfo from the configruation database
        /// </summary>
        /// <returns></returns>
        static public ShipInfo GetShipInfo(DatabaseSDK configurationDatabase)
        {
            ShipInfo result = null;
            try
            {
                using (DataTable data = configurationDatabase.SelectIntoDataTable("* FROM shipinfo"))
                {
                    if (data.Rows.Count > 0)
                    {
                        DataRow row = data.Rows[0];
                        result = new ShipInfo((string)row["VesselName"], (string)row["ImoNo"], (string)row["ClassificationSociety"],
                            (string)row["ClassRegisterNo"], (string)row["Component"], (string)row["EngineLicenser"], (string)row["EngineMaker"], (string)row["EngineType"], (string)row["EngineSerialNumber"]);

                    }
                    else
                    {
                        result = new ShipInfo(
                            "Unknown", "Unknown", "Unknown",
                            "Unknown", "Unknown", "Unknown",
                            "Unknown", "Unknown", "Unknown");
                    }
                }
            }
            catch (DbException)
            {
                //We will get a DB exception if the table does not exist
                result = new ShipInfo(
                            "Unknown", "Unknown", "Unknown",
                            "Unknown", "Unknown", "Unknown",
                            "Unknown", "Unknown", "Unknown");
            }

            return result;
        }

    }

    /// <summary>
    /// This class holds the ship info read from the Configuration database
    /// </summary>
    public class ShipInfo
    {
        /// <summary>
        /// Creates a ShipInfo class
        /// </summary>
        /// <param name="vesselName">The name of the vessel</param>
        /// <param name="imoNo">The imo number</param>
        /// <param name="classificationSociety">The class society</param>
        /// <param name="classRegisterNo">The class registration number</param>
        /// <param name="component">The componenet</param>
        /// <param name="engineLicenser">The engine licesner</param>
        /// <param name="engineMaker">The engine maker</param>
        /// <param name="engineType">The engine type</param>
        /// <param name="engineSerialNumber">The engine serial number</param>
        public ShipInfo(string vesselName, string imoNo, string classificationSociety, string classRegisterNo,
                        string component, string engineLicenser, string engineMaker, string engineType, string engineSerialNumber)
        {
            VesselName = vesselName;
            ImoNo = imoNo;
            ClassificationSociety = classificationSociety;
            ClassRegisterNo = classRegisterNo;
            Component = component;
            EngineLicenser = engineLicenser;
            EngineMaker = engineMaker;
            EngineType = engineType;
            EngineSerialNumber = engineSerialNumber;

        }

        public string VesselName { get; set; }
        public string ImoNo { get; set; }
        public string ClassificationSociety { get; set; }
        public string ClassRegisterNo { get; set; }
        public string Component { get; set; }
        public string EngineLicenser { get; set; }
        public string EngineMaker { get; set; }
        public string EngineType { get; set; }
        public string EngineSerialNumber { get; set; }
    }
}
