using IpConfig;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace IpConfigToolsTests
{
    
    
    /// <summary>
    ///This is a test class for IpConfigToolsTest and is intended
    ///to contain all IpConfigToolsTest Unit Tests
    ///</summary>
    [TestClass()]
    public class IpConfigToolsTest
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
        ///A test for GetCurrentIpData
        ///</summary>
        [TestMethod()]
        public void GetCurrentIpDataTest()
        {
            string networkInterfaceName = "[00000012] Broadcom NetXtreme Gigabit Ethernet"; //"[00000001] Realtek RTL8139/810x Family Fast Ethernet NIC";
            IpData actual;
            actual = IpConfigTools.GetCurrentIpData(networkInterfaceName);
            Assert.IsNotNull(actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }
    }
}
