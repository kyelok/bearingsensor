using Storage;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace StorageUnitTests
{
    /// <summary>
    ///This is a test class for CommunicationStatisticsTest and is intended
    ///to contain all CommunicationStatisticsTest Unit Tests
    ///</summary>
    [TestClass()]
    public class CommunicationStatisticsTest
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
        ///Test the CommunicationStatistics class then it is configured to
        ///read from a database.
        ///</summary>
        [TestMethod()]
        public void CommunicationStatisticsConstructorTest()
        {
            CommunicationStatistics databaseReader = new CommunicationStatistics(true);
            CommunicationStatistics databaseWriter = new CommunicationStatistics();


            databaseReader.ResetStatistics();

            //Force a flush
            for(int i=0;i<10;i++)
            {
                databaseWriter.Flush();
            }

            Assert.AreEqual(0, databaseReader.FailedReads);
            Assert.AreEqual(0, databaseReader.FailedWrites);
            Assert.AreEqual(0, databaseReader.CrcErrors);
            Assert.AreEqual(0, databaseReader.PacketsRead);
            Assert.AreEqual(0, databaseReader.PacketsWritten);
            Assert.AreEqual(0, databaseReader.Retries);

            //Write values to the database

            for (int i = 0; i < 10; i++)
            {
                databaseWriter.FailedReads++;
            }

            for (int i = 0; i < 10; i++)
            {
                databaseWriter.FailedWrites++;
            }

            for (int i = 0; i < 10; i++)
            {
                databaseWriter.PacketsRead++;
            }

            for (int i = 0; i < 10; i++)
            {
                databaseWriter.PacketsWritten++;
            }
            for (int i = 0; i < 10; i++)
            {
                databaseWriter.Retries++;
            }

            for (int i = 0; i < 10; i++)
            {
                databaseWriter.CrcErrors++;
            }

            Assert.AreEqual(10, databaseReader.FailedReads);
            Assert.AreEqual(10, databaseReader.FailedWrites);
            Assert.AreEqual(10, databaseReader.CrcErrors);
            Assert.AreEqual(10, databaseReader.PacketsRead);
            Assert.AreEqual(10, databaseReader.PacketsWritten);
            Assert.AreEqual(10, databaseReader.Retries);
            
        }


        /// <summary>
        ///A test for CommunicationStatistics class when it is configured to not read
        ///from the database and cache writes to the database.
        ///</summary>
        [TestMethod()]
        public void CommunicationStatisticsConstructorTest1()
        {

            //Target writes stats to the database every 10 incremenets
            //databaseReader reads the stats from the database

            CommunicationStatistics target = new CommunicationStatistics();
            CommunicationStatistics databaseReader = new CommunicationStatistics(true);

            databaseReader.ResetStatistics();

            //Force a flush
            for (int i = 0; i < 10; i++)
            {
                target.Flush();
            }

            Assert.AreEqual(0, target.FailedReads);
            Assert.AreEqual(0, target.FailedWrites);
            Assert.AreEqual(0, target.CrcErrors);
            Assert.AreEqual(0, target.PacketsRead);
            Assert.AreEqual(0, target.PacketsWritten);
            Assert.AreEqual(0, target.Retries);

            target.FailedReads++;

            Assert.AreEqual(0, databaseReader.FailedReads);

            //Perform 18 increments.  Only 10 should be written to the database
            for (int i = 0; i < 18; i++)
            {
                target.FailedReads++;
            }

            Assert.AreEqual(10, databaseReader.FailedReads);


            //Do to the state of the internal database flush counter only 1 will be
            //written to the database
            for (int i = 0; i < 10; i++)
            {
                target.FailedWrites++;
            }

            Assert.AreEqual(1, databaseReader.FailedWrites);
        }

        /// <summary>
        ///A test for CrcErrors
        ///</summary>
        [TestMethod()]
        public void CrcErrorsTest()
        {
            CommunicationStatistics target = new CommunicationStatistics();
            CommunicationStatistics databaseReader = new CommunicationStatistics(true);

            databaseReader.ResetStatistics();

            //Force a flush
            for (int i = 0; i < 10; i++)
            {
                target.Flush();
            }

            for (int i = 0; i < 10; i++)
            {
                target.CrcErrors++;
            }

            Assert.AreEqual(10, target.CrcErrors);

            databaseReader.ResetStatistics();

            for (int i = 0; i < 10; i++)
            {
                target.CrcErrors++;
            }

            Assert.AreEqual(0, target.CrcErrors);
        }

        /// <summary>
        ///A test for FailedReads
        ///</summary>
        [TestMethod()]
        public void FailedReadsTest()
        {
            CommunicationStatistics target = new CommunicationStatistics();
            CommunicationStatistics databaseReader = new CommunicationStatistics(true);

            databaseReader.ResetStatistics();

            //Force a flush
            for (int i = 0; i < 10; i++)
            {
                target.Flush();
            }

            for (int i = 0; i < 10; i++)
            {
                target.FailedReads++;
            }

            Assert.AreEqual(10, target.FailedReads);

            databaseReader.ResetStatistics();

            for (int i = 0; i < 10; i++)
            {
                target.FailedReads++;
            }

            Assert.AreEqual(0, target.FailedReads);
        }

        /// <summary>
        ///A test for FailedWrites
        ///</summary>
        [TestMethod()]
        public void FailedWritesTest()
        {
            CommunicationStatistics target = new CommunicationStatistics();
            CommunicationStatistics databaseReader = new CommunicationStatistics(true);

            databaseReader.ResetStatistics();

            //Force a flush
            for (int i = 0; i < 10; i++)
            {
                target.Flush();
            }

            for (int i = 0; i < 10; i++)
            {
                target.FailedWrites++;
            }

            Assert.AreEqual(10, target.FailedWrites);

            databaseReader.ResetStatistics();

            for (int i = 0; i < 10; i++)
            {
                target.FailedWrites++;
            }

            Assert.AreEqual(0, target.FailedWrites);

        }

        /// <summary>
        ///A test for PacketsWritten
        ///</summary>
        [TestMethod()]
        public void PacketsWrittenTest()
        {
            CommunicationStatistics target = new CommunicationStatistics();
            CommunicationStatistics databaseReader = new CommunicationStatistics(true);

            databaseReader.ResetStatistics();

            //Force a flush
            for (int i = 0; i < 10; i++)
            {
                target.Flush();
            }

            for (int i = 0; i < 10; i++)
            {
                target.PacketsWritten++;
            }

            Assert.AreEqual(10, target.PacketsWritten);

            databaseReader.ResetStatistics();

            for (int i = 0; i < 10; i++)
            {
                target.PacketsWritten++;
            }

            Assert.AreEqual(0, target.PacketsWritten);

        }

        /// <summary>
        ///A test for PacketsRead
        ///</summary>
        [TestMethod()]
        public void PacketsReadTest()
        {
            CommunicationStatistics target = new CommunicationStatistics();
            CommunicationStatistics databaseReader = new CommunicationStatistics(true);

            databaseReader.ResetStatistics();

            //Force a flush
            for (int i = 0; i < 10; i++)
            {
                target.Flush();
            }

            for (int i = 0; i < 10; i++)
            {
                target.PacketsRead++;
            }

            Assert.AreEqual(10, target.PacketsRead);

            databaseReader.ResetStatistics();

            for (int i = 0; i < 10; i++)
            {
                target.PacketsRead++;
            }

            Assert.AreEqual(0, target.PacketsRead);

        }

        /// <summary>
        ///A test for Retries
        ///</summary>
        [TestMethod()]
        public void RetriesTest()
        {
            CommunicationStatistics target = new CommunicationStatistics();
            CommunicationStatistics databaseReader = new CommunicationStatistics(true);

            databaseReader.ResetStatistics();

            //Force a flush
            for (int i = 0; i < 10; i++)
            {
                target.Flush();
            }
            
            for (int i = 0; i < 10; i++)
            {
                target.Retries++;
            }

            Assert.AreEqual(10, target.Retries);

            databaseReader.ResetStatistics();

            for (int i = 0; i < 10; i++)
            {
                target.Retries++;
            }

            Assert.AreEqual(0, target.Retries);

        }

        ///<summary>
        /// This test fills the database with data and tests that it is read back succesfully.
        ///</summary>
        [TestMethod()]
        public void DatabaseTest()
        {
            CommunicationStatistics target = new CommunicationStatistics();
            CommunicationStatistics databaseReader = new CommunicationStatistics(true);

            for(int i=0;i<5000;i++)
            {
                target.FailedReads++;
                target.FailedWrites++;
                target.PacketsRead++;
                target.PacketsWritten++;
                target.Retries++;
                target.CrcErrors++;
                target.Retries++;
                target.CrcErrors++;
                target.Retries++;
                target.FailedReads++;

                Assert.AreEqual(target.FailedReads,databaseReader.FailedReads);
                Assert.AreEqual(target.FailedWrites ,databaseReader.FailedWrites);
                Assert.AreEqual(target.CrcErrors ,databaseReader.CrcErrors);

                Assert.AreEqual(target.PacketsRead ,databaseReader.PacketsRead);
                Assert.AreEqual(target.PacketsWritten ,databaseReader.PacketsWritten);
                Assert.AreEqual(target.Retries, databaseReader.Retries);
            }
        }
    }
}
