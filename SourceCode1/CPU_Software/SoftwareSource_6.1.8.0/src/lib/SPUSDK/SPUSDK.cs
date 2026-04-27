/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataCollectionSDK;
using System.IO;
using EventLogging;
using WebServiceObjects;
using HelperClasses;


namespace DataCollectionSDK
{
    /// <summary>
    /// Enum that represents the state of the SPU's digital outputs
    /// </summary>
    public enum DigitalOutputState
    {
        On = 0,
        Off,
        NoComm
    }

    /// <summary>
    /// Allows high level code to control operations on the SPU.
    /// </summary>
    public static class SPUSDK
    {
        /// <summary>
        /// The maximum number of sensors supported
        /// </summary>
        public static readonly int MaxSensors = 28;

        public static readonly ushort OffsetA = 3;
        public static readonly ushort OffsetB = 4;

        public static readonly ushort TableLength = 28;

        public static readonly int SpeedCompItrns = 150;
        public static readonly int NumAvgPoints = 153;
        public static readonly int NumLTVValues = 150;

        public static readonly ushort MaxRegsWrittenInOnePass = 100;

        public static readonly ushort ManTableLength = 56;

        public static readonly string OffsetADescription = "[OFFSETS A]";
        public static readonly string OffsetBDescription = "[OFFSETS B]";
        public static readonly string OffsetHeader = "1.1,1.2,2.1,2.2,3.1,3.2,4.1,4.2,5.1,5.2,6.1,6.2,7.1,7.2,8.1,8.2,9.1,9.2,10.1,10.2,11.1,11.2,12.1,12.2,13.1,13.2,14.1,14.2";

        public static readonly string SpeedCompDescription = "[SPEED_COMP]";
        public static readonly string SpeedTablesALVDescription = "[SPEED_TABLES_ALV]";
        public static readonly string SpeedTablesNPCDescription = "[SPEED_TABLES_NPC]";
        public static readonly string SpeedCompAndTablesHeader = "TablePos,1.1,1.2,2.1,2.2,3.1,3.2,4.1,4.2,5.1,5.2,6.1,6.2,7.1,7.2,8.1,8.2,9.1,9.2,10.1,10.2,11.1,11.2,12.1,12.2,13.1,13.2,14.1,14.2";

        /// <summary>
        /// Enable a sensor
        /// </summary>
        /// <param name="modbusSDK">The Modbus SDK</param>
        /// <param name="sensor">The sensor to enable</param>
        /// <param name="enabled">true enable sensor, otherwise disable sensor</param>
        public static void SetSensorEnable(int sensor, bool enabled, string username)
        {
            if (sensor > MaxSensors)
                throw new IndexOutOfRangeException("Number of sensors out of range");

            EventLog logger = new EventLog();
            logger.SensorEnable(sensor, enabled, username);
        }

        /// <summary>
        /// Tests if a sensor is enabled
        /// </summary>
        /// <param name="modbusSDK">The Modbus SDK</param>
        /// <param name="sensor">The sensor to test</param>
        /// <returns></returns>
        public static bool IsSensorEnabled(ushort value)
        {
            bool isEnabled;
            
            if ((value & (1 << 0)) != 0)
            {
                isEnabled = true;
            }
            else
            {
                isEnabled = false;
            }

            return isEnabled;
        }

        /// <summary>
        /// Test if the sensor mask is set
        /// </summary>
        /// <param name="modbusSDK">The Modbus SDK</param>
        /// <param name="sensor">The sensor to test</param>
        /// <returns>The mask state</returns>
        public static bool IsSensorMasked(ushort value)
        {
            bool isMasked;

            if ((value & (1 << 2)) != 0)
            {
                isMasked = true;
            }
            else
            {
                isMasked = false;
            }

            return isMasked;
        }

        /// <summary>
        /// Sets the sensors mask
        /// </summary>
        /// <param name="modbusSDK">The Modbus SDK</param>
        /// <param name="sensor">The sensor to mask</param>
        /// <param name="masked"></param>
        public static void SetSensorMasked(int sensor, bool masked, string username)
        {
            if (sensor > MaxSensors)
                throw new IndexOutOfRangeException("Number of sensors out of range");

            EventLog logger = new EventLog();
            logger.SensorAlarmMask(sensor, masked, username);
        }

