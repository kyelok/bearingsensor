using UserManagement;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using WebServiceObjects;
using System.Collections.Generic;
using System.IO;

namespace UserManagerTest
{
    /// <summary>
    ///This is a test class for UserManagerTest and is intended
    ///to contain all UserManagerTest Unit Tests
    ///</summary>
    [TestClass()]
    public class UserManagerTest
    {
        private static readonly string UserManagerDB = "amot_user.db3";

        private TestContext testContextInstance;
        
        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }
                
        /// <summary>
        /// Use TestInitialize to run code before running each test
        /// </summary>
        [TestInitialize()]
        public void UserManagerTestInitialize()
        {
            // We start each test operation with a clean database
            if (File.Exists(UserManagerDB))
            {
                File.Delete(UserManagerDB);
            }
        }
        
        /// <summary>
        /// Use TestCleanup to run code after each test has run
        /// </summary>
        [TestCleanup()]
        public void UserManagerTestCleanup()
        {
        }

        /// <summary>
        ///A test for AuthenticateUser
        ///</summary>
        [TestMethod()]
        public void AuthenticateUserTest()
        {
            UserManager target = new UserManager(UserManagerDB);
            string userGroup, authCode;

            authCode = target.Login("Admin", target.CalculateMD5Hash("twpnkfra"), out userGroup);
            target.CheckFunction(authCode, UserFunctions.AckAlarms);
        }

        /// <summary>
        ///A test for ChangePassword
        ///</summary>
        [TestMethod()]
        public void ChangePasswordTest()
        {
#if false
            UserManager target = new UserManager(UserManagerDB);

            // Create a number of users
            target.CreateUser("Setup", target.CalculateMD5Hash("setuppassword"), UserLevel.Setup);
            target.CreateUser("Admin", target.CalculateMD5Hash("adminpassword"), UserLevel.Admin);
            target.CreateUser("AMOT", target.CalculateMD5Hash("amotpassword"), UserLevel.AMOT);

            // Check we are able to authenticate with the user
            Assert.AreEqual(UserLevel.Setup, target.AuthenticateUser("Setup", target.CalculateMD5Hash("setuppassword")));
            Assert.AreEqual(UserLevel.Admin, target.AuthenticateUser("Admin", target.CalculateMD5Hash("adminpassword")));
            Assert.AreEqual(UserLevel.AMOT, target.AuthenticateUser("AMOT", target.CalculateMD5Hash("amotpassword")));

            // Change a password for each user
            target.ChangePassword("Setup", target.CalculateMD5Hash("newsetuppassword"));
            target.ChangePassword("Admin", target.CalculateMD5Hash("newadminpassword"));
            target.ChangePassword("AMOT", target.CalculateMD5Hash("newamotpassword"));

            // Chack we are able to authenticate using the new password
            Assert.AreEqual(UserLevel.Setup, target.AuthenticateUser("Setup", target.CalculateMD5Hash("newsetuppassword")));
            Assert.AreEqual(UserLevel.Admin, target.AuthenticateUser("Admin", target.CalculateMD5Hash("newadminpassword")));
            Assert.AreEqual(UserLevel.AMOT, target.AuthenticateUser("AMOT", target.CalculateMD5Hash("newamotpassword")));

            // Check we are not able to authenticate using the old password
            Assert.AreNotEqual(UserLevel.Setup, target.AuthenticateUser("Setup", target.CalculateMD5Hash("setuppassword")));
            Assert.AreNotEqual(UserLevel.Admin, target.AuthenticateUser("Admin", target.CalculateMD5Hash("adminpassword")));
            Assert.AreNotEqual(UserLevel.AMOT, target.AuthenticateUser("AMOT", target.CalculateMD5Hash("setuppassword")));
#endif
            Assert.Inconclusive("Test not updated to new schema");
        }

