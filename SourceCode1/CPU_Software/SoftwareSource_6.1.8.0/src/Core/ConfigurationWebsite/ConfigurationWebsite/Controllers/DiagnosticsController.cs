using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Configuration;
using System.Web.Configuration;
using ConfigurationWebsite.Models;
using HelperClasses;
using System.IO;

namespace ConfigurationWebsite.Controllers
{
    public class DiagnosticsController : Controller
    {

        private static Dictionary<string, string[]> methodRoles = GetMethodRolesHelper.GetMethodRoles(typeof(DiagnosticsController).GetMethods());

        //
        // GET: /Diagnostics/
        public ActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// Returns the DiagnosticsLogs View and populates it
        /// with data.
        /// </summary>
        /// <returns></returns>
        public ActionResult DiagnosticsLogs()
        {
            //Create list of logs
            // Read logs file directory from settings file
            string logFolder = GetLogFolder();

            DiagnosticsLogsModel logsModel = new DiagnosticsLogsModel();
            logsModel.CanDelete = GetMethodRolesHelper.CanUserPerformMethod("DeleteLog", User, methodRoles);
            
            System.IO.DirectoryInfo dir = new System.IO.DirectoryInfo(logFolder);
            IEnumerable<System.IO.FileInfo> fileList = dir.EnumerateFiles("*.*", System.IO.SearchOption.AllDirectories);
            
            IEnumerable<System.IO.FileInfo> fileQuery =
            from file in fileList
            where file.FullName.ToLower().Contains(".log")
            orderby file.CreationTime
            select file;

            logsModel.LogFiles = from filename in fileQuery.Reverse() select filename.FullName;

          
            // Enumerate log files in directory and
            // Populate the model with the list of log files
            //logsModel.LogFiles = from file in Directory.EnumerateFiles(logFolder) where file.ToLower().Contains(".log") orderby file. select file;

            //Display View
            return View(logsModel);
        }

        /// <summary>
        /// Downloads the log file requested by the user
        /// </summary>
        /// <param name="file">The fullname of the file to download (including path)</param>
        /// <returns>A stream that points to the file.</returns>
        public ActionResult DownloadLog(string file)
        {
            if (System.IO.File.Exists(file))
            {
                FileInfo fileInfo = new FileInfo(file);
                return File(fileInfo.Open(FileMode.Open,FileAccess.Read, FileShare.ReadWrite), "text/plain", fileInfo.Name);
            }

            return RedirectToAction("DiagnosticsLogs");
        }

        /// <summary>
        /// Deletes the log file requested by the user
        /// </summary>
        /// <param name="file"></param>
        /// <returns>The standard </returns>
        [Authorize(Roles = "Diagnostics")]
        public ActionResult DeleteLog(string file)
        {
            if (System.IO.File.Exists(file))
            {
                System.IO.File.Delete(file);
            }

            return RedirectToAction("DiagnosticsLogs");
        }

        /// <summary>
        /// Gets the folder that the log files are written too.
        /// </summary>
        /// <returns>A string that holds the log file folder</returns>
        private string GetLogFolder()
        {

            ModuleConfiguration appConfig = ModuleConfiguration.GetWebConfiguration();
            AppSettingsSection appSettingSection = (AppSettingsSection)appConfig.GetSection("appSettings");

            if (appSettingSection.Settings["LogFolder"] != null)
            {
                return appSettingSection.Settings["LogFolder"].Value;
            }

            return @"d:\log";
        }
    }
}
