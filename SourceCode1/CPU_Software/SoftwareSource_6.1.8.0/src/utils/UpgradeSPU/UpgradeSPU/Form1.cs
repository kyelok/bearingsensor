using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.IO.Ports;
using SPUFirmwareUpdate;
using System.Threading;
using Microsoft.Win32;
using System.Globalization;

namespace UpgradeSPU
{
    public partial class Form1 : Form
    {

        SPUFirmwareUpdater spuUpdater;
        Thread updateThread;

        /// <summary>
        /// The strings to map each stage too
        /// </summary>
        string[] UpdateStage = new string[]
        {
            "",
            "Reading Update File",
            "Checking SPU Versions",
            "Erasing SPI Flash",
            "Writing SPI Flash",
            "Erasing Slave SPU",
            "Programming Slave SPU",
            "Erasing Master SPU",
            "Programming Master SPU",
            "Checking SPU Versions",
            ""
        };

        /// <summary>
        /// The strings to match each state too
        /// </summary>
        string[] UpdateState = new string[]
        {
              "",
              "In Progress",
              "Failed",
              "Completed"
        };

        public Form1()
        {
            InitializeComponent();

            string[] rates = 
            {
                "9600",
                "19200",
                "38400",
                "57600",
                "115200"
            };

            string[] ports = SerialPort.GetPortNames();
            //Get list of comports
            Array.Sort(ports);
            this.comports.Items.AddRange(ports);

            if (ports.Length > 0)
            {
                //Default to having the first port selected.
                this.comports.SelectedIndex = 0;
            }

            //Set baud rates
            this.baudrates.Items.AddRange(rates);
            this.baudrates.SelectedIndex = 2;
            this.upgrade.Enabled = false;
        }

        /// <summary>
        /// Called when the user clicks the upgrade button.
        /// Starts the SPU upgrade process
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void upgrade_Click(object sender, EventArgs e)
        {
            //User has started the upgrade
            this.upgrade.Enabled = false;
            this.openFile.Enabled = false;
            spuUpdater = new SPUFirmwareUpdater(this.comports.SelectedItem.ToString(), int.Parse(this.baudrates.SelectedItem.ToString()), this.filename.Text);

            updateThread = new Thread(new ThreadStart(spuUpdater.PerformUpdate));
            updateThread.Start();

            UpdateDelegate update = new UpdateDelegate(Update);
            update.BeginInvoke(this.spuUpdater, new AsyncCallback(UpdateFinished), update);

        }

        /// <summary>
        /// Delegate that is used to call SPUFirmwareUpdater Asynchronously
        /// </summary>
        /// <param name="updater"></param>
        delegate void UpdateDelegate(SPUFirmwareUpdater updater);
        
        /// <summary>
        /// Method that is called by the UpdateDelegate that actually performs the update.
        /// </summary>
        /// <param name="updater">The SPUFirmwareUpdater that will perform the update.</param>
        void Update(SPUFirmwareUpdater updater)
        {
            SPUFirmwareUpdateProgress progress;

            do
            {
                Thread.Sleep(500);
                progress = updater.GetProgress();
                ShowProgress(string.Format("{0}",UpdateStage[(int)progress.CurrentStage]), 100, progress.ProgressPercentage);

                if (progress.CurrentState == SPUFirmwareUpdateState.Failed)
                {
                    throw new ApplicationException(string.Format("Error: {0}", progress.ErrorMessage));
                }

            } while (progress.CurrentStage != SPUFirmwareUpdateStage.LastStage && progress.CurrentState != SPUFirmwareUpdateState.Completed);


            ShowProgress("Waiting for Modbus access", 100, 100);
            updateThread.Join(TimeSpan.FromSeconds(30));
            

            //Update has completed
            //Write the calibration time/date and verification time/date read from the registery to the SPU
            //Read EngineLearnCompleteTime from the registry
            string learnComplete = (string)Registry.GetValue(@"HKEY_LOCAL_MACHINE\SOFTWARE\XTS", "EngineLearnCompleteTime", string.Empty);
            string learnStatus = (string)Registry.GetValue(@"HKEY_LOCAL_MACHINE\SOFTWARE\XTS", "EngineLearnStatus", string.Empty);
            string verificationCode = (string)Registry.GetValue(@"HKEY_LOCAL_MACHINE\SOFTWARE\XTS", "VerificationCode", string.Empty);

            if (learnComplete != null && learnComplete != string.Empty)
            {
                ShowProgress(string.Format("Writing Engine Learn date '{0}' to SPU", learnComplete), 100, 100);

                DateTime learnCompleteDateTime = DateTime.ParseExact(learnComplete, "dd/MM/yy,HH:mm:ss", CultureInfo.InvariantCulture);
                //Send learnComplete to the SPU
                spuUpdater.WriteDateTime(3025, learnCompleteDateTime);
            }

            if (learnStatus != null && (learnStatus == "9" || learnStatus == "10"))
            {
                if (verificationCode != null && verificationCode != string.Empty)
                {
                    ShowProgress(string.Format("Writing Verification date '{0}' to SPU", verificationCode), 100, 100);

                    DateTime verificationDateTime = DateTime.ParseExact(verificationCode, "yyMMddHHmmss", CultureInfo.InvariantCulture);
                    //Send verification code to the SPU
                    spuUpdater.WriteDateTime(3038, verificationDateTime);
                }
            }
        }

