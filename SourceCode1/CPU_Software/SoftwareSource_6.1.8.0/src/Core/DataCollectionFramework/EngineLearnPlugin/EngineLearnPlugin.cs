/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataCollectionSDK;
using HelperClasses;
using System.IO;
using Configuration;

namespace EngineLearnPlugin
{
    public class EngineLearnPlugin : IExtInterface, IDisposable
    {
        ModuleConfiguration configuration;
        EngineLearnConfiguration moduleSettings;

        ModbusSDK modbusSDK;

        readonly object syncRoot = new object();

        #region IExtInterface Members

        public int RunSchedule
        {
            get
            {
                return moduleSettings.Settings.RunSchedule;
            }
        }

        public int LogSchedule
        {
            get { return 0; }
        }

        public object SyncRoot
        {
            get
            {
                return syncRoot;
            }
        }

        public bool Realtime
        {
            get
            {
                return false;
            }
        }

        /// <summary>
        /// Stop any internal services
        /// </summary>
        public void Stop()
        {
            //DoNothing
        }

        public void Init()
        {
            this.configuration = ModuleConfiguration.GetApplicationConfiguration();
            this.moduleSettings = configuration.GetSection("EngineLearnPlugin") as EngineLearnConfiguration;

            if (moduleSettings == null)
            {
                moduleSettings = new EngineLearnConfiguration();
            }

            this.modbusSDK = new ModbusSDK(ModbusSDK.ModbusPort.Internal);

        }

        public void Run()
        {
            //Check whether a WriteSpeedCompensation is reqd.
            if (IsNewManTblAvailable())
            {
                //Set filepath
                if (!Directory.Exists(moduleSettings.Settings.SpeedCompDirectory))
                {
                    Directory.CreateDirectory(moduleSettings.Settings.SpeedCompDirectory);
                }

                String filepath = String.Format("{0}{1}-speedcomp.csv", moduleSettings.Settings.SpeedCompDirectory, DateTime.UtcNow.ToString("yyMMddHHmmss"));

                try
                {
                    SpeedCompensationOperations.WriteSpeedCompensation(filepath, this.modbusSDK);
                }
                catch (Exception e)
                {
                    if (e is IOException)
                    {
                        if (File.Exists(filepath))
                        {
                            File.Delete(filepath);
                        }

                        //Delete the oldest file to free up disk space
                        File.Delete(SpeedCompensationOperations.GetOldestFileName(moduleSettings.Settings.SpeedCompDirectory));
                    }
                    throw;
                }
            }

            EngineLearningLogging.LogLearningProcedureStatusIfNecessary(this.modbusSDK);
        }

        public void Log(DateTime logTime)
        {
            //Log is not required
        }

        private bool IsNewManTblAvailable()
        {
            UInt16[] regval = modbusSDK.ReadHoldingRegisters(1, 3024, 1);
            if (regval[0] == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        #endregion

        ~EngineLearnPlugin()
        {
            Dispose(false);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                this.modbusSDK.Dispose();
                this.modbusSDK = null;
            }
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
