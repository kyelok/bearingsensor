/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;
using System.Runtime.Serialization.Json;
using WebServiceObjects;
using System.Threading;

namespace WebTestClient
{
    public static class EngineOperations
    {
        public static ServerRequests serverRequests = Program.ServerRequests;

        /// <summary>
        /// Tests for entry point /json/engine/sensor/setup
        /// </summary>
        public static void ReadSensorSetup()
        {
            SensorSetup sensorSetup = serverRequests.GetSensorSetup();

            Console.WriteLine("Sensor Setup");
            Console.WriteLine("============");
            Console.WriteLine("      Sensors: {0}", sensorSetup.Sensors);
            Console.WriteLine("      Ok band: {0} - {1}", sensorSetup.OkBandMin, sensorSetup.OkBandMax);
            Console.WriteLine("    Idle band: {0} - {1}", sensorSetup.IdleBandMin, sensorSetup.IdleBandMax);
            Console.WriteLine(" DC Peek Hold: {0}", sensorSetup.DCPeakHold);
            Console.WriteLine("      DC Mode: {0}", sensorSetup.DCMode);
            Console.Write(" Firing order: ");
            for (int i = 0; i < sensorSetup.FiringOrder.Length; i++)
            {
                Console.Write("{0} ", sensorSetup.FiringOrder[i]);
            }

            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine("   Actual :   Peek : Micron :  Precmp");
            for (int i = 0; i < sensorSetup.Sensors; i++)
            {
                Console.WriteLine("{0:D2} {1,6}   {2,6}   {3,6}    {4,6}",
                    i + 1,
                    sensorSetup.SensorActualValue[i],
                    sensorSetup.SensorPeekValue[i],
                    sensorSetup.MicronCurrentVal[i],
                    sensorSetup.PreCompensation[i]);
            }
        }

        /// <summary>
        /// Tests for entry point /json/engine/sensor/mode
        /// </summary>
        public static void SetDCMode(SensorDCMode mode, string auth)
        {
            Boolean success = serverRequests.SetSensorMode(mode, auth);
            Console.WriteLine("Setting sensor mode");
        }

        /// <summary>
        /// Tests for entry point /json/engine/sensor/calibrate/peek/start
        /// and
        /// Tests for entry point /json/engine/sensor/calibrate/peek/monitor
        /// </summary>
        public static void SensorCalibratePeek(Int16[] sensors, string auth)
        {
            Console.Write("Starting Calibrating sensor peek: ");
            for(int i=0;i<sensors.Length;i++)
            {                
                Console.Write("{0,3}", sensors[i]);
                sensors[i] -= 1;
            }
            Console.WriteLine();

            serverRequests.SensorStartCalibratePeek(sensors, auth);

            int retryCount = 0;
            while (retryCount < 3)
            {
                Int16[] failed = serverRequests.SensorMonitorCalibratePeek(sensors, auth);

                if (failed != null && failed.Length > 0)
                {
                    Console.Write("  Calibration failed on: ");
                    foreach (Int16 sensor in sensors)
                    {
                        Console.Write("{0,3}", sensor+1);
                    }
                    Console.WriteLine();
                }
                else
                {
                    Console.WriteLine("Calibration completed");
                }

                Thread.Sleep(5000);
                retryCount++;
            }
        }

        /// <summary>
        /// Tests for entry point /json/engine/sensor/reset/peek
        /// </summary>
        public static void SensorResetPeek(Int16[] sensors, string auth)
        {
            serverRequests.SensorPeekReset(sensors, auth);
        }

        /// <summary>
        /// Tests for entry point /json/engine/sensor/calibrate/order
        /// </summary>
        public static void SensorCalibrationOrder(string auth)
        {
            serverRequests.SensorCalibrationOrder(auth);
        }

        /// <summary>
        /// Tests for entry point /json/engine/learning/start
        /// </summary>
        public static void StartEngineLearning(string auth)
        {
            serverRequests.StartEngineLearning(auth);
        }

