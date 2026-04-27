using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WebServiceObjects
{
    /// <summary>
    /// The Sensor DC Mode Types
    /// </summary>
    public enum SensorDCMode : short
    {
        DCMode = 0,
        PulseMode,
        DCPeakHold
    };

    class UriPaths
    {
        /// <summary>
        /// Path to the user list
        /// </summary>
        public static readonly string ListUsersURL = "/users/list";

        /// <summary>
        /// Path to Group list with Permissions
        /// </summary>
        public static readonly string ListGroupsURL = "/users/groups"; 

        /// <summary>
        /// Path to the password reset
        /// </summary>
        public static readonly string ResetUsersURL = "/users/reset";

        /// <summary>
        /// Login a user
        /// </summary>
        public static readonly string Login = "/users/login";

        /// <summary>
        /// Path to the live non-server cahced engine data
        /// </summary>
        public static readonly string EngineLiveDataNCURL = "/engine/livenc";

        /// <summary>
        /// Path to the live engine data
        /// </summary>
        public static readonly string EngineLiveDataURL = "/engine/live";

        /// <summary>
        /// Path to the historic engine data
        /// </summary>
        public static readonly string EngineTrendDataURL = "/trend/data";

        /// <summary>
        /// Path to the historic engine data
        /// </summary>
        public static readonly string EngineTrendDataProcessedURL = "/trend/processed";

        /// <summary>
        /// The Path to the trend export progress service
        /// </summary>
        public static readonly string EngineTrendExportProgressURL = "/trend/export/progress";

        /// <summary>
        /// Path to clean up trend processing
        /// </summary>
        public static readonly string EngineTrendDataStopProcessingRL = "/trend/stop";

        /// <summary>
        /// Path to the historic engine data export
        /// </summary>
        public static readonly string EngineTrendDataExportURL = "/trend/export";

        /// <summary>
        /// Engine alarms
        /// </summary>
        public static readonly string EngineAlarmsURL = "/engine/alarms";

        /// <summary>
        /// Engine alarms acknowledge
        /// </summary>
        public static readonly string EngineAlarmsAckURL = EngineAlarmsURL + "/ack";

        /// <summary>
        /// Engine alarms ignore
        /// </summary>
        public static readonly string EngineAlarmsIgnoreURL = EngineAlarmsURL + "/ignore";

        /// <summary>
        /// Sensor setup information
        /// </summary>
        public static readonly string TrendConfigurationURL = "/engine/trendconfig";

        /// <summary>
        /// Gets a list of the trend configurations
        /// </summary>
        public static readonly string TrendConfigurationsURL = "/engine/trendconfigs";

        /// <summary>
        /// Temperature setting information for saving
        /// </summary>
        public static readonly string TemperatureConfigurationSetURL = "/temperatureconfig";

        /// <summary>
        /// Temperature setting information for getting
        /// </summary>
        public static readonly string TemperatureConfigurationGetURL = "/temperaturelive";

        /// <summary>
        /// Sensor setup information
        /// </summary>
        public static readonly string ReadSensorSetupURL = "/engine/sensor/setup";

        /// <summary>
        /// Set sensor mode
        /// </summary>
        public static readonly string SensorModeURL = "/engine/sensor/mode";

        /// <summary>
        /// Starts sensor peek calibration
        /// </summary>
        public static readonly String SensorStartCalibratePeekURL = "/engine/sensor/calibrate/peek/start";

        /// <summary>
        /// Monitors sensor peek calibration
        /// </summary>
        public static readonly String SensorMonitorCalibratePeekURL = "/engine/sensor/calibrate/peek/monitor";
        /// <summary>
        /// Start sensor calibration
        /// </summary>
        public static readonly string SensorCalibrationOrderURL = "/engine/sensor/calibrate/order";

        /// <summary>
        /// Reset the sensor peek
        /// </summary>
        public static readonly string SensorPeekResetURL = "/engine/sensor/reset/peek";

        /// <summary>
        /// Enables a sensor
        /// </summary>
        public static readonly string SensorEnableURL = "/engine/sensor/enable";

        /// <summary>
        /// Disable a sensor
        /// </summary>
        public static readonly string SensorDisableURL = "/engine/sensor/disable";

        /// <summary>
        /// Start the engine learning process
        /// </summary>
        public static readonly string StartEngineLearningURL = "/engine/learning/start";

        /// <summary>
        /// Stop the engine learning process
        /// </summary>
        public static readonly string StopEngineLearningURL = "/engine/learning/stop";

        /// <summary>
        /// Engine learning status
        /// </summary>
        public static readonly string EngineLearningURL = "/engine/learning";

        /// <summary>
        /// Enter a verification code
        /// </summary>
        public static readonly string EngineLearningVerificationURL = "/engine/learning/verification";

        /// <summary>
        /// Diagnostics information
        /// </summary>
        public static readonly string DiagnosticsURL = "/diagnostics";

        /// <summary>
        /// Event log URL
        /// </summary>
        public static readonly string EventLogURL = "/eventlog";

        /// <summary>
        /// Event log export URL
        /// </summary>
        public static readonly string EventLogExportURL = "/eventlog/export";

        /// <summary>
        /// temperature setting export URL
        /// </summary>
        public static readonly string TemperatureExportURL = "/temperature/export";

        /// <summary>
        /// Start surveyor mode
        /// </summary>
        public static readonly string StartSurveyorURL = "/engine/surveyor/start";

        /// <summary>
        /// Stop surveyor mode
        /// </summary>
        public static readonly string StopSurveyorURL = "/engine/surveyor/stop";

        /// <summary>
        /// Poll the surveyor functions
        /// </summary>
        public static readonly string SurveyorTestPeekURL = "/engine/surveyor/peek";

        /// <summary>
        /// Cancel a sensor replacement URL
        /// </summary>
        public static readonly string CancelSensorReplaceURL = "/engine/sensor/replace/{0}/cancel";

        /// <summary>
        /// Start a sensor replacement URL
        /// </summary>
        public static readonly string StartSensorReplaceURL = "/engine/sensor/replace/{0}";

        /// <summary>
        /// Start a sensor replacement URL
        /// </summary>
        public static readonly string StartSensorReplaceAverageURL = "/engine/sensor/replace/{0}/average";

        /// <summary>
        /// Get the state of sensor replacement URL
        /// </summary>
        public static readonly string GetSensorReplaceStateURL = "/engine/sensor/replace";

        /// <summary>
        /// Downloads the sensor replacement data for a sensor
        /// </summary>
        public static readonly string DownloadSensorReplacementData = "/engine/sensor/replacementdata/{0}";

        /// <summary>
        /// Downloads a report from the Web Service in a zip file
        /// </summary>
        public static readonly string DownloadReport = "/reports/download/{0}";

        /// <summary>
        /// Uploads the sensor replacement data for a sensor
        /// </summary>
        public static readonly string UploadSensorReplacementData = "/engine/sensor/replace/upload";

        /// <summary>
        /// Turn on alarm test mode
        /// </summary>
        public static readonly string AlarmTestModeOn = "/diagnostics/alarm/test/on";

        /// <summary>
        /// Turn off alarm test mode
        /// </summary>
        public static readonly string AlarmTestModeOff = "/diagnostics/alarm/test/off";

        /// <summary>
        /// Turns the SPU alarm identified by alarm_id on.
        /// </summary>
        public static readonly string AlarmOn = "/diagnostics/alarm/on";

        /// <summary>
        /// Turns the SPU alarm identified by alarm_id off.
        /// </summary>
        public static readonly string AlarmOff = "/diagnostics/alarm/off";

        /// <summary>
        /// Start a report
        /// </summary>
        public static readonly string StartReport = "/reports/start";

        /// <summary>
        /// Returns the progress of a running report
        /// </summary>
        public static readonly string ReportProgress = "/reports/progress";

        /// <summary>
        /// Returns completed reports. 
        /// </summary>
        public static readonly string ReportCompleted = "/reports/completed";

        /// <summary>
        /// Returns a list of available reports. 
        /// </summary>
        public static readonly string ReportAvailable = "/reports/available";

        /// <summary>
        /// Returns Date/Time of the last GL Report run 
        /// </summary>
        public static readonly string ReportGlReportDate = "/reports/glreportdate";

        /// <summary>
        /// Resets the comms stats stored on the Core
        /// </summary>
        public static readonly string ResetCommStats = "/diagnostics/comms/reset";

        /// <summary>
        /// Reads the speed comp file
        /// </summary>
        public static readonly string SpeedCompURL = "/engine/accumulatedvalues";

        /// <summary>
        /// Download the system status
        /// </summary>
        public static readonly string SystemExportURL = "/engine/learning/export?code={0}";

        /// <summary>
        /// Downloads the screen capture of the web page
        /// </summary>
        public static readonly string WebPageScreenCaptureURL = "/pagedump?file={0}&width={1}&height={2}";
    }
}
