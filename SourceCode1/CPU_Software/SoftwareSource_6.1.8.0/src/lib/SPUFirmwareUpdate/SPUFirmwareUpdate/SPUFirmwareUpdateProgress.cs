using System;
using System.Collections.Generic;
using System.Text;

namespace SPUFirmwareUpdate
{
    /// <summary>
    /// Class to hold information about progress of firmware update
    /// </summary>
    public class SPUFirmwareUpdateProgress
    {
        private bool slaveSPUPresent = false;
        private SPUFirmwareUpdateStage currentStage = SPUFirmwareUpdateStage.NotStarted;
        private SPUFirmwareUpdateState currentState = SPUFirmwareUpdateState.NotStarted;
        private ushort progress = 0;
        private String errorMessage = "";
        private ushort oldMasterVersion = 0;
        private ushort newMasterVersion = 0;
        private ushort oldSlaveVersion = 0;
        private ushort newSlaveVersion = 0;

        /// <summary>
        /// Constructor requires all instance variables to be set
        /// </summary>
        /// <param name="slaveSPUPresent"></param>
        /// <param name="currentStage"></param>
        /// <param name="currentState"></param>
        /// <param name="progress"></param>
        /// <param name="errorMessage"></param>
        public SPUFirmwareUpdateProgress(bool slaveSPUPresent,
                                        SPUFirmwareUpdateStage currentStage,
                                        SPUFirmwareUpdateState currentState,
                                        ushort progress,
                                        String errorMessage,
                                        ushort oldMasterVersion,
                                        ushort newMasterVersion,
                                        ushort oldSlaveVersion,
                                        ushort newSlaveVersion)
        {
            this.slaveSPUPresent = slaveSPUPresent;
            this.currentStage = currentStage;
            this.currentState = currentState;
            this.progress = progress;
            this.errorMessage = errorMessage;
            this.oldMasterVersion = oldMasterVersion;
            this.newMasterVersion = newMasterVersion;
            this.oldSlaveVersion = oldSlaveVersion;
            this.newSlaveVersion = newSlaveVersion;
        }

        //represent everything as public properties but with protected setters

        public bool SlaveSPUPresent
        {
            get { return slaveSPUPresent; }
            protected set { slaveSPUPresent = value; }
        }

        public SPUFirmwareUpdateStage CurrentStage
        {
            get { return currentStage; }
            protected set { currentStage = value; }
        }

        public SPUFirmwareUpdateState CurrentState
        {
            get { return currentState; }
            protected set { currentState = value; }
        }

        public ushort ProgressPercentage
        {
            get { return progress; }
            protected set { progress = value; }
        }

        public String ErrorMessage
        {
            get { return errorMessage; }
            protected set { errorMessage = value; }
        }

        public ushort OldMasterVersion
        {
            get { return oldMasterVersion; }
            protected set { oldMasterVersion = value; }
        }

        public ushort NewMasterVersion
        {
            get { return newMasterVersion; }
            protected set { newMasterVersion = value; }
        }

        public ushort OldSlaveVersion
        {
            get { return oldSlaveVersion; }
            protected set { oldSlaveVersion = value; }
        }

        public ushort NewSlaveVersion
        {
            get { return newSlaveVersion; }
            protected set { newSlaveVersion = value; }
        }
    }
}
