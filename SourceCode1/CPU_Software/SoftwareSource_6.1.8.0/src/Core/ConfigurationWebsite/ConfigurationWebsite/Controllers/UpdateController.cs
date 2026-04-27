using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ConfigurationWebsite.Models;
using System.Text;
using System.IO;
using HelperClasses;
using System.Web.Configuration;
using System.Configuration;
using EventLogging;

namespace ConfigurationWebsite.Controllers
{
    public class UpdateController : ApplicationController
    {
        private String updateDirectory = @"d:\updates";
        private static Dictionary<string, string[]> methodRoles = GetMethodRolesHelper.GetMethodRoles(typeof(UpdateController).GetMethods());
        private static Dictionary<string, string[]> SPUUpdateMethodRoles = GetMethodRolesHelper.GetMethodRoles(typeof(SPUUpdateController).GetMethods());

        private void ConfirmPermissionsForModel(UpdateModel model)
        {
            model.CanClearUpdatePackages = GetMethodRolesHelper.CanUserPerformMethod("ClearUpdatePackages", User, methodRoles);
            model.CanRestart = GetMethodRolesHelper.CanUserPerformMethod("RestartServer", User, methodRoles);
            model.CanSystemUpdateComplete = GetMethodRolesHelper.CanUserPerformMethod("SystemUpdateComplete", User, methodRoles);
            model.CanSystemUpdate = GetMethodRolesHelper.CanUserPerformMethod("SystemUpdate", User, methodRoles);
            model.CanSPUFirmwareUpdate = GetMethodRolesHelper.CanUserPerformMethod("SPUFirmwareUpdate", User, methodRoles);
        }

        [Authorize(Roles="SystemUpdate")]
        public ActionResult Update()
        {
            UpdateModel model = new UpdateModel();
            ConfirmPermissionsForModel(model);
            return View(model);
        }

        [Authorize(Roles="SystemUpdate")]
        public ActionResult SystemUpdate()
        {
            UpdateModel model = new UpdateModel();

            ConfirmPermissionsForModel(model);

            ModuleConfiguration config = ModuleConfiguration.GetWebConfiguration();
            AppSettingsSection appSettingSection = (AppSettingsSection)config.GetSection("appSettings");

            if (appSettingSection.Settings["UpdateFolder"] != null)
            {
                updateDirectory = appSettingSection.Settings["UpdateFolder"].Value;
            }

            if (!updateDirectory.EndsWith("\\"))
            {
                updateDirectory = updateDirectory + "\\";
            }


            string[] filePaths = Directory.GetFiles(updateDirectory);

            if (0 < filePaths.Length)
            {
                List<String> fileList = new List<String>();

                foreach (string path in filePaths)
                {
                    fileList.Add(System.IO.Path.GetFileName(path));
                }

                model.FileList = fileList;
            }

            return View(model);
        }

        [Authorize(Roles="SystemUpdate")]
        public ActionResult SystemUpdateComplete(HttpPostedFileBase updateFile)
        {
            ModuleConfiguration config = ModuleConfiguration.GetWebConfiguration();
            AppSettingsSection appSettingSection = (AppSettingsSection)config.GetSection("appSettings");

            if (appSettingSection.Settings["UpdateFolder"] != null)
            {
                updateDirectory = appSettingSection.Settings["UpdateFolder"].Value;
            }

            if (!updateDirectory.EndsWith("\\"))
            {
                updateDirectory = updateDirectory + "\\";
            }

            StringBuilder pathBuilder = new StringBuilder(updateDirectory);
            pathBuilder.Append(System.IO.Path.GetFileName(updateFile.FileName));

            updateFile.SaveAs(pathBuilder.ToString());

            string logevent = pathBuilder.ToString();
            //if (logevent.Contains("release_") == true) { logevent = logevent.Remove(logevent.IndexOf("release_"), 8); }
            if (logevent.Contains("release_") == true) { logevent = logevent.Remove(0, logevent.LastIndexOf("release_") + 8); }
            if (logevent.Contains(".pkg") == true) { logevent = logevent.Remove(logevent.IndexOf(".pkg"), 4); }
            logevent.Trim();

            EventLog logger = new EventLog();
            logger.CPUUpdate(logevent, User.Identity.Name);

            return RedirectToAction("SystemUpdate");
        }

        [Authorize(Roles="SystemUpdate")]
        public ActionResult ClearUpdatePackages()
        {
            ModuleConfiguration config = ModuleConfiguration.GetWebConfiguration();
            AppSettingsSection appSettingSection = (AppSettingsSection)config.GetSection("appSettings");

            if (appSettingSection.Settings["UpdateFolder"] != null)
            {
                updateDirectory = appSettingSection.Settings["UpdateFolder"].Value;
            }

            if (!updateDirectory.EndsWith("\\"))
            {
                updateDirectory = updateDirectory + "\\";
            }

            string[] filePaths = Directory.GetFiles(updateDirectory);

            foreach (string filePath in filePaths)
            {
                System.IO.File.Delete(filePath);
            }            

            return RedirectToAction("SystemUpdate");
        }

        [Authorize(Roles="SystemUpdate")]
        public ActionResult RestartServer()
        {
            UpdateWebsite.RebootHelpers.Restart();
            return View("Reboot");
        }
    }
}
