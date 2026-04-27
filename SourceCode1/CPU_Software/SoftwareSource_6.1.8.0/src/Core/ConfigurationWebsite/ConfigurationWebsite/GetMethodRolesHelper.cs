using System;
using System.Collections.Generic;
using System.Data.Common;
using System.IO;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using System.Security.Principal;
using System.Reflection;
using ConfigurationWebsite.Models;
using DataCollectionSDK;
using Modbus;

namespace ConfigurationWebsite
{
    public class GetMethodRolesHelper
    {
        public static Dictionary<string, string[]> GetMethodRoles(MethodInfo[] methods)
        {
            Dictionary<string, string[]> result = new Dictionary<string,string[]>();
            foreach (MethodInfo method in methods)
            {
                object[] attributes = method.GetCustomAttributes(true);
                ParameterInfo[] parameters = method.GetParameters();

                foreach (object attribute in attributes)
                {
                    if (attribute is System.Web.Mvc.AuthorizeAttribute)
                    {
                        string[] roles = ((System.Web.Mvc.AuthorizeAttribute)attribute).Roles.Split(new char[] { ',' });
                        result.Add(method.Name, roles);
                    }
                }
            }
            return result;
        }

        /// <summary>
        /// Used to determine if a User can Perform the specified method
        /// </summary>
        /// <param name="methodName">The name of the method to check</param>
        /// <param name="user">The user to check</param>
        /// <returns>True if the user can perform the method, otherwise False.</returns>
        public static bool CanUserPerformMethod(string methodName, IPrincipal user, Dictionary<string, string[]> methodsAndRoles)
        {
            bool roleCan = false;

            try
            {
                foreach (string role in methodsAndRoles[methodName])
                {
                    if (user.IsInRole(role))
                    {
                        roleCan = true;
                        break;
                    }
                }
            }
            catch (KeyNotFoundException)
            {
                roleCan = true;
            }

            return roleCan;
        }

        /// <summary>
        /// Method that looks up wether a user can perform a role
        /// </summary>
        /// <param name="role">The role to lookup</param>
        /// <param name="user">The user to check</param>
        /// <returns>True if the user can perform the role, otherwise false</returns>
        public static bool CanUserPerformRole(string role, IPrincipal user)
        {
            return user.IsInRole(role);
        }
    }
}