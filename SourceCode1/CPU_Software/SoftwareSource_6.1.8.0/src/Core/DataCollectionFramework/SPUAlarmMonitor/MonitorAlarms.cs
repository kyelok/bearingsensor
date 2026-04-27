using System;
using System.Collections.Generic;
using System.IO;
using DataCollectionSDK;
using EventLogging;
using FaultErrorIndicators;
using HelperClasses;
using AMOTConstants;
using System.Text;
using System.Data.Common;
using Configuration;
using WebServiceObjects;
using WebService;
using System.Linq;

namespace SPUAlarmMonitor
{
    /// <summary>
    /// This class monitors the SPU for alarm events and logs them into the event log database.
    /// 
    /// Alarm On  Count>0     Acked   Ignored
    ///     0         0          0        0      Initial state
    ///     1         0          0        0      Set alarmOn to current time, increment count (Done)
    ///     0         1          0        0      If alarmOff is null set current time in alarm Off (Done)
    ///     1         1          0        0      Increment count
    ///     0         0          1        0      (User error, Ignore)
    ///     1         0          1        0      Set acked, ackTime, ackUser
    ///     0         1          1        0      ** Clear alarm **
    ///     1         1          1        0      Set acked, ackTime, ackUser
    ///     0         0          0        1      (User error, Ignore)
    ///     1         0          0        1      Set ignoreTime, ignoreUser
    ///     0         1          0        1      Set ignoreTime, ignoreUser
    ///     1         1          0        1      Set ignoreTime, ignoreUser
    ///     0         0          1        1      (User error, ignore)
    ///     1         0          1        1      Set acked, ackTime, ackUser
    ///     0         1          1        1      ** Clear alarm **
    ///     1         1          1        1      Set acked, ackTime, ackUser
    ///     
    /// </summary>
    public class SPUAlarmMonitorPlugin : IExtInterface
    {
        /// <summary>
        /// The modbus connection
        /// </summary>
        private ModbusSDK connection;

        /// <summary>
        /// Handle to the event log
        /// </summary>
        private EventLog eventLog;

        /// <summary>
        /// Modbus slave unit Id
        /// </summary>
        private byte ModbusSlaveUnitId = 1;

        /// <summary>
        /// Database SDK
        /// </summary>
        private DatabaseSDK database;

        //32 is for wear alarm, 20 is for temperaturea alarm (4 for alarm, 4 for slow down, 4 for failure high, 4 for failure loe, 4 for loose connection 4 for lose power), support up to 64 temperature channel (4*16)
        private static ushort MaxAlarmBits = 56; //32+24
        private static ushort MaxWearAlarmBits = 32;
        private static ushort MaxEventBits = 16;

        private static ushort LossCommIndex = 896;
        private static ushort LossCommTmpIndex = 897;
        private static int TemperatureAlarmIndexStart = 512;
        private static int TemperatureSlowDownIndexStart = 576;
        private static int TemperatureRtdLooseConnection = 640;
        private static int TemperatureRtdShort = 704;
        private static int TemperatureRtdOpen = 768;
        private static int TemperatureRtdLosePower = 832;
        private ushort[] alarmLevelsTemperature = null;

        private EventLogTransaction eventTransactions;

        private TemperaturePluginConfigSection temperaturePluginConfiguration;

        readonly object syncRoot = new object();

        /// <summary>
        /// This holds the alarm levels read from the Modbus
        /// </summary>
        private Dictionary<int, ushort> alarmLevels = new Dictionary<int, ushort>();

        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        private AlarmDatabaseObject[] activeAlarms;
        private DataRetriever dataRetriever;

        private ushort[] activeEventBits;

        private static int lastTimeSync = 0;

        private bool initialize = true;
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
        /// Internal Modbus connection. Do not use this directly.
        /// </summary>
        private ModbusSDK mobusInternal_Internal;


        int hoursBeforeRemovingClearedAlarms = 24;

        /// <summary>
        /// Constructs the object
        /// </summary>
        public SPUAlarmMonitorPlugin()
        {
            LogSchedule = 0;
            RunSchedule = 5000;
            this. mobusInternal_Internal = new ModbusSDK(ModbusSDK.ModbusPort.Internal);
            this.connection = new ModbusSDK(ModbusSDK.ModbusPort.Internal);
            this.eventLog = new EventLog();
            this.eventTransactions = eventLog.CreateEventLogTransaction();
        }

        private void InitialiseDb()
        {
            StringBuilder sqlStatement = new StringBuilder();

            sqlStatement.Append("CREATE TABLE IF NOT EXISTS alarms (");
            sqlStatement.Append("    alarmId integer primary key,");   // Unique Alarm Id
            sqlStatement.Append("    alarmDesc text,");             // Description
            sqlStatement.Append("    alarmOn integer,");            // Time alarm first went On
            sqlStatement.Append("    alarmOff integer,");           // Time alarm went Off
            sqlStatement.Append("    count integer,");              // Count alarm fired
            sqlStatement.Append("    acked boolean,");              // User acked alarm
            sqlStatement.Append("    ignore boolean,");             // User ignored alarm
            sqlStatement.Append("    ackTime integer,");            // Time of ack
            sqlStatement.Append("    ackUser TEXT,");               // Id of user acked alarm
            sqlStatement.Append("    ignoreTime integer,");         // Time of ignore
            sqlStatement.Append("    ignoreUser TEXT, ");           // Id of user ignored alarm
            sqlStatement.Append("    dataType integer, ");          // DataType of the alarm
            sqlStatement.Append("    channelMask integer,");        // ChannelMask for the alarm
            sqlStatement.Append("    eventCode integer,");          // Event Code for the alarm
            sqlStatement.Append("    logged integer");              // Flagged used to indicate that the alarm clear has been logged in the event log
            sqlStatement.Append(");");

            database.ExecuteSQLStatements(new String[] { sqlStatement.ToString() }, FaultErrorIndicators.FaultCodes.EventLogWriteFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog);
        }

