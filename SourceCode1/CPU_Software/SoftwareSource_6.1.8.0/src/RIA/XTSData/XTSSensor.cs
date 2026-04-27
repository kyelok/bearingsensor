/* 
 * XTSSensor.cs
 * 
 * Sensor data required by the UI.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 27/01/2012
 */

using System;
using AMOTConstants;

namespace XTS
{
    /// <summary>
    /// The sensor status modes
    /// </summary>
    [FlagsAttribute]
    public enum XTSSensorStatus
    {
        Normal = 1,
        Alarm = 2,
        Slowdown = 4,
        Disabled = 8,
        SensorAdjustment = 16,
        PreWarning = 32,
        SensorFailureUnknown = 64,
        SensorFailureNoPulse = 128,
        SensorFailureLowLevel = 256,
        SensorFailureHighLevel = 512,        
        SensorFailureRPMOOR = 1024
    }

    /// <summary>
    /// Indicates wether a precomp/ma value is within the required bounds
    /// </summary>
    public enum XTSSensorRange
    {
        OK,
        Ideal,
        Bad
    }

    /// <summary>
    /// The sensor data
    /// </summary>
    public class XTSSensor : XTSData, IComparable
    {
        /// <summary>
        /// Wraps the sensor id components
        /// </summary>
        public struct XTSSensorID
        {
            public uint cylinder;
            public uint sensor;
        }

        #region Sensor Replace
        public class XTSSensorReplace : XTSData
        {
            /// <summary>
            /// Internal data for TimeRemaining
            /// </summary>
            private uint timeRemaining;
            /// <summary>
            /// The time left of the current stage (minutes)
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
            /// Internal data for TotalTime
            /// </summary>
            private uint totalTime;
            /// <summary>
            /// The total time used in determining the display of the progress bar.
            /// </summary>
            public uint TotalTime
            {
                get
                {
                    return this.totalTime;
                }
                set
                {
                    this.totalTime = value;
                    OnPropertyChanged("TotalTime");
                }
            }

            /// <summary>
            /// Internal data for Stage
            /// </summary>
            private SensorReplacementStage stage = SensorReplacementStage.None;
            /// <summary>
            /// The current stage in the replacement cycle
            /// </summary>
            public SensorReplacementStage Stage
            {
                get
                {
                    return this.stage;
                }
                set
                {
                    this.stage = value;
                    OnPropertyChanged("Stage");
                }
            }

            /// <summary>
            /// Internal data for FailureDate
            /// </summary>
            private DateTime? replacementDate = null;
            /// <summary>
            /// Sensor replacement failure date for this sensor
            /// </summary>
            public DateTime? ReplacementDate
            {
                get
                {
                    return this.replacementDate;
                }
                set
                {
                    this.replacementDate = value;
                    OnPropertyChanged("ReplacementDate");
                }
            }

            /// <summary>
            /// Internal data for FailureDate
            /// </summary>
            private DateTime? failureDate = null;
            /// <summary>
            /// Sensor replacement failure date for this sensor
            /// </summary>
            public DateTime? FailureDate
            {
                get
                {
                    return this.failureDate;
                }
                set
                {
                    this.failureDate = value;
                    OnPropertyChanged("FailureDate");
                }
            }
        }
        #endregion // Sensor Replace

        #region Sensor Bindable Data Properties
        /// <summary>
        /// Internal data for Calibrated
        /// </summary>
        private bool? calibrated;
        /// <summary>
        /// States if this sensor has completed calibration or not.
        /// If it is set to null, then this sensor is not being calibrated.
        /// </summary>
        public bool? Calibrated
        {
            get
            {
                return this.calibrated;
            }
            set
            {
                this.calibrated = value;
                OnPropertyChanged("Calibrated");
            }
        }

        /// <summary>
        /// Internal data for ReadingStatus
        /// </summary>
        private XTSSensorRange readingStatus;
        /// <summary>
        /// Status for the current reading, which data range is it in?
        /// </summary>
        public XTSSensorRange ReadingStatus
        {
            set
            {
                this.readingStatus = value;
                OnPropertyChanged("ReadingStatus");
            }
            get
            {
                return this.readingStatus;
            }
        }

        /// <summary>
        /// Internal data for Reading
        /// </summary>
        private int current;
        /// <summary>
        /// The actual sensor current (µA).
        /// </summary>
        public int Reading
        {
            get
            {
                return this.current;
            }
            set
            {
                this.current = value;
                OnPropertyChanged("Reading");
            }
        }

        /// <summary>
        /// Internal data for ReadingPeak
        /// </summary>
        private int currentPeak;
        /// <summary>
        /// The maximum sensor current (µA).
        /// </summary>
        public int ReadingPeak
        {
            get
            {
                return this.currentPeak;
            }
            set
            {
                this.currentPeak = value;
                OnPropertyChanged("ReadingPeak");
            }
        }

