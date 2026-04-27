using ModbusRegisters;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;

namespace ModbusRegistersUnitTests
{
    
    
    /// <summary>
    ///This is a test class for SensorRegisterTest and is intended
    ///to contain all SensorRegisterTest Unit Tests
    ///</summary>
    [TestClass()]
    public class SensorRegisterTest
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
        ///A test for SensorRegister Constructor
        ///</summary>
        [TestMethod()]
        [ExpectedException(typeof(ArgumentOutOfRangeException))]
        public void SensorRegisterConstructorTest()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            SensorRegister target = new SensorRegister(id, address, externalId, externalAddress);

            Assert.AreEqual(id, target.InternalId);
            Assert.AreEqual((address-1), target.InternalAddress);
            Assert.AreEqual(externalId, target.ExternalId);
            Assert.AreEqual(externalAddress, target.ExternalAddress);
            Assert.AreEqual(true, target.IsCalculated);
            Assert.AreEqual(AccessType.Polled,target.UpdateType);
            Assert.AreEqual(0, target.Value);

            target = new SensorRegister(0, 0, externalId, externalAddress);


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

            SensorRegister target = new SensorRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, (ushort)(i+1), 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[146].Value = unchecked((ushort)16);

            //Set not disabled
            spuRegisters[117].Value = unchecked((ushort)1);

            ushort expected = 2;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);
            
            Assert.AreEqual(expected, actual);
        }

        [TestMethod()]
        public void CalculateValueTest_slowdown()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorRegister target = new SensorRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, (ushort)(i + 1), 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[117].Value = unchecked((ushort)1);
            spuRegisters[146].Value = unchecked((ushort)4);

            ushort expected = 4;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }

        [TestMethod()]
        public void CalculateValueTest_disabled()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorRegister target = new SensorRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, (ushort)(i+1), 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[117].Value = unchecked((ushort)0);

            ushort expected = 8;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }

        [TestMethod()]
        public void CalculateValueTest_sensorAdjustment()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorRegister target = new SensorRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, (ushort)(i+1), 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[117].Value = unchecked((ushort)17);

            ushort expected = 16;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }

        [TestMethod()]
        public void CalculateValueTest_sensorWarning()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorRegister target = new SensorRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, (ushort)(i + 1), 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[117].Value = unchecked((ushort)1);
            spuRegisters[146].Value = unchecked((ushort)4096);

            ushort expected = 32;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }

        [TestMethod()]
        public void CalculateValueTest_sensorFailure()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorRegister target = new SensorRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, (ushort)(i+1), 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[117].Value = unchecked((ushort)1);
            spuRegisters[146].Value = unchecked((ushort)1);

            ushort expected = 64;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }

        [TestMethod()]
        public void CalculateValueTest_sensorFailureNoPulse()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorRegister target = new SensorRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, (ushort)(i+1), 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[117].Value = unchecked((ushort)1);
            spuRegisters[59].Value = unchecked((ushort)-32766);

            ushort expected = 128;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }

        [TestMethod()]
        public void CalculateValueTest_sensorFailureLowLevel()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorRegister target = new SensorRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, (ushort)(i+1), 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[117].Value = unchecked((ushort)1);
            spuRegisters[59].Value = unchecked((ushort)-32765);

            ushort expected = 256;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }

        [TestMethod()]
        public void CalculateValueTest_sensorFailureHighLevel()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorRegister target = new SensorRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, (ushort)(i+1), 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[117].Value = unchecked((ushort)1);
            spuRegisters[59].Value = unchecked((ushort)-32764);

            ushort expected = 512;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }

        [TestMethod()]
        public void CalculateValueTest_sensorFailureRpmOOR()
        {
            byte id = 1;
            ushort address = 1;
            byte externalId = 1;
            ushort externalAddress = 200;
            List<ModbusRegister> spuRegisters = new List<ModbusRegister>();

            SensorRegister target = new SensorRegister(id, address, externalId, externalAddress);

            //Create list of SensorRegisters
            for (int i = 0; i < 1000; i++)
            {
                spuRegisters.Add(new SensorRegister(1, (ushort)(i+1), 0, 0));
            }

            //Populate the specfic registers with sensor readings
            spuRegisters[117].Value = unchecked((ushort)1);
            spuRegisters[59].Value = unchecked((ushort)-32763);

            ushort expected = 1024;
            ushort actual;
            actual = target.CalculateValue(spuRegisters);

            Assert.AreEqual(expected, actual);
        }


    }
}
