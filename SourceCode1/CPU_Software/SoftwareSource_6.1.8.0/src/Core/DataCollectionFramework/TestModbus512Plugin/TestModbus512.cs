using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using Framework;
using System.IO;
using System.IO.Ports;
using System.Net;
using System.Net.Sockets;
using Modbus.Data;
using Modbus.Device;
using Modbus;
using DatabaseConnector;

namespace TestModbus512Plugin
{
    public class TestModbus512 : IExtInterface
        {
            #region IExtInterface Members

            /// <summary>
            /// IP Address of Modbus Server 
            /// </summary>
            String modbusSvrHost = "127.0.0.1";

            /// <summary>
            /// Modbus Server port
            /// </summary>
            int port = 1502;
            /// <summary>
            /// Modbus server timeout
            /// </summary>
            int ModbusTCPIPTimeout = 5000;
            /// <summary>
            /// Database connection string
            /// </summary>
            string dbConnString = @"Data Source=test_db.db3";
            
            
            /// <summary>
            /// Global objects
            /// </summary>
            TcpClient client;
            private ModbusIpMaster master;
            IDatabaseConnector dbDatabase;
            /// <summary>
            /// Array to hold modbus readings
            /// </summary>
            List<UInt16> registers;

            /// <summary>
            /// Return amount of milliseconds between executions
            /// </summary>
            public int RunSchedule
            { get { return 5000; } }

            /// <summary>
            /// Return amount of milliseconds between writing to logfile
            /// </summary>
            public int LogSchedule
            { get { return 10000; } }

            /// <summary>
            /// Initialises plugin: Creates databases tables and requests modbus connection.
            /// </summary>
            public void Init()
            {
                Console.WriteLine("TestModbus512\n-------------\n"+
                    "This plugin will poll the modbus server for 512 values and write them to the database.\n");
                
                //Establish connection to modbus server
                if (this.ModbusConnect())
                {
                    Console.WriteLine("TestModbus512: Connected to modbus server");
                }

                

                //Establish connection to database

                dbDatabase = new SqliteConnector(dbConnString);

                using (DbConnection dbConnection = dbDatabase.Connect())
                {
                    using (DbTransaction dbTransaction = dbConnection.BeginTransaction())
                    {
                        StringBuilder sql = new StringBuilder("test_512_table(");

                        for(int i = 0; i < 512; i++)
                        {
                            sql.Append(("register_"+i) + " INTEGER,");
                        }
                        sql.Remove(sql.Length - 1, 1);
                        sql.Append(");");

                        Console.WriteLine("Creating tables");

                        dbDatabase.CreateTable(dbConnection, sql.ToString());

                        dbTransaction.Commit();
                    }
                }
            }
            
            /// <summary>
            /// Gets data from modbus and appends it to a list
            /// </summary>
            public void Run()
            {
                Console.WriteLine("TestModbus512: Reading values from modbus server");

                
                List<UInt16[]> temp = new List<UInt16[]>();
                temp.Add(this.master.ReadHoldingRegisters(1, 0, 125));
                temp.Add(this.master.ReadHoldingRegisters(1, 125, 125));
                temp.Add(this.master.ReadHoldingRegisters(1, 250, 125));
                temp.Add(this.master.ReadHoldingRegisters(1, 375, 125));
                temp.Add(this.master.ReadHoldingRegisters(1, 500, 12));

                registers = new List<UInt16>();

                foreach (ushort[] reading in temp)
                {
                    foreach (ushort value in reading)
                    {
                        registers.Add(value);
                    }

                }
                
            }

            /// <summary>
            /// Writes data from list to the database
            /// </summary>
            public void Log()
            {
                Console.WriteLine("TestModbus512: Writing values to db");
                //Write values to db
                using (DbConnection dbConnection = dbDatabase.Connect())
                {
                    using (DbTransaction dbTransaction = dbConnection.BeginTransaction())
                    {
                        StringBuilder sql = new StringBuilder("test_512_table VALUES(");
                        foreach (UInt16 value in registers)
                        {
                            sql.Append(value + ",");                            
                        }
                        sql.Remove(sql.Length - 1, 1);
                        sql.Append(");");

                        dbDatabase.InsertInto(dbConnection, sql.ToString());
                        
                        dbTransaction.Commit();
                    }
                }
            }

            /// <summary>
            /// Attempts to connect to modbus
            /// </summary>
            /// <returns>TRUE - Success, FALSE - Failure</returns>
            private bool ModbusConnect()
            {
                try
                {
                    client = new TcpClient(modbusSvrHost, port);
                }
                catch (SocketException e)
                {
                    throw;
                }

                this.master = ModbusIpMaster.CreateIp(client);
                this.master.Transport.ReadTimeout = ModbusTCPIPTimeout;

                return true;
            }

            #endregion
        }
}