        /// <summary>
        ///A test for ChangeUserLevel
        ///</summary>
        [TestMethod()]
        public void ChangeUserLevelTest()
        {
#if false
            UserManager target = new UserManager(UserManagerDB);
            User user;

            target.CreateUser("Setup", target.CalculateMD5Hash("setuppassword"), UserLevel.Setup);
            target.CreateUser("Admin", target.CalculateMD5Hash("adminpassword"), UserLevel.Admin);
            target.CreateUser("AMOT", target.CalculateMD5Hash("amotuserpassword"), UserLevel.AMOT);

            // Change the level of the user to Setup, check that the level of the user has changed
            user = target.GetUser("Setup");
            Assert.IsNotNull(user);
            Assert.AreEqual(UserLevel.Setup, user.Level);

            target.ChangeUserLevel("Setup", UserLevel.Admin);
            user = target.GetUser("Setup");
            Assert.IsNotNull(user);
            Assert.AreEqual(UserLevel.Admin, user.Level);

            target.ChangeUserLevel("Setup", UserLevel.AMOT);
            user = target.GetUser("Setup");
            Assert.IsNotNull(user);
            Assert.AreEqual(UserLevel.AMOT, user.Level);

            // Change the level of the user to Admin, check that the level of the user has changed
            user = target.GetUser("Admin");
            Assert.IsNotNull(user);
            Assert.AreEqual(UserLevel.Admin, user.Level);

            target.ChangeUserLevel("Admin", UserLevel.Setup);
            user = target.GetUser("Admin");
            Assert.IsNotNull(user);
            Assert.AreEqual(UserLevel.Setup, user.Level);

            target.ChangeUserLevel("Admin", UserLevel.AMOT);
            user = target.GetUser("Admin");
            Assert.IsNotNull(user);
            Assert.AreEqual(UserLevel.AMOT, user.Level);

            // Change the level of the user to AMOT, check that the level of the user has changed
            user = target.GetUser("AMOT");
            Assert.IsNotNull(user);
            Assert.AreEqual(UserLevel.AMOT, user.Level);

            target.ChangeUserLevel("AMOT", UserLevel.Admin);
            user = target.GetUser("AMOT");
            Assert.IsNotNull(user);
            Assert.AreEqual(UserLevel.Admin, user.Level);

            target.ChangeUserLevel("AMOT", UserLevel.Setup);
            user = target.GetUser("AMOT");
            Assert.IsNotNull(user);
            Assert.AreEqual(UserLevel.Setup, user.Level);
#endif
        }

        /// <summary>
        ///A test for CreateUser
        ///</summary>
        [TestMethod()]
        public void CreateUserTest()
        {
#if false
            UserManager target = new UserManager(UserManagerDB);

            // Create a number of users, Check the new user was created, and that password & level are correct
            target.CreateUser("Setup", target.CalculateMD5Hash("setuppassword"), UserLevel.Setup);
            Assert.AreEqual(UserLevel.Setup, target.AuthenticateUser("Setup", target.CalculateMD5Hash("setuppassword")));

            target.CreateUser("Admin", target.CalculateMD5Hash("adminpassword"), UserLevel.Admin);
            Assert.AreEqual(UserLevel.Admin, target.AuthenticateUser("Admin", target.CalculateMD5Hash("adminpassword")));

            target.CreateUser("AMOT", target.CalculateMD5Hash("amotpassword"), UserLevel.AMOT);
            Assert.AreEqual(UserLevel.AMOT, target.AuthenticateUser("AMOT", target.CalculateMD5Hash("amotpassword")));
            
            // Create a new Setup user which already exists, it should fail
            try
            {
                target.CreateUser("Setup", target.CalculateMD5Hash("setuppassword"), UserLevel.Setup);
                target.CreateUser("Admin", target.CalculateMD5Hash("adminpassword"), UserLevel.Admin);
                target.CreateUser("AMOT", target.CalculateMD5Hash("amotuserpassword"), UserLevel.AMOT);
                Assert.Fail("Exception did not get thrown when creating users which already existed");
            }
            catch (Exception)
            {
                // This should happen
            }
#endif
        }

        /// <summary>
        ///A test for DeleteUser
        ///</summary>
        [TestMethod()]
        public void DeleteUserTest()
        {
#if false
            UserManager target = new UserManager(UserManagerDB);

            // Create a number of users
            target.CreateUser("Setup", target.CalculateMD5Hash("setuppassword"), UserLevel.Setup);
            target.CreateUser("Admin", target.CalculateMD5Hash("adminpassword"), UserLevel.Admin);
            target.CreateUser("AMOT", target.CalculateMD5Hash("amotuserpassword"), UserLevel.AMOT);
            
            // Check the Setup user exists and that it can be deleted
            Assert.IsNotNull(target.GetUser("Setup"));
            Assert.IsNotNull(target.GetUsers());
            Assert.AreEqual(3, target.GetUsers().Count);
            
            target.DeleteUser("Setup");
            Assert.IsNull(target.GetUser("Setup"));
            Assert.IsNotNull(target.GetUsers());
            Assert.AreEqual(2, target.GetUsers().Count);

            target.CreateUser("Setup", target.CalculateMD5Hash("setuppassword"), UserLevel.Setup);

            // Check the Setup user exists and that it can be deleted
            Assert.IsNotNull(target.GetUser("Admin"));
            Assert.IsNotNull(target.GetUsers());
            Assert.AreEqual(3, target.GetUsers().Count);

            target.DeleteUser("Admin");
            Assert.IsNull(target.GetUser("Admin"));
            Assert.IsNotNull(target.GetUsers());
            Assert.AreEqual(2, target.GetUsers().Count);

            target.CreateUser("Admin", target.CalculateMD5Hash("adminpassword"), UserLevel.Admin);

            // Check the Setup user exists and that it can be deleted
            Assert.IsNotNull(target.GetUser("AMOT"));
            Assert.IsNotNull(target.GetUsers());
            Assert.AreEqual(3, target.GetUsers().Count);

            target.DeleteUser("AMOT");
            Assert.IsNull(target.GetUser("AMOT"));
            Assert.IsNotNull(target.GetUsers());
            Assert.AreEqual(2, target.GetUsers().Count);

            target.CreateUser("AMOT", target.CalculateMD5Hash("amotpassword"), UserLevel.AMOT);
#endif
        }

