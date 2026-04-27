using System;
using System.Data.Common;
using System.Web.Mvc;
using System.Web.Security;
using System.Collections.Generic;
using ConfigurationWebsite.Models;
using DataCollectionSDK;
using UserManagement;
namespace ConfigurationWebsite.Controllers
{
    public class AccountController : ApplicationController
    {
        private UserManager userManager;
        private static Dictionary<string, string[]> methodRoles = GetMethodRolesHelper.GetMethodRoles(typeof(AccountController).GetMethods());
        public AccountController()
        {
            userManager = new UserManager(ConfigurationHelper.GetDatabasePath(ConfigurationHelper.UsersDb));
            foreach (string role in userManager.Functions)
            {
                try
                {
                    if (!Roles.RoleExists(role))
                    {
                        Roles.CreateRole(role);
                    }
                }
                catch (Exception e)
                {
                    if (e is ArgumentException || e is ArgumentNullException)
                    {
                        //Invalid data received from usermanager. TODO: should this be logged?
                    }
                    else if (e is System.Configuration.Provider.ProviderException)
                    {
                        //Roles are not enabled in Web.config
                    }
                }
            }
        }

        public ActionResult UserMenu()
        {
            UserList model = new UserList() { Users = userManager.GetUsers() };

            model.CanAdd = GetMethodRolesHelper.CanUserPerformMethod("AddUser", User, methodRoles);
            model.CanDelete = GetMethodRolesHelper.CanUserPerformMethod("DeleteUser", User, methodRoles);
            if (User != null)
            {
                model.CurrentUser = User.Identity.Name;
            }
            else
            {
                model.CurrentUser = string.Empty;
            }

            int numberOfUsers = userManager.CountUsers();
            //Check that there are less then 50 users if the user manager
            if (numberOfUsers > 50)
            {
                model.CanAdd = false;
                model.ErrorMessage = "Warning: Maximum number of users (50) configured.";
            }

            return View(model);
        }

        [Authorize(Roles = "Users")]
        public ActionResult AddUserComplete(UserDetailsModel model)
        {
            try
            {
                if (ModelState.IsValidField("Username") && ModelState.IsValidField("NewPassword") && ModelState.IsValidField("NewPasswordCheck") && ModelState.IsValidField("UserLevel"))
                {
                    //Create the user
                    userManager.CreateUser(model.UserName, userManager.CalculateMD5Hash(model.NewPassword), model.UserGroup, model.TimeOut);
                    //Return user menu screen
                    return RedirectToAction("UserMenu");
                }
            }
            catch (UnauthorizedAccessException)
            {
                //This will get thrown if the User trys to add a duplicate AMOT user.
                //Catch it and output the default model.
            }

            model.UserGroupTypes = userManager.GetUserGroups();
            return View("AddUser", model);
        }

        [Authorize(Roles = "Users")]
        public ActionResult AddUser()
        {
            return View(new UserDetailsModel() { UserGroupTypes = userManager.GetUserGroups() });
        }

        [Authorize(Roles = "Users")]
        public ActionResult DeleteUser(string username)
        {
            try
            {
                //Get the correct user info
                WebServiceObjects.User user = userManager.GetUser(username);
                UserDetailsModel model = new UserDetailsModel { UserName = user.Username, UserGroup = user.UserGroup, UserGroupTypes = userManager.GetUserGroups() };

                return View(model);
            }
            catch (NullReferenceException)
            {
                return RedirectToAction("UserMenu");
            }
        }

        [Authorize(Roles = "Users")]
        public ActionResult DeleteUserComplete(string username)
        {
            try
            {
                userManager.DeleteUser(username);
            }
            catch (UnauthorizedAccessException)
            { } //Ignore

            return RedirectToAction("UserMenu");
        }

        [Authorize(Roles = "Users")]
        public ActionResult EditUserComplete(UserDetailsModel model)
        {
            try
            {
                if (ModelState.IsValidField("Username") && ModelState.IsValidField("NewPassword") && ModelState.IsValidField("NewPasswordCheck") && ModelState.IsValidField("UserLevel"))
                {
                    userManager.ChangePassword(model.UserName, userManager.CalculateMD5Hash(model.NewPassword));
                    userManager.ChangeUserGroup(model.UserName, model.UserGroup);

                    //Set the timeout
                    userManager.ChangeUserTimeOut(model.UserName, model.TimeOut);
                }
                else
                {
                    model.UserGroupTypes = userManager.GetUserGroups();
                    return View("EditUser", model);
                }
            }
            catch (UnauthorizedAccessException)
            {
                //This will get thrown if the User trys to add a duplicate AMOT user.
                //Catch it and output the default model.
                model.UserGroupTypes = userManager.GetUserGroups();
                return View("EditUser", model);
            }

            return RedirectToAction("UserMenu");
        }

