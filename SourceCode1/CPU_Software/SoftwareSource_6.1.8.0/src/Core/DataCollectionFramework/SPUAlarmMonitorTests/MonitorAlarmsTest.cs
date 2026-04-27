using SPUAlarmMonitor;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using DataCollectionSDK;

namespace SPUAlarmMonitorTests
{
    
    
    /// <summary>
    ///This is a test class for MonitorAlarmsTest and is intended
    ///to contain all MonitorAlarmsTest Unit Tests
    ///</summary>
    [TestClass()]
    public class MonitorAlarmsTest
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
        ///A test for ProcessAlarms
        ///</summary>
        [TestMethod()]
        [DeploymentItem("SPUAlarmMonitor.dll")]
        public void ProcessAlarmsTest()
        {
            //SPUAlarmMonitorPlugin_Accessor target = new SPUAlarmMonitorPlugin_Accessor();
            //Dictionary<string, ushort> alarmValues = new Dictionary<string, ushort>();

            //ushort[] alarmBits = { 65535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
            //string[] alarmStrings = target.ProcessAlarms(alarmBits, alarmValues);
            //Assert.AreEqual(alarmStrings.Length, 16);

            //alarmBits[0] = 0;
            //alarmBits[1] = 65535;
            //alarmStrings = target.ProcessAlarms(alarmBits, alarmValues);
            //Assert.AreEqual(alarmStrings.Length, 17);
            
        }
    }
}
