/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataCollectionSDK;
using System.Threading.Tasks;
using AMOTConstants;
using System.Diagnostics;
using log4net;

namespace WebService
{
    /// <summary>
    /// This class performs the asynchronous Sensor Setup tasks 
    /// </summary>
    public class SensorCalibrationAndSetup
    {

        CalibrateSensorPeek calibrate;

        Int16[] calibratedSensors;

        /// <summary>
        /// Default Constructor
        /// </summary>
        public SensorCalibrationAndSetup()
        {
        }

        /// <summary>
        /// Starts a Calibrate Peek Task running
        /// </summary>
        public void CalibratePeek(ModbusSDK modbus, Int16[] sensors)
        {
            if (calibrate == null)
            {
                calibrate = new CalibrateSensorPeek();
                Task calibrateTask = Task.Factory.StartNew(() => calibrate.Calibrate(modbus,sensors));
                calibrateTask.ContinueWith((antecedent) => 
                {
                    calibratedSensors = calibrate.Monitor();
                    calibrate = null;
                });
            }
        }

        /// <summary>
        /// Monitors a Calibrate Peek Task
        /// </summary>
        public Int16[] MonitorCalibratePeek()
        {
            if (calibrate == null)
            {
                return calibratedSensors;
            }
            else
            {
                return calibrate.Monitor();
            }
        }

        /// <summary>
        /// This class holds the methods used to Calibrate
        /// the sensors
        /// </summary>
        private class CalibrateSensorPeek
        {
            /// <summary>
            /// Log4net Logging
            /// </summary>
            private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            /// <summary>
            /// The Modbus slave to commicate with
            /// </summary>
            byte ModbusSlaveId = 1;

            List<Int16> calibratedSensors;
            int totalNumberOfSensors;

            /// <summary>
            /// Performs sensor calibration
            /// </summary>
            public void Calibrate(ModbusSDK modbus, Int16[] sensors)
            {
                bool notExit = true;
                ushort[] data = null;
                calibratedSensors = new List<short>();
                totalNumberOfSensors = sensors.Length;

                lock (modbus.syncRoot)
                {
                    try
                    {
                        modbus.ReadHoldingRegisters(ModbusSlaveId, (ushort)AMOTConstants.ModbusConstants.DCModeStayAliveRegister, 1);
                        data = modbus.ReadHoldingRegisters(1, (ushort)ModbusConstants.ChannelStatus1Registers, 28);
                    }
                    catch (Exception e)
                    {
                        log.ErrorFormat("Caught {0}",e.ToString());
                        notExit = false;
                    }
                }

                if (data != null)
                {
                    //Set DC Mode on all required registers
                    foreach (Int16 sensor in sensors)
                    {
                        data[sensor] |= (1 << 3);
                    }

                    lock (modbus.syncRoot)
                    {
                        try
                        {
                            modbus.WriteMultipleRegisters(1, (ushort)ModbusConstants.ChannelStatus1Registers, data);
                        }
                        catch (Exception e)
                        {
                            log.ErrorFormat("Caught {0}", e.ToString());
                            notExit = false;
                        }
                    }

                    Stopwatch time = new Stopwatch();

                    time.Start();
                    while (notExit)
                    {
                        notExit = false;
                        lock (modbus.syncRoot)
                        {
                            try
                            {
                                modbus.ReadHoldingRegisters(ModbusSlaveId, (ushort)AMOTConstants.ModbusConstants.DCModeStayAliveRegister, 1);
                                data = modbus.ReadHoldingRegisters(1, (ushort)ModbusConstants.ChannelStatus1Registers, 28);
                            }
                            catch (Exception e)
                            {
                                log.ErrorFormat("Caught {0}", e.ToString());
                                notExit = false;
                            }
                        }

                        if (data != null)
                        {
                            //Check DC Mode on all required registers
                            foreach (Int16 sensor in sensors)
                            {
                                if ((data[sensor] & (1 << 3)) != 0)
                                {
                                    notExit = true;
                                }
                                else
                                {
                                    if (!calibratedSensors.Contains(sensor))
                                    {
                                        calibratedSensors.Add(sensor);
                                    }
                                }
                            }
                        }

                        if (time.Elapsed.TotalMinutes >= 2)
                        {
                            log.Error("Timed out performing Sensor Peek Calibration");
                            notExit = false;
                        }
                    }

                    time.Stop();
                    log.InfoFormat("Peek Calibration took {0}ms", time.ElapsedMilliseconds);
                }
            }

            /// <summary>
            /// Monitors sensor calibration
            /// </summary>
            public Int16[] Monitor()
            {
                return calibratedSensors.ToArray();
            }
        }
    } 
}
