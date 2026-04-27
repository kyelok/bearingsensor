/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */

using System.Reflection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Net.Sockets;
using System.Net;
using System.Net.NetworkInformation;
using System.IO;
using Modbus.Data;
using ModbusRTUInterface;
using System.IO.Ports;
using Storage;
using HelperClasses;
using FaultErrorIndicators;
using System.Configuration;
using System.Management;
using System.Security.Cryptography;

namespace ModbusServer
{
    /**
     * The Modbus server provides 3rd party and internal applications access to Modbus data.
     * 
     */
    class Program
    {
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        /// <summary>
        /// Main entry point for the Modbus server.
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            ModbusMapper mapper = new ModbusMapper();
            AMOTMappedProxyDataStore externalDataStore;
            AMOTProxyDataStore internalDataStore;            
            ExternalTCPServer externalTCP = null;
            ExternalTCPServer2 externalTCP2 = null;
            ExternalRTUServer externalRTU = null;
            RTUInterface rtuInterface = null;
            RTUInterface rtuTempInterface = null;
            SerialPort internalPort;
            SerialPort internalTempPort;
            SerialPort externalPort = null;
            ConfigurationData config;
            Faults faults = null;

            string keyFile = @"c:\AMOT\Key.txt";
            string password = "AmotXtsw22015revion107EncryptKey";
            string tempFile = @"c:\match3.txt";
            bool registered = true;
            string decryptedKey = string.Empty;
            string tempString = string.Empty;

            string cpuID = string.Empty;
            ManagementClass mc = new ManagementClass("win32_processor");
            ManagementObjectCollection moc = mc.GetInstances();

            foreach (ManagementObject mo in moc)
            {
                if (cpuID == "")
                {
                    //Remark gets only the first CPU ID
                    cpuID = mo.Properties["processorID"].Value.ToString();

                }
            }

            string macAddr = GetMacAddress1();
            //if (macAddr.Length > 1) macAddr = macAddr.Remove(0, 1);
            //if (macAddr.Length > 1) macAddr = macAddr.Remove(macAddr.Length - 1, 1);

            cpuID = cpuID + "-" + macAddr;