        public void Init()
        {
            ModuleConfiguration moduleConfig = ModuleConfiguration.GetApplicationConfiguration();
            DataCollectionConfigurationSection dataCollectionConfig = moduleConfig.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;
            temperaturePluginConfiguration = moduleConfig.GetSection("TemperaturePlugin") as TemperaturePluginConfigSection;

            if (dataCollectionConfig == null)
                dataCollectionConfig = new DataCollectionConfigurationSection();

            if (temperaturePluginConfiguration == null)
                temperaturePluginConfiguration = new TemperaturePluginConfigSection();

            hoursBeforeRemovingClearedAlarms = dataCollectionConfig.Database.ClearedAlarmTime;

            database = new DatabaseSDK(
                dataCollectionConfig.Database.EventLog,
                dataCollectionConfig.Database.DbRetryCount,
                dataCollectionConfig.Database.DbRetryDuration,
                0);

            //Calculate the possible number of alarms for the alarm bits and add one to handle loss of comms to SPU, one for loss comms to PLC
            activeAlarms = new AlarmDatabaseObject[(MaxAlarmBits * 16) + 2];
            activeEventBits = new ushort[MaxEventBits];

            for (int i = 0; i < activeEventBits.Length; i++)
            {
                activeEventBits[i] = 0;
            }

            TemperatureGloabal.LosePowerList = null;
            TemperatureGloabal.ConnectionStatusList = null;
            TemperatureGloabal.OpenStatusList = null;
            TemperatureGloabal.ShortStatusList = null;
            TemperatureGloabal.AlarmList = null;
            TemperatureGloabal.SlowdownList = null;
            TemperatureGloabal.SensorNumber = 0;
            TemperatureGloabal.MainbearingNumber = 0;
            TemperatureGloabal.CrossheadbearingNumber = 0;
            TemperatureGloabal.CrankpinbearingNumber = 0;
            TemperatureGloabal.RtdPerPlc = 4;
            TemperatureGloabal.GraphScale = 100;
            TemperatureGloabal.DevGraphScale = 100;
            TemperatureGloabal.PlcVersionNumber = 0;

            InitialiseDb();
        }

