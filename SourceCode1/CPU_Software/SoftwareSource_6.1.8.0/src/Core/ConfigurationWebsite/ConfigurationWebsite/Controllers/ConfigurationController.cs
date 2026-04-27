using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.SQLite;
using System.IO;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using ConfigurationWebsite.Models;
using DataCollectionSDK;
using EventLogging;
using SystemSettings;
using System.Web.Configuration;
using System.Configuration;
using HelperClasses;
using WebServiceObjects;
using System.Web.Routing;
using System.Management;
using System.Net.NetworkInformation;
using System.Security.Cryptography;

namespace ConfigurationWebsite.Controllers
{

    public class ConfigurationController : ApplicationController
    {
        private static TimeOut timeOut = new TimeOut();
        private static Dictionary<string, string[]> methodRoles = GetMethodRolesHelper.GetMethodRoles(typeof(ConfigurationController).GetMethods());

        private static Dictionary<string, ExportProgress> exportsInProgress = new Dictionary<string, ExportProgress>();
        private static Dictionary<string, ImportProgress> importsInProgress = new Dictionary<string, ImportProgress>();

        private DatabaseSDK dbSDK;
        private DatabaseSDK dbSDKEvent;
        private static bool DatabaseExist = false;
        private static bool TemperatureSaved = false;
        private static bool Invalidinput = false;
        private static bool Temperatureimport = false;
        private static bool InvalidinputImport = false;
        private static bool ExitTestMode = false;
        private static string TmpSerialNumber = string.Empty;
        private static string TempEncrypteInfo = string.Empty;
        private static byte[] EncryptedByte = new byte[1024];
        private static int actualEncryptedByte = 0;
        private string registFile = @"c:\RegInfoOrig.txt";
        private string registFileEncrypted = @"c:\RegInfo.txt";
        private string passwordEncryptRegInfo = "AmotXtsw22015revion107EncryptRegInfo";

        public ConfigurationController()
        {
            dbSDK = new DatabaseSDK(ConfigurationHelper.GetDatabasePath(ConfigurationHelper.ConfigurationDb), 5, 100, 66);
            DbUtils.CreateDB(dbSDK);

            dbSDKEvent = new DatabaseSDK(ConfigurationHelper.GetDatabasePath(ConfigurationHelper.EventLog), 5, 100, 66);
            DbUtils.CreateDB(dbSDKEvent);            
        }

        public ActionResult ClearEventLog()
        {
            ClearEventLogModel model = new ClearEventLogModel();
            model.CanClear = GetMethodRolesHelper.CanUserPerformMethod("ClearEventLogComplete", User, methodRoles);

            return View(model);
        }

        [Authorize(Roles = "Diagnostics")]
        public ActionResult ClearEventLogComplete()
        {
            EventLog eventLog = new EventLog();
            try
            {
                eventLog.ClearEventLog(User.Identity.Name);
                return View("ClearEventLog", new ClearEventLogModel("Event log cleared."));
            }
            catch (Exception e)
            {
                return View("ClearEventLog", new ClearEventLogModel("Error clearing event log. Details: " + e.Message));
            }
        }

        public ActionResult GraphScaleSettings()
        {
            GraphScaleModel model = new GraphScaleModel();

            model.CanSave = GetMethodRolesHelper.CanUserPerformMethod("GraphScaleSettingsComplete", User, methodRoles);
            
            using (DbDataReader reader = dbSDK.Select(dbSDK.GetDbConnection(), "* FROM graphScale;"))
            {
                if (reader.Read())
                {
                    model.SensorDeviation = reader.GetInt32(reader.GetOrdinal("SensorDeviation"));
                    model.SensorWear = reader.GetInt32(reader.GetOrdinal("SensorWear"));

                    if (model.SensorDeviation < 500)
                    {
                        model.SensorDeviation = 1000;
                    }

                    if (model.SensorWear < 500)
                    {
                        model.SensorWear = 1000;
                    }
                }
            }

            return View(model);
        }

        [Authorize(Roles="GraphScale")]
        public ActionResult GraphScaleSettingsComplete(GraphScaleModel model)
        {           
            //Write new settings to db
            dbSDK.ExecuteSQLStatements(new string[1] { string.Format("INSERT INTO graphScale VALUES({0},{1});", model.SensorDeviation, model.SensorWear) });

            return RedirectToAction("GraphScaleSettings");
        }

