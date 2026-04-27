/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.ServiceModel.Web;
using DataCollectionSDK;
using System.Management;
using System.Text;
using System.Security.Cryptography;
//using DataCollectionSDK;
using HelperClasses;
using System.IO;
using System.Data.Common;
using FaultErrorIndicators;
using System.Threading;
using System.Diagnostics;
using System.Net.NetworkInformation;

namespace ReportsPlugin
{
    public class ReportsPlugin : IExtInterface 
    {
        private DatabaseSDK database_config;

        /// <summary>
        /// RunSchedule schedule for webservice
        /// </summary>
        public int RunSchedule
        {
            get { return 0; }
        }

        /// <summary>
        /// LogSchedule schedule for webservice
        /// </summary>
        public int LogSchedule
        {
            get { return 0; }
        }

        /// <summary>
        /// Flag indicating that this is a realtime task
        /// </summary>
        public bool Realtime
        {
            get
            {
                return false;
            }
        }

        /// <summary>
        /// Stop any internal services
        /// </summary>
        public void Stop()
        {
            reportsPluginServiceHost.Close();
        }

        /// <summary>
        /// Internal sync object to lock access to this plugin on.
        /// </summary>
        private object syncRoot = new object();

        /// <summary>
        /// Gets the sync object to lock access to this plugin on.
        /// </summary>
        public object SyncRoot
        {
            get { return syncRoot; }
        }

        /// <summary>
        /// Instance of the report plugin
        /// </summary>
        private ReportsPluginService reportsPluginServiceInstance;

        /// <summary>
        /// The reports plugin service host
        /// </summary>
        private WebServiceHost reportsPluginServiceHost;

        private void InitialiseDb()
        {
            StringBuilder sqlStatement = new StringBuilder();

            sqlStatement.Append("CREATE TABLE IF NOT EXISTS xtsSerialNumber (");
            sqlStatement.Append("    SerialNumber text");     // SerialNumber
            sqlStatement.Append(");");

            database_config.ExecuteSQLStatements(new String[] { sqlStatement.ToString() }, FaultErrorIndicators.FaultCodes.EventLogWriteFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseFailure, FaultErrorIndicators.FaultCodes.EventLogDatabaseMissedLog);
        }