        /// <summary>
        /// Contains the code that will be executed by the scheduler.
        /// </summary>
        public void Run()
        {
            ushort[] alarmBits = null;
            ushort[] alarmBitsWear = null;
            ushort[] alarmBitsTmp = null;
            ushort[] eventBits = null;
            IEnumerable<ushort> alarmTotal = null;

            if (this.initialize == true)
            {
                this.initialize = false;

                if (ReadSPUAlarmMode(2, DigitalOutputState.On))
                {
                    EnableSPUAlarmNoTestMode(2, DigitalOutputState.Off, "Initiate");
                }

                if (ReadSPUAlarmMode(3, DigitalOutputState.On))
                {
                    EnableSPUAlarmNoTestMode(3, DigitalOutputState.Off, "Initiate");
                }
            }

            //sync system and SPU time at startup and then every 8 hours
            if ((0 == lastTimeSync) || ((Environment.TickCount - lastTimeSync) > (8 * 60 * 60 * 1000)))
            {
                try
                {
                    SPUSDK.SetTimeAndDate(this.connection, DateTime.UtcNow);
                    lastTimeSync = Environment.TickCount;
                }
                catch (Exception e)
                {
                    logger.ErrorFormat("Caught exception {0}", e.Message);
                } //Ignore exception.
            }

            alarmLevelsTemperature = new ushort[64];
            for (ushort i = 0; i < alarmLevelsTemperature.Length; i++)
            {
                alarmLevelsTemperature[i] = 0;
            }

            if (TemperatureGloabal.Temperature != null)
            {
                for (ushort i = 0; i < TemperatureGloabal.Temperature.Length; i++)
                {
                    alarmLevelsTemperature[i] = (ushort)TemperatureGloabal.Temperature[i];
                }
            }

            alarmBitsTmp = new ushort[24];
            for (int i = 0; i < alarmBitsTmp.Length; i++)
            {
                alarmBitsTmp[i] = 0;
            }

            //array element index 0-3 is for temperature alarm bits
            if (TemperatureGloabal.AlarmList != null)
            {
                for (ushort i = 0; i < TemperatureGloabal.AlarmList.Length; i++)
                {
                    alarmBitsTmp[i] = (ushort)TemperatureGloabal.AlarmList[i];
                }
            }

            //array element index 4-7 is for temperature slowdown bits
            if (TemperatureGloabal.SlowdownList != null)
            {
                for (ushort i = 0; i < TemperatureGloabal.SlowdownList.Length; i++)
                {
                    alarmBitsTmp[i + 4] = (ushort)TemperatureGloabal.SlowdownList[i];
                }
            }

            //array element index 8-11 is for RTD connection status
            if (TemperatureGloabal.ConnectionStatusList != null)
            {
                for (ushort i = 0; i < TemperatureGloabal.ConnectionStatusList.Length; i++)
                {
                    alarmBitsTmp[i + 8] = (ushort)TemperatureGloabal.ConnectionStatusList[i];
                }
            }

            //array element index 12-15 is for RTD connection status
            if (TemperatureGloabal.ShortStatusList != null)
            {
                for (ushort i = 0; i < TemperatureGloabal.ShortStatusList.Length; i++)
                {
                    alarmBitsTmp[i + 12] = (ushort)TemperatureGloabal.ShortStatusList[i];
                }
            }

            //array element index 16-19 is for RTD connection status
            if (TemperatureGloabal.OpenStatusList != null)
            {
                for (ushort i = 0; i < TemperatureGloabal.OpenStatusList.Length; i++)
                {
                    alarmBitsTmp[i + 16] = (ushort)TemperatureGloabal.OpenStatusList[i];
                }
            }

            //array element index 20-23 is for RTD lose power status
            if (TemperatureGloabal.LosePowerList != null)
            {
                for (ushort i = 0; i < TemperatureGloabal.LosePowerList.Length; i++)
                {
                    alarmBitsTmp[i + 20] = (ushort)TemperatureGloabal.LosePowerList[i];
                }
            }

            try
            {
                if (TemperatureGloabal.LostCommunicationSpu == false)
                {
                    GetModbusAlarmValues(ModbusSlaveUnitId, (ushort)ModbusConstants.PrewarningLevel, 28);
                    GetModbusAlarmValues(ModbusSlaveUnitId, (ushort)ModbusConstants.SLEMAlarmLevelMV, 1);
                    GetModbusAlarmValues(ModbusSlaveUnitId, (ushort)ModbusConstants.WIOUpperAlarm, 2);
                    GetModbusAlarmValues(ModbusSlaveUnitId, (ushort)ModbusConstants.SensorSlowDownLevel_2, 5);
                    GetModbusAlarmValues(ModbusSlaveUnitId, (ushort)ModbusConstants.DynamicAlarmLevelsSingleDamageMonitoring, 3);
                    GetModbusAlarmValues(ModbusSlaveUnitId, (ushort)ModbusConstants.SLEMAlarmLevelMV, 1);
                    GetModbusAlarmValues(ModbusSlaveUnitId, (ushort)ModbusConstants.PreWarningLevel, 1);
                    GetModbusAlarmValues(ModbusSlaveUnitId, (ushort)ModbusConstants.OffsetARealTimeAccess, 28);

                    //bearing wear alarm/slowdown bit directly reading out from SPU through 485
                    alarmBitsWear = this.connection.ReadHoldingRegisters(ModbusSlaveUnitId, (ushort)ModbusConstants.BitAlarms, MaxWearAlarmBits);
                }
                else
                {
                    alarmBitsWear = new ushort[32];
                    for (int i = 0; i < alarmBitsWear.Length; i++) alarmBitsWear[i] = 0;                    
                }
                //Combine wear alarm/slowdown and temperature alarm/slowdown
                alarmTotal = alarmBitsWear.Concat(alarmBitsTmp);
                alarmBits = alarmTotal.ToArray();
                if (TemperatureGloabal.LostCommunicationSpu == false)
                {
                    eventBits = this.connection.ReadHoldingRegisters(ModbusSlaveUnitId, (ushort)ModbusConstants.BitEvents, MaxEventBits);
                }
                else
                {
                    eventBits = new ushort[16];
                    for (int i = 0; i < eventBits.Length; i++) eventBits[i] = 0; 
                }
            }
            catch (Exception e)
            {
                //still set temperature alarm
                alarmBits = new ushort[56];
                if (TemperatureGloabal.LostCommunicationPlc == false && TemperatureGloabal.SensorNumber != 0)
                {                    
                    for (ushort i = 0; i < alarmBitsTmp.Length; i++)
                    {
                        alarmBits[i + 32] = alarmBitsTmp[i];
                    }                    
                }
                else
                {
                    for (ushort i = 0; i < alarmBitsTmp.Length; i++)
                    {
                        alarmBits[i + 32] = 0;
                    } 
                }
                logger.ErrorFormat("Caught exception {0}", e.Message);
            }

            try
            {
                if (alarmBits != null)
                {
                    //Read the alarm bits starting at register 647
                    ProcessAlarms(alarmBits);
                }

                ProcessFaultsPlc();

                if (eventBits != null)
                {
                    ProcessEvents(eventBits);
                }
            }
            finally
            {
                ProcessFaults();                
            }
        }

        public void Log(DateTime logTime)
        { }  //Do nothing all work done in run.

        public int RunSchedule
        {
            get;
            set;
        }

        public int LogSchedule
        {
            get;
            set;
        }

        public object SyncRoot
        {
            get
            {
                return syncRoot;
            }
        }

        /// <summary>
        /// Flag indicating that this is a realtime task
        /// </summary>
        public bool Realtime
        {
            get
            {
                return false;
            }
        }

        /// <summary>
        /// Stop any internal services
        /// </summary>
        public void Stop()
        {
            //DoNothing
        }

