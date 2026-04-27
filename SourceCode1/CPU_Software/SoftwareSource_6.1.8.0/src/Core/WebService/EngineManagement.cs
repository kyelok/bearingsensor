/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Text;
using AMOTConstants;
using Configuration;
using DataCollectionSDK;
using EventLogging;
using HelperClasses;
using WebServiceObjects;
using Modbus;
using System.Configuration;
using System.Diagnostics;
using Ionic.Zip;

namespace WebService
{
    /// <summary>
    /// Responsible for performing engine operations
    /// </summary>
    class EngineManagement
    {
        /// <summary>
        /// The value to use when there has been a SPUComms failure
        /// </summary>
        const Int16 SPUCommsError = (Int16)(-32766);

        /// <summary>
        /// Configuration object for the Data Retriever
        /// </summary>
        private WebServiceConfiguration dataRetrieverConfiguration;

        /// <summary>
        /// Address of the modbus slave
        /// </summary>
        private byte ModbusSlaveId;

        /// <summary>
        /// Database retriever
        /// </summary>
        private DataRetriever dataRetriever;

        /// <summary>
        /// Alarms management
        /// </summary>
        private Alarms alarmsManager;

        /// <summary>
        /// Tempearture alarms output to IFU
        /// </summary>        
        private bool healthset = false;
        private bool alarmset = false;
        private bool slowdownset = false;

        /// <summary>
        /// Event log
        /// </summary>
        private EventLogging.EventLog eventLog;

        private EngineData previousEngineData = null;
        private EngineData currentEngineData = null;

        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);


        SensorCalibrationAndSetup setupCalibrationAndSetup;

        SensorReplacementPluginConfigSection sensorReplacementConfiguration;
        TemperaturePluginConfigSection temperaturePluginConfiguration;

        /// <summary>
        /// Internal Modbus connection
        /// </summary>
        // TODO: RENAME THIS TO MODBUS!!
        public ModbusSDK ModbusInternal
        {
            get
            {
                return mobusInternal_Internal;
            }
        }

        /// <summary>
        /// External modbus connection
        /// </summary>

        public ModbusSDK ModbusExternal
        {
            get
            {
                return mobusInternal_External;
            }
        }

        /// <summary>
        /// Internal Modbus connection. Do not use this directly.
        /// </summary>
        private ModbusSDK mobusInternal_Internal;

        /// <summary>
        /// External Modbus connection. Do not use this directly.
        /// </summary>
        private ModbusSDK mobusInternal_External;

        private ModbusSDK engineDataConnection;

        private ModbusSDK engineDataNCConnection;

        int eventLogsPerRequest = 100;        

        private static string riaVersion = null;
        /// <summary>
        /// The version of the client app.
        /// </summary>
        public static string RIAVersion
        {
            get
            {
                return EngineManagement.riaVersion;
            }
        }

