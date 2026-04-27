using ModbusRegisters;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;

namespace ModbusRegistersUnitTests
{
    
    
    /// <summary>
    ///This is a test class for ModbusRegisterTest and is intended
    ///to contain all ModbusRegisterTest Unit Tests
    ///</summary>
    [TestClass()]
    public class ModbusRegisterTest
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
        ///A test for ExternalAddress
        ///</summary>
        [TestMethod()]
        public void ExternalAddressTest()
        {
            byte id = 0;
            ushort address = 0;
            byte externalId = 0;
            ushort externalAddress = 100;
            AccessType accessType = AccessType.Live;
            ModbusRegister target = ModbusRegister.RegisterMapFactory(id, address, externalId, externalAddress, accessType,CalculatedRegisterType.None);
            Assert.AreEqual(externalAddress, target.ExternalAddress);
        }

        /// <summary>
        ///A test for ExternalId
        ///</summary>
        [TestMethod()]
        public void ExternalIdTest()
        {
            byte id = 0;
            ushort address = 0;
            byte externalId = 0;
            ushort externalAddress = 0;
            AccessType accessType = new AccessType();
            ModbusRegister target = ModbusRegister.RegisterMapFactory(id, address, externalId, externalAddress, accessType, CalculatedRegisterType.None);
            byte actual;
            actual = target.ExternalId;
        }

        /// <summary>
        ///A test for InternalAddress
        ///</summary>
        [TestMethod()]
        public void InternalAddressTest()
        {
            byte id = 0;
            ushort address = 1;
            byte externalId = 0;
            ushort externalAddress = 0;
            AccessType accessType = AccessType.Live;
            ModbusRegister target = ModbusRegister.RegisterMapFactory(id, address, externalId, externalAddress, accessType, CalculatedRegisterType.Sensors);
            Assert.AreEqual(0 ,target.InternalAddress);

            target = ModbusRegister.RegisterMapFactory(id, address, externalId, externalAddress, accessType, CalculatedRegisterType.None);
            Assert.AreEqual(1, target.InternalAddress);

        }

        /// <summary>
        ///A test for InternalId
        ///</summary>
        [TestMethod()]
        public void InternalIdTest()
        {
            byte id = 0;
            ushort address = 0;
            byte externalId = 0;
            ushort externalAddress = 0;
            AccessType accessType = AccessType.Live;
            ModbusRegister target = ModbusRegister.RegisterMapFactory(id, address, externalId, externalAddress, accessType,CalculatedRegisterType.None);
            Assert.AreEqual(id,target.InternalId);
        }

        /// <summary>
        ///A test for IsCalculated
        ///</summary>
        [TestMethod()]
        public void IsCalculatedTest()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 0;
            ushort externalAddress = 0;
            AccessType accessType = AccessType.Live;

            ModbusRegister target = ModbusRegister.RegisterMapFactory(id, address, externalId, externalAddress, accessType,CalculatedRegisterType.None);
            Assert.AreEqual(false, target.IsCalculated);

            target = ModbusRegister.RegisterMapFactory(id, address, externalId, externalAddress, accessType, CalculatedRegisterType.Sensors);
            Assert.AreEqual(true, target.IsCalculated);

            target = ModbusRegister.RegisterMapFactory(id, address, externalId, externalAddress, accessType, CalculatedRegisterType.Cylinders);
            Assert.AreEqual(true, target.IsCalculated);

            target = ModbusRegister.RegisterMapFactory(id, address, externalId, externalAddress, accessType, CalculatedRegisterType.CylindersDeviations);
            Assert.AreEqual(true, target.IsCalculated);

            target = ModbusRegister.RegisterMapFactory(id, address, externalId, externalAddress, accessType, CalculatedRegisterType.SensorsDeviation);
            Assert.AreEqual(true, target.IsCalculated);

            target = ModbusRegister.RegisterMapFactory(id, address, externalId, externalAddress, accessType, CalculatedRegisterType.Slem);
            Assert.AreEqual(true, target.IsCalculated);

            target = ModbusRegister.RegisterMapFactory(id, address, externalId, externalAddress, accessType, CalculatedRegisterType.None);
            Assert.AreEqual(false, target.IsCalculated);

        }

        /// <summary>
        ///A test for Update
        ///</summary>
        [TestMethod()]
        public void UpdateTest()
        {
            byte id = 0;
            ushort address = 0;
            byte externalId = 0;
            ushort externalAddress = 0;
            AccessType accessType = AccessType.Polled;
            ModbusRegister target = ModbusRegister.RegisterMapFactory(id, address, externalId, externalAddress, accessType,CalculatedRegisterType.None);
            bool actual;
            actual = target.ShouldUpdate;
            Assert.AreEqual(true, target.ShouldUpdate);
        }

        /// <summary>
        ///A test for UpdateType
        ///</summary>
        [TestMethod()]
        public void UpdateTypeTest()
        {
            byte id = 0;
            ushort address = 0;
            byte externalId = 0;
            ushort externalAddress = 0;
            AccessType accessType = AccessType.Live;
            ModbusRegister target = ModbusRegister.RegisterMapFactory(id, address, externalId, externalAddress, accessType,CalculatedRegisterType.None);
            Assert.AreEqual(accessType, target.UpdateType);
        }

        /// <summary>
        ///A test for Value
        ///</summary>
        [TestMethod()]
        public void ValueTest()
        {
            byte id = 0;
            ushort address = 0;
            byte externalId = 0;
            ushort externalAddress = 0;
            AccessType accessType = AccessType.Live;
            ModbusRegister target = ModbusRegister.RegisterMapFactory(id, address, externalId, externalAddress, accessType,CalculatedRegisterType.None);
            ushort expected = 20;
            ushort actual;
            target.Value = expected;
            actual = target.Value;
            Assert.AreEqual(expected, actual);            
        }
    }
}
