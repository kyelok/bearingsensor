using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using EventLogging;
using Reports;
using DataCollectionSDK;
using HelperClasses;
using System.Configuration;
using AMOTConstants;
using WebServiceObjects;
using System.Reflection;

namespace WebService
{
    public static class VerificationData
    {
        private static char[] hashLookup = { 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T' };

        public static void ExportVerification(StreamWriter writer, ModbusSDK sdk, ProgressIndicator progressIndicator, bool code)
        {
            if (code == true)
            {
                ExportVerificationCode(writer, sdk);
            }

            ExportAmotVerificationData(writer, sdk);
            ExportVesselInfo(writer, sdk);

            ExportSPUFirmwareVersion(writer, sdk);
            ExportSoftwareVersion(writer, sdk);

            ExportActiveAlarms(writer, sdk);
            ExportNonActiveAlarms(writer, sdk);
            ExportSensorStatus(writer);
            ExportHealthyAlarmSlowdown(writer, sdk);
            ExportSDStatus(writer, sdk);
            
            ExportEngineLearning(writer, sdk);
            ExportAlarmMasking(writer, sdk);
            ExportFiringOrder(writer, sdk);
            ExportAmotSettings(writer, sdk);
            ExportOffsets(writer, sdk);

            writer.WriteLine();
            SPUSDK.ExportSpeedComp(writer, sdk, progressIndicator);

            ExportEventLog(writer, sdk);
            StartSection(writer, "ENDOFFILE");
            writer.Flush();
        }

        private static void ExportSoftwareVersion(StreamWriter writer, ModbusSDK sdk)
        {
            Assembly assembly = System.Reflection.Assembly.GetAssembly(typeof(VerificationData));

            writer.WriteLine("WebService={0}",assembly.GetName().Version.ToString());

            Dictionary<string, string> versionNumbers = EngineManagement.ReadVersionNumbers();

            foreach (KeyValuePair<string, string> pair in versionNumbers)
            {
                writer.WriteLine("{0}={1}", pair.Key, pair.Value);
            }
        }

        // Bug 2 fix (host/docs/CPU_DASHBOARD_OVERVIEW.md): the SPU firmware
        // stores its version register as packed BCD-style hex digits — e.g.
        // versionreg = 0x0620 means "v6.20", 0x0710 means "v7.10".
        // The previous implementation read the low byte 0x20 as the integer
        // value 32 and produced "6.32"; round versions like "v7.00" returned
        // an empty string because of the `major != 0 && minor != 0` guard.
        // Decode each byte as BCD (high nibble = tens, low nibble = ones)
        // and emit zero-padded minor digits so "v7.05" is not displayed as "v7.5".
        private static string SPUVersionToSTring(ushort spuVersion)
        {
            if (spuVersion == 0) return string.Empty;

            byte[] bytes = BitConverter.GetBytes(spuVersion);
            if (bytes == null || bytes.Length < 2) return spuVersion.ToString();

            int major = bytes[1];
            int minorTens = (bytes[0] >> 4) & 0xF;
            int minorOnes = bytes[0] & 0xF;
            int minor = minorTens * 10 + minorOnes;

            return string.Format("{0}.{1:D2}", major, minor);
        }

        private static void ExportSPUFirmwareVersion(StreamWriter writer, ModbusSDK sdk)
        {
            try
            {
                SPUSDK.AccessModbus(() =>
                {
                    ushort[] data = null;

                    lock (sdk.syncRoot)
                    {
                        data = sdk.ReadHoldingRegisters(1, (ushort)ModbusConstants.SPUSlaveFirmwareVersion, 2);
                        writer.WriteLine("SPUFirmware={0} {1}", SPUVersionToSTring(data[1]), SPUVersionToSTring(data[0]));
                    }
                });
            }
            catch (Exception)
            {
                writer.WriteLine("SPUFirmware=Unknown");
            }
        }

        public static bool InvokeVerificationCode(ModbusSDK sdk, string code)
        {
            ushort calibrationCompleteYearMonth;
            ushort calibrationCompleteDateHours;
            ushort calibrationCompleteMinsSecs;

            lock (sdk.syncRoot)
            {
                calibrationCompleteYearMonth = sdk.ReadHoldingRegisters(1, (ushort)ModbusConstants.CalibrationCompleteYearMonth, 1)[0];
                calibrationCompleteDateHours = sdk.ReadHoldingRegisters(1, (ushort)ModbusConstants.CalibrationCompleteDateHours, 1)[0];
                calibrationCompleteMinsSecs = sdk.ReadHoldingRegisters(1, (ushort)ModbusConstants.CalibrationCompleteMinsSecs, 1)[0];
            }

            int month = BcdToInteger(BitConverter.GetBytes(calibrationCompleteYearMonth)[0]);
            int year = BcdToInteger(BitConverter.GetBytes(calibrationCompleteYearMonth)[1]);
            int hours = BcdToInteger(BitConverter.GetBytes(calibrationCompleteDateHours)[0]);
            int date = BcdToInteger(BitConverter.GetBytes(calibrationCompleteDateHours)[1]);
            int seconds = BcdToInteger(BitConverter.GetBytes(calibrationCompleteMinsSecs)[0]);
            int mins = BcdToInteger(BitConverter.GetBytes(calibrationCompleteMinsSecs)[1]);

            string calculatedVerification = HashVerification(new DateTime(year + 2000, month, date, hours, mins, seconds));
            if (calculatedVerification.CompareTo(code.ToUpper()) != 0) 
            {
                return false;
            }

            lock (sdk.syncRoot)
            {
                ushort[] currentTime = sdk.ReadHoldingRegisters(1, (ushort)ModbusConstants.YearMonth, 3);
                sdk.WriteMultipleRegisters(1, (ushort)ModbusConstants.VerificationYearMonth, currentTime);
            }

            return true;
        }

        public static bool IsVerified(ModbusSDK sdk)
        {
            lock (sdk.syncRoot)
            {
                ushort[] verified = sdk.ReadHoldingRegisters(1, (ushort)ModbusConstants.VerificationYearMonth, 3);
                if (verified[0] == 0 && verified[1] == 0 && verified[2] == 0)
                {
                    return false;
                }
            }
            return true;
        }

        public static string HashVerification(DateTime time)
        {
            string verificationNumber = time.ToString("yyyyMMddHHmmss");
            StringBuilder sb = new StringBuilder();

            System.Console.WriteLine(verificationNumber);

            for (int i = 0; i < verificationNumber.Length; i++)
            {
                sb.AppendFormat("{0}", hashLookup[verificationNumber[i] - '0']);
            }

            return sb.ToString();
        }

        private static void ExportVerificationCode(StreamWriter writer, ModbusSDK sdk)
        {
            DateTime dateTime = DateTime.MinValue;

            SPUSDK.AccessModbus(() =>
            {
                lock (sdk.syncRoot)
                {
                    ushort calibrationCompleteYearMonth = sdk.ReadHoldingRegisters(1, (ushort)ModbusConstants.CalibrationCompleteYearMonth, 1)[0];
                    ushort calibrationCompleteDateHours = sdk.ReadHoldingRegisters(1, (ushort)ModbusConstants.CalibrationCompleteDateHours, 1)[0];
                    ushort calibrationCompleteMinsSecs = sdk.ReadHoldingRegisters(1, (ushort)ModbusConstants.CalibrationCompleteMinsSecs, 1)[0];
                    int month = BcdToInteger(BitConverter.GetBytes(calibrationCompleteYearMonth)[0]);
                    int year = BcdToInteger(BitConverter.GetBytes(calibrationCompleteYearMonth)[1]);
                    int hours = BcdToInteger(BitConverter.GetBytes(calibrationCompleteDateHours)[0]);
                    int date = BcdToInteger(BitConverter.GetBytes(calibrationCompleteDateHours)[1]);
                    int seconds = BcdToInteger(BitConverter.GetBytes(calibrationCompleteMinsSecs)[0]);
                    int mins = BcdToInteger(BitConverter.GetBytes(calibrationCompleteMinsSecs)[1]);

                    dateTime = new DateTime(year + 2000, month, date, hours, mins, seconds);
                }
            });

            writer.WriteLine(dateTime.ToString("yyyyMMddHHmmss"));

        }

        private static void ExportAmotVerificationData(StreamWriter writer, ModbusSDK sdk)
        {
            StartSection(writer, "AMOT_VERIFICATION_DATA");
            writer.WriteLine("(non-importable file - do not alter)");
        }

        private static void ExportVesselInfo(StreamWriter writer, ModbusSDK sdk)
        {
            ModuleConfiguration configuration = ModuleConfiguration.GetApplicationConfiguration();
            DataCollectionConfigurationSection dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;

            DatabaseSDK ConfigurationDb = new DatabaseSDK(dataCollectionConfig.Database.ConfigurationDb,
                                dataCollectionConfig.Database.DbRetryCount,
                                dataCollectionConfig.Database.DbRetryDuration,
                                dataCollectionConfig.Database.DbDeletePeriod);

            StartSection(writer, "VESSEL_INFO");
            ShipInfo shipInfo = ReportShared.GetShipInfo(ConfigurationDb);
            WritePair(writer, "VesselName", shipInfo.VesselName);
            WritePair(writer, "ImoNo", shipInfo.ImoNo);
            WritePair(writer, "ClassificationSociety", shipInfo.ClassificationSociety);
            WritePair(writer, "ClassRegisterNo", shipInfo.ClassRegisterNo);
            WritePair(writer, "Component", shipInfo.Component);
            WritePair(writer, "EngineLicenser", shipInfo.EngineLicenser);
            WritePair(writer, "EngineMaker", shipInfo.EngineMaker);
            WritePair(writer, "EngineType", shipInfo.EngineType);
            WritePair(writer, "EngineSerialNumber", shipInfo.EngineSerialNumber);           
        }

        private static void ExportActiveAlarms(StreamWriter writer, ModbusSDK sdk)
        {
            Alarms alarms = new Alarms();

            StartSection(writer, "ACTIVE_ALARMS");
            foreach (AlarmDatabaseObject alarm in alarms.GetActiveAlarms())
            {
                if (alarm.AlarmOff == 0) { writer.WriteLine("{0} {1}", DatabaseSDK.ConvertFromUnixTimeStamp(alarm.AlarmOn).ToString("dd/MM/yyyy HH:mm:ss"), alarm.AlarmDesc); }
            }
        }

        private static void ExportNonActiveAlarms(StreamWriter writer, ModbusSDK sdk)
        {
            Alarms alarms = new Alarms();

            StartSection(writer, "HISTORIC_ALARMS");
            foreach (AlarmDatabaseObject alarm in alarms.GetActiveAlarms())
            {
                if (alarm.AlarmOff != 0) writer.WriteLine("{0} {1}", DatabaseSDK.ConvertFromUnixTimeStamp(alarm.AlarmOn).ToString("dd/MM/yyyy HH:mm:ss"), alarm.AlarmDesc);
            }
        }

        private static void ExportEventLog(StreamWriter writer, ModbusSDK sdk)
        {
            EventLog eventlog = new EventLog();

            StartSection(writer, "EVENTLOG");
            eventlog.ExportToCSV(writer);
        }

        private static void ExportOffsets(StreamWriter writer, ModbusSDK sdk)
        {
            lock (sdk.syncRoot)
            {
                writer.WriteLine();
                SPUSDK.ExportOffsets(writer, sdk, SPUSDK.OffsetA);
            }

            lock (sdk.syncRoot)
            {
                writer.WriteLine();
                SPUSDK.ExportOffsets(writer, sdk, SPUSDK.OffsetB);
            }
        }

        private static void ExportAmotSettings(StreamWriter writer, ModbusSDK sdk)
        {
            ModuleConfiguration configuration = ModuleConfiguration.GetApplicationConfiguration();
            DataCollectionConfigurationSection dataCollectionConfig = configuration.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;

            StartSection(writer, "AMOT_SETTINGS");
            WritePair(writer, "Database.ConfigurationDb", dataCollectionConfig.Database.ConfigurationDb);
            WritePair(writer, "Database.UsersDb", dataCollectionConfig.Database.UsersDb);
            WritePair(writer, "Database.CommStats", dataCollectionConfig.Database.CommStats);
            WritePair(writer, "Database.DataLogger", dataCollectionConfig.Database.DataLogger);
            WritePair(writer, "Database.EventLog", dataCollectionConfig.Database.EventLog);
            WritePair(writer, "Database.SensorReplacement", dataCollectionConfig.Database.SensorReplacement);
            WritePair(writer, "Database.TrendConfiguration", dataCollectionConfig.Database.TrendConfiguration);
            WritePair(writer, "Database.DbRetryDuration", dataCollectionConfig.Database.DbRetryDuration);
            WritePair(writer, "Database.DbRetryCount", dataCollectionConfig.Database.DbRetryCount);
            WritePair(writer, "Database.DbDeletePeriod", dataCollectionConfig.Database.DbDeletePeriod);
            WritePair(writer, "Database.DbExportTransactionSize", dataCollectionConfig.Database.DbExportTransactionSize);

            foreach (string setting in ConfigurationManager.AppSettings)
            {
                WritePair(writer, string.Format("appsetting.{0}", setting), ConfigurationManager.AppSettings[setting]);
            }
            
            WritePair(writer, "Modbus.ModbushostIP", dataCollectionConfig.Mobus.ModbusHostIP);
            WritePair(writer, "Modbus.ModbusInternalHostPort", dataCollectionConfig.Mobus.ModbusInternalHostPort);
            WritePair(writer, "Modbus.ModbusExternalHostPort", dataCollectionConfig.Mobus.ModbusExternalHostPort);
            WritePair(writer, "Modbus.PreferInternal", dataCollectionConfig.Mobus.PreferInternal);
            WritePair(writer, "Modbus.ModbusTCPIPTimeout", dataCollectionConfig.Mobus.ModbusTCPIPTimeout);
            WritePair(writer, "Modbus.ModbusSlaveUnitId", dataCollectionConfig.Mobus.ModbusSlaveUnitId);
            WritePair(writer, "Modbus.RunSchedule", dataCollectionConfig.Mobus.RunSchedule);

            ModbusConstants[] modbusConstants = {
                ModbusConstants.NumberOfSensorsSPU1,
                ModbusConstants.NumberOfSensorsSPU2,
                ModbusConstants.SensorScaling,
                ModbusConstants.RPMLimit,
                ModbusConstants.SDCardEnabled,
                ModbusConstants.SDCardError,
                ModbusConstants.SensorHysteresis,
                ModbusConstants.CylinderHysteresis,
                ModbusConstants.SensorSlowDownLevel,
                ModbusConstants.SensorDeviationSlowDownLevelCalibration,
                ModbusConstants.SensorDeviationAlarmLevelCalibration,
                ModbusConstants.SensorSlowDownLevelCalibration,
                ModbusConstants.SensorAlarmLevelCalibration,
                ModbusConstants.CylinderAlarmLevelCalibration,
                ModbusConstants.PreWarningTimer,
                ModbusConstants.PreWarningLevel,
                ModbusConstants.NominalEngineSpeed,
                ModbusConstants.RoughCalibrationSpeedBand1Lower,
                ModbusConstants.RoughCalibrationSpeedBand1Upper,
                ModbusConstants.RoughCalibrationSpeedBand2Lower,
                ModbusConstants.RoughCalibrationSpeedBand2Upper,
                ModbusConstants.RoughCalibrationSpeedBand3Lower,
                ModbusConstants.RoughCalibrationSpeedBand3Upper,
                ModbusConstants.RoughCalibrationSpeedBand1RpmMin,
                ModbusConstants.RoughCalibrationSpeedBand1RpmMax,
                ModbusConstants.RoughCalibrationSpeedBand2RpmMin,
                ModbusConstants.RoughCalibrationSpeedBand2RpmMax,
                ModbusConstants.RoughCalibrationSpeedBand3RpmMin,
                ModbusConstants.RoughCalibrationSpeedBand3RpmMax,
                ModbusConstants.WIOUpperAlarm,
                ModbusConstants.WIOAlarm,
                ModbusConstants.WIOHysteresis,
                ModbusConstants.InitialCalibrationSlope,
                ModbusConstants.RoughCalibrationTimer,
                ModbusConstants.LearningModeTotalTimer,
                ModbusConstants.LearningModeIntervalTimer,
                ModbusConstants.FineCalibrationSamples,
                ModbusConstants.MANMinimumSamples,
                ModbusConstants.DSSS,
                ModbusConstants.SDLongTermLogRate,
                ModbusConstants.SDShortTermLogRate,
                ModbusConstants.AlarmReflash,
                ModbusConstants.WIOEnabled,
                ModbusConstants.SlowdownBlipcontrol,
                ModbusConstants.SLEMEnable,
                ModbusConstants.SLEMMVFSD,
                ModbusConstants.SLEMAlarmLevelMV,
                ModbusConstants.SLEMHysteresisMV,
                ModbusConstants.SLEMAlarmDelaySeconds,
                ModbusConstants.CPPEnable,
                ModbusConstants.CPPmA,
                ModbusConstants.CPPPercent,
                ModbusConstants.CrankcaseSplitDamageMonitoring,
                ModbusConstants.KValueDamageMonitoring,
                ModbusConstants.BetaValueDamageMonitoring,
                ModbusConstants.RpmLevelXDamageMonitoring,
                ModbusConstants.RefLevelXDamageMonitoring,
                ModbusConstants.PresentStateXDamageMonitoring,
                ModbusConstants.AlarmLevelSingleDamageMonitoring,
                ModbusConstants.AlarmLevelCylinderDamageMonitoring,
                ModbusConstants.AlarmLevelMBSumDamageMonitoring,
                ModbusConstants.DeltaRpmLimitDamageMonitoring,
                ModbusConstants.HysteresisDamageMonitoring,
                ModbusConstants.DamageMonitoringEnableDisable,
            };

            lock (sdk.syncRoot)
            {
                ushort[] values = null;
                SPUSDK.AccessModbus(() => {
                    using (TimedLock.Lock(sdk.syncRoot))
                    {
                        values = sdk.ReadHoldingRegisters(1, (ushort)ModbusConstants.ChannelStatus1Registers, 28);
                    }
                });
                for (int i = 0; i < values.Length; i++)
                {
                    WritePair(writer, string.Format("STATUS{0}", i + 1), values[i]);
                }

                // Bug 3 fix (host/docs/CPU_DASHBOARD_OVERVIEW.md):
                //  (a) Modbus registers are 16-bit unsigned. The previous code
                //      cast the result to `short`, which produced negative
                //      values for any register whose stored ushort was > 32767.
                //      KValueDamageMonitoring is stored in the SPU as integer
                //      ×100000 (per man.c), so values in the 32768–65000 range
                //      were being printed as negative numbers.
                //  (b) Several damage-monitoring parameters use ×100000 fixed-
                //      point scaling on the SPU side. The CSV emits the raw
                //      stored value here; surveyors are expected to know the
                //      scale (it's the firmware's documented contract).
                //      Read as ushort and emit verbatim.
                foreach (ModbusConstants register in modbusConstants)
                {
                    ushort value = 0;
                    SPUSDK.AccessModbus(() =>
                    {
                        using (TimedLock.Lock(sdk.syncRoot))
                        {
                            value = sdk.ReadHoldingRegisters(1, (ushort)register, 1)[0];
                        }
                    });
                    WritePair(writer, Enum.GetName(typeof(ModbusConstants), register), value);
                }
            }
        }

        private static void ExportFiringOrder(StreamWriter writer, ModbusSDK sdk)
        {
            StartSection(writer, "FIRING ORDER");
            lock (sdk.syncRoot)
            {
                ushort[] firingOrder = null;

                SPUSDK.AccessModbus(() =>
                    {
                        using (TimedLock.Lock(sdk.syncRoot))
                        {
                            firingOrder = sdk.ReadHoldingRegisters(1, (ushort)ModbusConstants.FiringOrderRegisters, 7);
                        }
                    });

                foreach (ushort order in firingOrder)
                {
                    writer.Write("{0} ", 1 + (order / 2));
                }
                writer.WriteLine();
            }
        }

        private static void ExportAlarmMasking(StreamWriter writer, ModbusSDK sdk)
        {
            StartSection(writer, "ALARM_MASKING");
            lock (sdk.syncRoot)
            {
                ushort [] values = null;
                
                SPUSDK.AccessModbus(() =>
                    {
                        values = sdk.ReadHoldingRegisters(1, (ushort)ModbusConstants.ChannelStatus1Registers, 28); 
                    });

                for (int i = 0; i < values.Length; i++)
                {
                    writer.WriteLine("Sensor Status {0}{1} {2}", 
                        (i / 2) + 1, (i % 2 == 0) ? "A" : "B", 
                        (values[i] & (1<<2)) == 0 ? "NON-MASKED" : "MASKED");
                }
            }
        }

        private static int BcdToInteger(byte bcd)
        {
            //Split the byte up into its 4-bit components
            byte nibble1 = (byte)(bcd & 0x0F);
            byte nibble2 = (byte)((bcd & 0xF0) >> 4);

            return (nibble2 * 10) + nibble1;
        }

        private static void ExportEngineLearning(StreamWriter writer, ModbusSDK sdk)
        {
            StartSection(writer, "ENGINE_LEARNING");
            
            ModbusConstants[] modbusConstants = {
                ModbusConstants.CalibrationStage,
                ModbusConstants.LearningModeTotalTimer,
                ModbusConstants.LearningModeIntervalTimer,
                ModbusConstants.FineCalibrationSamples,
                ModbusConstants.LearningTimeLeft,
                ModbusConstants.IntervalTimeLeft
            };

            lock (sdk.syncRoot)
            {
                foreach (ModbusConstants register in modbusConstants)
                {
                    SPUSDK.AccessModbus(() =>
                    {
                        using (TimedLock.Lock(sdk.syncRoot))
                        {
                            short value = (short)sdk.ReadHoldingRegisters(1, (ushort)register, 1)[0];
                            WritePair(writer, Enum.GetName(typeof(ModbusConstants), register), value);
                        }
                    });
                }
            }
            ushort[] calibrationCompleteDate = null;

            SPUSDK.AccessModbus(() =>
            {
                using (TimedLock.Lock(sdk.syncRoot))
                {
                    calibrationCompleteDate = sdk.ReadHoldingRegisters(1, (ushort)ModbusConstants.CalibrationCompleteYearMonth, 3);
                }
            });

            int month = BcdToInteger(BitConverter.GetBytes(calibrationCompleteDate[0])[0]);
            int year = BcdToInteger(BitConverter.GetBytes(calibrationCompleteDate[0])[1]);
            int hours = BcdToInteger(BitConverter.GetBytes(calibrationCompleteDate[1])[0]);
            int date = BcdToInteger(BitConverter.GetBytes(calibrationCompleteDate[1])[1]);
            int seconds = BcdToInteger(BitConverter.GetBytes(calibrationCompleteDate[2])[0]);
            int mins = BcdToInteger(BitConverter.GetBytes(calibrationCompleteDate[2])[1]);

            try
            {
                DateTime dateTime = new DateTime(year + 2000, month, date, hours, mins, seconds);
                WritePair(writer, "EngineLearnCompleteTime", dateTime.ToString("dd/MM/yyyy HH:mm:ss"));
            }
            catch (ArgumentOutOfRangeException)
            {
                //Not a timestamp to write
                WritePair(writer, "EngineLearnCompleteTime", "Not Set");
            }            
        }

        private static void ExportSDStatus(StreamWriter writer, ModbusSDK sdk)
        {
            StartSection(writer, "SD_STATUS");

            ushort value = 0;
            using (TimedLock.Lock(sdk.syncRoot))
            {
                SPUSDK.AccessModbus(() => { value = sdk.ReadHoldingRegisters(1, (ushort)ModbusConstants.SDCardError, 1)[0]; });
                WritePair(writer, "SD Status", value == 0 ? "OK" : "ERROR");
            }
        }

        private static void ExportHealthyAlarmSlowdown(StreamWriter writer, ModbusSDK sdk)
        {
            StartSection(writer, "HEALTH_ALARMS_SLOWDOWN");

            ushort spu = 0;
            ushort alarm = 0; ;
            ushort slowdown = 0;

            lock (sdk.syncRoot)
            {
                SPUSDK.AccessModbus(() =>
                {
                    using (TimedLock.Lock(sdk.syncRoot))
                    {
                        spu = sdk.ReadHoldingRegisters(1, (ushort)ModbusConstants.SPUDigitalOutput1, 1)[0];
                        alarm = sdk.ReadHoldingRegisters(1, (ushort)ModbusConstants.SPUDigitalOutput2, 1)[0];
                        slowdown = sdk.ReadHoldingRegisters(1, (ushort)ModbusConstants.SPUDigitalOutput3, 1)[0];
                    }
                });

                writer.WriteLine("SPU Status {0}", spu == 0 ? "FAIL" : "OK");
                writer.WriteLine("Alarm Status {0}", alarm == 0 ? "FAIL" : "OK");
                writer.WriteLine("Slowdown Status {0}", slowdown == 0 ? "FAIL" : "OK");
            }
        }

        private static void ExportSensorStatus(StreamWriter writer)
        {
            ModuleConfiguration configuration = ModuleConfiguration.GetApplicationConfiguration();
            WebServiceConfiguration webServiceConfiguration = (WebServiceConfiguration)configuration.GetSection("WebService");

            //The sensor status is only avalable on the external (mapped) port
            //Create a connection to it to read the status.
            using (ModbusSDK modbus = new ModbusSDK(ModbusSDK.ModbusPort.External))
            {
                StartSection(writer, "SENSOR_STATUS");

                UInt16[] sensorStatus = null;
                UInt16[] sensorDevStatus = null;
                SPUSDK.AccessModbus(() => { sensorStatus = modbus.ReadHoldingRegisters(1, webServiceConfiguration.Settings.SensorStatusBaseReg, webServiceConfiguration.Settings.SensorStatusCount); });
                SPUSDK.AccessModbus(() => { sensorDevStatus = modbus.ReadHoldingRegisters(1, webServiceConfiguration.Settings.SensorDevStatusBaseReg, webServiceConfiguration.Settings.SensorDevStatusCount); });

                if (sensorStatus != null && sensorDevStatus != null)
                {
                    if (sensorStatus.Length == sensorDevStatus.Length)
                    {
                        for (int i = 0; i < sensorStatus.Length; i++)
                        {
                            CalculatedStatusWord sensorStatusWord = new CalculatedStatusWord((short)sensorStatus[i]);
                            CalculatedStatusWord sensorDevStatusWord = new CalculatedStatusWord((short)sensorDevStatus[i]);
                            writer.WriteLine("Sensor Status {0}{1} {2}", (i / 2) + 1, (i % 2 == 0) ? "A" : "B", ActualSensorStatus(sensorStatusWord, sensorDevStatusWord));
                        }
                    }
                    else
                    {
                        writer.WriteLine("Failed to retreive Sensor Status (Count of Sensor Status registers does not match Count of Sensor Dev Status registers)");
                    }
                }
                else
                {
                    writer.WriteLine("Failed to retreive Sensor Status (no sensors read)");
                }
            }
        }

        private static string ActualSensorStatus(CalculatedStatusWord sensorStatus, CalculatedStatusWord sensorDevStatus)
        {
            //Default to sensor status
            string actualStatus = sensorStatus.ToString();

            //If the sensor status are not equal than determine which one is at fault.
            if (sensorStatus.Status != sensorDevStatus.Status)
            {
                if (!sensorStatus.Normal)
                {
                    //Sensor status is in a fault state
                    actualStatus = sensorStatus.ToString();
                }

                if (!sensorDevStatus.Normal)
                {
                    //Sensor dev status is in a fault state
                    actualStatus = sensorDevStatus.ToString();
                }
            }

            return actualStatus;
        }

        private static void StartSection(StreamWriter writer, string section)
        {
            writer.WriteLine("");
            writer.WriteLine("[{0}]", section);
        }

        private static void WritePair(StreamWriter writer, string key, object value)
        {
            writer.WriteLine("{0}={1}", key, value);
        }
    }
}
