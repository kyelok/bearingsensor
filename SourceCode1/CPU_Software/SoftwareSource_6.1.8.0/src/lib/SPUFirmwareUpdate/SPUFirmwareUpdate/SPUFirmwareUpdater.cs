/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.IO;
using System.IO.Ports;
using System.Text;
using Modbus.Data;
using Modbus.Device;
using Modbus.Utility;
using System.Threading;

namespace SPUFirmwareUpdate
{
    public class SPUFirmwareUpdater
    {
        //Constants used in class
        public static readonly byte slaveId = 1;
        public static readonly int slaveVersionIndex = 0;
        public static readonly int masterVersionIndex = 1;
        public static readonly int progressCheckBaudRate = 38400;
        public static readonly int[] knownBaudRates = { 38400, 115200 };

        //Register addresses
        public static readonly ushort numSensorsOnSlaveReg = 2050;
        public static readonly ushort slaveFirmVersReg = 65534;
        public static readonly ushort firmUpdteCntrlReg = 8400;
        public static readonly ushort updateStatusReg = 8402;
        public static readonly ushort eraseSPIFlashReg = 8403;
        public static readonly ushort blockSizeReg = 8404;
        public static readonly ushort spiAddressReg = 8405;
        public static readonly ushort spiFlashReg = 8407;
        public static readonly ushort slaveProgramStatusReg = 8535;
        //typical values
        public static readonly ushort set = 1;
        public static readonly ushort busy = 1;
        public static readonly ushort done = 0;
        
        public static readonly ushort defaultBlocksize = 64;

        public int defaultTimeOut = 3000;
        public int spiWriteTimeOut = 3000;
        public int maxTimeOuts = 10;

        
        //Control reg values
        public static readonly ushort[] enterUpdtMode = { 0x1234, 0x3333 };
        public static readonly ushort[] programSlave = { 0x1234, 0x2222 };
        public static readonly ushort[] programMaster = { 0x1234, 0x1111 };

        //Expected responses after starting programming of master SPU
        public static readonly byte[] expectedEcp = System.Text.Encoding.ASCII.GetBytes("ECP");
        public static readonly byte[] expectedBc = System.Text.Encoding.ASCII.GetBytes("BC");
        
        //Instance variables with default values
        String updateFileLocation = null;
        private String serialPort = "COM22";
        private int serialBaudRate = 38400;
        private ushort[] oldSPUVersions = null;
        private ushort[] newSPUVersions = null;
        private ushort[] updateData = null;
        private int numBlocksUpdateData = 0;
        private bool slaveSPUPresent = false;
        //indicators of progress
        private SPUFirmwareUpdateStage currentStage = SPUFirmwareUpdateStage.NotStarted;
        private SPUFirmwareUpdateState currentState = SPUFirmwareUpdateState.NotStarted;
        private ushort progress = 0;
        private String errorMessage = "";
        
        /// <summary>
        /// Constructor for SPUFirmwareUpdater requires details of serial port to use for
        /// communication with SPU
        /// </summary>
        /// <param name="serialPort">String representing serial port to use (eg. COM1)</param>
        /// <param name="baudRate">Baudrate to use for RS485 comms</param>
        public SPUFirmwareUpdater(String serialPort, int baudRate, String updateFileLocation)
        {
            //If values have been set then override the defaults in the instance variables
            if (null != serialPort)
            {
                this.serialPort = serialPort;
            }

            if (0 < baudRate)
            {
                this.serialBaudRate = baudRate;
            }

            if (null != updateFileLocation)
            {
                this.updateFileLocation = updateFileLocation;
            }
        }

