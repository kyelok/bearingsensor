using WebServiceObjects;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace EngineTests
{
    /// <summary>
    ///This is a test class for CalculatedStatusWordTest and is intended
    ///to contain all CalculatedStatusWordTest Unit Tests
    ///This test class tests the CalculatedStatusWord object
    ///A unit test has been added as it is difficlut to excerise the class
    ///without the full system and the customer discovered a bug during validation
    ///that has been tracked back to this class.   
    ///</summary>
    [TestClass()]
    public class CalculatedStatusWordTest
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
        ///A test for Alarm
        ///</summary>
        [TestMethod()]
        public void AlarmTest()
        {
            CalculatedStatusWord target = new CalculatedStatusWord(0x2);
            bool expected = true;
            bool actual;
            actual = target.Alarm;
            Assert.AreEqual(expected, actual);
            Assert.AreEqual("Alarm ", target.ToString());
        }

        /// <summary>
        ///A test for Disabled
        ///</summary>
        [TestMethod()]
        public void DisabledTest()
        {
            CalculatedStatusWord target = new CalculatedStatusWord(0x8);
            bool expected = true;
            bool actual;
            actual = target.Disabled;
            Assert.AreEqual(expected, actual);
            Assert.AreEqual("Disabled ", target.ToString());
        }

        /// <summary>
        ///A test for Normal
        ///</summary>
        [TestMethod()]
        public void NormalTest()
        {
            CalculatedStatusWord target = new CalculatedStatusWord(0x1);
            bool expected = true;
            bool actual;
            actual = target.Normal;
            Assert.AreEqual(expected, actual);
            Assert.AreEqual("Normal ", target.ToString());
        }

        /// <summary>
        ///A test for Prewarning
        ///</summary>
        [TestMethod()]
        public void PrewarningTest()
        {
            CalculatedStatusWord target = new CalculatedStatusWord(0x20);
            bool expected = true;
            bool actual;
            actual = target.Prewarning;
            Assert.AreEqual(expected, actual);
            Assert.AreEqual("Prewarning ", target.ToString());
        }

        /// <summary>
        ///A test for SensorAdjustment
        ///</summary>
        [TestMethod()]
        public void SensorAdjustmentTest()
        {
            CalculatedStatusWord target = new CalculatedStatusWord(0x10);
            bool expected = true;
            bool actual;
            actual = target.SensorAdjustment;
            Assert.AreEqual(expected, actual);
            Assert.AreEqual("Sensor Adjustment ", target.ToString());
        }

        /// <summary>
        ///A test for SensorFailHighLevel
        ///</summary>
        [TestMethod()]
        public void SensorFailHighLevelTest()
        {
            CalculatedStatusWord target = new CalculatedStatusWord(0x200);
            bool expected = true;
            bool actual;
            actual = target.SensorFailHighLevel;
            Assert.AreEqual(expected, actual);
            Assert.AreEqual("Sensor Fail High Level ", target.ToString());
        }

        /// <summary>
        ///A test for SensorFailLowLevel
        ///</summary>
        [TestMethod()]
        public void SensorFailLowLevelTest()
        {
            CalculatedStatusWord target = new CalculatedStatusWord(0x100);
            bool expected = true;
            bool actual;
            actual = target.SensorFailLowLevel;
            Assert.AreEqual(expected, actual);
            Assert.AreEqual("Sensor Fail Low Level ", target.ToString());
        }

        /// <summary>
        ///A test for SensorFailNoPulse
        ///</summary>
        [TestMethod()]
        public void SensorFailNoPulseTest()
        {
            CalculatedStatusWord target = new CalculatedStatusWord(0x80);
            bool expected = true;
            bool actual;
            actual = target.SensorFailNoPulse;
            Assert.AreEqual(expected, actual);
            Assert.AreEqual("Sensor Fail No Pulse ", target.ToString());
        }

        /// <summary>
        ///A test for SensorFailRPMOOR
        ///</summary>
        [TestMethod()]
        public void SensorFailRPMOORTest()
        {
            CalculatedStatusWord target = new CalculatedStatusWord(0x400);
            bool expected = true;
            bool actual;
            actual = target.SensorFailRPMOOR;
            Assert.AreEqual(expected, actual);
            Assert.AreEqual("Sensor Fail RPM OOR ", target.ToString());
        }

        /// <summary>
        ///A test for Sensorfail
        ///</summary>
        [TestMethod()]
        public void SensorfailTest()
        {
            CalculatedStatusWord target = new CalculatedStatusWord(0x40);
            bool expected = true;
            bool actual;
            actual = target.Sensorfail;
            Assert.AreEqual(expected, actual);
            Assert.AreEqual("Sensor Fail ", target.ToString());
        }

        /// <summary>
        ///A test for Slowdown
        ///</summary>
        [TestMethod()]
        public void SlowdownTest()
        {
            CalculatedStatusWord target = new CalculatedStatusWord(0x4);
            bool expected = true;
            bool actual;
            actual = target.Slowdown;
            Assert.AreEqual(expected, actual);
            Assert.AreEqual("Slowdown ", target.ToString());
        }
    }
}