        /// <summary>
        /// Called to initialise the object for use.
        /// </summary>
        public void Init()
        {
            ModuleConfiguration moduleConfig = ModuleConfiguration.GetApplicationConfiguration();
            DataCollectionConfigurationSection dataCollectionConfig = moduleConfig.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;
            
            if (dataCollectionConfig == null)
                dataCollectionConfig = new DataCollectionConfigurationSection();            

            database_config = new DatabaseSDK(
                dataCollectionConfig.Database.ConfigurationDb,
                dataCollectionConfig.Database.DbRetryCount,
                dataCollectionConfig.Database.DbRetryDuration,
                0);

            InitialiseDb();

            reportsPluginServiceInstance = new ReportsPluginService();

            reportsPluginServiceHost = new WebServiceHost(reportsPluginServiceInstance);
            reportsPluginServiceHost.Open();
            
            string keyFile = @"c:\AMOT\Key.txt";            
            //string registFile = @"d:\RegInfo.txt";
            string password = "AmotXtsw22015revion107EncryptKey";
            //string ImoFile = @"d:\Imo.txt";
            string tempFile = @"c:\match1.txt";
            //string tempFile1 = @"d:\match1.txt";
            string[] releasedXtsw2 = new string[3] {"Matt", "9461052", "Robert"};
            
            string ImoNo = string.Empty;
            //Read ImoNo from database
            using (DbDataReader reader = database_config.Select(database_config.GetDbConnection(), "* FROM shipinfo;"))
            {
                if (reader.Read())
                {
                    try
                    {
                        ImoNo = (string)reader.GetString(reader.GetOrdinal("ImoNo"));
                    }
                    catch (Exception e)
                    {
                        Console.WriteLine("Caught exception {0}", e.Message);
                    }
                }
            }            

            string decryptedKey = string.Empty;
            string tempString = string.Empty;
            /*
            try
            {                
                if (File.Exists(ImoFile))
                {                    
                    if (File.Exists(tempFile))
                    {
                        File.Delete(tempFile);
                    }

                    Decrypt(ImoFile, tempFile, password);

                    using (StreamReader sr = File.OpenText(tempFile))
                    {
                        tempString = sr.ReadToEnd();
                    }
                    
                    if (File.Exists(tempFile))
                    {
                        File.Delete(tempFile);
                    }
                }                

                String sFinal = tempString;
                String sImoNo = ImoNo;
                
                //compare the new IMO with previous IMO, if different change the key file
                if (!sFinal.Trim().Equals(sImoNo.Trim()))                
                {
                    //Write different key                    
                    Encrypt(ImoFile, keyFile, password);
                }                
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            */
           // Console.WriteLine(tempString);
            //Get CPU information of this computer
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

            /*
            if (!File.Exists(keyFile))
            {                
                //Create register information file
                try
                {

                    // Delete the file if it exists. 
                    if (File.Exists(registFile))
                    {
                    }
                    else
                    {
                        // Create the file. 
                        using (FileStream fs = File.Create(registFile))
                        {
                            Byte[] info = new UTF8Encoding(true).GetBytes(cpuID);
                            // Add some information to the file.
                            fs.Write(info, 0, info.Length);
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.ToString());
                }

                bool imoHasfound = false;

                if (ImoNo.Equals(string.Empty)) ImoNo = "Void";

                //if ImoNo matches any one from the known list, create file to save the IMO
                foreach (string imo in releasedXtsw2)
                {
                    if (ImoNo.Equals(imo))
                    {
                        //encrypt the registration information file into a password file
                        string encryptedString = string.Empty;
                        try
                        {
                            Encrypt(registFile, keyFile, password);

                            //Read the content
                            using (StreamReader sr = File.OpenText(keyFile))
                            {
                                encryptedString = sr.ReadToEnd();
                            }
                            Console.WriteLine("Create Key file!!");
                        }
                        catch (Exception e)
                        {
                            Console.WriteLine(e.Message);
                        }
                        Console.WriteLine(ImoNo);

                        //encrypt the IMO and save into a file, this will be decrypted at next reboot and compared the new IMO in case user changed it
                        try
                        {

                            // Delete the file if it exists. 
                            if (File.Exists(tempFile1))
                            {
                            }
                            else
                            {
                                // Create the file. 
                                using (FileStream fs = File.Create(tempFile1))
                                {
                                    Byte[] info = new UTF8Encoding(true).GetBytes(ImoNo);
                                    // Add some information to the file.
                                    fs.Write(info, 0, info.Length);
                                }
                            }
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine(ex.ToString());
                        }

                        // Delete the file if it exists. 
                        if (File.Exists(ImoFile))
                        {
                            File.Delete(ImoFile);
                        }

                        //Create imo file
                        try
                        {
                            Encrypt(tempFile1, ImoFile, password);
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine(ex.ToString());
                        }                       

                        imoHasfound = true;
                        break;
                    }
                }

                if (imoHasfound == false)
                {
                    //Create imo file
                    try
                    {
                        Encrypt(tempFile1, keyFile, password);
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.ToString());
                    }

                    // Delete temperate file. 
                    if (File.Exists(tempFile1))
                    {
                        File.Delete(tempFile1);
                    }
                }

                
                Thread.Sleep(5000);
                RebootHelpers.Restart();
            }
            */
            decryptedKey = string.Empty;
            tempString = string.Empty;
            try
            {
                if (File.Exists(keyFile))
                {
                    if (File.Exists(tempFile))
                    {
                        File.Delete(tempFile);
                    }

                    Decrypt(keyFile, tempFile, password);

                    using (StreamReader sr = File.OpenText(tempFile))
                    {
                        tempString = sr.ReadToEnd();
                        sr.Close();
                    }

                    if (File.Exists(tempFile))
                    {
                        File.Delete(tempFile);
                    }
                }
                else
                {
                    FaultErrorIndicators.Faults.Instance.SignalFault(FaultCodes.IMOModifiedError);
                }

                String sFinal = tempString;
                String scpuID = cpuID;

                //compare the new CPUID with decrypted, if different send error code to RIA
                if (!sFinal.Trim().Equals(scpuID.Trim()))
                {
                    FaultErrorIndicators.Faults.Instance.SignalFault(FaultCodes.IMOModifiedError);
                }
            }            
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                FaultErrorIndicators.Faults.Instance.SignalFault(FaultCodes.IMOModifiedError);
            }            
        }
        

