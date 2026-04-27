using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Ionic.Zip;
using System.IO;
using FBWF;
using log4net;
using System.Diagnostics;

namespace UpdateWebsite
{
    /// <summary>
    /// This class performs actual updates of packages and commits the modified files to
    /// the disk.
    /// </summary>
    public class Updater
    {
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        List<string> filesInstalled = new List<string>();
        Dictionary<string, string> packagesToInstall = new Dictionary<string, string>();
        int currentItem;

        /// <summary>
        /// The steps during the install
        /// </summary>
        private enum InstallStage
        {
            None,
            Unzip,
            Commit,
            Complete,
            Failed,
        }

        /// <summary>
        /// The current step we're at during the install
        /// </summary>
        private InstallStage currentStage = InstallStage.None;

        /// <summary>
        /// The total number of files to be committed.
        /// </summary>
        private int totalFiles = 0;

        /// <summary>
        /// Constructs the updater.
        /// </summary>
        public Updater()
        {
            this.running = false;
            this.currentItem = 0;
        }

        //Idea for updater and AJAX callback from:
        //http://weblogs.asp.net/seanmcalinden/archive/2009/11/15/asynchronous-processing-in-asp-net-mvc-with-ajax-progress-bar.aspx

        /// <summary>
        /// Sets the list of packages to update from.
        /// </summary>
        public void Packages(string []packages)
        {
            if (!this.running)
            {
                foreach (string package in packages)
                {
                    if (this.packagesToInstall.ContainsKey(package) == false)
                    {
                        this.packagesToInstall.Add(package, string.Empty);
                    }
                }
            }
        }

        /// <summary>
        /// Gets the Dictionary of packages being installed and there current state
        /// </summary>
        public Dictionary<String, string> PackagesBeingInstalled
        {
            get
            {
                return this.packagesToInstall;
            }
        }

        /// <summary>
        /// Gets the running state of the updater
        /// </summary>
        public bool Running
        {
            get
            {
                return this.running;
            }
        }
        bool running;

