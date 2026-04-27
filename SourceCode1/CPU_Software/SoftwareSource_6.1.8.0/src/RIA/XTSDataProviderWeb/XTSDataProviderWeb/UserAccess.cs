/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: Christopher Peerman, 12/04/2012
 */
using System;
using System.Net;
using System.Threading;
using WebServiceObjects;
using System.Collections.Generic;

namespace XTS
{
    public partial class XTSDataProviderWeb
    {
        /// <summary>
        /// Authenticated user
        /// </summary>
        private string auth;

        /// <summary>
        /// The user details for the current login request
        /// </summary>
        private XTSUser loginRequestUser = null;
        /// <summary>
        /// The password of the current login request
        /// </summary>
        private string loginRequestPassword = null;
        /// <summary>
        /// The number of times the current login request has been tried
        /// </summary>
        private int loginRequestRetries = 0;
        /// <summary>
        /// Lock for keeping loginRequest data consistent
        /// </summary>
        private object loginRequestLock = new object();

        /// <summary>
        /// Callback function for user login
        /// </summary>
        /// <param name="data">The data returned by the server</param>
        /// <param name="callback">The callback to indicate that this event is completed</param>
        private void UserLoggedInCallback(IAsyncResult resultObject, object data, XTSResultDelegate callback, params object[] parameters)
        {
            bool? cbResult = null;
            lock (this.loginRequestLock)
            {
                auth = null;
                if (data is WebException)
                {
                    System.Diagnostics.Debug.WriteLine("Login failure {0}", ((WebException)data).Message);
                }
                else if (data is string)
                {
                    auth = (string)data;
                }
                if (auth == null)
                {
                    if (this.loginRequestRetries < 2)
                    {
                        this.loginRequestRetries++;
                        XTSWebResultDelegate xtsdelegate = new XTSWebResultDelegate(callback, UserLoggedInCallback);
                        this.serverRequests.Login(xtsdelegate.WebServiceCallback, this.loginRequestUser.Username, MD5Core.GetHashString(this.loginRequestPassword));
                    }
                    else
                    {
                        this.UserData.CurrentUser = null;
                        this.loginRequestRetries = 0;
                        this.loginRequestPassword = null;
                        this.loginRequestUser = null;
                        cbResult = false;
                    }
                }
                else
                {
                    this.UserData.CurrentUser = this.loginRequestUser;
                    this.loginRequestRetries = 0;
                    this.loginRequestPassword = null;
                    this.loginRequestUser = null;
                    cbResult = true;
                }
            }
            if (cbResult.HasValue)
            {
                callback(cbResult.Value);
            }
        }

        /// <summary>
        /// Compares the password provided with that of the user specified.
        /// </summary>
        /// <remarks>Because data providers will perform this in different ways, either
        /// from local data, or communicating with a server, it needs to be
        /// implemented in the data provider and not in the XTSUser class</remarks>
        /// <param name="user">User to check the password of</param>
        /// <param name="password">The password to verify</param>
        /// <param name="callback">Callback function for when the operation has completed</param>
        public void UserLogOn(XTSUser user, string password, XTSResultDelegate callback)
        {
            // Check if we're not currently trying to login a user
            if (this.loginRequestUser == null)
            {
                lock (this.loginRequestLock)
                {

                    this.loginRequestRetries = 0;
                    this.loginRequestUser = user;
                    this.loginRequestPassword = password;

                    XTSWebResultDelegate xtsdelegate = new XTSWebResultDelegate(callback, UserLoggedInCallback);
                    this.serverRequests.Login(xtsdelegate.WebServiceCallback, user.Username, MD5Core.GetHashString(password));
                }
            }
            else
            {
                System.Diagnostics.Debug.WriteLine("Login failure: Login currently in progress");
                callback(false);
            }
        }

        /// <summary>
        /// Log off the current user 
        /// </summary>
        /// <param name="callback">Callback function for when the operation has completed</param>
        public void UserLogOff(XTSResultDelegate callback)
        {
            this.UserData.CurrentUser = null;
            if (callback != null)
            {
                callback(true);
            }
        }