        /// <summary>
        /// Tests for entry point /json/engine/learning/stop
        /// </summary>
        public static void StopEngineLearning(string auth)
        {
            serverRequests.StopEngineLearning(auth);
        }

        /// <summary>
        /// Tests for entry point /json/engine/learning
        /// </summary>
        public static void EngineLearningStatus()
        {
            EngineLearningStatus learningStatus = serverRequests.EngineLearningStatus();

            Console.WriteLine("Engine learning status");
            Console.WriteLine("======================");
            Console.WriteLine(" Calibration Stage: {0,5}", learningStatus.CalibrationStage);
            Console.WriteLine("     Learning Left: {0,5}", learningStatus.LearningLeft);
            Console.WriteLine(" Calibrated Points: {0,5}", learningStatus.CalibratedPoints);
            Console.WriteLine("      Total Points: {0,5}", learningStatus.TotalPoints);
            Console.WriteLine("           In Band: {0,5}", learningStatus.SpeedInBand);
            Console.WriteLine("         Date time: {0,5}", learningStatus.DateTime.GetTime().ToString());            
        }

        /// <summary>
        /// Tests for entry point /json/diagnostics
        /// </summary>
        public static void Diagnostics()
        {
            Diagnostics diagnostics = serverRequests.GetDiagnostics();

            Console.WriteLine("Diagnostics");
            Console.WriteLine("===========");
            Console.WriteLine("        Number of SPUs: {0}", diagnostics.NumberOfSPUs);
            Console.WriteLine();
            Console.WriteLine("      Unit1 FW Version: {0}", diagnostics.Unit1FWVersion);
            Console.WriteLine("    Unit1 Battery Volt: {0}", diagnostics.Unit1BatteryVolt);
            Console.WriteLine("    Unit1 Engine Speed: {0}", diagnostics.Unit1EngineSpeed);
            Console.WriteLine("      Unit1 SPU Status: {0}", diagnostics.Unit1SPUStatus);
            Console.WriteLine("          Unit1 Alarms: {0}", diagnostics.Unit1Alarms);
            Console.WriteLine("        Unit1 Slowdown: {0}", diagnostics.Unit1Slowdown);
            Console.WriteLine("         Unit1 SD Card: {0}", diagnostics.Unit1SDCard);
            Console.WriteLine();            
            Console.WriteLine("      Unit2 FW Version: {0}", diagnostics.Unit2FWVersion);
            Console.WriteLine("    Unit2 Engine Speed: {0}", diagnostics.Unit2EngineSpeed);
            Console.WriteLine();
            Console.WriteLine("EngineRuntimeInMinutes: {0}", diagnostics.EngineRuntimeInMinutes);
            Console.WriteLine();
            Console.WriteLine("     WebServer Version: {0}", diagnostics.WebServerVersion);
            
        }

        /// <summary>
        /// Tests for entry point /json/eventlog
        /// </summary>
        public static void EventLog(int offset, int limit)
        {
            EventLogResult engineData = serverRequests.GetEventLog(offset, limit);

            Console.WriteLine("  Total Events: {0}", engineData.TotalResults);
            Console.WriteLine("Results offset: {0}", engineData.ResultsOffset);

            foreach (EventLogItem item in engineData.Events)
            {
                Console.WriteLine("{0}: {1}", item.EventDateTime, item.Description);
                Console.WriteLine("\t      Type: {0}", item.DataType);
                Console.WriteLine("\t   Channel: {0}", item.Channel);
                Console.WriteLine("\t  Event Id: {0}", item.Eventid);
                Console.WriteLine("\tEvent Code: {0}", item.Eventcode);
                if (item.Ackdatetime != -1)
                {
                    Console.WriteLine("\t  Ack Time: {0}", item.Ackdatetime);
                    Console.WriteLine("\t  Ack User: {0}", item.AckUserId);
                }
                Console.WriteLine();
            }

            Console.WriteLine("   Total Events: {0}", engineData.TotalResults);
            Console.WriteLine(" Results offset: {0}", engineData.ResultsOffset);
            Console.WriteLine("Events returned: {0}", engineData.Events.Length);
        }
        
