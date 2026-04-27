/* 
 * MapEngineData.cs
 * 
 * This file holds the method that is used to map the diagnostic data from the web servce
 * to the correct XTS Data classes.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: GSmith, 28/03/2012
 */

using System;
using WebServiceObjects;

namespace XTS
{
    /// <summary>
    /// This class maps the diagnostic data from the web service into the XTS Data classes
    /// </summary>
    public class MapDiagnosticData
    {
        /// <summary>
        /// Maps the Diagnostics data from the web service into a XTSDiagnostics object
        /// </summary>
        /// <param name="diagnostics">The XTSDiagnostics object to map the data into</param>
        /// <param name="data">The diagnostics data from the web service</param>
        static public void DiagnosticDataToXTSData(XTSDiagnostics diagnostics, XTSVersion versions, Diagnostics data)
        {
            lock (diagnostics.SyncRoot)
            {               
                diagnostics.CommunicationStatistics.SPUCRCErrors = (ulong)data.NumberCrcErrors;
                diagnostics.CommunicationStatistics.SPUReadPacketsLost = (ulong)data.NumberSSPUReadsFailed;
                diagnostics.CommunicationStatistics.SPUWritePacketsLost = (ulong)data.NumberSPUWritesFailed;
                diagnostics.CommunicationStatistics.SPURetries = (ulong)data.NumberOfRetries;
                diagnostics.CommunicationStatistics.SPUPacketsSent = (ulong)data.NumberPacketsWritten;
                diagnostics.CommunicationStatistics.SPUPacketsReceived = (ulong)data.NumberPacketsReads;
                
                diagnostics.SystemStatus = data.Unit1SPUStatus;
                diagnostics.SPUSlowdown = data.Unit1Slowdown;
                diagnostics.SPUAlarm = data.Unit1Alarms;
                System.Diagnostics.Debug.WriteLine("Diagnostics received alarm outputs: {0} {1} {2}", data.Unit1SPUStatus, data.Unit1Alarms, data.Unit1Slowdown);

                diagnostics.SPUSDCard = data.Unit1SDCard;
                diagnostics.SPUBatteryVoltage = (double)(data.Unit1BatteryVolt / (double)1000);
                diagnostics.SPU2RPM = data.Unit2EngineSpeed;

                if (data.NumberOfSPUs == 2)
                {
                    diagnostics.SPU2Comms = data.Unit2SPUStatus;
                }
                else
                {
                    diagnostics.SPU2Comms = null;
                }

                diagnostics.LiveData.LiveDateTime.Value0 = data.DateTime[0].ToString("X");
                diagnostics.LiveData.LiveDateTime.Value1 = data.DateTime[1].ToString("X");
                diagnostics.LiveData.LiveDateTime.Value2 = data.DateTime[2].ToString("X");

                uint sensors = 2 * 14;

                for (int sensor = 0; sensor < sensors; sensor++)
                {
                    diagnostics.LiveData.Sensors[sensor].Rawua = data.RawUa[sensor];
                    diagnostics.LiveData.Sensors[sensor].ScaledValue = data.ScaledValues[sensor];
                    diagnostics.LiveData.Sensors[sensor].PreComp = data.PreComp[sensor];
                    diagnostics.LiveData.Sensors[sensor].PostComp = data.PostComp[sensor];
                    diagnostics.LiveData.Sensors[sensor].PostFiltered = data.PostFiltered[sensor];
                    diagnostics.LiveData.Sensors[sensor].Deviation = data.SensorDeviation[sensor];
                    diagnostics.LiveData.Sensors[sensor].Status1 = data.SensorStatus1[sensor];
                    diagnostics.LiveData.Sensors[sensor].Status2 = data.SensorStatus2[sensor];
                    diagnostics.LiveData.Sensors[sensor].Status3 = data.SensorStatus3[sensor];
                    diagnostics.LiveData.RPM[sensor].Value = data.RPM[sensor];
                }

                for (int cylinder = 0; cylinder < sensors / 2; cylinder++)
                {
                    diagnostics.LiveData.Cylinders[cylinder].Av = data.CylinderAv[cylinder];
                    diagnostics.LiveData.Cylinders[cylinder].Deviation = data.CylinderDeviation[cylinder];
                    diagnostics.LiveData.Cylinders[cylinder].Status1 = data.CylinderStatus1[cylinder];
                    diagnostics.LiveData.Cylinders[cylinder].Status2 = data.CylinderStatus2[cylinder];
                }

                diagnostics.LiveData.WIO.Activity = data.WIOActivty;
                diagnostics.LiveData.WIO.PPM = data.WIOPPM;
                diagnostics.LiveData.WIO.Temp = data.WIOTemp;
                diagnostics.LiveData.WIO.Status = data.WIOStatus;
                diagnostics.LiveData.SEDM.Value = data.SEDMvm;
                diagnostics.LiveData.SEDM.Status = data.SEDMStatus;
                if (diagnostics.LiveData.WIO.Status == 0) diagnostics.WioStatus = true;
                else diagnostics.WioStatus = false;

                if (diagnostics.LiveData.SEDM.Status == 0) diagnostics.SedmStatus = true;
                else diagnostics.SedmStatus = false;
            }

            //05-08-2013 FF: reverse the firmware version for master and slave SPU, data.Unit2FWVersion is for master, data.Unit1FWVersion is for slave
            lock (versions.SyncRoot)
            {
                if (versions.SPUs.Count <= 0)
                {
                    versions.SPUs.Add(SPUVersionToXTSVersion("SPU1", data.Unit1FWVersion));

                    if (data.NumberOfSPUs == 2)
                    {
                        versions.SPUs.Add(SPUVersionToXTSVersion("SPU2", data.Unit2FWVersion));
                    }
                }
                // TODO: Remove versions not listed in latest packet?  Should never happen!

                for (int i = 0; i < data.Modules.Length; i++)
                {
                    UpdateVersionInfo(data.Modules[i], data.ModuleVersions[i], versions.SoftwareModules);
                }
                UpdateVersionInfo("Web Server", data.WebServerVersion, versions.SoftwareModules);
            }
        }

