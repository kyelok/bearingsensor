/* 
 * MapSensorSetupData.cs
 * 
 * This file holds the methods that are used to map the sensor setup data from the web servce
 * to the correct XTS Data classes.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: GSmith, 03/04/2012
 */

using System;
using System.Collections.Generic;
using WebServiceObjects;

namespace XTS
{
    public class MapSensorSetupData
    {

        static public void SensorSetupDataToXTSData(XTSEngine engine, SensorSetup sensorSetup)
        {
            XTSEngine.XTSSensorMode newMode = XTSEngine.XTSSensorMode.Unknown;
            newMode = SensorSetupModeToXTS(sensorSetup);

            lock (engine.SyncRoot)
            {
                int numberOfCylinders = sensorSetup.Sensors / 2;

                for (int i = 0; i < numberOfCylinders; i++)
                {
                    //Find the cylinder
                    XTSCylinder cylinder = engine.Cylinders[i];

                    Int16 sensorOne = (Int16)(((cylinder.Index - 1) * 2) + 0);
                    Int16 sensorTwo = (Int16)(((cylinder.Index - 1) * 2) + 1);
                    
                    if (engine.CylinderReverse == true)
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

                    int cylinderBit = (1 << ((int)(cylinder.Index - 1)));

                    if ((sensorSetup.CylinderComparison & cylinderBit) != 0)
                    {
                        cylinder.SensorComparison = true;
                    }
                    else
                    {
                        cylinder.SensorComparison = false;
                    }

                    //Default the readings to bad
                    cylinder.Sensors[0].ReadingStatus = XTSSensorRange.Bad;
                    cylinder.Sensors[1].ReadingStatus = XTSSensorRange.Bad;

                    if (((1 << sensorOne) & sensorSetup.ChannelOK) != 0)
                    {
                        cylinder.Sensors[0].ReadingStatus = XTSSensorRange.OK;
                    }

                    if (((1 << sensorOne) & sensorSetup.ChannelIdeal) != 0)
                    {
                        cylinder.Sensors[0].ReadingStatus = XTSSensorRange.Ideal;
                    }

                    if (((1 << sensorTwo) & sensorSetup.ChannelOK) != 0)
                    {
                        cylinder.Sensors[1].ReadingStatus = XTSSensorRange.OK;
                    }

                    if (((1 << sensorTwo) & sensorSetup.ChannelIdeal) != 0)
                    {
                        cylinder.Sensors[1].ReadingStatus = XTSSensorRange.Ideal;
                    }

                    cylinder.Sensors[0].Reading = sensorSetup.SensorActualValue[sensorOne];
                    cylinder.Sensors[1].Reading = sensorSetup.SensorActualValue[sensorTwo];

                    cylinder.Sensors[0].ReadingPeak = sensorSetup.SensorPeekValue[sensorOne];
                    cylinder.Sensors[1].ReadingPeak = sensorSetup.SensorPeekValue[sensorTwo];

                    // TODO: Not sure this is right?
                    cylinder.Sensors[0].PreComp  = sensorSetup.MicronCurrentVal[sensorOne];
                    cylinder.Sensors[1].PreComp = sensorSetup.MicronCurrentVal[sensorTwo];

                    cylinder.Sensors[0].PreCompPeak = sensorSetup.PreCompensation[sensorOne];
                    cylinder.Sensors[1].PreCompPeak = sensorSetup.PreCompensation[sensorTwo];

                    XTSEngine.XTSSensorTarget target = new XTSEngine.XTSSensorTarget();
                    target.OKHigh = sensorSetup.OkBandMax;
                    target.OKLow = sensorSetup.OkBandMin;
                    target.IdealHigh = sensorSetup.IdleBandMax;
                    target.IdealLow = sensorSetup.IdleBandMin;

                    engine.SensorTarget = target;


                    for (int j = 0; j < Math.Min(sensorSetup.FiringOrder.Length,engine.CylinderFiringOrder.Length); j++)
                    {
                        engine.CylinderFiringOrder[j] = sensorSetup.FiringOrder[j];
                    }
                }

                if (engine.SensorMode != newMode)
                {
                    engine.SensorMode = newMode;
                }
            }

            engine.CylinderFiringOrderUpdated();
        }

        public static XTSEngine.XTSSensorMode SensorSetupModeToXTS(SensorSetup sensorSetup)
        {
            if (sensorSetup.DCMode > 0)
            {
                if (sensorSetup.DCPeakHold > 0)
                {
                    // We are in DC mode with a peak hold
                    return XTSEngine.XTSSensorMode.DCPeakHold;
                }
                return XTSEngine.XTSSensorMode.DCMode;
            }
            return XTSEngine.XTSSensorMode.PulseMode;
        }
    }
 }
