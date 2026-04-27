using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Modbus;
using Modbus.Device;
using Gnu.Getopt;
using System.Net;
using System.IO.Ports;
using System.Net.Sockets;


namespace mbcat
{
    /// <summary>
    /// The mbcat program provides a simple method of
    /// reading and writing registers on a Modbus Slave
    /// </summary>
    class Program
    {
        static void Main(string[] args)
        {
            Getopt g = new Getopt("mbcat", args, "t:c:p:i:n:a:rw");

            int c;
            string ipAddress = null;
            SerialPort comPort = null;
            int ipPort = 0;
            byte slaveId = 0;// port 1 = SPU, port 0=broadcast
            byte count = 0;
            ushort registerAddress = 0;
            bool readReg = false;
            bool writeReg = false;
            ushort[] response = null;
            ushort[] data = null;
            IModbusMaster modbusMaster = null;
            string x;
            int paramCnt = 1;
            int paramCnt2 = 0;
            int arraycount = 0;


            //while ((c = g.getopt()) != -1)
            c = g.getopt();
            while (paramCnt < g.Argv.Length) 
            {
                x = g.Argv[paramCnt++];
                c = Convert.ToInt16(x[0]);
                switch (c)
                {
                    case 't':
                        ipAddress = g.Argv[paramCnt++];
                        break;
                    case 'c':
                        //comPort = new SerialPort(g.Optarg);
                        comPort = new SerialPort(g.Argv[paramCnt++]);
                        comPort.BaudRate = Int32.Parse(g.Argv[paramCnt++]);//38400;
                        comPort.DataBits = 8;
                        comPort.StopBits = StopBits.One;
                        comPort.Parity = Parity.None;
                        comPort.Open();
                        break;
                    case 'p':
                        ipPort = int.Parse(g.Argv[paramCnt++]);
                        break;
                    case 'i':
                        slaveId = byte.Parse(g.Argv[paramCnt++]);
                        break;
                    case 'n':
                        count = byte.Parse(g.Argv[paramCnt++]);
                        break;
                    case 'a':
                        registerAddress = UInt16.Parse(g.Argv[paramCnt++]);
                        break;
                    case 'r':
                        readReg = true;
                        break;
                    case 'w':
                        writeReg = true;
                        paramCnt2 = paramCnt;
                        break;
                    case '?':
                        break; // getopt() already printed an error

                    default:
                        Console.WriteLine("Help");
                        Console.WriteLine("Set for TCP/IP use talking to SPU");
                        Console.WriteLine("i 1   //slave address 1=SPU 0=broadcast");
                        Console.WriteLine("p 502 //for the external connection to the Modbus Server");
                        Console.WriteLine("t 10.150.225.62");
                        Console.WriteLine("Set for Com1 use talking to SPU");
                        Console.WriteLine("c 1 38400");
                        Console.WriteLine("Example General using:");
                        Console.WriteLine("n 1    // count 1 register");
                        Console.WriteLine("a 0    // registerAddress");
                        Console.WriteLine("r      // read [n] values starting from [a] returns value");
                        Console.WriteLine("w 55   // write 55 to [a]");
                        break;
                }
            }

            //At this point we should have some command line args set
            //Construct the correct modbus interface object

            try
            {
                //NOTE The use of the TcpClient below is bad practice.
                //This would leak a TcpClient resource in a large program as
                //it's dispose method may not get called.
                if (readReg || writeReg)
                {
                    if (ipAddress != string.Empty && ipPort != 0)
                    {
                        //Create a TCPModbus master
                        modbusMaster = ModbusIpMaster.CreateIp(new TcpClient(ipAddress, ipPort));
                    }
                    else if (comPort != null)
                    {
                        //Create a Serial master
                        modbusMaster = ModbusSerialMaster.CreateRtu(comPort);
                        Console.Write("Create COM Port " + comPort.PortName);
                        Console.WriteLine(" baud " + comPort.BaudRate);
                    }
                    //Check that a master has been created

                    if (modbusMaster != null)
                    {
                        if (count == 0)
                        {
                            count = 1;
                        }

                        if (writeReg && readReg)
                        {
                            arraycount = 0;
                            List<ushort> result = new List<ushort>();
                            while (paramCnt2 < (g.Argv.Length))
                            {
                                //                            data[arraycount++] = ushort.Parse(g.Argv[paramCnt2++]); //data = ReadData();
                                result.Add(UInt16.Parse(g.Argv[paramCnt2++]));
                            }
                            data = result.ToArray();

                            if (data != null)
                            {
                                response = modbusMaster.ReadWriteMultipleRegisters(slaveId, registerAddress, count, registerAddress, data);
                            }

                        }
                        else if (writeReg)
                        {
                            arraycount = 0;
                            List<ushort> result = new List<ushort>();
                            while (paramCnt2 < (g.Argv.Length))
                            {
                                //  data[arraycount++] = ushort.Parse(g.Argv[paramCnt2++]); //data = ReadData();
                                result.Add(UInt16.Parse(g.Argv[paramCnt2++]));
                            }
                            data = result.ToArray();


                            if (data != null)
                            {
                                modbusMaster.WriteMultipleRegisters(slaveId, registerAddress, data);
                                Console.WriteLine(" data: " + data);
                            }

                        }
                        else //assume read
                        {
                            response = modbusMaster.ReadHoldingRegisters(slaveId, registerAddress, count);
                        }

                        if (response != null)
                        {
                            foreach (ushort r in response)
                            {
                                Console.Write(r + " ");
                            }
                            Console.WriteLine();
                            Console.WriteLine("Press enter to exit");
                            x = Console.ReadLine();
                        }
                    }
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Caught {0}", e.Message);
                x = Console.ReadLine();
            }
        }

        static private ushort[] ReadData()
        {
            List<ushort> result = new List<ushort>();
            string line = Console.ReadLine();

            foreach (string v in line.Split(new char[] { ' ' }))
            {
                try
                {
                    result.Add(UInt16.Parse(v));
                }
                catch (FormatException)
                { } //Ignore the exception.
            }

            return result.ToArray();
        }
    }
}