            decryptedKey = string.Empty;
            tempString = string.Empty;
            try
            {
                if (System.IO.File.Exists(keyFile))
                {
                    if (System.IO.File.Exists(tempFile))
                    {
                        System.IO.File.Delete(tempFile);
                    }

                    Decrypt(keyFile, tempFile, password);

                    using (StreamReader sr = File.OpenText(tempFile))
                    {
                        tempString = sr.ReadToEnd();
                        sr.Close();
                    }

                    if (System.IO.File.Exists(tempFile))
                    {
                        System.IO.File.Delete(tempFile);
                    }
                }
                //else
                {
                    //FaultErrorIndicators.Faults.Instance.SignalFault(FaultCodes.IMOModifiedError);
                    //registered = false;
                }

                String sFinal = tempString;
                String scpuID = cpuID;

                //compare the new CPUID with decrypted, if different send error code to RIA
                if (!sFinal.Trim().Equals(scpuID.Trim()))
                {
                    //FaultErrorIndicators.Faults.Instance.SignalFault(FaultCodes.IMOModifiedError);
                    registered = false;
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                //FaultErrorIndicators.Faults.Instance.SignalFault(FaultCodes.IMOModifiedError);
                registered = false;
            }

            //Setup the unhandled exception handler.
            //This will catch exceptions that are thrown from any thread pools or threads
            AppDomain.CurrentDomain.UnhandledException += new UnhandledExceptionEventHandler(CurrentDomain_UnhandledException);

            try
            {
                faults = Faults.Instance;

                config = ConfigurationData.Instance;
                if (config.ExternalComEnable == 1)
                {
                    logger.Warn("Creating External Serial Port");
                    externalPort = config.CreateExternalSerialPort();

                    int retryCount = 0;

                    while (retryCount < 5)
                    {
                        try
                        {
                            logger.Info("Opening External Serial Port");
                            externalPort.Open();
                            faults.ClearFault(FaultCodes.ExternalRTUFailure);
                            break; //Break out of loop
                        }
                        catch (Exception e)
                        {
                            logger.FatalFormat("Failed to open External Serial Port.  Exception {0}", e);
                            faults.SignalFault(FaultCodes.ExternalRTUFailure);
                            retryCount++;

                            Thread.Sleep(500);
                        }
                    }
                }
                else
                {
                    logger.Warn("No External Serial Port is Initialized!");
                }

                internalPort = config.CreateDefaultSerialPort();
                if (config.InternaBearingEnable == 1)
                {
                    logger.Info("Creating SPU Internal Serial Port");
                    internalPort = config.CreateInternalSerialPort(); 

                    while (rtuInterface == null)
                    {
                        try
                        {
                            rtuInterface = new RTUInterface(internalPort);
                        }
                        catch (Exception e)
                        {
                            logger.FatalFormat("Failed to start SPU RTU Interface. {0}", e.Message);
                            faults.SignalFault(FaultCodes.RTUStartFailure);
                        }

                        Thread.Sleep(1000);
                    }

                    faults.ClearFault(FaultCodes.RTUStartFailure);
                }

                internalTempPort = config.CreateDefaultSerialPort();
                if (config.InternalTempEnable == 1)
                {
                    logger.Info("Creating Temperature Internal Serial Port");
                    internalTempPort = config.CreateTemperatureSerialPort();

                    while (rtuTempInterface == null)
                    {
                        try
                        {
                            rtuTempInterface = new RTUInterface(internalTempPort);
                        }
                        catch (Exception e)
                        {
                            logger.FatalFormat("Failed to start TMP RTU Interface. {0}", e.Message);
                            //faults.SignalFault(FaultCodes.RTUStartFailure);
                        }

                        Thread.Sleep(1000);
                    }

                    faults.ClearFault(FaultCodes.RTUStartFailure);
                }

                //Create the mapper and the mapped datastore
                try
                {
                    mapper.InitFromConfigurationFile(ConfigurationData.ConfigurationFilesLocation + "registers");
                }
                catch (Exception e)
                {
                    if (e is ArgumentException ||
                        e is ArgumentNullException ||
                        e is IOException ||
                        e is IndexOutOfRangeException)
                    {
                        logger.FatalFormat("Failed read {0}.  External Modbus Servers will be disabled", ConfigurationData.ConfigurationFilesLocation + "registers.map");
                        faults.SignalFault(FaultCodes.ModbusMapperFailure);
                        mapper = null;
                    }
                    else
                    {
                        throw;
                    }
                }

                externalDataStore = new AMOTMappedProxyDataStore(mapper, rtuInterface);

                try
                {
                    externalTCP = new ExternalTCPServer(externalDataStore);
                }
                catch (Exception e)
                {
                    externalTCP = null;
                    logger.FatalFormat("Failed read to create ExternalTCPServer.  External Modbus Servers will be disabled. Exception {0}", e.ToString());
                    faults.SignalFault(FaultCodes.ExternalTCPIPFailure);
                }

                try
                {
                    externalTCP2 = new ExternalTCPServer2(externalDataStore);
                }
                catch (Exception e)
                {
                    externalTCP2 = null;
                    logger.FatalFormat("Failed read to create ExternalTCPServer.  External Modbus Servers will be disabled. Exception {0}", e.ToString());
                    faults.SignalFault(FaultCodes.ExternalTCPIPFailure);
                }

                if (externalPort != null)
                {
                    externalRTU = new ExternalRTUServer(externalPort, externalDataStore);
                }

                internalDataStore = new AMOTProxyDataStore(mapper, rtuInterface);                

                //The servers accept requests
                if (config.InternalTempEnable == 1)
                {
                    internalDataStore = new AMOTProxyDataStore(mapper, rtuInterface, rtuTempInterface);                    
                }
                
                InternalTCPServer internalTCP = new InternalTCPServer(internalDataStore);
                InternalTempTCPServer internalTempTCP = new InternalTempTCPServer(internalDataStore);

                //Start the TCP servers.
                //This will execute asynchronously
                logger.Info("Starting internal Modbus TCP/IP Server");
                if (config.InternaBearingEnable == 1) internalTCP.Start();
                if (config.InternalTempEnable == 1) internalTempTCP.Start();

                try
                {
                    //At this point everything is loaded.
                    //Write out the version number and start
                    //the servers.
                    string versionNumberFile = @"d:\modbuserverversion.txt";
                    if (ConfigurationManager.AppSettings["ServerVersionNumbers"] != null)
                    {
                        versionNumberFile = ConfigurationManager.AppSettings["ServerVersionNumbers"];
                    }

                    //Delete the old file
                    File.Delete(versionNumberFile);
                    Assembly assembly = System.Reflection.Assembly.GetAssembly(mapper.GetType());

                    using (StreamWriter file = new StreamWriter(versionNumberFile))
                    {
                        file.WriteLine("{0},{1}", assembly.GetName().Name, assembly.GetName().Version);
                        file.WriteLine("{0},{1}", "MappingFile", mapper.Version);
                    }
                }
                catch (Exception e)
                {
                    // we do not want an exception stopping the system from starting
                    logger.FatalFormat("Caught Exception {0} trying to write version numbers", e.ToString());
                }

                if (externalTCP != null && registered == true)
                {
                    logger.Info("Starting external Modbus TCP/IP Server");
                    externalTCP.Start();
                }

                //if (externalTCP2 != null && registered == true)
                {
                    logger.Info("Starting external Modbus TCP/IP Server");
                    externalTCP2.Start();
                }

                if (externalRTU != null && registered == true)
                {
                    logger.Info("Starting external Modbus RTU Server");
                    externalRTU.Start();
                }
                else
                {
                    logger.Info("Cannot start external Modbus RTU Server");
                }

                EventWaitHandle waitForShutdown = new EventWaitHandle(false, EventResetMode.AutoReset, "amot_shutdown_server");
                waitForShutdown.WaitOne();

                logger.Info("Stopping Modbus Server");

                rtuInterface.Stop();
                //rtuTempInterface.Stop();
                externalDataStore.Stop();
                internalTCP.Stop();
                //internalTempTCP.Stop();
                externalTCP.Stop();
                externalTCP2.Stop();
                internalPort.Close();                
                //internalTempPort.Close();                
             }
            catch (Exception e)
            {
                logger.FatalFormat("Main caught exception {0}", e.ToString());
                
                if (faults != null)
                {
                    faults.SignalFault(FaultCodes.ModbusServerFailure);
                }
            }
        }

