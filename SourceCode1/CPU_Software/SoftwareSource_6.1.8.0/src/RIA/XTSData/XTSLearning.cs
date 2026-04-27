/* 
 * XTSLearning.cs
 * 
 * Data class to encapsulate the states of the Learning procedure.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 07/03/2012
 */

using System;

namespace XTS
{
    /// <summary>
    /// Encapsulates the learning procedure states.
    /// </summary>
    public class XTSLearning : XTSData
    {
        /// <summary>
        /// The states that can be displayed by the learning screen
        /// </summary>
        public enum LearningState
        {
            Unknown,
            CylinderFiringOrder,
            NotCal,
            Stage1Start,
            Stage1,
            Stage1Complete,
            Stage2,
            Stage2Complete,
            Stage3,
            Stage4,
            Stage5,
            Complete,
            CompleteEnableVerification,
            Abort
        }

        /// <summary>
        /// Internal data for CurrentState
        /// </summary>
        private LearningState currentState;
        /// <summary>
        /// The current state of the learning procedure
        /// </summary>
        public LearningState CurrentState
        {
            get
            {
                return this.currentState;
            }
            set
            {
                this.currentState = value;
                OnPropertyChanged("CurrentState");
            }
        }

        /// <summary>
        /// Internal data for TimeRemaining
        /// </summary>
        private uint timeRemaining;
        /// <summary>
        /// The time remaining of the learning procedure in minutes.
        /// </summary>
        public uint TimeRemaining
        {
            get
            {
                return this.timeRemaining;
            }
            set
            {
                this.timeRemaining = value;
                OnPropertyChanged("TimeRemaining");
            }
        }

        /// <summary>
        /// Internal data for SpeedValid
        /// </summary>
        private bool? speedValid = null;
        /// <summary>
        /// Wether the current RPM falls between tha acceptable speed bounds for the current stage
        /// </summary>
        /// <remarks>A null value means state is inderterminate.</remarks>
        public bool? SpeedValid
        {
            get
            {
                return this.speedValid;
            }
            set
            {
                this.speedValid = value;
                OnPropertyChanged("SpeedValid");
            }
        }

        /// <summary>
        /// Internal data for SpeedBand1Min
        /// </summary>
        private int speedBand1Min;
        /// <summary>
        /// Rough calibration for Speed Band 1 Minimum
        /// </summary>
        public int SpeedBand1Min
        {
            get
            {
                return this.speedBand1Min;
            }
            set
            {
                this.speedBand1Min = value;
                OnPropertyChanged("SpeedBand1Min");
            }
        }

        /// <summary>
        /// Internal data for SpeedBand1Max
        /// </summary>
        private int speedBand1Max;
        /// <summary>
        /// Rough calibration for Speed Band 1 Maximum
        /// </summary>
        public int SpeedBand1Max
        {
            get
            {
                return this.speedBand1Max;
            }
            set
            {
                this.speedBand1Max = value;
                OnPropertyChanged("SpeedBand1Max");
            }
        }

        /// <summary>
        /// Internal data for SpeedBand2Min
        /// </summary>
        private int speedBand2Min;
        /// <summary>
        /// Rough calibration for Speed Band 2 Minimum
        /// </summary>
        public int SpeedBand2Min
        {
            get
            {
                return this.speedBand2Min;
            }
            set
            {
                this.speedBand2Min = value;
                OnPropertyChanged("SpeedBand2Min");
            }
        }

        /// <summary>
        /// Internal data for SpeedBand2Max
        /// </summary>
        private int speedBand2Max;
        /// <summary>
        /// Rough calibration for Speed Band 2 Maximum
        /// </summary>
        public int SpeedBand2Max
        {
            get
            {
                return this.speedBand2Max;
            }
            set
            {
                this.speedBand2Max = value;
                OnPropertyChanged("SpeedBand2Max");
            }
        }

        /// <summary>
        /// Internal data for SpeedBand3Min
        /// </summary>
        private int speedBand3Min;
        /// <summary>
        /// Rough calibration for Speed Band 3 Minimum
        /// </summary>
        public int SpeedBand3Min
        {
            get
            {
                return this.speedBand3Min;
            }
            set
            {
                this.speedBand3Min = value;
                OnPropertyChanged("SpeedBand3Min");
            }
        }

        /// <summary>
        /// Internal data for SpeedBand1Max
        /// </summary>
        private int speedBand3Max;
        /// <summary>
        /// Rough calibration for Speed Band 3 Maximum
        /// </summary>
        public int SpeedBand3Max
        {
            get
            {
                return this.speedBand3Max;
            }
            set
            {
                this.speedBand3Max = value;
                OnPropertyChanged("SpeedBand3Max");
            }
        }

        /// <summary>
        /// Internal data for Verified
        /// </summary>
        private bool verified = false;
        /// <summary>
        /// Set when the user enters a valid code from AMOT
        /// </summary>
        public bool Verified
        {
            get
            {
                return this.verified;
            }
            set
            {
                this.verified = value;
                OnPropertyChanged("Verified");
            }
        }

        /// <summary>
        /// Internal data for SentVerificationData
        /// </summary>
        private bool sentVerificationData = false;
        /// <summary>
        /// Flags that the user has exported the learning data
        /// </summary>
        public bool SentVerificationData
        {
            get
            {
                return this.sentVerificationData;
            }
            set
            {
                this.sentVerificationData = value;
                OnPropertyChanged("SentVerificationData");
            }
        }
    }
}