        /// <summary>
        /// Start services used by the Web Server for communication
        /// </summary>
        public void Connect(string connectString)
        {
            if (this.serverRequests == null)
            {
                if ((connectString == null) || (connectString == string.Empty))
                {
                    connectString = XTSDataProviderWeb.DefaultServerAddress;
                }
                this.General.Server = connectString;

                this.serverRequests = new ServerRequests(connectString, XTSDataProviderWeb.ServerPort);
                this.webServerRequests = new ServerRequests(connectString, 80);

                if (!this.running)
                {
                    this.running = true;

                    // Assume all threads are dead, as they exit when running is set to false
                    this.enginePollThread = new Thread(new ThreadStart(this.EnginePollThread));
                    this.enginePollThread.Start();
                    this.enginePollThread.Name = "EnginePollThread";

                    this.dynamicPollThread = new Thread(new ThreadStart(this.DynamicPollThread));
                    this.dynamicPollThread.Start();
                    this.dynamicPollThread.Name = "DynamicPollThread";

                    this.eventlogPollThread = new Thread(new ThreadStart(this.EventlogPollThread));
                    this.eventlogPollThread.Start();
                    this.eventlogPollThread.Name = "EventlogPollThread";
                }

                this.serverRequests.GetUsersList(new JsonWebClient.WebServiceObjectsCallback(this.ProcessUsers)); 
                this.serverRequests.GetGroupsList(new JsonWebClient.WebServiceObjectsCallback(this.ProcessGroups));

                //Request the trend configuration slots from the web service.
                GetTrendConfigurations();
            }
        }

        /// <summary>
        /// End services used by the Web Server for communication
        /// </summary>
        public void Disconnect()
        {
            // Close data collection threads
            if (this.running)
            {
                this.running = false;
                
                // Pulse the event to stop the thread
                this.waitForEngineData.Set();

                try
                {
                    if (!this.enginePollThread.Join(5000))
                    {
                        this.enginePollThread.Abort();
                    }
                }
                catch (Exception)
                {
                    this.enginePollThread = null;
                }
            }
            if (this.serverRequests != null)
            {
                this.serverRequests = null;
            }
        }

        /// <summary>
        /// Convert list of users recieved to XTSUsers
        /// </summary>
        private void ProcessUsers(IAsyncResult resultObject, object data)
        {
            int userUpdatetimeOut = (int)TimeSpan.FromMinutes(1).TotalMilliseconds;

            if (data is WebException)
            {
                WebServiceObjectsVoidCallback(resultObject, data);
            }
            if (data is User[])
            {
                this.ClearCommsError();

                List<XTSUser> addUsers = new List<XTSUser>();
                List<XTSUser> deleteUsers = new List<XTSUser>();

                User[] serverUsers = data as User[];
                int userId = 1;
                XTSUser foundUser = null;

                deleteUsers.AddRange(this.users.Users);

                foreach (User user in serverUsers)
                {
                    foundUser = null;

                    foreach (XTSUser xUser in this.users.Users)
                    {
                        if (xUser.Username.CompareTo(user.Username) == 0)
                        {
                            deleteUsers.Remove(xUser);
                            foundUser = xUser;
                            break;
                        }
                    }

                    XTSUser xtsUser = new XTSUser(userId++);
                    xtsUser.Username = user.Username;
                    switch (user.UserGroup)
                    {
                        case "admin":
                            {
                                xtsUser.Permissions = XTSUser.XTSUserLevel.Admin;
                                break;
                            }
                        case "amot":
                            {
                                xtsUser.Permissions = XTSUser.XTSUserLevel.AMOT;
                                break;
                            }
                        case "setup":
                            {
                                xtsUser.Permissions = XTSUser.XTSUserLevel.Setup;
                                break;
                            }
                        case "user":
                            {
                                xtsUser.Permissions = XTSUser.XTSUserLevel.Alarm;
                                break;
                            }
                        default:
                            {
                                xtsUser.Permissions = XTSUser.XTSUserLevel.None;
                                break;
                            }
                    }

                    if (foundUser != null)
                    {
                        // Check that the user permissions have not changed
                        if (foundUser.Permissions != xtsUser.Permissions)
                        {
                            foundUser.Permissions = xtsUser.Permissions;
                        }
                        continue;
                    }

                    xtsUser.Timeout = (long) user.Timeout;
                    addUsers.Add(xtsUser);
                }

                if (addUsers.Count > 0)
                {
                    this.users.Users.AddRange(addUsers);
                }
                if (deleteUsers.Count > 0)
                {
                    foreach (XTSUser user in deleteUsers)
                    {
                        if (user.Username == this.UserData.CurrentUser.Username)
                        {
                            this.UserLogOff(null);
                        }
                    }
                    this.users.Users.RemoveRange(deleteUsers);
                }
            }

            Thread.Sleep(userUpdatetimeOut);

            this.serverRequests.GetUsersList(new JsonWebClient.WebServiceObjectsCallback(this.ProcessUsers));
        }

