using System;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Integration;
using System.Reflection;
using System.IO;
using System.Management;
using System.Security.Cryptography;
using LauncherWarning;
using System.Threading;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Diagnostics;
using System.Net.NetworkInformation;

/*
 * ==============================================================
 * @ID       $Id: MainForm.cs 971 2010-09-30 16:09:30Z ww $
 * @created  2008-07-31
 * ==============================================================
 *
 * The official license for this file is shown next.
 * Unofficially, consider this e-postcardware as well:
 * if you find this module useful, let us know via e-mail, along with
 * where in the world you are and (if applicable) your website address.
 */

/* ***** BEGIN LICENSE BLOCK *****
 * Version: MIT License
 *
 * Copyright (c) 2010 Michael Sorens http://www.simple-talk.com/author/michael-sorens/
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 * ***** END LICENSE BLOCK *****
 */

namespace Launcher
{

    /// <summary>
    /// Framework for running application as a tray app.
    /// </summary>
    /// <remarks>
    /// Tray app code adapted from "Creating Applications with NotifyIcon in Windows Forms", Jessica Fosler,
    /// http://windowsclient.net/articles/notifyiconapplications.aspx
    /// </remarks>
    public class CustomApplicationContext : ApplicationContext
    {
        // Icon graphic from http://prothemedesign.com/circular-icons/
        private static readonly string IconFileName = "route.ico";
        private static readonly string DefaultTooltip = "AMOT XTS-W+ GEN II";
        private readonly Launch launch;

        bool menuCreated = false;

        /// <summary>
		/// This class should be created and passed into Application.Run( ... )
		/// </summary>
		public CustomApplicationContext() 
		{
			InitializeContext();
            launch = new Launch(notifyIcon);

            string keyFile = @"c:\AMOT\Key.txt";
            //string versionFile = @"d:\versionnumbers.txt";
            //string registFile = @"d:\RegInfo.txt";
            string tempFile = @"c:\match.txt";
            string password = "AmotXtsw22015revion107EncryptKey";
            uint registStatus = 100;

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

            string drive = "C";
            ManagementObject dsk = new ManagementObject(
                @"win32_logicaldisk.deviceid=""" + drive + @":""");
            dsk.Get();
            string volumeSerial = dsk["VolumeSerialNumber"].ToString();

            string macAddr = GetMacAddress1();
            //if (macAddr.Length > 1) macAddr = macAddr.Remove(0, 1);
            //if (macAddr.Length > 1) macAddr = macAddr.Remove(macAddr.Length - 1, 1);

            cpuID = cpuID + "-" + macAddr;

            /*
             * WE DON'T NEED CREATE REGISTER FILE HERE
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
            */

            /*
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

                //LauncherForm FormLauncher = new LauncherForm(encryptedString);
                //FormLauncher.Show();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            */

            try
            {
                //If key file is generated
                if (File.Exists(keyFile))
                {
                    
                    string decryptedKey = string.Empty;
                    try
                    {
                        
                        //Read the content
                        string tempString = string.Empty;
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
                        
                        String sFinal = tempString;
                        String sCpuID = cpuID;

                        //LauncherForm FormLauncher1 = new LauncherForm(tempString);
                        //FormLauncher1.Show();
                        //compare the decrypted key with CPU
                        if (sFinal.Trim().Equals(sCpuID.Trim()))
                        {
                            //Good to launch all servers
                            registStatus = 1;    
                        }
                        else
                        {
                            //Wrong key
                            registStatus = 2;
                        }
                    }
                    catch (Exception e)
                    {
                        Console.WriteLine(e.Message);
                        registStatus = 2;
                    }
                }
                else
                {
                    registStatus = 3;
                    /*
                    try
                    {
                        //If version number file is generated
                        if (File.Exists(versionFile))
                        {
                            registStatus = 3;
                        }
                        else
                        {
                            registStatus = 4;
                        }
                    }
                    catch (Exception e)
                    {
                        registStatus = 4;
                        Console.WriteLine(e.Message);
                    }
                     * */
                }

            }
            catch (Exception ex)
            {
                registStatus = 3;
                Console.WriteLine(ex.ToString());
            }

            //remove the file, it is used for internal verification
            if (File.Exists(tempFile))
            {
                //File.Delete(tempFile);
            }

            
            if (registStatus == 1)
            {
                //LauncherForm FormLauncher = new LauncherForm("Good to go!");
                //FormLauncher.Show();
                launch.Execute();
            }
            else if (registStatus == 2)
            {
                LauncherForm FormLauncher = new LauncherForm("Wrong key to launch the software!");
                FormLauncher.Show();
            }            
            else
            {
                LauncherForm FormLauncher = new LauncherForm("You need a key to launch the software!");
                FormLauncher.Show();
            }            
		}

        private void ContextMenuStrip_Opening(object sender, System.ComponentModel.CancelEventArgs e)
        {
            e.Cancel = false;
            //hostManager.BuildContextMenu(notifyIcon.ContextMenuStrip);
            if (!this.menuCreated)
            {
                notifyIcon.ContextMenuStrip.Items.Add(new ToolStripSeparator());
                notifyIcon.ContextMenuStrip.Items.Add(launch.ToolStripMenuItemWithHandler("&Exit", exitItem_Click));
                this.menuCreated = true;
            }
        }

        # region the child forms

        // From http://stackoverflow.com/questions/2208690/invoke-notifyicons-context-menu
        private void notifyIcon_MouseUp(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                MethodInfo mi = typeof(NotifyIcon).GetMethod("ShowContextMenu", BindingFlags.Instance | BindingFlags.NonPublic);
                mi.Invoke(notifyIcon, null);
            }
        }

        # endregion the child forms

        # region generic code framework

        private System.ComponentModel.IContainer components;	// a list of components to dispose when the context is disposed
        private NotifyIcon notifyIcon;				            // the icon that sits in the system tray

        private void InitializeContext()
        {
            components = new System.ComponentModel.Container();
            notifyIcon = new NotifyIcon(components)
                             {
                                 ContextMenuStrip = new ContextMenuStrip(),
                                 Icon = new Icon(IconFileName),
                                 Text = DefaultTooltip,
                                 Visible = true
                             };
            notifyIcon.ContextMenuStrip.Opening += ContextMenuStrip_Opening;
            notifyIcon.MouseUp += notifyIcon_MouseUp;
        }

        /// <summary>
		/// When the application context is disposed, dispose things like the notify icon.
		/// </summary>
		/// <param name="disposing"></param>
		protected override void Dispose( bool disposing )
		{
			if( disposing && components != null) { components.Dispose(); }
		}

		/// <summary>
		/// When the exit menu item is clicked, make a call to terminate the ApplicationContext.
		/// </summary>
		/// <param name="sender"></param>
		/// <param name="e"></param>
        private void exitItem_Click(object sender, EventArgs e) 
		{
			ExitThread();
		}

        /// <summary>
        /// If we are presently showing a form, clean it up.
        /// </summary>
        protected override void ExitThreadCore()
        {
            notifyIcon.Visible = false; // should remove lingering tray icon
            base.ExitThreadCore();
        }

        # endregion generic code framework        

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
            //fsOut.Close();
            cs.Close();
            fsIn.Close();
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
            //fsOut.Close();
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
