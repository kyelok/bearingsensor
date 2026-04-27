using ModbusRegisters;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace ModbusRegistersUnitTests
{
    
    
    /// <summary>
    ///This is a test class for CalculatedSPURegisterTest and is intended
    ///to contain all CalculatedSPURegisterTest Unit Tests
    ///</summary>
    [TestClass()]
    public class CalculatedSPURegisterTest
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
        ///A test for CalculatedSPURegister Constructor
        ///</summary>
        [TestMethod()]
        public void CalculatedSPURegisterConstructorTest()
        {
            byte id = 0; // TODO: Initialize to an appropriate value
            ushort address = 0; // TODO: Initialize to an appropriate value
            byte externalId = 0; // TODO: Initialize to an appropriate value
            ushort externalAddress = 0; // TODO: Initialize to an appropriate value
            CalculatedSPURegister target = new CalculatedSPURegister(id, address, externalId, externalAddress);
            Assert.Inconclusive("TODO: Implement code to verify target");
        }

        /// <summary>
        ///A test for CalculateSensorFailure
        ///</summary>
        [TestMethod()]
        public void CalculateSensorFailureTest()
        {
            short sensorResult = 0; // TODO: Initialize to an appropriate value
            CalculatedSPURegister.CalculatedAlarmStatusWord expected = new CalculatedSPURegister.CalculatedAlarmStatusWord(); // TODO: Initialize to an appropriate value
            CalculatedSPURegister.CalculatedAlarmStatusWord actual;
            actual = CalculatedSPURegister.CalculateSensorFailure(sensorResult);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for InternalId
        ///</summary>
        [TestMethod()]
        public void InternalIdTest()
        {
            byte id = 0; // TODO: Initialize to an appropriate value
            ushort address = 0; // TODO: Initialize to an appropriate value
            byte externalId = 0; // TODO: Initialize to an appropriate value
            ushort externalAddress = 0; // TODO: Initialize to an appropriate value
            CalculatedSPURegister target = new CalculatedSPURegister(id, address, externalId, externalAddress); // TODO: Initialize to an appropriate value
            byte actual;
            actual = target.InternalId;
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for IsCalculated
        ///</summary>
        [TestMethod()]
        public void IsCalculatedTest()
        {
            byte id = 0; // TODO: Initialize to an appropriate value
            ushort address = 0; // TODO: Initialize to an appropriate value
            byte externalId = 0; // TODO: Initialize to an appropriate value
            ushort externalAddress = 0; // TODO: Initialize to an appropriate value
            CalculatedSPURegister target = new CalculatedSPURegister(id, address, externalId, externalAddress); // TODO: Initialize to an appropriate value
            bool actual;
            actual = target.IsCalculated;
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for Update
        ///</summary>
        [TestMethod()]
        public void UpdateTest()
        {
            byte id = 0; // TODO: Initialize to an appropriate value
            ushort address = 0; // TODO: Initialize to an appropriate value
            byte externalId = 0; // TODO: Initialize to an appropriate value
            ushort externalAddress = 0; // TODO: Initialize to an appropriate value
            CalculatedSPURegister target = new CalculatedSPURegister(id, address, externalId, externalAddress); // TODO: Initialize to an appropriate value
            bool actual;
            actual = target.Update;
            Assert.Inconclusive("Verify the correctness of this test method.");
        }
    }
}
