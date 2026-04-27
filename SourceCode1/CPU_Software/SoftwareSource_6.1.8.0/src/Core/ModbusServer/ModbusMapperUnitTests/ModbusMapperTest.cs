using ModbusServer;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using ModbusRegisters;
using HelperClasses;

namespace ModbusMapperUnitTests
{
    
    
    /// <summary>
    ///This is a test class for ModbusMapperTest and is intended
    ///to contain all ModbusMapperTest Unit Tests
    ///</summary>
    [TestClass()]
    public class ModbusMapperTest
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
        ///A test for ModbusMapper Constructor
        ///</summary>
        [TestMethod()]
        public void ModbusMapperConstructorTest()
        {
            ModbusMapper target = new ModbusMapper();
        }

        /// <summary>
        ///A test for ExternalToInternal
        ///</summary>
        [TestMethod()]
        public void ExternalToInternalTest()
        {
            ModbusMapper target = new ModbusMapper();
            int id = 0;
            int startRegisterAddress = 0;
            int count = 0;

            List<ModbusRegister> actual;
            actual = target.GetLiveReadRegisters(id, startRegisterAddress, count);
            Assert.AreEqual(0, actual.Count);

            //Load some mappings into the mappings matrix 
            List<ParserTest> tests = new List<ParserTest>();
            tests.Add(new ParserTest("1,100-120 = 2,1", 100, 120, 1, 200, 2, AccessType.Live,true));
            tests.Add(new ParserTest("1,200-320 = 2,22,l", 100, 120, 1, 200, 2, AccessType.Live,true));

            foreach (ParserTest test in tests)
            {
                target.InsertMapEntry(test.Line);
            }

            //Extract registers from the mapper
            id = 2;
            startRegisterAddress = 5;
            count = 1;
            actual = target.GetLiveReadRegisters(id, startRegisterAddress, count);

            Assert.AreEqual(1, actual.Count);
            Assert.AreEqual(104, actual[0].InternalAddress);

            id = 2;
            startRegisterAddress = 1;
            count = 1;
            actual = target.GetLiveReadRegisters(id, startRegisterAddress, count);

            Assert.AreEqual(1, actual.Count);
            Assert.AreEqual(100, actual[0].InternalAddress);

            id = 2;
            startRegisterAddress = 22;
            count = 1;
            actual = target.GetLiveReadRegisters(id, startRegisterAddress, count);

            Assert.AreEqual(1, actual.Count);
            Assert.AreEqual(200, actual[0].InternalAddress);


            //Extract a range from the mapper
            id = 2;
            startRegisterAddress = 1;
            count = 10;

            actual = target.GetLiveReadRegisters(id, startRegisterAddress, count);

            Assert.AreEqual(10, actual.Count);

            for (int i = 0; i < actual.Count; i++)
            {
                Assert.AreEqual(100 + i, actual[i].InternalAddress);
            }

        }

        /// <summary>
        ///A test for ParseLine
        ///</summary>
        [TestMethod()]
        [DeploymentItem("ModbusServer.exe")]
        public void ParseLineTest()
        {
            ModbusMapper_Accessor target = new ModbusMapper_Accessor();
            List<ParserTest> tests = new List<ParserTest>();

            tests.Add(new ParserTest("version=1.0.1", 1, 0, 1, 0, 0, AccessType.Live, false, new VersionNumber("1.0.1")));
            tests.Add(new ParserTest("1,100 = 2,200", 100, 0, 1, 200, 2, AccessType.Live,true));
            tests.Add(new ParserTest("1,100-120 = 2,200", 100, 120, 1, 200, 2, AccessType.Live,true));
            tests.Add(new ParserTest("1,100-120 = 2,200,l", 100, 120, 1, 200, 2, AccessType.Live, true));
            tests.Add(new ParserTest("1,100-120 = 2,200,c", 100, 120, 1, 200, 2, AccessType.Cached, true));
            tests.Add(new ParserTest("1,100-120 = 2,200,p", 100, 120, 1, 200, 2, AccessType.Polled, true));
            tests.Add(new ParserTest("1,100-120 = 2,200 = 90, 59", 100, 120, 1, 200, 2, AccessType.Live, true));
            tests.Add(new ParserTest("1,100-120 = 2,200,k", 100, 120, 1, 200, 2, AccessType.Live, true));
            tests.Add(new ParserTest(" 1,100 - 120 =  2,200, ", 100, 120, 1, 200, 2, AccessType.Live, true));
            tests.Add(new ParserTest("100-120, = 200, 2 = 90, 59", 100, 120, 1, 200, 2, AccessType.Live, false));
            tests.Add(new ParserTest(" 10 0 - 1 20, 1 =  2 00 ,  2 ", 100, 120, 1, 200, 2, AccessType.Live, false));
            tests.Add(new ParserTest(" 10 0 - 1 20,,,,,, 1 =  2 00 ,  2,,,,, ", 100, 120, 1, 200, 2, AccessType.Live, false));
            tests.Add(new ParserTest("100-,1 = 200, 2", 100, 120, 1, 200, 2, AccessType.Live, false));
            tests.Add(new ParserTest("-120,1 = 200, 2", 100, 120, 1, 200, 2, AccessType.Live, false));
            tests.Add(new ParserTest("100-120,1 = , 2", 100, 120, 1, 200, 2, AccessType.Live, false));
            tests.Add(new ParserTest("100,1 = 200, ", 0, 0, 0, 0, 0, AccessType.Live, false));
            tests.Add(new ParserTest(",1 = 200, 2", 0, 0, 0, 0, 0, AccessType.Live, false));
            tests.Add(new ParserTest(" = 200, 2", 0, 0, 0, 0, 0, AccessType.Live, false));
            tests.Add(new ParserTest("g,1 = 200, 2", 0, 0, 0, 0, 0, AccessType.Live, false));
            tests.Add(new ParserTest("a,b = 200, 2", 0, 0, 0, 0, 0, AccessType.Live, false));
            tests.Add(new ParserTest("100, = 200, 2", 0, 0, 0, 0, 0, AccessType.Live, false));

            ModbusRegister[] actual;

            string version = string.Empty;

            foreach (ParserTest test in tests)
            {
                actual = ModbusMapper_Accessor.ParseLine(test.Line, out version);
                Assert.AreEqual(test.Version, version, string.Format("Failed on test line {0}", test.Line));

                if (actual.Length > 0)
                {
                    for (int i = 0; i < actual.Length; i++)
                    {
                        Assert.AreEqual(test.InternalStartRegisterExpected + i, actual[i].InternalAddress, string.Format("Failed on actual[{0}], test line {1}", i, test.Line));
                        Assert.AreEqual(test.InternalIdExpected, actual[i].InternalId, string.Format("Failed on item actual[{0}], test line {1}", i, test.Line));
                        Assert.AreEqual(test.ExternalRegisterExpected + i, actual[i].ExternalAddress, string.Format("Failed on item actual[{0}], test line {1}", i, test.Line));
                        Assert.AreEqual(test.ExternalIdExpected, actual[i].ExternalId, string.Format("Failed on item actual[{0}], test line {1}", i, test.Line));
                        Assert.AreEqual(test.ExpectedAccessType, actual[i].UpdateType, string.Format("Failed on item actual[{0}], test line {1}", i, test.Line));
                    }
                }
                else
                {
                    //Check that this
                    Assert.AreEqual(false, test.ReturnsAnArray);
                }
            }
        }

