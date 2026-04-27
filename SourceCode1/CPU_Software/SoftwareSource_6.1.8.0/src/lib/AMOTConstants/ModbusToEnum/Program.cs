using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FileHelpers;
using FileHelpers.DataLink;
using System.IO;

namespace ModbusToEnum
{
    [DelimitedRecord("|")]
    [IgnoreEmptyLines()]
    public class ModbusMapRegisters
    {

        public String GenIIChange;

        public String FunctionGroup;

        public String Start;

        public String End;

        public String Quantity;

        public String Name;

        public String DataType;

        public String ReadWrite;

        public String Format;

        public String DescriptionNotes;

        public String InterrowDifference;
    }

    [DelimitedRecord("|")]
    [IgnoreEmptyLines()]
    public class AlarmsLine
    {
        public String Description;

        public String Channel;

        public String Number;

        public String Alarms;

        public String Events;

        public String SPUNickname;

        public String AlarmSlowdown;

        public String Ack;

        public String _blank;

        public String Checked;

        public String Notes;
    }

    class Program
    {
        public static String ToEnumName(String name, char sep)
        {
            string[] elements = name.Split(sep);
            for (int i = 0; i < elements.Length; i++)
            {
                char[] chars = elements[i].ToCharArray();

                if (chars.Length == 0) continue;

                chars[0] = chars[0].ToString().ToUpper()[0];
                elements[i] = new String(chars);
            }
            name = "";
            foreach (string value in elements)
            {
                name += value;
            }
            return name;
        }

        public static String ToEnumName(String name)
        {
            name = name.Replace("%", "Percent");
            name = ToEnumName(name, ' ');
            name = ToEnumName(name, '(');
            name = ToEnumName(name, ')');
            name = ToEnumName(name, '.');
            name = ToEnumName(name, '-');
            name = ToEnumName(name, '/');
            name = ToEnumName(name, '#');
            return name;
        }

        public static void ModbuxMap()
        {
            ExcelStorage provider = new ExcelStorage(typeof(ModbusMapRegisters));
            provider.FileName = "modbus map.xlsx";
            ModbusMapRegisters[] res = (ModbusMapRegisters[])provider.ExtractRecords();
            Dictionary<String, ModbusMapRegisters> registersDictionary = new Dictionary<string, ModbusMapRegisters>();

            int start = 0;

            StreamWriter output = File.CreateText(@"..\..\..\ModbusConstants.cs");

            output.WriteLine("// MODBUSTOENUM.EXE AUTO GENERATED FILE!!!!!! DO NOT EDIT!!!!!!");
            output.WriteLine("using System;");
            output.WriteLine("using System.Collections.Generic;");
            output.WriteLine("using System.Linq;");
            output.WriteLine("using System.Text;");
            output.WriteLine("");
            output.WriteLine("namespace AMOTConstants");
            output.WriteLine("{");
            output.WriteLine("    /// <summary>");
            output.WriteLine("    /// AMOT Modbus constants");
            output.WriteLine("    /// </summary>");
            output.WriteLine("    public enum ModbusConstants : ushort");
            output.WriteLine("    {");

            string name;

            foreach (ModbusMapRegisters line in res)
            {
                if (int.TryParse(line.Start, out start) == false || line.Name == null || line.Name.Length == 0)
                    continue;

                if (line.DescriptionNotes != null)
                    line.DescriptionNotes = line.DescriptionNotes.Replace("\n", "\n        /// ");

                name = ToEnumName(line.Name);

                if (registersDictionary.ContainsKey(name) == false)
                {
                    registersDictionary[name] = line;
                }
                else
                {
                    int i = 2;

                    Console.WriteLine("Repeated found: " + name);
                    Console.WriteLine("  Existing: " + registersDictionary[name].DescriptionNotes);
                    Console.WriteLine("       New: " + line.DescriptionNotes);

                    while (registersDictionary.ContainsKey(name + "_" + i) == true) { i++; }

                    name = name + "_" + i;
                    registersDictionary[name] = line;
                }

                output.WriteLine("        /// <summary>");
                output.WriteLine("        /// {0}", line.DescriptionNotes);
                output.WriteLine("        /// Start = {0}, End = {1}, DataType={2}, Read/Write={3}, Format={4}",
                    line.Start, line.End, line.DataType, line.ReadWrite, line.Format);
                output.WriteLine("        /// </summary>");
                output.WriteLine("        " + name + " = " + line.Start + ",");
                output.WriteLine();
            }

            output.WriteLine("    }");
            output.WriteLine("}");
            output.Flush();
            output.Close();
        }

