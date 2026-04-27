using WebService;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using WebServiceObjects;

namespace DataRetrieverTests
{
    
    
    /// <summary>
    ///This is a test class for DataRetrieverTest and is intended
    ///to contain all DataRetrieverTest Unit Tests
    ///</summary>
    [TestClass()]
    public class DataRetrieverTest
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
        ///A test for GetSensorStatusObject
        ///</summary>
        [TestMethod()]
        [DeploymentItem("WebService.dll")]
        public void GetSensorStatusObjectTest()
        {
            DataRetriever_Accessor target = new DataRetriever_Accessor(); // TODO: Initialize to an appropriate value
            ushort registerBase = 0; // TODO: Initialize to an appropriate value
            ushort registerCount = 0; // TODO: Initialize to an appropriate value

            //target.master = new ModbusIpMaster();

            SensorStatus[] expected = null; // TODO: Initialize to an appropriate value
            SensorStatus[] actual;
            
            actual = target.GetSensorStatusObject(registerBase, registerCount);
            
            Assert.AreEqual(expected, actual);
        }
    }
}
