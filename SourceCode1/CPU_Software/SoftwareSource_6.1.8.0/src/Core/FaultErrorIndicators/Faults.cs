using System;
using System.Collections.Generic;
using System.Threading;
using System.Globalization;
using System.Diagnostics.CodeAnalysis;

[module: SuppressMessage("Microsoft.Naming", "CA1704:IdentifiersShouldBeSpelledCorrectly", Scope = "member", Target = "FaultErrorIndicators.FaultCodes.#ModbusServerFailure", MessageId = "Modbus")]
namespace FaultErrorIndicators
{
    /// <summary>
    /// Enum that defines the Faults that can occur
    /// </summary>
    [SuppressMessage("Microsoft.Naming", "CA1717:OnlyFlagsEnumsShouldHavePluralNames")]
    public enum FaultCodes
    {
        /// <summary>
        /// The RTU interface failed to start.
        /// </summary>
        RTUStartFailure = 1,

        /// <summary>
        /// The serial port used by the RTU interface could not be opened.
        /// </summary>
        RTUSerialPortFailure,

        /// <summary>
        /// All comms to and from the RTU interface are failing.
        /// </summary>
        RTUNoRS485Comms,
//Add new faults to the end of the list
//The faults above this comment are special and are used
//to indicate to the GUI that there are no comms to the SPU
//It has code that checks if the error message is between 1 and 3
        /// <summary>
        /// The External Modbus RTU interface has failed to start.
        /// </summary>
        ExternalRTUFailure,

        /// <summary>
        /// The External Modbus TCP/IP interface has failed to start.
        /// </summary>
        ExternalTCPIPFailure,

        /// <summary>
        /// The Modbus mapper has failed to start.  This is caused
        /// by a corrupted or invalid registers.map file.
        /// </summary>
        ModbusMapperFailure,

        /// <summary>
        /// The Data logger database has failed.
        /// </summary>
        DataLoggerDatabaseFailure,

        /// <summary>
        /// The Data logger database as dropped a log due to system load.
        /// </summary>
        DataLoggerDatabaseMissedLog,

        /// <summary>
        /// The Data logger has failed to write to the database.
        /// </summary>
        DataLoggerDatabaseWriteFailure,

        /// <summary>
        /// The Data logger has failed to read from the database.
        /// </summary>
        DataLoggerDatabaseReadFailure,

        /// <summary>
        /// The Sensor Replacement database has failed.
        /// </summary>
        ReplacementDatabaseFailure,

        /// <summary>
        /// The Sensor Replacment database has dropped a log.
        /// </summary>
        ReplacementDatabaseMissedLog,

        /// <summary>
        /// The Sensor Replacement module has failed to write to the database.
        /// </summary>
        ReplacementDatabaseWriteFailure,

        /// <summary>
        /// The Sensor Replacement module has failed to read form the database.
        /// </summary>
        ReplacementDatabaseReadFailure,

        /// <summary>
        /// The comminications statistics database has failed.
        /// </summary>
        CommsStatisticsFailure,

        /// <summary>
        /// A connection could not be made to a database.
        /// </summary>
        DatabaseConnectionFailure,

        /// <summary>
        /// An unspecified database has failed.
        /// </summary>
        DatabaseFailure,

        /// <summary>
        /// An unspecified database write has failed.
        /// </summary>
        DatabaseWriteFailure,

        /// <summary>
        /// An unspecified database read has failed.
        /// </summary>
        DatabaseReadFailure,

        /// <summary>
        /// A write to the event log has failed.
        /// </summary>
        EventLogWriteFailure,

        /// <summary>
        /// A read from the event log has failed..
        /// </summary>
        EventLogReadFailure,

        /// <summary>
        /// The event log database has failed.
        /// </summary>
        EventLogDatabaseFailure,

        /// <summary>
        /// The event log has dropped a event log due to system load.
        /// </summary>
        EventLogDatabaseMissedLog,

        /// <summary>
        /// A connection could not be made to the Modbus Server.
        /// </summary>
        ModbusConnectionFailure,

        /// <summary>
        /// A read from the Modbus Server failed.
        /// </summary>
        ModbusReadFailure,

        /// <summary>
        /// A write to the Modbus server failed.
        /// </summary>
        ModbusWriteFailure,

        /// <summary>
        /// The Modbus server has failed to start.
        /// </summary>
        ModbusServerFailure,


        /// <summary>
        /// The GL report generator failed when creating the report header.
        /// </summary>
        GLReportHeader,

        /// <summary>
        /// The GL report generator failed when creating the report status.
        /// </summary>
        GLReportStatus,

        /// <summary>
        /// The GL report generator failed when creating the report trend.
        /// </summary>
        GLReportTrend,

        /// <summary>
        /// The GL report generator failed when creating the report event log.
        /// </summary>
        GLReportLogging,

        /// <summary>
        /// The GL report generator failed when to create the report export directory.
        /// </summary>
        GLReportCreateDirectory,

        /// <summary>
        /// The AMOT report generator failed when creating the report export directory.
        /// </summary>
        AMOTReportCreateDirectory,

        /// <summary>
        /// The AMOT report generator failed when creating the report header.
        /// </summary>
        AMOTReportFileHeader,

        /// <summary>
        /// The AMOT report generator failed when creating the report front page.
        /// </summary>
        AMOTReportFrontPage,

        /// <summary>
        /// The AMOT report generator failed when creating the report header.
        /// </summary>
        AMOTReportReportHeader,

        /// <summary>
        /// The AMOT report generator failed when creating the report status.
        /// </summary>
        AMOTReportStatus,

        /// <summary>
        /// The AMOT report generator failed when creating the report trend.
        /// </summary>
        AMOTReportTrendData,

