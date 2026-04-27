/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.IO;
using System.Web;
using System.Web.Mvc;
using ConfigurationWebsite.Models;
using DataCollectionSDK;
using Modbus;
using System.Text;
using System.Net;
using Glmmclient;
using System.Threading.Tasks;
using WebServiceObjects;

namespace ConfigurationWebsite.Controllers
{
    public class GlMachineController : ApplicationController
    {
        private DatabaseSDK dbSDK;


        private static Dictionary<string, ProgressIndicator> settingsInProgress = new Dictionary<string, ProgressIndicator>();
        private static Dictionary<string, string[]> methodRoles = GetMethodRolesHelper.GetMethodRoles(typeof(GlMachineController).GetMethods());

        public GlMachineController()
        {
            dbSDK = new DatabaseSDK(ConfigurationHelper.GetDatabasePath(ConfigurationHelper.ConfigurationDb), 5, 100, 66);
            DbUtils.CreateDB(dbSDK);
        }

        public ActionResult GlMachineSettings()
        {
            GlMachineModel model = new GlMachineModel();

            model.CanSave = GetMethodRolesHelper.CanUserPerformMethod("GlMachineSettingsComplete", User, methodRoles);

            using (DbDataReader reader = dbSDK.Select(dbSDK.GetDbConnection(), "* FROM GlMachineSettings;"))
            {
                if (reader.Read())
                {
                    try
                    {
                        model.IpAddress = reader.GetString(reader.GetOrdinal("gl_ipAddress"));
                    }
                    catch (FormatException)
                    {
                        model.IpAddress = string.Empty;
                    }
                    model.LoginName = reader.GetString(reader.GetOrdinal("gl_loginName"));
                    model.Password = reader.GetString(reader.GetOrdinal("gl_password"));
                }
            }
            return View(model);
        }

        [Authorize(Roles="GLMachineSettings")]
        public ActionResult GlMachineSettingsComplete(GlMachineModel model)
        {
            //Recheck the save flag
            model.CanSave = GetMethodRolesHelper.CanUserPerformMethod("GlMachineSettingsComplete", User, methodRoles);

            //Write to db first
            dbSDK.ExecuteSQLStatements(new string[1] 
                { 
                    String.Format("INSERT INTO GlMachineSettings VALUES('{0}','{1}','{2}');", model.IpAddress, model.LoginName, model.Password) 
                });

            ProgressIndicator progress = new ProgressIndicator();
            model.SessionID = Guid.NewGuid().ToString();
            Task.Factory.StartNew(() =>
            {
                VerifyClientSettings(progress,model);
            });

            settingsInProgress.Add(model.SessionID, progress);

            model.Status = "Please wait checking Client Settings...";
            return View("GlMachineSettings", model);
        }

        public JsonResult GetProgress(string sessionID)
        {
            this.ControllerContext.HttpContext.Response.AddHeader("cache-control", "no-cache");

            ProgressIndicator progress = null;

            try
            {
                progress = settingsInProgress[sessionID];

                if (progress.Complete)
                {
                    if ((progress.ErrorMessage != null) && (0 < progress.ErrorMessage.Length))
                    {
                        settingsInProgress.Remove(sessionID);
                    }
                }
            }
            catch (KeyNotFoundException)
            {
                progress = new ProgressIndicator();
                progress.Complete = true;
                progress.ErrorMessage = "Could not find export with matching session ID";
            }

            ImpExpProgressResults result = new ImpExpProgressResults(progress);

            return Json(result, JsonRequestBehavior.AllowGet);
        }

        private static void VerifyClientSettings(ProgressIndicator progress, GlMachineModel model)
        {
            try
            {
                if (!string.IsNullOrEmpty(model.IpAddress))
                {
                    //Then test that data entered is valid
                    using (GLMMClient client = new GLMMClient(model.LoginName, model.Password, model.IpAddress))
                    {
                        client.Login();
                        progress.ErrorMessage = "Gl Machine details saved.";
                    }
                }
                else
                {
                    progress.ErrorMessage = "Gl Machine details have been saved, empty web service address will disable GLMM upload.";
                }
            }
            //If form data not valid, or does not work, inform user
            catch (Exception e)
            {
                if (e is InvalidOperationException)
                {
                    //URL is proably wrong
                    progress.ErrorMessage = "Gl Machine details have been saved, but the username and password you entered could not be authenticated.";
                }
                else if (e is IOException)
                {
                    //URL is proably wrong
                    progress.ErrorMessage = "Gl Machine details have been saved, however please note that the URL that you entered could not be resolved at this time and therefore may be incorrect.";
                }
                else if (e is UnauthorizedAccessException)
                {
                    //Username or password probably wrong
                    progress.ErrorMessage = "Gl Machine details have been saved, however the username or password were rejected by the server. Please verify that they are correct.";
                }
                else if (e is UriFormatException)
                {
                    //URL is wrong
                    progress.ErrorMessage = "Gl Machine details have been saved, however please note that the URL that you entered is not valid.";
                }
                else
                {
                    //Other error
                    progress.ErrorMessage = "Gl Machine details have been saved, however an error occurred. Details: " + e.Message;
                }
            }
            finally
            {
                progress.Complete = true;
            }
        }
    }
}
