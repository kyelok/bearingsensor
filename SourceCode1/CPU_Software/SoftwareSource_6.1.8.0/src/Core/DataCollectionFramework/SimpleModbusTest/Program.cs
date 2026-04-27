using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.IO.Ports;
using System.Net;
using System.Net.Sockets;
using System.Threading;
using Modbus.Data;
using Modbus.Device;
using Modbus.Utility;

namespace SimpleModbusTest
{
    class Program
    {
        static void Main(string[] args)
        {
            Program p = new Program();
            p.Init();
        }

        ModbusIpMaster master;
        TcpClient client;

        int retryTime = 3;
        int maxRetryAttempts = 10;
        int retryAttempts = 0;

        String localhost = "10.150.225.126";
        int port = 1502;


        private bool Connect()
        {
            try
            {
                client = new TcpClient(localhost, port);
            }
            catch (SocketException e)
            {
                //Connection could not be made
                if (retryAttempts < maxRetryAttempts)
                {
                    Console.Out.Write("\nWarning: Connection to Modbus server could not be made.\nRetry in ");

                    for (int i = 0; i < retryTime; i++)
                    {
                        Console.Out.Write((retryTime - i) + "...");
                        Thread.Sleep(1000);
                    }
                    retryAttempts++;
                    Console.Out.WriteLine(" Connecting.");
                    Connect();
                }
                else
                {
                    //Timeout
                    Console.Out.WriteLine("Error: Connection Timeout! Attempted connection " + retryAttempts + 1 + " times.");
                    return false;
                }
            }
            return true;
        }

        public void Init()
        {

            {
                Console.Out.WriteLine("Loading ModbusClient extention...");
                //return;
                if (this.Connect())
                {

                    this.master = ModbusIpMaster.CreateIp(client);

                    //read five input values

                    ushort[] values = this.master.ReadHoldingRegisters(1, 1);

                    for (int i = 0; i < values.Length; i++)
                    {
                        Console.WriteLine("Values {0}={1}", 0 + i, values[i]);
                    }
                }
                else
                {
                    Console.Out.WriteLine("Connection Failure.");
                }
            }
        }
    }
}
