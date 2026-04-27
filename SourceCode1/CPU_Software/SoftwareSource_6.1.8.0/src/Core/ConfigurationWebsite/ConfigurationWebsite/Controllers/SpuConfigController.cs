/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.IO;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using System.Reflection;
using ConfigurationWebsite.Models;
using DataCollectionSDK;
using Modbus;
using System.Threading.Tasks;
using System.Runtime.Caching;
using System.Web.Configuration;
using System.Configuration;
using HelperClasses;
using System.Linq;
using log4net;
using EventLogging;


namespace ConfigurationWebsite.Controllers
{
    [System.Web.Mvc.OutputCache(NoStore = true, Duration = 0, VaryByParam = "*")]
    public class SpuConfigController : ApplicationController
    {
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private DatabaseSDK dbSDK;
        private static Dictionary<string, ProgressModel> inProgress = new Dictionary<string, ProgressModel>();
        private static Dictionary<string, string[]> methodRoles = GetMethodRolesHelper.GetMethodRoles(typeof(SpuConfigController).GetMethods());
        private static Dictionary<int, ConfigRecord> dbConfigRecord = new Dictionary<int, ConfigRecord>();
        
        /// <summary>
        /// The header that is found in the top of a SPU configuration file
        /// </summary>
        private readonly string SpuFileHeader = "SPU_FILE";

        /// <summary>
        /// The Header for the table of configuration values
        /// </summary>
        private readonly string SPUTableHeader = "Name,Register,Description,Value,Control,DataType,MinLimit,MaxLimit,Level";

        public SpuConfigController()
        {
            dbSDK = new DatabaseSDK(ConfigurationHelper.GetDatabasePath(ConfigurationHelper.ConfigurationDb), 5, 100, 66);
            DbUtils.CreateDB(dbSDK);
        }        

        private void ConfirmPermissionsForModel(ModbusAccessModel model)
        {
            model.CanRead = GetMethodRolesHelper.CanUserPerformMethod("ModbusAccessRead", User, methodRoles);
            model.CanWrite = GetMethodRolesHelper.CanUserPerformMethod("ModbusAccessWrite", User, methodRoles);
        }

        public ActionResult ModbusAccess()
        {
            ModbusAccessModel model = new ModbusAccessModel();

            ConfirmPermissionsForModel(model);

            return View(model);
        }