        /// <summary>
        /// Perform the functions requried to update the SPU via Modbus
        /// </summary>
        /// <param name="updateFileLocation"></param>
        /// <returns></returns>
        public void PerformUpdate()
        {
            using (SerialPort port = new SerialPort(serialPort))
            {
                try
                {
                    currentState = SPUFirmwareUpdateState.InProgress;
                    currentStage = SPUFirmwareUpdateStage.ReadingUpdateFile;

                    ReadUpdateFile(updateFileLocation);

                    try
                    {
                        //Kill off the servers that lock the serial port
                        EventWaitHandle waitForShutdownServer = new EventWaitHandle(false, EventResetMode.AutoReset, "amot_shutdown_server");
                        waitForShutdownServer.Set();

                        EventWaitHandle waitForShutdownData = new EventWaitHandle(false, EventResetMode.AutoReset, "amot_shutdown_data");
                        waitForShutdownData.Set();

                        System.Threading.Thread.Sleep(1000);
                    }
                    catch (Exception)
                    { } //Ignore any exception from trying to shutdown the servers


                    // configure serial port
                    port.BaudRate = serialBaudRate;
                    port.DataBits = 8;
                    port.Parity = Parity.None;
                    port.StopBits = StopBits.One;
                    port.ReadTimeout = defaultTimeOut;
                    port.Open();

                    IModbusSerialMaster master = ModbusSerialMaster.CreateRtu(port);

                    currentStage = SPUFirmwareUpdateStage.CheckingCurrentVersions;
                    EnterUpdateModeOnSPU(master);
                    CheckIfSlaveSPUPresent(master);
                    oldSPUVersions = CheckCurrentVersions(master);

                    currentStage = SPUFirmwareUpdateStage.ErasingSPIFlash;
                    EraseSPIFlash(master);

                    currentStage = SPUFirmwareUpdateStage.WritingSPIFlash;
                    port.ReadTimeout = spiWriteTimeOut;
                    WriteDataToSPIFlash(master);
                    port.ReadTimeout = defaultTimeOut;

                    if (IsSlaveSPUPresent())
                    {
                        currentStage = SPUFirmwareUpdateStage.ErasingSlaveSPU;
                        ProgramSlaveSPU(master);
                    }

                    currentStage = SPUFirmwareUpdateStage.ErasingMasterSPU;
                    ProgramMasterSPU(master, port);

                    currentStage = SPUFirmwareUpdateStage.CheckingNewVersions;
                    CheckFinalVersions(master, port);

                    currentStage = SPUFirmwareUpdateStage.LastStage;
                    currentState = SPUFirmwareUpdateState.Completed;
                }
                catch (UnauthorizedAccessException)
                {
                    errorMessage = string.Format("Unable to open {0}", serialPort);
                    currentState = SPUFirmwareUpdateState.Failed;
                }
                catch (SPUUpdateException spue)
                {
                    errorMessage = spue.Message;
                    currentState = SPUFirmwareUpdateState.Failed;
                }
                catch (TimeoutException)
                {
                    errorMessage = "Received and unexpected timeout from ModBus comms";
                    currentState = SPUFirmwareUpdateState.Failed;
                }
                catch (Exception e)
                {
                    errorMessage = e.Message;
                    currentState = SPUFirmwareUpdateState.Failed;
                }
                finally
                {
                    port.Close();
                }
            }
        }

        /// <summary>
        /// Writes a DateTime structure to Modbus in BCD format.
        /// </summary>
        /// <param name="register">The Modbus register to start the write at</param>
        /// <param name="time">The DateTime structure to write to Modbus</param>
        public void WriteDateTime(ushort register, DateTime time)
        {
            ushort[] modBusTimeDate = { 0, 0, 0 };

            //year
            modBusTimeDate[0] += (ushort)(((time.Year / 10) % 10) << 12);
            modBusTimeDate[0] += (ushort)((time.Year % 10) << 8);

            //month
            modBusTimeDate[0] += (ushort)(((time.Month / 10) % 10) << 4);
            modBusTimeDate[0] += (ushort)(time.Month % 10);

            //day
            modBusTimeDate[1] += (ushort)(((time.Day / 10) % 10) << 12);
            modBusTimeDate[1] += (ushort)((time.Day % 10) << 8);

            //hour
            modBusTimeDate[1] += (ushort)(((time.Hour / 10) % 10) << 4);
            modBusTimeDate[1] += (ushort)(time.Hour % 10);

            //minute
            modBusTimeDate[2] += (ushort)(((time.Minute / 10) % 10) << 12);
            modBusTimeDate[2] += (ushort)((time.Minute % 10) << 8);

            //second
            modBusTimeDate[2] += (ushort)(((time.Second / 10) % 10) << 4);
            modBusTimeDate[2] += (ushort)(time.Second % 10);

            using (SerialPort port = new SerialPort(serialPort))
            {
                try
                {
                    // configure serial port
                    port.BaudRate = serialBaudRate;
                    port.DataBits = 8;
                    port.Parity = Parity.None;
                    port.StopBits = StopBits.One;
                    port.ReadTimeout = defaultTimeOut;
                    port.Open();

                    IModbusSerialMaster master = ModbusSerialMaster.CreateRtu(port);

                    master.WriteMultipleRegisters(1, register, modBusTimeDate);
                }
                finally
                {
                    port.Close();
                }
            }

        }

