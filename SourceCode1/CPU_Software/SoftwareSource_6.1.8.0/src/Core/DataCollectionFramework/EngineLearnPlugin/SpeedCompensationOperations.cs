using System;
using System.IO;
using System.Globalization;
using DataCollectionSDK;
using System.Text;
using FaultErrorIndicators;
using Modbus;

namespace EngineLearnPlugin
{
    class SpeedCompensationOperations
    {
        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        /// <summary>
        /// Retrieves the speed compensation data from modbus. Writes it to either a specified file or a default path if filepath set to NULL.
        /// </summary>
        /// <param name="filepath">Path to save speed compensation files to. Pass in NULL to use default path</param>
        static public void WriteSpeedCompensation(string filepath, ModbusSDK connection)
        {
            int modbusRetryCount = 0;

            using (StreamWriter streamWriter = new StreamWriter(filepath))
            {
                int i = 0;

                while (i < 150)
                {
                    UInt16[] registers = null;
                    try
                    {
                        //Write (5 + i) to Modbus Holding Register 3063
                        connection.WriteSingleRegister(1, 3063, (ushort)(5 + i));

                        //Read 28 registers from 1064
                        registers = connection.ReadHoldingRegisters(1, 1064, 28);
                        modbusRetryCount = 0;
                    }
                    catch (Exception e)
                    {
                        if (e is IOException || e is Modbus.SlaveException)
                        {
                            logger.ErrorFormat("Failure during modbus read/write: {0} ", e.Message);
                            if (modbusRetryCount < 3)
                            {
                                modbusRetryCount++;
                                continue;
                            }
                            else
                            {
                                Faults.Instance.SignalFault(FaultCodes.ModbusReadFailure);
                                throw;
                            }
                        }
                        else
                        {
                            //Other exceptions must be handled by caller
                            throw;
                        }
                    }

                    //Build a string to append to file from Modbus data
                    StringBuilder stringBuilder = new StringBuilder();
                    foreach (UInt16 reg in registers)
                    {
                        stringBuilder.AppendFormat("{0},", reg);
                    }

                    //Remove last comma after writing values to StringBuilder then append to file
                    streamWriter.WriteLine(stringBuilder.Remove(stringBuilder.Length - 1, 1).ToString());
                    i++;
                }
            }

            modbusRetryCount = 0;

            do
            {
                try
                {
                    //Tell the SPU that the table has been fully read
                    connection.WriteSingleRegister(1, 3024, 0);
                    break;
                }
                catch (Exception e)
                {
                    if (e is IOException || e is Modbus.SlaveException)
                    {
                        logger.ErrorFormat("Failure during modbus read/write: {0} ", e.Message);
                        if (modbusRetryCount < 3)
                        {
                            modbusRetryCount++;
                            continue;
                        }
                        else
                        {
                            Faults.Instance.SignalFault(FaultCodes.ModbusReadFailure);
                            throw;
                        }
                    }
                    else
                    {
                        //Other exceptions must be handled by caller
                        throw;
                    }
                }
            } while (modbusRetryCount < 3);

        }

        /// <summary>
        /// Gets the name of the oldest file in a given directory. Filenames must follow "yymmddHHMMSS-speedcomp.csv"
        /// </summary>
        /// <param name="dirpath">Path to the directory to look in</param>
        /// <returns>The name of the oldest speedcomp csv file in dirpath</returns>
        public static String GetOldestFileName(String dirpath)
        {
            DateTime oldestFileDate = DateTime.UtcNow;
            string oldestFileName = String.Empty;
            foreach (string file in Directory.GetFiles(dirpath))
            {
                DateTime thisFileDate = DateTime.ParseExact("091113111111", "yyMMddHHmmss", CultureInfo.InvariantCulture);
                //If current file older than oldestFile
                if (thisFileDate.CompareTo(oldestFileDate) < 0)
                {
                    oldestFileDate = thisFileDate;
                    oldestFileName = file;
                }
            }

            return oldestFileName;
        }
    }
}
