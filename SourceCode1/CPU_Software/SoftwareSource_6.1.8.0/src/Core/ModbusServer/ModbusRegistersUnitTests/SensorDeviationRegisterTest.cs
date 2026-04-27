using ModbusRegisters;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;

namespace ModbusRegistersUnitTests
{
    
    
    /// <summary>
    ///This is a test class for SensorDeviationRegisterTest and is intended
    ///to contain all SensorDeviationRegisterTest Unit Tests
    ///</summary>
    [TestClass()]
    public class SensorDeviationRegisterTest
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
        ///A test for SensorDeviationRegister Constructor
        ///</summary>
        [TestMethod()]
        [ExpectedException(typeof(ArgumentOutOfRangeException))]
        public void SensorDeviationRegisterConstructorTest()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            SensorDeviationRegister target = new SensorDeviationRegister(id, address, externalId, externalAddress);

            Assert.AreEqual(id, target.InternalId);
            Assert.AreEqual((address - 1), target.InternalAddress);
            Assert.AreEqual(externalId, target.ExternalId);
            Assert.AreEqual(externalAddress, target.ExternalAddress);
            Assert.AreEqual(true, target.IsCalculated);
            Assert.AreEqual(AccessType.Polled, target.UpdateType);
            Assert.AreEqual(0, target.Value);

            target = new SensorDeviationRegister(0, 0, externalId, externalAddress);
        }

        /// <summary>
        ///A test for CalculateValue
        ///</summary>
        [TestMethod()]
        public void CalculateValueTest_alarm()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorDeviationRegister target = new SensorDeviationRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, (ushort)(i+1), 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[146].Value = unchecked((ushort)64);

            //Set not disabled
            spuRegisters[117].Value = unchecked((ushort)1);

            ushort expected = 2;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }

        [TestMethod()]
        public void CalculateValueTest_Slowdown()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorDeviationRegister target = new SensorDeviationRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, (ushort)(i+1), 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[117].Value = unchecked((ushort)1);
            spuRegisters[146].Value = unchecked((ushort)256);
            ushort expected = 4;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }

        public void CalculateValueTest_Disabled()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorDeviationRegister target = new SensorDeviationRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, 0, 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[117].Value = unchecked((ushort)0); 
            ushort expected = 8;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }

        public void CalculateValueTest_SensorAdjustment()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorDeviationRegister target = new SensorDeviationRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, 0, 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[117].Value = unchecked((ushort)8); 
            ushort expected = 16;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }

        public void CalculateValueTest_SensorWarning()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorDeviationRegister target = new SensorDeviationRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, 0, 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[146].Value = unchecked((ushort)2048);
            ushort expected = 32;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }

        public void CalculateValueTest_SensorFailure()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorDeviationRegister target = new SensorDeviationRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, 0, 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[146].Value = unchecked((ushort)1); 
            ushort expected = 64;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }

        public void CalculateValueTest_SensorFailure_NoPulse()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorDeviationRegister target = new SensorDeviationRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, 0, 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[88].Value = unchecked((ushort)-32766); 
            ushort expected = 128;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }

        public void CalculateValueTest_SensorFailure_LowLevel()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorDeviationRegister target = new SensorDeviationRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, 0, 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[88].Value = unchecked((ushort)-32765); 
            ushort expected = 256;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }

        public void CalculateValueTest_SensorFailure_HighLevel()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorDeviationRegister target = new SensorDeviationRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, 0, 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[88].Value = unchecked((ushort)-32764); 

            ushort expected = 512;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }

        public void CalculateValueTest_SensorFailure_RpmOOR()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorDeviationRegister target = new SensorDeviationRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, 0, 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[88].Value = unchecked((ushort)-32763); 
           

            ushort expected = 1024;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }
    }
}