        public static void AlarmList()
        {
            ExcelStorage provider = new ExcelStorage(typeof(AlarmsLine));
            provider.FileName = "alarmlist - total.xlsm";
            provider.SheetName = "Alarms";
            provider.StartRow = 2;
            AlarmsLine[] res = (AlarmsLine[])provider.ExtractRecords();

            string dataType = "General";
            string channel;

            StreamWriter output = File.CreateText(@"Alarms.cs");

            Dictionary<string, string> descriptions = new Dictionary<string, string>();
            descriptions["Sensor  Alarm Level Reached"] = "AlarmStrings.SensorAlarmLevelReached";
            descriptions["Sensor Slow Down Level Reached"] = "AlarmStrings.SensorSlowDownLevelReached";
            descriptions["Sensor failure No pulse on Ch"] = "AlarmStrings.SensorfailureNopulse";
            descriptions["Sensor failure Low Ch"] = "AlarmStrings.SensorfailureLow";
            descriptions["Sensor failure High Ch"] = "AlarmStrings.SensorfailureHigh";
            descriptions["Sensor Alarm Deviation Level Reached"] = "AlarmStrings.SensorAlarmDeviationLevelReached";
            descriptions["Sensor Slow Down Deviation Level Reached"] = "AlarmStrings.SensorSlowDownDeviationLevelReached";
            descriptions["Sensor Pre-warning Level:"] = "AlarmStrings.SensorPrewarningLevel";
            descriptions["Sensor Moved During Learning Ch"] = "AlarmStrings.SensorMovedDuringLearning";
            descriptions["Cylinder Deviation Alarm Level Reached"] = "AlarmStrings.CylinderDeviationAlarmLevelReached";
            descriptions["Water in oil alarm level 1"] = "AlarmStrings.Waterinoilalarmlevel1";
            descriptions["Water in oil connection failure"] = "AlarmStrings.Waterinoilconnectionfailure";
            descriptions["Loss of communications to slave SPU"] = "AlarmStrings.LossofcommunicationstoslaveSPU";
            descriptions["Real time clock failure, time reset"] = "AlarmStrings.Realtimeclockfailuretimereset";
            descriptions["FRAM 1 Communications fault"] = "AlarmStrings.FRAM1Communicationsfault";
            descriptions["Sensor failure Unstable Ch"] = "AlarmStrings.SensorfailureUnstable";
            descriptions["Water in oil alarm level 2"] = "AlarmStrings.Waterinoilalarmlevel2";
            descriptions["Damage Monitor Single Sensor"] = "AlarmStrings.DamageMonitorSingleSensor";
            descriptions["Damage Monitor Cylinder Sum"] = "AlarmStrings.DamageMonitorCylinderSum";
            descriptions["Damage Monitor Main Bearing Neighbour Sum"] = "AlarmStrings.DamageMonitorMainBearingNeighbourSMBN";
            descriptions["SLEM Connection Failure input low"] = "AlarmStrings.SLEMConnectionFailureinputlow";
            descriptions["SPU Clock Battery Low"] = "AlarmStrings.SPUClockBatteryLow";
            descriptions["SLEM Alarm Level Reached"] = "AlarmStrings.SLEMAlarmLevelReachedmV";
            descriptions["Water in oil connection failure input low"] = "AlarmStrings.Waterinoilconnectionfailureinputlow";
            descriptions["Water in oil connection failure input high"] = "AlarmStrings.Waterinoilconnectionfailureinputhigh";
            descriptions["SLEM Connection Failure input high"] = "AlarmStrings.SLEMConnectionFailureinputhigh";
            descriptions["SD Card Error"] = "AlarmStrings.SDCardError";
            descriptions["Loss of communications to the SPU"] = "AlarmStrings.LossofcommunicationstoslaveSPU";

            foreach (AlarmsLine line in res)
            {
                int eventCode = 0;

                if (line.AlarmSlowdown != null && line.AlarmSlowdown != "")
                {
                    dataType = line.AlarmSlowdown;
                }

                channel = "0xFFFFFFFF";
                if (line.Channel != null && line.Channel.Trim() != "")
                {
                    string[] channelParts = line.Channel.Trim().Split('.');
                    switch (channelParts.Length)
                    {
                        case 1: channel = "1 << " + channelParts[0];
                            break;
                        case 2: channel = channelParts[1] + " << " + ((Int32.Parse(channelParts[0]) - 1) * 2);
                            break;
                    }

                    //Work out the event code for damage monitoring
                    if (line.SPUNickname == "DAMAGESINGLESLOWDOWN")
                    {
                        eventCode = 3;
                    } else if (line.SPUNickname == "DAMAGECYLSLOWDOWN")
                    {
                        eventCode = 4;
                    }
                    else if (line.SPUNickname == "DAMAGEMBSUMSLOWDOWN")
                    {
                        eventCode = 5;
                    }
                    else
                    {
                        eventCode = 0;
                    }
                }
                else
                {
                    switch (line.SPUNickname)
                    {
                        case "WIOALARM":
                        case "WIOCOMMS":
                        case "WIOALARMUPPER":
                        case "WIOANALOGHI":
                        case "WIOANALOGLO":
                            channel = "1 << 28";
                            break;
                        case "SLEMOORLO":
                        case "SLEMALARM":
                        case "SLEMOORHI":
                            channel = "1 << 29";
                            break;
                        case "SPU2COMMS":
                        case "RTCFAIL":
                        case "FRAMFAIL":
                        case "RTCBATLOW":
                        default:
                            channel = "0xFFFFFFFF";
                            break;
                    }
                }

                string description = line.Description.Trim();
                string enumDescription;
                int start = description.IndexOf('[');
                int end = description.IndexOf(']');
                int register = 0;
                if (start > 0)
                {
                    register = Int32.Parse(description.Substring(start + 1, end - start - 1).Split(new char[] { '-', '/' })[0].Trim());
                    description = description.Substring(0, start).Trim();
                }
                enumDescription = descriptions[description];

                output.WriteLine("new AlarmText({0}, \"{1}\", LogDataTypes.{2}, {3}, {4},{7}{5}), {6}",
                    enumDescription,
                    (line.Channel != null && line.Channel != "") ? line.Channel : string.Empty,
                    dataType,
                    channel,
                    line.Ack == "Ack" ? "true" : "false",
                    register == 0 ? "" : ", " + register,
                    (line.Notes == null || line.Notes == "") ? "" : "    //" + line.Notes, eventCode);
            }

            output.Flush();
            output.Close();
            output.Dispose();
        }

