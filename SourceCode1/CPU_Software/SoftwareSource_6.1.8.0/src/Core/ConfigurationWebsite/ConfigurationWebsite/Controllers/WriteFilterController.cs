using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using FBWF;
using ConfigurationWebsite.Models;
using log4net;
using EventLogging;
using DataCollectionSDK;
using Modbus;

namespace ConfigurationWebsite.Controllers
{
    public class WriteFilterController : ApplicationController
    {
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private static Dictionary<string, string[]> methodRoles = GetMethodRolesHelper.GetMethodRoles(typeof(WriteFilterController).GetMethods());

        private void ConfirmPermissionsForModel(WriteFilterModel model)
        {
            model.CanEnableDisableDiskProtection = GetMethodRolesHelper.CanUserPerformMethod("ToggleDiskProtectionStatus", User, methodRoles);
            model.CanReboot = User.IsInRole("Reboot");
        }

        public ActionResult WriteFilterSettings()
        {
            WriteFilterModel model = new WriteFilterModel();
            ConfirmPermissionsForModel(model);
            bool writeFilterStatusCurrent;
            bool writeFilterStatusNext;

            bool diskProtectionStatusCurrent;
            bool diskProtectionStatusNext;

            Fbwfapi.IsEnabled(out writeFilterStatusCurrent, out writeFilterStatusNext);
            Fbwfapi.IsDriveProtected("c:", out diskProtectionStatusCurrent, out diskProtectionStatusNext);

            //Use diskProtectionStatusCurrent and writeFilterStatusCurrent to determine the overall state
            //of the Write Filter right now
            //Use diskProtectionStatusNext and writeFilterStatusNext to determine the overall state
            //of the Write Filter after reboot.
            model.DiskProtectionStatusCurrent = diskProtectionStatusCurrent & writeFilterStatusCurrent;
            model.DiskProtectionStatusNext = diskProtectionStatusNext & writeFilterStatusNext;
            return View(model);
        }

        /// <summary>
        /// This function enables or disables the protection of the operating system
        /// disk.
        /// </summary>
        /// <param name="nextDiskProtectionStatus"></param>
        /// <returns>The Result of the action</returns>
        [Authorize(Roles = "WriteFilterDiskProtection")]
        public ActionResult ToggleDiskProtectionStatus(bool nextDiskProtectionStatus = false)
        {
            //To toggle on and off the operating system protection
            //both write filter and disk protection must be true or false
            logger.DebugFormat("ToggleDiskProtectionStatus called with current next = {0} | Status must be set to: {1}.", nextDiskProtectionStatus, !nextDiskProtectionStatus);
            WriteFilterModel model = new WriteFilterModel();
            ConfirmPermissionsForModel(model);

            if (nextDiskProtectionStatus)
            {
                bool unprotectedDrive = Fbwfapi.UnprotectDrive("c:");
                bool disabledFilter = Fbwfapi.Disable();

                if (!unprotectedDrive)
                {
                    model.Status = "Error: Could not disable Drive protection";
                }
            }
            else
            {
                bool enabledFilter = Fbwfapi.Enable();
                bool protectedDrive = Fbwfapi.ProtectDrive("c:");
                if (!protectedDrive)
                {
                    model.Status = "Error: Could not enable Drive protection";
                }
            }

            bool writeFilterStatusCurrent;
            bool writeFilterStatusNext;

            bool diskProtectionStatusCurrent;
            bool diskProtectionStatusNext;

            Fbwfapi.IsEnabled(out writeFilterStatusCurrent, out writeFilterStatusNext);
            Fbwfapi.IsDriveProtected("c:", out diskProtectionStatusCurrent, out diskProtectionStatusNext);

            model.DiskProtectionStatusCurrent = diskProtectionStatusCurrent;
            model.DiskProtectionStatusNext = diskProtectionStatusNext;

            return View("WriteFilterSettings", model);
        }

