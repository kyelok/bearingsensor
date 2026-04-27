/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Net;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using DataCollectionSDK;
using HelperClasses;
using UserManagement;
using WebServiceObjects;

namespace WebService
{
    public partial class WebService
    {
        private UserManager userManager;

        /// <summary>
        /// Initialises the user authentication
        /// </summary>
        private void InitialiseUsers()
        {
            ModuleConfiguration moduleConfig = ModuleConfiguration.GetApplicationConfiguration();
            DataCollectionConfigurationSection dataCollectionConfig;

            dataCollectionConfig = moduleConfig.GetSection("DataCollectionSDK") as DataCollectionConfigurationSection;
            if (dataCollectionConfig == null)
            {
                dataCollectionConfig = new DataCollectionConfigurationSection();
            }

            userManager = new UserManager(dataCollectionConfig.Database.UsersDb);
        }

        /// <summary>
        /// Called to authenticate a user
        /// </summary>
        /// <returns>true the user is valid, otherwise the user is invalid</returns>
        private bool AuthenticateUserPermissions(string function)
        {
            string authHeader = WebOperationContext.Current.IncomingRequest.Headers[HttpRequestHeader.Authorization];
            
            if (authHeader == null)
            {
                return false;
            }
            else
            {
                return userManager.CheckFunction(authHeader, function);
            }
        }

        /// <summary>
        /// Returns the users name
        /// </summary>
        /// <returns>The users name</returns>
        private string GetUserName()
        {
            string authHeader = WebOperationContext.Current.IncomingRequest.Headers[HttpRequestHeader.Authorization];

            if (authHeader != null)
            {
                return userManager.GetUserNameFromAuth(authHeader);
            }
            else
            {
                throw new ArgumentNullException(authHeader);
            }
        }

        /// <summary>
        /// Logs in the user
        /// </summary>
        /// <param name="username">The username to log in</param>
        /// <param name="password">The password to log in</param>
        /// <returns>Authentication code, or null if not authenticated</returns>
        [OperationContract]
        [WebGet(UriTemplate = "users/login?user={username}&password={password}", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public string LogIn(string username, string password)
        {
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;

            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            try
            {
                string usergroup = null;
                return userManager.Login(username, password, out usergroup);
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }
            return null;
        }

        /// <summary>
        /// Returns a list of users currently configured within the system
        /// </summary>
        /// <returns>Users configured within the system</returns>
        [OperationContract]
        [WebGet(UriTemplate = "users/list", ResponseFormat = WebMessageFormat.Json)]
        public WebServiceObjects.User[] GetUsers()
        {
            string expireHeader;
            expireHeader = DateTime.UtcNow.AddSeconds(60).ToString();
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Expires", expireHeader);

            try
            {
                return userManager.GetUsers().ToArray();
            }
            catch (Exception e)
            {
                log.Error(e.ToString());
            }

            return new User[0];
        }

        /// <summary>
        /// Returns the users reset code
        /// </summary>
        /// <returns>The users reset code</returns>
        [OperationContract]
        [WebGet(UriTemplate = "users/groups", ResponseFormat = WebMessageFormat.Json)]
        public UserGroups GetUserGroups()
        {
            string expireHeader;
            expireHeader = DateTime.UtcNow.AddSeconds(60).ToString();
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Expires", expireHeader);

            try
            {
                return userManager.GetUserGroups();
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }
            return null;
        }

        /// <summary>
        /// Returns the users reset code
        /// </summary>
        /// <returns>The users reset code</returns>
        [OperationContract]
        [WebGet(UriTemplate = "users/reset", ResponseFormat = WebMessageFormat.Json)]
        public Reset GetUsersReset()
        {
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            try
            {
                return new Reset { Code = userManager.GetUsersResetCode(), PasswordsReset = false };
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }
            return null;
        }

        /// <summary>
        /// Sets the reset code
        /// </summary>
        /// <param name="reset">The reset code object</param>
        /// <returns>Reset return object</returns>
        [OperationContract]
        [WebInvoke(UriTemplate = "users/reset", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Reset SetUsersReset(Reset reset)
        {
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            try
            {
                userManager.ResetUserPasswords(Int32.Parse(reset.Code));
                reset.PasswordsReset = true;
                return reset;
            }
            catch (Exception)
            {
                return GetUsersReset();
            }
        }
    }
}
