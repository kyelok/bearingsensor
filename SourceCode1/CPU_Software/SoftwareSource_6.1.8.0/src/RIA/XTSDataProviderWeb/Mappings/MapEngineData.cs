/* 
 * MapEngineData.cs
 * 
 * This file holds the method that is used to map the engine data from the web servce
 * to the correct XTS Data classes.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: GSmith, 27/03/2012
 */

using System;
using System.Collections.Generic;
using WebServiceObjects;

namespace XTS
{
    /// <summary>
    /// This class maps the Engine Data returned from the Web Service to
    /// the XTSEngine class
    /// </summary>
    public class MapEngineData
    {
        /// <summary>
        /// The value to use when there has been a SPUComms failure
        /// </summary>
        const Int16 SPUCommsError = (Int16)(-32766);
        const Int16 SPURError = (Int16)(-32000);

        /// <summary>
        /// This function sets up XTSEngine data object from the EngineData read form the web service.
        /// This function does not populate the sensor value data in the engine
        /// </summary>
        /// <param name="engine">The XTSEngine object to set-up</param>
        /// <param name="data">The data from the web service to use to setup the object</param>
        static public void SetupXTSEngineFromData(XTSEngine engine, XTSGeneral general, EngineData data)
        {
            if (data.TotalSensors == 0)
            {
                general.SetMessageString("XTSStringNoSensors");
            }
            else
            {
                if (general.Message == "XTSStringNoSensors")
                {
                    general.SetMessageString("XTSStringStatusDefault");
                }
            }

            general.BarScaleWear = (uint)data.BarGraphWear;
            general.BarScaleDeviation = (uint)data.BarGraphDeviation;

            general.SPUDateTime = data.DateTime.GetTime();
            engine.CylinderReverse = data.CylinderOrderReverse;

            lock (engine.SyncRoot)
            {
                int bearingCount;

                if (data.SLEMEnabled == SLEMEnabled.Enabled)
                {
                    if (engine.SEDM == null)
                    {
                        engine.SEDM = new XTSSEDM();
                    }

                    engine.SEDM.Connection = null;
                }
                else
                {
                    engine.SEDM = null;
                }

                if (data.CPPEnabled == CPPEnabled.Enabled)
                {
                    if (engine.CPP == null)
                    {
                        engine.CPP = new XTSCPP();
                    }

                    engine.CPP.Connection = null;
                }
                else
                {
                    engine.CPP = null;
                }

                if (data.WIOEnabled == WIOEnabled.DigitalIOEnabled || data.WIOEnabled == WIOEnabled.AnalogueIOEnabled)
                {
                    if (engine.WIO == null)
                    {
                        engine.WIO = new XTSWIO();
                    }

                    engine.WIO.Connection = null;
                }
                else
                {
                    engine.WIO = null;
                }

                bearingCount = data.Cylinders + 1;

                //Check if a timing chain is fitted
                //If it include an extra bearing for the timing chain.
                if (data.LocationOfTimingChain > 0)
                {
                    bearingCount += 1;
                }

                //Create the bearings and add them to the engine
                if (engine.MainBearings.Count != bearingCount)
                {
                    List<XTSBearing> bearings = new List<XTSBearing>();
                    for (uint i = 0; i < bearingCount; i++)
                    {
                        uint tempdata = i;
                        if (data.CylinderOrderReverse == true)
                        {
                            tempdata = (uint)bearingCount - i;
                        }
                        else
                        {
                            tempdata = i + 1;
                        }

                        bearings.Add(new XTSBearing(tempdata));
                    }

                    if (data.LocationOfTimingChain > 0)
                    {
                        engine.TimingChain = (uint)(data.LocationOfTimingChain);
                    }
                    else
                    {
                        engine.TimingChain = null;
                    }

                    engine.MainBearings = new XTSDataCollection<XTSBearing>(bearings);
                }

                //Create the cylinders and add them to the engine
                if (engine.Cylinders.Count != data.Cylinders)
                {
                    List<XTSCylinder> cylinders = new List<XTSCylinder>();

                    for (uint i = 0; i < data.Cylinders; i++)
                    {
                        uint tempdata = i;
                        if (data.CylinderOrderReverse == true)
                        {
                            tempdata = (uint)data.Cylinders - i;
                        }
                        else
                        {
                            tempdata = i + 1;
                        }
                        XTSCylinder xtsCylinder = new XTSCylinder(tempdata, 2);

                        foreach (var xtsSensor in xtsCylinder.Sensors)
                        {
                            xtsSensor.SlowrollEnabled = true;
                        }
                        cylinders.Add(xtsCylinder);
                    }

                    engine.Cylinders = new XTSDataCollection<XTSCylinder>(cylinders);
                }

                if (data.SensorsOnSPU2 != 0)
                {
                    engine.SPU2Fitted = true;
                }
                else
                {
                    engine.SPU2Fitted = false;
                }

                engine.DatabaseUpdating = data.DatabaseRolling;
                engine.XtsSerialNumber = data.SerialNumber;

                // NOTE: always assume 2 sensors per cylinder.
                engine.CylinderCountSPU1 = data.SensorsOnSPU1 / 2;

                //Create the temperature and add them to the engine
                //if (engine.Beraingtemperature == null)
                {
                    List<XTSBearTemperature> temperatures = new List<XTSBearTemperature>();

                    for (uint i = 0; i < data.TemperatureSensors; i++)
                    {
                        XTSBearTemperature xtsTemperature = new XTSBearTemperature(i + 1);
                        xtsTemperature.Enable = data.Enable[i];
                        xtsTemperature.Channelname = data.TemperatureChannelName[i];
                        xtsTemperature.Temperature = data.TemperatureChannelValue[i];
                        xtsTemperature.TemperatureDev = data.TemperatureDevValue[i];
                        xtsTemperature.AlarmLevel = data.TemperatureAlarmLevel[i];
                        xtsTemperature.SlowdownLevel = data.TemperatureSlowdownLevel[i];

                        if (data.Enable[i])
                        {
                            if (data.rtdGood[i])
                            {
                                if (data.TemperatureSlowdownArrary[i])
                                {
                                    xtsTemperature.DisplayStatus = XTSSensorStatus.Slowdown;
                                }
                                else if (data.TemperatureAlarmArrary[i])
                                {
                                    xtsTemperature.DisplayStatus = XTSSensorStatus.Alarm;
                                }
                                else
                                {
                                    xtsTemperature.DisplayStatus = XTSSensorStatus.Normal;
                                }
                                xtsTemperature.DisplayDevStatus = XTSSensorStatus.Normal;
                            }
                            else
                            {
                                if (xtsTemperature.Temperature == -400)
                                {
                                    xtsTemperature.DisplayStatus = XTSSensorStatus.SensorFailureNoPulse;
                                    xtsTemperature.DisplayDevStatus = XTSSensorStatus.SensorFailureNoPulse;
                                }
                                else if (xtsTemperature.Temperature == -500)
                                {
                                    xtsTemperature.DisplayStatus = XTSSensorStatus.SensorFailureLowLevel;
                                    xtsTemperature.DisplayDevStatus = XTSSensorStatus.SensorFailureLowLevel;
                                }
                                else if (xtsTemperature.Temperature == -600)
                                {
                                    xtsTemperature.DisplayStatus = XTSSensorStatus.SensorFailureHighLevel;
                                    xtsTemperature.DisplayDevStatus = XTSSensorStatus.SensorFailureHighLevel;
                                }
                                else if (xtsTemperature.Temperature == -700)
                                {
                                    xtsTemperature.DisplayStatus = XTSSensorStatus.SensorFailureRPMOOR;
                                    xtsTemperature.DisplayDevStatus = XTSSensorStatus.SensorFailureRPMOOR;
                                }
                            }                            
                        }
                        else
                        {
                            xtsTemperature.DisplayStatus = XTSSensorStatus.Disabled;
                            xtsTemperature.DisplayDevStatus = XTSSensorStatus.Disabled;
                        }                                                
                        
                        /*
                        if (xtsTemperature.TemperatureDev > data.TemperatureDevSlowdownLevel)
                        {
                            xtsTemperature.DisplayDevStatus = XTSSensorStatus.Slowdown;
                        }
                        else if (xtsTemperature.TemperatureDev > data.TemperatureDevAlarmLevel)
                        {
                            xtsTemperature.DisplayDevStatus = XTSSensorStatus.Alarm;
                        }
                        else
                        {
                            xtsTemperature.DisplayDevStatus = XTSSensorStatus.Normal;
                        }    
                        */

                        temperatures.Add(xtsTemperature);
                    }

                    engine.Bearingtemperature = new XTSDataCollection<XTSBearTemperature>(temperatures);
                    engine.TemperatureAlarmLevel = data.TemperatureBarScaleAlarm;
                    engine.TemperatureSlowdownLevel = data.TemperatureBarScaleSlowdown;
                }
            }
        }