        public ActionResult Confirmation(ConfirmationItem item)
        {
            switch(item)
            {
                case ConfirmationItem.Reboot:
                    return View(new ConfirmationModel() { Message = "Are you sure you wish to reboot the server?", ConfirmationItem = item });
                case ConfirmationItem.UnprotectDrive:
                    return View(new ConfirmationModel() { Message = "Are you sure you wish to unprotect the operating system?", ConfirmationItem = item });
            }
            return RedirectToAction("WriteFilterSettings");
        }

        [Authorize(Roles = "WriteFilterDiskProtection, Reboot")]
        public ActionResult ConfirmationYes(ConfirmationItem item)
        {
            //Perform required action
            switch (item)
            {
                case ConfirmationItem.Reboot:
                    if (Roles.IsUserInRole("Reboot")) { UpdateWebsite.RebootHelpers.Restart(); }
                    break; 
                case ConfirmationItem.UnprotectDrive:
                    if (Roles.IsUserInRole("WriteFilterDiskProtection")) { return this.ToggleDiskProtectionStatus(true); }
                    else break;
            }
            //If item is unrecognised, return to settings screen
            return RedirectToAction("WriteFilterSettings");
        }

        public ActionResult ConfirmationNo()
        {
            return RedirectToAction("WriteFilterSettings");
        }

        public ActionResult ClearAlarmList()
        {
            return View(new StatusModel(String.Empty));
        }

        public ActionResult ClearFiringOrder()
        {
            return View(new StatusModel(String.Empty));
        }

        public ActionResult ResetLearningValues()
        {
            return View(new StatusModel(String.Empty));
        }

        public ActionResult ReSetPrewarning()
        {
            return View(new StatusModel(String.Empty));
        }