        /// <summary>
        /// Called when the RunSchedule milliseconds have elapsed.
        /// The method that implements this interface should
        /// perform all the data collection work.
        /// </summary>
        public void Run()
        {
        }

        //check whether folder is empty
        public bool DirectoryIsEmpty(string path)
        {
            int fileCount = Directory.GetFiles(path).Length;
            if (fileCount > 0)
            {
                return false;
            }

            string[] dirs = Directory.GetDirectories(path);
            foreach (string dir in dirs)
            {
                if (!DirectoryIsEmpty(dir))
                {
                    return false;
                }
            }

            return true;
        }        

        /// <summary>
        /// Called when the LogSchedule milliseconds have elapsed.
        /// The method that implements this interface should perform
        /// all the data logging work.
        /// </summary>
        /// <param name="logTime">The time to stamp this log entry with.</param>
        public void Log(DateTime logTime)
        {
        }

        // Encrypt a file into another file using a password 
        public static void Encrypt(string fileIn,
                    string fileOut, string Password)
        {

            // First we are going to open the file streams 
            FileStream fsIn = new FileStream(fileIn,
                FileMode.Open, FileAccess.Read);
            FileStream fsOut = new FileStream(fileOut,
                FileMode.OpenOrCreate, FileAccess.Write);

            // Then we are going to derive a Key and an IV from the
            // Password and create an algorithm 
            PasswordDeriveBytes pdb = new PasswordDeriveBytes(Password,
                new byte[] {0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 
                0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76});

            Rijndael alg = Rijndael.Create();
            alg.Key = pdb.GetBytes(32);
            alg.IV = pdb.GetBytes(16);

            // Now create a crypto stream through which we are going
            // to be pumping data. 
            // Our fileOut is going to be receiving the encrypted bytes. 
            CryptoStream cs = new CryptoStream(fsOut,
                alg.CreateEncryptor(), CryptoStreamMode.Write);

            // Now will will initialize a buffer and will be processing
            // the input file in chunks. 
            // This is done to avoid reading the whole file (which can
            // be huge) into memory. 
            int bufferLen = 4096;
            byte[] buffer = new byte[bufferLen];
            int bytesRead;

            do
            {
                // read a chunk of data from the input file 
                bytesRead = fsIn.Read(buffer, 0, bufferLen);

                // encrypt it 
                cs.Write(buffer, 0, bytesRead);
            } while (bytesRead != 0);

            // close everything 

            // this will also close the unrelying fsOut stream
            cs.Close();
            fsIn.Close();
        }

        // Encrypt a byte array into a byte array using a key and an IV 
        public static byte[] Encrypt(byte[] clearData, byte[] Key, byte[] IV)
        {
            // Create a MemoryStream to accept the encrypted bytes 
            MemoryStream ms = new MemoryStream();

            // Create a symmetric algorithm. 
            // We are going to use Rijndael because it is strong and
            // available on all platforms. 
            // You can use other algorithms, to do so substitute the
            // next line with something like 
            //      TripleDES alg = TripleDES.Create(); 
            Rijndael alg = Rijndael.Create();

            // Now set the key and the IV. 
            // We need the IV (Initialization Vector) because
            // the algorithm is operating in its default 
            // mode called CBC (Cipher Block Chaining).
            // The IV is XORed with the first block (8 byte) 
            // of the data before it is encrypted, and then each
            // encrypted block is XORed with the 
            // following block of plaintext.
            // This is done to make encryption more secure. 

            // There is also a mode called ECB which does not need an IV,
            // but it is much less secure. 
            alg.Key = Key;
            alg.IV = IV;

            // Create a CryptoStream through which we are going to be
            // pumping our data. 
            // CryptoStreamMode.Write means that we are going to be
            // writing data to the stream and the output will be written
            // in the MemoryStream we have provided. 
            CryptoStream cs = new CryptoStream(ms,
               alg.CreateEncryptor(), CryptoStreamMode.Write);

            // Write the data and make it do the encryption 
            cs.Write(clearData, 0, clearData.Length);

            // Close the crypto stream (or do FlushFinalBlock). 
            // This will tell it that we have done our encryption and
            // there is no more data coming in, 
            // and it is now a good time to apply the padding and
            // finalize the encryption process. 
            cs.Close();

            // Now get the encrypted data from the MemoryStream.
            // Some people make a mistake of using GetBuffer() here,
            // which is not the right way. 
            byte[] encryptedData = ms.ToArray();

            return encryptedData;
        }

