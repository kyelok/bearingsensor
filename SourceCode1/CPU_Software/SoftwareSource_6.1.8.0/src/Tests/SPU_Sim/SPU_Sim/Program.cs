using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Modbus;
using Modbus.Device;
using Modbus.Data;
using System.IO.Ports;
using System.Threading;

namespace SPU_Sim
{
    class Program
    {
        ModbusSlave slave;
        //DataStore dataStoreLocal = new DataStore();
        byte unitId = 1;
        static ushort MAX_UINT = 65535;
        static int MAX_REF_2S_COMP = 65536;
        static int REF_2S_COMP_SIGN = 32768;

        public Program()
        {
        }

        public void output(string s, ushort off, ushort add, ushort val, ushort maxadd)
        {
            int vals = val;
            if (vals >= REF_2S_COMP_SIGN)// could be signed
                vals = val - MAX_REF_2S_COMP; 
            if (add <= maxadd)
            {
                //Set is used and is Un/signed
                if (vals == val)
                    Console.WriteLine(s + " Reg [ {1,0:D} ({0,0:D} abs) ] = {2,0:D} ", add, off, val);
                else Console.WriteLine(s + " Reg [ {1,0:D} ({0,0:D} abs) ] = {2,0:D} unsigned or {3,0:D} signed", add, off, val, vals);
                this.slave.DataStore.HoldingRegisters[add] = val;
            }
            else Console.WriteLine("format cmd offset(0-{0,0:D}) value",(maxadd - (add-off)+1));
        }