        /// <summary>
        /// This function maps the EngineData retrieved from the WebService into the XTSEngine and XTSGeneral
        /// objects.
        /// </summary>
        /// <param name="engine">The XTSEngine object that the data should be mapped into</param>
        /// <param name="general">The XTSGeneral object that the data should be mapped into</param>
        /// <param name="data">The EngineData retrived from the web server</param>
        static public void EngineDataToXTSData(XTSEngine engine, XTSGeneral general, XTSLearning learn, XTSDiagnostics diagnostics, XTSVersion versions, EngineData data)
        {
            int bearingCount;

            general.SPUDateTime = data.DateTime.GetTime();
            general.EventLogDisplayCount = data.EventLogsPerRequest;

            diagnostics.SPUComms = true;

            lock (engine.SyncRoot)
            {
                engine.RPM = data.RpmModal;
                engine.RPMSlowroll = Math.Abs(engine.RPM) < 12;

                if (data.EngineDirection == 0)
                {
                    //Forwards
                    engine.Direction = XTSEngine.XTSEngineDirection.Forward;

                }
                else if (data.EngineDirection == 1)
                {
                    //Astern (backwords)
                    engine.Direction = XTSEngine.XTSEngineDirection.Astern;

                }
                else if (data.EngineDirection == -2)
                {
                    //Direction not set
                    engine.Direction = XTSEngine.XTSEngineDirection.NotSet;
                }
                else if (data.EngineDirection == -1)
                {
                    //Direction unknown
                    engine.Direction = XTSEngine.XTSEngineDirection.Unknown;
                }

                engine.RunTime = data.RunTime;

                if (data.CPPEnabled == CPPEnabled.Enabled)
                {
                    engine.CPP.CppMa = data.CPPmA;
                    engine.CPP.CppMa /= 100;
 
                    engine.CPP.CppPcnt = data.CPPPercent;
                    engine.CPP.CppPcnt /= 100;                  
                }
                else
                {
                    if (engine.CPP != null)
                    {
                        engine.CPP.CppMa = -32766;
                        engine.CPP.CppPcnt = -32766;
                    }
                }

                if (data.SLEMEnabled == SLEMEnabled.Enabled)
                {
                    engine.SEDM.Value = data.SLEM;
                    //SEDM status cannot be gotten from firmware, we have to calculate it here
                    if (0 <= engine.SEDM.Value && engine.SEDM.Value <= data.SlemAlarmLevel)
                    {
                        engine.SEDM.Status = XTSSensorStatus.Normal;
                    }
                    else if (engine.SEDM.Value > data.SlemAlarmLevel && engine.SEDM.Value < 300)
                    {
                        engine.SEDM.Status = XTSSensorStatus.Alarm;
                    }
                    else
                    {
                        engine.SEDM.Status = XTSSensorStatus.Slowdown;
                    }
                    engine.SEDM.Connection = true;
                    engine.SEDM.AlarmLevel = data.SlemAlarmLevel;
                }
                else
                {
                    //engine.SEDM.Status = XTSSensorStatus.Disabled;
                }

                if (data.WIOEnabled == WIOEnabled.DigitalIOEnabled || data.WIOEnabled == WIOEnabled.AnalogueIOEnabled)
                {
                    //Calculate WIO
                    double wioValue = GetWaterInOilValue(data.WIOEnabled, data.WaterInOil);

                    if (wioValue <= SPURError)
                    {
                        engine.WIO.Units = XTSWIO.XTSWIOUnits.Error;

                        if (data.WIOEnabled == WIOEnabled.DigitalIOEnabled)
                        {
                            engine.WIO.ErrorValue = data.WIOCommsErrorValue;
                        }
                        else if (data.WIOEnabled == WIOEnabled.AnalogueIOEnabled)
                        {
                            engine.WIO.ErrorValue = (Int16)engine.WIO.Value;
                        }
                    }
                    else
                    {
                        engine.WIO.Units = GetWaterInOilUnits(data.WaterInOil);
                        engine.WIO.Value = wioValue;
                    }

                    //WIO status cannot be gotten from firmware, we have to calculate it here
                    if (0 <= engine.WIO.WioValeAct && engine.WIO.WioValeAct <= data.WaterInOil.Alarm)
                    {
                        engine.WIO.Status = XTSSensorStatus.Normal;
                    }
                    else if (engine.WIO.WioValeAct > data.WaterInOil.Alarm && engine.WIO.WioValeAct <= data.WaterInOil.UpAlarm)
                    {
                        engine.WIO.Status = XTSSensorStatus.Alarm;
                    }
                    else if (engine.WIO.WioValeAct > data.WaterInOil.UpAlarm)
                    {
                        engine.WIO.Status = XTSSensorStatus.Slowdown;
                    }
                    else
                    {
                        engine.WIO.Status = XTSSensorStatus.SensorFailureUnknown;
                    }

                    engine.WIO.Connection = true;

                    engine.WIO.WioValeAct = (uint)((double)data.WaterInOil.WaterActivity / 100);
                    engine.WIO.WioAlarm = (uint)data.WaterInOil.Alarm;
                    engine.WIO.WioUpAlarm = (uint)data.WaterInOil.UpAlarm;
                    engine.WIO.WioScaleMin = (int)data.WaterInOil.MinScale;
                    engine.WIO.WioScaleMax = (int)data.WaterInOil.MaxScale;
                }
                else
                {
                    //engine.WIO.Status = XTSSensorStatus.Disabled;
                }

                if (data.AlarmShutdownLevels != null)
                {
                    engine.AlarmThreshold = data.AlarmShutdownLevels.SensorAlarmLevel;
                    engine.SlowdownThreshold = data.AlarmShutdownLevels.SensorSlowDownLevel;
                    engine.AlarmDeviationThreshold = data.AlarmShutdownLevels.SensorAlarmDeviationLevel;
                    engine.SlowdownDeviationThreshold = data.AlarmShutdownLevels.SensorDevSlowDownLevel;
                    engine.CylinderAlarmThreshold = data.AlarmShutdownLevels.CylinderAlarmLevel;
                }

                engine.RPMLimit = data.RpmLimit;
                engine.RPM100Percent = data.Rpm100Percent;
                engine.RPM20Percent = data.Rpm20Percent;
                engine.TemperatureSensors = data.TemperatureSensors;
                engine.TemperatureBarscale = data.TemperatureBarScale;
                engine.TemperatureDevBarscale = data.TemperatureDevBarScale;
                engine.ThrustRadiaBearingStatus = data.ThrustRadiaBearingStatus;
                engine.SensorPerMainBearing = data.SensorPerMainBearing;
                engine.SensorPerCrankpinBearing = data.SensorPerCrankpinBearing;
                engine.SensorPerCrossheadBearing = data.SensorPerCrossheadBearing;
                engine.SensorPerThrustRadialBearing = data.SensorPerThrustRadialBearing;

                bearingCount = data.Cylinders + 1;

                //Check if a timing chain is fitted
                //If it include an extra bearing for the timing chain.
                if (data.LocationOfTimingChain > 0)
                {
                    bearingCount += 1;
                }

                if (data.MainBearingStatus != null)
                {
                    // Update the bearings
                    for (int i = 0; i < bearingCount; i++)
                    {
                        int tempdata = i;
                        if (data.CylinderOrderReverse == true)
                        {
                            tempdata = bearingCount - i - 1;
                        }
                        else
                        {
                            tempdata = i;
                        }
                        engine.MainBearings[i].Status = StatusToXTSSensorStatus(data.MainBearingStatus[tempdata]);
                    }
                }
                else
                {
                    foreach (XTSBearing bearing in engine.MainBearings)
                    {
                        bearing.Status = XTSSensorStatus.SensorFailureUnknown;
                    }
                }

                //Update the cylinders
                for (int i = 0; i < data.Cylinders; i++)
                {
                    //Find the cylinder
                    XTSCylinder cylinder;

                    int tempdata = i;
                    if (data.CylinderOrderReverse == true)
                    {
                        tempdata = data.Cylinders - i - 1;
                    }
                    else
                    {
                        tempdata = i;
                    }

                    cylinder = engine.Cylinders[i];

                    cylinder.Wear = data.CylinderValues[tempdata];
                    cylinder.Deviation = data.CylinderDevValues[tempdata];
                    cylinder.Status = (XTSSensorStatus)data.CylinderStatus[tempdata].Status;
                    cylinder.DeviationStatus = (XTSSensorStatus)data.CylinderDevStatus[tempdata].Status;

                    if (data.CrankpinBearingStatus != null)
                    {

                        cylinder.CrankPin = StatusToXTSSensorStatus(data.CrankpinBearingStatus[tempdata]);
                    }
                    else
                    {
                        cylinder.CrankPin = XTSSensorStatus.SensorFailureUnknown;
                    }

                    if (data.CrossHeadBearingStatus != null)
                    {

                        cylinder.CrossHead = StatusToXTSSensorStatus(data.CrossHeadBearingStatus[tempdata]);
                    }
                    else
                    {
                        cylinder.CrossHead = XTSSensorStatus.SensorFailureUnknown;
                    }

                    if ((cylinder.Sensors != null) && (cylinder.Sensors.Count == 2))
                    {
                        Int16 sensorOne;
                        Int16 sensorTwo;
                        if (data.CylinderOrderReverse == true)
                        {
                            sensorOne = (Int16)(((cylinder.Index - 1) * 2) + 1);
                            sensorTwo = (Int16)(((cylinder.Index - 1) * 2) + 0);
                            cylinder.Sensors[0].Index = 2;
                            cylinder.Sensors[1].Index = 1;
                        }
                        else
                        {
                            sensorOne = (Int16)(((cylinder.Index - 1) * 2) + 0);
                            sensorTwo = (Int16)(((cylinder.Index - 1) * 2) + 1);
                            cylinder.Sensors[0].Index = 1;
                            cylinder.Sensors[1].Index = 2;
                        }

                        //Calculate which index in the array needs to be read for
                        //this cylinders sensors
                        cylinder.Sensors[0].Wear = data.SensorValues[sensorOne];
                        cylinder.Sensors[0].Deviation = data.SensorDevValues[sensorOne];
                        cylinder.Sensors[0].Status = (XTSSensorStatus)data.SensorStatus[sensorOne].Status;
                        cylinder.Sensors[0].DeviationStatus = (XTSSensorStatus)data.SensorDevStatus[sensorOne].Status;

                        cylinder.Sensors[1].Wear = data.SensorValues[sensorTwo];
                        cylinder.Sensors[1].Deviation = data.SensorDevValues[sensorTwo];
                        cylinder.Sensors[1].Status = (XTSSensorStatus)data.SensorStatus[sensorTwo].Status;
                        cylinder.Sensors[1].DeviationStatus = (XTSSensorStatus)data.SensorDevStatus[sensorTwo].Status;
                    }
                }

                if (data.CylinderFiringOrder != null)
                {
                    for (int i = 0; i < Math.Min(data.CylinderFiringOrder.Length, engine.CylinderFiringOrder.Length); i++)
                    {
                        engine.CylinderFiringOrder[i] = data.CylinderFiringOrder[i];
                    }
                }
                
                if(data.TemperatureChannelValue.Length > 0)
                {
                    for (int i = 0; i < engine.Bearingtemperature.Count; i++)
                    {
                        //XTSBearTemperature BearingTemp;
                        engine.Bearingtemperature[i].Enable = data.Enable[i];
                        engine.Bearingtemperature[i].Temperature = data.TemperatureChannelValue[i];
                        engine.Bearingtemperature[i].Channelname = data.TemperatureChannelName[i];
                        engine.Bearingtemperature[i].TemperatureDev = data.TemperatureDevValue[i];
                        engine.Bearingtemperature[i].AlarmLevel = data.TemperatureAlarmLevel[i];
                        engine.Bearingtemperature[i].SlowdownLevel = data.TemperatureSlowdownLevel[i];

                        if (engine.Bearingtemperature[i].Enable)
                        {
                            if (data.rtdGood[i] == true)
                            {
                                if (data.TemperatureSlowdownArrary[i])
                                {
                                    engine.Bearingtemperature[i].DisplayStatus = XTSSensorStatus.Slowdown;
                                }
                                else if (data.TemperatureAlarmArrary[i])
                                {
                                    engine.Bearingtemperature[i].DisplayStatus = XTSSensorStatus.Alarm;
                                }
                                else
                                {
                                    engine.Bearingtemperature[i].DisplayStatus = XTSSensorStatus.Normal;
                                }
                                engine.Bearingtemperature[i].DisplayDevStatus = XTSSensorStatus.Normal;
                            }
                            else
                            {
                                if (engine.Bearingtemperature[i].Temperature == -400)
                                {
                                    engine.Bearingtemperature[i].DisplayStatus = XTSSensorStatus.SensorFailureNoPulse;
                                    engine.Bearingtemperature[i].DisplayDevStatus = XTSSensorStatus.SensorFailureNoPulse;
                                }
                                else if (engine.Bearingtemperature[i].Temperature == -500)
                                {
                                    engine.Bearingtemperature[i].DisplayStatus = XTSSensorStatus.SensorFailureLowLevel;
                                    engine.Bearingtemperature[i].DisplayDevStatus = XTSSensorStatus.SensorFailureLowLevel;
                                }
                                else if (engine.Bearingtemperature[i].Temperature == -600)
                                {
                                    engine.Bearingtemperature[i].DisplayStatus = XTSSensorStatus.SensorFailureHighLevel;
                                    engine.Bearingtemperature[i].DisplayDevStatus = XTSSensorStatus.SensorFailureHighLevel;
                                }
                                else if (engine.Bearingtemperature[i].Temperature == -700)
                                {
                                    engine.Bearingtemperature[i].DisplayStatus = XTSSensorStatus.SensorFailureRPMOOR;
                                    engine.Bearingtemperature[i].DisplayDevStatus = XTSSensorStatus.SensorFailureRPMOOR;
                                }
                            }                            
                        }
                        else
                        {
                            engine.Bearingtemperature[i].DisplayStatus = XTSSensorStatus.Disabled;
                            engine.Bearingtemperature[i].DisplayDevStatus = XTSSensorStatus.Disabled;
                        }                                                                       
                        
                        /*
                        if (engine.Bearingtemperature[i].TemperatureDev > data.TemperatureDevSlowdownLevel)
                        {
                            engine.Bearingtemperature[i].DisplayDevStatus= XTSSensorStatus.Slowdown;
                        }
                        else if (engine.Bearingtemperature[i].TemperatureDev > data.TemperatureDevAlarmLevel)
                        {
                            engine.Bearingtemperature[i].DisplayDevStatus = XTSSensorStatus.Alarm;
                        }
                        else
                        {
                            engine.Bearingtemperature[i].DisplayDevStatus = XTSSensorStatus.Normal;
                        }
                         * */
                    }
                }
                
            }

            lock (learn.SyncRoot)
            {
                learn.CurrentState = MapLearningData.MapEngineLearnStage(data.EngineLearnStage);
                learn.TimeRemaining = (uint)data.EngineLearningMinutesLeft;
                MapLearningData.SetLearningStateMessage(general, learn.CurrentState, learn.TimeRemaining);
            }

            lock (diagnostics.SyncRoot)
            {
                if (data.SensorsOnSPU2 != 0)
                {
                    diagnostics.SPU2Comms = data.SPUSlaveCommsOK;
                    engine.SPU2Fitted = true;
                }
                else
                {
                    diagnostics.SPU2Comms = null;
                    engine.SPU2Fitted = false;
                }

                if (data.TemperatureSensors != 0)
                {
                    diagnostics.PLCComms = data.PLCCommsOK;                    
                }
                else
                {
                    diagnostics.PLCComms = null;                    
                }

                diagnostics.CommunicationStatistics.SPUCRCErrors = (ulong)data.NumberOfCrcErrors;
                diagnostics.CommunicationStatistics.SPUReadPacketsLost = (ulong)data.NumberOfSPUReadsFailed;
                diagnostics.CommunicationStatistics.SPUWritePacketsLost = (ulong)data.NumberOfSPUWritesFailed;
                diagnostics.CommunicationStatistics.SPURetries = (ulong)data.NumberofRetries;
                diagnostics.CommunicationStatistics.SPUPacketsSent = (ulong)data.NumberOfPacketsWritten;
                diagnostics.CommunicationStatistics.SPUPacketsReceived = (ulong)data.NumbeOfPacketsReads;

                engine.DatabaseUpdating = data.DatabaseRolling;
            }

            lock (versions.SyncRoot)
            {
                if (data.RIAVersion != null)
                {
                    try
                    {
                        Version ver = new Version(data.RIAVersion);
                        // For some reason, Version parses as Maj.Min.Build.Rev, but we want Maj.Min.Rev.SVN
                        versions.RefreshRequired = ((versions.Application.Major != ver.Major) ||
                            (versions.Application.Minor != ver.Minor) ||
                            (versions.Application.Revision != ver.Build) ||
                            (versions.Application.SVN != ver.Revision));
                    }
                    catch (FormatException)
                    {
                        versions.RefreshRequired = true;
                    }
                }
                else
                {
                    versions.RefreshRequired = true;
                }
            }
        }

