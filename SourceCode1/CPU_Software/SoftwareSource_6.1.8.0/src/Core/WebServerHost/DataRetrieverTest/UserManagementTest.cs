using WebService;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using WebServiceObjects;

namespace DataRetrieverTest
{
    
    
    /// <summary>
    ///This is a test class for UserManagementTest and is intended
    ///to contain all UserManagementTest Unit Tests
    ///</summary>
    [TestClass()]
    public class UserManagementTest
    {


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

        #region Additional test attributes
        // 
        //You can use the following additional attributes as you write your tests:
        //
        //Use ClassInitialize to run code before running the first test in the class
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //Use ClassCleanup to run code after all tests in a class have run
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //Use TestInitialize to run code before running each test
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //Use TestCleanup to run code after each test has run
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///A test for SetUsersReset
        ///</summary>
        [TestMethod()]
        public void SetUsersResetTest()
        {
            UserManagement target = new UserManagement(); // TODO: Initialize to an appropriate value
            Reset reset = null; // TODO: Initialize to an appropriate value
            Reset expected = null; // TODO: Initialize to an appropriate value
            Reset actual;
            actual = target.SetUsersReset(reset);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetUsers
        ///</summary>
        [TestMethod()]
        public void GetUsersTest()
        {
            UserManagement target = new UserManagement(); // TODO: Initialize to an appropriate value
            User[] expected = null; // TODO: Initialize to an appropriate value
            User[] actual;
            actual = target.GetUsers();
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for UserManagement Constructor
        ///</summary>
        [TestMethod()]
        public void UserManagementConstructorTest()
        {
            UserManagement target = new UserManagement();
            Assert.Inconclusive("TODO: Implement code to verify target");
        }
    }
}