        // Encrypt a string into a string using a password 
        //    Uses Encrypt(byte[], byte[], byte[]) 

        public static string Encrypt(string clearText, string Password)
        {
            // First we need to turn the input string into a byte array. 
            byte[] clearBytes =
              System.Text.Encoding.Unicode.GetBytes(clearText);

            // Then, we need to turn the password into Key and IV 
            // We are using salt to make it harder to guess our key
            // using a dictionary attack - 
            // trying to guess a password by enumerating all possible words. 
            PasswordDeriveBytes pdb = new PasswordDeriveBytes(Password,
                new byte[] {0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 
            0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76});

            // Now get the key/IV and do the encryption using the
            // function that accepts byte arrays. 
            // Using PasswordDeriveBytes object we are first getting
            // 32 bytes for the Key 
            // (the default Rijndael key length is 256bit = 32bytes)
            // and then 16 bytes for the IV. 
            // IV should always be the block size, which is by default
            // 16 bytes (128 bit) for Rijndael. 
            // If you are using DES/TripleDES/RC2 the block size is
            // 8 bytes and so should be the IV size. 
            // You can also read KeySize/BlockSize properties off
            // the algorithm to find out the sizes. 
            byte[] encryptedData = Encrypt(clearBytes,
                     pdb.GetBytes(32), pdb.GetBytes(16));

            // Now we need to turn the resulting byte array into a string. 
            // A common mistake would be to use an Encoding class for that.
            //It does not work because not all byte values can be
            // represented by characters. 
            // We are going to be using Base64 encoding that is designed
            //exactly for what we are trying to do. 
            return Convert.ToBase64String(encryptedData);

        }

        // Encrypt bytes into bytes using a password 
        //    Uses Encrypt(byte[], byte[], byte[]) 

        public static byte[] Encrypt(byte[] clearData, string Password)
        {
            // We need to turn the password into Key and IV. 
            // We are using salt to make it harder to guess our key
            // using a dictionary attack - 
            // trying to guess a password by enumerating all possible words. 
            PasswordDeriveBytes pdb = new PasswordDeriveBytes(Password,
                new byte[] {0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 
            0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76});

            // Now get the key/IV and do the encryption using the function
            // that accepts byte arrays. 
            // Using PasswordDeriveBytes object we are first getting
            // 32 bytes for the Key 
            // (the default Rijndael key length is 256bit = 32bytes)
            // and then 16 bytes for the IV. 
            // IV should always be the block size, which is by default
            // 16 bytes (128 bit) for Rijndael. 
            // If you are using DES/TripleDES/RC2 the block size is 8
            // bytes and so should be the IV size. 
            // You can also read KeySize/BlockSize properties off the
            // algorithm to find out the sizes. 
            return Encrypt(clearData, pdb.GetBytes(32), pdb.GetBytes(16));

        }

        // Decrypt a file into another file using a password 
        public static void Decrypt(string fileIn,
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

        private static string GetMacAddress()
        {
            foreach (NetworkInterface nic in NetworkInterface.GetAllNetworkInterfaces())
            {
                if (nic.NetworkInterfaceType == NetworkInterfaceType.Ethernet &&
                    nic.OperationalStatus == OperationalStatus.Up)
                {
                    return nic.Id;
                }
            }
            return null;
        }

        private string GetMacAddress1()
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
