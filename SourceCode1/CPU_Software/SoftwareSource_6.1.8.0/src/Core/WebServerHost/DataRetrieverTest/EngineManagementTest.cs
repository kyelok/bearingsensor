using WebService;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using WebServiceObjects;

namespace DataRetrieverTest
{
    
    
    /// <summary>
    ///This is a test class for EngineManagementTest and is intended
    ///to contain all EngineManagementTest Unit Tests
    ///</summary>
    [TestClass()]
    public class EngineManagementTest
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
        ///A test for GetHistoricEngineData
        ///</summary>
        [TestMethod()]
        public void GetHistoricEngineDataTest()
        {
            EngineManagement target = new EngineManagement(); // TODO: Initialize to an appropriate value
            string end = string.Empty; // TODO: Initialize to an appropriate value
            int span = 0; // TODO: Initialize to an appropriate value
            bool CylinderValues = false; // TODO: Initialize to an appropriate value
            bool CylinderDevValues = false; // TODO: Initialize to an appropriate value
            bool CylinderSum = false; // TODO: Initialize to an appropriate value
            bool CylinderMBNSum = false; // TODO: Initialize to an appropriate value
            bool ReferenceValues = false; // TODO: Initialize to an appropriate value
            bool SensorValues = false; // TODO: Initialize to an appropriate value
            bool SensorDevValues = false; // TODO: Initialize to an appropriate value
            bool SLEM = false; // TODO: Initialize to an appropriate value
            bool WaterInOil = false; // TODO: Initialize to an appropriate value
            bool RunTime = false; // TODO: Initialize to an appropriate value
            bool DynAlarm = false; // TODO: Initialize to an appropriate value
            bool RPM = false; // TODO: Initialize to an appropriate value
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
            EngineManagement target = new EngineManagement(); // TODO: Initialize to an appropriate value
            EngineAlarms expected = null; // TODO: Initialize to an appropriate value
            EngineAlarms actual;
            actual = target.GetEngineAlarms();
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for EngineManagement Constructor
        ///</summary>
        [TestMethod()]
        public void EngineManagementConstructorTest()
        {
            EngineManagement target = new EngineManagement();
            Assert.Inconclusive("TODO: Implement code to verify target");
        }

        /// <summary>
        ///A test for GetLiveEngineData
        ///</summary>
        [TestMethod()]
        public void GetLiveEngineDataTest()
        {
            EngineManagement target = new EngineManagement(); // TODO: Initialize to an appropriate value
            EngineData expected = null; // TODO: Initialize to an appropriate value
            EngineData actual;
            actual = target.GetLiveEngineData();
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }
    }
}