        [Authorize(Roles = "SETUP")]
        public ActionResult TemperatureSettings()
        {
            TemperatureSettingModel model = new TemperatureSettingModel();

            model.CanSave = GetMethodRolesHelper.CanUserPerformMethod("TemperatureSettingsComplete", User, methodRoles);
            model.Saved = TemperatureSaved;
            model.Imported = Temperatureimport;            

            if(InvalidinputImport)
            {
                model.MessageImport = "Import failed, wrong import file";
                InvalidinputImport = false;
            }
            else if (Temperatureimport)
            {
                model.MessageImport = "Import success";
                Temperatureimport = false;
            }

            if (TemperatureSaved)
            {
                model.MessageImport = "";
                model.Message = "Saved";
                TemperatureSaved = false;
            }
            else if (Invalidinput)
            {
                model.MessageImport = "";
                model.Message = "Wrong input";
                Invalidinput = false;
            }

            using (DbDataReader reader = dbSDK.Select(dbSDK.GetDbConnection(), "* FROM temperatureSettings;"))
            {
                try
                {
                    if (reader.Read())
                    {
                        model.enable = reader.GetInt32(reader.GetOrdinal("enable"));
                        model.sensorNumber = reader.GetInt32(reader.GetOrdinal("sensorNumber"));
                        model.RtdPerPlc = reader.GetInt32(reader.GetOrdinal("rtdPerPlc"));
                        model.tempGraphScale = reader.GetInt32(reader.GetOrdinal("barScale"));
                        model.tempGraphDevScale = reader.GetInt32(reader.GetOrdinal("barScaleDev"));
                        model.risingHysteresis = reader.GetInt32(reader.GetOrdinal("rising"));
                        model.fallingHysteresis = reader.GetInt32(reader.GetOrdinal("falling"));
                        model.mainsensorNumber = reader.GetInt32(reader.GetOrdinal("mainbearing"));
                        model.crankPinsensorNumber = reader.GetInt32(reader.GetOrdinal("crankpin"));
                        model.crossHeadsensorNumber = reader.GetInt32(reader.GetOrdinal("crosshead"));

                        model.ModuleEnabled = true;
                        DatabaseExist = true;

                        if (model.sensorNumber < 1)
                        {
                            model.MessageImport = "";
                            model.ModuleEnabled = false;
                            DatabaseExist = false;
                        }
                    }
                    else
                    {
                        model.MessageImport = "Temperature is not supported";
                        model.ModuleEnabled = false;
                        DatabaseExist = false;
                    }
                }
                catch (Exception e)
                {
                    model.MessageImport = "Wrong temperature setting";
                    model.ModuleEnabled = false;
                    DatabaseExist = false;
                }
            }
            
            return View(model);
        }

        [Authorize(Roles = "SETUP")]
        public ActionResult TemperatureSettingsComplete(TemperatureSettingModel model)
        {
            if (model.sensorNumber < 0 || model.RtdPerPlc < 1 || model.tempGraphScale < 0 || model.tempGraphDevScale < 0 || model.risingHysteresis < 0 || model.fallingHysteresis < 0
                || model.crossHeadsensorNumber < 0 || model.mainsensorNumber < 0 || model.crankPinsensorNumber < 0)
            {
                Invalidinput = true;
            }
            else
            {
                //Write new settings to db
                dbSDK.ExecuteSQLStatements(new string[1] { string.Format("INSERT INTO temperatureSettings VALUES({0},{1},{2},{3},{4},{5},{6},{7},{8},{9});", 
                    model.enable, model.sensorNumber, model.RtdPerPlc, model.tempGraphScale, model.tempGraphDevScale, model.risingHysteresis, model.fallingHysteresis,
                    model.mainsensorNumber, model.crankPinsensorNumber, model.crossHeadsensorNumber)});
                TemperatureSaved = true;
                EventLog eventLog = new EventLog();
                eventLog.TemperatureSettings(model.sensorNumber, model.RtdPerPlc, model.risingHysteresis, model.fallingHysteresis, model.mainsensorNumber, model.crankPinsensorNumber, model.crossHeadsensorNumber);
            }
            return RedirectToAction("TemperatureSettings");
            //return View("TemperatureSettings", new TemperatureSettingModel("Done!"));
        }

