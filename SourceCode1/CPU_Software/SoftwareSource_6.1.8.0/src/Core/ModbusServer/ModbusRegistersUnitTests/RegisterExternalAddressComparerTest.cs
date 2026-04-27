using ModbusRegisters;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace ModbusRegistersUnitTests
{
    
    
    /// <summary>
    ///This is a test class for RegisterExternalAddressComparerTest and is intended
    ///to contain all RegisterExternalAddressComparerTest Unit Tests
    ///</summary>
    [TestClass()]
    public class RegisterExternalAddressComparerTest
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
        ///A test for Compare
        ///</summary>
        [TestMethod()]
        public void CompareTest()
        {
            RegisterExternalAddressComparer target = new RegisterExternalAddressComparer();
            ModbusRegister x = null;
            ModbusRegister y = null;
            int expected = 0;
            int actual;
            actual = target.Compare(x, y);
            Assert.AreEqual(expected, actual);

            x = ModbusRegister.RegisterMapFactory(0, 0, 0,100, AccessType.Live, CalculatedRegisterType.None);
            y = ModbusRegister.RegisterMapFactory(0, 0, 0,100,AccessType.Live, CalculatedRegisterType.None);

            actual = target.Compare(x, y);
            Assert.AreEqual(0, actual);


            x = ModbusRegister.RegisterMapFactory(0, 0, 0,100, AccessType.Live, CalculatedRegisterType.None);
            y = ModbusRegister.RegisterMapFactory(0, 0, 0,110, AccessType.Live, CalculatedRegisterType.None);

            actual = target.Compare(x, y);
            Assert.AreEqual(-10, actual);

            x = ModbusRegister.RegisterMapFactory(0, 0, 0,100,AccessType.Live, CalculatedRegisterType.None);
            y = ModbusRegister.RegisterMapFactory(0, 0, 0,90,AccessType.Live, CalculatedRegisterType.None);

            actual = target.Compare(x, y);
            Assert.AreEqual(10, actual);

        }
    }
}
