/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;
using System.Runtime.Serialization.Json;
using WebServiceObjects;

namespace WebTestClient
{
    class Program
    {
        public static readonly String ServerAddress = "localhost";

        public static readonly int ServerPort = 8081;

        public static ServerRequests ServerRequests = new ServerRequests(ServerAddress, ServerPort);

        private static string auth = null;

        public static Int16[] GetItemListInt16(String list)
        {
            string[] items = list.Split(',');
            Int16[] returnData = new Int16[items.Length];
            for (int i = 0; i < items.Length; i++)
            {
                returnData[i] = Int16.Parse(items[i]);
            }
            return returnData;
        }

        public static bool ProcessCommandLine(String [] commandInfo)
        {
            bool showhelp = false;
            if (commandInfo[0] == "quit" || commandInfo[0] == "exit")
            {
                return false;
            }            
            else if (commandInfo[0] == "login")
            {
                if (commandInfo.Length < 3)
                {
                    Console.WriteLine("login <username> <password>");
                }
                else
                {
                    auth = UserOperations.Login(commandInfo[1], commandInfo[2]);
                    Console.WriteLine("Auth code: {0}", auth);
                }
            }
            else if (commandInfo[0] == "user")
            {
                if (commandInfo.Length <= 1)
                    showhelp = true;
                else if (commandInfo[1] == "list")
                    UserOperations.ReadUsers();
                else if (commandInfo[1] == "reset" && commandInfo.Length == 2)
                    UserOperations.PasswordReset(null);
                else if (commandInfo[1] == "reset" && commandInfo.Length == 3)
                    UserOperations.PasswordReset(commandInfo[2]);
                else if (commandInfo[1] == "resetgen" && commandInfo.Length == 3)
                    Console.WriteLine("Reset key: {0}", UserOperations.DecryptClientKey(commandInfo[2]));
            }
            else if (commandInfo[0] == "sensor")
            {
                if (commandInfo.Length > 1 && commandInfo[1] == "setup")
                    EngineOperations.ReadSensorSetup();
                else if (commandInfo.Length > 2 && commandInfo[1] == "dcmode")
                    EngineOperations.SetDCMode((SensorDCMode)Int16.Parse(commandInfo[2]), auth);
                else if (commandInfo.Length > 2 && commandInfo[1] == "calibrate")
                {
                    if (commandInfo.Length > 3 && commandInfo[2] == "peek")
                        EngineOperations.SensorCalibratePeek(GetItemListInt16(commandInfo[3]), auth);
                    else if (commandInfo[2] == "order")
                        EngineOperations.SensorCalibrationOrder(auth);
                    else
                        showhelp = true;
                }
                else if (commandInfo.Length > 2 && commandInfo[1] == "reset")
                {
                    if (commandInfo.Length >= 3 && commandInfo[2] == "peek")
                    {
                        if (commandInfo.Length == 3)
                            EngineOperations.SensorResetPeek(null, auth);
                        else
                            EngineOperations.SensorResetPeek(GetItemListInt16(commandInfo[3]), auth);
                    }
                    else
                        showhelp = true;
                }
                else if (commandInfo.Length == 2 && commandInfo[1] == "replace")
                {
                    EngineOperations.GetSensorReplaceState();
                }
                else if (commandInfo.Length > 2 && commandInfo[1] == "replace")
                {
                    //Commands can be:
                    // replace
                    // replace sensor list
                    // replace cancel sensor list
                    if (commandInfo.Length >= 3 && commandInfo[2] == "cancel")
                    {
                        //Cancel sensor replace
                        EngineOperations.CancelSensorReplace(Int16.Parse(commandInfo[3]), auth);
                    }
                    if (commandInfo.Length >= 3 && commandInfo[2] == "average")
                    {
                        //Cancel sensor replace
                        EngineOperations.StartSensorReplaceAverage(Int16.Parse(commandInfo[3]), auth);
                    }
                    else
                    {
                        //Start sensor replace
                        EngineOperations.StartSensorReplace(Int16.Parse(commandInfo[2]), auth);
                    }
                }
                else
                    showhelp = true;
            }
            else if (commandInfo[0] == "learning")
            {
                if (commandInfo.Length == 1)
                    EngineOperations.EngineLearningStatus();
                else if (commandInfo.Length > 1 && commandInfo[1] == "start")
                    EngineOperations.StartEngineLearning(auth);
                else if (commandInfo.Length > 1 && commandInfo[1] == "stop")
                    EngineOperations.StopEngineLearning(auth);
                else
                    showhelp = true;
            }
            else if (commandInfo[0] == "alarms")
            {
                if (commandInfo.Length == 1)
                    EngineOperations.EngineAlarms();
                else if (commandInfo.Length > 2 && commandInfo[1] == "ack")
                    EngineOperations.EngineAlarmsAck(GetItemListInt16(commandInfo[2]), auth);
                else if (commandInfo.Length > 2 && commandInfo[1] == "ignore")
                    EngineOperations.EngineAlarmsIgnore(GetItemListInt16(commandInfo[2]), auth);
                else
                    showhelp = true;
            }
            else if (commandInfo[0] == "diagnostics")
                EngineOperations.Diagnostics();
            else if (commandInfo[0] == "eventlog")
            {
                int offset = -1;
                int limit = 100;

                if (commandInfo.Length > 1)
                    offset = Int32.Parse(commandInfo[1]);
                if (commandInfo.Length > 2)
                    limit = Int32.Parse(commandInfo[2]);

                EngineOperations.EventLog(offset, limit);
            }
            else if (commandInfo[0] == "engine")
            {
                if (commandInfo.Length > 1 && commandInfo[1] == "live")
                    EngineOperations.ReadLiveEngineData();
                else if (commandInfo.Length > 1 && commandInfo[1] == "alarms")
                    EngineOperations.ReadEngineAlarms();
                else if (commandInfo.Length > 1 && commandInfo[1] == "trend")
                    EngineOperations.ReadGetEngineTrendData();
                else
                    showhelp = true;
            }
            else
                showhelp = true;

            if (commandInfo[0] == "help" || showhelp)
            {
                Console.WriteLine("user list             - List the systems users");
                Console.WriteLine("user reset            - Display password reset code");
                Console.WriteLine("user reset <password> - Reset system passwords");
                Console.WriteLine("user resetgen <key>   - Generates a key to reset user passwords");

                Console.WriteLine("sensor setup          - Show sensor setup information");
                Console.WriteLine("sensor dcmode <mode>  - Set DC Mode 0=DCMode, 1=PulseMode, 2=PeekHold");
                Console.WriteLine("sensor calibrate peek <sensor1,sensor2,..> - Calibrate peek");
                Console.WriteLine("sensor reset peek <sensor1,sensor2,..>     - Reset peek");
                Console.WriteLine("sensor calibrate order- Calibration order");
                Console.WriteLine("sensor replace");
                Console.WriteLine("sensor replace <sensor_id>");
                Console.WriteLine("sensor replace cancel <sensor_id>");
                Console.WriteLine("sensor replace average <sensor_id>");

                Console.WriteLine("learning              - Engine learning status");
                Console.WriteLine("learning start        - Start engine learning");
                Console.WriteLine("learning stop         - Stop engine learning");

                Console.WriteLine("diagnostics           - Diagnostics information");
                Console.WriteLine("eventlog              - Event log");

                Console.WriteLine("alarms                     - List alarms");
                Console.WriteLine("alarms ack <id1,id2,..>    - Acknowledge alarms");
                Console.WriteLine("alarms ignore <id1,id2,..> - Ignore alarms");

                Console.WriteLine("engine live           - Live engine data");
                Console.WriteLine("engine trend <string> - Trend data");
                Console.WriteLine("engine alarms         - Engine alarms");
                Console.WriteLine("username <user> <password> - Set the current user");
                Console.WriteLine("help                  - This help screen");
                Console.WriteLine("quit                  - Quit application");
                showhelp = false;
            }
            return true;
        }

        static void Main(string[] args)
        {
            bool running = true;
            String commandLine;
            String [] commandInfo;

            Console.WriteLine("AMOT Webserver test harness");
            Console.WriteLine("===========================");
            Console.WriteLine("Current configuration: " + ServerAddress + ":" + ServerPort);
            Console.WriteLine();
            Console.WriteLine("Type 'help' for more information....");
            Console.WriteLine("Type 'username <user> <password>' to set your password...");
            Console.WriteLine("Default passwords (if reset password is 'password'):");
            Console.WriteLine("  AMOT   gscpjgjh");
            Console.WriteLine("  Admin  twpnkfra");
            Console.WriteLine("  Setup  ship1234");
            do {
                Console.Write("% ");
                commandLine = Console.ReadLine();
                commandInfo = commandLine.Split(' ');

                try
                {
                    running = ProcessCommandLine(commandInfo);
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.ToString());
                }
            } while (running);
        }
    }
}


