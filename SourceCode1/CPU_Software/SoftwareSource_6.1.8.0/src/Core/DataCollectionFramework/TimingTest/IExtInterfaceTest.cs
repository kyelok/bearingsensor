using Framework;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace TimingTest
{
    
    
    /// <summary>
    ///This is a test class for IExtInterfaceTest and is intended
    ///to contain all IExtInterfaceTest Unit Tests
    ///</summary>
    [TestClass()]
    public class IExtInterfaceTest
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


        internal virtual IExtInterface CreateIExtInterface()
        {
            // TODO: Instantiate an appropriate concrete class.
            IExtInterface target = null;
            return target;
        }

        /// <summary>
        ///A test for Init
        ///</summary>
        [TestMethod()]
        public void InitTest()
        {
            IExtInterface target = CreateIExtInterface(); // TODO: Initialize to an appropriate value
            target.Init();
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }

        /// <summary>
        ///A test for Log
        ///</summary>
        [TestMethod()]
        public void LogTest()
        {
            IExtInterface target = CreateIExtInterface(); // TODO: Initialize to an appropriate value
            target.Log();
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }

        /// <summary>
        ///A test for Run
        ///</summary>
        [TestMethod()]
        public void RunTest()
        {
            IExtInterface target = CreateIExtInterface(); // TODO: Initialize to an appropriate value
            target.Run();
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }

        /// <summary>
        ///A test for LogSchedule
        ///</summary>
        [TestMethod()]
        public void LogScheduleTest()
        {
            IExtInterface target = CreateIExtInterface(); // TODO: Initialize to an appropriate value
            int expected = 0; // TODO: Initialize to an appropriate value
            int actual;
            target.LogSchedule = expected;
            actual = target.LogSchedule;
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for RunSchedule
        ///</summary>
        [TestMethod()]
        public void RunScheduleTest()
        {
            IExtInterface target = CreateIExtInterface(); // TODO: Initialize to an appropriate value
            int expected = 0; // TODO: Initialize to an appropriate value
            int actual;
            target.RunSchedule = expected;
            actual = target.RunSchedule;
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }
    }
}