        ///<summary>
        ///This tests that the parse correctly extracts the calculated status words.
        ///</summary>
        [TestMethod()]
        [DeploymentItem("ModbusServer.exe")]
        public void ParseStatusWords()
        {
            string version;

            ModbusMapper_Accessor target = new ModbusMapper_Accessor();
            ModbusRegister []actual;

            actual = ModbusMapper_Accessor.ParseLine("sensors,1-28=2,0", out version);
            Assert.AreEqual(28, actual.Length);

            actual = ModbusMapper_Accessor.ParseLine("sensorsdeviation,1-28=2,0", out version);
            Assert.AreEqual(28, actual.Length);

            actual = ModbusMapper_Accessor.ParseLine("cylinders,1-14=2,0", out version);
            Assert.AreEqual(14, actual.Length);

            actual = ModbusMapper_Accessor.ParseLine("cylindersdeviations,1-14=2,0", out version);
            Assert.AreEqual(14, actual.Length);

            actual = ModbusMapper_Accessor.ParseLine("slem,1=2,0", out version);
            Assert.AreEqual(1, actual.Length);

            actual = ModbusMapper_Accessor.ParseLine("wio,1=2,0", out version);
            Assert.AreEqual(1, actual.Length);
        }

        class ParserTest
        {
            public ParserTest(string line, ushort internalStartRegisterExpected, ushort internalEndRegisterExpected, byte internalIdExpected, ushort externalRegisterExpected, byte externalIdExpected, AccessType accessType, bool pass) 
                : this (line, internalStartRegisterExpected, internalEndRegisterExpected, internalIdExpected, externalRegisterExpected, externalIdExpected, accessType, pass , null)
            { }

            public ParserTest(string line, ushort internalStartRegisterExpected, ushort internalEndRegisterExpected, byte internalIdExpected, ushort externalRegisterExpected, byte externalIdExpected, AccessType accessType, bool pass, VersionNumber version)
            {
                Line = line;

                InternalStartRegisterExpected = internalStartRegisterExpected;
                InternalEndRegisterExpected = internalEndRegisterExpected;
                InternalIdExpected = internalIdExpected;

                ExternalRegisterExpected = externalRegisterExpected;
                ExternalIdExpected = externalIdExpected;
                ReturnsAnArray = pass;
                ExpectedAccessType = accessType;
                this.Version = version;
            }

            string line;

            public string Line
            {
                get { return line; }
                set { line = value; }
            }

            byte internalIdExpected = 1;

            public byte InternalIdExpected
            {
                get { return internalIdExpected; }
                set { internalIdExpected = value; }
            }
            ushort internalEndRegisterExpected = 0;

            public ushort InternalEndRegisterExpected
            {
                get { return internalEndRegisterExpected; }
                set { internalEndRegisterExpected = value; }
            }
            ushort internalStartRegisterExpected = 100;

            public ushort InternalStartRegisterExpected
            {
                get { return internalStartRegisterExpected; }
                set { internalStartRegisterExpected = value; }
            }
            ushort externalRegisterExpected = 200;

            public ushort ExternalRegisterExpected
            {
                get { return externalRegisterExpected; }
                set { externalRegisterExpected = value; }
            }
            byte externalIdExpected = 2;

            public byte ExternalIdExpected
            {
                get { return externalIdExpected; }
                set { externalIdExpected = value; }
            }

            AccessType expectedAccessType;
            public AccessType ExpectedAccessType
            {
                get { return expectedAccessType; }
                set { expectedAccessType = value; }
            }

            public bool ReturnsAnArray
            {
                get;
                set;
            }

            public VersionNumber Version
            {
                get;
                set;                
            }
        }
    }
}
