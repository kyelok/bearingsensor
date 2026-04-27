using WebService;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using WebServiceObjects;

namespace DataRetrieverTest
{
    
    
    /// <summary>
    ///This is a test class for IWebServiceTest and is intended
    ///to contain all IWebServiceTest Unit Tests
    ///</summary>
    [TestClass()]
    public class IWebServiceTest
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


        internal virtual IWebService CreateIWebService()
        {
            // TODO: Instantiate an appropriate concrete class.
            IWebService target = null;
            return target;
        }

        /// <summary>
        ///A test for SetUsersReset
        ///</summary>
        [TestMethod()]
        public void SetUsersResetTest()
        {
            IWebService target = CreateIWebService(); // TODO: Initialize to an appropriate value
            Reset reset = null; // TODO: Initialize to an appropriate value
            Reset expected = null; // TODO: Initialize to an appropriate value
            Reset actual;
            actual = target.SetUsersReset(reset);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetUsersReset
        ///</summary>
        [TestMethod()]
        public void GetUsersResetTest()
        {
            IWebService target = CreateIWebService(); // TODO: Initialize to an appropriate value
            Reset expected = null; // TODO: Initialize to an appropriate value
            Reset actual;
            actual = target.GetUsersReset();
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetUsers
        ///</summary>
        [TestMethod()]
        public void GetUsersTest()
        {
            IWebService target = CreateIWebService(); // TODO: Initialize to an appropriate value
            User[] expected = null; // TODO: Initialize to an appropriate value
            User[] actual;
            actual = target.GetUsers();
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetLiveEngineData
        ///</summary>
        [TestMethod()]
        public void GetLiveEngineDataTest()
        {
            IWebService target = CreateIWebService(); // TODO: Initialize to an appropriate value
            EngineData expected = null; // TODO: Initialize to an appropriate value
            EngineData actual;
            actual = target.GetLiveEngineData();
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetHistoricEngineData
        ///</summary>
        [TestMethod()]
        public void GetHistoricEngineDataTest()
        {
            IWebService target = CreateIWebService(); // TODO: Initialize to an appropriate value
            string end = string.Empty; // TODO: Initialize to an appropriate value
            string span = string.Empty; // TODO: Initialize to an appropriate value
            string CylinderValues = string.Empty; // TODO: Initialize to an appropriate value
            string CylinderDevValues = string.Empty; // TODO: Initialize to an appropriate value
            string CylinderSum = string.Empty; // TODO: Initialize to an appropriate value
            string CylinderMBNSum = string.Empty; // TODO: Initialize to an appropriate value
            string ReferenceValues = string.Empty; // TODO: Initialize to an appropriate value
            string SensorValues = string.Empty; // TODO: Initialize to an appropriate value
            string SensorDevValues = string.Empty; // TODO: Initialize to an appropriate value
            string SLEM = string.Empty; // TODO: Initialize to an appropriate value
            string WaterInOil = string.Empty; // TODO: Initialize to an appropriate value
            string RunTime = string.Empty; // TODO: Initialize to an appropriate value
            string DynAlarm = string.Empty; // TODO: Initialize to an appropriate value
            string RPM = string.Empty; // TODO: Initialize to an appropriate value
            EngineDataCollection expected = null; // TODO: Initialize to an appropriate value
            EngineDataCollection actual;
            actual = target.GetHistoricEngineData(end, span, CylinderValues, CylinderDevValues, CylinderSum, CylinderMBNSum, ReferenceValues, SensorValues, SensorDevValues, SLEM, WaterInOil, RunTime, DynAlarm, RPM);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetEngineAlarms
        ///</summary>
        [TestMethod()]
        public void GetEngineAlarmsTest()
        {
            IWebService target = CreateIWebService(); // TODO: Initialize to an appropriate value
            EngineAlarms expected = null; // TODO: Initialize to an appropriate value
            EngineAlarms actual;
            actual = target.GetEngineAlarms();
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }
    }
}