        /// <summary>
        /// Calculates the value to display for Water In Oil
        /// </summary>
        /// <param name="enabled">The type of water in oil reading, digital or analogue.</param>
        /// <param name="waterInOil">The water in oil returned from the core.</param>
        /// <returns>The value that should be used for water in oil.</returns>
        static public double GetWaterInOilValue(WIOEnabled enabled, WaterInOil waterInOil)
        {
            double value;
            XTSWIO.XTSWIOUnits units = GetWaterInOilUnits(waterInOil);

            if (units == XTSWIO.XTSWIOUnits.PPM)
            {
                value = waterInOil.PPM;
            }
            else if (units == XTSWIO.XTSWIOUnits.Percent)
            {
                if (waterInOil.WaterActivity > -32000)
                {
                    value = (waterInOil.WaterActivity / 100);
                }
                else
                {
                    value = waterInOil.WaterActivity;
                }
            }
            else
            {
                if (waterInOil.WaterActivity > -32000)
                {
                    if (enabled == WIOEnabled.DigitalIOEnabled)
                    {
                        value = (double)waterInOil.WaterActivity / (double)10000;
                    }
                    else if (enabled == WIOEnabled.AnalogueIOEnabled)
                    {
                        int range = waterInOil.MaxScale - waterInOil.MinScale;
                        int scaleFactor = (range / 10000);
                        value = (double)(waterInOil.WaterActivity * scaleFactor) + waterInOil.MinScale;
                    }
                    else
                    {
                        //Sensor is disabled
                        value = XTSEngine.SensorDisabled;
                    }
                }
                else
                {
                    value = waterInOil.WaterActivity;
                }
            }

            return value;
        }

