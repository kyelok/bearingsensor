using System;
using System.Web.Security;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration.Provider;
using System.Web.Hosting;
using System.Xml;
using System.Security.Permissions;
using System.Web;
using UserManagement;
using WebServiceObjects;

namespace ConfigurationWebsite
{
    /// <summary>
    /// Role provider that queries a UserManager for role information.
    /// 
    /// This is a read only provider and does not support modifying roles of users
    /// </summary>
    public class ReadOnlyUserManagerRoleProvider : RoleProvider
    {
        private UserManager userManager = new UserManager(ConfigurationHelper.GetDatabasePath(ConfigurationHelper.UsersDb));

        // RoleProvider properties
        public override string ApplicationName
        {
            get { throw new NotSupportedException(); }
            set { throw new NotSupportedException(); }
        }

        // RoleProvider methods
        public override void Initialize(string name,
            NameValueCollection config)
        {
            // Verify that config isn't null
            if (config == null)
                throw new ArgumentNullException("config");

            // Assign the provider a default name if it doesn't have one
            if (String.IsNullOrEmpty(name))
                name = "ReadOnlyXMLUserManagerRoleProvider";

            // Add a default "description" attribute to config if the
            // attribute doesn't exist or is empty
            if (string.IsNullOrEmpty(config["description"]))
            {
                config.Remove("description");
                config.Add("description", "Read-only User Manager querying role provider");
            }

            // Call the base class's Initialize method
            base.Initialize(name, config);

            // Throw an exception if unrecognized attributes remain
            if (config.Count > 0)
            {
                string attr = config.GetKey(0);
                if (!String.IsNullOrEmpty(attr))
                    throw new ProviderException
                        ("Unrecognized attribute: " + attr);
            }
        }

        public override bool IsUserInRole(string username, string roleName)
        {
            return userManager.GetUserGroups()[userManager.GetUser(username).UserGroup].Contains(roleName);
        }

        public override string[] GetRolesForUser(string username)
        {
            string[] roles = userManager.GetUserGroups()[userManager.GetUser(username).UserGroup].ToArray();
            // Return role names
            return roles;
        }

        public override string[] GetUsersInRole(string roleName)
        {
            List<User> users = userManager.GetUsers();
            UserGroups usrGroups = userManager.GetUserGroups();

            List<string> usersInRole = new List<string>();
            foreach (User user in users)
            {
                if (usrGroups[user.UserGroup].Contains(roleName))
                {
                    usersInRole.Add(user.Username);
                }
            }
            // Return user names
            return usersInRole.ToArray();
        }

        public override string[] GetAllRoles()
        {
            return userManager.Functions;
        }

        public override bool RoleExists(string roleName)
        {
            string[] roles = GetAllRoles();

            foreach (string role in roles)
            {
                if (roleName.Equals(role))
                {
                    return true;
                }
            }
            
            return false;
        }

        public override void CreateRole(string roleName)
        {
            throw new NotSupportedException();
        }

        public override bool DeleteRole(string roleName,
            bool throwOnPopulatedRole)
        {
            throw new NotSupportedException();
        }

        public override void AddUsersToRoles(string[] usernames,
            string[] roleNames)
        {
            throw new NotSupportedException();
        }

        public override string[] FindUsersInRole(string roleName,
            string usernameToMatch)
        {
            throw new NotSupportedException();
        }

        public override void RemoveUsersFromRoles(string[] usernames,
            string[] roleNames)
        {
            throw new NotSupportedException();
        }
    }
}