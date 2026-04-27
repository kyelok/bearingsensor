using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.IO;
using log4net;

namespace ConvertDatabase
{
    public partial class Form1 : Form
    {
        SQLExpressDatabase oldDatabase;
        SQLiteDatabase newDatabase;

        private bool running = false;
        private bool dbOK = false;

        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public Form1()
        {
            InitializeComponent();

            System.Reflection.Assembly assembly = System.Reflection.Assembly.GetExecutingAssembly();
            System.Diagnostics.FileVersionInfo fvi = System.Diagnostics.FileVersionInfo.GetVersionInfo(assembly.Location);
            this.labelVersion.Text = fvi.ProductVersion;

            this.currentDatabase.Text = "";
            this.currentStage.Text = "";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            FolderBrowserDialog fbd = new FolderBrowserDialog();
            fbd.ShowNewFolderButton = true;
            if (fbd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                if (Directory.Exists(fbd.SelectedPath))
                {
                    this.newdatabaseFolder.Text = fbd.SelectedPath;
                    try
                    {
                        this.newDatabase = new SQLiteDatabase(this.newdatabaseFolder.Text);
                        this.dbOK = true;
                    }
                    catch (DllNotFoundException ex)
                    {
                        MessageBox.Show("Could not initialise SQLite database - missing library?\r\n\r\n" + ex.Message);
                    }
                }
                else
                {
                    MessageBox.Show(string.Format("Error: Folder \"{0}\" not found.", fbd.SelectedPath));
                }
            }
            UpdateUI();
        }

        delegate void UpdateUIDelegate();

        void UpdateUI()
        {
            if (this.currentStage.InvokeRequired == false)
            {
                this.newdatabaseButton.Enabled = !this.running;
                this.convertButton.Enabled = (!this.running && this.dbOK);
            }
            else
            {
                try
                {
                    UpdateUIDelegate updateUI = new UpdateUIDelegate(UpdateUI);
                    this.Invoke(updateUI);
                }
                catch (Exception)
                { }
            }
        }

        void Convert(SQLExpressDatabase oldDatabase, SQLiteDatabase newDatabase)
        {
            this.running = true;
            UpdateUI();
            try
            {
                int pageSize = 1000;

                // Show progress
                ShowProgress("Starting", 0, 0, "");
                log.InfoFormat("Starting conversion of SQLExpress to SQLite database '{0}'", newDatabase.DatabaseName);
                log.InfoFormat("There are {0} databases in the SQLExpress database", oldDatabase.NumberOfDatabases);

                DriveInfo driveInfo = new DriveInfo(Path.GetPathRoot(newDatabase.DatabaseName));

                log.InfoFormat("There is {0} MB of freespace on the target drive.", (driveInfo.AvailableFreeSpace / 1048576));


                for (int j = 0; j < oldDatabase.NumberOfDatabases; j++)
                {
                    for (int i = 0; i < oldDatabase.NumberOfTables; i++)
                    {
                        Int64 numberOfRecords = 0;
                        Int64 totalNumberOfRecords = oldDatabase.NumberOfRows(i, j);
                        int pageToExtract = 1;
                        while (numberOfRecords < totalNumberOfRecords)
                        {
                            log.InfoFormat("Extracting a maximum of {2} records from the total of {1} Records in Table \"{0}\"", oldDatabase.TableName(i), totalNumberOfRecords, pageSize);
                            ShowProgress(string.Format("Extracted {2}/{1} Records from Table \"{0}\"", oldDatabase.TableName(i), totalNumberOfRecords, numberOfRecords), totalNumberOfRecords, numberOfRecords, oldDatabase.DatabaseName(j));

                            try
                            {
                                DataTable dt = oldDatabase.Extract(i, j, pageSize, pageToExtract++);
                                numberOfRecords += dt.Rows.Count;
                                
                                log.InfoFormat("Inserting {0} Records into SQLite database", dt.Rows.Count);
                                //Write records to new database
                                newDatabase.Insert(oldDatabase.TableName(i), dt);                                
                            }
                            catch (Exception e)
                            {
                                log.ErrorFormat("Caught exception {0} converting database {0}",e);
                                var result = MessageBox.Show(string.Format("Error Processing Records {0} - {1}.  Exception {2}.\nContinue?", (pageToExtract * pageSize), (pageToExtract * pageSize) + pageSize, e.ToString()), "Error", MessageBoxButtons.YesNo);

                                if (result == DialogResult.No)
                                {
                                    Application.Exit();
                                }

                                numberOfRecords += pageSize;
                            }
                        }
                        ShowProgress(string.Format("Extracted {2}/{1} Records from Table \"{0}\"", oldDatabase.TableName(i), totalNumberOfRecords, numberOfRecords), totalNumberOfRecords, numberOfRecords, oldDatabase.DatabaseName(j));
                    }
                }
            }
            catch (Exception e)
            {
                MessageBox.Show(string.Format("Exception {0} was raised during the conversion of the database.",e));
                log.ErrorFormat("Caught exception {0} converting database {0}", e);
            }
            this.running = false;
            UpdateUI();
        }

        delegate void ConvertDelegate(SQLExpressDatabase oldDatabase, SQLiteDatabase newDatabase);

        private void convertButton_Click(object sender, EventArgs e)
        {
            //Starts the conversion process
            this.newdatabaseButton.Enabled = false;
            this.convertButton.Enabled = false;

            //Convert database
            bool ok = false;
            try
            {
                this.oldDatabase = new SQLExpressDatabase();
                ok = true;
            }
            catch (Exception ex)
            {
                MessageBox.Show(string.Format("Exception {0} was raised while opening SQLExpress database.", ex));
            }

            if (ok)
            {
                ConvertDelegate convert = new ConvertDelegate(Convert);
                convert.BeginInvoke(this.oldDatabase, this.newDatabase, new AsyncCallback(ConvertCompleted), convert);
            }
        }

        private void ConvertCompleted(IAsyncResult ar)
        {
            ConvertDelegate convert = (ConvertDelegate)ar.AsyncState;
            convert.EndInvoke(ar);

            if (this.currentStage.InvokeRequired == false)
            {
                this.currentStage.Text = "Complete";
                this.newdatabaseButton.Enabled = true;
                this.convertButton.Enabled = true;
            }
            else
            {
                ConvertCompleteDelegate complete = new ConvertCompleteDelegate(ConvertComplete);
                this.Invoke(complete);
            }
        }

        delegate void ConvertCompleteDelegate();

        void ConvertComplete()
        {
            this.currentStage.Text = "Complete";
            this.newdatabaseButton.Enabled = true;
            this.convertButton.Enabled = true;
        }

        delegate void ShowProgressDelegate(string stage, Int64 totalOperations, Int64 operationsSoFar, string database);

        void ShowProgress(string stage, Int64 totalOperations, Int64 operationsSoFar, string database)
        {
            // Make sure we're on the right thread
            if (this.currentStage.InvokeRequired == false)
            {
                this.currentStage.Text = stage;
                this.progressBar.Maximum = (int)totalOperations;
                this.progressBar.Value = (int)operationsSoFar;
                this.currentDatabase.Text = database;
                
            }
            else
            {
                // Show progress asynchronously
                ShowProgressDelegate showProgress = new ShowProgressDelegate(ShowProgress);
                try
                {
                    this.Invoke(showProgress,
                      new object[] { stage, totalOperations, operationsSoFar, database });
                }
                catch (Exception)
                { }
            }
        }
    }
}