        private void ProcessEvents(ushort[] eventBits)
        {
            logger.InfoFormat("Testing {0} event bits", (eventBits.Length * 16));
            // If any alarm states have changed then add them to the database
            for (int i = 0, index = 0; i < eventBits.Length; i++)
            {
                //2014-03-26 FF: index can be 0-38, eventBits.Length is 0-15, shall not set index < eventBits.Length, changed to index < Alarms.EventTextArray.Length
                for (ushort bit = 1; bit != 0 && (index < Alarms.EventTextArray.Length); bit <<= 1, index++)
                //for (ushort bit = 1; bit != 0 && (index < eventBits.Length); bit <<= 1, index++)
                {
                    if ((eventBits[i] & bit) != 0)
                    {
                        //Check if the bit has already been set
                        if (i < activeEventBits.Length)
                        {
                            if ((activeEventBits[i] & bit) == 0)
                            {
                                //This bit has not been set before create the event log entry
                                eventTransactions.LogGeneralEvent(GetEventDescription(index));
                            }

                            //Set the bit in the active event bits to track the state of it
                            activeEventBits[i] = (ushort)(activeEventBits[i] | bit);
                        }
                        else
                        {
                            logger.Fatal("Too many events bits read from the SPU");
                        }
                    }
                    else
                    {
                        if (i < activeEventBits.Length)
                        {
                            //Clear the bit in the active event bits as it is not set.
                            activeEventBits[i] = (ushort)(activeEventBits[i] & ~bit);
                        }
                        else
                        {
                            logger.Fatal("Too many events bits read from the SPU");
                        }
                    }
                }
            }

            // Commit the changes to the database
            eventTransactions.Commit();
        }

