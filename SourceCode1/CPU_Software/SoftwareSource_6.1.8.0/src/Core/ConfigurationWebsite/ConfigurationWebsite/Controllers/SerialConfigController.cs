/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Configuration;
using System.IO.Ports;
using System.Web.Mvc;
using ConfigurationWebsite.Models;
using HelperClasses;
using SerialConfig;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Globalization;

namespace ConfigurationWebsite.Controllers
{
    public class SerialConfigController : ApplicationController
    {
        public static readonly string ModbusServerConfigFile = "ModbusServerConfigFile";
        private static bool serialConfigModified = false;

        private static bool DateTimeModified = false;

        private static bool canRestartServer = false;
        private static bool HasSubmitted = false;
        private static int Year = 0;
        private static int Month = 0;
        private static int Day = 0;
        private static int Hour = 0;
        private static int Minute = 0;
        private static int Second = 0;

        private static Dictionary<string, string[]> methodRoles = GetMethodRolesHelper.GetMethodRoles(typeof(SerialConfigController).GetMethods());

        /// <summary>
        /// SYSTEMTIME structure with some useful methods
        /// </summary>
        public struct SYSTEMTIME
        {
            public ushort wYear;
            public ushort wMonth;
            public ushort wDayOfWeek;
            public ushort wDay;
            public ushort wHour;
            public ushort wMinute;
            public ushort wSecond;
            public ushort wMilliseconds;

            /// <summary>
            /// Convert form System.DateTime
            /// </summary>
            /// <param name="time"></param>
            public void FromDateTime(DateTime time)
            {
                wYear = (ushort)time.Year;
                wMonth = (ushort)time.Month;
                wDay = (ushort)time.Day;
                wHour = (ushort)time.Hour;
                wMinute = (ushort)time.Minute;
                wSecond = (ushort)time.Second;
            }

            /// <summary>
            /// Convert to System.DateTime
            /// </summary>
            /// <returns></returns>
            public DateTime ToDateTime()
            {
                return new DateTime(wYear, wMonth, wDay, wHour, wMinute, wSecond);
            }
            /// <summary>
            /// STATIC: Convert to System.DateTime
            /// </summary>
            /// <param name="time"></param>
            /// <returns></returns>
            public static DateTime ToDateTime(SYSTEMTIME time)
            {
                return time.ToDateTime();
            }
        }

        //SetLocalTime C# Signature
        [DllImport("Kernel32.dll")]
        public static extern bool SetLocalTime(ref SYSTEMTIME Time);     

        [Authorize(Roles="SerialSettings")]
        public ActionResult SerialConfigComplete(SerialConfigModel model)
        {
            ViewBag.BaudRates = new SelectList(SerialConfigTools.BaudRates);
            ViewBag.PortNames = new SelectList(SerialConfigTools.GetSortedPortNames());
            
            if (!ModelState.IsValid)
            {
                return View("SerialConfig", model);                
            }
            
            SerialConfigTools.WriteNewSerialConfig(model.SpuSerial, model.ExtSerial);
            serialConfigModified = true;

            return RedirectToAction("SerialConfig");    
        }

        [Authorize(Roles = "SerialSettings")]
        public ActionResult RestartServer()
        {
            UpdateWebsite.RebootHelpers.Restart();
            return RedirectToAction("SerialConfig");
        }

        [Authorize(Roles = "SerialSettings")]
        public ActionResult RestartServerAfterTimeChange()
        {
            UpdateWebsite.RebootHelpers.Restart();
            return RedirectToAction("SPUDateTime");
        } 

        public ActionResult SerialConfig()
        {
            
            ViewBag.BaudRates = new SelectList(SerialConfigTools.BaudRates);
            ViewBag.PortNames = new SelectList(SerialConfigTools.GetSortedPortNames());

            SerialConfigModel model = new SerialConfigModel();

            model.CanSave = GetMethodRolesHelper.CanUserPerformMethod("SerialConfigComplete", User, methodRoles);
            model.CanReboot = GetMethodRolesHelper.CanUserPerformMethod("RestartServer", User, methodRoles);

            ModuleConfiguration config = ConfigurationHelper.GetWebConfiguration(ModbusServerConfigFile);
            AppSettingsSection section = (AppSettingsSection)config.GetSection("modbusServer");

            SerialConfigData spuSerial = new SerialConfigData();
            SerialConfigData extSerial = new SerialConfigData();

            SerialConfigTools.ReadSerialConfig(out spuSerial, out extSerial);

            model.SpuSerial = spuSerial;
            model.ExtSerial = extSerial;

            model.ConfigModified = serialConfigModified;

            return View(model);
        }

