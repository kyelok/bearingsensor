using ConfigurationDB;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace ConfigurationDB_TESTS
{
    
    
    /// <summary>
    ///This is a test class for ConfigurationDBOperationsTest and is intended
    ///to contain all ConfigurationDBOperationsTest Unit Tests
    ///</summary>
    [TestClass()]
    public class ConfigurationDBOperationsTest
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
        ///A test for CreateDB
        ///</summary>
        [TestMethod()]
        public void CreateDBTest()
        {
            ConfigurationDBOperations target = new ConfigurationDBOperations("C:\\test_db.db3");
            target.CreateDB();
            Assert.Inconclusive(@"A method that does not return a value cannot be verified. Manually verify existance of 'C:\test_db.db3'.");
        }

        /// <summary>
        ///A test for WriteNewRecordToDatabase
        ///</summary>
        [TestMethod()]
        public void WriteNewRecordToDatabaseTest()
        {
            ConfigurationDBOperations target = new ConfigurationDBOperations("C:\\test_db.db3");
            string[] values = { "117", "1", "'Description is here'", "1", "200", "1330601452", "1330501452" };
            target.WriteNewRecordToDatabase(values);
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }

        /// <summary>
        ///A test for ReadValuesFromDatabase
        ///</summary>
        [TestMethod()]
        public void ReadValuesFromDatabaseTest()
        {
            ConfigurationDBOperations target = new ConfigurationDBOperations("C:\\test_db.db3"); // TODO: Initialize to an appropriate value
            int register = 1000; 
            object[] expected = { (Int64)1000, (Int64)9000, "Description is here", "'CheckBox'", (Int64)200, (Int64)1330601452, (Int64)1330501452 };
            object[] actual;
            actual = target.ReadValueFromDatabase(register);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for ReplaceRecordInDatabase
        ///</summary>
        [TestMethod()]
        public void UpdateFieldInRecordTest()
        {
            ConfigurationDBOperations target = new ConfigurationDBOperations("C:\\test_db.db3"); // TODO: Initialize to an appropriate value
            target.UpdateFieldInRecord("9000", 1000, "Max_Limit");
            Assert.Inconclusive("A method that does not return a value cannot be verified. Record with SPU_ID of 1000 will now have a max limit of 9000");
        }

        [TestMethod()]
        public void UpdateTest()
        {
            ConfigurationDBOperations target = new ConfigurationDBOperations("C:\\test_db.db3");

            target.Update(false);
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }
    }
}