        /// <summary>
        /// Tests for entry point /json/engine/live
        /// </summary>
        public static void ReadLiveEngineData()
        {
            EngineData engineData = serverRequests.GetEngineLiveData();

            Console.WriteLine("                   Time: {0}", engineData.DateTime.GetTime().ToString());
            Console.WriteLine("              Cylinders: {0}", engineData.Cylinders);
            Console.WriteLine("       Engine Direction: {0}", engineData.EngineDirection);
            Console.WriteLine("                   SLEM: {0}", engineData.SLEM);
            Console.WriteLine("                Runtime: {0}", engineData.RunTime);
            Console.WriteLine("              RPM Modal: {0}", engineData.RpmModal);
            Console.WriteLine("            RPM Checked: {0}", engineData.RpmChecked);
            Console.WriteLine();
            Console.WriteLine("               WIO Temp: {0}", engineData.WaterInOil.Temp);
            Console.WriteLine("                WIO PPM: {0}", engineData.WaterInOil.PPM);
            Console.WriteLine("           WIO Activity: {0}", engineData.WaterInOil.WaterActivity);
            Console.WriteLine();
            Console.WriteLine("  Alarm shutdown Levels:");
            Console.WriteLine("       - Sensor Slow down:       {0,5}", engineData.AlarmShutdownLevels.SensorSlowDownLevel);
            Console.WriteLine("       - Sensor Alarm:           {0,5}", engineData.AlarmShutdownLevels.SensorAlarmLevel);
            Console.WriteLine("       - Sensor Dev Slowdown:    {0,5}", engineData.AlarmShutdownLevels.SensorDevSlowDownLevel);
            Console.WriteLine("       - Sensor Alarm Deviation: {0,5}", engineData.AlarmShutdownLevels.SensorAlarmDeviationLevel);
            Console.WriteLine("       - Cylinder Alarm:         {0,5}", engineData.AlarmShutdownLevels.CylinderAlarmLevel);
            Console.WriteLine();
            Console.WriteLine("Cyl Values : Cyl Deviation : Sensor(a) : Sensor(b) : Sensor Dev(a) : Sensor Dev(b)");
            for (int i = 0; i < engineData.Cylinders; i++)
            {
                Console.WriteLine("{0,10} {1,15} {2,11} {3,11} {4,15} {5,15}",
                    engineData.CylinderValues[i],
                    engineData.CylinderDevValues[i],
                    engineData.SensorValues[(i * 2)], engineData.SensorValues[(i * 2) + 1],
                    engineData.SensorDevValues[(i * 2)], engineData.SensorDevValues[(i * 2) + 1]);
            }
            Console.WriteLine();
            Console.WriteLine("        SLEM Status: {0}", engineData.SLEMStatus);
            Console.WriteLine("WIO Activity Status: {0}", engineData.WIOActivityStatus);
            PrintStatusWords("\r\nSensor status:", engineData.SensorStatus);
            PrintStatusWords("\r\nSensor deviation status:", engineData.SensorDevStatus);
            PrintStatusWords("\r\nCylinder status:", engineData.CylinderStatus);
            PrintStatusWords("\r\nCylinder deviation status:", engineData.CylinderDevStatus);
        }
        
