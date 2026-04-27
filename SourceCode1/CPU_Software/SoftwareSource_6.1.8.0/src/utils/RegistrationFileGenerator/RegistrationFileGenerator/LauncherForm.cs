using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Diagnostics;
using System.Net.NetworkInformation;
using System.Management;
using System.IO;
using System.Security.Cryptography;
using ClassLibrary1;
using System.Runtime.InteropServices;
using System.Threading;


namespace RegistrationFileGenerator
{
    public partial class LauncherForm : Form
    {
        public LauncherForm()
        {
            InitializeComponent();
        }

        public LauncherForm(string warning)
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void buttonClose_Click(object sender, EventArgs e)
        {
            this.Close();
            Process myProcesses;
            // Returns array containing all instances of Notepad.
            myProcesses = Process.GetCurrentProcess();
            myProcesses.Kill();
        }        

        private void buttonOpenFolder_Click(object sender, EventArgs e)
        {
            /*
            Process[] p = Process.GetProcessesByName(
            Path.GetFileNameWithoutExtension("osk"));

            if (p.Length == 0)
            {
                // we must start osk from an MTA thread
                if (Thread.CurrentThread.GetApartmentState() == ApartmentState.STA)
                {
                    ThreadStart start = new ThreadStart(StartOSK);
                    Thread thread = new Thread(start);
                    thread.SetApartmentState(ApartmentState.MTA);
                    thread.Start();
                    thread.Join();
                }
                else
                {
                    StartOSK();
                }
            }
            else
            {
                // there might be a race condition if the process terminated 
                // meanwhile -> proper exception handling should be added
                //
               // SendMessage(p[0].MainWindowHandle,
                 //   WM_SYSCOMMAND, new IntPtr(SC_RESTORE), new IntPtr(0));
            }

            //ClKeyboard.new();
            //ClKeyboard.Show(); 
             * */
            
            if (folderBrowserDialog1.ShowDialog() == DialogResult.OK)
            {
                textBoxFolder.Text = folderBrowserDialog1.SelectedPath;
            }
            
        }

        private static void StartOSK()
        {
            string windir = Environment.GetEnvironmentVariable("WINDIR");
            string osk = null;

            if (osk == null)
            {
                osk = Path.Combine(Path.Combine(windir, "sysnative"), "osk.exe");
                if (!File.Exists(osk))
                {
                    osk = null;
                }
            }

            if (osk == null)
            {
                osk = Path.Combine(Path.Combine(windir, "system32"), "osk.exe");
                if (!File.Exists(osk))
                {
                    osk = null;
                }
            }

            if (osk == null)
            {
                osk = "osk.exe";
            }

            Process.Start(osk);
        }

        private void buttonRegist_Click(object sender, EventArgs e)
        {
            //Get CPU information of this computer
            string cpuID = string.Empty;
            string macAddr = string.Empty;
            string regInfo = string.Empty;

            string registFile = @"c:\RegInfo.txt";
            string passwordEncryptRegInfo = "AmotXtsw22015revion107EncryptRegInfo";
            string registFileEncrypt = "RegInfo.txt";
            string LocalRegistFileEncrypt = string.Empty;

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

            macAddr = GetMacAddress1();
            if (macAddr.Length > 1) macAddr = macAddr.Remove(0, 1);
            if (macAddr.Length > 1) macAddr = macAddr.Remove(macAddr.Length - 1, 1);

            regInfo = cpuID + "-" + macAddr;

            //Create register information file
            try
            {
                if (textBoxFolder.Text.Trim().Length == 0 || textBoxFolder.Text.Trim().Contains("C:\\") || textBoxFolder.Text.Trim().Contains("D:\\"))
                {
                    //MessageBox.Show("You did not select USB drive to save registration file,\nplease perform step 1 and 2 first!");
                    //return;
                }

                if (textBoxSerialN.Text.Trim().Length == 0)
                {
                    MessageBox.Show("Serial number cannot be empty,\nplease input it!");
                    return;
                }
                // Delete the file if it exists. 
                if (File.Exists(registFile))
                {
                    File.Delete(registFile);
                }
                
                {
                    // Create the file. 
                    using (FileStream fs = File.Create(registFile))
                    {
                        Byte[] info = new UTF8Encoding(true).GetBytes(regInfo);
                        // Add some information to the file.
                        fs.Write(info, 0, info.Length);
                        fs.Close();
                    }
                }
                //it's ok to generate in c: drive
                LocalRegistFileEncrypt = @"c:\" + textBoxSerialN.Text.Trim() + "-" + registFileEncrypt;
                Encrypt(registFile, LocalRegistFileEncrypt, passwordEncryptRegInfo);

                string copyDestination = textBoxFolder.Text + textBoxSerialN.Text.Trim() + "-" + registFileEncrypt;
                if(LocalRegistFileEncrypt != copyDestination) File.Copy(LocalRegistFileEncrypt, copyDestination);

                // Delete the file if it exists. 
                if (File.Exists(registFile))
                {
                    File.Delete(registFile);
                }

                MessageBox.Show("Registration file has been generated in your USB drive,\nplease send it to xtswsupport@amot.com");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
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

        // Encrypt a file into another file using a password 
        private static void Encrypt(string fileIn,
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

        private void LauncherForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            Process myProcesses;
            // Returns array containing all instances of Notepad.
            myProcesses = Process.GetCurrentProcess();
            myProcesses.Kill();
        }

        private string GetMacAddress1()
        {
            string macAddresses = string.Empty;

            foreach (NetworkInterface nic in NetworkInterface.GetAllNetworkInterfaces())
            {
                if (nic.OperationalStatus == OperationalStatus.Up)
                {
                    macAddresses += nic.GetPhysicalAddress().ToString();
                    break;
                }
            }

            return macAddresses;
        }
    }
}