        static private void UpdateVersionInfo(string moduleName, string versionInfo, XTSDataCollection<XTSVersion.XTSVersionData> versions)
        {
            // Does this version info already exist?
            XTSVersion.XTSVersionData existingVersion = null;
            foreach (XTSVersion.XTSVersionData version in versions)
            {
                if (version.Name.Equals(moduleName))
                {
                    existingVersion = version;
                    break;
                }
            }
            try
            {
                uint? rev = null;
                uint? svn = null;
                Version ver = new Version(versionInfo);
                if (ver.Build >= 0)
                {
                    rev = (uint)ver.Build;
                }
                if (ver.Revision >= 0)
                {
                    svn = (uint)ver.Revision;
                }
                XTSVersion.XTSVersionData newVersion = new XTSVersion.XTSVersionData(moduleName, (uint)ver.Major, (uint)ver.Minor, rev, svn);
                if (existingVersion == null)
                {
                    versions.Add(newVersion);
                }
                else if (!existingVersion.Equals(newVersion))
                {
                    versions.Remove(existingVersion);
                    versions.Add(newVersion);
                }
            }
            catch (FormatException)
            {
                if (existingVersion != null)
                {
                    versions.Remove(existingVersion);
                }
                versions.Add(new XTSVersion.XTSVersionData(moduleName, 1, 0, null, null, "?"));
            }
        }

        /// <summary>
        /// Converts a SPU version number into major, minor and build verion number.
        /// This function cheats and convets any alpha part from the version number into build number
        /// </summary>
        /// <param name="spuVersionNumber">The SPU version number</param>
        /// <returns></returns>
        static public XTSVersion.XTSVersionData SPUVersionToXTSVersion(string spuName, UInt16 spuVersionNumber)
        {
            XTSVersion.XTSVersionData ver = null;
            UInt16 major = 0;
            UInt16 minor = 0;

            //First byte is major
            //Second byte is minor

            byte[] bytes = BitConverter.GetBytes(spuVersionNumber);

            if (bytes != null)
            {
                if (bytes.Length != 2)
                {
                    major = bytes[0];
                }
                else
                {
                    minor = bytes[0]; 
                    major = bytes[1];                    
                }
            }

            ver = new XTSVersion.XTSVersionData(spuName, (uint)major, (uint)minor);

            return ver;
        }
    }
}