        public void Run()
        {
            string line = "";
            bool exit = false;
            ushort value_substring_Add_offset = 0;  //address offset
            ushort value_substring_Add = 0;  //address offset
            ushort value_substring_Value = 0;  //value
            ushort last_value_substring_Add_offset = 0;  //address offset
            ushort last_value_substring_Add = 0;  //address offset
            ushort last_value_substring_Value = 0;  //value
            bool blast_valid = false;
            //Create Modbus Slave here and
            //start on Thread
            Thread modbusSlave = new Thread(StartModbusSerialRtuSlave);
            modbusSlave.Start(this);

            do
            {
                Console.Write(">");//added just for Graham
                line = Console.ReadLine();

                //Process commands here  <cmd>,<param>,<value>
                if (line.Length > 0)
                {
                    string [] split = line.Split(new Char [] {' ',' '});
                    if (split.Length > 1)
                    {
                        value_substring_Add_offset = Convert.ToUInt16(split[1]);
                        if (split.Length > 2)
                        {
                            if (Convert.ToInt32(split[2]) <= -1)//value is an int so use 2's comp for minus values
                            {
                                value_substring_Value = Convert.ToUInt16(MAX_REF_2S_COMP + Convert.ToInt32(split[2]));//2's comp invert and add 1
                            }
                            else value_substring_Value = Convert.ToUInt16(split[2]);
                        }
                        else value_substring_Value = 0;
                    }
                    else value_substring_Add_offset = 0;
                    value_substring_Add = value_substring_Add_offset;
                    switch (split[0]) //XTS Gen II - RIA.pdf page 56
                    {
                        case "+" : //set next address to same value
                            if (blast_valid == true)
                            {
                                if ((value_substring_Add_offset > 28) || (value_substring_Add_offset == 0))
                                    value_substring_Add_offset = 14;
                                for (ushort i = 0; i < (value_substring_Add_offset); i++)
                                {
                                    last_value_substring_Add += 1;
                                    last_value_substring_Add_offset += 1;
                                    output("Set", last_value_substring_Add_offset, last_value_substring_Add, last_value_substring_Value, MAX_UINT);
                                }
                                value_substring_Add_offset = last_value_substring_Add_offset;
                                value_substring_Add = last_value_substring_Add;
                                value_substring_Value = last_value_substring_Value;
                            }
                            break;
                        case "a":
                        case "ax":
                            value_substring_Add += 2079;
                            output("Alarm and Shutdown", value_substring_Add_offset, value_substring_Add, value_substring_Value, 2083);
                            break;
                        case "s":
                        case "sx":
                            value_substring_Add += 59;
                            output("Sensor", value_substring_Add_offset, value_substring_Add, value_substring_Value, 87);
                            break;
                        case "sd":
                            value_substring_Add += 88;
                            output("Sensor deviation", value_substring_Add_offset, value_substring_Add, value_substring_Value,116);
                            break;
                        case "c":
                        case "cx":
                            value_substring_Add += 256;
                            output("Cylinder", value_substring_Add_offset, value_substring_Add, value_substring_Value,269);
                            break;
                        case "cd":
                            value_substring_Add += 270;
                            output("Cylinder deviation", value_substring_Add_offset, value_substring_Add, value_substring_Value,283);
                            break;
                        case "set":
                            output("Set", value_substring_Add_offset, value_substring_Add, value_substring_Value, MAX_UINT);
                            break;
                        case "get": // Get a Register Value
                            value_substring_Value = this.slave.DataStore.HoldingRegisters[value_substring_Add];
                            Console.WriteLine("Get Register [{0,0:D}] value is {1,0:D} ", value_substring_Add, value_substring_Value);
                            break;
                        case "h": // Help page
                            Console.WriteLine("format cmd offset value");
                            Console.WriteLine("a 0-4 ? for alarm and shutdown levels");
                            Console.WriteLine("ax 0-4 ? for alarm and shutdown levels");
                            Console.WriteLine("cx 0-13 ? for cylinder 1 to 14 values");
                            Console.WriteLine("cd 0-13 ? for cylinder 1 to 14 deviation values");
                            Console.WriteLine("l for for list of sensor threshold values");
                            Console.WriteLine("s 0-27 ? for sensor 1.1 to 14.2 values");
                            Console.WriteLine("sx 0-27 ? for sensor 1.1 to 14.2 values");
                            Console.WriteLine("+ <qty>  for last cmd settings set the next x addressses");
                            Console.WriteLine("sd 0-27 ? for sensor 1.1 to 14.2 deviation values");
                            Console.WriteLine("set <register> <value> Absolute register set");
                            Console.WriteLine("get <register> returns the vaue in the register");
                            blast_valid = false;
                            break;
                        case "l": // Known required Threshold Values
                            value_substring_Value = this.slave.DataStore.HoldingRegisters[2053];// SensorSlowDownLevel = 2053,
                            Console.WriteLine("SensorSlowDownLevel[2053]= {0,0:D} ", value_substring_Value);
                            value_substring_Value = this.slave.DataStore.HoldingRegisters[2054];// SensorAlarmLevel = 2054,
                            Console.WriteLine("SensorAlarmLevel[2054]= {0,0:D} ", value_substring_Value);
                            value_substring_Value = this.slave.DataStore.HoldingRegisters[2059];// CylinderAlarmLevel = 2059
                            Console.WriteLine("CylinderAlarmLevel[2059]= {0,0:D} ", value_substring_Value);
                            break;
                        default:
                            Console.WriteLine("type h for help");
                            blast_valid = false;
                            break;
                    }
                    last_value_substring_Add_offset = value_substring_Add_offset;
                    last_value_substring_Add = value_substring_Add;
                    last_value_substring_Value = value_substring_Value;  
                }
                if ((line == "quit") || (line == "exit"))
                {
                    exit = true;
                    blast_valid = false;
                }

            } while (!exit);

            //Shutdown slave here
            modbusSlave.Abort();

        }



        /// <summary>
        /// Simple Modbus serial RTU slave example.
        /// </summary>
        public static void StartModbusSerialRtuSlave(object o)
        {
            Program myClass = (Program)o;

            using (SerialPort slavePort = new SerialPort("COM1"))
            {
                // configure serial port
                slavePort.BaudRate = 9600;// 115200;
                slavePort.DataBits = 8;
                slavePort.Parity = Parity.None;
                slavePort.StopBits = StopBits.One;
                slavePort.Open();

                //byte unitId = 1;

                // create modbus slave
               //ModbusSlave slave = ModbusSerialSlave.CreateRtu(myClass.unitId, slavePort);
                myClass.slave = ModbusSerialSlave.CreateRtu(myClass.unitId, slavePort);
                myClass.slave.DataStore = DataStoreFactory.CreateDefaultDataStore();
                myClass.slave.Listen();
            }
        }

        static void Main(string[] args)
        {
            Program p = new Program();
            p.Run();
        }
    }
}
