/* 
 * XTSSurveyorTest.cs
 * 
 * Surveyor data class
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 08/03/2012
 */


namespace XTS
{
    /// <summary>
    /// Class to encapsulate the data required by the surveyor test class.
    /// </summary>
    public class XTSSurveyorTest : XTSData
    {
        // TODO: Do we need a way to zero the DC-held offsets?

        /// <summary>
        /// Current state that the surveyor test is in.
        /// </summary>
        public enum SurveyorTestState
        {
            Stopped,
            //Paused,
            Running
        }

        /// <summary>
        /// Internal data for State
        /// </summary>
        private SurveyorTestState state = SurveyorTestState.Stopped;
        /// <summary>
        /// The current use of the surveyor test function
        /// </summary>
        /// <remarks>Both the UI and DataProvider can modify this value!  When the user starts/pauses the
        /// test, this value should be modified to Running/Paused and the back end should handle the callback.</remarks>
        // TODO: Might be better to have a function to do this...?
        public SurveyorTestState State
        {
            get
            {
                return this.state;
            }
            set
            {
                this.state = value;
                OnPropertyChanged("State");
            }
        }

        /// <summary>
        /// Internal data for SlowdownThreshold.
        /// </summary>
        private uint slowdownThreshold;
        /// <summary>
        /// The threshold that will cause a sensor to show Slowdown state - does not affect overall system value
        /// </summary>
        /// <remarks>When the surveyor test is running or paused, the system should be raising alarms etc. based
        /// on this threshold, not the one specified in XTSEngine.</remarks>
        public uint SlowdownThreshold
        {
            set
            {
                this.slowdownThreshold = value;
                OnPropertyChanged("SlowdownThreshold");
            }
            get
            {
                return this.slowdownThreshold;
            }
        }

        /// <summary>
        /// Internal data for AlarmThreshold
        /// </summary>
        private uint alarmThreshold;
        /// <summary>
        /// The threshold that will cause a sensor to show Alarm state - does not affect overall system value
        /// </summary>
        /// <remarks>When the surveyor test is running or paused, the system should be raising alarms etc. based
        /// on this threshold, not the one specified in XTSEngine.</remarks>
        public uint AlarmThreshold
        {
            set
            {
                this.alarmThreshold = value;
                OnPropertyChanged("AlarmThreshold");
            }
            get
            {
                return this.alarmThreshold;
            }
        }
    }
}