        /// <summary>
        /// Handles exceptions thrown by Threads in the software.
        /// </summary>
        /// <param name="sender">Not used</param>
        /// <param name="e">Holds the exception</param>
        private static void CurrentDomain_UnhandledException(object sender, UnhandledExceptionEventArgs e)
        {
            try
            {
                Exception ex = (Exception)e.ExceptionObject;
                logger.FatalFormat("Exception caught from thread.  Application will exit. Exception: {0}",ex);
            }
            catch (Exception)
            {
                //DoNothing.  Application is going to exit anyway at this point.
            }
        }

        // Decrypt a file into another file using a password 
        private static void Decrypt(string fileIn,
                    string fileOut, string Password)
        {

            // First we are going to open the file streams 
            FileStream fsIn = new FileStream(fileIn,
                        FileMode.Open, FileAccess.Read);
            FileStream fsOut = new FileStream(fileOut,
                        FileMode.OpenOrCreate, FileAccess.Write);

            // Then we are going to derive a Key and an IV from
            // the Password and create an algorithm 
            PasswordDeriveBytes pdb = new PasswordDeriveBytes(Password,
                new byte[] {0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 
            0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76});
            Rijndael alg = Rijndael.Create();

            alg.Key = pdb.GetBytes(32);
            alg.IV = pdb.GetBytes(16);

            // Now create a crypto stream through which we are going
            // to be pumping data. 
            // Our fileOut is going to be receiving the Decrypted bytes. 
            CryptoStream cs = new CryptoStream(fsOut,
                alg.CreateDecryptor(), CryptoStreamMode.Write);

            // Now will will initialize a buffer and will be 
            // processing the input file in chunks. 
            // This is done to avoid reading the whole file (which can be
            // huge) into memory. 
            int bufferLen = 4096;
            byte[] buffer = new byte[bufferLen];
            int bytesRead;

            do
            {
                // read a chunk of data from the input file 
                bytesRead = fsIn.Read(buffer, 0, bufferLen);

                // Decrypt it 
                cs.Write(buffer, 0, bytesRead);

            } while (bytesRead != 0);

            // close everything 
            cs.Close(); // this will also close the unrelying fsOut stream 
            fsIn.Close();
        }

        private static string GetMacAddress1()
        {
            string macAddresses = string.Empty;

            foreach (NetworkInterface nic in NetworkInterface.GetAllNetworkInterfaces())
            {
                if (nic.GetPhysicalAddress().ToString().Trim() != "")
                {
                    macAddresses += nic.GetPhysicalAddress().ToString();
                    break;
                }
            }

            return macAddresses;
        }
    }
}
