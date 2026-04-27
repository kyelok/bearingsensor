using System;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Collections.Generic;
using ConfigurationWebsite.Models;
using System.Web.Configuration;
using SPUFirmwareUpdate;
using System.Threading;
using HelperClasses;
using System.Configuration;
using EventLogging;
using DataCollectionSDK;
using System.IO;

namespace ConfigurationWebsite.Controllers
{
    public class SPUUpdateController : ApplicationController
    {
        public static readonly string ModbusServerConfigFile = "ModbusServerConfigFile";
        private static SPUFirmwareUpdater updater = null;
        private static String userStartingUpdate = "";
        private static bool waitBeforeReset = false;

        private static Dictionary<string, string[]> methodRoles = GetMethodRolesHelper.GetMethodRoles(typeof(SPUUpdateController).GetMethods());

        /// <summary>
        /// Check if the updater exists
        /// </summary>
        /// <returns>True if update in progress, false if not.</returns>
        static public bool UpdateInProgress()
        {
            bool inProgess = false;

            if (updater != null)
            {
                inProgess = true;
            }

            return inProgess;
        }

        [Authorize(Roles="FirmwareUpdate")]
        public ActionResult SPUFirmwareUpdate()
        {
            SPUUpdateModel model = new SPUUpdateModel();

            if (updater == null)
            {
                AddVersionInfoToModel(model);
            }
            else
            {
                if (updater.GetProgress().CurrentState != SPUFirmwareUpdateState.Failed)
                {
                    return RedirectToAction("SPUFirmwareUpdateProgress");
                }
            }
            
            return View(model);
        }