        /// <summary>
        /// Converts the list of User Groups on the server.
        /// Each group has a list of Permissions they are
        /// allowed to request. 
        /// </summary>
        /// <param name="data"></param>
        private void ProcessGroups(IAsyncResult resultObject, object data)
        {
            int groupsUpdatetimeOut = (int)TimeSpan.FromMinutes(1).TotalMilliseconds;

            if (data is WebException)
            {
                WebServiceObjectsVoidCallback(resultObject, data);
            }
            if (data is UserGroups)
            {
                this.ClearCommsError();

                List<XTSGroup> addGroups = new List<XTSGroup>();
                List<XTSGroup> removeGroups = new List<XTSGroup>();

                UserGroups serverGroups = data as UserGroups;

                removeGroups.AddRange(this.users.GroupPermissions);

                foreach (KeyValuePair<string, List<string>> group in serverGroups)
                {
                    bool groupExisted = false;

                    XTSGroup userGroup = new XTSGroup();
                    
                    switch (group.Key)
                    {
                        case "admin":
                            {
                                userGroup.GroupLevel = XTSUser.XTSUserLevel.Admin;

                                break;
                            }
                        case "amot":
                            {
                                userGroup.GroupLevel = XTSUser.XTSUserLevel.AMOT;
                                break;
                            }
                        case "setup":
                            {
                                userGroup.GroupLevel = XTSUser.XTSUserLevel.Setup;
                                break;
                            }
                        case "user":
                            {
                                userGroup.GroupLevel = XTSUser.XTSUserLevel.Alarm;
                                break;
                            }
                        default:
                            {
                                userGroup.GroupLevel = XTSUser.XTSUserLevel.None;
                                break;
                            }
                    }

                    foreach(string permission in group.Value)
                    {
                        userGroup.GroupPermissions.Add(permission); 
                    }

                    foreach (XTSGroup existingGroup in this.users.GroupPermissions)
                    {
                        if (existingGroup.GroupLevel == userGroup.GroupLevel)
                        {
                            existingGroup.GroupPermissions = userGroup.GroupPermissions;
                            groupExisted = true;
                            removeGroups.Remove(existingGroup);
                            break;
                        }
                    }

                    if (groupExisted == false)
                    {
                        addGroups.Add(userGroup);                        
                    }
                }

                if (addGroups.Count > 0)
                {
                    this.users.GroupPermissions.AddRange(addGroups);
                }
                if (removeGroups.Count > 0)
                {
                    this.users.GroupPermissions.AddRange(removeGroups);
                }
            }

            Thread.Sleep(groupsUpdatetimeOut);

            this.serverRequests.GetGroupsList(new JsonWebClient.WebServiceObjectsCallback(this.ProcessGroups)); 
        }
    }
}