        /// <summary>
        /// Display engine alarms
        /// </summary>
        public static void EngineAlarms()
        {
            EngineAlarm [] engineAlarms = serverRequests.GetEngineAlarms();
            foreach (EngineAlarm alarm in engineAlarms)
            {
                Console.WriteLine("{0,3}: {1}", alarm.AlarmId, alarm.AlarmString);
                Console.WriteLine();
                Console.WriteLine("       Start: {0}", alarm.AlarmOn);
                Console.WriteLine("        Stop: {0}", alarm.AlarmOff);
                Console.WriteLine("       Count: {0}", alarm.Count);
                Console.WriteLine("       Acked: {0,5}   User: {1,3}   Time: {2}", alarm.Acked, alarm.AckUser, alarm.AckTime);
                Console.WriteLine("     Ignored: {0,5}   User: {1,3}   Time: {2}", alarm.Ignore, alarm.IgnoreUser, alarm.IgnoreTime);
                Console.WriteLine();
            }
        }

        /// <summary>
        /// Acknowledge engine alarms
        /// </summary>
        /// <param name="alarms">Engine alarms to ack</param>
        public static void EngineAlarmsAck(Int16[] alarms, string auth)
        {
            serverRequests.EngineAlarmsAck(alarms, auth);
        }

        /// <summary>
        /// Ignore engine alarms
        /// </summary>
        /// <param name="alarms">Engine alarms to ignore</param>
        public static void EngineAlarmsIgnore(Int16[] alarms, string auth)
        {
            serverRequests.EngineAlarmsIgnore(alarms, auth);
        }

        /// <summary>
        /// Tests for entry point /json/
        /// </summary>
        public static void ReadGetEngineTrendData()
        {
        }

        /// <summary>
        /// Tests for entry point /json/engine/alarms
        /// </summary>
        public static void ReadEngineAlarms()
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Cancels a sensor replacement
        /// </summary>
        /// <param name="sensor">The number of the sensor to replace</param>
        public static void CancelSensorReplace(Int16 sensor, string auth)
        {
            serverRequests.CancelSensorReplace(sensor, auth);
        }

        /// <summary>
        /// Starts a sensor replacement
        /// </summary>
        /// <param name="sensor">The number of the sensor to replace</param>
        public static void StartSensorReplace(Int16 sensor, string auth)
        {
            serverRequests.StartSensorReplace(sensor, auth);
        }

        public static void StartSensorReplaceAverage(Int16 sensor, string auth)
        {
            serverRequests.StartSensorReplaceAverage(sensor, auth);
        }

        public static void GetSensorReplaceState()
        {
            SensorReplacementStatus[] states = serverRequests.GetSensorReplaceState();

            Console.WriteLine("Sensors Being Replaced.");
            Console.WriteLine();

            foreach (SensorReplacementStatus state in states)
            {
                TimeSpan span = TimeSpan.FromMinutes(state.MinutesRemaining);
                Int32 hours = (Int32)span.TotalHours;
                Int32 minutes = span.Minutes;

                Console.WriteLine("          Sensor: {0}", state.Sensor);
                Console.WriteLine("    Failure Date: {0}", state.FailureDate);
                Console.WriteLine("Replacement Date: {0}", state.ReplacementDate);
                Console.WriteLine("           Stage: {0}", state.Stage);
                Console.WriteLine("  Time Remaining: {0}hrs {1}mins",hours,minutes);
                Console.WriteLine();
            }
        }
        
        private static void write2DData(string[] columnNames, Int16[][] data)
        {
            int rows = data.Length;
            int columns = data[0].Length;

            Console.Write("     :");
            for (int column = 0; column < columns; column++)
            {
                Console.Write(" {0,6}", columnNames[column]);
            }
            Console.WriteLine();

            for (int row = 0; row < rows; row++)
            {
                Console.Write("{0,4} :", row);
                for (int column = 0; column < columns; column++)
                {
                    Console.Write(" {0,6}", data[row][column]);
                }
                Console.WriteLine();
            }
        }

        private static void PrintStatusWords(string title, CalculatedStatusWord[] statusWords)
        {
            Console.WriteLine(title);
            for (int i = 0; i < statusWords.Length; i++)
            {
                Console.WriteLine("{0,5} : {1,5}", i + 1, statusWords[i]);
            }
        }

      
    }
}
