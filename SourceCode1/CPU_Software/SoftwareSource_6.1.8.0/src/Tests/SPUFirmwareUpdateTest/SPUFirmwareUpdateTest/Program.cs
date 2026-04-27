using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading;
using SPUFirmwareUpdate;
using Modbus.Data;
using Modbus.Device;
using Modbus.Utility;

namespace SPUFirmwareUpdateTest
{
    class Program
    {
        //progress variables
        private SPUFirmwareUpdateProgress progress = null;

        private void MainProgram(String serial, int baud, String path)
        {
            //SPUFirmwareUpdater updater = new SPUFirmwareUpdater("COM22", 38400, @"C:\Projects\AMOT\pnaylor\firmware_files\xtsw_v5_01 firm (101111).fr2");
            SPUFirmwareUpdater updater = new SPUFirmwareUpdater(serial, baud, path);

            Thread updateThread = new Thread(new ThreadStart(updater.PerformUpdate));
            updateThread.Start();

            do
            {
                System.Threading.Thread.Sleep(500);
                progress = updater.GetProgress();
                DisplayProgress();
            } while (SPUFirmwareUpdateState.InProgress >= progress.CurrentState) ;

            progress = updater.GetProgress();
            DisplayProgress();

            Console.WriteLine("END of test application");
            Console.ReadLine();
        }

        static void Main(string[] args)
        {
            
            if (3 > args.Length)
            {
                Console.WriteLine("Insufficient number of parameters");
                Console.WriteLine("Required parameters: <COM##> <Baud> <File Path>");
                Console.ReadLine();
                return;
            }

            Program tester = new Program();
            
            String serial = args[0];
            int baud = Convert.ToInt32(args[1], 10);
            StringBuilder pathBuilder = new StringBuilder(args[2]);

            for (int i = 3; i < args.Length; i++)
            {
                pathBuilder.Append(args[i]);
            }

            tester.MainProgram(serial, baud, pathBuilder.ToString());
            //tester.MainProgram("COM23", 115200, @"C:\Projects\AMOT\other\spu_flashing\xtsw_v5_01 firm (101111).fr2");
            //tester.MainProgram("COM23", 115200, @"C:\Projects\AMOT\other\spu_flashing\bearingwear.fr2");
        }
        
        private void DisplayStage(SPUFirmwareUpdateStage stage, String description)
        {
            Console.Write(description);
            if (stage < progress.CurrentStage)
            {
                if (SPUFirmwareUpdateStage.CheckingCurrentVersions == stage)
                {
                    Console.Write("Master [");
                    Console.Write(GetVerionNumberAsString(progress.OldMasterVersion));
                    Console.Write("] ");
                    if (progress.SlaveSPUPresent)
                    {
                        Console.Write("Slave [");
                        Console.Write(GetVerionNumberAsString(progress.OldSlaveVersion));
                        Console.Write("] ");
                    }
                }
                else if (SPUFirmwareUpdateStage.CheckingNewVersions == stage)
                {
                    Console.Write("Master [");
                    Console.Write(GetVerionNumberAsString(progress.NewMasterVersion));
                    Console.Write("] ");
                    if (progress.SlaveSPUPresent)
                    {
                        Console.Write("Slave [");
                        Console.Write(GetVerionNumberAsString(progress.NewSlaveVersion));
                        Console.Write("] ");
                    }
                }

                Console.WriteLine("DONE");
            }
            else
            {
                if (stage == progress.CurrentStage)
                {
                    if (SPUFirmwareUpdateState.Failed == progress.CurrentState)
                    {
                        Console.Write("FAILED: ");
                        Console.WriteLine(progress.ErrorMessage);
                    }
                    else if (SPUFirmwareUpdateState.InProgress == progress.CurrentState)
                    {
                        Console.WriteLine("In Progress");
                    }
                }
                else
                {
                    Console.WriteLine("");
                }
            }
        }

        private void DisplayStageProgress(SPUFirmwareUpdateStage stage, String description)
        {
            Console.Write(description);
            if (stage < progress.CurrentStage)
            {
                Console.WriteLine("DONE");
            }
            else
            {
                if (stage == progress.CurrentStage)
                {
                    if (SPUFirmwareUpdateState.Failed == progress.CurrentState)
                    {
                        Console.Write("FAILED: ");
                        Console.WriteLine(progress.ErrorMessage);
                    }
                    else if (SPUFirmwareUpdateState.InProgress == progress.CurrentState)
                    {
                        Console.WriteLine("{0}%", progress.ProgressPercentage);
                    }
                }
                else
                {
                    Console.WriteLine("");
                }
            }
        }

        private void DisplayProgress()
        {
            Console.Clear();

            DisplayStage(SPUFirmwareUpdateStage.ReadingUpdateFile, "Reading File: ");
            DisplayStage(SPUFirmwareUpdateStage.CheckingCurrentVersions, "Checking Current Versions: ");
            DisplayStage(SPUFirmwareUpdateStage.ErasingSPIFlash, "Erasing SPI Flash: ");
            DisplayStageProgress(SPUFirmwareUpdateStage.WritingSPIFlash, "Writing SPI Flash: ");
            if (progress.SlaveSPUPresent)
            {
                DisplayStage(SPUFirmwareUpdateStage.ErasingSlaveSPU, "Erasing DSP Flash on SLAVE: ");
                DisplayStageProgress(SPUFirmwareUpdateStage.ProgrammingSlaveSPU, "Writing DSP Flash on SLAVE: ");
            }
            DisplayStage(SPUFirmwareUpdateStage.ErasingMasterSPU, "Erasing DSP Flash on MASTER: ");
            DisplayStageProgress(SPUFirmwareUpdateStage.ProgrammingMasterSPU, "Writing DSP Flash on MASTER: ");
            DisplayStage(SPUFirmwareUpdateStage.CheckingNewVersions, "Checking Updated Versions: ");
        }

        /// <summary>
        /// Utility function to format ushort version numbers
        /// </summary>
        /// <param name="builder"></param>
        /// <param name="version"></param>
        private String GetVerionNumberAsString(ushort version)
        {
            StringBuilder builder = new StringBuilder();
            UInt16 major = 0;
            UInt16 minor = 0;

            //First byte is minor
            //Second byte is major

            byte[] bytes = BitConverter.GetBytes(version);

            if ((bytes != null) && (bytes.Length == 2))
            {
                minor = bytes[0];
                major = bytes[1];

                builder.AppendFormat("V {0:X2}.{1:X2}", major, minor);
            }
            else
            {
                builder.Append("UNKNOWN");
            }

            return builder.ToString();
        }
    }
}