        /// <summary>
        ///A test for GetUsers
        ///</summary>
        [TestMethod()]
        public void GetUsersTest()
        {
#if false
            UserManager target = new UserManager(UserManagerDB);

            // Create a number of users
            target.CreateUser("Setup", target.CalculateMD5Hash("setuppassword"), UserLevel.Setup);
            target.CreateUser("Admin", target.CalculateMD5Hash("adminpassword"), UserLevel.Admin);
            target.CreateUser("AMOT", target.CalculateMD5Hash("amotuserpassword"), UserLevel.AMOT);
            
            // Check that we are able to get a list of the users in the database
            List<User> users = target.GetUsers();
            Assert.IsNotNull(users);
            Assert.AreEqual(3, users.Count);

            foreach (User user in users)
            {
                if (user.Username == "Setup")
                    Assert.AreEqual(UserLevel.Setup, user.Level);
                else if (user.Username == "Admin")
                    Assert.AreEqual(UserLevel.Admin, user.Level);
                else if (user.Username == "AMOT")
                    Assert.AreEqual(UserLevel.AMOT, user.Level);
                else
                    Assert.Fail("Unknown user");

                Assert.IsNull(user.Password, "Password should never be returned from database");
            }
#endif
        }

        /// <summary>
        ///A test for GetUsersResetCode
        ///</summary>
        [TestMethod()]
        public void GetUsersResetCodeTest()
        {
            UserManager target = new UserManager(UserManagerDB);

            // Check that we are able to get a users reset code
            string resetKey = target.GetUsersResetCode();
            Assert.IsNotNull(resetKey);

            // Test that the reset key is always the same if the reset code has not been executed
            for (int i = 0; i < 100; i++)
            {
                Assert.AreEqual(resetKey, target.GetUsersResetCode());
            }
        }

        /// <summary>
        ///A test for ResetUserPasswords
        ///</summary>
        [TestMethod()]
        public void ResetUserPasswordsTest()
        {
#if false
            UserManager target = new UserManager(UserManagerDB);

            // Create a number of users in the database
            target.CreateUser("Setup", target.CalculateMD5Hash("setuppassword"), UserLevel.Setup);
            target.CreateUser("Admin", target.CalculateMD5Hash("adminpassword"), UserLevel.Admin);
            target.CreateUser("AMOT", target.CalculateMD5Hash("amotpassword"), UserLevel.AMOT);

            // Get the reset code
            string resetKey = target.GetUsersResetCode();

            // Generate a new reset code
            int amotKey = UserManager.DecryptClientKey(resetKey);

            // Pass in an invalid reset code, it should fail
            try
            {
                target.ResetUserPasswords(12345678);
                Assert.Fail("Invalid user password succeeded");
            }
            catch (Exception)
            {
                // Expected
            }

            // Pass in the good reset code, it should succeed
            target.ResetUserPasswords(amotKey);

            // Check that all users have the default password
            Assert.AreEqual(UserLevel.AMOT, target.AuthenticateUser("AMOT", target.CalculateMD5Hash("amotpassword")));
            Assert.AreEqual(UserLevel.Setup, target.AuthenticateUser("Setup", target.CalculateMD5Hash("password")));
            Assert.AreEqual(UserLevel.Admin, target.AuthenticateUser("Admin", target.CalculateMD5Hash("password")));

            // Check that the reset code cannot be used more than once
            try
            {
                target.ResetUserPasswords(amotKey);
                Assert.Fail("Reset password was accepted more than once");
            }
            catch (Exception)
            {
                // Expected
            }

            // Verify that the reset code is not always the same between resets
            resetKey = target.GetUsersResetCode();
            for (int i = 0; i < 10; i++)
            {
                amotKey = UserManager.DecryptClientKey(resetKey);
                target.ResetUserPasswords(amotKey);

                string newResetKey = target.GetUsersResetCode();
                Assert.AreNotEqual(newResetKey, resetKey);
                resetKey = newResetKey;

                // As the reset key is based on the current time we delay for a second
                System.Threading.Thread.Sleep(1000);
            }
#endif
        }
    }
}
