using System.IO;
using System.ServiceModel;
using System.ServiceModel.Web;
using WebServiceObjects;

namespace TrendPlugin
{
    /// <summary>
    /// This interface defines the contract used to request Trend data from
    /// the Trend Web Service.
    /// </summary>
    [ServiceContract]
    public interface ITrendStreamer
    {
        /// <summary>
        /// Starts a Trend data query
        /// </summary>
        /// <param name="end">The date of the most recent trend point to retrieve as a uix time stamp.</param>
        /// <param name="span">The number of minutes worth of data to retreive. (This may be a sub portition of the total time span)</param>
        /// <param name="Sensor">A list of the sensors to retrieve</param>
        /// <param name="SensorDeviation">A list of the sensor deviations to retreive</param>
        /// <param name="Cylinder">A list of cylinders to retreive</param>
        /// <param name="CylinderDeviation">A list of cylinder deviations to retreive</param>
        /// <param name="SLEM">A Flag indicating if SLEM should be retrieved</param>
        /// <param name="WIOActivity">A Flag indicating if WIOACtiviyt should be retrieved</param>
        /// <param name="WIOPPM">A Flag indicating if WIOPPM should be retrieved</param>
        /// <param name="WIOTemp">A Flag indicating if WIOTemp shoould be retrieved</param>
        /// <param name="RPM">A Flag indicating if RPM should be retrieved</param>
        /// <param name="TotalTimeSpan">The number of minutes in the total span</param>
        /// <returns>The session id assigned to the query.  This session id can be used to request the results of the query</returns>
        [OperationContract]
        [WebGet(UriTemplate = "data/{end}/{span}?" +
           "Sensor={Sensor}&" +
           "SensorDeviation={SensorDeviation}&" +
           "Cylinder={Cylinder}&" +
           "CylinderDeviation={CylinderDeviation}&" +
           "Temperature={Temperature}&" +
           "SLEM={SLEM}&" +
           "WIOActivity={WIOActivity}&" +
           "WIOPPM={WIOPPM}&" +
           "WIOTemp={WIOTemp}&" +
           "RPM={RPM}&" +
           "CPPMA={CppmA}&" +
           "CPPPCNT={CppPercent}&" +
           "TotalTimeSpan={TotalTimeSpan}", ResponseFormat = WebMessageFormat.Json)]
        string StartTrend(string end, string span,
            string Sensor, string SensorDeviation, string Cylinder,
            string CylinderDeviation, string Temperature, string SLEM, string WIOActivity,
            string WIOPPM, string WIOTemp, string RPM, string CppmA, string CppPercent, string TotalTimeSpan);

        /// <summary>
        /// Returns the results of a trend query
        /// </summary>
        /// <param name="sessionId">The id of th equery session to get the results for.</param>
        /// <returns>The results of the query</returns>
        [OperationContract]
        [WebGet(UriTemplate = "processed/{sessionId}", ResponseFormat = WebMessageFormat.Json)]
        EngineTrendResult Processed(string sessionId);

        /// <summary>
        /// Stops a query and removes it from the sessison list
        /// </summary>
        /// <param name="sessionId">The id of the session to stop and remove</param>
        /// <returns>True if success, otherwise False</returns>
        [OperationContract]
        [WebInvoke(UriTemplate = "stop", ResponseFormat = WebMessageFormat.Json)]
        bool Stop(string sessionId);

        /// <summary>
        /// Exports Trend data
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
        /// <param name="HighRes">A flag indicating if the data should be exported in high or low resolution</param>
        /// <returns>A DownloadOperation object containing information about the export</returns>
        [OperationContract]
        [WebGet(UriTemplate = "export/{end}/{span}?" +
           "Sensor={Sensor}&" +
           "SensorDeviation={SensorDeviation}&" +
           "Cylinder={Cylinder}&" +
           "CylinderDeviation={CylinderDeviation}&" +
           "Temperature={Temperature}&" +
           "SLEM={SLEM}&" +
           "WIOActivity={WIOActivity}&" +
           "WIOPPM={WIOPPM}&" +
           "WIOTemp={WIOTemp}&" +
           "RPM={RPM}&" +
           "CPPMA={CppmA}&" +
           "CPPPCNT={CppPercent}&" +
           "High={HighRes}", ResponseFormat = WebMessageFormat.Json)]
        DownloadOperation ExportTrendData(string end, string span,
            string Sensor, string SensorDeviation, string Cylinder,
            string CylinderDeviation, string Temperature, string SLEM, string WIOActivity,
            string WIOPPM, string WIOTemp, string RPM, string CppmA, string CppPercent, string HighRes);


        /// <summary>
        /// Returns the progress of a trend export
        /// </summary>
        /// <param name="sessionId">The id of the export session to get the progress for.</param>
        /// <returns>The current progress</returns>
        [OperationContract]
        [WebGet(UriTemplate = "export/progress/{sessionId}", ResponseFormat = WebMessageFormat.Json)]
        DownloadOperation ExportProgress(string sessionId);

        /// <summary>
        /// Downloads a exported data file from the file system
        /// </summary>
        /// <param name="name">The name of the file to download</param>
        /// <returns>The Stream object that can be used to read the trend data from</returns>
        [OperationContract]
        [WebGet(UriTemplate = "download/{name}", ResponseFormat = WebMessageFormat.Json)]
        Stream ExportDataFile(string name);

    }
}