        /// <summary>
        /// Enables or disables a specific SPU alarm, this does not require entering test mode
        /// </summary>
        /// <param name="modbusSDK">The Modbus SDK</param>
        /// <param name="alarm_id">the id of the alarm to enable</param>
        /// <param name="enabled">Flag indicating if the alarm should be enabled or disabled.</param>
        public static void SetSPUAlarmStateNoTestMode(ModbusSDK modbusSDK, int alarm_id, DigitalOutputState state)
        {
            ushort register;

            switch (alarm_id)
            {                
                case 2:
                    register = (ushort)AMOTConstants.ModbusConstants.AMSAlarm;
                    break;
                case 3:
                    register = (ushort)AMOTConstants.ModbusConstants.AMSSlowdown;
                    break;
                default:
                    register = 0;
                    break;
            }

            if (register != 0)
            {
                AccessModbus(() =>
                {
                    using (TimedLock.Lock(modbusSDK.syncRoot))
                    {
                        modbusSDK.WriteSingleRegister(1, register, (ushort)state);
                    }
                });
            }
        }

        /// <summary>
        /// Enables or disables a specific SPU alarm.  Only usable if the SPU alarm output
        /// has been disabled.
        /// </summary>
        /// <param name="modbusSDK">The Modbus SDK</param>
        /// <param name="alarm_id">the id of the alarm to enable</param>
        /// <param name="enabled">Flag indicating if the alarm should be enabled or disabled.</param>
        public static void SetSPUAlarmState(ModbusSDK modbusSDK, int alarm_id, DigitalOutputState state)
        {
            ushort register;

            switch (alarm_id)
            {
                case 1:
                    register = (ushort)AMOTConstants.ModbusConstants.SPUDigitalOutput1;
                    break;
                case 2:
                    register = (ushort)AMOTConstants.ModbusConstants.SPUDigitalOutput2;
                    break;
                case 3:
                    register = (ushort)AMOTConstants.ModbusConstants.SPUDigitalOutput3;
                    break;
                default:
                    register = 0;
                    break;
            }

            if (register != 0)
            {
                AccessModbus(() =>
                {
                    using (TimedLock.Lock(modbusSDK.syncRoot))
                    {
                        modbusSDK.WriteSingleRegister(1, register, (ushort)state);
                    }
                });
            }
        }

        public static void SetAlarmTestModeState(ModbusSDK modbusSDK, bool enable, string username)
        {
            UInt16 value;
            if (enable)
            {
                value = 1;
            }
            else
            {
                value = 0;
            }
            AccessModbus(() =>
                    {
                        using (TimedLock.Lock(modbusSDK.syncRoot))
                        {
                            modbusSDK.WriteSingleRegister(1, (ushort)AMOTConstants.ModbusConstants.OutputTest, value);
                        }
                    });

            EventLog logger = new EventLog();
            logger.AlarmTestModeStateChange(enable, username);
        }