        /// <summary>
        /// Function that is called when the update is finished.
        /// </summary>
        /// <param name="ar"></param>
        private void UpdateFinished(IAsyncResult ar)
        {
            UpdateDelegate update = (UpdateDelegate)ar.AsyncState;

            try
            {
                update.EndInvoke(ar);
                if (this.upgradeProgress.InvokeRequired == false)
                {
                    UpgradeComplete();
                }
                else
                {
                    UpgradeCompleteDelegate complete = new UpgradeCompleteDelegate(UpgradeComplete);
                    this.Invoke(complete);
                }
            }
            catch (Exception e)
            {
                ShowProgress("Error: " + e.Message, 0, 0);
                if (this.upgradeProgress.InvokeRequired == false)
                {
                    UpgradeFailed();
                }
                else
                {
                    UpgradeCompleteDelegate failed = new UpgradeCompleteDelegate(UpgradeFailed);
                    this.Invoke(failed);
                }
            }
        }

        delegate void UpgradeCompleteDelegate();

        /// <summary>
        /// Informs the user that the update succeed
        /// </summary>
        private void UpgradeComplete()
        {
            MessageBox.Show("SPU Upgrade Succeed", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
            this.updateStatus.Text = "Complete";
            this.openFile.Enabled = true;
            this.filename.Text = string.Empty;
        }

        /// <summary>
        /// Informs the user that the update failed
        /// </summary>
        private void UpgradeFailed()
        {
            MessageBox.Show("SPU Upgrade Failed", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            this.openFile.Enabled = true;
            this.filename.Text = string.Empty;
        }

        delegate void ShowProgressDelegate(string stage, int totalOperations, int operationsSoFar);

        /// <summary>
        /// Updates the progress on the UI.
        /// </summary>
        /// <param name="stage"></param>
        /// <param name="totalOperations"></param>
        /// <param name="operationsSoFar"></param>
        private void ShowProgress(string stage, int totalOperations, int operationsSoFar)
        {
            // Make sure we're on the right thread
            if (this.upgradeProgress.InvokeRequired == false)
            {
                this.updateStatus.Text = stage;
                this.upgradeProgress.Maximum = totalOperations;
                this.upgradeProgress.Value = operationsSoFar;
            }
            else
            {
                // Show progress asynchronously
                ShowProgressDelegate showProgress = new ShowProgressDelegate(ShowProgress);
                try
                {
                    this.Invoke(showProgress,
                      new object[] { stage, totalOperations, operationsSoFar});
                }
                catch (Exception)
                { }
            }
        }

        /// <summary>
        /// Called when the user clicks the Upgrade File button.
        /// Opens the file dialog.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void openFile_Click(object sender, EventArgs e)
        {
            if (this.upgradeFileDialog.ShowDialog() == DialogResult.OK)
            {
                //Get the file entered by the user
                this.filename.Text = this.upgradeFileDialog.FileName;
                this.upgrade.Enabled = true;
            }
        }       
    }
}