        [Authorize(Roles = "EngineLearning")]
        public ActionResult ResetLearningValuesComplete()
        {
            try
            {
                using (ModbusSDK mbSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                {
                    int oldTimeout = mbSDK.Timeout;
                    mbSDK.Timeout = 10000;
                    try
                    {
                        SPUSDK.AccessModbus(() =>
                        {
                            mbSDK.WriteSingleRegister(1, 1061, 1);
                        });
                    }
                    catch (SlaveException e)
                    {
                        //If not a timeout exception pass
                        //it up the stack
                        if (e.SlaveExceptionCode != 11)
                        {
                            throw;
                        }
                    }
                    finally
                    {
                        mbSDK.Timeout = oldTimeout;
                    }

                    UInt16[] mbValues = null;
                    SPUSDK.AccessModbus(() =>
                    {
                        mbSDK.WriteSingleRegister(1, 1035, 0);
                        mbSDK.WriteSingleRegister(1, 3000, 0);

                        //Generate array to write
                        mbValues = mbSDK.ReadHoldingRegisters(1, 117, 28);
                        foreach (UInt16 value in mbValues)
                        {
                            SPUSDK.ChangeBitFieldValue(value, 1, false);
                        }
                    });

                    SPUSDK.AccessModbus(() =>
                    {
                        if (mbValues != null)
                        {
                            mbSDK.WriteMultipleRegisters(1, 117, mbValues);
                            mbSDK.WriteSingleRegister(1, 1031, 3);
                        }
                    });
                }

                return View("ResetLearningValues", new StatusModel("Done!"));
            }
            catch (Exception e)
            {
                return View("ResetLearningValues", new StatusModel(String.Format("Failed! Reason: {0}", e.Message)));
            }
        }

        [Authorize(Roles = "EngineLearning")]
        public ActionResult ResetPrewarningComplete()
        {
            try
            {
                using (ModbusSDK mbSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                {
                    try
                    {
                        SPUSDK.AccessModbus(() =>
                        {
                            mbSDK.WriteSingleRegister(1, 1048, 1);
                            EventLog eventLog = new EventLog();
                            eventLog.ResetPrewarning(User.Identity.Name);
                        });
                    }
                    catch (SlaveException e)
                    {
                        //If not a timeout exception pass
                        //it up the stack
                        if (e.SlaveExceptionCode != 11)
                        {
                            throw;
                        }
                    }
                }

                return View("ReSetPrewarning", new StatusModel("Done!"));
            }
            catch (Exception e)
            {
                return View("ReSetPrewarning", new StatusModel(String.Format("Failed! Reason: {0}", e.Message)));
            }
        }

        [Authorize(Roles = "EngineLearning")]
        public ActionResult ClearAlarmListComplete()
        {
            try
            {
                using (ModbusSDK mbSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                {
                    try
                    {
                        SPUSDK.AccessModbus(() =>
                        {
                            mbSDK.WriteSingleRegister(1, 645, 1);
                            EventLog eventLog = new EventLog();
                            eventLog.ClearAlarmList(User.Identity.Name);
                        });
                    }
                    catch (SlaveException e)
                    {
                        //If not a timeout exception pass
                        //it up the stack
                        if (e.SlaveExceptionCode != 11)
                        {
                            throw;
                        }
                    }
                }

                return View("ClearAlarmList", new StatusModel("Done!"));
            }
            catch (Exception e)
            {
                return View("ClearAlarmList", new StatusModel(String.Format("Failed! Reason: {0}", e.Message)));
            }
        }

        [Authorize(Roles = "EngineLearning")]
        public ActionResult ClearFiringOrderComplete()
        {
            try
            {
                using (ModbusSDK mbSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                {
                    try
                    {
                        SPUSDK.AccessModbus(() =>
                        {
                            mbSDK.WriteSingleRegister(1, 2027, 1);
                            EventLog eventLog = new EventLog();
                            eventLog.ClearFiringOrder(User.Identity.Name);
                        });
                    }
                    catch (SlaveException e)
                    {
                        //If not a timeout exception pass
                        //it up the stack
                        if (e.SlaveExceptionCode != 11)
                        {
                            throw;
                        }
                    }
                }

                return View("ClearFiringOrder", new StatusModel("Done!"));
            }
            catch (Exception e)
            {
                return View("ClearFiringOrder", new StatusModel(String.Format("Failed! Reason: {0}", e.Message)));
            }
        }

        public ActionResult SetEngineRunTime()
        {
            EngineRunTimeModel model = new EngineRunTimeModel();
            model.Status = "Could not read Engine Run Time";

            model.CanSave = GetMethodRolesHelper.CanUserPerformMethod("SubmitEngineRunTime", User, methodRoles);

            //Read the engine runtime
            SPUSDK.AccessModbus(() =>
            {
                using (ModbusSDK mbSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                {
                    ushort[] runtimeBuf = mbSDK.ReadHoldingRegisters(1, 2071, 2);
                    model.CurrentEngineRunTime = DataCollectionSDK.ModbusSDK.ModbusToUInt32(runtimeBuf);
                }

                model.Status = string.Empty;
            });

            return View("SetEngineRunTime", model);
        }

        [Authorize(Roles = "SETUP, AMOT, SPU")]
        public ActionResult SubmitEngineRunTime(EngineRunTimeModel model)
        {
            model.Status = "Could not write Engine Run Time";
            model.CanSave = GetMethodRolesHelper.CanUserPerformMethod("SubmitEngineRunTime", User, methodRoles);

            SPUSDK.AccessModbus(() =>
            {
                using (ModbusSDK mbSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                {
                    ushort[] runtimeBuf = DataCollectionSDK.ModbusSDK.Uint32ToModbus(model.NewEngineRunTime);
                    mbSDK.WriteMultipleRegisters(1, 2071, runtimeBuf);
                }

                model.CurrentEngineRunTime = model.NewEngineRunTime;
                model.Status = "Engine Run Time has been updated";
            });

            return View("SetEngineRunTime", model);
        }

        [Authorize(Roles = "SensorSetup")]
        public ActionResult SensorsComplete(SensorsModel model)
        {
            using (ModbusSDK mbSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
            {
                //Read the number of sensors
                ushort numberOfSensors = (ushort)SPUSDK.GetNumberOfSensors(mbSDK);

                try
                {
                    //Get the Sensor Status
                    SPUSDK.AccessModbus(() =>
                    {
                        //Read the enable flag of the sensors
                        ushort[] registerStatus = mbSDK.ReadHoldingRegisters(1, 117, numberOfSensors);
                        ushort[] newRegisterStatus = new ushort[registerStatus.Length];

                        for (int i = 0; i < registerStatus.Length; i++)
                        {
                            newRegisterStatus[i] = registerStatus[i];
                        }

                        for (int i = 0; i < model.Sensors.Count; i++)
                        {
                            try
                            {
                                if (model.Sensors[i].Enabled)
                                {
                                    newRegisterStatus[i] = (ushort)(newRegisterStatus[i] | (1 << 0));
                                }
                                else
                                {
                                    newRegisterStatus[i] = (ushort)(newRegisterStatus[i] & ~(1 << 0));
                                }

                                if (model.Sensors[i].AlarmMasked)
                                {
                                    newRegisterStatus[i] = (ushort)(newRegisterStatus[i] | (1 << 2));
                                }
                                else
                                {
                                    newRegisterStatus[i] = (ushort)(newRegisterStatus[i] & ~(1 << 2));
                                }
                            }
                            catch (IndexOutOfRangeException)
                            { } //Catch it and ignore.  Should never happen
                        }

                        //Now write registers back to SPU
                        mbSDK.WriteMultipleRegisters(1, 117, newRegisterStatus);

                        //Log sensors into event log
                        model.ModbusWorks = true;

                        foreach (Sensor sensor in model.Sensors)
                        {
                            SPUSDK.SetSensorEnable(sensor.SensorId, sensor.Enabled, User.Identity.Name);
                            SPUSDK.SetSensorMasked(sensor.SensorId, sensor.AlarmMasked, User.Identity.Name);

                        }
                    });

                    model.CanSave = GetMethodRolesHelper.CanUserPerformMethod("SensorsComplete", User, methodRoles);
                    model.Status = "Sensors Updated";

                }
                catch (Exception e)
                {
                    model.ExceptionDetails = e.ToString();
                    model.Status = "Sensor Update Failed";
                }
            }
            return View("Sensors", model);
        }

        public ActionResult Sensors()
        {
            SensorsModel model = new SensorsModel();
            model.Sensors = new List<Sensor>();

            model.CanSave = GetMethodRolesHelper.CanUserPerformMethod("SensorsComplete", User, methodRoles);

            //Get number of sensors
            try
            {
                using (ModbusSDK mbSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal, true))
                {
                    //Read the number of sensors
                    ushort numberOfSensors = (ushort)SPUSDK.GetNumberOfSensors(mbSDK);

                    //Get the Sensor Status
                    SPUSDK.AccessModbus(() =>
                    {
                        //Read the enable flag of the sensors
                        ushort[] registerStatus = mbSDK.ReadHoldingRegisters(1, 117, numberOfSensors);
                        for (int i = 0; i < registerStatus.Length; i++)
                        {
                            model.Sensors.Add(new Sensor()
                            {
                                Enabled = SPUSDK.IsSensorEnabled(registerStatus[i]),
                                AlarmMasked = SPUSDK.IsSensorMasked(registerStatus[i]),
                                SensorId = i
                            }
                            );
                        }
                    });

                    model.ModbusWorks = true;

                }

            }
            catch (Exception e)
            {
                //Modbus failed
                model.ModbusWorks = false;

                //Write the exception message to the model so it can be displayed to the user
                model.ExceptionDetails = e.Message;
            }

            return View(model);
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
    }
}