        [Authorize(Roles="TestAlarms")]
        public ActionResult ToggleAlarm(int alarmNo, DigitalOutputState currentState)
        {
            timeOut.touchedCount++;
            DigitalOutputState newState;

            if (currentState == DigitalOutputState.On)
            {
                newState = DigitalOutputState.Off;
            }
            else
            {
                newState = DigitalOutputState.On;
            }

            using (ModbusSDK modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
            {
                SPUSDK.SetSPUAlarmState(modbusSDK, alarmNo, newState);
            }

            return RedirectToAction("TestAlarms");
        }

        private void ConfirmPermissionsForModel(TestAlarmsModel model)
        {
            model.CanEnableTest = GetMethodRolesHelper.CanUserPerformMethod("EnableTestMode", User, methodRoles);
            model.CanDisableTest = GetMethodRolesHelper.CanUserPerformMethod("DisableTestMode", User, methodRoles);
            model.CanToggle = GetMethodRolesHelper.CanUserPerformMethod("ToggleAlarm", User, methodRoles);
        }

        public ActionResult TestAlarms()
        {
            TestAlarmsModel model = new TestAlarmsModel();

            this.ConfirmPermissionsForModel(model);
            model.SPUNoAction = false;
            model.TestModeExit = ExitTestMode;

            try
            {
                using (ModbusSDK modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                {
                    model.Status = SPUSDK.GetSPUAlarmStates(modbusSDK); 
                    model.TestModeEnabled = SPUSDK.GetAlarmTestModeState(modbusSDK);
                    if (model.Status[0] == DigitalOutputState.NoComm || model.Status[1] == DigitalOutputState.NoComm || model.Status[2] == DigitalOutputState.NoComm)
                    {
                        model.SPUNoAction = true;
                    }
                    if (model.Status[0] == DigitalOutputState.NoComm) model.Status[0] = DigitalOutputState.Off;
                    if (model.Status[1] == DigitalOutputState.NoComm) model.Status[1] = DigitalOutputState.Off;
                    if (model.Status[2] == DigitalOutputState.NoComm) model.Status[2] = DigitalOutputState.Off;

                    if (model.SPUNoAction == false && timeOut.timeoutOccur == true)
                    {
                        timeOut.timeoutOccur = false;

                        model.TestModeEnabled = false;
                        model.CanEnableTest = true;
                    }
                }
            }
            catch (Exception e)
            {
                model.ModbusStatus = e.Message;
            }
            
            return View(model);
        }

        [Authorize(Roles = "TestAlarms")]
        public ActionResult DisableTestMode()
        {
            try
            {
                using (ModbusSDK modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                {
                    SPUSDK.SetAlarmTestModeState(modbusSDK, false, User.Identity.Name);
                }

                timeOut.touchedCount = 0;
            }
            catch (Exception e)
            {
                TestAlarmsModel model = new TestAlarmsModel() { ModbusStatus = e.Message };                
                this.ConfirmPermissionsForModel(model);
                return View("TestAlarms", model);
            }
            return RedirectToAction("TestAlarms");
        }

        [Authorize(Roles="TestAlarms")]
        public ActionResult EnableTestMode()
        {
            try
            {
                using (ModbusSDK modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                {
                    SPUSDK.SetAlarmTestModeState(modbusSDK, true, User.Identity.Name);
                }

                if (timeOut.isRunning == false)
                {
                    ExitTestMode = false;

                    Task.Factory.StartNew(() =>
                    {
                        timeOut.Monitor();
                    });
                }
            }
            catch (Exception e)
            {
                TestAlarmsModel model = new TestAlarmsModel() { ModbusStatus = e.Message };               
                this.ConfirmPermissionsForModel(model);
                return View("TestAlarms", model);
            }

            return RedirectToAction("TestAlarms");
        }

        [Authorize(Roles = "SPU")]
        public ActionResult ExportSystemSettings()
        {
            IOSystemSettings settings = new IOSystemSettings(dbSDK);
            FileInfo fileInfo = settings.Export(GetExportDirectory());
            return File(fileInfo.OpenRead(), "text/plain", fileInfo.Name);
        }

        [Authorize(Roles = "SPU")]
        public ActionResult ExportTemperatureSettings()
        {
            IOSystemSettings settings = new IOSystemSettings(dbSDK, dbSDKEvent);
            FileInfo fileInfo = settings.ExportTemperature(GetExportDirectory());
            return File(fileInfo.OpenRead(), "text/plain", fileInfo.Name);
        }

        [Authorize(Roles = "SPU")]
        public ActionResult ImportSystemSettings()
        {
            StatusModel model = null;

            try
            {
                if (Request.Files.Count > 0)
                {
                    using (StreamReader fileIn = new StreamReader(Request.Files[0].InputStream))
                    {
                        string fileOutName = Path.Combine(GetExportDirectory(), Request.Files[0].FileName);
                        using (StreamWriter fileOut = new StreamWriter(fileOutName))
                        {
                            fileOut.Write(fileIn.ReadToEnd());
                        }

                        //Now process the ini file that was jsut uploaded
                        IOSystemSettings settings = new IOSystemSettings(this.dbSDK);
                        settings.Import(fileOutName);
                        model = new StatusModel("New System settings imported successfully!");
                    }
                }
            }
            catch (Exception e)
            {
                model = new StatusModel("Failed to import System settings. Reason: " + e.Message);
            }

            return View("ImportExport", model);
        }

        [Authorize(Roles = "AMOT")]
        public ActionResult ImportTemperatureSettings()
        {
            //StatusModel model = null;
            Temperatureimport = true;
            try
            {
                if (Request.Files.Count > 0)
                {
                    using (StreamReader fileIn = new StreamReader(Request.Files[0].InputStream))
                    {
                        string fileOutName = Path.Combine(GetExportDirectory(), Request.Files[0].FileName);
                        using (StreamWriter fileOut = new StreamWriter(fileOutName))
                        {
                            fileOut.Write(fileIn.ReadToEnd());
                        }

                        //Now process the ini file that was jsut uploaded
                        IOSystemSettings settings = new IOSystemSettings(this.dbSDK, this.dbSDKEvent);
                        settings.ImportTemperature(fileOutName);
                        InvalidinputImport = false;

                        EventLog eventLog = new EventLog();
                        eventLog.TemperatureImport();
                    }
                }
            }
            catch (Exception e)
            {
                InvalidinputImport = true;                
            }                        

            return RedirectToAction("TemperatureSettings");
        }

        public ActionResult DownloadPreparedFile(string exportSessionID)
        {
            FileInfo exportedInfo = null;
            try
            {
                exportedInfo = exportsInProgress[exportSessionID].ExportFile;
                exportsInProgress.Remove(exportSessionID);
            }
            catch (KeyNotFoundException)
            {
                return View("ImportExport");
            }

            return File(exportedInfo.OpenRead(), "text/csv", exportedInfo.Name);
        }

        public JsonResult GetExportProgress(string exportSessionID)
        {
            this.ControllerContext.HttpContext.Response.AddHeader("cache-control", "no-cache");

            ExportProgress progress = null;

            try
            {
                progress = exportsInProgress[exportSessionID];
                if ((null != progress.ErrorMessage) && (0 < progress.ErrorMessage.Length))
                {
                    exportsInProgress.Remove(exportSessionID);
                }
            }
            catch (KeyNotFoundException)
            {
                progress = new ExportProgress();
                progress.Complete = true;
                progress.ErrorMessage = "Could not find export with matching session ID";
            }

            ImpExpProgressResults result = new ImpExpProgressResults(progress);

            return Json(result, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetImportProgress(string importSessionID)
        {
            this.ControllerContext.HttpContext.Response.AddHeader("cache-control", "no-cache");

            ImportProgress progress = null;

            try
            {
                progress = importsInProgress[importSessionID];
                if ((null != progress.ErrorMessage) && (0 < progress.ErrorMessage.Length))
                {
                    importsInProgress.Remove(importSessionID);
                }
            }
            catch (KeyNotFoundException)
            {
                progress = new ImportProgress();
                progress.Complete = true;
                progress.ErrorMessage = "Could not find export with matching session ID";
            }

            ImpExpProgressResults result = new ImpExpProgressResults(progress);

            return Json(result, JsonRequestBehavior.AllowGet);
        }

        [Authorize(Roles="SPU")]
        public ActionResult ImportOffsetsA()
        {
            StatusModel model = null;
            try
            {
                if (Request.Files.Count > 0)
                {
                    using (StreamReader file = new StreamReader(Request.Files[0].InputStream))
                    {
                        using (ModbusSDK modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                        {
                            SPUSDK.ImportOffsets(file, modbusSDK, SPUSDK.OffsetA, User.Identity.Name);
                            model = new StatusModel("New Offsets A imported successfully!");
                        }
                    }
                }
            }
            catch (Exception e)
            {
                model = new StatusModel("Failed to import Offsets A. Reason: " + e.Message);
            }

            return View("ImportExport", model);
        }

        [Authorize(Roles = "SPU")]
        public ActionResult ExportOffsetsA()
        {
            try
            {
                using (ModbusSDK modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                {
                    //Create the file
                    FileInfo fileInfo = new FileInfo(GetFileNameToUse("OffsetsA")); 
                    using (StreamWriter streamWriter = fileInfo.CreateText())
                    {
                        SPUSDK.ExportOffsets(streamWriter, modbusSDK, SPUSDK.OffsetA);
                    }
                    return File(fileInfo.OpenRead(), "text/csv", fileInfo.Name);
                }
            }
            catch (Exception e)
            {
                return View("ImportExport", new StatusModel("Error: Could not retrieve Offsets (A). Reason: " + e.Message));
            }

        }

        [Authorize(Roles = "SPU")]
        public ActionResult ImportOffsetsB()
        {
            StatusModel model = null;
            try
            {
                if (Request.Files.Count > 0)
                {
                    using (StreamReader file = new StreamReader(Request.Files[0].InputStream))
                    {
                        using (ModbusSDK modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                        {
                            SPUSDK.ImportOffsets(file, modbusSDK, SPUSDK.OffsetB, User.Identity.Name);
                            model = new StatusModel("New Offsets B imported successfully!");
                        }
                    }
                }
            }
            catch (Exception e)
            {
                model = new StatusModel("Failed to import Offsets B. Reason: " + e.Message);
            }

            return View("ImportExport", model);
        }

        [Authorize(Roles = "SPU")]
        public ActionResult ExportOffsetsB()
        {
            try
            {
                using (ModbusSDK modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                {
                    //Create the file
                    FileInfo fileInfo = new FileInfo(GetFileNameToUse("OffsetsB")); 
                    using (StreamWriter streamWriter = fileInfo.CreateText())
                    {
                        SPUSDK.ExportOffsets(streamWriter, modbusSDK, SPUSDK.OffsetB);
                    }
                    return File(fileInfo.OpenRead(), "text/csv", fileInfo.Name);
                }
            }
            catch (Exception e)
            {
                return View("ImportExport", new StatusModel("Error: Could not retrieve Offsets (B). Reason: " + e.Message));
            }
        }


        [Authorize(Roles = "SPU")]
        public ActionResult ExportSpeedComp()
        {
            ExportProgress progress = new ExportProgress();
            string sessionID = Guid.NewGuid().ToString();
            Task.Factory.StartNew(() =>
            {
                this.PrepareExportSpeedComp(progress);
            });

            exportsInProgress.Add(sessionID, progress);

            ImportExportModel model = new ImportExportModel();
            model.ExportSessionID = sessionID;

            return View("Export", model);
        }

        private void PerformImportSpeedComp(ImportProgress progress, HttpPostedFileBase importedFile)
        {
            try
            {
                using (ModbusSDK modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                {
                    using (StreamReader file = new StreamReader(importedFile.InputStream))
                    {
                        SPUSDK.ImportSpeedComp(file, modbusSDK, progress);
                    }
                }
            }
            catch (Exception e)
            {
                progress.Complete = true;
                progress.ErrorMessage = "Error: Could not write Speed Compensation Tables. Reason: " + e.Message;
            }
        }

        private void PrepareExportSpeedComp(ExportProgress progress)
        {
            try
            {
                progress.ExportFile = new FileInfo(GetFileNameToUse("speedcomp"));
                using (ModbusSDK modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                {
                    using (StreamWriter streamWriter = progress.ExportFile.CreateText())
                    {
                        SPUSDK.ExportSpeedComp(streamWriter, modbusSDK, progress);
                    }
                }
            }
            catch (Exception e)
            {
                progress.Complete = true;
                progress.ErrorMessage = "Error: Could not retrieve Speed Compensation Tables. Reason: " + e.Message;
            }
        }

        private void PrepareExportSpeedTabelALV(ExportProgress progress)
        {
            try
            {
                progress.ExportFile = new FileInfo(GetFileNameToUse("speedtable-alv"));
                using (ModbusSDK modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                {
                    using (StreamWriter streamWriter = progress.ExportFile.CreateText())
                    {
                        SPUSDK.ExportSpeedTableALV(streamWriter, modbusSDK, progress);
                    }
                }
            }
            catch (Exception e)
            {
                progress.Complete = true;
                progress.ErrorMessage = "Error: Could not retrieve Speed Tables. Reason: " + e.Message;
            }
        }

        private void PerformImportSpeedTableALV(ImportProgress progress, HttpPostedFileBase importedFile)
        {
            try
            {
                using (ModbusSDK modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                {
                    using (StreamReader file = new StreamReader(importedFile.InputStream))
                    {
                        SPUSDK.ImportSpeedTableALV(file, modbusSDK, progress);
                    }
                }
            }
            catch (Exception e)
            {
                progress.Complete = true;
                progress.ErrorMessage = "Error: Could not write Speed Tables. Reason: " + e.Message;
            }
        }

        [Authorize(Roles = "SPU")]
        public ActionResult ImportSpeedComp()
        {
            if (Request.Files.Count > 0)
            {
                ImportProgress progress = new ImportProgress();
                string sessionID = Guid.NewGuid().ToString();
                Task.Factory.StartNew(() =>
                {
                    this.PerformImportSpeedComp(progress, Request.Files[0]);
                });

                importsInProgress.Add(sessionID, progress);

                ImportExportModel model = new ImportExportModel();
                model.ExportSessionID = sessionID;

                return View("Import", model);
            }

            return View("ImportExport", new StatusModel("Error: Could not write Speed Compensation Tables. Reason: No File Selected."));
        }

        [Authorize(Roles = "SPU")]
        public ActionResult ExportSpeedTableALV()
        {
            ExportProgress progress = new ExportProgress();
            string sessionID = Guid.NewGuid().ToString();
            Task.Factory.StartNew(() =>
            {
                this.PrepareExportSpeedTabelALV(progress);
            });

            exportsInProgress.Add(sessionID, progress);

            ImportExportModel model = new ImportExportModel();
            model.ExportSessionID = sessionID;

            return View("Export", model);
        }

        [Authorize(Roles = "SPU")]
        public ActionResult ImportSpeedTableALV()
        {
            if (Request.Files.Count > 0)
            {
                ImportProgress progress = new ImportProgress();
                string sessionID = Guid.NewGuid().ToString();
                Task.Factory.StartNew(() =>
                {
                    this.PerformImportSpeedTableALV(progress, Request.Files[0]);
                });

                importsInProgress.Add(sessionID, progress);

                ImportExportModel model = new ImportExportModel();
                model.ExportSessionID = sessionID;

                return View("Import", model);
            }

            return View("ImportExport", new StatusModel("Error: Could not write Speed Tables. Reason: No File Selected."));
        }

        [Authorize(Roles = "SPU")]
        public ActionResult ExportSpeedTableNPC()
        {
            try
            {
                FileInfo fileInfo = new FileInfo(GetFileNameToUse("speedtable-npc"));
                using (ModbusSDK modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                {
                    using (StreamWriter streamWriter = fileInfo.CreateText())
                    {
                        SPUSDK.ExportSpeedTableNPC(streamWriter, modbusSDK);
                    }
                    //Return with the file
                    return File(fileInfo.OpenRead(), "text/plain", fileInfo.Name);
                }
            }
            catch (Exception e)
            {
                return View("ImportExport", new StatusModel("Error: Could not retrieve Speed Tables. Reason: " + e.Message));
            }
        }        

        
        [Authorize(Roles = "SPU")]
        public ActionResult ImportSpeedTableNPC()
        {
            try
            {
                if (Request.Files.Count > 0)
                {
                    using (ModbusSDK modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                    {
                        using (StreamReader file = new StreamReader(Request.Files[0].InputStream))
                        {
                            SPUSDK.ImportSpeedTableNPC(file, modbusSDK);
                        }

                        return View("ImportExport", new StatusModel("Success!"));
                    }
                }
            }
            catch (Exception e)
            {
                return View("ImportExport", new StatusModel("Error: Could not write Speed Tables. Reason: " + e.Message));
            }

            return View("ImportExport", new StatusModel("Error: Could not write Speed Tables. Reason: No File Selected."));
        }

        /// <summary>
        /// Generates the correct export file name for a file and pre-pends it with the export directory
        /// </summary>
        /// <param name="name">The first part of the file name</param>
        /// <returns>The complete file name with path.</returns>
        public static string GetFileNameToUse(string name)
        {
            return String.Format("{2}\\{0}-{1}.csv", DateTime.UtcNow.ToString("yyMMddHHmmss"), name, GetExportDirectory());
        }

        public static string GetFileNameToRegister(string name)
        {
            return String.Format("{2}\\{0}-{1}.txt", TmpSerialNumber, name, GetExportDirectory());
        }

        private static string GetExportDirectory()
        {
            string exportDirectory;
            ModuleConfiguration appConfig = ModuleConfiguration.GetWebConfiguration();

            AppSettingsSection appSettingSection = (AppSettingsSection)appConfig.GetSection("appSettings");

            if (appSettingSection.Settings["ExportFolder"] != null)
            {
                exportDirectory = appSettingSection.Settings["ExportFolder"].Value;
            }
            else
            {
                exportDirectory = @"d:\exports";
            }

            return exportDirectory;
        }

        public ActionResult ImportExport()
        {
            if (User.IsInRole("SPU"))
            {
                return View();
            }
            else
            {
                return View("IncorrectUserLevel");
            }
        }

        public ActionResult ShipInfo()
        {
            ShipInfo info = this.PopulateShipInfoFromDb();
            info.CanSave = GetMethodRolesHelper.CanUserPerformMethod("ShipInfoComplete", User, methodRoles);
            return View(info);
        }

        [Authorize(Roles = "ShipInfo")]
        public ActionResult ShipInfoComplete(ShipInfo model)
        {
            model.CanSave = GetMethodRolesHelper.CanUserPerformMethod("ShipInfoComplete", User, methodRoles);

            if (ModelState.IsValid)
            {                
                try
                {
                    if (System.IO.File.Exists(registFile))
                    {
                        System.IO.File.Delete(registFile);
                    }

                    {
                        // Create the file. 
                        using (FileStream fs = System.IO.File.Create(registFile))
                        {
                            Byte[] info = new System.Text.UTF8Encoding(true).GetBytes(generateRegistration());
                            // Add some information to the file.
                            fs.Write(info, 0, info.Length);
                            fs.Close();
                        }
                    }

                    Encrypt(registFile, registFileEncrypted, passwordEncryptRegInfo);

                    TempEncrypteInfo = string.Empty;

                    // Open the stream and read it back.
                    using (FileStream fs = System.IO.File.OpenRead(registFileEncrypted))
                    {
                        actualEncryptedByte = (int)fs.Length;

                        System.Text.UTF8Encoding temp = new System.Text.UTF8Encoding(true);

                        while (fs.Read(EncryptedByte, 0, (int)fs.Length) > 0)
                        {
                            Console.WriteLine(temp.GetString(EncryptedByte));
                        }
                    }
                    /*
                    using (StreamReader sr = System.IO.File.OpenText(registFileEncrypted))
                    {
                        TempEncrypteInfo = sr.ReadToEnd();
                        sr.Close();
                    }
                   */
                    // Delete the file if it exists. 
                    if (System.IO.File.Exists(registFile))
                    {
                        System.IO.File.Delete(registFile);
                    }
                }
                catch (Exception e)
                {
                    return View("ShipInfo", model);
                }

                TmpSerialNumber = model.SerialNumber;
                this.EditShipInformationInDb(model);
                return RedirectToAction("ShipInfo");
            }
            else
            {
                return View("ShipInfo", model);
            }
        }

        [Authorize(Roles = "SPU")]
        public ActionResult ExportSerialNumberToPC()
        {            
            
            try
            {                
                FileInfo fileInfo = new FileInfo(GetFileNameToRegister("RegInfo"));
                
                //System.IO.File.Copy(registFileEncrypted, fileInfo.FullName);
                
                byte [] localBuffer = new byte[actualEncryptedByte];
                for(int iItem = 0; iItem < actualEncryptedByte; iItem++)
                {
                    localBuffer[iItem] = EncryptedByte[iItem];
                }
                // Open the stream for writing.
                //FileStream fWrite = new FileStream(fileInfo.FullName, FileMode.Create, FileAccess.ReadWrite, FileShare.None, actualEncryptedByte, FileOptions.None);
                using (FileStream fs = fileInfo.OpenWrite())
                {
                    //Byte[] info = new System.Text.UTF8Encoding(true).GetBytes(TempEncrypteInfo);
                    //fs.Length = 
                    // Add some information to the file.
                    fs.SetLength(actualEncryptedByte);
                    fs.Write(localBuffer, 0, actualEncryptedByte);
                }

                //using (StreamWriter streamWriter = fileInfo.CreateText())
                {
                    //streamWriter.WriteLine(TempEncrypteInfo);
                }                                
                                 
                return File(fileInfo.OpenRead(), "text/plain", fileInfo.Name);                
            }
            catch (Exception e)
            {
                return View("ShipInfo");
            }
        }

        private bool EditShipInformationInDb(ShipInfo model)
        {
            List<string> sql = new List<string>();

            sql.Add(
                String.Format(
                "INSERT INTO shipinfo VALUES ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}');",
                model.VesselName,
                model.ImoNo,
                model.ClassificationSociety,
                model.ClassRegisterNo,
                model.Component,
                model.EngineLicenser,
                model.EngineMaker,
                model.EngineType,
                model.EngineSerialNumber
                )
            );

            try
            {
                dbSDK.ExecuteSQLStatements(sql.ToArray());
            }
            catch (SQLiteException)
            {
                //return false;
                throw;
            }

            sql = new List<string>();

            sql.Add(
                String.Format(
                "INSERT INTO xtsSerialNumber VALUES ('{0}');",
                model.SerialNumber
                )
            );

            try
            {
                dbSDK.ExecuteSQLStatements(sql.ToArray());
            }
            catch (SQLiteException)
            {
                //return false;
                throw;
            }
            return true;

        }

        private ShipInfo PopulateShipInfoFromDb()
        {
            ShipInfo result = new ShipInfo();

            using (DbConnection conn = dbSDK.GetDbConnection())
            {
                using (DbDataReader reader = dbSDK.Select(conn, "rowid, * FROM shipinfo"))
                {
                    if (reader.Read())
                    {
                        //result = new ShipInfo()
                        {
                            result.VesselName = reader.GetString(reader.GetOrdinal("VesselName"));
                            result.ImoNo = reader.GetString(reader.GetOrdinal("ImoNo"));
                            result.ClassificationSociety = reader.GetString(reader.GetOrdinal("ClassificationSociety"));
                            result.ClassRegisterNo = reader.GetString(reader.GetOrdinal("ClassRegisterNo"));
                            result.Component = reader.GetString(reader.GetOrdinal("Component"));
                            result.EngineLicenser = reader.GetString(reader.GetOrdinal("EngineLicenser"));
                            result.EngineMaker = reader.GetString(reader.GetOrdinal("EngineMaker"));
                            result.EngineType = reader.GetString(reader.GetOrdinal("EngineType"));
                            result.EngineSerialNumber = reader.GetString(reader.GetOrdinal("EngineSerialNumber"));
                        };
                    }
                }
                using (DbDataReader reader = dbSDK.Select(conn, "rowid, * FROM xtsSerialNumber"))
                {
                    if (reader.Read())
                    {
                        //result = new ShipInfo()
                        {                            
                            result.SerialNumber = reader.GetString(reader.GetOrdinal("SerialNumber"));
                            TmpSerialNumber = result.SerialNumber;
                        };
                    }
                    else if (System.IO.File.Exists(@"c:\AMOT\Key\sn.txt"))
                    {
                        try
                        {
                            using (StreamReader sr = new StreamReader(@"c:\AMOT\Key\sn.txt"))
                            {
                                string serialnumber = sr.ReadToEnd();
                                result.SerialNumber = serialnumber;
                                TmpSerialNumber = result.SerialNumber;
                            }
                        }
                        catch (Exception e)
                        {
                            Console.WriteLine(e.Message);
                        }
                    }
                }
                /*
                if (TmpSerialNumber == string.Empty)
                {
                    if (System.IO.File.Exists(@"c:\AMOT\Key\sn.txt"))
                    {
                        try
                        {
                            using (StreamReader sr = new StreamReader(@"c:\AMOT\Key\sn.txt"))
                            {
                                string serialnumber = sr.ReadToEnd();
                                result.SerialNumber = serialnumber;
                                TmpSerialNumber = result.SerialNumber;
                            }
                        }
                        catch (Exception e)
                        {
                            Console.WriteLine(e.Message);
                        }
                    }
                }
                 * */
            }

            return result;
        }

        private class TimeOut
        {
            public int touchedCount = 0;
            public bool isRunning = false;
            public bool timeoutOccur = false;

            public void Monitor()
            {
                this.isRunning = true;
                do
                {
                    Thread.Sleep(30000);
                    touchedCount--;
                } while (touchedCount > 0);

                try
                {
                    using (ModbusSDK modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                    {
                        SPUSDK.SetAlarmTestModeState(modbusSDK, false, "SYSTEM");                       
                    }

                    this.timeoutOccur = true;
                    ExitTestMode = true;
                }
                catch (Exception)
                { 
                    //do nothing
                }

                this.isRunning = false;
            }

        }

        private string  generateRegistration()
        {            
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

            return cpuID;            
        }

        private string GetMacAddress1()
        {
            string macAddresses = string.Empty;

            foreach (NetworkInterface nic in NetworkInterface.GetAllNetworkInterfaces())
            {
                //if (nic.OperationalStatus == OperationalStatus.Up)
                if (nic.GetPhysicalAddress().ToString().Trim() != "")
                {
                    macAddresses += nic.GetPhysicalAddress().ToString();
                    break;
                }
            }

            return macAddresses;
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
            fsOut.Close();
            fsIn.Close();
        }
    }
   
    public class ExportProgress : ProgressIndicator
    {
        public FileInfo ExportFile { get; set; }
    }

    public class ImportProgress : ProgressIndicator
    {
        public HttpPostedFileBase ImportFile { get; set; }
    }

    public class ImpExpProgressResults
    {
        public bool complete = false;
        public bool failed = false;
        public int progress = 0;
        public string error = "";

        public ImpExpProgressResults(ProgressIndicator prog)
        {
            complete = prog.Complete;
            progress = prog.PercentageProgress;
            error = prog.ErrorMessage;
            if ((null == prog.ErrorMessage) || (0 == prog.ErrorMessage.Length))
            {
                failed = false;
            }
            else
            {
                failed = true;
            }
        }
    }
}