        /// <summary>
        /// Read in update file and parse into an array of words to be programmed to SPU.
        /// The file will be checked for validity by checking for required header and a
        /// valid checksum
        /// </summary>
        /// <param name="updateFileLocation"></param>
        /// <returns></returns>
        public void ReadUpdateFile(String updateFileLocation)
        {
            UpdateFileParser parser = new UpdateFileParser(updateFileLocation);
            updateData = parser.GetDataFromUpdateFile();
            numBlocksUpdateData = parser.CountBlocks();
        }

        /// <summary>
        /// Check the current versions of software on the SPU(s). This will also
        /// determine the presence of a slave SPU
        /// </summary>
        /// <param name="master"></param>
        public void CheckIfSlaveSPUPresent(IModbusSerialMaster master)
        {
            ushort[] numSensors = master.ReadHoldingRegisters(slaveId, numSensorsOnSlaveReg, 1);

            if (numSensors[0] > 0)
            {
                slaveSPUPresent = true;
            }
            else
            {
                slaveSPUPresent = false;
            }
        }

        /// <summary>
        /// Check the current versions of software on the SPU(s). This will also
        /// determine the presence of a slave SPU
        /// </summary>
        /// <param name="master"></param>
        public ushort[] CheckCurrentVersions(IModbusSerialMaster master)
        {
            ushort[] versions = master.ReadHoldingRegisters(slaveId, slaveFirmVersReg, 2);

            if (slaveSPUPresent && (0 >= versions[slaveVersionIndex]))
            {
                throw new SPUUpdateException("Failed to obtain slave SPU firmware version");
            }

            return versions;
        }

        /// <summary>
        /// Enter update mode on the SPU, requests processor and SPI flash intensive
        /// functions are halted.
        /// </summary>
        /// <param name="master"></param>
        public void EnterUpdateModeOnSPU(IModbusSerialMaster master)
        {
            master.WriteMultipleRegisters(slaveId, firmUpdteCntrlReg, enterUpdtMode);

            ushort[] mode = master.ReadHoldingRegisters(slaveId, firmUpdteCntrlReg, (ushort)enterUpdtMode.Length);

            if ((enterUpdtMode[0] != mode[0]) || (enterUpdtMode[1] != mode[1]))
            {
                throw new SPUUpdateException("Failed to enter update mode on SPU");
            }
        }

        /// <summary>
        /// Erase the SPI flash on the SPU
        /// </summary>
        /// <param name="master"></param>
        public void EraseSPIFlash(IModbusSerialMaster master)
        {
            ushort[] startErase = { set };
            master.WriteMultipleRegisters(slaveId, eraseSPIFlashReg, startErase);
            
            System.Threading.Thread.Sleep(1000);
            ushort[] eraseState = master.ReadHoldingRegisters(slaveId, updateStatusReg, 1);
            
            while (busy == eraseState[0])
            {
                System.Threading.Thread.Sleep(50);
                eraseState = master.ReadHoldingRegisters(slaveId, updateStatusReg, 1);                
            }

            if (done != eraseState[0])
            {
                throw new SPUUpdateException("Error returned from SPU when erasing SPI flash");
            }            
        }