        public ActionResult ModbusAccessRead(ModbusAccessModel model)
        {
            ConfirmPermissionsForModel(model);

            if (ModelState.IsValidField("StartReg") && ModelState.IsValidField("NoOfRegistersToRead"))
            {
                //Clear modelstate to prevent errors from showing up for Write section
                ModelState.Clear();

                try
                {
                    using (ModbusSDK mbSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                    {
                        model.Values = mbSDK.ReadHoldingRegisters(1, model.StartReg, model.NoOfRegistersToRead);
                    }
                }
                catch (Exception e)
                {
                    model.Error = e.Message;
                }
            }
            return View("ModbusAccess", model);
        }

        [Authorize(Roles = "SPU")]
        public ActionResult ModbusAccessWrite(ModbusAccessModel model)
        {
            ConfirmPermissionsForModel(model);

            if (ModelState.IsValidField("WriteReg") && ModelState.IsValidField("WriteValue"))
            {
                //Clear modelstate to prevent errors from showing up for Read section
                ModelState.Clear();

                try
                {
                    using (ModbusSDK mbSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                    {
                        mbSDK.WriteSingleRegister(1, model.WriteReg, model.WriteValue);
                    }
                    model.Error = String.Format("Written value {0} to register {1}", model.WriteValue, model.WriteReg);
                }
                catch (Exception e)
                {
                    model.Error = "Error: " + e.Message;
                }
            }

            return View("ModbusAccess", model);
        }

        public ActionResult SPU()
        {
            ProgressModel progress = new ProgressModel("Reading SPU Settings");

            progress.SessionId = Guid.NewGuid().ToString();
            inProgress.Add(progress.SessionId, progress);

            ConfigRecordModel model = new ConfigRecordModel();

            Task.Factory.StartNew(() =>
            {
                try
                {
                    model = CreateDefaultModel(progress);
                    progress.PercentageProgress = 100;
                    progress.Model = model;
                    progress.Complete = true;
                }
                catch (Exception e)
                {
                    logger.InfoFormat("Reading form SPU Caught Exception {0}", e);
                    progress.Model = model;
                    progress.PercentageProgress = 100;
                    progress.ErrorMessage = string.Format("Failed to read SPU settings. {0}", e.Message);
                }
            });

            return View("Progress", progress);
        }

        [Authorize(Roles = "AMOT")]
        public ActionResult Add()
        {
            ViewBag.UiControls = new SelectList(Enum.GetNames(typeof(UiControl)));
            ViewBag.DataTypes = new SelectList(Enum.GetNames(typeof(SPUDataType)));
            ViewBag.UserFunctions = new SelectList(Roles.GetAllRoles(), "SPU");
            return View(new ConfigRecord());
        }

        [Authorize(Roles = "AMOT")]
        public ActionResult AddSubmitted(ConfigRecord model)
        {
            bool extraValidationPass = true;

            if (model.MinLimit > model.MaxLimit)
            {
                ModelState.AddModelError("MinLimit", new ArgumentOutOfRangeException("MinLimit cannot be greater than MaxLimit"));
                extraValidationPass = false;
            }

            if (model.Value > model.MaxLimit)
            {
                ModelState.AddModelError("Value", new ArgumentOutOfRangeException("Value cannot be greater than MaxLimit"));
                extraValidationPass = false;
            }

            if (model.Value < model.MinLimit)
            {
                ModelState.AddModelError("Value", new ArgumentOutOfRangeException("Value cannot be less than MinLimit"));
                extraValidationPass = false;
            }

            switch (model.Type)
            {
                case SPUDataType.ULONG:
                    if ((model.MaxLimit > UInt32.MaxValue) || (model.MaxLimit < UInt32.MinValue))
                    {
                        ModelState.AddModelError("MaxLimit", new ArgumentOutOfRangeException("Max Limit is not valid for this data type"));
                        extraValidationPass = false;
                    }
                    if ((model.MinLimit > UInt32.MaxValue) || (model.MinLimit < UInt32.MinValue))
                    {
                        ModelState.AddModelError("MinLimit", new ArgumentOutOfRangeException("Min Limit is not valid for this data type"));
                        extraValidationPass = false;
                    }
                    break;
                case SPUDataType.LONG:
                    if ((model.MaxLimit > Int32.MaxValue) || (model.MaxLimit < Int32.MinValue))
                    {
                        ModelState.AddModelError("MaxLimit", new ArgumentOutOfRangeException("Max Limit is not valid for this data type"));
                        extraValidationPass = false;
                    }
                    if ((model.MinLimit > Int32.MaxValue) || (model.MinLimit < Int32.MinValue))
                    {
                        ModelState.AddModelError("MinLimit", new ArgumentOutOfRangeException("Min Limit is not valid for this data type"));
                        extraValidationPass = false;
                    }
                    break;
                case SPUDataType.INT:
                    if ((model.MaxLimit > Int16.MaxValue) || (model.MaxLimit < Int16.MinValue))
                    {
                        ModelState.AddModelError("MaxLimit", new ArgumentOutOfRangeException("Max Limit is not valid for this data type"));
                        extraValidationPass = false;
                    }
                    if ((model.MinLimit > Int16.MaxValue) || (model.MinLimit < Int16.MinValue))
                    {
                        ModelState.AddModelError("MinLimit", new ArgumentOutOfRangeException("Min Limit is not valid for this data type"));
                        extraValidationPass = false;
                    }
                    break;
                case SPUDataType.UINT:
                /* NO BREAK */
                default:
                    if ((model.MaxLimit > UInt16.MaxValue) || (model.MaxLimit < UInt16.MinValue))
                    {
                        ModelState.AddModelError("MaxLimit", new ArgumentOutOfRangeException("Max Limit is not valid for this data type"));
                        extraValidationPass = false;
                    }
                    if ((model.MinLimit > UInt16.MaxValue) || (model.MinLimit < UInt16.MinValue))
                    {
                        ModelState.AddModelError("MinLimit", new ArgumentOutOfRangeException("Min Limit is not valid for this data type"));
                        extraValidationPass = false;
                    }
                    break;
            }

            //If model data is valid
            if ((ModelState.IsValid) && extraValidationPass && (Request.IsAuthenticated))
            {
                //Add data in model to db
                if (DbUtils.AddNewRecordToDb(dbSDK, model, "config", User.Identity.Name))
                {
                    return RedirectToAction("SPU");
                }
            }

#if false
            if (model.UiControl == UiControl.ListBox)
            {
                List<int> range = new List<int>();
                for (int i = model.MinLimit; i <= model.MaxLimit; i++)
                {
                    range.Add(i);
                }
                model.PossibleValues = new SelectList(range);
            }
            else
            {
                model.PossibleValues = null;
            }
#endif
            ViewBag.DataTypes = new SelectList(Enum.GetNames(typeof(SPUDataType)));
            ViewBag.UiControls = new SelectList(Enum.GetNames(typeof(UiControl)));
            ViewBag.UserFunctions = new SelectList(Roles.GetAllRoles(), "SPU");
            return View("Add", model);
        }       

        public ActionResult Edit(int register)
        {
            //Populate an edit model with the correct values
            ConfigRecord model = DbUtils.PopulateConfigRecordFromDb(dbSDK, register);
            model.Status = Status.NoChange;

            if (model.UiControl == UiControl.ListBox)
            {
                List<Int64> range = new List<Int64>();
                for (Int64 i = model.MinLimit; i <= model.MaxLimit; i++)
                {
                    range.Add(i);
                }
                model.PossibleValues = new SelectList(range);
            }
            else
            {
                model.PossibleValues = null;
            }

            ViewBag.UiControls = new SelectList(Enum.GetNames(typeof(UiControl)));
            return View(model);
        }

        public ActionResult EditComplete(ConfigRecord model)
        {
            //If model data is valid
            if ((ModelState.IsValid) && (Request.IsAuthenticated))
            {
                if (model.Value > model.MaxLimit)
                {
                    ModelState.AddModelError("Value", new ArgumentOutOfRangeException("Value cannot be greater than MaxLimit"));
                }
                else if (model.Value < model.MinLimit)
                {
                    ModelState.AddModelError("Value", new ArgumentOutOfRangeException("Value cannot be less than MinLimit"));
                }
                else
                {
                    //Add data in model to db
                    if (DbUtils.UpdateFieldInRecord(dbSDK, model, User.Identity.Name))
                    {
                        return RedirectToAction("SPU");
                    }
                }
            }

            if (model.UiControl == UiControl.ListBox)
            {
                List<Int64> range = new List<Int64>();
                for (Int64 i = model.MinLimit; i <= model.MaxLimit; i++)
                {
                    range.Add(i);
                }
                model.PossibleValues = new SelectList(range);
            }
            else
            {
                model.PossibleValues = null;
            }

            ViewBag.UiControls = new SelectList(Enum.GetNames(typeof(UiControl)));
            return View("Edit", model);
        }

        [Authorize(Roles = "AMOT")]
        public ActionResult Delete(int register)
        {
            //Populate an edit model with the correct values
            ConfigRecord model = DbUtils.PopulateConfigRecordFromDb(dbSDK, register);
            return View(model);
        }

        [Authorize(Roles = "AMOT")]
        public ActionResult DeleteYes(int rowid)
        {
            DbUtils.DeleteRecord(dbSDK, rowid);
            return RedirectToAction("SPU");
        }

        [Authorize(Roles = "SPU")]
        public ActionResult ReadFromSPU()
        {
            ProgressModel progress = new ProgressModel("Reading settings from SPU");
            progress.SessionId = Guid.NewGuid().ToString();
            inProgress.Add(progress.SessionId, progress);

            Task.Factory.StartNew(() =>
            {
                ConfigRecordModel model = new ConfigRecordModel();

                try
                {
                    model.CanEdit = GetMethodRolesHelper.CanUserPerformMethod("Edit", User, methodRoles);
                    model.CanDelete = GetMethodRolesHelper.CanUserPerformMethod("Delete", User, methodRoles);
                    model.CanAdd = GetMethodRolesHelper.CanUserPerformMethod("Add", User, methodRoles);
                    model.CanExport = GetMethodRolesHelper.CanUserPerformMethod("ExportSpuFile", User, methodRoles);
                    model.CanImport = GetMethodRolesHelper.CanUserPerformMethod("UploadSpuFile", User, methodRoles);
                    model.CanForceWrite = GetMethodRolesHelper.CanUserPerformMethod("ForceWriteAll", User, methodRoles);
                    model.CanForceWrite = GetMethodRolesHelper.CanUserPerformMethod("ForceWriteAll", User, methodRoles);
                    model.CanWriteChanged = GetMethodRolesHelper.CanUserPerformMethod("WriteChangedRecord", User, methodRoles);

                    List<ConfigRecord> configRecordList = this.PopulateConfigRecordListFromDb(true, progress);
                    model.ConfigRecordList = configRecordList;
                    progress.PercentageProgress = 100;

                    progress.PercentageProgress = 0;
                    progress.Message = "Updating Database";

                    foreach (ConfigRecord record in model.ConfigRecordList)
                    {
                        progress.PercentageProgress++;
                        if (record.TimeLastSetWeb > record.TimeLastSetSpu)
                        {
                            model.Status = "This page contains settings that are newer than value from SPU.";
                        }

                        if (record.Value != record.SpuValue)
                        {
                            model.Status = "This page contains settings that have not been updated on the SPU. " +
                                                    "These have been highlighted in red.";
                        }

                        record.Value = record.SpuValue;
                        DbUtils.UpdateFieldInRecord(dbSDK, record, User.Identity.Name);
                        DbUtils.UpdateFieldInRecord(dbSDK, DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks).ToString(), record.Register, "SPUupdate", "config");

                        record.CanEdit = GetMethodRolesHelper.CanUserPerformRole(record.UserFunction, User);
                    }

                    progress.PercentageProgress = 100;

                    progress.PercentageProgress = 0;
                    progress.Message = "Reloading records from database";
                    model = CreateDefaultModel(progress);
                    progress.PercentageProgress = 100;

                    progress.Complete = true;
                    progress.Model = model;
                }
                catch (Exception e)
                {
                    progress.Model = model;
                    progress.PercentageProgress = 100;
                    progress.ErrorMessage = string.Format("Reading settings from SPU failed. Error: {0}", e.Message);
                    logger.InfoFormat("Reading form SPU Caught Exception {0}", e);
                }
            });

            return View("Progress", progress);
        }

        public JsonResult GetProgress(string sessionId)
        {
            this.ControllerContext.HttpContext.Response.AddHeader("cache-control", "no-cache");

            ProgressModel progress = null;

            try
            {
                progress = inProgress[sessionId];

                if (progress.AutoProgress)
                {
                    if (progress.PercentageProgress == 100)
                    {
                        progress.PercentageProgress = 10;
                    }
                    else
                    {
                        progress.PercentageProgress = progress.PercentageProgress + 10;
                    }
                }
            }
            catch (KeyNotFoundException)
            {
                logger.InfoFormat("Progress request for invalid session {0}", sessionId);
                progress = new ProgressModel(string.Empty);
                progress.PercentageProgress = 100;
                progress.ErrorMessage = string.Format("Background session {0} does not exist.  No progress to get.", sessionId);
                progress.SessionId = string.Empty;
            }

            return Json(progress, JsonRequestBehavior.AllowGet);
        }

        /// <summary>
        /// Methods called by the view when the progress is complete
        /// </summary>
        /// <param name="sessionId">The id of the session that has completed</param>
        /// <returns>The main SPU view populated with the model</returns>
        public ActionResult ProgressComplete(string sessionId)
        {
            ProgressModel progress = null;

            try
            {
                progress = inProgress[sessionId];
                inProgress.Remove(sessionId);
            }
            catch (KeyNotFoundException)
            {
                logger.InfoFormat("Received progress complete for invalid session {0}", sessionId);
            }

            if (progress == null)
            {
                return RedirectToAction("Index", "Home");
            }

            if (progress.Model == null)
            {
                return RedirectToAction("SPU");
            }
            else
            {
                if (progress.ViewToRedirectTo != string.Empty)
                {
                    return View(progress.ViewToRedirectTo, progress.Model);
                }
                else
                {
                    return View("SPU", progress.Model);
                }
            }
        }

        [Authorize(Roles = "SPU, SensorSetup, SETUP, AMOT")]
        public ActionResult ForceWriteAll()
        {
            ProgressModel progress = new ProgressModel("Writing settings to SPU");

            progress.SessionId = Guid.NewGuid().ToString();
            inProgress.Add(progress.SessionId, progress);

            Task.Factory.StartNew(() =>
            {
                try
                {
                    this.Update(true, progress);
                    progress.PercentageProgress = 100;
                    progress.Complete = true;
                }
                catch (Exception e)
                {
                    progress.PercentageProgress = 100;
                    progress.Complete = false;
                    progress.ErrorMessage = string.Format("Sending settings to SPU failed. Error: {0}", e);
                }
            });

            return View("Progress", progress);
        }

        [Authorize(Roles = "SPU, SensorSetup, SETUP, AMOT")]
        public ActionResult WriteChangedRecord()
        {
            ProgressModel progress = new ProgressModel("Writing settings to SPU");
            progress.SessionId = Guid.NewGuid().ToString();
            inProgress.Add(progress.SessionId, progress);

            Task.Factory.StartNew(() =>
                        {
                            try
                            {
                                this.Update(false, progress);
                                progress.PercentageProgress = 100;
                                progress.Complete = true;
                            }
                            catch (Exception e)
                            {
                                progress.PercentageProgress = 100;
                                progress.Complete = false;
                                progress.ErrorMessage = string.Format("Sending settings to SPU failed. Error: {0}", e);
                            }
                        });

            return View("Progress", progress);
        }

        [Authorize(Roles = "AMOT")]
        public ActionResult UploadSpuFile(HttpPostedFileBase SpuFile)
        {
            if (SpuFile == null)
            {
                return RedirectToAction("SPU");
            }

            ProgressModel progress = new ProgressModel("Importing settings from a file");
            progress.SessionId = Guid.NewGuid().ToString();
            inProgress.Add(progress.SessionId, progress);

            Task.Factory.StartNew(() =>
            {
                ConfigRecordModel result = new ConfigRecordModel();
                string line = string.Empty;
                int lineNumber = 0;

                try
                {
                    result.ConfigRecordList = new List<ConfigRecord>();
                    //Get the file stream and parse the file
                    using (StreamReader file = new StreamReader(SpuFile.InputStream))
                    {
                        //Find the first line that is not the file header
                        while (!file.EndOfStream)
                        {
                            lineNumber++;
                            if (!file.ReadLine().Contains(this.SpuFileHeader))
                            {
                                break;
                            }
                        }

                        progress.PercentageProgress = 1;

                        while (!file.EndOfStream)
                        {
                            progress.PercentageProgress = progress.PercentageProgress + 5;
                            line = file.ReadLine();
                            lineNumber++;
                            //Check if line is a line of SPU parameters
                            if (line != string.Empty && line != SPUTableHeader)
                            {
                                result.ConfigRecordList.Add(new ConfigRecord(line));
                            }
                        }

                        progress.PercentageProgress = 100;
                    }

                    progress.Message = "Importing settings";
                    progress.PercentageProgress = 0;
                    //Check older temp table is deleted
                    DbUtils.DropTempTable(dbSDK);

                    //Create a new temp table
                    DbUtils.CreateDB(dbSDK, "temp");

                    ObjectCache spuCache = MemoryCache.Default;

                    int progressCount = 0;
                    //Write data to a temporary table in the database
                    foreach (ConfigRecord record in result.ConfigRecordList)
                    {
                        spuCache.Remove(record.Register.ToString());
                        ConfigRecord tmpRecord;
                        if (dbConfigRecord.ContainsKey(record.Register))
                        {
                            if (dbConfigRecord.TryGetValue(record.Register, out tmpRecord))
                            {
                                DbUtils.AddNewRecordToDb(dbSDK, record, "temp", User.Identity.Name, DatabaseSDK.ConvertToUnixTimestamp(tmpRecord.TimeLastSetSpu.Ticks));
                            }
                            else
                            {
                                DbUtils.AddNewRecordToDb(dbSDK, record, "temp", User.Identity.Name, 0);
                            }                            
                        }
                        else
                        {
                            DbUtils.AddNewRecordToDb(dbSDK, record, "temp", User.Identity.Name, 0);
                        } 
                        progress.PercentageProgress = ((progressCount * 100) / result.ConfigRecordList.Count);
                        progressCount++;
                    }

                    progress.PercentageProgress = 100;
                    progress.ViewToRedirectTo = "SpuFileAddConfirm";
                    progress.Complete = true;
                    progress.Model = result;
                }
                catch (Exception e)
                {
                    ConfigRecordModel model = CreateDefaultModel(progress);
                    model.ConfigRecordList = new List<ConfigRecord>();
                    model.Status = "Error: Could not import file. Reason: " + e.Message + " At line " + lineNumber + " in the import file";
                    progress.PercentageProgress = 100;
                    progress.Model = model;
                    progress.Complete = true;
                    logger.InfoFormat("Reading form SPU Caught Exception {0}", e);
                }

            });

            return View("Progress", progress);
        }

        [Authorize(Roles = "SPU")]
        public ActionResult ExportSpuFile()
        {
            ProgressModel progress = new ProgressModel("Reading settings from the database");
            progress.SessionId = Guid.NewGuid().ToString();
            progress.FileDownload = true;
            inProgress.Add(progress.SessionId, progress);

            ConfigRecordModel model = new ConfigRecordModel();
            Task.Factory.StartNew(() =>
            {


                try
                {
                    model.ConfigRecordList = this.PopulateConfigRecordListFromDb(true, progress);
                    progress.PercentageProgress = 0;

                    progress.Message = "Exporting settings into a file";

                    //Create the file
                    FileInfo fileInfo = new FileInfo(ConfigurationController.GetFileNameToUse("SPU-Config"));
                    progress.ExportFile = fileInfo.FullName;


                    using (StreamWriter streamWriter = fileInfo.CreateText())
                    {
                        //Write file header and key
                        streamWriter.WriteLine(String.Format("[{0}]", this.SpuFileHeader));
                        streamWriter.WriteLine(SPUTableHeader);
                        int progressCount = 0;
                        foreach (ConfigRecord record in model.ConfigRecordList)
                        {
                            streamWriter.WriteLine(string.Format("{7},{0},{1},{2},{3},{4},{5},{6},{8}",
                                                    record.Register,
                                                    record.Description,
                                                    record.Value,
                                                    record.UiControl,
                                                    record.Type,
                                                    record.MinLimit,
                                                    record.MaxLimit,
                                                    record.Name,
                                                    record.UserFunction));

                            progress.PercentageProgress = ((progressCount * 100) / model.ConfigRecordList.Count);
                            progressCount++;
                        }
                    }

                    progress.PercentageProgress = 100;
                    progress.Model = model;
                    progress.Complete = true;
                }
                catch (Exception e)
                {
                    model.Status = "Error: Could not export SPU configs. Reason: " + e.Message;
                    progress.Model = model;
                    progress.Complete = true;
                }
            });

            return View("Progress", progress);
        }

        public ActionResult DownloadPreparedFile(string sessionId)
        {
            FileInfo fileInfo = null;
            try
            {
                fileInfo = new FileInfo(inProgress[sessionId].ExportFile);
                inProgress.Remove(sessionId);
            }
            catch (KeyNotFoundException)
            {
                return RedirectToAction("SPU");
            }

            return File(fileInfo.OpenRead(), "text/csv", fileInfo.Name);
        }

        [Authorize(Roles = "SPU")]
        public ActionResult AddFileConfirmed()
        {
            ProgressModel progress = new ProgressModel("Importing settings from file");
            progress.SessionId = Guid.NewGuid().ToString();
            inProgress.Add(progress.SessionId, progress);
            progress.AutoProgress = true;

            Task.Factory.StartNew(() =>
            {
                try
                {
                    //Get persisted data from temp db table and write to main table
                    DbUtils.WriteTempTableToMainTable(dbSDK);
                    //Clear the temp table
                    DbUtils.DropTempTable(dbSDK);

                    progress.PercentageProgress = 100;
                    progress.Complete = true;
                }
                catch (Exception e)
                {
                    progress.PercentageProgress = 100;
                    progress.Complete = true;
                    progress.Message = string.Format("Updating database failed. Error: {0}", e.Message);
                }
            });

            return View("Progress", progress);
        }

        /// <summary>
        /// Creates a default ConfigRecordModel based on the data in the database
        /// and the current user.
        /// </summary>
        /// <returns>A ConfigRecordModel</returns>
        private ConfigRecordModel CreateDefaultModel(ProgressModel progress)
        {
            ConfigRecordModel model = new ConfigRecordModel();
            model.ConfigRecordList = this.PopulateConfigRecordListFromDb(false, progress);
            if(dbConfigRecord.Count != 0) dbConfigRecord.Clear();

            foreach (ConfigRecord record in model.ConfigRecordList)
            {
                dbConfigRecord.Add(record.Register, record);

                if (record.TimeLastSetWeb > record.TimeLastSetSpu)
                {
                    model.Status = "This page contains settings that are newer than value from SPU.";
                }

                if (record.Value != record.SpuValue)
                {
                    model.Status = "This page contains settings that have not been updated on the SPU. " +
                                            "These have been highlighted in red.";
                }

                record.CanEdit = GetMethodRolesHelper.CanUserPerformRole(record.UserFunction, User);
            }

            model.CanEdit = GetMethodRolesHelper.CanUserPerformMethod("Edit", User, methodRoles);
            model.CanDelete = GetMethodRolesHelper.CanUserPerformMethod("Delete", User, methodRoles);
            model.CanAdd = GetMethodRolesHelper.CanUserPerformMethod("Add", User, methodRoles);
            model.CanExport = GetMethodRolesHelper.CanUserPerformMethod("ExportSpuFile", User, methodRoles);
            model.CanImport = GetMethodRolesHelper.CanUserPerformMethod("UploadSpuFile", User, methodRoles);
            model.CanForceWrite = GetMethodRolesHelper.CanUserPerformMethod("ForceWriteAll", User, methodRoles);
            model.CanForceWrite = GetMethodRolesHelper.CanUserPerformMethod("ForceWriteAll", User, methodRoles);
            model.CanWriteChanged = GetMethodRolesHelper.CanUserPerformMethod("WriteChangedRecord", User, methodRoles);

            return model;
        }

        private List<ConfigRecord> PopulateConfigRecordListFromDb(bool getCurrentModbusValues, ProgressModel progress)
        {
            List<ConfigRecord> result = new List<ConfigRecord>();
            ObjectCache spuCache = MemoryCache.Default;
            ConfigRecord record = null;

            using (DbConnection conn = dbSDK.GetDbConnection())
            {
                Int64 numberOfRecords = 0;
                using (DbDataReader reader = dbSDK.Select(conn, "count(*) from config"))
                {
                    if (reader.HasRows)
                    {
                        reader.Read();
                        numberOfRecords = (Int64)reader[0];
                    }
                }

                if (numberOfRecords == 0)
                {
                    //No records in database so mark progress as 100%
                    progress.PercentageProgress = 100;
                }

                System.Diagnostics.Debug.WriteLine("{0} items stored in the spuCache", spuCache.GetCount());

                try
                {
                    using (ModbusSDK mbSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                    {
                        using (DbDataReader reader = dbSDK.Select(conn, "rowid, * FROM config"))
                        {
                            Int64 progressCount = 0;
                            Int64 spuValue = 0;

                            while (reader.Read())
                            {
                                UInt16[] resultBuffer = null;
                                record = DbUtils.PopulateConfigRecordFromDataReader(reader);

                                progress.PercentageProgress = ((progressCount * 100) / numberOfRecords);
                                progressCount++;

                                if (record != null)
                                {
                                    //Open a modbus connection

                                    try
                                    {
                                        string cacheKey = record.Register.ToString();

                                        //Check the SPU should be read
                                        if (getCurrentModbusValues)
                                        {
                                            spuCache.Remove(cacheKey);
                                        }
                                        else
                                        {
                                            resultBuffer = (UInt16[])spuCache.Get(cacheKey);
                                        }

                                        CacheItemPolicy expiresInPolicy = new CacheItemPolicy();
                                        expiresInPolicy.AbsoluteExpiration = DateTime.Now.AddMinutes(SpuConfigController.CacheExpiryMinutes());

                                        switch (record.Type)
                                        {
                                            case SPUDataType.LONG:

                                                SPUSDK.AccessModbus(() =>
                                                    {
                                                        if (resultBuffer == null)
                                                        {
                                                            SPUSDK.AccessModbus(() =>
                                                            {
                                                                resultBuffer = mbSDK.ReadHoldingRegisters(1, (UInt16)(record.Register), 2);
                                                                spuCache.Add(cacheKey, resultBuffer, expiresInPolicy);
                                                            });
                                                        }
                                                        spuValue = ModbusSDK.ModbusToInt32(resultBuffer);
                                                    });
                                                break;
                                            case SPUDataType.ULONG:
                                                SPUSDK.AccessModbus(() =>
                                                    {
                                                        if (resultBuffer == null)
                                                        {
                                                            SPUSDK.AccessModbus(() =>
                                                            {
                                                                resultBuffer = mbSDK.ReadHoldingRegisters(1, (UInt16)(record.Register), 2);
                                                                spuCache.Add(cacheKey, resultBuffer, expiresInPolicy);
                                                            });
                                                        }
                                                        spuValue = ModbusSDK.ModbusToUInt32(resultBuffer);
                                                    });
                                                break;
                                            case SPUDataType.INT:
                                                SPUSDK.AccessModbus(() =>
                                                    {
                                                        if (resultBuffer == null)
                                                        {
                                                            SPUSDK.AccessModbus(() =>
                                                            {
                                                                resultBuffer = mbSDK.ReadHoldingRegisters(1, (UInt16)(record.Register), 1);
                                                                spuCache.Add(cacheKey, resultBuffer, expiresInPolicy);
                                                            });
                                                        }
                                                        spuValue = BitConverter.ToInt16(BitConverter.GetBytes(resultBuffer[0]), 0);
                                                    });
                                                break;
                                            case SPUDataType.UINT:
                                            /* NO BREAK */
                                            default:
                                                SPUSDK.AccessModbus(() =>
                                                    {
                                                        if (resultBuffer == null)
                                                        {
                                                            SPUSDK.AccessModbus(() =>
                                                            {
                                                                resultBuffer = mbSDK.ReadHoldingRegisters(1, (UInt16)(record.Register), 1);
                                                                spuCache.Add(cacheKey, resultBuffer, expiresInPolicy);
                                                            });
                                                        }
                                                        spuValue = resultBuffer[0];
                                                    });
                                                break;
                                        }
                                    }
                                    catch (SlaveException)
                                    { }
                                }

                                if (record != null)
                                {
                                    record.SpuValue = spuValue;
                                    result.Add(record);
                                }
                            }
                        }
                    }
                }
                catch (Exception e)
                {
                    if (e is Modbus.SlaveException || e is LockTimeoutException)
                    {
                        if (record != null)
                        {
                            progress.ErrorMessage = string.Format("Failed to read SPU register {0}", record.Register);
                        }
                    }
                    else
                    {
                        throw;
                    }
                }
            }

            System.Diagnostics.Debug.WriteLine("{0} items stored in the spuCache", spuCache.GetCount());

            return result;
        }

        /// <summary>
        /// Gets the number of the minutes that should elapse before expiring a item in the cache
        /// </summary>
        /// <returns>The number of minutes that should elapse before expring a item in the cache.(Minimum of 1 minute)</returns>
        static private int CacheExpiryMinutes()
        {
            int expiryMinutes = 30;

            ModuleConfiguration appConfig = ModuleConfiguration.GetWebConfiguration();
            AppSettingsSection appSettingSection = (AppSettingsSection)appConfig.GetSection("appSettings");

            if (appSettingSection.Settings["CacheExpiryMinutes"] != null)
            {
                int.TryParse(appSettingSection.Settings["CacheExpiryMinutes"].Value, out expiryMinutes);
                if (expiryMinutes < 1)
                {
                    expiryMinutes = 1;
                }
            }

            return expiryMinutes;
        }


        /// <summary>
        /// Updates modbus registers with data from the database
        /// </summary>
        /// <param name="forceAll">
        /// If TRUE - Forces all values in database to be written to modbus. 
        /// If FALSE only writes values where last web update occurred more recently than last SPU update
        /// </param>
        private void Update(bool forceAll, ProgressModel progress)
        {
            ObjectCache spuCache = MemoryCache.Default;

            using (DbConnection conn = dbSDK.GetDbConnection())
            {
                Int64 numberOfRecords = 0;
                using (DbDataReader reader = dbSDK.Select(conn, "count(*) from config"))
                {
                    if (reader.HasRows)
                    {
                        reader.Read();
                        numberOfRecords = (Int64)reader[0];
                    }
                }

                if (numberOfRecords == 0)
                {
                    //No records in database so mark progress as 100%
                    progress.PercentageProgress = 100;
                }

                string sql = "* FROM config";

                using (ModbusSDK modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                {
                    using (DbDataReader reader = dbSDK.Select(conn, sql))
                    {
                        Int64 progressCount = 0;
                        UInt16 register = 0;
                        //Iterate records returned
                        while (reader.Read())
                        {
                            //SPU out of date. Get and write new values to modbus
                            register = Convert.ToUInt16(reader.GetInt32(reader.GetOrdinal("Spu_Reg")));
                            string cacheKey = register.ToString();

                            //Check both dates
                            Int64 webUpdateDate = reader.GetInt64(reader.GetOrdinal("WEBupdate"));
                            Int64 spuUpdateDate = reader.GetInt64(reader.GetOrdinal("SPUupdate"));
                            Int64 dbValue = reader.GetInt64(reader.GetOrdinal("Value"));
                            UInt16[] modbusValue = ConvertDbValueToModbusArray(dbValue, (SPUDataType)reader.GetInt32(reader.GetOrdinal("DataType")));
                            UInt16[] spuValue = (UInt16[])spuCache.Get(cacheKey);

                            progress.PercentageProgress = ((progressCount * 100) / numberOfRecords);
                            progressCount++;

                            if (spuValue == null)
                            {
                                SPUSDK.AccessModbus(() =>
                                                       {
                                                           spuValue = modbusSDK.ReadHoldingRegisters(1, register, (ushort)modbusValue.Length);
                                                       });

                            }

                            if ((spuValue == null) || (modbusValue.SequenceEqual(spuValue) == false) || (webUpdateDate > spuUpdateDate) || forceAll)
                            {
                                try
                                {
                                    spuCache.Remove(cacheKey);

                                    logger.InfoFormat("Writing {0} to register {1}", dbValue, register);
                                    System.Diagnostics.Debug.WriteLine("Writing {0} to register {1}", dbValue, register);

                                    SPUSDK.AccessModbus(() =>
                                                   {
                                                       modbusSDK.WriteMultipleRegisters((byte)1, register, modbusValue);
                                                   });
                                    //Set SPUupdate date correctly
                                    DbUtils.UpdateFieldInRecord(dbSDK, DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks).ToString(), register, "SPUupdate", "config");
                                }
                                catch (Exception e)
                                {
                                    logger.DebugFormat("Caught exception {0}, writing to {1} to Register {2}", e.Message, dbValue, register);
                                    
                                    if (e is Modbus.SlaveException || e is LockTimeoutException)
                                    {
                                        progress.ErrorMessage = string.Format("Failed to write value {0} to register {1}", dbValue, register);
                                    }
                                    else
                                    {
                                        throw;
                                    }
                                }
                            }
                            else
                            {
                                System.Diagnostics.Debug.WriteLine("Values are not different Values: SPU({0}), DB({1}), Time: SPU({2}, DB({3})", spuValue, modbusValue, webUpdateDate, spuUpdateDate);
                            }
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Converts a Int64 read from the database into a array for sending using Modbus
        /// </summary>
        /// <param name="value">The Int64 value to convert</param>
        /// <param name="type">The type the value represents</param>
        /// <returns>Any array holding the value in the correct format to send using Modbus</returns>
        private ushort[] ConvertDbValueToModbusArray(long value, SPUDataType type)
        {
            ushort[] modbusArray;

            switch (type)
            {
                case SPUDataType.LONG:
                    modbusArray = ModbusSDK.Int32ToModbus(Convert.ToInt32(value));
                    break;
                case SPUDataType.ULONG:
                    modbusArray = ModbusSDK.Uint32ToModbus(Convert.ToUInt32(Math.Abs(value)));
                    break;
                case SPUDataType.INT:
                    //Convert Int64 to Int16
                    modbusArray = new ushort[1];
                    modbusArray[0] = Convert.ToUInt16(value);
                    break;
                case SPUDataType.UINT:
                /* NO BREAK */
                default:
                    modbusArray = new ushort[1];
                    modbusArray[0] = Convert.ToUInt16(value);
                    break;
            }

            return modbusArray;
        }
    }
}