        /// <summary>
        /// Internal data for SlowrollEnabled.
        /// </summary>
        private bool slowrollEnabled = false;
        /// <summary>
        /// Used in sensor setup to disable the graph display.
        /// </summary>
        /// <remarks>Contrary to what you might expect, this is not on a per cylinder basis.</remarks>
        public bool SlowrollEnabled
        {
            get
            {
                return this.slowrollEnabled;
            }
            set
            {
                this.slowrollEnabled = value;
                OnPropertyChanged("SlowrollEnabled");
            }
        }

        /// <summary>
        /// Internal data for PreComp
        /// </summary>
        private int preComp;
        /// <summary>
        /// The pre-comp value with the DC held values subtracted.
        /// </summary>
        public int PreComp
        {
            get
            {
                return this.preComp;
            }
            set
            {
                this.preComp = value;
                OnPropertyChanged("PreComp");
            }
        }

        /// <summary>
        /// Internal data for PreCompPeak
        /// </summary>
        private int preCompPeak;
        /// <summary>
        /// Maximum sensor wear in µm
        /// </summary>
        public int PreCompPeak
        {
            set
            {
                this.preCompPeak = value;
                OnPropertyChanged("PreCompPeak");
            }
            get
            {
                return this.preCompPeak;
            }
        }

        /// <summary>
        /// Internal data for Deviation
        /// </summary>
        private int deviation;
        /// <summary>
        /// Sensor deviation in µm
        /// </summary>
        public int Deviation
        {
            set
            {
                this.deviation = value;
                OnPropertyChanged("Deviation");
            }
            get
            {
                return this.deviation;
            }
        }

        /// <summary>
        /// Internal data for Wear
        /// </summary>
        private int wear;
        /// <summary>
        /// Sensor wear in µm
        /// </summary>
        public int Wear
        {
            set
            {
                this.wear = value;
                OnPropertyChanged("Wear");
            }
            get
            {
                return this.wear;
            }
        }

        /// <summary>
        /// Internal data for DeviationStatus
        /// </summary>
        private XTSSensorStatus deviationStatus;
        /// <summary>
        /// The current cylinder deviation status as reported by the hardware.
        /// </summary>
        /// <remarks>This should be used for determining the status of the sensor,
        /// it should not be derived from the deviation and bounds.</remarks>
        public XTSSensorStatus DeviationStatus
        {
            set
            {
                this.deviationStatus = value;
                OnPropertyChanged("DeviationStatus");
            }
            get
            {
                return this.deviationStatus;
            }
        }

        /// <summary>
        /// Internal data for Status
        /// </summary>
        private XTSSensorStatus status;
        /// <summary>
        /// The current sensor status as reported by the hardware.
        /// </summary>
        /// <remarks>This should be used for determining the status of the sensor,
        /// it should not be derived from the wear and deviation.</remarks>
        public XTSSensorStatus Status
        {
            set
            {
                this.status = value;
                OnPropertyChanged("Status");
            }
            get
            {
                return this.status;
            }
        }

        #endregion // Cylinder Bindable Data Properties

        /// <summary>
        /// Internal data for Replace
        /// </summary>
        private XTSSensorReplace replace;
        /// <summary>
        /// Read only access to replacement data for this sensor
        /// </summary>
        public XTSSensorReplace Replace
        {
            get
            {
                return this.replace;
            }
        }

        #region ID Members
        /// <summary>
        /// Internal data for sensor data
        /// </summary>
        private XTSSensorID index;
        /// <summary>
        /// The index of the sensor in the cylinder
        /// </summary>
        public uint Index
        {
            set
            {
                this.index.sensor = value;
            }
            get
            {
                return this.index.sensor;
            }
        }

        /// <summary>
        /// The parent cylinder index
        /// </summary>
        public uint Cylinder
        {
            get
            {
                return this.index.cylinder;
            }
        }
        #endregion // ID Members

        #region Constructors
        public XTSSensor(XTSCylinder parent, uint index)
        {
            this.index.sensor = index;
            this.index.cylinder = parent.Index;
            this.replace = new XTSSensorReplace();
        }
        #endregion // Constructors

        #region IComparable Members

        /// <summary>
        /// Compares the current instance with another object of the same type and returns an
        /// integer that indicates whether the current instance precedes, follows, or occurs
        /// in the same position in the sort order as the other object.
        /// </summary>
        /// <remarks>This implementation checks the sensor and cylinder IDs.</remarks>
        /// <param name="obj">An object to compare with this instance.</param>
        /// <returns>A value that indicates the relative order of the objects being compared.</returns>
        public int CompareTo(object obj)
        {
            if (obj == null)
            {
                return 1;
            }
            XTSSensor objSensor = obj as XTSSensor;
            int cmpResult = this.index.cylinder.CompareTo(objSensor.Cylinder);
            if (cmpResult == 0)
            {
                cmpResult = this.index.sensor.CompareTo(objSensor.Index);
            }
            return cmpResult;
        }
        #endregion

        #region Overrides
        /// <summary>
        /// Override to create a text representation of the sensor (Sensor [Cylinder] [index]).
        /// </summary>
        /// <returns>The formatted string.</returns>
        public override string ToString()
        {
            return String.Format("Sensor {0} {1}", this.index.cylinder, this.index.sensor);
        }
        #endregion // Overrides
    }
}