        private void ProcessAlarms(ushort[] alarmBits)
        {
            List<String> updateSQL = new List<string>();

            logger.InfoFormat("Testing {0} alarm bits", (alarmBits.Length * 16));

            try
            {
                ProcessDatabaseAlarms(updateSQL);
            }
            catch (DbException)
            {
                database.MoveCorruptDatabase();
                InitialiseDb();
            }
#if false
            bool b = true;
            if (activeAlarms[0] != null)
            {
                b = activeAlarms[0].AlarmOff != 0;
            }

            for (int i = 0; i < alarmBits.Length; i++)
            {
                if (b)
                    alarmBits[i] = 0xFF;
            }
            b = !b;
#endif
            // If any alarm states have changed then add them to the database
            for (int i = 0, index = 0; i < alarmBits.Length; i++)
            {
                for (ushort bit = 1; bit != 0 && (index < activeAlarms.Length); bit <<= 1, index++)
                {

                    if (((alarmBits[i] & bit) != 0) &&
                        // If alarm doesn't exist or if it has been cleared then it needs to be raised again.
                        ((activeAlarms[index] == null) || (activeAlarms[index] != null && activeAlarms[index].ClearLogged)))
                    {
                        // New alarm                        
                        AlarmDatabaseObject alarm = new AlarmDatabaseObject(index);
                        alarm.AlarmOn = DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks);
                        alarm.Count = 1;
                        alarm.AlarmDesc = GetAlarmDescription(index);
                        alarm.AckTime = 0;
                        alarm.AckUser = string.Empty;

                        //For the gap between wear alarm  and temperature alarm, since wear alarm has 512 elemets but only 365 is used by Alarms.AlarmTextArray
                        if ((index < TemperatureAlarmIndexStart && index > Alarms.AlarmTextArray.Length - 6) || index >= LossCommIndex)
                        {
                            alarm.DataType = (int)LogDataTypes.Alarm;
                            alarm.AlarmChannelMask = unchecked((int)0xFFFFFFFF);
                            alarm.EventCode = 0;
                        }
                        //For temperature
                        else if (index >= TemperatureAlarmIndexStart)
                        {
                            //for rtd connection
                            if (index >= TemperatureRtdLooseConnection)
                            {
                                alarm.DataType = (int)Alarms.AlarmTextArray[Alarms.AlarmTextArray.Length - 3].DataType;
                            }
                            //for slowdown type
                            else if (index >= TemperatureSlowDownIndexStart)
                            {
                                alarm.DataType = (int)Alarms.AlarmTextArray[Alarms.AlarmTextArray.Length - 7].DataType;
                            }
                            //for alarm type
                            else
                            {
                                alarm.DataType = (int)Alarms.AlarmTextArray[Alarms.AlarmTextArray.Length - 8].DataType;
                            }

                            //The following are same for all temp alarms
                            alarm.AlarmChannelMask = Alarms.AlarmTextArray[Alarms.AlarmTextArray.Length - 3].AlarmChannelMask;
                            alarm.EventCode = Alarms.AlarmTextArray[Alarms.AlarmTextArray.Length - 3].EventCode;
                        }
                        //For wear
                        else
                        {
                            alarm.DataType = (int)Alarms.AlarmTextArray[index].DataType;
                            alarm.AlarmChannelMask = Alarms.AlarmTextArray[index].AlarmChannelMask;
                            alarm.EventCode = Alarms.AlarmTextArray[index].EventCode;
                        }

                        updateSQL.Add(alarm.UpdateInDatabaseSQL());
                        activeAlarms[index] = alarm;

                        eventTransactions.LogEvent(
                                (LogDataTypes)alarm.DataType,
                                alarm.AlarmChannelMask,
                                alarm.AlarmId,
                                alarm.EventCode,
                                "Alarm On " + alarm.AlarmDesc,
                                alarm.AckTime, alarm.AckUser);
                    }
                    else if (activeAlarms[index] != null)
                    {
                        //If no alarm triggered but the flag in database is still set ON
                        if ((alarmBits[i] & bit) == 0 && activeAlarms[index].AlarmOff == 0)
                        {
                            // Alarm changed state from On to Off
                            activeAlarms[index].AlarmOff = DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks);
                            updateSQL.Add(activeAlarms[index].UpdateInDatabaseSQL());

                            eventTransactions.LogEvent(
                                (LogDataTypes)activeAlarms[index].DataType,
                                activeAlarms[index].AlarmChannelMask,
                                activeAlarms[index].AlarmId,
                                activeAlarms[index].EventCode,
                                "Alarm Off " + activeAlarms[index].AlarmDesc,
                                activeAlarms[index].AckTime, activeAlarms[index].AckUser);
                        }
                        //If alarm triggered but the flag in database is still set OFF, the description shall be updated to reflect the current fail value
                        else if ((alarmBits[i] & bit) != 0 && activeAlarms[index].AlarmOff != 0)
                        {
                            // Alarm came back On after being Off
                            activeAlarms[index].AlarmOff = 0;
                            activeAlarms[index].AlarmOn = DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks); ////7-12-2013 FF: add this line to reflect the current time
                            activeAlarms[index].AlarmDesc = GetAlarmDescription(index); //7-12-2013 FF: add this line to reflec the current value
                            activeAlarms[index].Count++;
                            updateSQL.Add(activeAlarms[index].UpdateInDatabaseSQL());

                            eventTransactions.LogEvent(
                                (LogDataTypes)activeAlarms[index].DataType,
                                activeAlarms[index].AlarmChannelMask,
                                activeAlarms[index].AlarmId,
                                activeAlarms[index].EventCode,
                                "Alarm On " + activeAlarms[index].AlarmDesc,
                                activeAlarms[index].AckTime, activeAlarms[index].AckUser);
                        }
                    }
                }
            }

            // Commit the changes to the database
            if (updateSQL.Count > 0)
            {
                using (DbConnection connection = database.GetDbConnection())
                {
                    if (database.ExecuteSQLStatements(updateSQL.ToArray(), FaultErrorIndicators.FaultCodes.EventLogWriteFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog) == false)
                    {
                        InitialiseDb();
                    }
                }
            }
            eventTransactions.Commit();
        }

        /// <summary>
        /// This function reads all alarms from the alarm database
        /// and determines if there state machine needs to be advanced.
        /// </summary>
        /// <param name="updateSQL">Will be populated with the SQL commands used to advance an alarms state in teh database.</param>
        private void ProcessDatabaseAlarms(List<String> updateSQL)
        {
            int clearedTimeout = (int)TimeSpan.FromHours(hoursBeforeRemovingClearedAlarms).TotalMilliseconds;

            using (DbConnection connection = database.GetDbConnection())
            {
                using (DbDataReader data = database.Select(connection, AlarmDatabaseObject.AlarmColumns + " from alarms;"))
                {
                    AlarmDatabaseObject alarmObject;
                    while (data.Read())
                    {
                        int alarmId = data.GetInt32(0);
                        string alarmDesc = data.GetString(1);
                        Int64 alarmOn = data.GetInt64(2);
                        Int64 alarmOff = data.GetInt64(3);
                        int count = data.GetInt32(4);
                        bool acked = data.GetInt32(5) == 0 ? false : true;
                        bool ignore = data.GetInt32(6) == 0 ? false : true;
                        Int64 ackTime = data.GetInt64(7);
                        string ackUser = data.GetString(8);
                        Int64 ignoreTime = data.GetInt64(9);
                        string ignoreUser = data.GetString(10);
                        Int32 dataType = (Int32)data.GetInt64(11);
                        Int32 channelMask = (Int32)data.GetInt64(12);
                        short eventCode = (short)data.GetInt64(13);
                        bool logged = data.GetInt32(14) == 0 ? false : true;

                        // Read the item from the database
                        alarmObject = new AlarmDatabaseObject(
                            alarmId,
                            alarmDesc,
                            alarmOn,
                            alarmOff,
                            count,
                            acked,
                            ignore,
                            ackTime,
                            ackUser,
                            ignoreTime,
                            ignoreUser,
                            dataType,
                            channelMask,
                            eventCode,
                            logged);

                        activeAlarms[alarmObject.AlarmId] = alarmObject;

                        // Has this item been acked and does it need to be deleted? //7-12-2013 FF: apparently not, but the time and description need to be updated next time triggered
                        if (activeAlarms[alarmObject.AlarmId].AlarmOff != 0 && activeAlarms[alarmObject.AlarmId].Acked)
                        {
                            if (activeAlarms[alarmObject.AlarmId].ClearLogged == false)
                            {
                                eventTransactions.LogEvent(LogDataTypes.Alarm,
                                    alarmObject.AlarmChannelMask,
                                    alarmObject.AlarmId,
                                    (int)Alarms.AlarmState.Cleared,
                                    "Alarm Cleared " + alarmObject.AlarmDesc,
                                    alarmObject.AckTime, alarmObject.AckUser);

                                activeAlarms[alarmObject.AlarmId].ClearLogged = true;
                                updateSQL.Add(activeAlarms[alarmObject.AlarmId].UpdateInDatabaseSQL());
                            }

                            Int64 now = DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks);
                            if (now - activeAlarms[alarmObject.AlarmId].AckTime > clearedTimeout)
                            {
                                updateSQL.Add(activeAlarms[alarmObject.AlarmId].DeleteSQL());
                                activeAlarms[alarmObject.AlarmId] = null;
                            }
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Checks for faults that need to be logged as events
        /// </summary>
        private void ProcessFaults()
        {
            List<String> updateSQL = new List<string>();
            int alarmTextIndex = Alarms.AlarmTextArray.Length - 2;

            short[] inactiveFaults = Faults.Instance.InactiveFaults();
            short[] activeFaults = Faults.Instance.ActiveFaults();

            bool activeRTUFault = false;

            foreach (short fault in activeFaults)
            {
                if (fault >= (short)FaultCodes.RTUStartFailure && fault <= (short)FaultCodes.RTUNoRS485Comms)
                {
                    activeRTUFault = true;
                }
            }

            if (activeRTUFault)
            {
                int index = activeAlarms.Length - 2;

                if (((activeAlarms[index] == null) || (activeAlarms[index] != null && activeAlarms[index].ClearLogged)))
                {
                    //No RS485 Comms to SPU and no event exists in the database for it
                    //Create on and log it.
                    AlarmDatabaseObject alarm = new AlarmDatabaseObject(index);
                    alarm.AlarmOn = DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks);
                    alarm.Count = 1;
                    alarm.AlarmDesc = string.Format(Alarms.AlarmTextArray[alarmTextIndex].AlarmString, "", "");
                    alarm.AckTime = 0;
                    alarm.AckUser = string.Empty;
                    alarm.DataType = (int)Alarms.AlarmTextArray[alarmTextIndex].DataType;
                    alarm.AlarmChannelMask = Alarms.AlarmTextArray[alarmTextIndex].AlarmChannelMask;
                    alarm.EventCode = Alarms.AlarmTextArray[alarmTextIndex].EventCode;
                    updateSQL.Add(alarm.UpdateInDatabaseSQL());
                    activeAlarms[index] = alarm;

                    eventTransactions.LogEvent(
                            (LogDataTypes)alarm.DataType,
                            alarm.AlarmChannelMask,
                            alarm.AlarmId,
                            alarm.EventCode,
                            "Alarm On " + alarm.AlarmDesc,
                            alarm.AckTime, alarm.AckUser);
                }
                else
                {
                    //Alarm already exists
                    if (activeAlarms[index].AlarmOff != 0)
                    {
                        // Alarm came back On after being Off
                        activeAlarms[index].AlarmOff = 0;
                        activeAlarms[index].Count++;
                        updateSQL.Add(activeAlarms[index].UpdateInDatabaseSQL());

                        eventTransactions.LogEvent(
                            (LogDataTypes)activeAlarms[index].DataType,
                            activeAlarms[index].AlarmChannelMask,
                            activeAlarms[index].AlarmId,
                            activeAlarms[index].EventCode,
                            "Alarm On " + activeAlarms[index].AlarmDesc,
                            activeAlarms[index].AckTime, activeAlarms[index].AckUser);
                    }
                }
            }
            else
            {
                int index = activeAlarms.Length - 2;
                if (activeAlarms[index] != null)
                {
                    if (activeAlarms[index].AlarmOff == 0)
                    {
                        // Alarm changed state from On to Off
                        activeAlarms[index].AlarmOff = DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks);
                        updateSQL.Add(activeAlarms[index].UpdateInDatabaseSQL());

                        eventTransactions.LogEvent(
                            (LogDataTypes)activeAlarms[index].DataType,
                            activeAlarms[index].AlarmChannelMask,
                            activeAlarms[index].AlarmId,
                            activeAlarms[index].EventCode,
                            "Alarm Off " + activeAlarms[index].AlarmDesc,
                            activeAlarms[index].AckTime, activeAlarms[index].AckUser);
                    }
                }
            }

            // Commit the changes to the database
            if (updateSQL.Count > 0)
            {
                using (DbConnection connection = database.GetDbConnection())
                {
                    if (database.ExecuteSQLStatements(updateSQL.ToArray(), FaultErrorIndicators.FaultCodes.EventLogWriteFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog) == false)
                    {
                        InitialiseDb();
                    }
                }
            }
            eventTransactions.Commit();
        }

        private string GetEventDescription(int index)
        {
            string eventDescription;
            string eventValue = string.Empty;

            if (index > Alarms.EventTextArray.Length - 1)
            {
                eventDescription = string.Format("Spare Event {0}", index);
            }
            else
            {
                if (alarmLevels.ContainsKey(Alarms.EventTextArray[index].AlarmValueRegister))
                {
                    eventValue = ((short)alarmLevels[Alarms.EventTextArray[index].AlarmValueRegister]).ToString();
                }

                eventDescription = string.Format(Alarms.EventTextArray[index].AlarmString, eventValue, Alarms.EventTextArray[index].AlarmChannel);
            }

            return eventDescription;
        }

        /// <summary>
        /// Checks for loss comm of PLC that need to be logged as events
        /// </summary>
        private void ProcessFaultsPlc()
        {
            List<String> updateSQL = new List<string>();
            int alarmTextIndex = Alarms.AlarmTextArray.Length - 1;            

            bool activeRTUFault = false;

            if (TemperatureGloabal.LostCommunicationPlc == true)
            {
                activeRTUFault = true;
            }

            if (activeRTUFault)
            {
                int index = activeAlarms.Length - 1;

                if (((activeAlarms[index] == null) || (activeAlarms[index] != null && activeAlarms[index].ClearLogged)))
                {
                    //No RS485 Comms to SPU and no event exists in the database for it
                    //Create on and log it.
                    AlarmDatabaseObject alarm = new AlarmDatabaseObject(index);
                    alarm.AlarmOn = DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks);
                    alarm.Count = 1;
                    alarm.AlarmDesc = string.Format(Alarms.AlarmTextArray[alarmTextIndex].AlarmString, "", "");
                    alarm.AckTime = 0;
                    alarm.AckUser = string.Empty;
                    alarm.DataType = (int)Alarms.AlarmTextArray[alarmTextIndex].DataType;
                    alarm.AlarmChannelMask = Alarms.AlarmTextArray[alarmTextIndex].AlarmChannelMask;
                    alarm.EventCode = Alarms.AlarmTextArray[alarmTextIndex].EventCode;
                    updateSQL.Add(alarm.UpdateInDatabaseSQL());
                    activeAlarms[index] = alarm;

                    eventTransactions.LogEvent(
                            (LogDataTypes)alarm.DataType,
                            alarm.AlarmChannelMask,
                            alarm.AlarmId,
                            alarm.EventCode,
                            "Alarm On " + alarm.AlarmDesc,
                            alarm.AckTime, alarm.AckUser);
                }
                else
                {
                    //Alarm already exists
                    if (activeAlarms[index].AlarmOff != 0)
                    {
                        // Alarm came back On after being Off
                        activeAlarms[index].AlarmOff = 0;
                        activeAlarms[index].Count++;
                        updateSQL.Add(activeAlarms[index].UpdateInDatabaseSQL());

                        eventTransactions.LogEvent(
                            (LogDataTypes)activeAlarms[index].DataType,
                            activeAlarms[index].AlarmChannelMask,
                            activeAlarms[index].AlarmId,
                            activeAlarms[index].EventCode,
                            "Alarm On " + activeAlarms[index].AlarmDesc,
                            activeAlarms[index].AckTime, activeAlarms[index].AckUser);
                    }
                }
            }
            else
            {
                int index = activeAlarms.Length - 1;
                if (activeAlarms[index] != null)
                {
                    if (activeAlarms[index].AlarmOff == 0)
                    {
                        // Alarm changed state from On to Off
                        activeAlarms[index].AlarmOff = DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks);
                        updateSQL.Add(activeAlarms[index].UpdateInDatabaseSQL());

                        eventTransactions.LogEvent(
                            (LogDataTypes)activeAlarms[index].DataType,
                            activeAlarms[index].AlarmChannelMask,
                            activeAlarms[index].AlarmId,
                            activeAlarms[index].EventCode,
                            "Alarm Off " + activeAlarms[index].AlarmDesc,
                            activeAlarms[index].AckTime, activeAlarms[index].AckUser);
                    }
                }
            }

            // Commit the changes to the database
            if (updateSQL.Count > 0)
            {
                using (DbConnection connection = database.GetDbConnection())
                {
                    if (database.ExecuteSQLStatements(updateSQL.ToArray(), FaultErrorIndicators.FaultCodes.EventLogWriteFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog) == false)
                    {
                        InitialiseDb();
                    }
                }
            }
            eventTransactions.Commit();
        }

        private string GetAlarmDescription(int index)
        {
            string alarmValue;
            string alarmDescription;

            //Subtract 2 because the last event in the list does
            //not map to a alarm bit in the SPU
            //If we get an index that for a unsed alarm bit logg it.
            if (index >= LossCommTmpIndex)
            {
                alarmDescription = Alarms.AlarmTextArray[Alarms.AlarmTextArray.Length - 1].AlarmString;
            }
            else if (index == LossCommIndex)
            {
                alarmDescription = Alarms.AlarmTextArray[Alarms.AlarmTextArray.Length - 2].AlarmString;
            }
            //For rtd connection status
            else if (index >= TemperatureRtdLosePower)
            {
                alarmDescription = string.Format(Alarms.AlarmTextArray[Alarms.AlarmTextArray.Length - 3].AlarmString, TemperatureGloabal.ChannelName[index - TemperatureRtdLosePower]);
            }
            else if (index >= TemperatureRtdOpen)
            {
                alarmDescription = string.Format(Alarms.AlarmTextArray[Alarms.AlarmTextArray.Length - 4].AlarmString, TemperatureGloabal.ChannelName[index - TemperatureRtdOpen]);
            }
            else if (index >= TemperatureRtdShort)
            {
                alarmDescription = string.Format(Alarms.AlarmTextArray[Alarms.AlarmTextArray.Length - 5].AlarmString, TemperatureGloabal.ChannelName[index - TemperatureRtdShort]);
            }
            else if (index >= TemperatureRtdLooseConnection)
            {
                alarmDescription = string.Format(Alarms.AlarmTextArray[Alarms.AlarmTextArray.Length - 6].AlarmString, TemperatureGloabal.ChannelName[index - TemperatureRtdLooseConnection]);
            }
            //For temperature slowdown
            else if (index >= TemperatureSlowDownIndexStart)
            {
                int channelDisplay = index - TemperatureSlowDownIndexStart + 1;
                //alarmValue = alarmLevelsTemperature[index - TemperatureSlowDownIndexStart].ToString();
                alarmValue = TemperatureGloabal.SlowdownTrigger[index - TemperatureSlowDownIndexStart].ToString();
                alarmDescription = string.Format(Alarms.AlarmTextArray[Alarms.AlarmTextArray.Length - 7].AlarmString, alarmValue, TemperatureGloabal.ChannelName[index - TemperatureSlowDownIndexStart]);
                //alarmDescription = string.Format(Alarms.AlarmTextArray[Alarms.AlarmTextArray.Length - 2].AlarmString, channelDisplay.ToString());
            }
            //for temperature alarm
            else if (index >= TemperatureAlarmIndexStart)
            {
                int channelDisplay = index - TemperatureAlarmIndexStart + 1;
                //alarmValue = alarmLevelsTemperature[index - TemperatureAlarmIndexStart].ToString();
                alarmValue = TemperatureGloabal.AlarmTrigger[index - TemperatureAlarmIndexStart].ToString();
                alarmDescription = string.Format(Alarms.AlarmTextArray[Alarms.AlarmTextArray.Length - 8].AlarmString, alarmValue, TemperatureGloabal.ChannelName[index - TemperatureAlarmIndexStart]);
                //alarmDescription = string.Format(Alarms.AlarmTextArray[Alarms.AlarmTextArray.Length - 3].AlarmString, channelDisplay.ToString());
            }
            //For all wear alarms
            else
            {
                if (alarmLevels.ContainsKey(Alarms.AlarmTextArray[index].AlarmValueRegister))
                {
                    short value;
                    value = (short)alarmLevels[Alarms.AlarmTextArray[index].AlarmValueRegister];

                    //Some of the registers need additional processing
                    //We need to do that here.
                    switch (Alarms.AlarmTextArray[index].AlarmValueRegister)
                    {
                        case 440:
                        case 441:
                        case 442:
                        case 443:
                        case 444:
                        case 445:
                        case 446:
                        case 447:
                        case 448:
                        case 449:
                        case 450:
                        case 451:
                        case 452:
                        case 453:
                        case 454:
                        case 455:
                        case 456:
                        case 457:
                        case 458:
                        case 459:
                        case 460:
                        case 461:
                        case 462:
                        case 463:
                        case 464:
                        case 465:
                        case 466:
                        case 467:
                            if (alarmLevels.ContainsKey(2070))
                            {
                                value = (short)(value - alarmLevels[2070]);
                            }
                            break;
                        case 2064:
                        case 2065:
                            value = (short)(value / 100);
                            break;
                        default:
                            break;
                    }
                    alarmValue = value.ToString();
                }
                else
                {
                    alarmValue = string.Empty;
                }

                alarmDescription = string.Format(Alarms.AlarmTextArray[index].AlarmString, alarmValue, Alarms.AlarmTextArray[index].AlarmChannel);
            }

            return alarmDescription;
        }

        private void GetModbusAlarmValues(byte slaveId, ushort startRegister, ushort count)
        {
            //Read the values that are used to fill in some alarm values
            ushort[] modbusValues = this.connection.ReadHoldingRegisters(slaveId, startRegister, count);

            for (int i = 0; i < modbusValues.Length; i++)
            {
                this.alarmLevels[startRegister + i] = modbusValues[i];
            }
        }

        /// <summary>
        /// Enables or disables a specific SPU alarm without entering test mode. This can be used when the SPU alarm output
        /// is enabled.
        /// </summary>
        /// <param name="alarm_id">the id of the alarm to enable</param>
        /// <param name="enabled">Flag indicating if the alarm should be enabled or disabled.</param>
        private bool EnableSPUAlarmNoTestMode(int alarm_id, DigitalOutputState state, string user)
        {
            bool rc = false;
            logger.WarnFormat("Command: Set SPU alarm {0} {1}", alarm_id, state);
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                eventLog.LogGeneralEvent("SPU Alarm " + alarm_id + " " + state, user);
                SPUSDK.SetSPUAlarmStateNoTestMode(ModbusInternal, alarm_id, state);
                DigitalOutputState[] states = SPUSDK.GetSPUAlarmStates(ModbusInternal);
                rc = (states[alarm_id - 1] == state);
            }
            if (!rc)
            {
                logger.ErrorFormat("Set SPU alarm {0} {1} failed.", alarm_id, state);
            }
            return rc;
        }

        /// <summary>
        /// Read system status
        /// </summary>
        /// <param name="alarm_id">the id of the alarm to enable</param>
        /// <param name="enabled">Flag indicating if the alarm should be enabled or disabled.</param>
        private bool ReadSPUAlarmMode(int alarm_id, DigitalOutputState state)
        {
            bool rc = false;
            using (TimedLock.Lock(ModbusInternal.syncRoot))
            {
                DigitalOutputState[] states = SPUSDK.GetSPUAlarmStates(ModbusInternal);
                rc = (states[alarm_id - 1] == state);
            }
            return rc;
        }
    }
}