        [Authorize(Roles = "SerialSettings")]
        public ActionResult ChangeSPUTime(SPUTimeModel model)
        {
            HasSubmitted = true;

            if (!ModelState.IsValid)
            {
                return View("SPUDateTime", model);
            }

            DateTime dateValue;
            /*
            string sDate = DateTime.UtcNow.ToString();
            string sDateTime = (model.Month < 10 ? ("0" + model.Month.ToString()) : model.Month.ToString()) + "/"
                            + (model.Day < 10 ? ("0" + model.Day.ToString()) : model.Day.ToString()) + "/"
                            + model.Year.ToString() + " "
                            + (model.Hour < 10 ? ("0" + model.Hour.ToString()) : model.Hour.ToString()) + ":"
                            + (model.Minute < 10 ? ("0" + model.Minute.ToString()) : model.Minute.ToString()) + ":"
                            + (model.Second < 10 ? ("0" + model.Second.ToString()) : model.Second.ToString());
            */
            string sDateTime = model.Month.ToString() + "/"
                            + model.Day.ToString() + "/"
                            + model.Year.ToString() + " "
                            + model.Hour.ToString() + ":"
                            + model.Minute.ToString() + ":"
                            + model.Second.ToString();

            //sDateTime = "4/25/2013 9:45:23";
            if (DateTime.TryParse(sDateTime, CultureInfo.InvariantCulture, DateTimeStyles.AssumeUniversal | DateTimeStyles.AdjustToUniversal, out dateValue))
            {
                canRestartServer = true;

                //Convert to SYSTEMTIME
                SYSTEMTIME st = new SYSTEMTIME();
                st.FromDateTime(dateValue.ToLocalTime());
                DateTime t = dateValue;
                t = dateValue.ToLocalTime();
                //Call Win32 API to set time
                SetLocalTime(ref st);
            }

            else
            {
                canRestartServer = false;
                Year = model.Year;
                Month = model.Month;
                Day = model.Day;
                Hour = model.Hour;
                Minute = model.Minute;
                Second = model.Second;
            }

            DateTimeModified = true;

            return RedirectToAction("SPUDateTime");

        }
        
        public ActionResult SPUDateTime()
        {
            SPUTimeModel model = new SPUTimeModel();

            model.CanSave = GetMethodRolesHelper.CanUserPerformMethod("ChangeSPUTime", User, methodRoles);
            model.CanReboot = GetMethodRolesHelper.CanUserPerformMethod("RestartServerAfterTimeChange", User, methodRoles);
            model.CanRestartServer = canRestartServer;

            model.ConfigModified = DateTimeModified;
            DateTimeModified = false;

            DateTime t = DateTime.UtcNow;
            Console.WriteLine("\n\nuniversal time is {0} local time.\n\n", DateTime.UtcNow.ToString());

            if (HasSubmitted)
            {
                if (model.CanRestartServer)
                {
                    model.Year = t.Year;
                    model.Month = t.Month;
                    model.Day = t.Day;
                    model.Hour = t.Hour;
                    model.Minute = t.Minute;
                    model.Second = t.Second;
                }
                else
                {
                    model.Year = Year;
                    model.Month = Month;
                    model.Day = Day;
                    model.Hour = Hour;
                    model.Minute = Minute;
                    model.Second = Second;
                }
                HasSubmitted = false;
            }
            else
            {
                model.Year = t.Year;
                model.Month = t.Month;
                model.Day = t.Day;
                model.Hour = t.Hour;
                model.Minute = t.Minute;
                model.Second = t.Second;
            }

            return View(model);
        }
    }
}