        /// <summary>
        /// Constructor
        /// </summary>
        public EngineManagement()
        {
            ModuleConfiguration configuration = ModuleConfiguration.GetApplicationConfiguration();
            DataCollectionConfigurationSection dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;
            dataRetrieverConfiguration = configuration.GetSection("WebService") as WebServiceConfiguration;
            sensorReplacementConfiguration = configuration.GetSection("SensorReplacementPlugin") as SensorReplacementPluginConfigSection;
            temperaturePluginConfiguration = configuration.GetSection("TemperaturePlugin") as TemperaturePluginConfigSection;

            if (dataCollectionConfig == null)
                dataCollectionConfig = new DataCollectionConfigurationSection();
            if (dataRetrieverConfiguration == null)
                dataRetrieverConfiguration = new WebServiceConfiguration();
            if (sensorReplacementConfiguration == null)
                sensorReplacementConfiguration = new SensorReplacementPluginConfigSection();
            if (temperaturePluginConfiguration == null)
                temperaturePluginConfiguration = new TemperaturePluginConfigSection();

            mobusInternal_Internal = new ModbusSDK(ModbusSDK.ModbusPort.Internal);
            mobusInternal_External = new ModbusSDK(ModbusSDK.ModbusPort.External);
            engineDataConnection = new ModbusSDK(ModbusSDK.ModbusPort.Internal);
            engineDataNCConnection = new ModbusSDK(ModbusSDK.ModbusPort.Internal);

            ModbusSlaveId = (byte)dataCollectionConfig.Mobus.ModbusSlaveUnitId;

            dataRetriever = new DataRetriever();
            eventLog = new EventLogging.EventLog();
            alarmsManager = new Alarms();

            eventLogsPerRequest = dataCollectionConfig.Database.LogsPerRequest;

            if (EngineManagement.riaVersion == null)
            {
                FileInfo riaLocation = new FileInfo(dataCollectionConfig.Database.RIALocation);
                string tempLocation = dataCollectionConfig.Database.TempFolder;
                if (riaLocation.Exists)
                {
                    try
                    {
                        File.Delete(tempLocation + "\\XTS.dll");
                    }
                    catch (Exception)
                    {
                        log.InfoFormat("Could not or no xts.dll to delete");
                    }

                    using (ZipFile zip = new ZipFile(riaLocation.FullName))
                    {
                        zip.ExtractSelectedEntries("XTS.dll", "\\", tempLocation, ExtractExistingFileAction.OverwriteSilently);
                        FileInfo extractedFile = new FileInfo(tempLocation + "\\XTS.dll");
                        if (extractedFile.Exists)
                        {
                            Assembly ria = Assembly.LoadFile(extractedFile.FullName);
                            if (ria.FullName != null)
                            {
                                string assemblyVersion = ria.FullName.Split(',')[1];
                                EngineManagement.riaVersion = assemblyVersion.Split('=')[1];
                            }
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Stores the configuration into the database
        /// </summary>
        /// <param name="configuration">The configuration to store.</param>
        public void SetTrendConfiguration(TrendConfiguration configuration)
        {
            dataRetriever.SetTrendConfiguration(configuration);
        }

        /// <summary>
        /// Gets a trend configuration for the slot passed in.
        /// </summary>
        /// <param name="slot">The slot to get the trend configuration for.</param>
        /// <returns>The trend configuraiton stored in the slot</returns>
        public TrendConfiguration GetTrendConfiguration(uint slot)
        {
            return dataRetriever.GetTrendConfiguration(slot);
        }


        /// <summary>
        /// Stores the temperature configuration into the database
        /// </summary>
        /// <param name="configuration">The configuration to store.</param>
        public void SetTemperatureConfiguration(TemperatureConfiguration configuration)
        {
            dataRetriever.SetTemperatureConfiguration(configuration);
        }        

        /// <summary>
        /// Returns the live engine data that should not be cached
        /// </summary>
        /// <returns>The live engine data</returns>
        public EngineDataNonCached GetLiveEngineDataNC()
        {
            EngineDataNonCached engineData = new EngineDataNonCached();
            if (TemperatureGloabal.LostCommunicationSpu == false)
            {
                using (TimedLock.Lock(engineDataNCConnection.syncRoot, TimeSpan.FromMinutes(2)))
                {
                    ushort[] spuData = engineDataNCConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.NumberOfSensors, 3);

                    //Get SPU alarm outputs
                    spuData = engineDataNCConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)AMOTConstants.ModbusConstants.SPUDigitalOutput1, 3);
                    log.InfoFormat("EngineManagement: Read Digital Outputs {0} {1} {2}", spuData[0], spuData[1], spuData[2]);

                    engineData.SPUDigitalOutputs = new bool[spuData.Length];

                    for (int i = 0; i < spuData.Length; i++)
                    {
                        if (spuData[i] == 1)
                        {
                            engineData.SPUDigitalOutputs[i] = true;
                        }
                        else
                        {
                            engineData.SPUDigitalOutputs[i] = false;
                        }
                    }
                }
            }
            return engineData;
        }

        /// <summary>
        /// Returns the live engine data
        /// </summary>
        /// <returns>The live engine data</returns>
        public EngineData GetLiveEngineData()
        {

            EngineData engineData = new EngineData();

            ushort[] spuData;
            ushort[] wioScale = new ushort[3];
            ushort[] wioAlarm = new ushort[2];

            //Set defaults
            engineData.BarGraphDeviation = 1000;
            engineData.BarGraphWear = 1000;

            /*
            try
            {
                dataRetriever.GetTemperatureSettings(out engineData.TemperatureSensors, out engineData.TemperatureBarScale, out engineData.TemperatureDevBarScale);
            }
            catch (Exception e)
            {
                log.InfoFormat("Caught exception {0} getting graph scale", e.Message);
            }
            */
            engineData.TemperatureSensors = TemperatureGloabal.SensorNumber;
            engineData.TemperatureBarScale = TemperatureGloabal.GraphScale;
            engineData.TemperatureDevBarScale = TemperatureGloabal.DevGraphScale;
            engineData.TemperatureBarScaleAlarm = temperaturePluginConfiguration.Settings.TemperatureAlarm;
            engineData.TemperatureBarScaleSlowdown = temperaturePluginConfiguration.Settings.TemperatureSlowdown;

            engineData.Id = new int[engineData.TemperatureSensors];
            engineData.Enable = new bool[engineData.TemperatureSensors];
            engineData.rtdGood = new bool[engineData.TemperatureSensors];
            engineData.TemperatureChannelName = new string[engineData.TemperatureSensors];
            engineData.TemperatureChannelValue = new short[engineData.TemperatureSensors];
            engineData.TemperatureDevValue = new short[engineData.TemperatureSensors];
            engineData.TemperatureAlarmArrary = new bool[engineData.TemperatureSensors];
            engineData.TemperatureSlowdownArrary = new bool[engineData.TemperatureSensors];
            engineData.TemperatureAlarmLevel = new short[engineData.TemperatureSensors];
            engineData.TemperatureSlowdownLevel = new short[engineData.TemperatureSensors];            

            engineData.EventLogsPerRequest = eventLogsPerRequest;

            //read the engine reverse flag from configuration file
            engineData.CylinderOrderReverse = ReadCylinderOrder();                                       

            try
            {
                try
                {
                    //Read the sensor values from the database
                    dataRetriever.GetBarGraphScale(out engineData.BarGraphWear, out engineData.BarGraphDeviation);
                }
                catch (Exception e)
                {
                    log.InfoFormat("Caught exception {0} getting graph scale", e.Message);
                }

                //Read the SPU config from the configuration database
                try
                {
                    engineData.DatabaseRolling = ReportGlobal.DatabaseRolling;
                    engineData.SerialNumber = dataRetriever.ReadSerialNumber();

                    engineData.TotalSensors = dataRetriever.ReadSPUConfiguration((ushort)ModbusConstants.NumberOfSensors);
                    engineData.SensorsOnSPU1 = engineData.SensorsOnSPU1 = dataRetriever.ReadSPUConfiguration((ushort)ModbusConstants.NumberOfSensorsSPU1);
                    engineData.SensorsOnSPU2 = dataRetriever.ReadSPUConfiguration((ushort)ModbusConstants.NumberOfSensorsSPU2);
                    engineData.LocationOfTimingChain = (short)dataRetriever.ReadSPUConfiguration((ushort)ModbusConstants.CrankcaseSplitDamageMonitoring);
                    engineData.WIOEnabled = (WIOEnabled)dataRetriever.ReadSPUConfiguration((ushort)ModbusConstants.WIOEnabled);
                    engineData.CPPEnabled = (CPPEnabled)dataRetriever.ReadSPUConfiguration((ushort)ModbusConstants.CPPEnable);
                    engineData.SLEMEnabled = (SLEMEnabled)dataRetriever.ReadSPUConfiguration((ushort)ModbusConstants.SLEMEnable);
                    engineData.SlemAlarmLevel = (short)dataRetriever.ReadSPUConfiguration((ushort)ModbusConstants.SLEMAlarmLevelMV);
                    engineData.MaximumTrendRPM = (short)dataRetriever.ReadSPUConfiguration((ushort)ModbusConstants.TrendGraphMaximumValue);
                    engineData.RpmLimit = dataRetriever.ReadSPUConfiguration((ushort)ModbusConstants.RPMLimit);
                    wioScale[0] = dataRetriever.ReadSPUConfiguration((ushort)ModbusConstants.WIOScaledMin);
                    wioScale[1] = dataRetriever.ReadSPUConfiguration((ushort)ModbusConstants.WIOScaledMax);
                    wioScale[2] = dataRetriever.ReadSPUConfiguration((ushort)ModbusConstants.WIOUnits);
                    wioAlarm[0] = dataRetriever.ReadSPUConfiguration((ushort)ModbusConstants.WIOAlarm);
                    wioAlarm[1] = dataRetriever.ReadSPUConfiguration((ushort)ModbusConstants.WIOUpperAlarm);

                    ushort[] spuDigitalOutput = engineDataNCConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)AMOTConstants.ModbusConstants.SPUDigitalOutput1, 3);                   
                }
                catch (KeyNotFoundException)
                {
                    //No configuration found fallback to reading values from the SPU.
                    using (TimedLock.Lock(engineDataConnection.syncRoot, TimeSpan.FromMinutes(2)))
                    {
                        spuData = engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.NumberOfSensors, 3);
                        engineData.TotalSensors = spuData[0];
                        engineData.SensorsOnSPU1 = spuData[1];
                        engineData.SensorsOnSPU2 = spuData[2];
                        engineData.LocationOfTimingChain = (short)engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.CrankcaseSplitDamageMonitoring, 1)[0];
                        engineData.WIOEnabled = (WIOEnabled)engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.WIOEnabled, 1)[0];
                        engineData.SLEMEnabled = (SLEMEnabled)engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.SLEMEnable, 1)[0];
                        engineData.CPPEnabled = (CPPEnabled)engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.CPPEnable, 1)[0];
                        engineData.SlemAlarmLevel = (short)engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.SLEMAlarmLevelMV, 1)[0];
                        engineData.MaximumTrendRPM = (short)engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.TrendGraphMaximumValue, 1)[0];
                        engineData.RpmLimit = (short)engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.RPMLimit, 1)[0];
                        wioScale = engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.WIOScaledMin, 3);
                        wioAlarm = engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.WIOUpperAlarm, 2);
                    }
                }
            }
            catch (SlaveException)
            {
                //No SPU configured in the database
                //and the SPU is not reposinding to requests.
                //Mark the data as not live
                    engineData.LiveData = false;
                }

            try
            {
                if (engineData.TotalSensors != 0)
                {
                    engineData.Cylinders = engineData.TotalSensors / 2;
                    using (TimedLock.Lock(ModbusExternal.syncRoot,TimeSpan.FromMinutes(2)))
                    {
                        engineData.SensorStatus = this.GetCalculatedStatusWordObject(ModbusExternal, dataRetrieverConfiguration.Settings.SensorStatusBaseReg, (ushort)(engineData.TotalSensors * 2));
                        engineData.SensorDevStatus = this.GetCalculatedStatusWordObject(ModbusExternal, dataRetrieverConfiguration.Settings.SensorDevStatusBaseReg, (ushort)(engineData.TotalSensors * 2));
                        engineData.CylinderStatus = this.GetCalculatedStatusWordObject(ModbusExternal, dataRetrieverConfiguration.Settings.CylinderStatusBaseReg, (ushort)engineData.Cylinders);
                        engineData.CylinderDevStatus = this.GetCalculatedStatusWordObject(ModbusExternal, dataRetrieverConfiguration.Settings.CylinderDevStatusBaseReg, (ushort)engineData.Cylinders);
                        engineData.SLEMStatus = this.GetCalculatedStatusWordObject(ModbusExternal, dataRetrieverConfiguration.Settings.SLEMStatusBaseReg, dataRetrieverConfiguration.Settings.SLEMStatusCount)[0];
                        engineData.WIOActivityStatus = this.GetCalculatedStatusWordObject(ModbusExternal, dataRetrieverConfiguration.Settings.WIOActivityStatusBaseReg, dataRetrieverConfiguration.Settings.WIOActivityStatusCount)[0];
                   }

                    using (TimedLock.Lock(engineDataConnection.syncRoot, TimeSpan.FromMinutes(2)))
                    {
                        engineData.AlarmShutdownLevels = this.GetAlarmShutdownLevelsObject(engineDataConnection);
                        engineData.CylinderValues = DataRetriever.ToInt16Array(engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.CylinderAverages, (ushort)engineData.Cylinders));
                        engineData.CylinderDevValues = DataRetriever.ToInt16Array(engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.CylinderDeviations, (ushort)engineData.Cylinders));
                        engineData.SensorValues = DataRetriever.ToInt16Array(engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.EndResultValues, (ushort)engineData.TotalSensors));
                        engineData.SensorDevValues = DataRetriever.ToInt16Array(engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.SensorDeviationValues, (ushort)engineData.TotalSensors));
                    }

                    if (engineData.SLEMEnabled == SLEMEnabled.Enabled)
                    {
                        using (TimedLock.Lock(engineDataConnection.syncRoot, TimeSpan.FromMinutes(2)))
                        {
                            engineData.SLEM = (short)engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.SLEMValue, 1)[0];
                        }
                    }
                    else
                    {
                        engineData.SLEM = 0;
                    }

                    if (engineData.CPPEnabled == CPPEnabled.Enabled)
                    {
                        using (TimedLock.Lock(engineDataConnection.syncRoot, TimeSpan.FromMinutes(2)))
                        {
                            engineData.CPPmA = (short)engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.CPPmA, 1)[0];
                            engineData.CPPPercent = (short)engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.CPPPercent, 1)[0];
                        }
                    }
                    else
                    {
                        engineData.CPPmA = 0;
                        engineData.CPPPercent = 0;
                    }

                    if (engineData.WIOEnabled != WIOEnabled.Disabled)
                    {
                        using (TimedLock.Lock(engineDataConnection.syncRoot, TimeSpan.FromMinutes(2)))
                        {
                            UInt16[] wio = engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.WIOActivity, 4);

                            engineData.WaterInOil = new WaterInOil
                            {
                                WaterActivity = (Int16)wio[0],
                                PPM = (Int16)wio[1],
                                Temp = (Int16)wio[2],
                                MinScale = (Int16)wioScale[0],
                                MaxScale = (Int16)wioScale[1],
                                Units = (Int16)wioScale[2],
                                UpAlarm = (Int16)wioAlarm[0],
                                Alarm = (Int16)wioAlarm[1]
                            };
                        }
                    }
                    else
                    {
                        engineData.WaterInOil = null;
                    }

                    using (TimedLock.Lock(engineDataConnection.syncRoot, TimeSpan.FromMinutes(2)))
                    {
                        engineData.RunTime = ModbusSDK.ModbusToUInt32(engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.EngineRunTime, 2));
                        engineData.RpmModal = engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.ModalRpm, 1)[0];
                        engineData.RpmChecked = engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.CheckedRpm, 1)[0];

                        engineData.EngineDirection = (short)engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.ForwardAstern, 1)[0];
                        engineData.Rpm20Percent = (short)engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.Engine20PercentSpeedPoint, 1)[0];
                        engineData.Rpm100Percent = (short)engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.NominalEngineSpeed, 1)[0];
                        engineData.EngineLearnStage = (short)engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.CalibrationStage, 1)[0];
                        engineData.EngineLearningMinutesLeft = (short)engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.LearningTimeLeft, 1)[0];

                        engineData.CylinderFiringOrder = DataRetriever.ToInt16Array(engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.FiringOrderRegisters, 7));

                        for (int i = 0; i < engineData.CylinderFiringOrder.Length; i++)
                        {
                            engineData.CylinderFiringOrder[i] = (short)((engineData.CylinderFiringOrder[i] / 2) + 1);
                        }

                        //Get SPU 2 comms
                        spuData = engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)AMOTConstants.ModbusConstants.AlarmStructure, 1);

                        //Test bit 0
                        if ((spuData[0] & (1 << 0)) != 0)
                        {
                            engineData.SPUSlaveCommsOK = false;
                        }
                        else
                        {
                            engineData.SPUSlaveCommsOK = true;
                        }

                        // Get the WIO comms error value.  Register not in AMOTConstants.ModbusConstants
                        spuData = engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)476, 1);

                        engineData.WIOCommsErrorValue = (short)spuData[0];
                    }

                    //Get the bearing states
                    try
                    {
                        using (TimedLock.Lock(engineDataConnection.syncRoot, TimeSpan.FromMinutes(2)))
                        {
                            engineData.MainBearingStatus = DataRetriever.ToInt16Array(engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)513, 16));
                            engineData.CrossHeadBearingStatus = DataRetriever.ToInt16Array(engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)529, 14));
                            engineData.CrankpinBearingStatus = DataRetriever.ToInt16Array(engineDataConnection.ReadHoldingRegisters(ModbusSlaveId, (ushort)543, 14));
                        }
                    }
                    catch (Exception e)
                    {
                        if (e is SlaveException || e is TimeoutException || e is LockTimeoutException)
                        {
                            engineData.MainBearingStatus = null;
                            engineData.CrossHeadBearingStatus = null;
                            engineData.CrankpinBearingStatus = null;
                        }
                        else
                        {
                            throw;
                        }
                    }

                    CommStats stats;
                    try
                    {
                        stats = dataRetriever.GetCommsStats();
                    }
                    catch (Exception)
                    {
                        stats = new CommStats();
                        stats.CrcErrors = 0;
                        stats.FailedWrites = 0;
                        stats.FailedReads = 0;
                        stats.PacketsWritten = 0;
                        stats.PacketsRead = 0;
                        stats.Retries = 0;
                    }

                    engineData.NumberOfCrcErrors = stats.CrcErrors;
                    engineData.NumberOfSPUReadsFailed = stats.FailedReads;
                    engineData.NumberOfSPUWritesFailed = stats.FailedWrites;
                    engineData.NumberOfPacketsWritten = stats.PacketsWritten;
                    engineData.NumbeOfPacketsReads = stats.PacketsRead;
                    engineData.NumberofRetries = stats.Retries;

                    //Store away this good engine data for use next time in
                    //case of Modbus errors
                    previousEngineData = engineData;
                    engineData.LiveData = true;

                }
            }
            catch (Exception e)
            {
                if (e is SlaveException || e is TimeoutException || e is LockTimeoutException)
                {
                    //A modbus error occured
                    //Return the previousEngineData
                        if (previousEngineData != null)
                        {
                            engineData = previousEngineData;
                        }

                        if (engineData != null)
                        {
                            engineData.LiveData = false;
                        }
                    }
                    else
                    {
                    throw;
                }
            }

            //log.ErrorFormat("channel name - {0}", dataRetriever.ReadchannelName(1));
            try
            {
                int totalMainbearing = 0;
                int totalMainbearingSensor = 0;
                int totalCrossheadbearingSensor = TemperatureGloabal.CrossheadbearingNumber * engineData.Cylinders;
                int totalCrankpinbearingSensor = TemperatureGloabal.CrankpinbearingNumber * engineData.Cylinders;

                //check how many main bearings since SPU does not provide this number, we have to calculate based on cylinder number and timing chain location
                //Timing chain location must be between first and last cylinder. For instance if engine has 6 cylinder, if existing timing chain location must be 1, 2, 3, 4 or 5
                if (engineData.LocationOfTimingChain > 0 && engineData.LocationOfTimingChain < engineData.Cylinders)
                {
                    totalMainbearing = engineData.Cylinders + 2;
                }
                else
                {
                    totalMainbearing = engineData.Cylinders + 1;
                }

                totalMainbearingSensor = TemperatureGloabal.MainbearingNumber * totalMainbearing;

                engineData.ThrustRadiaBearingStatus = 0;

                //deal with bearing status for BTM
                if (engineData.MainBearingStatus == null)
                {
                    engineData.MainBearingStatus = new short[16];
                    for (int bearing = 0; bearing < engineData.MainBearingStatus.Length; bearing++) engineData.MainBearingStatus[bearing] = 0;
                }
                if (engineData.CrossHeadBearingStatus == null)
                {
                    engineData.CrossHeadBearingStatus = new short[14];
                    for (int bearing = 0; bearing < engineData.CrossHeadBearingStatus.Length; bearing++) engineData.CrossHeadBearingStatus[bearing] = 0;
                }
                if (engineData.CrankpinBearingStatus == null)
                {
                    engineData.CrankpinBearingStatus = new short[14];
                    for (int bearing = 0; bearing < engineData.CrankpinBearingStatus.Length; bearing++) engineData.CrankpinBearingStatus[bearing] = 0;
                }               

                engineData.PLCCommsOK = !(TemperatureGloabal.LostCommunicationPlc);
                if (engineData.PLCCommsOK)
                {
                    for (ushort tempChannel = 0; tempChannel < engineData.TemperatureSensors; tempChannel++)
                    {
                        //Read temperature from database
                        engineData.Id[tempChannel] = tempChannel;
                        engineData.Enable[tempChannel] = dataRetriever.ReadchannelEnable(tempChannel);
                        engineData.rtdGood[tempChannel] = dataRetriever.ReadchannelRtd(tempChannel);
                        engineData.TemperatureChannelName[tempChannel] = dataRetriever.ReadchannelName(tempChannel);
                        engineData.TemperatureAlarmLevel[tempChannel] = dataRetriever.ReadTemperatureGeneral(tempChannel, "alarmLevel");
                        engineData.TemperatureSlowdownLevel[tempChannel] = dataRetriever.ReadTemperatureGeneral(tempChannel, "slowdownLevel");

                        if (TemperatureGloabal.Temperature != null)
                        {
                            engineData.TemperatureChannelValue[tempChannel] = (short)TemperatureGloabal.Temperature[tempChannel];           
                            //engineData.TemperatureChannelValue[tempChannel] = dataRetriever.ReadTemperature(tempChannel);
                            engineData.TemperatureDevValue[tempChannel] = dataRetriever.ReadTemperatureGeneral(tempChannel, "temperatureDev");
                        }
                        else
                        {
                            engineData.TemperatureChannelValue[tempChannel] = 0;
                            engineData.TemperatureDevValue[tempChannel] = 0;
                        }

                        if (TemperatureGloabal.AlarmListLiveEngine != null)
                        {
                            engineData.TemperatureAlarmArrary[tempChannel] = TemperatureGloabal.AlarmListLiveEngine[tempChannel];
                        }
                        else
                        {
                            engineData.TemperatureAlarmArrary[tempChannel] = false;
                        }

                        if (TemperatureGloabal.SlowdownListLiveEngine != null)
                        {
                            engineData.TemperatureSlowdownArrary[tempChannel] = TemperatureGloabal.SlowdownListLiveEngine[tempChannel];
                        }
                        else
                        {
                            engineData.TemperatureSlowdownArrary[tempChannel] = false;
                        }

                        //Deal with bearing status as temperature changes
                        engineData.SensorPerMainBearing = TemperatureGloabal.MainbearingNumber;

                        //one sensor for one main bearing
                        if (TemperatureGloabal.MainbearingNumber == 1)
                        {
                            if (tempChannel < totalMainbearingSensor)
                            {
                                 if(engineData.TemperatureSlowdownArrary[tempChannel] == true)
                                 {
                                     engineData.MainBearingStatus[tempChannel] &= 2;
                                     engineData.MainBearingStatus[tempChannel] |= 2;
                                 }
                                 else if (engineData.TemperatureAlarmArrary[tempChannel] == true)
                                 {
                                     if (engineData.MainBearingStatus[tempChannel] < 1)
                                     {
                                         engineData.MainBearingStatus[tempChannel] |= 1;
                                     }
                                 }                                 
                            }
                        }
                            //two sensors for one main bearing
                        else if (TemperatureGloabal.MainbearingNumber == 2)
                        {                           
                            if (tempChannel < totalMainbearingSensor)
                            {
                                if (engineData.TemperatureSlowdownArrary[tempChannel] == true)
                                {
                                    engineData.MainBearingStatus[tempChannel / 2] &= 2;
                                    engineData.MainBearingStatus[tempChannel / 2] |= 2;
                                }
                                else if (engineData.TemperatureAlarmArrary[tempChannel] == true)
                                {
                                    if (engineData.MainBearingStatus[tempChannel / 2] < 1)
                                    {
                                        engineData.MainBearingStatus[tempChannel / 2] |= 1;
                                    }
                                }                                
                            }
                        }

                       engineData.SensorPerCrankpinBearing = TemperatureGloabal.CrankpinbearingNumber;

                        //one sensor for one crankpin bearing
                        if (TemperatureGloabal.CrankpinbearingNumber == 1)
                        {
                            if (tempChannel >= totalMainbearingSensor && tempChannel < (totalMainbearingSensor + totalCrankpinbearingSensor))
                            {
                                if (engineData.TemperatureSlowdownArrary[tempChannel] == true)
                                {
                                    engineData.CrankpinBearingStatus[tempChannel - totalMainbearingSensor] &= 2;
                                    engineData.CrankpinBearingStatus[tempChannel - totalMainbearingSensor] |= 2;
                                }
                                else if (engineData.TemperatureAlarmArrary[tempChannel] == true)
                                {
                                    if (engineData.CrankpinBearingStatus[tempChannel - totalMainbearingSensor] < 1)
                                    {
                                        engineData.CrankpinBearingStatus[tempChannel - totalMainbearingSensor] |= 1;
                                    }
                                }                               
                            }
                        }
                        //two sensors for one crankpin bearing
                        else if (TemperatureGloabal.CrankpinbearingNumber == 2)
                        {
                            if (tempChannel >= totalMainbearingSensor && tempChannel < (totalMainbearingSensor + totalCrankpinbearingSensor))
                            {
                                if (engineData.TemperatureSlowdownArrary[tempChannel] == true)
                                {
                                    engineData.CrankpinBearingStatus[(tempChannel - totalMainbearingSensor) / 2] &= 2;
                                    engineData.CrankpinBearingStatus[(tempChannel - totalMainbearingSensor) / 2] |= 2;
                                }
                                else if (engineData.TemperatureAlarmArrary[tempChannel] == true)
                                {
                                    if (engineData.CrankpinBearingStatus[(tempChannel - totalMainbearingSensor) / 2] < 1)
                                    {
                                        engineData.CrankpinBearingStatus[(tempChannel - totalMainbearingSensor) / 2] |= 1;
                                    }
                                }                               
                            }
                        }

                        engineData.SensorPerCrossheadBearing = TemperatureGloabal.CrossheadbearingNumber;

                        //one sensor for one crosshead bearing
                        if (TemperatureGloabal.CrossheadbearingNumber == 1)
                        {
                            if (tempChannel >= (totalMainbearingSensor + totalCrankpinbearingSensor) && tempChannel < (totalMainbearingSensor + totalCrankpinbearingSensor + totalCrossheadbearingSensor))
                            {
                                if (engineData.TemperatureSlowdownArrary[tempChannel] == true)
                                {
                                    engineData.CrossHeadBearingStatus[tempChannel - totalMainbearingSensor - totalCrankpinbearingSensor] &= 2;
                                    engineData.CrossHeadBearingStatus[tempChannel - totalMainbearingSensor - totalCrankpinbearingSensor] |= 2;
                                }
                                else if (engineData.TemperatureAlarmArrary[tempChannel] == true)
                                {
                                    if (engineData.CrossHeadBearingStatus[tempChannel - totalMainbearingSensor - totalCrankpinbearingSensor] <= 1)
                                    {
                                        engineData.CrossHeadBearingStatus[tempChannel - totalMainbearingSensor - totalCrankpinbearingSensor] |= 1;
                                    }
                                }                                
                            }
                        }
                        //two sensors for one crosshead bearing
                        else if (TemperatureGloabal.CrossheadbearingNumber == 2)
                        {
                            if (tempChannel >= (totalMainbearingSensor + totalCrankpinbearingSensor) && tempChannel < (totalMainbearingSensor + totalCrankpinbearingSensor + totalCrossheadbearingSensor))
                            {
                                if (engineData.TemperatureSlowdownArrary[tempChannel] == true)
                                {
                                    engineData.CrossHeadBearingStatus[(tempChannel - totalMainbearingSensor - totalCrankpinbearingSensor) / 2] &= 2;
                                    engineData.CrossHeadBearingStatus[(tempChannel - totalMainbearingSensor - totalCrankpinbearingSensor) / 2] |= 2;
                                }
                                else if (engineData.TemperatureAlarmArrary[tempChannel] == true)
                                {
                                    if (engineData.CrossHeadBearingStatus[(tempChannel - totalMainbearingSensor - totalCrankpinbearingSensor) / 2] < 1)
                                    {
                                        engineData.CrossHeadBearingStatus[(tempChannel - totalMainbearingSensor - totalCrankpinbearingSensor) / 2] |= 1;
                                    }
                                }                                
                            }
                        }

                        if (tempChannel > (totalMainbearingSensor + totalCrankpinbearingSensor + totalCrossheadbearingSensor))
                        {
                            engineData.SensorPerThrustRadialBearing = 2;
                        }
                        else if (tempChannel == (totalMainbearingSensor + totalCrankpinbearingSensor + totalCrossheadbearingSensor))
                        {
                            engineData.SensorPerThrustRadialBearing = 1;
                        }
                        else
                        {
                            engineData.SensorPerThrustRadialBearing = 0;
                        }

                        if (tempChannel >= (totalMainbearingSensor + totalCrankpinbearingSensor + totalCrossheadbearingSensor))
                        {
                            if (engineData.TemperatureSlowdownArrary[tempChannel] == true)
                            {
                                engineData.ThrustRadiaBearingStatus |= 2;
                            }
                            else if (engineData.TemperatureAlarmArrary[tempChannel] == true)
                            {
                                engineData.ThrustRadiaBearingStatus |= 1;
                            }
                            else
                            {
                                engineData.ThrustRadiaBearingStatus = 0;
                            }
                        }
                    }

                    previousEngineData = engineData;
                }
                else
                {
                    engineData = previousEngineData;
                }
            }
            catch (Exception e)
            {
                log.InfoFormat("Caught exception {0} getting temperature settings", e.Message);
            }

            if (engineData != null)
            {
                engineData.DateTime = new DateTimeObject(DateTime.UtcNow);
                engineData.RIAVersion = EngineManagement.RIAVersion;
                engineData.faults = GetFaults();
                engineData.ActiveFault = FaultErrorIndicators.Faults.Instance.AnyFaultsSignaled();
                dataRetriever.SetWioConfiguration(engineData.WIOEnabled);
            }

            return engineData;
        }

        /// <summary>
        /// Returns the engine alarms
        /// </summary>
        /// <returns>The engine alarms</returns>
        public EngineAlarm[] GetEngineAlarms()
        {
            List<AlarmDatabaseObject> activeAlarms = this.alarmsManager.GetActiveAlarms(null, true);
            List<EngineAlarm> engineAlarms = new List<EngineAlarm>();
            foreach (AlarmDatabaseObject alarm in activeAlarms)
            {
                EngineAlarm engineAlarm = new EngineAlarm();
                engineAlarm.AlarmId = alarm.AlarmId;
                engineAlarm.DataType = (LogDataTypes)alarm.DataType;
                engineAlarm.AlarmString = alarm.AlarmDesc;
                engineAlarm.AlarmOn = alarm.AlarmOn;
                engineAlarm.AlarmOff = alarm.AlarmOff;
                engineAlarm.Count = alarm.Count;
                engineAlarm.Acked = alarm.Acked;
                engineAlarm.Ignore = alarm.Ignore;
                engineAlarm.AckTime = alarm.AckTime;
                engineAlarm.AckUser = alarm.AckUser;
                engineAlarm.IgnoreTime = alarm.IgnoreTime;
                engineAlarm.IgnoreUser = alarm.IgnoreUser;
                engineAlarms.Add(engineAlarm);
            }
            return engineAlarms.ToArray();
        }

        /// <summary>
        /// Acknowledge engine alarms
        /// </summary>
        /// <param name="alarms">The alarms to acknowledge</param>
        public void EngineAlarmsAck(int[] alarms, string username)
        {
            log.WarnFormat("Command: Acknowledge alarms {0}", alarms.ToString());
            alarmsManager.AcknowledgeAlarms(alarms, 0, username);
        }

        /// <summary>
        /// Ignore engine alarms
        /// </summary>
        /// <param name="alarms">The alarms to ignore</param>
        public void EngineAlarmsIgnore(int[] alarms, string username)
        {
            log.WarnFormat("Command: Ignore alarms {0}", alarms.ToString());
            alarmsManager.IgnoreAlarms(alarms, 0, username);
        }

        /// <summary>
        /// Returns an array of bools that indicate
        /// which sensors are in slow roll
        /// </summary>
        /// <returns>An array of bools. True means the sensor is in slow roll.</returns>
        public bool[] GetSlowrolledSensors()
        {
            UInt16[] sensors;
            bool[] inSlowRoll = new bool[28];

            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                //Read status register 1 for all sensors
                sensors = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)AMOTConstants.ModbusConstants.ChannelStatus1Registers, 28);
            }

            for (int i = 0; i < inSlowRoll.Length; i++)
            {
                inSlowRoll[i] = false;
                if ((Int16)sensors[i] != SPUCommsError)
                {
                    //If bit 5 is 1 then the sensor has been excluded form slow roll
                    if ((sensors[i] & (1 << 5)) != 0)
                    {
                        inSlowRoll[i] = false;
                    }
                    else
                    {
                        inSlowRoll[i] = true;
                    }
                }
            }

            return inSlowRoll;
        }

        /// <summary>
        /// Returns the sensor setup information
        /// </summary>
        /// <returns>Sensor setup information</returns>
        public SensorSetup GetSensorSetup()
        {
            SensorSetup sensorSetup = new SensorSetup();
            UInt16[] buffer;

            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
#if false
                System.Diagnostics.Stopwatch stopWatch = new System.Diagnostics.Stopwatch();
                stopWatch.Start();
#endif
                //Keep the DC mode alive
                ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)AMOTConstants.ModbusConstants.DCModeStayAliveRegister, 1);

                sensorSetup.Sensors = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.NumberOfSensors, 1)[0];

                UInt16[] bands = (UInt16[])ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.DCModeIdealLo, 4);
                sensorSetup.IdleBandMin = (Int16)bands[0];
                sensorSetup.IdleBandMax = (Int16)bands[1];
                sensorSetup.OkBandMin = (Int16)bands[2];
                sensorSetup.OkBandMax = (Int16)bands[3];

                sensorSetup.SensorActualValue = DataRetriever.ToInt16Array(ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.UAValuesRealTimeDuringDcMode, (ushort)sensorSetup.Sensors));
                sensorSetup.SensorPeekValue = DataRetriever.ToInt16Array(ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.UAValues, (ushort)sensorSetup.Sensors));
                sensorSetup.MicronCurrentVal = DataRetriever.ToInt16Array(ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.MicronsRealTimeDuringDcMode, (ushort)sensorSetup.Sensors));
                sensorSetup.DCPeakHold = (Int16)ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.DCPeakHold, 1)[0];
                sensorSetup.DCMode = (Int16)ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.DCMode, 1)[0];
                sensorSetup.PreCompensation = DataRetriever.ToInt16Array(ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.PreCompValues, (ushort)sensorSetup.Sensors));
                sensorSetup.FiringOrder = DataRetriever.ToInt16Array(ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.FiringOrderRegisters, 7));

                //Get cylinder comparison, channel OK and channel ideal starting at register 231
                //
                buffer = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.CylinderComparision, 7);
            }

            sensorSetup.CylinderComparison = (Int16)buffer[0];

            sensorSetup.ChannelOK = ModbusSDK.ModbusToInt32(buffer, 3, true);
            sensorSetup.ChannelIdeal = ModbusSDK.ModbusToInt32(buffer, 5, true);

            for (int i = 0; i < sensorSetup.FiringOrder.Length; i++)
            {
                sensorSetup.FiringOrder[i] = (short)((sensorSetup.FiringOrder[i] / 2) + 1);
            }