        /// <summary>
        /// Starts the updater updating.  When this method returns the update has finished.
        /// </summary>
        public void StartUpdate(string updateDirectory)
        {
            this.running = true;
            try
            {
                if (updateDirectory.EndsWith("\\"))
                {
                    updateDirectory.TrimEnd(new char [] {'\\'});
                }

                this.currentStage = InstallStage.Unzip;
                for (this.currentItem = 0; this.currentItem < this.packagesToInstall.Count(); this.currentItem++)
                {
                    try
                    {
                        Directory.Delete(updateDirectory + @"\temp", true);
                    }
                    catch (DirectoryNotFoundException)
                    {
                        // No problem
                    }

                    string key = this.packagesToInstall.ElementAt(this.currentItem).Key;
                    using (ZipFile zip = ZipFile.Read(key))
                    {
                        bool lockedDrive = (zip.Comment == "c:" || zip.Comment == @"c:\");
                        logger.InfoFormat("Unpacking {0}", zip.Name);

                        foreach (ZipEntry entry in zip)
                        {
                            logger.InfoFormat("Extracting {0}", entry.FileName);
                            entry.Extract(updateDirectory + @"\temp\", ExtractExistingFileAction.OverwriteSilently);
                            if (lockedDrive)
                            {
                                if (!entry.IsDirectory)
                                {
                                    this.filesInstalled.Add(entry.FileName);
                                }
                            }
                        }

                        logger.InfoFormat("Copying {0}\\temp\\ to c:\\", updateDirectory);

                        try
                        {
                            //Copy files from temp to actual directory
                            XCopy(updateDirectory + @"\temp\", @"c:\");
                        }
                        catch (Exception e)
                        {
                            logger.FatalFormat("Exception caught while copying files {0}", e);
                            throw;
                        }
                        
                    }
                }
            }
            catch (Exception e)
            {
                this.currentStage = InstallStage.Failed;
                string key = this.packagesToInstall.ElementAt(this.currentItem).Key;
                logger.FatalFormat("Failed to extract {0}, {1}", key,e);
                this.packagesToInstall[key] = "Failed";
            }
            finally
            {
                try
                {
                    Directory.Delete(updateDirectory + @"\temp", true);
                }
                catch (DirectoryNotFoundException)
                {
                    // No problem
                }
                //If installed commit the files to the disk
                if (AllInstalled())
                {
                    // Kill fbwfmgt.exe process if it is running as it can crash during the update
                    // It will restart after the reboot, so no problem
                    // TODO: Put this process name in a config file?
                    string processName = "fbwfmgmt";
                    Process [] procs = Process.GetProcessesByName(processName);
                    if (procs.Length == 0)
                    {
                        logger.InfoFormat("Could not find any {0} processes to kill", processName);
                    }
                    else
                    {
                        foreach (Process fbwfmgmt in procs)
                        {
                            string moduleName = "unknown";
                            int id = 0;
                            try
                            {
                                id = fbwfmgmt.Id;
                                moduleName = fbwfmgmt.MainModule.FileName;
                                fbwfmgmt.Kill();
                                logger.InfoFormat("Killed {0} process {1}, {2}", processName, id, moduleName);
                            }
                            catch (Exception e)
                            {
                                logger.InfoFormat("Could not kill {0} process {1}, {2} Exception: {3}", processName, id, moduleName, e);
                            }
                        }
                    }

                    this.currentStage = InstallStage.Commit;
                    logger.Info("All files/dirs copied");
                    logger.DebugFormat("{0} Files in filesInstalled", this.filesInstalled.Count);

                    this.currentItem = 0;
                    this.totalFiles = this.filesInstalled.Count;
                    foreach (string file in this.filesInstalled)
                    {
                        this.currentItem++;
                        CommitFileModification(file);
                    }
                }
                else
                {
                    logger.Fatal("No files installed");
                }

                for (int pkg = 0; pkg < this.packagesToInstall.Count(); pkg++)
                {
                    string key = this.packagesToInstall.ElementAt(pkg).Key;
                    this.packagesToInstall[key] = "Success";
                }
                Cleanup();
            }
            this.currentStage = InstallStage.Complete;
        }

        public void CommitFileModification(string filepath)
        {
            string f = @"\" + filepath.Replace("/", @"\");
            logger.InfoFormat("Commiting file {0} onto volume 'c:'", f);
            uint returnCode = 1;

            try
            {
                returnCode = Fbwfapi.Commit("c:", f);
            }
            catch (Exception e)
            {
                logger.InfoFormat("Caught Exception {0}", e);
            }

            if (returnCode == 0)
            {
                logger.InfoFormat("Commited file {0} onto volume 'c:'", f);
            }
            else
            {
                logger.FatalFormat("Failed to commit file {0} onto volume 'c:\', if it is a dir, it likely already exists", f);
            }
        }

        /// <summary>
        /// Copies one directory to another
        /// </summary>
        /// <param name="source">The directory to copy</param>
        /// <param name="dest">The loction to copy to</param>
        public void XCopy(string source, string dest)
        {
            CopyDirectory(source, dest);
        }

        /// <summary>
        /// Recursive function to copy a directory.
        /// </summary>
        /// <param name="source">The directory to copy</param>
        /// <param name="dest">The loction to copy to</param>
        private void CopyDirectory(string source, string dest)
        {
            //Ensure new directory exists
            if (!Directory.Exists(dest))
                Directory.CreateDirectory(dest);

            DirectoryInfo oldDir = new DirectoryInfo(source);

            //Copy files
            foreach (FileInfo file in oldDir.GetFiles())
            {
                string oldPath = file.FullName;
                string newPath = dest + @"\" + file.Name;
                File.Copy(oldPath, newPath, true);
            }

            foreach(DirectoryInfo dir in oldDir.GetDirectories())
            {
                string oldPath = dir.FullName;
                string newPath = dest + @"\" + dir.Name;
                CopyDirectory(oldPath, newPath);
            }
        }

        /// <summary>
        /// Stops the Update
        /// </summary>
        public void StopUpdate()
        {
            this.running = false;
        }

        /// <summary>
        /// Gets the index of the item that is currently being updated
        /// </summary>
        /// <returns></returns>
        public int CurrentItem()
        {
            return this.currentItem;
        }

        /// <summary>
        /// Gets the overall percentage complete
        /// </summary>
        /// <returns></returns>
        public int PercentageComplete()
        {
            int rc = 0;
            switch (this.currentStage)
            {
                case InstallStage.Unzip:
                    {
                        if (this.packagesToInstall.Count() > 0)
                        {
                            rc = (10 * this.currentItem) / this.packagesToInstall.Count();
                        }
                        else
                        {
                            rc = 10;
                        }
                        break;
                    }
                case InstallStage.Commit:
                    {
                        rc = 10 + ((90 * this.currentItem) / this.totalFiles);
                        break;
                    }
                case InstallStage.Complete:
                    {
                        rc = 100;
                        break;
                    }
                case InstallStage.None:
                    {
                        break;
                    }
                default:
                    {
                        break;
                    }
            }
            return rc;
        }

        /// <summary>
        /// Returns a flag indicating if all packages where installed.
        /// </summary>
        /// <returns>True if all packages installed, otherwise false.</returns>
        public bool AllInstalled()
        {
            bool result = true;
            foreach(KeyValuePair<string,string> package in this.packagesToInstall)
            {
                if (package.Value == "Failed")
                {
                    result = false;
                }
            }

            return result;
        }

        /// <summary>
        /// Deletes the installer packages
        /// </summary>
        private void Cleanup()
        {
            foreach (KeyValuePair<string, string> package in this.packagesToInstall)
            {
                File.Delete(package.Key);
            }
        }
    }
}