        /// <summary>
        /// Write data parsed from input file to SPI Flash. This will update the progress variable
        /// as data is written. The progress variable will be treated as a percentage and varied
        /// from 0 to 100.
        /// </summary>
        /// <param name="master"></param>
        private void WriteDataToSPIFlash(IModbusSerialMaster master)
        {
            int index = 0;
            ushort[] blockSize = { defaultBlocksize };
            ushort[] start = { 0, 0 };
            int numBlocks = updateData.Length / defaultBlocksize;
            int blockCount = 0;

            if (0 < (updateData.Length % defaultBlocksize))
            {
                numBlocks++;
            }

            progress = 0;
            
            master.WriteMultipleRegisters(slaveId, blockSizeReg, blockSize);
            
            while (blockSize[0] < (updateData.Length - index))
            {
                WriteDataBlockToSPIFlash(master, (UInt32)(index * 2), index, blockSize[0]);
                index += blockSize[0];
                blockCount++;
                if (0 < numBlocks)
                {
                    progress = (ushort)((blockCount * 100) / numBlocks);
                    //progress = (ushort)blockCount;
                }
            }

            if (0 < (updateData.Length - index))
            {
                blockSize[0] = (ushort)(updateData.Length - index);
                master.WriteMultipleRegisters(slaveId, blockSizeReg, blockSize);
                WriteDataBlockToSPIFlash(master, (UInt32)(index * 2), index, blockSize[0]);
            }
            progress = 100;
        }

        /// <summary>
        /// Write a single block of 64 words or less to SPI flash
        /// </summary>
        /// <param name="master"></param>
        /// <param name="spiAddress"></param>
        /// <param name="start"></param>
        /// <param name="length"></param>
        private void WriteDataBlockToSPIFlash(IModbusSerialMaster master, UInt32 spiAddress, int start, ushort length)
        {
            ushort[] spiAddAsShorts = { (ushort)((spiAddress >> 16) % 0x10000), (ushort)((spiAddress) % 0x10000) };

            ushort[] addressCheck = { 0, 0 };
            int iTryCount = 3;
            while (iTryCount != 0)
            {
                master.WriteMultipleRegisters(slaveId, spiAddressReg, spiAddAsShorts);

                System.Threading.Thread.Sleep(10);
                addressCheck = master.ReadHoldingRegisters(slaveId, spiAddressReg, 2);

                if ((addressCheck[0] != spiAddAsShorts[0]) ||
                    (addressCheck[1] != spiAddAsShorts[1]))
                {
                    throw new SPUUpdateException("Could not set SPI address to required value");
                }

                ushort[] dataBlock = new ushort[length];

                //Fill data block
                for (int i = 0; i < length; i++)
                {
                    dataBlock[i] = updateData[start + i];
                }

                master.WriteMultipleRegisters(slaveId, spiFlashReg, dataBlock);

            System.Threading.Thread.Sleep(20);
                ushort[] writeState = master.ReadHoldingRegisters(slaveId, updateStatusReg, 1);

                while (busy == writeState[0])
                {
                System.Threading.Thread.Sleep(5);
                    writeState = master.ReadHoldingRegisters(slaveId, updateStatusReg, 1);
                }

                if (done != writeState[0])
                {
                    iTryCount--;
                }
                else return;
            }
            if (iTryCount == 0) throw new SPUUpdateException("Error returned from SPU when writing to SPI flash");
        }

        /// <summary>
        /// Program the master SPU with data in SPI flash
        /// </summary>
        /// <param name="master"></param>
        /// <param name="port"></param>
        private void ProgramMasterSPU(IModbusSerialMaster master, SerialPort port)
        {
            master.WriteMultipleRegisters(slaveId, firmUpdteCntrlReg, programMaster);

            //SPU always reports progress back at 38400 regardless of BaudRate used normally by the firmware
            if (progressCheckBaudRate != port.BaudRate)
            {
                port.Close();
                port.BaudRate = progressCheckBaudRate;
                port.Open();
            }

            WaitForECPFromMaster(port);

            currentStage = SPUFirmwareUpdateStage.ProgrammingMasterSPU;

            progress = 0;
            CheckProgrammingProgressFromMaster(port);          
        }

