using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataCollectionSDK;
using Modbus;
using EventLogging;

namespace EngineLearnPlugin
{
    class EngineLearningLogging
    {
        static EventLog eventLog = new EventLog();
        /// <summary>
        /// This function logs the engine learn status.  It will only log the status when the stage has
        /// changed.
        /// </summary>
        static public void LogLearningProcedureStatusIfNecessary(ModbusSDK connection)
        {
            int status = ReadEngineLearningProcedureStatusRegister(connection);

            if (eventLog.GetLastLearningStatus() != status)
            {
                eventLog.UpdateLastLearningStatus(status);
                string timeRemaining = GetTimeRemaining(connection);
                eventLog.LogGeneralEvent(GetLearningProcedureStatusMessage(status, timeRemaining), string.Empty);
            }

        }

        static private string GetLearningProcedureStatusMessage(int status, string timeRemaining)
        {
            switch (status)
            {
                case 0:
                    return "Engine learning procedure has not been completed. Indicated wear will be incorrect.";
                case 1:
                    return String.Format("First stage \"Preliminary engine learning\" waiting for speed band entry. {0}", timeRemaining);
                case 2:
                    return String.Format("First stage \"Preliminary engine learning\" in progress. {0}", timeRemaining);
                case 3:
                    return "First stage \"preliminary engine learning\" complete waiting for next speed band entry";
                case 4:
                    return String.Format("Second stage \"Preliminary engine learning\" in progress. {0}", timeRemaining);
                case 5:
                    return "Second stage \"preliminary engine learning\" complete waiting for next speed band entry";
                case 6:
                    return String.Format("Third stage \"Preliminary engine learning\" in progress. {0}", timeRemaining);
                case 7:
                    return String.Format("Fine engine learning procedure in progress. {0}", timeRemaining);
                case 8:
                    return String.Format("Fine engine learning procedure in progress. {0}", timeRemaining);
                case 9:
                    return "Engine learning procedure complete.";
                case 10:
                    return "Engine learning complete. Please send verification data to AMOT.";
                case 11:
                    return "CAUTION: Engine learning aborted by user.";
                case 12:
                    return "Cylinder firing not determined.";
                default:
                    return String.Format("Invalid value ({0}) returned from calibration stage register (3000)", status);
            }
        }

        /// <summary>
        /// Reads time remaining and returns as a human-readable string
        /// </summary>
        /// <returns>A string stating the time remaining in hours and mins (eg: 2 hours and 1 minute remaining)</returns>
        static private string GetTimeRemaining(ModbusSDK connection)
        {
            UInt16[] regval = connection.ReadHoldingRegisters(1, 3013, 1);

            TimeSpan timeRemaining = TimeSpan.FromMinutes(regval[0]);
            int hours = (int)Math.Floor(timeRemaining.TotalHours);
            /* Using total hours converted to int as hours will not return more than 24 */
            int minutes = timeRemaining.Minutes;
            string hoursPlural = String.Empty;
            string minutesPlural = String.Empty;

            //Add plural 's' on to hour(s) and minute(s) in return string for improved readability
            if (hours != 1)
            {
                hoursPlural = "s";
            }
            if (minutes != 1)
            {
                minutesPlural = "s";
            }
            return String.Format("{0} hour{2} and {1} minute{3} remaining...", hours, minutes, hoursPlural, minutesPlural);

        }

        /// <summary>
        /// This funciton reads the value of the SPU register 3000.
        /// </summary>
        /// <param name="connection">The ModbusSDK object that is configured to connect to the SPU.</param>
        /// <returns>The value of register 3000 on the SPU.</returns>
        static private int ReadEngineLearningProcedureStatusRegister(ModbusSDK connection)
        {
            UInt16[] regval = connection.ReadHoldingRegisters(1, 3000, 1);
            return regval[0];
        }
    }
}