#if false
                log.WarnFormat("Update sensor setup in {0}", stopWatch.Elapsed);
#endif

            return sensorSetup;
        }

        /// <summary>
        /// Sets the sensor mode
        /// </summary>
        /// <param name="mode">The mode to set</param>
        /// <returns>TRUE set ok, otherwise failure</returns>
        public bool SetSensorMode(Int16 mode, string user)
        {
            log.Warn("Command: Set sensor mode " + Enum.GetName(typeof(SensorDCMode), mode));

            switch ((SensorDCMode)mode)
            {
                case SensorDCMode.DCMode:
                    using (TimedLock.Lock(ModbusInternal.syncRoot))
                    {
                        Int16 rpm = (Int16)ModbusInternal.ReadHoldingRegisters(1, (ushort)ModbusConstants.ModalRpm, 1)[0];
                        if (rpm == 0)
                        {
                            ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.DCMode, 1); // DC mode register
                            ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)AMOTConstants.ModbusConstants.DCModeStayAliveRegister, 1);
                            eventLog.LogGeneralEvent("DC Mode set", user);
                            return true;
                        }
                        eventLog.LogGeneralEvent("Request made for DC Mode, but engine RPM is " + rpm, user);
                    }
                    return false;
                case SensorDCMode.PulseMode:
                    using (TimedLock.Lock(ModbusInternal.syncRoot))
                    {
                        ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.DCMode, 0); // DC mode register
                        ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.DCPeakHold, 0); // DC Peak Hold register
                        eventLog.LogGeneralEvent("Pulse Mode set", user);
                    }
                    return true;
                case SensorDCMode.DCPeakHold:
                    using (TimedLock.Lock(ModbusInternal.syncRoot))
                    {
                        eventLog.LogGeneralEvent("DC Peek Hold set", user);
                        ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.DCPeakHold, 1); // DC Peak Hold register
                    }
                    return true;
            }
            throw new InvalidOperationException("Unknown sensor mode " + mode);
        }

        /// <summary>
        /// Starts a Sensor Peek Calibration
        /// </summary>
        /// <param name="sensors">The sensor that should be calibrated</param>
        public void SensorStartCalibratePeek(Int16[] sensors)
        {
            log.WarnFormat("Command: Start sensor calibrate peek {0}", sensors);

            setupCalibrationAndSetup = new SensorCalibrationAndSetup();
            setupCalibrationAndSetup.CalibratePeek(this.ModbusInternal, sensors);
        }

        /// <summary>
        /// Monitors a sensor peek calibration
        /// </summary>
        /// <param name="sensors">The sensors that should be calibrated.</param>
        /// <returns>The sensors that have calibrated.</returns>
        public Int16[] SensorMonitorCalibratePeek(Int16[] sensors)
        {
            if (setupCalibrationAndSetup != null)
            {
                return setupCalibrationAndSetup.MonitorCalibratePeek();
            }

            return null;
        }

        /// <summary>
        /// Sensor peek reset
        /// </summary>
        /// <param name="sensors">Sensors to reset</param>
        public void SensorPeekReset(Int16[] sensors, string user)
        {
            ushort cylinderClearmask = 0;
            int cylinder, sensor;
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < sensors.Length; i++)
            {
                cylinder = (sensors[i] / 2) + 1;
                sensor = (sensors[i] % 2) + 1;
                eventLog.LogGeneralEvent(string.Format("Sensor Peek Reset {0}.{1}", cylinder, sensor), user);
            }

            SPUSDK.AccessModbus(() =>
            {
                using (TimedLock.Lock(ModbusInternal.syncRoot))
                {
                    cylinderClearmask = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, 231, 1)[0];
                }
            });

            if (sensors != null)
            {

                ushort[] bitmask = new ushort[2];
                int i = 0;

                bitmask[0] = 0;
                bitmask[1] = 0;

                foreach (Int16 bit in sensors)
                {
                    //bit determines if we are setting a high
                    //or low register

                    if (bit >= 0 && bit <= 15)
                    {
                        i = 0;
                    }
                    else
                    {
                        i = 1;
                    }

                    int bitToSet = (1 << (bit));
                    bitToSet = (bitToSet >> (i * 16));
                    bitmask[i] |= (ushort)bitToSet;

                    //Every two bits equals a cylinder
                    cylinderClearmask &= (ushort)~(1 << (bit / 2));

                }

                SPUSDK.AccessModbus(() =>
                {
                    using (TimedLock.Lock(ModbusInternal.syncRoot))
                    {
                        ModbusInternal.WriteMultipleRegisters(ModbusSlaveId, 232, bitmask);
                        ModbusInternal.WriteSingleRegister(ModbusSlaveId, 231, cylinderClearmask);
                    }
                });
            }
        }

        /// <summary>
        /// Initiates the calibration order
        /// </summary>
        public void SensorCalibrateOrder()
        {
            log.Warn("Command: Sensor Calibrate Order");
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                ModbusInternal.WriteSingleRegister(1, 2026, 1);
            }
        }

        /// <summary>
        /// This method starts a sensor being replaced.  It updates the sensor in the SPU
        /// and creates the replacement state entries in the database.
        /// </summary>
        /// <param name="date">The date that the sensor replacement started.</param>
        /// <param name="sensor">The id of the sensor that is being replaced.</param>
        public void StartSensorReplacement(string date, Int16 sensor, string username)
        {
            Int64 failureDateInUnix;
            Int64 replacementDateInUnix;
            AMOTConstants.SensorReplacementStage currentStage = AMOTConstants.SensorReplacementStage.None;

            bool sensorInCorrectStage = true;

            SensorReplacementStatus[] replacementStatus = GetSensorReplacementStatus();

            foreach (SensorReplacementStatus sensorStatus in replacementStatus)
            {
                if (sensorStatus.Sensor == sensor)
                {
                    if ((sensorStatus.Stage != (short)AMOTConstants.SensorReplacementStage.None) &&
                        (sensorStatus.Stage != (short)AMOTConstants.SensorReplacementStage.Cancelled))
                    {
                        sensorInCorrectStage = false;
                        currentStage = (AMOTConstants.SensorReplacementStage)sensorStatus.Stage;
                    }
                }
            }

            if (sensorInCorrectStage)
            {
                log.WarnFormat("Command: Set Sensor Replacement {0} ({1})", date, sensor);
                eventLog.StartSensorReplace(sensor, username);
                using (TimedLock.Lock(ModbusInternal.syncRoot))
                {
                    ushort modbusBase = (ushort)ModbusConstants.ChannelStatus1Registers;

                    ChannelStatus status = new ChannelStatus(ModbusInternal.ReadHoldingRegisters(1, (ushort)(modbusBase + sensor), 1)[0]);
                    status.AlarmMask = true;
                    status.Replaced = true;
                    ModbusInternal.WriteSingleRegister(1, (ushort)(modbusBase + sensor), (ushort)status.Status);

                    ModbusInternal.WriteSingleRegister(1, 1031, 3);

                    failureDateInUnix = DatabaseSDK.ConvertToUnixTimestamp(DateTime.ParseExact(date, "yyyy-MM-dd", CultureInfo.InvariantCulture).Ticks);
                    replacementDateInUnix = DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks);

                    dataRetriever.StartSensorReplacement(sensor, failureDateInUnix, replacementDateInUnix);

                }
            }
            else
            {
                log.WarnFormat("Command: Set Sensor Replacement {0} ({1}).  Sensor is already in stage {2}", date, sensor, currentStage);
            }
        }

        /// <summary>
        /// This method cancels a sensor replacement and removes the sensor from the database.
        /// </summary>
        /// <param name="sensor">The sensor that is being cancelled.</param>
        public void SensorReplacementCancel(Int16 sensor, string username)
        {
            log.Warn("Command: Sensor replacement Cancel");
            eventLog.CancelSensorReplace(sensor, username);
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                ushort modbusBase = (ushort)ModbusConstants.ChannelStatus1Registers;

                ushort[] sensorStatus = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, modbusBase, 28);

                ChannelStatus[] status = new ChannelStatus[sensorStatus.Length];
                for (int i = 0; i < sensorStatus.Length; i++)
                {
                    status[i] = new ChannelStatus((short)sensorStatus[i]);
                    status[i].ExcludesSlowRoll = false;
                }

                status[sensor].AlarmMask = false;
                status[sensor].Replaced = false;

                for (int i = 0; i < sensorStatus.Length; i++)
                {
                    sensorStatus[i] = (ushort)status[i].Status;
                }

                ModbusInternal.WriteMultipleRegisters(ModbusSlaveId, modbusBase, sensorStatus);

                ModbusInternal.WriteSingleRegister(ModbusSlaveId, 1031, 3);
                ModbusInternal.WriteSingleRegister(ModbusSlaveId, 646, 29);

                dataRetriever.CancelSensorReplacement(sensor);

            }
        }

        /// <summary>
        /// Writes 1 to register 1035. No response
        /// </summary>
        public void EngineLearningStart(string user)
        {
            log.Warn("Command: Engine Learning Start");
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                eventLog.LogGeneralEvent("Engine learning start", user);
                ModbusInternal.WriteSingleRegister(1, 1035, 1);
            }
        }

        /// <summary>
        /// Writes 0 to register 1035. No response
        /// </summary>
        public void EngineLearningStop(string user)
        {
            log.Warn("Command: Engine Learning Stop");
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                eventLog.LogGeneralEvent("Engine learning stop", user);
                ModbusInternal.WriteSingleRegister(1, 1035, 0);
            }
        }

        /// <summary>
        /// No write
        /// </summary>
        /// <returns>Returns a populated instance of EngineLearningStatus</returns>
        public EngineLearningStatus GetEngineLearning()
        {
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                UInt16[] calibrationStage = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.CalibrationStage, 1);
                UInt16[] learningLeft = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.LearningTimeLeft, 1);
                UInt16[] calibratedPoints = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.ValidPoints, 1);
                UInt16[] totalPoints = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.RPMPoints, 1);
                UInt16[] speedInBand = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.SpeedInBand, 1);
                UInt16[] speedbands = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)AMOTConstants.ModbusConstants.RoughCalibrationSpeedBand1RpmMin, 6);

                bool verified = VerificationData.IsVerified(ModbusInternal);

                return new EngineLearningStatus
                {
                    CalibrationStage = (Int16)calibrationStage[0],
                    LearningLeft = (Int16)learningLeft[0],
                    CalibratedPoints = (Int16)calibratedPoints[0],
                    TotalPoints = (Int16)totalPoints[0],
                    SpeedInBand = (Int16)speedInBand[0],
                    DateTime = new DateTimeObject(DateTime.UtcNow),
                    Speedbands = DataRetriever.ToInt16Array(speedbands),
                    HasVerificationDate = verified
                };
            }
        }

        /// <summary>
        /// Writes 1 to register (ushort)ModbusConstants.DCPeakHold.
        /// Writes 0 to register (ushort)ModbusConstants.PauseDCModeDuringSurveyorTest. No response
        /// </summary>
        public void SurveyorTestStart(string user)
        {
            log.Warn("Command: Surveyor Test Start");
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                eventLog.LogGeneralEvent("Surveyor Test Started", user);
                SPUSDK.AccessModbus(() =>
                {
                    ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.OutputTest, 1);
                    ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.DCMode, 1);
                    ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.DCPeakHold, 1);
                    ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.PauseDCModeDuringSurveyorTest, 0);
                });
            }
        }

        /// <summary>
        /// Gets the current progress of a Surveyor Test
        /// </summary>
        /// <param name="alarmLevel">Alarm Level</param>
        /// <param name="slowdownLevel">Slow down level</param>
        /// <returns>A list of pre-comp values with DC held values subtracted</returns>
        public SensorSurveyPeek SurveyorTestPeek(ushort alarmLevel, ushort slowdownLevel)
        {
            SensorSurveyPeek rc = new SensorSurveyPeek();
            log.WarnFormat("Command: Surveyor Test Peek aLevel={0}, sLevel={1}", alarmLevel, slowdownLevel);
            rc.DCValues = null;
            rc.Success = false;
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                // Check if we're still in DC Mode, if not, we have fallen out of Surveyor Mode
                SPUSDK.AccessModbus(() =>
                        {
                            Int16 dcMode = (Int16)ModbusInternal.ReadHoldingRegisters(1, (ushort)ModbusConstants.DCMode, 1)[0];
                            rc.Success = (dcMode > 0);

                            if (!rc.Success)
                            {
                                ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.DCPeakHold, 0);
                                ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.OutputTest, 0);
                                ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.PauseDCModeDuringSurveyorTest, 0);
                                eventLog.LogGeneralEvent("Surveyor Test Cancelled Due To DC Mode cancellation", "N/A");
                            }
                        });

                if (rc.Success)
                {
                    SPUSDK.AccessModbus(() =>
                            {
                                ModbusInternal.ReadHoldingRegisters(1, 1041, 1);
                                rc.DCValues = DataRetriever.ToInt16Array(ModbusInternal.ReadHoldingRegisters(1, 3, 28));
                            });
                    bool alarm = false;
                    bool slowdown = false;
                    foreach (short dcValue in rc.DCValues)
                    {
                        // NOTE: We only want to compare against the positive for raising the alarm
                        // due to the surveyor process
                        if (dcValue > alarmLevel)
                        {
                            alarm = true;
                        }
                        // NOTE: We only want to compare against the positive for raising the alarm
                        // due to the surveyor process
                        if (dcValue > slowdownLevel)
                        {
                            slowdown = true;
                        }
                    }

                    if (alarm)
                    {
                        SPUSDK.AccessModbus(() =>
                        {
                            ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.SPUDigitalOutput2, 0);
                        });
                    }
                    else
                    {
                        SPUSDK.AccessModbus(() =>
                        {
                            ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.SPUDigitalOutput2, 1);
                        });

                    }

                    if (slowdown)
                    {
                        SPUSDK.AccessModbus(() =>
                        {
                            ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.SPUDigitalOutput3, 0);
                        });
                    }
                    else
                    {
                        SPUSDK.AccessModbus(() =>
                        {
                            ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.SPUDigitalOutput3, 1);
                        });
                    }

                }
            }
            return rc;
        }

        public void SurveyorTestStop(string user)
        {
            log.Warn("Command: Surveyor Test Stop");
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                SPUSDK.AccessModbus(() =>
                {
                    ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.DCMode, 0);
                    ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.DCPeakHold, 0);
                    ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.OutputTest, 0);
                    ModbusInternal.WriteSingleRegister(1, (ushort)ModbusConstants.PauseDCModeDuringSurveyorTest, 0);
                });

                eventLog.LogGeneralEvent("Surveyor Test Stopped", user);
            }
        }

        /// <summary>
        /// Get diagnostic information
        /// </summary>
        /// <returns>Diagnostic information</returns>
        public Diagnostics Diagnostics()
        {
            Diagnostics diagnostics = new Diagnostics();
            Assembly assembly = System.Reflection.Assembly.GetAssembly(GetType());

            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                UInt16[] data;


                //Read the sensor config from the configruaiton database
                try
                {
                    data = new UInt16[1];
                    data[0] = dataRetriever.ReadSPUConfiguration((ushort)ModbusConstants.NumberOfSensorsSPU2);
                }
                catch (KeyNotFoundException)
                {
                    //No configuration found fallback
                    //to reading value from SPU. 
                    data = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.NumberOfSensorsSPU2, 1);
                }

                if (data[0] != 0)
                {
                    diagnostics.NumberOfSPUs = 2;
                }
                else
                {
                    diagnostics.NumberOfSPUs = 1;
                }

                data = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.SPUSlaveFirmwareVersion, 2);

                //The SPU version numbers are:
                //Slave version in first index
                //Master version in second index
                diagnostics.Unit1FWVersion = data[1];
                diagnostics.Unit2FWVersion = data[0];

                diagnostics.Unit1BatteryVolt = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.RTCLevel, 1)[0];
                data = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.AlarmStructure, 1);

                //If bit 0 is set then comms to SPU 2 has been lost
                if ((data[0] & 1) == 1)
                {
                    diagnostics.Unit2SPUStatus = false;
                }
                else
                {
                    diagnostics.Unit2SPUStatus = true;
                }

                // Get the SPU Status, Alarm Status and Slowdown Status
                data = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.SPUDigitalOutput1, 3);
                log.InfoFormat("Diagnostics: Read Digital Outputs {0} {1} {2}", data[0], data[1], data[2]);
                if (data[0] == 1)
                {
                    diagnostics.Unit1SPUStatus = true;
                }
                else
                {
                    diagnostics.Unit1SPUStatus = false;
                }

                if (data[1] == 1)
                {
                    diagnostics.Unit1Alarms = true;
                }
                else
                {
                    diagnostics.Unit1Alarms = false;
                }

                if (data[2] == 1)
                {
                    diagnostics.Unit1Slowdown = true;
                }
                else
                {
                    diagnostics.Unit1Slowdown = false;
                }

                data = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.SDCardError, 1);
                //If SDCardError is not 0 then there is a SD card fault
                if (data[0] != 0)
                {
                    diagnostics.Unit1SDCard = false;
                }
                else
                {
                    diagnostics.Unit1SDCard = true;
                }

                data = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.EngineRunTime, 2);

                diagnostics.EngineRuntimeInMinutes = DataRetriever.ModbusToUInt32(data);

                data = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.ModalRpm, 2);
                diagnostics.Unit1EngineSpeed = data[0];
                diagnostics.Unit2EngineSpeed = data[1];

                // Get the WIO comms error value.  Register not in AMOTConstants.ModbusConstants
                data = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)476, 1);

                diagnostics.WIOCommsErrorValue = (short)data[0];

                // Raw diagnostics, we read this off as 125 byte chunks
                diagnostics.DateTime = new short[3];
                diagnostics.PreComp = new short[28];
                diagnostics.PostComp = new short[28];
                diagnostics.PostFiltered = new short[28];
                diagnostics.ScaledValues = new short[28];
                diagnostics.SensorDeviation = new short[28];
                diagnostics.SensorStatus1 = new short[28];
                diagnostics.SensorStatus2 = new short[28];
                diagnostics.SensorStatus3 = new short[28];
                diagnostics.RPM = new short[28];
                diagnostics.RawUa = new short[28];
                diagnostics.CylinderAv = new short[14];
                diagnostics.CylinderDeviation = new short[14];
                diagnostics.CylinderStatus1 = new short[14];
                diagnostics.CylinderStatus2 = new short[14];

                ushort[] chunk = ModbusInternal.ReadHoldingRegisters(1, (ushort)ModbusConstants.YearMonth, 125);
                short[] chunkShort = DataRetriever.ToInt16Array(chunk);

                System.Array.Copy(chunkShort, (int)ModbusConstants.YearMonth, diagnostics.DateTime, 0, diagnostics.DateTime.Length);
                System.Array.Copy(chunkShort, (int)ModbusConstants.PreCompValues, diagnostics.PreComp, 0, diagnostics.PreComp.Length);
                System.Array.Copy(chunkShort, (int)ModbusConstants.PostCompValues, diagnostics.PostComp, 0, diagnostics.PostComp.Length);
                System.Array.Copy(chunkShort, (int)ModbusConstants.EndResultValues, diagnostics.PostFiltered, 0, diagnostics.PostFiltered.Length);
                System.Array.Copy(chunkShort, (int)ModbusConstants.SensorDeviationValues, diagnostics.SensorDeviation, 0, diagnostics.SensorDeviation.Length);

                chunk = ModbusInternal.ReadHoldingRegisters(1, (ushort)ModbusConstants.ChannelStatus1Registers, 125);
                chunkShort = DataRetriever.ToInt16Array(chunk);

                System.Array.Copy(chunkShort, (int)ModbusConstants.ChannelStatus1Registers - (int)ModbusConstants.ChannelStatus1Registers, diagnostics.SensorStatus1, 0, diagnostics.SensorStatus1.Length);
                System.Array.Copy(chunkShort, (int)ModbusConstants.ChannelStatus2Registers - (int)ModbusConstants.ChannelStatus1Registers, diagnostics.SensorStatus2, 0, diagnostics.SensorStatus2.Length);
                System.Array.Copy(chunkShort, (int)ModbusConstants.ChannelStatus3Registers - (int)ModbusConstants.ChannelStatus1Registers, diagnostics.SensorStatus3, 0, diagnostics.SensorStatus3.Length);
                System.Array.Copy(chunkShort, (int)ModbusConstants.UAValues - (int)ModbusConstants.ChannelStatus1Registers, diagnostics.RawUa, 0, diagnostics.RawUa.Length);

                chunk = ModbusInternal.ReadHoldingRegisters(1, (ushort)ModbusConstants.CylinderAverages, 125);
                chunkShort = DataRetriever.ToInt16Array(chunk);

                System.Array.Copy(chunkShort, (int)ModbusConstants.CylinderAverages - (int)ModbusConstants.CylinderAverages, diagnostics.CylinderAv, 0, diagnostics.CylinderAv.Length);
                System.Array.Copy(chunkShort, (int)ModbusConstants.CylinderDeviations - (int)ModbusConstants.CylinderAverages, diagnostics.CylinderDeviation, 0, diagnostics.CylinderDeviation.Length);
                System.Array.Copy(chunkShort, (int)ModbusConstants.CylinderStatus1 - (int)ModbusConstants.CylinderAverages, diagnostics.CylinderStatus1, 0, diagnostics.CylinderStatus1.Length);
                System.Array.Copy(chunkShort, (int)ModbusConstants.CylinderStatus2 - (int)ModbusConstants.CylinderAverages, diagnostics.CylinderStatus2, 0, diagnostics.CylinderStatus2.Length);
                System.Array.Copy(chunkShort, (int)ModbusConstants.ScaledValues - (int)ModbusConstants.CylinderAverages, diagnostics.ScaledValues, 0, diagnostics.ScaledValues.Length);

                chunk = ModbusInternal.ReadHoldingRegisters(1, (ushort)ModbusConstants.RpmPerSensor, 125);
                chunkShort = DataRetriever.ToInt16Array(chunk);

                System.Array.Copy(chunkShort, (int)ModbusConstants.RpmPerSensor - (int)ModbusConstants.RpmPerSensor, diagnostics.RPM, 0, diagnostics.RPM.Length);
                diagnostics.WIOActivty = chunkShort[ModbusConstants.WIOActivity - ModbusConstants.RpmPerSensor];
                diagnostics.WIOPPM = chunkShort[ModbusConstants.WIOPpm - ModbusConstants.RpmPerSensor];
                diagnostics.WIOTemp = chunkShort[ModbusConstants.WIOTemperature - ModbusConstants.RpmPerSensor];
                diagnostics.WIOStatus = chunkShort[ModbusConstants.WIOAlarmStatus - ModbusConstants.RpmPerSensor];
                diagnostics.SEDMvm = chunkShort[ModbusConstants.SLEMValue - ModbusConstants.RpmPerSensor];
                diagnostics.SEDMStatus = chunkShort[ModbusConstants.SLEMAlarms - ModbusConstants.RpmPerSensor];
            }

            diagnostics.WebServerVersion = assembly.GetName().Version.ToString();
            Dictionary<string, string> versionNumbers = ReadVersionNumbers();

            diagnostics.Modules = new string[versionNumbers.Count + 1];
            diagnostics.ModuleVersions = new string[versionNumbers.Count + 1];

            int i = 0;
            foreach (KeyValuePair<string, string> pair in versionNumbers)
            {
                diagnostics.Modules[i] = pair.Key;
                diagnostics.ModuleVersions[i] = pair.Value;
                i++;
            }
            diagnostics.Modules[versionNumbers.Count] = "PLC version ";
            diagnostics.ModuleVersions[versionNumbers.Count] = TemperatureGloabal.PlcVersionNumber.ToString() + ".0.0";

            CommStats stats;
            try
            {
                stats = dataRetriever.GetCommsStats();
            }
            catch (Exception)
            {
                stats = new CommStats();
                stats.CrcErrors = 0;
                stats.FailedWrites = 0;
                stats.FailedReads = 0;
                stats.PacketsWritten = 0;
                stats.PacketsRead = 0;
                stats.Retries = 0;
            }
            diagnostics.NumberCrcErrors = stats.CrcErrors;
            diagnostics.NumberSPUWritesFailed = stats.FailedWrites;
            diagnostics.NumberSSPUReadsFailed = stats.FailedReads;
            diagnostics.NumberPacketsWritten = stats.PacketsWritten;
            diagnostics.NumberPacketsReads = stats.PacketsRead;
            diagnostics.NumberOfRetries = stats.Retries;

            return diagnostics;
        }


        /// <summary>
        /// Resets the Comms Stats stored in the comms database
        /// </summary>
        public void ResetCommStats()
        {
            dataRetriever.ResetCommsStats();
        }

        /// <summary>
        /// This method reads the engine cylinder order
        /// </summary>
        /// <returns>boolen to tell the cylinder order is reversed or normal</returns>
        public bool ReadCylinderOrder()
        {            
            string cylinderReverse = "false";                       

            if (ConfigurationManager.AppSettings["CylinderReversed"] != null)
            {
                cylinderReverse = ConfigurationManager.AppSettings["CylinderReversed"];
                if (cylinderReverse == "true") return true;
                else return false;
            }
            else
            {
                return false;
            }                        
        }

        /// <summary>
        /// This method reads the version numbers
        /// for all the software that makes up the XTS.
        /// The versions numbers of the software are
        /// written to a file when they start up.
        /// </summary>
        /// <returns>A Dictionary of the software and associated version number</returns>
        static public Dictionary<string, string> ReadVersionNumbers()
        {
            Dictionary<string, string> versionNumbers = new Dictionary<string, string>();
            string versionNumberFile = @"d:\versionnumbers.txt";
            string modbusversionNumberFile = @"d:\modbuserverversion.txt";

            if (ConfigurationManager.AppSettings["PluginVersionNumbers"] != null)
            {
                versionNumberFile = ConfigurationManager.AppSettings["PluginVersionNumbers"];
            }

            if (ConfigurationManager.AppSettings["ServerVersionNumbers"] != null)
            {
                modbusversionNumberFile = ConfigurationManager.AppSettings["ServerVersionNumbers"];
            }           

            try
            {
                ReadVersionNumberFile(versionNumbers, versionNumberFile);
                ReadVersionNumberFile(versionNumbers, modbusversionNumberFile);
            }
            catch (FileNotFoundException)
            {
                //Can not open files.  Return empty Dictionary
            }

            return versionNumbers;
        }

        /// <summary>
        /// Reads the version number in the format name,m.n.p from the text file passed in
        /// </summary>
        /// <param name="versionNumbers">A dictionary that holds the version numbers</param>
        /// <param name="versionNumberFile">The file to read the numbers from</param>
        private static void ReadVersionNumberFile(Dictionary<string, string> versionNumbers, string versionNumberFile)
        {
            //Read each line from the software version number file
            //Add the software module name and version number to the array
            using (StreamReader file = new StreamReader(versionNumberFile))
            {
                string line;

                //Read in each line
                while ((line = file.ReadLine()) != null)
                {
                    string[] pair = line.Split(new char[] { ',' });

                    // Remove the .DLL extension
                    pair[0] = pair[0].Split('.')[0];

                    if (pair.Length == 2)
                    {
                        versionNumbers.Add(pair[0], pair[1]);
                    }
                    else
                    {
                        versionNumbers.Add(pair[0], "");
                    }
                }

                file.Close();
            }
        }

        /// <summary>
        /// Reads in events from the event log. The EventLogResult object will return the offset within the 
        /// event log the data was read, the number of events read and the data.
        /// </summary>
        /// <param name="offset">Offset within the logs to read, if this is -1 then the last n events will be read</param>
        /// <param name="limit">The number of events to return</param>
        /// <returns>The event log results</returns>
        public EventLogResult ReadEventLog(int offset, int limit)
        {
            return eventLog.ReadEventLog(offset, limit);
        }

        private CalculatedStatusWord[] GetCalculatedStatusWordObject(ModbusSDK modbusSDK, UInt16 registerBase, UInt16 registerCount)
        {
            List<CalculatedStatusWord> results = new List<CalculatedStatusWord>();
            UInt16[] modbusValues = modbusSDK.ReadHoldingRegisters(ModbusSlaveId, registerBase, registerCount);
            foreach (UInt16 reg in modbusValues)
            {
                results.Add(new CalculatedStatusWord((Int16)reg));
            }

            return results.ToArray();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns>A Populated instance of AlarmShutdownLevels</returns>
        private AlarmShutdownLevels GetAlarmShutdownLevelsObject(ModbusSDK modbusSDK)
        {
            UInt16[] values = modbusSDK.ReadHoldingRegisters(ModbusSlaveId, (ushort)AMOTConstants.ModbusConstants.SensorSlowDownLevel_2, 5);

            return new AlarmShutdownLevels
            {
                SensorSlowDownLevel = values[0],
                SensorAlarmLevel = values[1],
                SensorDevSlowDownLevel = values[2],
                SensorAlarmDeviationLevel = values[3],
                CylinderAlarmLevel = values[4]
            };
        }

        /// <summary>
        /// Gets the RPM limit from the SPU.
        /// </summary>
        /// <returns>The RPMs limit set in the SPU.</returns>
        public Int16 GetRPMLimit()
        {
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                return (Int16)ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)AMOTConstants.ModbusConstants.RPMLimit, 1)[0];
            }
        }        

        /// <summary>
        /// Enables or disables a specific SPU alarm.  Only usable if the SPU alarm output
        /// has been disabled.
        /// </summary>
        /// <param name="alarm_id">the id of the alarm to enable</param>
        /// <param name="enabled">Flag indicating if the alarm should be enabled or disabled.</param>
        internal bool EnableSPUAlarm(int alarm_id, DigitalOutputState state, string user)
        {
            bool rc = false;
            log.WarnFormat("Command: Set SPU alarm {0} {1}", alarm_id, state);
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                SPUSDK.AccessModbus(() =>
                {
                    ModbusInternal.WriteSingleRegister(1, (ushort)AMOTConstants.ModbusConstants.OutputTest, 1);
                });

                eventLog.LogGeneralEvent("SPU Alarm " + alarm_id + " " + state, user);
                SPUSDK.SetSPUAlarmState(ModbusInternal, alarm_id, state);
                DigitalOutputState [] states = SPUSDK.GetSPUAlarmStates(ModbusInternal);
                rc = (states[alarm_id-1] == state);
            }
            if (!rc)
            {
                log.ErrorFormat("Set SPU alarm {0} {1} failed.", alarm_id, state);
            }
            return rc;
        }

        /// <summary>
        /// Enables or disables SPU alarm output test mode
        /// </summary>
        /// <param name="enabled"></param>
        internal void EnableSPUAlarmTestMode(bool enabled, string username)
        {
            log.WarnFormat("Command: Set SPU alarm output test mode {0}", enabled ? "ENABLED" : "DISABLED");
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                SPUSDK.SetAlarmTestModeState(ModbusInternal, enabled, username);
            }
        }

        /// <summary>
        /// Returns an array of SensorReplacementStatus objects that contain
        /// the replacement state of the sensors in the system.
        /// </summary>
        /// <returns>An array that contains the state of the sensors being replaced.</returns>
        public SensorReplacementStatus[] GetSensorReplacementStatus()
        {
            return this.dataRetriever.GetSensorReplacementStatus();
        }

        /// <summary>
        /// Moves a sensor to the 50 hour average stage
        /// </summary>
        /// <param name="sensor">The sensor to move to 50 hour average</param>
        public void StartSensorReplacementAverage(Int16 sensor)
        {
            bool sensorInCorrectStage = false;

            SensorReplacementStatus[] status = GetSensorReplacementStatus();

            foreach (SensorReplacementStatus sensorStatus in status)
            {
                if (sensorStatus.Sensor == sensor)
                {
                    if (sensorStatus.Stage == (short)AMOTConstants.SensorReplacementStage.SlowRoll)
                    {
                        sensorInCorrectStage = true;
                    }
                }
            }

            if (sensorInCorrectStage)
            {
                log.WarnFormat("Command: Start sensor replacement average {0}", sensor);
                using (TimedLock.Lock(ModbusInternal.syncRoot))
                {
                    ushort registers = 0;
                    ushort[] sensorStatus = null;
                    ushort modbusBase = (ushort)ModbusConstants.ChannelStatus1Registers;

                    SPUSDK.AccessModbus(() =>
                    {
                        registers = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, (ushort)ModbusConstants.NumberOfSensors, 1)[0];
                        sensorStatus = ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, modbusBase, registers);

                        ChannelStatus[] channelStatus = new ChannelStatus[registers];
                        for (int i = 0; i < registers; i++)
                        {
                            channelStatus[i] = new ChannelStatus((short)sensorStatus[i]);
                            channelStatus[i].ExcludesSlowRoll = false;
                        }

                        for (int i = 0; i < registers; i++)
                        {
                            sensorStatus[i] = (ushort)channelStatus[i].Status;
                        }

                    });

                    SPUSDK.AccessModbus(() =>
                    {
                        ModbusInternal.WriteMultipleRegisters(ModbusSlaveId, modbusBase, sensorStatus);
                        ModbusInternal.WriteSingleRegister(ModbusSlaveId, 646, 28);
                        ModbusInternal.WriteSingleRegister(ModbusSlaveId, (ushort)AMOTConstants.ModbusConstants.PreWarningResetForReplaced, 1);
                    });
                }
                this.dataRetriever.StartSensorAverageStage(sensor);
            }
            else
            {
                log.WarnFormat("Command: Start sensor replacement average {0}. Sensor not in the correct stage.", sensor);
            }
        }

        /// <summary>
        /// Retrieves the replacement data for the sensor
        /// </summary>
        /// <param name="sensor">The ID of the sensor to get the data for</param>
        /// <returns>The sensor replacement data.</returns>
        public Stream GetSensorReplacementData(Int16 sensor)
        {
            bool sensorInCorrectStage = false;

            SensorReplacementStatus[] status = GetSensorReplacementStatus();

            foreach (SensorReplacementStatus sensorStatus in status)
            {
                if (sensorStatus.Sensor == sensor)
                {
                    if (sensorStatus.Stage == (short)AMOTConstants.SensorReplacementStage.EnableSendReplacementData ||
                        sensorStatus.Stage == (short)AMOTConstants.SensorReplacementStage.EnableInputReplacementData)
                    {
                        sensorInCorrectStage = true;
                    }
                }
            }

            if (sensorInCorrectStage)
            {
                string[] sensorNames = this.dataRetriever.GetSensorNames();
                string filename = sensorReplacementConfiguration.Settings.ExportFolder + sensorNames[sensor] + "replacement_data.txt";

                if (File.Exists(filename))
                {
                    dataRetriever.MarkSensorReplacementDataSent(sensor);
                    return File.Open(filename, FileMode.Open);
                }
                else
                    return null;
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// This method reads the replacement data from a stream and loads
        /// it into the SPU.
        /// </summary>
        /// <param name="sensorOffsetsFile">The stream that the offset data should be read from.</param>
        public bool SetSensorReplacementData(string fileContents, string user)
        {
            bool success = false;
            bool sensorInCorrectStage = false;
            SensorReplacementStatus[] status = GetSensorReplacementStatus();

            if (fileContents.Length == 0)
            {
                return false;
            }

            //At this point fileContents holds the characters read from the stream.
            //Check that the file contains the correct information in the format:
            //
            // CH<number> = <offset>

            string[] parts = fileContents.ToString().Split(new char[] { '=' });

            //Parts should now contain:
            // parts[0] should contain "CH<number>"
            // parts[1] should contain "<offset>
            //
            if (parts.Length == 2)
            {
                UInt16 channelNumber;
                Int16 offset;

                parts[0] = parts[0].ToUpperInvariant().Replace("CH", "");
                channelNumber = UInt16.Parse(parts[0]);
                offset = Int16.Parse(parts[1]);

                //Turn the channel number into an SPU offset
                channelNumber = (UInt16)(channelNumber - 1);

                foreach (SensorReplacementStatus sensorStatus in status)
                {
                    if (sensorStatus.Sensor == channelNumber)
                    {
                        if (sensorStatus.Stage == (short)AMOTConstants.SensorReplacementStage.EnableInputReplacementData)
                        {
                            sensorInCorrectStage = true;
                        }
                    }
                }

                if (sensorInCorrectStage)
                {
                    log.WarnFormat("Command: Set sensor replacement data for sensor {0}", channelNumber);
                    if ((channelNumber >= 0 && channelNumber <= 27) && (offset >= -2000 && offset <= 2000))
                    {
                        ushort[] oldData = null;
                        //Now write the offset to the channel
                        using (TimedLock.Lock(ModbusInternal.syncRoot))
                        {
                            SPUSDK.AccessModbus(() =>
                            {
                                ModbusInternal.WriteSingleRegister(ModbusSlaveId, (UInt16)AMOTConstants.ModbusConstants.TableConfigType, 4);
                                oldData = ModbusInternal.ReadHoldingRegisters(1, (ushort)AMOTConstants.ModbusConstants.TableConfigType, SPUSDK.TableLength);
                                ModbusInternal.WriteSingleRegister(ModbusSlaveId, (UInt16)(AMOTConstants.ModbusConstants.TableRegisters + channelNumber), (UInt16)offset);
                            });
                            if (oldData != null)
                            {
                                eventLog.UpdateOffsetB(channelNumber, oldData[channelNumber], (ushort)offset, user);
                            }
                            else
                            {
                                eventLog.UpdateOffsetB(channelNumber, ushort.MaxValue, (ushort)offset, user);
                            }
                        }
                        dataRetriever.MarkSensorReplacementDataUploaded((short)channelNumber);
                        success = true;
                    }
                }
                else
                {
                    log.WarnFormat("Command: Set sensor replacement data for sensor {0}. Sensor not in the correct stage.", channelNumber);
                }
            }

            return success;
        }

        /// <summary>
        /// Enables or Disables a sensor
        /// </summary>
        /// <param name="sensorId">The id of the sensor to enable or disable</param>
        /// <param name="enabled">Flag indicating if the sensor should be enabled or disabled</param>
        public void SensorEnable(UInt16 sensorId, bool enabled)
        {
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                UInt16 sensor = (UInt16)((UInt16)(AMOTConstants.ModbusConstants.ChannelStatus1Registers) + sensorId);
                ChannelStatus status;

                //Read sensor status
                status = new ChannelStatus(ModbusInternal.ReadHoldingRegisters(ModbusSlaveId, sensor, 1)[0]);

                //Change the enbled state
                status.Enabled = enabled;

                //Write sensor status
                ModbusInternal.WriteSingleRegister(ModbusSlaveId, sensor, (UInt16)status.Status);
            }
        }

        public Stream ExportEventLog()
        {
            string tempFolder = System.Environment.GetEnvironmentVariable("TEMP");
            string exportFile;
            string exportFilePath;
            DateTime time = DateTime.UtcNow;

            exportFile = String.Format("eventlog_{0:D4}{1:D2}{2:D2}{3:D2}{4:D2}{5:D2}{6:D2}.csv",
                time.Year, time.Month, time.Day, time.Hour, time.Minute, time.Second, time.Millisecond);
            exportFilePath = tempFolder + "\\" + exportFile;
            eventLog.ExportToCVS(exportFilePath);

            return new AutoFileDeleteStream(exportFilePath, FileMode.Open);
        }

        public Stream ExportTemperatureSetting()
        {
            string tempFolder = System.Environment.GetEnvironmentVariable("TEMP");
            string exportFile;
            string exportFilePath;
            DateTime time = DateTime.UtcNow;

            exportFile = String.Format("temperature_{0:D4}{1:D2}{2:D2}{3:D2}{4:D2}{5:D2}{6:D2}.csv",
                time.Year, time.Month, time.Day, time.Hour, time.Minute, time.Second, time.Millisecond);
            exportFilePath = tempFolder + "\\" + exportFile;
            dataRetriever.ExportToCVS(exportFilePath);

            return new AutoFileDeleteStream(exportFilePath, FileMode.Open);
        }

        /// <summary>
        /// Returns the count of the number of active engine alarms
        /// </summary>
        /// <returns>The number of active alarms</returns>
        public Int32 GetEngineAlarmsCount()
        {
            return alarmsManager.GetActiveAlarmsCount();
        }

        /// <summary>
        /// Gets the Active and Inactive faults on the system.
        /// </summary>
        /// <returns>A object holding the active and inactive fault codes</returns>
        public CoreFaults GetFaults()
        {
            CoreFaults faults = new CoreFaults();

            faults.ActiveFaults = FaultErrorIndicators.Faults.Instance.ActiveFaults();
            faults.InActiveFaults = FaultErrorIndicators.Faults.Instance.InactiveFaults();
            return faults;

        }

        internal Int16[] ReadModbusRegisters(ushort start, ushort end)
        {
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                UInt16[] registers = ModbusInternal.ReadHoldingRegisters((byte)1, start, end);
                return DataRetriever.ToInt16Array(registers);
            }
        }

        internal void WriteModbusRegister(ushort start, ushort value)
        {
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                ModbusInternal.WriteSingleRegister(1, start, value);
            }
        }

        internal bool EnterLearningVerificationCode(string verification)
        {
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                return VerificationData.InvokeVerificationCode(ModbusInternal, verification);
            }
        }

        /// <summary>
        /// Returns an array of strings that holds the
        /// names of the trend configuration slots.
        /// </summary>
        /// <returns>A string array of the configuration slots.</returns>
        internal string[] GetTrendConfigurations()
        {
            return this.dataRetriever.TrendConfigurationSlots();
        }

        /// <summary>
        /// Returns the live engine data
        /// </summary>
        /// <returns>The live engine data</returns>
        public TemperatureConfiguration GetLiveTemperatureData()
        {

            TemperatureConfiguration temperatureData = new TemperatureConfiguration();


            temperatureData.TemperatureSensors = TemperatureGloabal.SensorNumber;
            temperatureData.TemperatureBarScale = TemperatureGloabal.GraphScale;
            temperatureData.TemperatureDevBarScale = TemperatureGloabal.DevGraphScale;
            temperatureData.TemperatureBarScaleAlarm = temperaturePluginConfiguration.Settings.TemperatureAlarm;
            temperatureData.TemperatureBarScaleSlowdown = temperaturePluginConfiguration.Settings.TemperatureSlowdown;

            temperatureData.Id = new int[temperatureData.TemperatureSensors];
            temperatureData.Enable = new bool[temperatureData.TemperatureSensors];
            temperatureData.TemperatureChannelName = new string[temperatureData.TemperatureSensors];
            temperatureData.TemperatureChannelValue = new short[temperatureData.TemperatureSensors];
            temperatureData.TemperatureDevValue = new short[temperatureData.TemperatureSensors];
            temperatureData.TemperatureAlarmLevel = new short[temperatureData.TemperatureSensors];
            temperatureData.TemperatureSlowdownLevel = new short[temperatureData.TemperatureSensors];

            temperatureData.TemperatureAlarmArrary = new bool[temperatureData.TemperatureSensors];
            temperatureData.TemperatureSlowdownArrary = new bool[temperatureData.TemperatureSensors];           

            //log.ErrorFormat("channel name - {0}", dataRetriever.ReadchannelName(1));
            try
            {
                for (ushort tempChannel = 0; tempChannel < temperatureData.TemperatureSensors; tempChannel++)
                {
                    //Read temperature from database
                    //if (dataRetriever.ReadTemperatureGeneral(tempChannel, "temperatureDev") == 0) temperatureData.Enable[tempChannel] = true;
                    //else temperatureData.Enable[tempChannel] = false;
                    temperatureData.Id[tempChannel] = tempChannel;
                    temperatureData.Enable[tempChannel] = dataRetriever.ReadchannelEnable(tempChannel);
                    temperatureData.TemperatureChannelName[tempChannel] = dataRetriever.ReadchannelName(tempChannel);
                    temperatureData.TemperatureDevValue[tempChannel] = dataRetriever.ReadTemperatureGeneral(tempChannel, "temperatureDev");
                    temperatureData.TemperatureAlarmLevel[tempChannel] = dataRetriever.ReadTemperatureGeneral(tempChannel, "alarmLevel");
                    temperatureData.TemperatureSlowdownLevel[tempChannel] = dataRetriever.ReadTemperatureGeneral(tempChannel, "slowdownLevel");                    

                    //log.ErrorFormat("channel name - {0}", engineData.TemperatureChannelName[tempChannel]);
                    if (TemperatureGloabal.Temperature != null)
                    {
                        temperatureData.TemperatureChannelValue[tempChannel] = (short)TemperatureGloabal.Temperature[tempChannel];// dataRetriever.ReadTemperature(tempChannel);
                        //log.ErrorFormat("channel value - {0}", engineData.TemperatureChannelValue[1]);
                    }
                    else
                    {
                        temperatureData.TemperatureChannelValue[tempChannel] = 0;
                    }                    

                    if (TemperatureGloabal.AlarmListLiveEngine != null)
                    {
                        temperatureData.TemperatureAlarmArrary[tempChannel] = TemperatureGloabal.AlarmListLiveEngine[tempChannel];
                    }
                    else
                    {
                        temperatureData.TemperatureAlarmArrary[tempChannel] = false;
                    }
                    

                    if (TemperatureGloabal.SlowdownListLiveEngine != null)
                    {
                        temperatureData.TemperatureSlowdownArrary[tempChannel] = TemperatureGloabal.SlowdownListLiveEngine[tempChannel];
                    }
                    else
                    {
                        temperatureData.TemperatureSlowdownArrary[tempChannel] = false;
                    }
                    
                }                
            }
            catch (Exception e)
            {
                log.InfoFormat("Caught exception {0} getting temperature settings", e.Message);
            }            

            return temperatureData;
        }
    }
}