        private void AddVersionInfoToModel(SPUUpdateModel model)
        {
            using (ModbusSDK modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
            {
                try
                {
                    ushort[] versions = modbusSDK.ReadHoldingRegisters(SPUFirmwareUpdater.slaveId, SPUFirmwareUpdater.slaveFirmVersReg, 2);

                    if ((null != versions) && (2 == versions.Length))
                    {
                        StringBuilder builder = new StringBuilder("Master [V ");
                        AppendVerionNumberAsString(builder, versions[1]);
                        builder.Append("]");

                        if (versions[0] > 0)
                        {
                            builder.Append(" Slave [V ");
                            AppendVerionNumberAsString(builder, versions[0]);
                            builder.Append("]");
                        }

                        model.VersionInfo = builder.ToString();
                    }
                    else
                    {
                        model.VersionInfo = "unavailable";
                    }
                }
                catch (Exception)
                {
                    model.VersionInfo = "unavailable";
                }
            }
        }

        public ActionResult SPUFirmwareUpdateComplete(HttpPostedFileBase updateFile)
        {
            string uploadFilePath = @"d:\updates";

            if (null != updater)
            {
                SPUFirmwareUpdateProgress progress = updater.GetProgress();
                if (SPUFirmwareUpdateState.InProgress == progress.CurrentState)
                {
                    SPUUpdateModel model = new SPUUpdateModel();
                    AddVersionInfoToModel(model);
                    model.ErrorMessage = "Firmware update already in progress, cannot start new update at this time";
                    return View("SPUFirmwareUpdate", model);
                }
            }

            ModuleConfiguration config = ConfigurationHelper.GetWebConfiguration(ModbusServerConfigFile);
            ModuleConfiguration appConfig = ModuleConfiguration.GetWebConfiguration();
            string serialPortName;
            int baudRate;

            try
            {
                AppSettingsSection section = (AppSettingsSection)config.GetSection("modbusServer");
                serialPortName = section.Settings["InternalComPort"].Value;
                baudRate = Int32.Parse(section.Settings["InternalBaudRate"].Value);
            }
            catch (System.IO.IOException)
            {
                serialPortName = "COM7";
                baudRate = 115200;
            }

            AppSettingsSection appSettingSection = (AppSettingsSection)appConfig.GetSection("appSettings");

            if (appSettingSection.Settings["UpdateFolder"] != null)
            {
                uploadFilePath = appSettingSection.Settings["UpdateFolder"].Value;
            }
            else
            {
                uploadFilePath = @"d:\updates";
            }

            if (uploadFilePath.EndsWith(@"\") == false)
            {
                uploadFilePath += @"\";
            }

            uploadFilePath += System.IO.Path.GetFileName(updateFile.FileName);

            try
            {
                updateFile.SaveAs(uploadFilePath);
            }
            catch (Exception e)
            {
                throw new Exception(string.Format("Caught exception {1} trying to upload file '{0}'", uploadFilePath,e.Message), e);
            }

            updater = new SPUFirmwareUpdater(serialPortName, baudRate, uploadFilePath);

            //Check which user is starting this update
            if (Request.IsAuthenticated)
            {
                userStartingUpdate = User.Identity.Name;
            }
            else
            {
                updater = null;
                return RedirectToAction("SPUFirmwareUpdate");
            }

            return RedirectToAction("SPUFirmwareUpdateProgress");
        }

        public void StartUpdate()
        {
            if((null == updater) || (SPUFirmwareUpdateState.NotStarted != updater.GetCurrentState()))
            {
                return;
            }
            
            Task.Factory.StartNew(() =>
                        {
                            this.PerformUpdate();
                        });
        }

        private void PerformUpdate()
        {
            if ((null == updater) || (SPUFirmwareUpdateState.NotStarted != updater.GetCurrentState()))
            {
                return;
            }
            //set flag to prevent premature reboot
            waitBeforeReset = true;
            updater.PerformUpdate();
            SPUFirmwareUpdateProgress progress = updater.GetProgress();
            if (SPUFirmwareUpdateState.Completed == progress.CurrentState)
            {
                EventLog logger = new EventLog();

                logger.SPUUpdate(1, 
                                GetVerionNumberAsString(progress.OldMasterVersion), 
                                GetVerionNumberAsString(progress.NewMasterVersion), 
                                userStartingUpdate);

                if (progress.SlaveSPUPresent)
                {
                    logger.SPUUpdate(2,
                                GetVerionNumberAsString(progress.OldSlaveVersion),
                                GetVerionNumberAsString(progress.NewSlaveVersion),
                                userStartingUpdate);
                }
            }

            try
            {
                System.IO.File.Delete(updater.GetUpdateFileLocation());
            }
            catch (Exception)
            { }

            waitBeforeReset = false;
        }

        [Authorize(Roles="FirmwareUpdate")]
        public ActionResult SPUFirmwareUpdateProgress()
        {                        
            if (null == updater)
            {
                return RedirectToAction("SPUFirmwareUpdate");
            }

            SPUUpdateProgressModel model = new SPUUpdateProgressModel();
            model.CanReboot = GetMethodRolesHelper.CanUserPerformMethod("RestartServer", User, methodRoles);

            if (SPUFirmwareUpdateState.NotStarted < updater.GetCurrentState())
            {
                model.UpdateStarted = true;
            }

            return View(model);
        }

        [Authorize(Roles="FirmwareUpdate")]
        public ActionResult RestartServer()
        {
            while (waitBeforeReset)
            {
                System.Threading.Thread.Sleep(50);
            }

            UpdateWebsite.RebootHelpers.Restart();
            
            return View("Reboot");
        }

        public JsonResult GetUpdateProgress()
        {
            this.ControllerContext.HttpContext.Response.AddHeader("cache-control", "no-cache");
            UpdateProgressResults resultsPackage = new UpdateProgressResults((int)SPUFirmwareUpdateStage.LastStage - 1);
            if (null == updater)
            {
                for (SPUFirmwareUpdateStage i = (SPUFirmwareUpdateStage.NotStarted + 1); i < SPUFirmwareUpdateStage.LastStage; i++)
                {
                    resultsPackage.results[((int)i - 1)] = "N/A";
                }
                resultsPackage.running = false;
                resultsPackage.failed = false;
            }
            else
            {
                SPUFirmwareUpdateProgress progress = updater.GetProgress();
                for (SPUFirmwareUpdateStage i = (SPUFirmwareUpdateStage.NotStarted + 1); i < SPUFirmwareUpdateStage.LastStage; i++)
                {
                    if ((SPUFirmwareUpdateStage.WritingSPIFlash == i) ||
                        (SPUFirmwareUpdateStage.ProgrammingSlaveSPU == i) ||
                        (SPUFirmwareUpdateStage.ProgrammingMasterSPU == i))
                    {
                        resultsPackage.results[((int)i - 1)] = GetResultForPercentageStage(i, progress);
                    }
                    else
                    {
                        resultsPackage.results[((int)i - 1)] = GetResultForStage(i, progress);
                    }
                }

                if (SPUFirmwareUpdateState.InProgress < progress.CurrentState)
                {
                    resultsPackage.running = false;
                    String updateFilePath = updater.GetUpdateFileLocation();

                    System.IO.File.Delete(updateFilePath);

                    if (SPUFirmwareUpdateState.Failed == progress.CurrentState)
                    {
                        resultsPackage.failed = true;
                    }
                    else
                    {
                        resultsPackage.failed = false;
                    }
                }
                else
                {
                    resultsPackage.running = true;
                    resultsPackage.failed = false;
                }
            }            

            return Json(resultsPackage, JsonRequestBehavior.AllowGet);
        }

        private string GetResultForStage(SPUFirmwareUpdateStage stage, SPUFirmwareUpdateProgress progress)
        {
            if ((SPUFirmwareUpdateStage.ErasingSlaveSPU == stage) && (!progress.SlaveSPUPresent))
            {
                return "N/A";
            }

            if (stage < progress.CurrentStage)
            {
                StringBuilder builder = new StringBuilder();

                if (SPUFirmwareUpdateStage.CheckingCurrentVersions == stage)
                {
                    builder.Append("Master [V ");
                    AppendVerionNumberAsString(builder, progress.OldMasterVersion);
                    builder.Append("] ");
                    if (progress.SlaveSPUPresent)
                    {
                        builder.Append("Slave [V ");
                        AppendVerionNumberAsString(builder, progress.OldSlaveVersion);
                        builder.Append("] ");
                    }
                }
                else if (SPUFirmwareUpdateStage.CheckingNewVersions == stage)
                {
                    builder.Append("Master [V ");
                    AppendVerionNumberAsString(builder, progress.NewMasterVersion);
                    builder.Append("] ");
                    if (progress.SlaveSPUPresent)
                    {
                        builder.Append("Slave [V ");
                        AppendVerionNumberAsString(builder, progress.NewSlaveVersion);
                        builder.Append("] ");
                    }
                }

                builder.Append("DONE");
                return builder.ToString();
            }
            else
            {
                if (stage == progress.CurrentStage)
                {
                    if (SPUFirmwareUpdateState.Failed == progress.CurrentState)
                    {
                        StringBuilder builder = new StringBuilder("FAILED: ");
                        builder.Append(progress.ErrorMessage);
                        return builder.ToString();
                    }
                    else if (SPUFirmwareUpdateState.InProgress == progress.CurrentState)
                    {
                        return "In Progress";
                    }
                }
            }
            return "Waiting";
        }

        private void AppendVerionNumberAsString(StringBuilder builder, ushort version)
        {
            UInt16 major = 0;
            UInt16 minor = 0;

            //First byte is minor
            //Second byte is major

            byte[] bytes = BitConverter.GetBytes(version);

            if ((bytes != null) && (bytes.Length == 2))
            {
                minor = bytes[0];
                major = bytes[1];                

                builder.AppendFormat("{0:X2}.{1:X2}", major, minor);
            }
            else
            {
                builder.Append("UNKNOWN");
            }
        }

        private string GetVerionNumberAsString(ushort version)
        {
            UInt16 major = 0;
            UInt16 minor = 0;

            //First byte is minor
            //Second byte is major

            byte[] bytes = BitConverter.GetBytes(version);

            if ((bytes != null) && (bytes.Length == 2))
            {
                minor = bytes[0];
                major = bytes[1];

                return string.Format("{0:X2}.{1:X2}", major, minor);
            }

            return "UNKNOWN";
        }

        private string GetResultForPercentageStage(SPUFirmwareUpdateStage stage, SPUFirmwareUpdateProgress progress)
        {
            if ((SPUFirmwareUpdateStage.ProgrammingSlaveSPU == stage) && (!progress.SlaveSPUPresent))
            {
                return "N/A";
            }

            if (stage < progress.CurrentStage)
            {
                return "DONE";
            }
            else
            {
                if (stage == progress.CurrentStage)
                {
                    if (SPUFirmwareUpdateState.Failed == progress.CurrentState)
                    {
                        StringBuilder builder = new StringBuilder("FAILED: ");
                        builder.Append(progress.ErrorMessage);
                        return builder.ToString();
                    }
                    else if (SPUFirmwareUpdateState.InProgress == progress.CurrentState)
                    {
                        StringBuilder builder = new StringBuilder(progress.ProgressPercentage.ToString());
                        builder.Append("%");
                        return builder.ToString();
                    }
                    else if (SPUFirmwareUpdateState.Completed == progress.CurrentState)
                    {
                        return "DONE";
                    }
                }
            }

            return "Waiting";
        }
    }

    public class UpdateProgressResults
    {
        public string[] results;
        public bool running = true;
        public bool failed = false;

        public UpdateProgressResults(int numResults)
        {
            results = new string[numResults];
        }
    }
}