        /// <summary>
        /// The AMOT report generator failed when creating the report damage monitoring.
        /// </summary>
        AMOTReportDamageMonitoring,

        /// <summary>
        /// The AMOT report generator failed when creating the report logging.
        /// </summary>
        AMOTReportLogging,

        /// <summary>
        /// The GL MM Webservice failed to login due to an invalid username.
        /// </summary>
        GLMMInvalidUsername,

        /// <summary>
        /// The GL MM Web service do not authorize the request for the logged in user.
        /// </summary>
        GLMMNotAuthorized,

        /// <summary>
        /// A connection cannot be made to the GL MM Server.
        /// </summary>
        GLMMServerNotAvaliable,

        /// <summary>
        /// A unknown GL MM Web Service error occured.
        /// </summary>
        GLMMUnknown,

        /// <summary>
        /// The GL MM Web Service failed to create a file.
        /// </summary>
        GLMMNoFile,

        /// <summary>
        /// The GL MM Web Service failed to create a report.
        /// </summary>
        GLMMReportFailed,

        /// <summary>
        /// The warning message that IMO has been modified.
        /// </summary>
        IMOModifiedError
    }
    
    /// <summary>
    /// This class is used to signal and detect fatal errors
    /// that will cause the system to stop functioning as designed.
    /// </summary>
    public sealed class Faults : IDisposable
    {
        static readonly Faults instance = new Faults();

        /// <summary>
        /// Gets an instance of the Faults singleton class.
        /// </summary>
        public static Faults Instance
        {
            get
            {
                return instance;
            }
        }
        
        private Faults()
        {
            //Create an array to hold all the wait events
            int numberOfFaults = Enum.GetNames(typeof(FaultCodes)).Length+1;
            faultChangedState = new EventWaitHandle(false, EventResetMode.AutoReset, AMOTFaultPreFix + "StateChange");
            faultEvents = new EventWaitHandle[numberOfFaults];

            for (int i = 0; i < faultEvents.Length; i++)
            {
                faultEvents[i] = new EventWaitHandle(false, EventResetMode.ManualReset, AMOTFaultPreFix + i);
            }
        }

        ~Faults()
        {
            Dispose(false);
        }


        /// <summary>
        /// The path in the kernel space where the named system events are located
        /// </summary>
        private const string AMOTFaultPreFix = @"AMOT_Fault_";

        private EventWaitHandle faultChangedState;
        private EventWaitHandle[] faultEvents;

        /// <summary>
        /// Signals a fault as active
        /// </summary>
        /// <param name="code">The fault code to signal</param>
        public void SignalFault(FaultCodes code)
        {
            int i = Convert.ToInt32(code,CultureInfo.CurrentCulture);
            if (faultEvents[i] != null)
            {
                faultEvents[i].Set();
                faultChangedState.Set();
            }
        }

        /// <summary>
        /// Clears a fault.
        /// </summary>
        /// <param name="code">The fault code to clear.</param>
        public void ClearFault(FaultCodes code)
        {
            int i = Convert.ToInt32(code,CultureInfo.CurrentCulture);

            if (faultEvents[i] != null)
            {
                if (faultEvents[i].WaitOne(0) == true)
                {
                    faultEvents[i].Reset();
                    faultChangedState.Set();
                }
            }
        }

        /// <summary>
        /// Checks if a fault is signaled.
        /// </summary>
        /// <param name="code">The fault code to check.</param>
        /// <returns>True if the fault is signaled, otherwise False.</returns>
        public bool IsSignaled(FaultCodes code)
        {
            int i = Convert.ToInt32(code, CultureInfo.CurrentCulture);
            return faultEvents[i].WaitOne(0);
        }

        /// <summary>
        /// Checks if any faults are signaled.
        /// </summary>
        /// <returns>True if any faults are signaled, otherwise False.</returns>
        public bool AnyFaultsSignaled()
        {
            bool signaled = false;

            for (int i = 0; i < faultEvents.Length; i++)
            {
                if (faultEvents[i].WaitOne(0) == true)
                {
                    signaled = true;
                }
            }

            return signaled;
        }

        /// <summary>
        /// Waits for fault code to be signaled.
        /// </summary>
        /// <returns>An array of the fault codes that are signaled.</returns>
        public FaultCodes[] WaitForFaults()
        {
            List<FaultCodes> codes = new List<FaultCodes>();
            faultChangedState.WaitOne();

            for (int i = 0; i < faultEvents.Length;i++ )
            {
                if (faultEvents[i].WaitOne(0) == true)
                {
                    codes.Add((FaultCodes)i);
                }
            }

            return codes.ToArray();
        }

        /// <summary>
        /// Returns an array of faults that are signaled.
        /// </summary>
        /// <returns>An array of signaled faults.</returns>
        public Int16[] ActiveFaults()
        {
            List<Int16> codes = new List<Int16>();

            for (int i = 0; i < faultEvents.Length; i++)
            {
                if (faultEvents[i].WaitOne(0) == true)
                {
                    codes.Add((Int16)(FaultCodes)i);
                }
            }

            return codes.ToArray();
        }

        /// <summary>
        /// Returns an array of faults that have been cleared.
        /// </summary>
        /// <returns>The array of cleared faults.</returns>
        public Int16[] InactiveFaults()
        {
            List<Int16> codes = new List<Int16>();

            for (int i = 0; i < faultEvents.Length; i++)
            {
                if (faultEvents[i].WaitOne(0) == false)
                {
                    codes.Add((Int16)(FaultCodes)i);
                }
            }

            return codes.ToArray();
        }

        private void Dispose(bool disposing)
        {
            if (disposing)
            {
                faultChangedState.Dispose();
                faultChangedState = null;
            }
        }

        /// <summary>
        /// Called to dispose this object.
        /// </summary>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
