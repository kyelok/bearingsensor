using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using System.Threading;
using System.Threading.Tasks;
using log4net;
using System.Web.Configuration;

namespace UpdateWebsite.Controllers
{
    /// <summary>
    /// This class provides the interface for the simple update web server
    /// </summary>
    public class HomeController : Controller
    {
        //See http://blog.janjonas.net/2012-01-02/asp_net-mvc_3-async-jquery-progress-indicator-long-running-tasks for the ideas used in ths class 
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        static Updater updater = null;

        /// <summary>
        /// Gets the main page.  Checks if any update is running
        /// and if not allows the user to start it.
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            List<string> packages = new List<string>();
            Dictionary<string,string> installedPackages = new Dictionary<string,string>();
            logger.InfoFormat("{0}", System.Reflection.Assembly.GetAssembly(typeof(HomeController)).FullName);

            if (updater == null)
            {
                logger.Info("Creating Updater()");
                updater = new Updater();
            }
            else
            {
                logger.Info("Updater already exists.");
            }

            ViewData["Reboot"] = false;
            
            try
            {
                string updateFolder = @"d:\updates";

                if (WebConfigurationManager.AppSettings["updatefolder"] != null)
                {
                    updateFolder = WebConfigurationManager.AppSettings["updatefolder"];
                }

                IEnumerable<string> updatePackages = Directory.EnumerateFiles(updateFolder, "*.pkg");

                logger.InfoFormat("{0} packages to install", updatePackages.Count());


                if (updatePackages.Count() > 0)
                {
                    ViewBag.Message = string.Format("{0} Update(s) to install", updatePackages.Count());

                    foreach (string p in updatePackages)
                    {
                        packages.Add(p);
                        installedPackages.Add(p,string.Empty);
                    }
                }
                else
                {
                    ViewBag.Message = "No updates to install";
                }
            }
            catch (System.IO.DirectoryNotFoundException)
            {
                ViewBag.Message = "No update folder.";
            }

            if (!updater.Running)
            {
                ViewData["Running"] = false;
                updater.Packages(packages.ToArray());
            }
            else
            {
                ViewBag.Message = "Installing Updates";
                ViewData["Running"] = true;

                if (updater.PercentageComplete() >= 100)
                {
                    ViewBag.Message = "Update Successful";
                    if (!updater.AllInstalled())
                    {
                        ViewBag.Message = "Update Failed";
                    }

                    ViewData["Reboot"] = true;
                    updater.StopUpdate();
                }
            }

            ViewData["Installed"] = updater.PackagesBeingInstalled;

            return View();
        }

        public ActionResult DeleteUpdates()
        {
            ViewData["Reboot"] = true;

            string updateFolder = @"d:\amot\updates";

            if (WebConfigurationManager.AppSettings["updatefolder"] != null)
            {
                updateFolder = WebConfigurationManager.AppSettings["updatefolder"];
            }

            string []files = Directory.GetFiles(updateFolder);
            foreach (string file in files)
            {
                System.IO.File.Delete(file);
            }
            
            return View();
        }

        /// <summary>
        /// Allows the user to reboot the system after an update
        /// </summary>
        /// <returns></returns>
        public ActionResult Reboot()
        {
            updater = null;
            Helpers.Restart();
            return View();
        }

        /// <summary>
        /// Starts the long running process.
        /// </summary>
        /// <param name="id">The id.</param>
        public void StartUpdateProcess(string id)
        {
            string updateFolder = @"d:\amot\updates";

            if (WebConfigurationManager.AppSettings["updatefolder"] != null)
            {
                updateFolder = WebConfigurationManager.AppSettings["updatefolder"];
            }

            if (!updater.Running)
            {
                Task.Factory.StartNew(() =>
                    {
                        updater.StartUpdate(updateFolder);
                    });
            }
        }

        /// <summary>
        /// Ends the long running process.
        /// </summary>
        /// <param name="result"></param>
        public void EndUpdateProcess()
        {
            updater.StopUpdate();
        }

        /// <summary>
        /// Gets the current progress.
        /// </summary>
        /// <param name="id">The id.</param>
        public JsonResult GetUpdateProgress()
        {
            this.ControllerContext.HttpContext.Response.AddHeader("cache-control", "no-cache");
            UpdateState state = new UpdateState(updater.PackagesBeingInstalled, updater.PercentageComplete());
            return Json(state, JsonRequestBehavior.AllowGet);
        }
    }

    /// <summary>
    /// This class the state of the update.  It is converted to a Javascript object
    /// using JSON and returned to the web page.
    /// </summary>
    public class UpdateState
    {
        /// <summary>
        /// Create an update state object for returning to the web pages.
        /// </summary>
        /// <param name="states"></param>
        /// <param name="percentComplete"></param>
        public UpdateState(Dictionary<string, string> states, int percentComplete)
        {
            int i = 0;
            this.updateStates = new string[states.Count];
            foreach (KeyValuePair<string, string> state in states)
            {
                this.updateStates[i++] = state.Value;
            }

            this.percentageComplete = percentComplete;
        }

        public string[] updateStates;
        public int percentageComplete;
    }
}