        public static bool GetAlarmTestModeState(ModbusSDK modbusSDK)
        {
            UInt16[] value = null;

            AccessModbus(() =>
                    {
                        using (TimedLock.Lock(modbusSDK.syncRoot))
                        {
                            value = modbusSDK.ReadHoldingRegisters(1, (ushort)AMOTConstants.ModbusConstants.OutputTest, 1);
                        }
                    });

            if (value != null && value[0] == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        /// <summary>
        /// Enables or disables a specific SPU alarm.  Only usable if the SPU alarm output
        /// has been disabled.
        /// </summary>
        /// <param name="modbusSDK">The Modbus SDK</param>
        /// <param name="alarm_id">the id of the alarm to enable</param>
        public static DigitalOutputState[] GetSPUAlarmStates(ModbusSDK modbusSDK)
        {
            DigitalOutputState[] alarmStates = new DigitalOutputState[3];
            ushort register = (ushort)AMOTConstants.ModbusConstants.SPUDigitalOutput1;

            //The Modbus register uses 1 to indicate that the alarm is off
            //or 0 to indicate that the alarm is on.
            UInt16[] result = null;


            AccessModbus(() =>
            {
                using (TimedLock.Lock(modbusSDK.syncRoot))
                {
                    result = modbusSDK.ReadHoldingRegisters(1, register, 3);
                }
            });

            if (result != null)
            {
                for (int i = 0; i < result.Length; i++)
                {
                    alarmStates[i] = (DigitalOutputState)result[i];
                }
            }
            else
            {
                for (int i = 0; i < 3; i++)
                {
                    alarmStates[i] = DigitalOutputState.NoComm;
                }
            }

            return alarmStates;
        }

        /// <summary>
        /// Gets the number of sensors by reading from the SPU
        /// </summary>
        /// <param name="modbusSDK"></param>
        /// <returns>The number of sensors (int)</returns>
        public static int GetNumberOfSensors(ModbusSDK modbusSDK)
        {
            UInt16[] noOfSensors = null;

            using (ModbusSDK mbSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
            {
                AccessModbus(() =>
                    {
                        noOfSensors = mbSDK.ReadHoldingRegisters(1, 2048, 1);
                    });

                return noOfSensors[0];
            }
        }

        public static UInt16 ChangeBitFieldValue(UInt16 regValue, UInt16 fieldReference, bool value)
        {
            //Change required bitfield in register
            if (value)
            {
                regValue |= (UInt16)(1 << fieldReference);
            }
            else
            {
                regValue &= (UInt16)~(1 << fieldReference);
            }

            //Return result
            return regValue;
        }

        /// <summary>
        /// Reads the SPU firmware versions from Modbus
        /// </summary>
        /// <param name="modbusSDK">The Modbus connection to read from</param>
        /// <param name="spuOne">Will hold the firmware version of SPU 1 on method return</param>
        /// <param name="spuTwo">Will hold the firmware version of SPU 1 on method return</param>
        public static void GetSPUFirmwareVersions(ModbusSDK modbusSDK, out string spuOne, out string spuTwo)
        {
            ushort[] spuVersions = null;
            spuOne = "Unknown";
            spuTwo = "Unknown";

            AccessModbus(() =>
                    {
                        using (TimedLock.Lock(modbusSDK.syncRoot))
                        {
                            spuVersions = modbusSDK.ReadHoldingRegisters(1, (ushort)AMOTConstants.ModbusConstants.SPUSlaveFirmwareVersion, 2);
                        }
                    });

            if (spuVersions != null)
            {
                //SPU Two is the first item
                byte[] bytes = BitConverter.GetBytes(spuVersions[0]);
                if (bytes != null)
                {
                    if (bytes.Length != 2)
                    {
                        spuTwo = string.Format("{0}", bytes[0]);
                    }
                    else
                    {
                        spuTwo = string.Format("{1:X}.{0:X2}", bytes[0], bytes[1]);
                    }
                }

                // SPU one is the second item
                bytes = BitConverter.GetBytes(spuVersions[1]);
                if (bytes != null)
                {
                    if (bytes.Length != 2)
                    {
                        spuOne = string.Format("{0}", bytes[0]);
                    }
                    else
                    {
                        spuOne = string.Format("{1:X}.{0:X2}", bytes[0], bytes[1]);
                    }
                }
            }
        }

        /// <summary>
        /// Gets a CSV String from a given range of registers
        /// </summary>
        /// <param name="startReg"></param>
        /// <param name="numberOfPoints"></param>
        /// <returns></returns>
        public static string GetCsvStringFromSpu(ModbusSDK modbusSDK, UInt16 startReg, UInt16 numberOfPoints)
        {
            UInt16[] values = null;

            SPUSDK.AccessModbus(() =>
            {
                using (TimedLock.Lock(modbusSDK.syncRoot,TimeSpan.FromMinutes(1)))
                {
                    values = modbusSDK.ReadHoldingRegisters(1, startReg, numberOfPoints);
                }
            });

            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < (values.Length - 1); i++)
            {
                sb.Append(String.Format("{0},", (Int16)values[i]));
            }
            sb.Append((Int16)values[values.Length - 1]);

            return sb.ToString();
        }

        /// <summary>
        /// Converts an array of register values as read from ModBus to a CSV string of UInt32 values
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        public static string ConvertRegistersTo32BitCsvString(UInt16[] data)
        {
            if (0 != (data.Length % 2))
            {
                throw new Exception("Incorrect number of register values to convert to UInt32");
            }

            StringBuilder builder = new StringBuilder();
            int value;
            for (int reg = 0; reg < (data.Length - 2); reg += 2)
            {
                value = ModbusSDK.ModbusToInt32(data, reg);
                builder.AppendFormat("{0},", value);
            }

            value = ModbusSDK.ModbusToInt32(data, (data.Length - 2));
            builder.AppendFormat("{0}", value);

            return builder.ToString();
        }

        /// <summary>
        /// Prepares a string of csv for being written to modbus
        /// </summary>
        /// <param name="csvData">The content of the CSV file</param>
        /// <returns>An array of UInt16[] of values from the csv string</returns>
        public static UInt16[] PrepareCsvStringForSpu(string csvData)
        {
            //Turn csvData into an array of string
            string[] data = csvData.Split(',');

            //Convert string[] to List<UInt16>
            List<UInt16> uint16Data = new List<UInt16>();
            foreach (string value in data)
            {
                uint16Data.Add((UInt16)Int16.Parse(value));
            }
            return uint16Data.ToArray();
        }

        /// <summary>
        /// Prepares a string of 32 integer values in csv format for being written to modbus
        /// </summary>
        /// <param name="csvData">The content of the CSV file</param>
        /// <returns>An array of UInt16[] of values from the csv string</returns>
        public static UInt16[] Prepare32BitCsvStringForSpu(string csvData)
        {
            //Turn csvData into an array of string
            string[] data = csvData.Split(',');

            //Convert string[] to List<UInt32>
            List<Int32> int32Data = new List<Int32>();
            foreach (string value in data)
            {
                int32Data.Add(Int32.Parse(value));
            }

            List<UInt16> uint16Data = new List<UInt16>();
            UInt16[] modbusDataPair;
            foreach (UInt32 value in int32Data)
            {
                modbusDataPair = ModbusSDK.Uint32ToModbus(value);
                uint16Data.Add(modbusDataPair[0]);
                uint16Data.Add(modbusDataPair[1]);
            }
            return uint16Data.ToArray();
        }

        /// <summary>
        /// Determines if WIO is enabled
        /// </summary>
        /// <param name="modbusSDK">The ModbusSDK instance to use for commincations</param>
        /// <returns>True if WIO is enabled, otherwise false</returns>
        public static bool IsWIOEnabled(ModbusSDK modbusSDK)
        {
            bool enabled = false;

            return enabled;
        }

        /// <summary>
        /// Determines if SLEM is enabled
        /// </summary>
        /// <param name="modbusSDK">The ModbusSDK instance to use for commincations</param>
        /// <returns>True if SLEM is enabled, otherwise false</returns>
        public static bool IsSLEMEnabled(ModbusSDK modbusSDK)
        {
            bool enabled = false;

            return enabled;
        }

        /// <summary>
        /// Write an array of registers to a table of a given type
        /// </summary>
        /// <param name="modbusSDK">The ModbusSDK instance to use for commincations</param>
        /// <param name="tableType">Table type reference</param>
        /// <param name="data">data to be written (should be no more than 28 values)</param>
        public static void WriteTable(ModbusSDK modbusSDK, ushort tableType, ushort[] data)
        {
            if (TableLength < data.Length)
            {
                throw new Exception("Too much data to be written to Table");
            }

            modbusSDK.WriteSingleRegister(1, (ushort)AMOTConstants.ModbusConstants.TableConfigType, tableType);
            modbusSDK.WriteMultipleRegisters(1, (ushort)AMOTConstants.ModbusConstants.TableRegisters, data);
        }

        /// <summary>
        /// Import offsets from CSV source
        /// </summary>
        /// <param name="input">Stream reader to read lines of CSV data from</param>
        /// <param name="modbusSDK">The ModbusSDK instance to use for commincations</param>
        /// <param name="offsetGroup">Table type reference for offset group required</param>
        public static void ImportOffsets(StreamReader input, ModbusSDK modbusSDK, ushort offsetGroup, string username)
        {

            //The file has three non blank lines in it
            //in the following order
            //Description
            //Header
            //CSV data

            string line;
            string description = string.Empty;
            string header = string.Empty;
            string csvData = string.Empty;
            ushort[] oldData = null;

            if (SPUSDK.OffsetA == offsetGroup)
            {
                description = OffsetADescription;
                header = OffsetHeader;
            }
            else if (SPUSDK.OffsetB == offsetGroup)
            {
                description = OffsetBDescription;
                header = OffsetHeader;
            }

            while (!input.EndOfStream)
            {
                line = input.ReadLine();
                if (line != string.Empty)
                {
                    if (line != description && line != header)
                    {
                        csvData = line;
                        csvData += input.ReadToEnd();
                    }
                }
            }

            if (csvData != string.Empty)
            {
                ushort[] data = PrepareCsvStringForSpu(csvData);

                AccessModbus(() =>
                    {
                        using (TimedLock.Lock(modbusSDK.syncRoot))
                        {
                            modbusSDK.WriteSingleRegister(1, (ushort)AMOTConstants.ModbusConstants.TableConfigType, offsetGroup);
                            oldData = modbusSDK.ReadHoldingRegisters(1, (ushort)AMOTConstants.ModbusConstants.TableRegisters, TableLength);
                            WriteTable(modbusSDK, offsetGroup, data);
                        }
                    });

                if ((OffsetA == offsetGroup) || (OffsetB == offsetGroup))
                {
                    EventLog logger = new EventLog();

                    if (OffsetA == offsetGroup)
                    {
                        for (int i = 0; i < data.Length; i++)
                        {
                            logger.UpdateOffsetA(i, oldData[i], data[i], username);
                        }
                    }
                    else if (OffsetB == offsetGroup)
                    {
                        for (int i = 0; i < data.Length; i++)
                        {
                            logger.UpdateOffsetB(i, oldData[i], data[i], username);
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Export offsets to CSV source
        /// </summary>
        /// <param name="output">Stream writer to write lines of CSV data to</param>
        /// <param name="modbusSDK">The ModbusSDK instance to use for commincations</param>
        /// <param name="offsetGroup">Table type reference for offset group required</param>
        public static void ExportOffsets(StreamWriter output, ModbusSDK modbusSDK, ushort offsetGroup)
        {
            if (offsetGroup == SPUSDK.OffsetA)
            {
                output.WriteLine(OffsetADescription);
                output.WriteLine(OffsetHeader);
            }
            else if (offsetGroup == SPUSDK.OffsetB)
            {
                output.WriteLine(OffsetBDescription);
                output.WriteLine(OffsetHeader);
            }

            //Prepare modbus to write out correct values
            SPUSDK.AccessModbus(() => modbusSDK.WriteSingleRegister(1, (ushort)AMOTConstants.ModbusConstants.TableConfigType, offsetGroup));
            //Read values from modbus
            string csvValues = GetCsvStringFromSpu(modbusSDK, (ushort)AMOTConstants.ModbusConstants.TableRegisters, TableLength);
            output.WriteLine(csvValues);
        }

        /// <summary>
        /// Import speed compensation values from CSV source
        /// </summary>
        /// <param name="input">Stream reader to read lines of CSV data from</param>
        /// <param name="modbusSDK">The ModbusSDK instance to use for commincations</param>
        /// <param name="progress">ProgressIndicator instance to update with progress of function</param>
        public static void ImportSpeedComp(StreamReader input, ModbusSDK modbusSDK, ProgressIndicator progress = null)
        {
            //The file holds a number of non blank lines
            //In the following order
            //Description
            //Header
            //CSV Data

            //Move the stream forward until we find the 
            //start of the CSV Data

            string line = string.Empty;

            while (!input.EndOfStream)
            {
                //Read one line, which contains one table or header or description
                line = input.ReadLine();
                if (line != string.Empty)
                {
                    if (line != SpeedCompDescription && line != SpeedCompAndTablesHeader)
                    {
                        //Found the first table line
                        break;
                    }
                }
            }

            //At this point line should contain a the first table line
            //in the file.  Process the file.
            for (int table = 0; table < SpeedCompItrns; table++)
            {
                if (null == line || string.Empty == line)
                {
                    throw new Exception("Inusfficient number of lines in file for import");
                }

                ushort[] data = SPUSDK.PrepareCsvStringForSpu(line);

                if (data[0] == table + 1)
                {
                    ushort[] modbusData = data.Skip(1).Take(data.Length - 1).ToArray();

                    if (modbusData.Length == 28)
                    {
                        AccessModbus(() =>
                        {
                            using (TimedLock.Lock(modbusSDK.syncRoot))
                            {
                                WriteTable(modbusSDK, (ushort)(5 + table), modbusData);
                            }
                        });

                        if (null != progress)
                        {
                            progress.PercentageProgress = ((table * 100) / SpeedCompItrns);
                        }
                    }
                }

                //Read the next line, which contains one table
                line = input.ReadLine();
            }

            if (null != progress)
            {
                progress.PercentageProgress = 100;
                progress.Complete = true;
            }
        }

        /// <summary>
        /// Wrapper method to provide a higher level modbus retry mechinism for 
        /// the SPUSDK methods.
        /// </summary>
        /// <param name="action">The code that access the Modbus</param>
        public static void AccessModbus(Action action)
        {
            int numberOfRetries = 3;
            int retry = 0;
            while (retry < numberOfRetries)
            {
                try
                {
                    action.Invoke();
                    retry = 0;
                    break;
                }
                catch (Exception e)
                {
                    if (e is Modbus.SlaveException || e is LockTimeoutException)
                    {
                        System.Threading.Thread.Sleep(300);
                        if (retry < numberOfRetries)
                        {
                            retry++;
                            continue;
                        }
                    }
                    throw;
                }
            }
        }

        /// <summary>
        /// Export speed compensation values to CSV source
        /// </summary>
        /// <param name="output">Stream writer to write lines of CSV data to</param>
        /// <param name="modbusSDK">The ModbusSDK instance to use for commincations</param>
        /// <param name="progress">ProgressIndicator instance to update with progress of function</param>
        public static void ExportSpeedComp(StreamWriter output, ModbusSDK modbusSDK, ProgressIndicator progress = null)
        {
            output.WriteLine(SpeedCompDescription);
            output.WriteLine(SpeedCompAndTablesHeader);

            for (int table = 0; table < SpeedCompItrns; table++)
            {
                AccessModbus(() =>
                    {
                        using (TimedLock.Lock(modbusSDK.syncRoot,TimeSpan.FromMinutes(1)))
                        {
                            //Write (5 + table) to Modbus Holding Register 1063
                            modbusSDK.WriteSingleRegister(1, (ushort)AMOTConstants.ModbusConstants.TableConfigType, (ushort)(5 + table));
                        }

                        string csvValues = GetCsvStringFromSpu(modbusSDK, (ushort)AMOTConstants.ModbusConstants.TableRegisters, TableLength);
                        output.WriteLine("{0},{1}", (table + 1), csvValues);

                    });

                if (null != progress)
                {
                    progress.PercentageProgress = ((table * 100) / SpeedCompItrns);
                }
            }
            AccessModbus(() =>
                    {
                        //Tell the SPU that the table has been fully read
                        modbusSDK.WriteSingleRegister(1, (ushort)AMOTConstants.ModbusConstants.NewManTableAvailable, 0);
                    });

            if (null != progress)
            {
                progress.PercentageProgress = 100;
                progress.Complete = true;
            }
        }

        /// <summary>
        /// Import speed Accumulated learnt values from CSV source
        /// </summary>
        /// <param name="input">Stream reader to read lines of CSV data from</param>
        /// <param name="modbusSDK">The ModbusSDK instance to use for commincations</param>
        /// <param name="progress">ProgressIndicator instance to update with progress of function</param>
        public static void ImportSpeedTableALV(StreamReader input, ModbusSDK modbusSDK, ProgressIndicator progress = null)
        {
            UInt16[][] data = new UInt16[NumAvgPoints][];

            for (UInt16 table = 0; table < NumAvgPoints; table++)
            {
                //Read one line, which contains one table, header or description
                String line = input.ReadLine();
                if (line == null)
                {
                    throw new Exception("Inusfficient number of lines in file for import");
                }

                //If line is not blank, a header or description
                if (line != String.Empty && line != SpeedTablesALVDescription && line != SpeedCompAndTablesHeader)
                {
                    line = line.Remove(0, line.IndexOf(',') + 1);
                    data[table] = SPUSDK.Prepare32BitCsvStringForSpu(line);
                }
                else
                {
                    //This was not a table value, use the same table array position for next iteration
                    table--;
                }
            }

            for (UInt16 table = 0; table < NumAvgPoints; table++)
            {
                AccessModbus(() =>
                    {
                        using (TimedLock.Lock(modbusSDK.syncRoot))
                        {
                            //Write to Modbus Holding Register 4096
                            modbusSDK.WriteSingleRegister(1, (ushort)AMOTConstants.ModbusConstants.SpeedAccumulatedTableConfig, table);
                            //Write modbusvalues to modbus
                            modbusSDK.WriteMultipleRegisters(1, (ushort)AMOTConstants.ModbusConstants.TablePosition1, data[table]);
                        }
                    });

                if (null != progress)
                {
                    progress.PercentageProgress = ((table * 100) / NumAvgPoints);
                }
            }

            if (null != progress)
            {
                progress.PercentageProgress = 100;
                progress.Complete = true;
            }
        }

        /// <summary>
        /// Export speed Accumulated learnt values to CSV source
        /// </summary>
        /// <param name="output">Stream writer to write lines of CSV data to</param>
        /// <param name="modbusSDK">The ModbusSDK instance to use for commincations</param>
        /// <param name="progress">ProgressIndicator instance to update with progress of function</param>
        public static void ExportSpeedTableALV(StreamWriter output, ModbusSDK modbusSDK, ProgressIndicator progress = null)
        {
            UInt16[] registers = null;
            string csvLine;

            //Write the description and header
            output.WriteLine(SpeedTablesALVDescription);
            output.WriteLine(SpeedCompAndTablesHeader);

            for (UInt16 table = 0; table < NumAvgPoints; table++)
            {
                AccessModbus(() =>
                    {
                        using (TimedLock.Lock(modbusSDK.syncRoot))
                        {
                            //Write table index to Modbus Holding Register 4096
                            modbusSDK.WriteSingleRegister(1, (ushort)AMOTConstants.ModbusConstants.SpeedAccumulatedTableConfig, table);
                            //Read 56 registers from 4098
                            registers = modbusSDK.ReadHoldingRegisters(1, (ushort)AMOTConstants.ModbusConstants.TablePosition1, ManTableLength);
                        }
                    });

                csvLine = ConvertRegistersTo32BitCsvString(registers);

                output.WriteLine(String.Format("{0},{1}", table, csvLine));

                if (null != progress)
                {
                    progress.PercentageProgress = ((table * 100) / NumAvgPoints);
                }
            }

            if (null != progress)
            {
                progress.PercentageProgress = 100;
                progress.Complete = true;
            }
        }

        /// <summary>
        /// Import Number of points collected values from CSV source
        /// </summary>
        /// <param name="input">Stream reader to read lines of CSV data from</param>
        /// <param name="modbusSDK">The ModbusSDK instance to use for commincations</param>
        public static void ImportSpeedTableNPC(StreamReader input, ModbusSDK modbusSDK)
        {
            UInt16[] data;
            List<UInt16> modbusValues = new List<UInt16>();

            StringBuilder line = new StringBuilder();
            while (!input.EndOfStream)
            {
                string thisLine = input.ReadLine();
                if (thisLine != null && thisLine != String.Empty && thisLine != SpeedTablesNPCDescription)
                {
                    //Line is not blank, a header or description, add to stringbuilder line
                    line.Append(thisLine);
                }
            }

            if (line.Length <= 0)
            {
                throw new Exception("Inusfficient number of lines in file for import");
            }

            data = SPUSDK.Prepare32BitCsvStringForSpu(line.ToString());

            if ((NumLTVValues * 2) < data.Length)
            {
                throw new Exception("Too much data to write to SPU");
            }

            //Write modbusvalues to modbus
            List<UInt16> temp = new List<UInt16>();
            int i = 0;
            int j = 0;
            while (i < data.Length)
            {
                temp.Clear();
                do
                {
                    temp.Add(data[i]);
                    i++;
                    //this loop adds the next 100 (max-reg) number of values into the temp buffer

                    //the loop will exit when the next value to be added is at an index which is a 
                    //multiple of max-reg or is outside the range of data array
                } while ((0 != (i % MaxRegsWrittenInOnePass)) && (i < data.Length));

                ushort regAddress = (ushort)((ushort)AMOTConstants.ModbusConstants.NumOfPointsGatheredAtSpeedPoint1 + (j * MaxRegsWrittenInOnePass));

                AccessModbus(() =>
                    {
                        using (TimedLock.Lock(modbusSDK.syncRoot))
                        {
                            modbusSDK.WriteMultipleRegisters(1, regAddress, temp.ToArray());
                        }
                    });

                j++;
            }
        }

        /// <summary>
        /// Export Number of points collected values to CSV source
        /// </summary>
        /// <param name="output">Stream writer to write lines of CSV data to</param>
        /// <param name="modbusSDK">The ModbusSDK instance to use for commincations</param>
        public static void ExportSpeedTableNPC(StreamWriter output, ModbusSDK modbusSDK)
        {
            UInt16[] registers = new UInt16[300];

            //Write the description and header
            output.WriteLine(SpeedTablesNPCDescription);


            //Read 300 registers from 4154
            for (int i = 0; i < 3; i++)
            {
                AccessModbus(() =>
                    {
                        using (TimedLock.Lock(modbusSDK.syncRoot))
                        {
                            modbusSDK.ReadHoldingRegisters(1, (ushort)((ushort)AMOTConstants.ModbusConstants.NumOfPointsGatheredAtSpeedPoint1 + (i * 100)), 100).CopyTo(registers, (i * 100));
                        }
                    });
            }

            string csvLine = ConvertRegistersTo32BitCsvString(registers);

            output.WriteLine(csvLine);
        }

        /// <summary>
        /// Takes a DateTime object, converts this to BCD and then writes the values to
        /// the SPU
        /// </summary>
        /// <param name="modbusSDK">The ModbusSDK instance to use for commincations</param>
        /// <param name="newTime">Time and date to set SPU to. This should be in UTC</param>
        public static void SetTimeAndDate(ModbusSDK modbusSDK, DateTime newTime)
        {
            ushort[] modBusTimeDate = { 0, 0, 0 };

            //year
            modBusTimeDate[0] += (ushort)(((newTime.Year / 10) % 10) << 12);
            modBusTimeDate[0] += (ushort)((newTime.Year % 10) << 8);

            //month
            modBusTimeDate[0] += (ushort)(((newTime.Month / 10) % 10) << 4);
            modBusTimeDate[0] += (ushort)(newTime.Month % 10);

            //day
            modBusTimeDate[1] += (ushort)(((newTime.Day / 10) % 10) << 12);
            modBusTimeDate[1] += (ushort)((newTime.Day % 10) << 8);

            //hour
            modBusTimeDate[1] += (ushort)(((newTime.Hour / 10) % 10) << 4);
            modBusTimeDate[1] += (ushort)(newTime.Hour % 10);

            //minute
            modBusTimeDate[2] += (ushort)(((newTime.Minute / 10) % 10) << 12);
            modBusTimeDate[2] += (ushort)((newTime.Minute % 10) << 8);

            //second
            modBusTimeDate[2] += (ushort)(((newTime.Second / 10) % 10) << 4);
            modBusTimeDate[2] += (ushort)(newTime.Second % 10);

            AccessModbus(() =>
                    {
                        modbusSDK.WriteMultipleRegisters(1, (ushort)AMOTConstants.ModbusConstants.YearMonth, modBusTimeDate);
                    });
        }

        /// <summary>
        /// Gets the time and date from the SPU and returns it as a DateTime object. As the SPU does not
        /// contain information as to what century it is, it is assumed that the century according to the
        /// current system time is correct
        /// </summary>
        /// <param name="modbusSDK">The ModbusSDK instance to use for commincations</param>
        /// <returns></returns>
        public static DateTime GetTimeAndDate(ModbusSDK modbusSDK)
        {
            DateTime systemTime = DateTime.UtcNow;
            ushort[] modBusTimeDate = null;
            int year = (systemTime.Year - (systemTime.Year % 100));

            AccessModbus(() =>
                    {
                        using (TimedLock.Lock(modbusSDK.syncRoot))
                        {
                            modBusTimeDate = modbusSDK.ReadHoldingRegisters(1, (ushort)AMOTConstants.ModbusConstants.YearMonth, 3);
                        }
                    });

            year += (((modBusTimeDate[0] >> 12) % 0x10) * 10) +
                    ((modBusTimeDate[0] >> 8) % 0x10);

            int month = (((modBusTimeDate[0] >> 4) % 0x10) * 10) +
                        (modBusTimeDate[0] % 0x10);

            int day = (((modBusTimeDate[1] >> 12) % 0x10) * 10) +
                        ((modBusTimeDate[1] >> 8) % 0x10);

            int hour = (((modBusTimeDate[1] >> 4) % 0x10) * 10) +
                        (modBusTimeDate[1] % 0x10);

            int minute = (((modBusTimeDate[2] >> 12) % 0x10) * 10) +
                            ((modBusTimeDate[2] >> 8) % 0x10);

            int second = (((modBusTimeDate[2] >> 4) % 0x10) * 10) +
                            (modBusTimeDate[2] % 0x10);

            return new DateTime(year, month, day, hour, minute, second, DateTimeKind.Utc);
        }
    }
}