        [Authorize(Roles = "Users")]
        public ActionResult EditUser(string username = null)
        {
            try
            {
                if (username == null)
                {
                    return View();
                }
                
                WebServiceObjects.User user = userManager.GetUser(username);

                UserDetailsModel model = new UserDetailsModel() { UserName = user.Username, UserGroup = user.UserGroup, UserGroupTypes = userManager.GetUserGroups(), TimeOut = user.Timeout };

                return View(model);
            }
            catch (NullReferenceException)
            {
                return RedirectToAction("UserMenu");
            }
        }

        //
        // GET: /Account/LogOn

        public ActionResult LogOn()
        {
            return View();
        }

        //
        // POST: /Account/LogOn

        [HttpPost]
        public ActionResult LogOn(LogOnModel model, string returnUrl)
        {
            if (ModelState.IsValid)
            {
                if (this.ValidateUser(model.UserName, model.Password))
                {
                    FormsAuthentication.SetAuthCookie(model.UserName, model.RememberMe);
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ModelState.AddModelError("", "The user name or password provided is incorrect.");
                }
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        private bool ValidateUser(string username, string password)
        {
            string usergroup = null;
            string authCode = null;

            authCode = userManager.Login(username, userManager.CalculateMD5Hash(password), out usergroup);

            return authCode != null;
        }

        /// <summary>
        /// Loads the reset passwords view
        /// </summary>
        /// <returns>The view</returns>
        public ActionResult ResetPasswords()
        {
            UserReset model = new UserReset();
            model.ChallengeKey = userManager.GetUsersResetCode();

            return View("Reset", model);
        }

        /// <summary>
        /// Processes the reset key and returns the
        /// results in a view.
        /// </summary>
        /// <param name="?"></param>
        /// <returns></returns>
        public ActionResult SubmitResetKey(UserReset model)
        {
            bool responseValid = false;

            if (model.ResponseKey != null)
            {
                int key;

                if (int.TryParse(model.ResponseKey, System.Globalization.NumberStyles.HexNumber, System.Globalization.CultureInfo.InvariantCulture, out key))
                {
                    try
                    {
                        userManager.ResetUserPasswords(key);
                        responseValid = true;
                    }
                    catch (InvalidOperationException)
                    {
                        //This will be thrown if the key is invalid
                        responseValid = false;
                    }
                }
            }

            if (responseValid)
            {
                model.Status = "Passwords Reset.";
            }
            else
            {
                model.Status = "Incorrect Key.  Passwords have not been Reset.";
            }

            return View("Reset", model);
        }

        //
        // GET: /Account/LogOff

        public ActionResult LogOff()
        {
            FormsAuthentication.SignOut();

            return RedirectToAction("Index", "Home");
        }
        #region Status Codes
        private static string ErrorCodeToString(MembershipCreateStatus createStatus)
        {
            // See http://go.microsoft.com/fwlink/?LinkID=177550 for
            // a full list of status codes.
            switch (createStatus)
            {
                case MembershipCreateStatus.DuplicateUserName:
                    return "User name already exists. Please enter a different user name.";

                case MembershipCreateStatus.DuplicateEmail:
                    return "A user name for that e-mail address already exists. Please enter a different e-mail address.";

                case MembershipCreateStatus.InvalidPassword:
                    return "The password provided is invalid. Please enter a valid password value.";

                case MembershipCreateStatus.InvalidEmail:
                    return "The e-mail address provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.InvalidAnswer:
                    return "The password retrieval answer provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.InvalidQuestion:
                    return "The password retrieval question provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.InvalidUserName:
                    return "The user name provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.ProviderError:
                    return "The authentication provider returned an error. Please verify your entry and try again. If the problem persists, please contact your system administrator.";

                case MembershipCreateStatus.UserRejected:
                    return "The user creation request has been canceled. Please verify your entry and try again. If the problem persists, please contact your system administrator.";

                default:
                    return "An unknown error occurred. Please verify your entry and try again. If the problem persists, please contact your system administrator.";
            }
        }
        #endregion
    }
}