        /// <summary>
        /// Gets the Units that water in oil is being reported as.
        /// </summary>
        /// <param name="waterInOil">The water in oil read from the core.</param>
        /// <returns>The units that water in oil is reported in.</returns>
        static public XTSWIO.XTSWIOUnits GetWaterInOilUnits(WaterInOil waterInOil)
        {
            XTSWIO.XTSWIOUnits units;

            switch (waterInOil.Units)
            {
                case 0:
                    units = XTSWIO.XTSWIOUnits.aW;
                    break;
                case 1:
                    units = XTSWIO.XTSWIOUnits.Percent;
                    break;
                case 2:
                    units = XTSWIO.XTSWIOUnits.PPM;
                    break;
                default:
                    units = XTSWIO.XTSWIOUnits.Error;
                    break;
            }

            return units;
        }

        /// <summary>
        /// Converts a Status of OK (0), Alarm(1), Slowdown(2) to a XTSSensorStatus
        /// </summary>
        /// <param name="status">The status to convert</param>
        /// <returns>The XTSSensorStatus</returns>
        static public XTSSensorStatus StatusToXTSSensorStatus(Int16 status)
        {
            XTSSensorStatus sensorStatus = XTSSensorStatus.SensorFailureUnknown;

            switch (status)
            {
                case 0:
                    sensorStatus = XTSSensorStatus.Normal;
                    break;
                case 1:
                    sensorStatus = XTSSensorStatus.Alarm;
                    break;
                case 2:
                    sensorStatus = XTSSensorStatus.Slowdown;
                    break;
                default:
                    sensorStatus = XTSSensorStatus.SensorFailureUnknown;
                    break;
            }

            return sensorStatus;
        }
    }
}