        /// <summary>
        /// Once the master SPU has completed erasing it's DSP flash it should send
        /// "ECP" along the RS485 lines five times. This function waits to receive at
        /// least one "ECP" message.
        /// </summary>
        /// <param name="port"></param>
        private void WaitForECPFromMaster(SerialPort port)
        {
            byte[] buffer = new byte[256];
            int len = 0;

            bool waiting = true;
            int expectedIndx = 0;

            int numTimeouts = 0;

            //check for ECP
            while (waiting)
            {
                try
                {
                    int buffIndx = 0;
                    len = port.Read(buffer, 0, 256);
                    
                    while (buffIndx < len)
                    {
                        if (0 == expectedIndx)
                        {
                            if (expectedEcp[expectedIndx] == buffer[buffIndx])
                            {
                                expectedIndx++;
                            }
                        }
                        else
                        {
                            if (expectedEcp[expectedIndx] == buffer[buffIndx])
                            {
                                expectedIndx++;
                            }
                            else
                            {
                                expectedIndx = 0;
                            }

                            if (expectedEcp.Length <= expectedIndx)
                            {
                                //Found an ECP in stream
                                waiting = false;
                                break;
                            }
                        }
                        buffIndx++;
                    }
                }
                catch (TimeoutException)
                {
                    numTimeouts++;
                    if (maxTimeOuts <= numTimeouts)
                    {
                        //erase failed
                        throw new SPUUpdateException("Failed to erase DSP flash on master SPU");
                    }
                }
            }
        }

        /// <summary>
        /// Once the master begins programming the DSP flash it starts sending BCxxxx messages
        /// along the RS485 lines to update progress. This functions reads these messages to
        /// update progress and check for completion.
        /// </summary>
        /// <param name="port"></param>
        private void CheckProgrammingProgressFromMaster(SerialPort port)
        {
            byte[] buffer = new byte[256];
            int len = 0;

            byte[] bcBuffer = new byte[6];
            int bcBuffIndx = 0;

            int numTimeouts = 0;

            bool waiting = true;

            while (waiting)
            {
                try
                {
                    int buffIndx = 0;
                    len = port.Read(buffer, 0, 256);

                    while (buffIndx < len)
                    {
                        if (0 == bcBuffIndx)
                        {
                            if (expectedBc[bcBuffIndx] == buffer[buffIndx])
                            {
                                bcBuffer[bcBuffIndx] = buffer[buffIndx];
                                bcBuffIndx++;
                            }
                        }
                        else if (1 == bcBuffIndx)
                        {
                            if (expectedBc[bcBuffIndx] == buffer[buffIndx])
                            {
                                bcBuffer[bcBuffIndx] = buffer[buffIndx];
                                bcBuffIndx++;
                            }
                            else
                            {
                                bcBuffIndx = 0;
                            }
                        }
                        else
                        {
                            bcBuffer[bcBuffIndx] = buffer[buffIndx];
                            bcBuffIndx++;

                            if (bcBuffer.Length <= bcBuffIndx)
                            {
                                //update Progress
                                UInt32 bcProg = (UInt32)((bcBuffer[2] << 24) + (bcBuffer[3] << 16) + (bcBuffer[4] << 8) + bcBuffer[5]);
                                progress = (ushort)((bcProg * 100) / numBlocksUpdateData);

                                bcBuffIndx = 0;
                                if (bcProg >= (numBlocksUpdateData - 2))
                                {
                                    progress = 100;
                                    waiting = false;
                                }
                            }
                        }
                        buffIndx++;
                    }
                }
                catch (TimeoutException)
                {
                    numTimeouts++;
                    if (maxTimeOuts <= numTimeouts)
                    {
                        //erase failed
                        throw new SPUUpdateException("Failed to program DSP flash on master SPU");
                    }
                }
            }
        }

