/* 
 * XTSUser.cs
 * 
 * User management and permission levels
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 08/03/2012
 */

using System;
using System.Collections.Generic;

namespace XTS
{
    /// <summary>
    /// Class for user management
    /// </summary>
    public class XTSUser : XTSData
    {
        /// <summary>
        /// Different user levels
        /// </summary>
        public enum XTSUserLevel : short
        {
            None = 0,
            Alarm,
            Setup,
            Admin,
            AMOT
        }

        /// <summary>
        /// Internal data for current permissions
        /// </summary>
        private XTSUserLevel userLevel = XTSUserLevel.None;
        /// <summary>
        /// The current permissions that this user has
        /// </summary>
        public XTSUserLevel Permissions
        {
            get
            {
                return this.userLevel;
            }
            set
            {
                this.userLevel = value;
                OnPropertyChanged("Permissions");
            }
        }

        /// <summary>
        /// Internal data for username
        /// </summary>
        private string username;
        /// <summary>
        /// The username of this user
        /// </summary>
        public string Username
        {
            get
            {
                return this.username;
            }
            set
            {
                this.username = value;
                OnPropertyChanged("Username");
            }
        }

        /// <summary>
        /// Internal data for UserID
        /// </summary>
        private int userID;
        /// <summary>
        /// Readonly property for accessing the UserID
        /// </summary>
        public int UserID
        {
            get
            {
                return this.userID;
            }
        }

        /// <summary>
        /// Internal value for Timeout 
        /// </summary>
        private Int64 timeout; 

        /// <summary>
        /// Timeout value for user
        /// </summary>
        public Int64 Timeout
        {
            get
            {
                return this.timeout;
            }
            set
            {
                this.timeout = value;
            }
        }

        /// <summary>
        /// Constructor for setting the User ID
        /// </summary>
        /// <remarks>The user ID can never change once set, so this is the only way to set it</remarks>
        public XTSUser(int userID)
        {
            this.userID = userID;
        }

        #region Overrides
        /// <summary>
        /// Function to summise the user data in a string
        /// </summary>
        /// <returns>The formatted string</returns>
        public override string ToString()
        {
            return String.Format("{0} (id:{1} permissions:{2})", this.username, this.userID, this.userLevel);
        }
        #endregion // Overrides
    }

    public class XTSUserData : XTSData
    {
        /// <summary>
        /// Internal data for group permissions
        /// </summary>
        private List<XTSGroup> groupPermissions = new List<XTSGroup>();
        /// <summary>
        /// Groups and their permissions
        /// </summary>
        public List<XTSGroup> GroupPermissions
        {
            get
            {
                return this.groupPermissions;
            }
        }

        /// <summary>
        /// Internal data for lastPassword
        /// </summary>
        private string lastPassword;
        /// <summary>
        /// The last entered password.  May or may not be valid.
        /// </summary>
        public string LastPassword
        {
            get
            {
                return this.lastPassword;
            }
            set
            {
                this.lastPassword = value;
            }
        }

        /// <summary>
        /// The current logged in user index for the users collection.
        /// </summary>
        /// <remarks>Set to null to have no user logged in</remarks>
        private uint? currentUser;
        /// <summary>
        /// The current logged in user
        /// </summary>
        public XTSUser CurrentUser
        {
            get
            {
                XTSUser user = null;
                if (currentUser != null)
                {
                    user = users[(int) currentUser];
                }
                return user;
            }
            set
            {
                if ((value == null) || (!this.users.Contains(value)))
                {
                    this.currentUser = null;
                }
                else
                {
                    this.currentUser = (uint)users.IndexOf(value);
                }
                OnPropertyChanged("CurrentUser");
            }
        }

        /// <summary>
        /// The internal users collection
        /// </summary>
        private XTSDataCollection<XTSUser> users;
        /// <summary>
        /// The users of the system
        /// </summary>
        public XTSDataCollection<XTSUser> Users
        {
            get
            {
                return this.users;
            }
        }

        public XTSUserData()
        {
            this.users = new XTSDataCollection<XTSUser>();
            this.currentUser = null;
        }
    }
}
