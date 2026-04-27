using Framework;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Timers;

namespace TimingTest
{
    
    
    /// <summary>
    ///This is a test class for ScheduleCreatorTest and is intended
    ///to contain all ScheduleCreatorTest Unit Tests
    ///</summary>
    [TestClass()]
    public class ScheduleCreatorTest
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
        ///A test for ScheduleCreator Constructor
        ///</summary>
        [TestMethod()]
        public void ScheduleCreatorConstructorTest()
        {
            Lazy<IExtInterface> part = null; // TODO: Initialize to an appropriate value
            ScheduleCreator target = new ScheduleCreator(part);
            Assert.Inconclusive("TODO: Implement code to verify target");
            
        }

        /// <summary>
        ///A test for t_Elapsed
        ///</summary>
        [TestMethod()]
        [DeploymentItem("Framework.exe")]
        public void t_ElapsedTest()
        {
            PrivateObject param0 = null; // TODO: Initialize to an appropriate value
            ScheduleCreator_Accessor target = new ScheduleCreator_Accessor(param0); // TODO: Initialize to an appropriate value
            object sender = null; // TODO: Initialize to an appropriate value
            ElapsedEventArgs e = null; // TODO: Initialize to an appropriate value
            target.t_Elapsed(sender, e);
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }
    }
}