        /// <summary>
        /// Program the slave SPU with data in SPI flash
        /// </summary>
        /// <param name="master"></param>
        /// <param name="port"></param>
        private void ProgramSlaveSPU(IModbusSerialMaster master)
        {
            master.WriteMultipleRegisters(slaveId, firmUpdteCntrlReg, programSlave);

            System.Threading.Thread.Sleep(100);
            ushort[] status = master.ReadHoldingRegisters(slaveId, slaveProgramStatusReg, 1);

            for (int i = 0; i < 600; i++)
            {
                if (0xC000 <= status[0])
                {
                    break;
                }

                System.Threading.Thread.Sleep(100);
                status = master.ReadHoldingRegisters(slaveId, slaveProgramStatusReg, 1);
            }

            if (0xC000 > status[0])
            {
                StringBuilder builder = new StringBuilder("Failed to erase DSP flash on slave SPU");
                builder.AppendFormat(". Status was 0x{0:X4}", status[0]);
                //erase failed
                throw new SPUUpdateException(builder.ToString());
            }

            currentStage = SPUFirmwareUpdateStage.ProgrammingSlaveSPU;

            progress = 0;

            ushort currBlock = (ushort)(status[0] & 0x3FFF);
            while (currBlock < (numBlocksUpdateData - 3))
            {
                System.Threading.Thread.Sleep(100);
                status = master.ReadHoldingRegisters(slaveId, slaveProgramStatusReg, 1);
                currBlock = (ushort)(status[0] & 0x3FFF);
                progress = (ushort)((currBlock * 100) / numBlocksUpdateData);
            }
            progress = 100;
        }

        private void CheckFinalVersions(IModbusSerialMaster master, SerialPort port)
        {
            System.Threading.Thread.Sleep(5 * 1000);

            bool failed = false;
            try
            {
                newSPUVersions = CheckCurrentVersions(master);
            }
            catch (TimeoutException)
            {
                failed = true;
            }

            if (failed)
            {
                foreach (int baud in knownBaudRates)
                {
                    port.Close();
                    port.BaudRate = baud;
                    port.Open();
                    try
                    {
                        newSPUVersions = CheckCurrentVersions(master);
                        failed = false;
                        break;
                    }
                    catch (TimeoutException)
                    {
                        failed = true;
                    }
                }
            }

            if (failed)
            {
                throw new SPUUpdateException("Failed to check versions after update");
            }
        }
        
        /// <summary>
        /// Check the current state of the update process
        /// </summary>
        /// <returns></returns>
        public SPUFirmwareUpdateState GetCurrentState()
        {
            return currentState;
        }

        /// <summary>
        /// Check the current stage of the update process
        /// </summary>
        /// <returns></returns>
        public SPUFirmwareUpdateStage GetCurrentStage()
        {
            return currentStage;
        }

        /// <summary>
        /// Check if a slave SPU is known to be present. This is only valid once the current
        /// versions have been checked. IE. currentStage > SPUFirmwareUpdateStage.CheckingCurrentVersions
        /// </summary>
        /// <returns></returns>
        public bool IsSlaveSPUPresent()
        {
            return slaveSPUPresent;
        }

        /// <summary>
        /// Returns a percentage value for current stage of the update if one is available
        /// </summary>
        /// <returns></returns>
        public ushort GetProgressPercentage()
        {
            return progress;
        }

        /// <summary>
        /// Returns the error message obtained on failure
        /// </summary>
        /// <returns></returns>
        public String GetErrorMessage()
        {
            return errorMessage;
        }

        /// <summary>
        /// Returns an object containing a snap shot of the update progress.
        /// </summary>
        /// <returns></returns>
        public SPUFirmwareUpdateProgress GetProgress()
        {
            ushort oldMasterVersion = 0;
            ushort newMasterVersion = 0;
            ushort oldSlaveVersion = 0;
            ushort newSlaveVersion = 0;

            if ((null != oldSPUVersions) && (2 == oldSPUVersions.Length))
            {
                oldMasterVersion = oldSPUVersions[masterVersionIndex];
                oldSlaveVersion = oldSPUVersions[slaveVersionIndex];
            }

            if ((null != newSPUVersions) && (2 == newSPUVersions.Length))
            {
                newMasterVersion = newSPUVersions[masterVersionIndex];
                newSlaveVersion = newSPUVersions[slaveVersionIndex];
            }

            return new SPUFirmwareUpdateProgress(slaveSPUPresent, 
                                                currentStage, 
                                                currentState, 
                                                progress, 
                                                errorMessage, 
                                                oldMasterVersion, 
                                                newMasterVersion, 
                                                oldSlaveVersion, 
                                                newSlaveVersion);
        }

        public String GetUpdateFileLocation()
        {
            return updateFileLocation;
        }
    }
}