        public static void EventList()
        {
            ExcelStorage provider = new ExcelStorage(typeof(AlarmsLine));
            provider.FileName = "alarmlist - total.xlsm";
            provider.SheetName = "Events";
            provider.StartRow = 2;
            AlarmsLine[] res = (AlarmsLine[])provider.ExtractRecords();

            string dataType = "General";
            string channel;

            StreamWriter output = File.CreateText(@"Events.cs");

            Dictionary<string, string> descriptions = new Dictionary<string, string>();
            descriptions["Sensor Offset Adjustment"] = "EventStrings.SensorOffsetAdjustment";
            descriptions["Power On Initialisation"] = "EventStrings.PowerOnInitialisation";
            descriptions["Firing Order / Engine Direction Clearing Firing Order"] = "EventStrings.FiringOrderEngineDirectionClearingFiringOrder";
            descriptions["Firing Order / Engine Direction Determing Order"] = "EventStrings.FiringOrderEngineDirectionDetermingOrder";
            descriptions["Pre-warning initialised"] = "EventStrings.Prewarninginitialised";
            descriptions["Engine Learning Procedure Aborted By User"] = "EventStrings.EngineLearningProcedureAbortedByUser";
            descriptions["Full Engine Learning Initiated"] = "EventStrings.FullEngineLearningInitiated";
            descriptions["Engine Learning Stage: Stage 1 Learning"] = "EventStrings.EngineLearningStage1Learning";
            descriptions["Engine Learning Stage: Stage 2 Learning"] = "EventStrings.Engine LearningStage2Learning";
            descriptions["Engine Learning Stage: Stage 3 Learning"] = "EventStrings.Engine LearningStage3Learning";
            descriptions["Engine Learning Stage: Engine Learning Completed"] = "EventStrings.EngineLearningStageEngineLearningCompleted";
            descriptions["Engine Learning Stage: Fine Learning Started"] = "EventStrings.EngineLearningStageFineLearningStarted";
            descriptions["WIO Error code:"] = "EventStrings.WIOErrorcode";

            foreach (AlarmsLine line in res)
            {

                if (line.Number != "-")
                {

                    int eventCode = 0;

                    channel = "0xFFFFFFFF";
                    if (line.Channel != null && line.Channel.Trim() != "")
                    {
                        string[] channelParts = line.Channel.Trim().Split('.');
                        switch (channelParts.Length)
                        {
                            case 1: channel = "1 << " + channelParts[0];
                                break;
                            case 2: channel = channelParts[1] + " << " + ((Int32.Parse(channelParts[0]) - 1) * 2);
                                break;
                        }
                    }
                    else
                    {
                        switch (line.SPUNickname)
                        {
                            case "WIO_ERROR_CODE_EVENT":
                                channel = "1 << 28";
                                break;
                            default:
                                channel = "0xFFFFFFFF";
                                break;
                        }
                    }

                    string description = line.Description.Trim();
                    string enumDescription;
                    int start = description.IndexOf('[');
                    int end = description.IndexOf(']');
                    int register = 0;
                    if (start > 0)
                    {
                        register = Int32.Parse(description.Substring(start + 1, end - start - 1).Split(new char[] { '-', '/' })[0].Trim());
                        description = description.Substring(0, start).Trim();
                    }
                    enumDescription = descriptions[description];

                    output.WriteLine("new AlarmText({0}, {1}, LogDataTypes.{2}, {3}, false,{6}{4}), {5}",
                        enumDescription,
                        (line.Channel != null && line.Channel != "") ? line.Channel : "0",
                        dataType,
                        channel,
                        register == 0 ? "" : ", " + register,
                        (line.Notes == null || line.Notes == "") ? "" : "    //" + line.Notes, eventCode);
                }
            }

            output.Flush();
            output.Close();
            output.Dispose();
        }

        static void Main(string[] args)
        {
            AlarmList();
            //EventList();
        }
    }
}
