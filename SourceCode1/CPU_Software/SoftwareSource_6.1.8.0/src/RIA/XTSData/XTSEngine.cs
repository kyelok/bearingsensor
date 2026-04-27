/* 
 * XTSEngine.cs
 * 
 * Engine data required by the UI.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 09/02/2012
 */

using System;
using System.Collections.Generic;

namespace XTS
{
    /// <summary>
    /// Cylinder class for storing data about cylinders
    /// </summary>
    public class XTSCylinder : XTSData, IComparable
    {
        #region Cylinder Bindable Data Properties
        /// <summary>
        /// Internal data for SensorComparison
        /// </summary>
        private bool? sensorComparison = null;
        /// <summary>
        /// If the comparison of the sensors within this cylinder is OK.
        /// If it is set to null, the comparison state is unknown.
        /// </summary>
        public bool? SensorComparison
        {
            set
            {
                this.sensorComparison = value;
                OnPropertyChanged("SensorComparison");
            }
            get
            {
                return this.sensorComparison;
            }
        }
        
        /// <summary>
        /// Internal data for deviation
        /// </summary>
        private int deviation;
        /// <summary>
        /// Cylinder deviation in µm, calculated by the hardware from sensor deviation
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
        /// Cylinder wear in µm, calculated by the hardware from sensor wear
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
        /// The current cylinder status as reported by the hardware.
        /// </summary>
        /// <remarks>This should be used for determining the status of the sensor,
        /// it should not be derived from the wear and bounds.</remarks>
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

        #region Crosshead and Crankpin
        private XTSSensorStatus crossHead;
        public XTSSensorStatus CrossHead
        {
            set
            {
                this.crossHead = value;
                OnPropertyChanged("CrossHead");
            }
            get
            {
                return this.crossHead;
            }
        }

        private XTSSensorStatus crankPin;
        public XTSSensorStatus CrankPin
        {
            set
            {
                this.crankPin = value;
                OnPropertyChanged("CrankPin");
            }
            get
            {
                return this.crankPin;
            }
        }
        #endregion // Crosshead and Crankpin

        private XTSDataCollection<XTSSensor> sensors;
        public XTSDataCollection<XTSSensor> Sensors
        {
            get
            {
                return this.sensors;
            }
        }
        #endregion // Cylinder Bindable Data Properties

        #region ID Members
        /// <summary>
        /// Internal data for Index
        /// </summary>
        private uint index;
        /// <summary>
        /// The index of the cylinder within the engine
        /// </summary>
        public uint Index
        {
            set
            {
                this.index = value;
            }
            get
            {
                return this.index;
            }
        }
        #endregion // ID Members

        #region Constructors
        /// <summary>
        /// Creates a cylinder with no sensors installed.
        /// </summary>
        /// <param name="index">The number of this cylinder within the engine</param>
        public XTSCylinder(uint index)
            : this(index, null)
        { }

        public XTSCylinder(uint index, uint sensorCount)
        {
            this.index = index;
            this.sensors = new XTSDataCollection<XTSSensor>();

            List<XTSSensor> sensors = new List<XTSSensor>();
            for (uint i = 1; i <= sensorCount; i++)
            {
                sensors.Add(new XTSSensor(this, i));
            }
            this.sensors.AddRange(sensors);
        }

        /// <summary>
        /// Main constructor, creates a cylinder with a list of sensors.
        /// </summary>
        /// <param name="index">The number of this cylinder within the engine</param>
        /// <param name="sensors">The sensors installed within this engine</param>
        public XTSCylinder(uint index, List<XTSSensor> sensors)
        {
            if (sensors == null)
            {
                this.sensors = new XTSDataCollection<XTSSensor>();
            }
            else
            {
                this.sensors = new XTSDataCollection<XTSSensor>(sensors);
            }
            this.index = index;
        }
        #endregion // Constructors

        #region IComparable Members

        /// <summary>
        /// Compares the current instance with another object of the same type and returns an
        /// integer that indicates whether the current instance precedes, follows, or occurs
        /// in the same position in the sort order as the other object.
        /// </summary>
        /// <remarks>This implementation checks the cylinder IDs only.</remarks>
        /// <param name="obj">An object to compare with this instance.</param>
        /// <returns>A value that indicates the relative order of the objects being compared.</returns>
        public int CompareTo(object obj)
        {
            if (obj == null)
            {
                return 1;
            }
            XTSCylinder objCylinder = obj as XTSCylinder;
            return this.index.CompareTo(objCylinder.Index);
        }
        #endregion

        #region Overrides
        /// <summary>
        /// Override to create a text representation of the cylinder (Cylinder [index]).
        /// </summary>
        /// <returns>The formatted string.</returns>
        public override string ToString()
        {
            return String.Format("Cylinder {0}", this.index);
        }
        #endregion // Overrides
    }

    /// <summary>
    /// Water In Oil component
    /// </summary>
    public class XTSWIO : XTSData
    {
        /// <summary>
        /// The units that are used for WIO display
        /// </summary>
        public enum XTSWIOUnits
        {
            Error,
            PPM,
            Percent,
            aW
        }

        /// <summary>
        /// Internal data for Connection
        /// </summary>
        private bool? connection = null;
        /// <summary>
        /// States if the SPU's connection to the sensor is working.
        /// </summary>
        /// <remarks>Set to null if unknown</remarks>
        public bool? Connection
        {
            set
            {
                this.connection = value;
                OnPropertyChanged("Connection");
            }
            get
            {
                return this.connection;
            }
        }

        /// <summary>
        /// Internal data for Status.
        /// </summary>
        private XTSSensorStatus status;
        /// <summary>
        /// The current status read from the hardware.
        /// </summary>
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

        /// <summary>
        /// Internal data for units
        /// </summary>
        private XTSWIOUnits units;

        /// <summary>
        /// The units that the WIO is reported in
        /// </summary>
        public XTSWIOUnits Units
        {
            set
            {
                this.units = value;
                OnPropertyChanged("Units");
            }

            get
            {
                return this.units;
            }
        }

        /// <summary>
        /// Internal data for error value
        /// </summary>
        private Int16 errorValue;

        /// <summary>
        /// The error value reported by WIO
        /// </summary>
        public Int16 ErrorValue
        {
            set
            {
                this.errorValue = value;
                OnPropertyChanged("ErrorValue");
                OnPropertyChanged("Value");
            }
            get
            {
                return this.errorValue;
            }
        }

        /// <summary>
        /// Internal data for WIO
        /// </summary>
        private double wioData;
        /// <summary>
        /// The water in oil ppm aW
        /// </summary>
        public double Value
        {
            set
            {
                this.wioData = value;
                OnPropertyChanged("Value");
            }
            get
            {
                return this.wioData;
            }
        }

        /// <summary>
        /// Internal data for WIO
        /// </summary>
        private uint wioValeAct;
        /// <summary>
        /// The water in oil percentage for pop up
        /// </summary>
        public uint WioValeAct
        {
            set
            {
                this.wioValeAct = value;
                OnPropertyChanged("WioValeAct");
            }
            get
            {
                return this.wioValeAct;
            }
        }

        /// <summary>
        /// Internal data for WIO alarm
        /// </summary>
        private uint wioAlarm;
        /// <summary>
        /// The alarm for pop up
        /// </summary>
        public uint WioAlarm
        {
            set
            {
                this.wioAlarm = value;                
            }
            get
            {
                return this.wioAlarm;
            }
        }

        /// <summary>
        /// Internal data for WIO alarm
        /// </summary>
        private uint wioUpAlarm;
        /// <summary>
        /// The alarm for pop up
        /// </summary>
        public uint WioUpAlarm
        {
            set
            {
                this.wioUpAlarm = value;
            }
            get
            {
                return this.wioUpAlarm;
            }
        }

        /// <summary>
        /// Internal data for WIO scale min
        /// </summary>
        private int wioScaleMin;
        /// <summary>
        /// The alarm scale for pop up
        /// </summary>
        public int WioScaleMin
        {
            set
            {
                this.wioScaleMin = value;
            }
            get
            {
                return this.wioScaleMin;
            }
        }

        /// <summary>
        /// Internal data for WIO scale max
        /// </summary>
        private int wioScaleMax;
        /// <summary>
        /// The alarm scale for pop up
        /// </summary>
        public int WioScaleMax
        {
            set
            {
                this.wioScaleMax = value;
            }
            get
            {
                return this.wioScaleMax;
            }
        }
	}

    /// <summary>
    /// CPP component
    /// </summary>
    public class XTSCPP : XTSData
    {
        /// <summary>
        /// Internal data for Connection
        /// </summary>
        private bool? connection = null;
        /// <summary>
        /// States if the SPU's connection to the sensor is working.
        /// </summary>
        /// <remarks>Set to null if unknown</remarks>
        public bool? Connection
        {
            set
            {
                this.connection = value;
                OnPropertyChanged("Connection");
            }
            get
            {
                return this.connection;
            }
        }

        /// <summary>
        /// The units that are used for CPP display
        /// </summary>
        public enum XTSCPPUnits
        {
            mA,
            Percent
        }

        /// <summary>
        /// Internal data for units
        /// </summary>
        private XTSCPPUnits units;

        /// <summary>
        /// The units that the CPP is reported in
        /// </summary>
        public XTSCPPUnits Units
        {
            set
            {
                this.units = value;
                OnPropertyChanged("Units");
            }

            get
            {
                return this.units;
            }
        }


        /// <summary>
        /// Internal data for CPP
        /// </summary>
        private short cppMa;
        /// <summary>
        /// CPP in mA
        /// /// </summary>
        public short CppMa
        {
            set
            {
                this.cppMa = value;
                OnPropertyChanged("CppMa");
            }
            get
            {
                return this.cppMa;
            }
        }

        /// <summary>
        /// Internal data for CPP
        /// </summary>
        private short cppPcnt;
        /// <summary>
        /// The cpp percentage
        /// </summary>
        public short CppPcnt
        {
            set
            {
                this.cppPcnt = value;
                OnPropertyChanged("CppPcnt");
            }
            get
            {
                return this.cppPcnt;
            }
        }

    }

    /// <summary>
    /// The SEDM engine component.
    /// </summary>
    public class XTSSEDM : XTSData
    {
        /// <summary>
        /// Internal data for Connection
        /// </summary>
        private bool? connection = null;
        /// <summary>
        /// States if the SPU's connection to the sensor is working.
        /// </summary>
        /// <remarks>Set to null if unknown</remarks>
        public bool? Connection
        {
            set
            {
                this.connection = value;
                OnPropertyChanged("Connection");
            }
            get
            {
                return this.connection;
            }
        }

        /// <summary>
        /// Internal data for Status.
        /// </summary>
        private XTSSensorStatus status;
        /// <summary>
        /// The current status read from the hardware.
        /// </summary>
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

        /// <summary>
        /// Internal data for mV
        /// </summary>
		private Int16 mV;
        /// <summary>
        /// The voltage read by the SEDM Voltemeter.
        /// </summary>
        public Int16 Value
        {
            set
            {
                this.mV = value;
                OnPropertyChanged("Value");
            }
            get
            {
                return this.mV;
            }
        }

        /// <summary>
        /// Internal data for alarm level
        /// </summary>
        private Int16 alarmLevel;
        /// <summary>
        /// The voltage read by the SEDM Voltemeter.
        /// </summary>
        public Int16 AlarmLevel
        {
            set
            {
                this.alarmLevel = value;
                OnPropertyChanged("AlarmLevel");
            }
            get
            {
                return this.alarmLevel;
            }
        }
	}
	
    /// <summary>
    /// The main bearing data.
    /// </summary>
    public class XTSBearing : XTSData
    {
        #region Bearing Bindable Data Properties

        /// <summary>
        /// Internal data for Status.
        /// </summary>
        private XTSSensorStatus status;
        /// <summary>
        /// The current status read from the hardware.
        /// </summary>
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

        /// <summary>
        /// Internal data for temperature.
        /// </summary>
        private double temperature;
        /// <summary>
        /// The current temperature in degrees celsius.
        /// </summary>
        public double Temperature
        {
            set
            {
                this.temperature = value;
                OnPropertyChanged("Temperature");
            }
            get
            {
                return this.temperature;
            }
        }
        #endregion

        #region ID Members
        /// <summary>
        /// Internal data for Index
        /// </summary>
        private uint index;
        /// <summary>
        /// The bearing id to display.
        /// </summary>
        public uint Index
        {
            get
            {
                return this.index;
            }
        }
        #endregion // ID Members

        /// <summary>
        /// Default constructor
        /// </summary>
        public XTSBearing() : this(1)
        {}

        /// <summary>
        /// Main constructor, sets the bearing index.
        /// </summary>
        /// <param name="index">The index of this main bearing</param>
        public XTSBearing (uint index)
	    {
            this.index = index;
	    }
    }

    /// <summary>
    /// The main bearing data.
    /// </summary>
    public class XTSBearTemperature : XTSData, IComparable
    {
        #region BearTemperature Bindable Data Properties   
     
        /// <summary>
        /// Internal data for SensorComparison
        /// </summary>
        private bool? sensorComparison = null;
        /// <summary>
        /// If the comparison of the sensors within this cylinder is OK.
        /// If it is set to null, the comparison state is unknown.
        /// </summary>
        public bool? SensorComparison
        {
            set
            {
                this.sensorComparison = value;
                OnPropertyChanged("SensorComparison");
            }
            get
            {
                return this.sensorComparison;
            }
        }

        /// <summary>
        /// Internal data for temperature.
        /// </summary>
        private int temperatureDev;
        /// <summary>
        /// The current temperature in degrees celsius.
        /// </summary>
        public int TemperatureDev
        {
            set
            {
                this.temperatureDev = value;
                OnPropertyChanged("TemperatureDev");
            }
            get
            {
                return this.temperatureDev;
            }
        }

        /// <summary>
        /// Internal data for temperature.
        /// </summary>
        private int temperature;
        /// <summary>
        /// The current temperature in degrees celsius.
        /// </summary>
        public int Temperature
        {
            set
            {
                this.temperature = value;
                OnPropertyChanged("Temperature");
            }
            get
            {
                return this.temperature;
            }
        }

        /// <summary>
        /// Internal data for channel name.
        /// </summary>
        private string channelname;
        /// <summary>
        /// The current channel name.
        /// </summary>
        public string Channelname
        {
            set
            {
                this.channelname = value;
            }
            get
            {
                return this.channelname;
            }
        }

        /// <summary>
        /// Internal data for temperature.
        /// </summary>
        private int alarmLevel;
        /// <summary>
        /// The alarmLevel in degrees celsius.
        /// </summary>
        public int AlarmLevel
        {
            set
            {
                this.alarmLevel = value;
                OnPropertyChanged("AlarmLevel");
            }
            get
            {
                return this.alarmLevel;
            }
        }

        /// <summary>
        /// Internal data for temperature.
        /// </summary>
        private int slowdownLevel;
        /// <summary>
        /// The slowdownlevel in degrees celsius.
        /// </summary>
        public int SlowdownLevel
        {
            set
            {
                this.slowdownLevel = value;
                OnPropertyChanged("SlowdownLevel");
            }
            get
            {
                return this.slowdownLevel;
            }
        }

        /// <summary>
        /// Internal data for temperature.
        /// </summary>
        private bool enable;
        /// <summary>
        /// The enable status for sensor.
        /// </summary>
        public bool Enable
        {
            set
            {
                this.enable = value;
                OnPropertyChanged("Enable");
            }
            get
            {
                return this.enable;
            }
        }

        /// <summary>
        /// Internal data for ReadingStatus
        /// </summary>
        private XTSSensorStatus displayStatus;
        /// <summary>
        /// Status for the current reading, which data range is it in?
        /// </summary>
        public XTSSensorStatus DisplayStatus
        {
            set
            {
                this.displayStatus = value;
                OnPropertyChanged("DisplayStatus");
            }
            get
            {
                return this.displayStatus;
            }
        }

        /// <summary>
        /// Internal data for ReadingStatus
        /// </summary>
        private XTSSensorStatus displayDevStatus;
        /// <summary>
        /// Status for the current reading, which data range is it in?
        /// </summary>
        public XTSSensorStatus DisplayDevStatus
        {
            set
            {
                this.displayDevStatus = value;
                OnPropertyChanged("DisplayDevStatus");
            }
            get
            {
                return this.displayDevStatus;
            }
        }

        #endregion // BearTemperature Bindable Data Properties
        #region ID Members
        /// <summary>
        /// Internal data for Index
        /// </summary>
        private uint index;
        /// <summary>
        /// The bearing id to display.
        /// </summary>
        public uint Index
        {
            get
            {
                return this.index;
            }
        }
        #endregion // ID Members

        /// <summary>
        /// Default constructor
        /// </summary>
        public XTSBearTemperature()
            : this(1)
        { }

        /// <summary>
        /// Main constructor, sets the bearing index.
        /// </summary>
        /// <param name="index">The index of this main bearing</param>
        public XTSBearTemperature(uint index)
        {
            this.index = index;
        }

        #region IComparable Members

        /// <summary>
        /// Compares the current instance with another object of the same type and returns an
        /// integer that indicates whether the current instance precedes, follows, or occurs
        /// in the same position in the sort order as the other object.
        /// </summary>
        /// <remarks>This implementation checks the cylinder IDs only.</remarks>
        /// <param name="obj">An object to compare with this instance.</param>
        /// <returns>A value that indicates the relative order of the objects being compared.</returns>
        public int CompareTo(object obj)
        {
            if (obj == null)
            {
                return 1;
            }
            XTSBearTemperature objCylinder = obj as XTSBearTemperature;
            return this.index.CompareTo(objCylinder.Index);
        }
        #endregion

        #region Overrides
        /// <summary>
        /// Override to create a text representation of the cylinder (Cylinder [index]).
        /// </summary>
        /// <returns>The formatted string.</returns>
        public override string ToString()
        {
            return String.Format("Cylinder {0}", this.index);
        }
        #endregion // Overrides
    }

    /// <summary>
    ///  The complete engine that stores engine data and lists the components.
    /// </summary>
    public class XTSEngine : XTSData
    {
        #region Data Value Error Codes

        /// <summary>
        /// Sensor Disabled
        /// </summary>
        public const Int16 SensorDisabled = -32761;

        /// <summary>
        /// Sensor failure – rpm OOR
        /// </summary>
        /// <remarks>TODO: Check this!</remarks>
        public const Int16 SensorAdjustment = -32762;

        /// <summary>
        /// Sensor failure – rpm OOR
        /// </summary>
        public const Int16 SensorFailureRPMORR = -32763;

        /// <summary>
        /// Sensor failure – high level
        /// </summary>
        public const Int16 SensorFailureHighLevel = -32764;

        /// <summary>
        /// Sensor failure – low level
        /// </summary>
        public const Int16 SensorFailureLowLevel = -32765;

        /// <summary>
        /// Sensor failure – no pulse
        /// </summary>
        public const Int16 SensorFailureNoPulse = -32766;

        /// <summary>
        /// Sensor failure – SLEM, RPM, etc
        /// </summary>
        public const UInt16 SensorFailure = 32771;

        #endregion

        /// <summary>
        /// The Sensor DC Mode Types
        /// </summary>
        public enum XTSSensorMode : short
        {
            Unknown = 0,
            DCMode,
            PulseMode,
            DCPeakHold
        };

        /// <summary>
        /// The direction of the engine
        /// </summary>
        public enum XTSEngineDirection : short
        {
            Unknown,
            Forward,
            Astern,
            NotSet
        };

        /// <summary>
        /// Internal data for holding the engine direction
        /// </summary>
        XTSEngineDirection direction;
        
        /// <summary>
        /// The current direction of the engine
        /// </summary>
        public XTSEngineDirection Direction
        {
            set
            {
                this.direction = value;
                OnPropertyChanged("Direction");
            }

            get
            {
                return this.direction;
            }
        }

        /// <summary>
        /// Internal data for RPM
        /// </summary>
        // TODO: Make unsigned
        private int rpm;
        /// <summary>
        /// The current RPM of the engine's crank shaft
        /// </summary>
        public int RPM
        {
            set
            {
                this.rpm = value;
                OnPropertyChanged("RPM");
            }
            get
            {
                return this.rpm;
            }
        }        

        /// <summary>
        /// Internal data for WIO.
        /// </summary>
        private XTSWIO wio = null;
        /// <summary>
        /// Water in oil data within the engine, null if sensor isn't fitted.
        /// </summary>
        public XTSWIO WIO
        {
            set
            {
                this.wio = value;
                OnPropertyChanged("WIO");
            }
            get
            {
                return this.wio;
            }
        }

        /// <summary>
        /// Internal data for SEDM.
        /// </summary>
        private XTSSEDM sedm = null;
        /// <summary>
        /// SEDM data within the engine.  Null if sensor isn't fitted.
        /// </summary>
        public XTSSEDM SEDM
        {
            set
            {
                this.sedm = value;
                OnPropertyChanged("SEDM");
            }
            get
            {
                return this.sedm;
            }
        }

        /// <summary>
        /// Internal data for CPP.
        /// </summary>
        private XTSCPP cpp = null;
        /// <summary>
        /// cpp data within the engine, null if sensor isn't fitted.
        /// </summary>
        public XTSCPP CPP
        {
            set
            {
                this.cpp = value;
                OnPropertyChanged("CPP");
            }
            get
            {
                return this.cpp;
            }
        }

        /// <summary>
        /// Internal data for TimingChain
        /// </summary>
        private uint? timingChain = null;
        /// <summary>
        /// Specifies which cylinder the timing chain is located in front of if fitted, null if it is not.
        /// </summary>
        public uint? TimingChain
        {
            set
            {
                this.timingChain = value;
            }
            get
            {
                return this.timingChain;
            }
        }

        /// <summary>
        /// Internal collection of main bearings.
        /// </summary>
        private XTSDataCollection<XTSBearing> bearings;
        /// <summary>
        /// The collection of main bearings that are in this engine.
        /// </summary>
        /// <remarks>
        /// It is assumed that there is a main bearing in between each of the cylinders and timing chain within the main
        /// engine block.</remarks>
        public XTSDataCollection<XTSBearing> MainBearings
        {
            get
            {
                return this.bearings;
            }
            set
            {
                this.bearings = value;
                OnPropertyChanged("MainBearings");
            }
        }

        /// <summary>
        /// Internal collection of engine cylinders in this engine.
        /// </summary>
        private XTSDataCollection<XTSCylinder> cylinders;
        /// <summary>
        /// The collection of cylinders that are in this engine.
        /// </summary>
        public XTSDataCollection<XTSCylinder> Cylinders
        {
            get
            {
                return this.cylinders;
            }
            set
            {
                this.cylinders = value;
                OnPropertyChanged("Cylinders");
            }
        }

        /// <summary>
        /// Internal data for ThrustRadiaBearingStatus
        /// </summary>
        private int thrustRadiaBearingStatus;
        /// <summary>
        /// status of thrus bearing
        /// </summary>
        public int ThrustRadiaBearingStatus
        {
            get
            {
                return this.thrustRadiaBearingStatus;
            }
            set
            {
                this.thrustRadiaBearingStatus = value;
            }
        }

        /// <summary>
        /// Internal data for SensorPerMainBearing
        /// </summary>
        private int sensorPerMainBearing;
        /// <summary>
        /// sensor number per main bearing
        /// </summary>
        public int SensorPerMainBearing
        {
            get
            {
                return this.sensorPerMainBearing;
            }
            set
            {
                this.sensorPerMainBearing = value;
            }
        }

        /// <summary>
        /// Internal data for SensorPerCrossheadBearing
        /// </summary>
        private int sensorPerCrossheadBearing;
        /// <summary>
        /// sensor number per cross head bearing
        /// </summary>
        public int SensorPerCrossheadBearing
        {
            get
            {
                return this.sensorPerCrossheadBearing;
            }
            set
            {
                this.sensorPerCrossheadBearing = value;
            }
        }

        /// <summary>
        /// Internal data for SensorPerCrankpinBearing
        /// </summary>
        private int sensorPerCrankpinBearing;
        /// <summary>
        /// sensor number per crankpin  bearing
        /// </summary>
        public int SensorPerCrankpinBearing
        {
            get
            {
                return this.sensorPerCrankpinBearing;
            }
            set
            {
                this.sensorPerCrankpinBearing = value;
            }
        }

        /// <summary>
        /// Internal data for SensorPerThrustRadialBearing
        /// </summary>
        private int sensorPerThrustRadialBearing;
        /// <summary>
        /// sensor number per thrust bearing
        /// </summary>
        public int SensorPerThrustRadialBearing
        {
            get
            {
                return this.sensorPerThrustRadialBearing;
            }
            set
            {
                this.sensorPerThrustRadialBearing = value;
            }
        }

        /// <summary>
        /// Internal data for Temperature sensor number
        /// </summary>
        private int temperatureSensors;
        /// <summary>
        /// how many tempearture sensors actually installed
        /// </summary>
        public int TemperatureSensors
        {
            get
            {
                return this.temperatureSensors;
            }
            set
            {
                this.temperatureSensors = value;
            }
        }

        /// <summary>
        /// Internal data for Temperature bar scale
        /// </summary>
        private int temperatureBarscale;
        
        public int TemperatureBarscale
        {
            get
            {
                return this.temperatureBarscale;
            }
            set
            {
                this.temperatureBarscale = value;
            }
        }

        /// <summary>
        /// Internal data for Temperature dev bar scale
        /// </summary>
        private int temperatureDevBarscale;

        public int TemperatureDevBarscale
        {
            get
            {
                return this.temperatureDevBarscale;
            }
            set
            {
                this.temperatureDevBarscale = value;
            }
        }

        /// <summary>
        /// Internal data for Temperature alarm level
        /// </summary>
        private int temperatureAlarmLevel;

        public int TemperatureAlarmLevel
        {
            get
            {
                return this.temperatureAlarmLevel;
            }
            set
            {
                this.temperatureAlarmLevel = value;
            }
        }

        /// <summary>
        /// Internal data for Temperature slowdown level
        /// </summary>
        private int temperatureSlowdownLevel;

        public int TemperatureSlowdownLevel
        {
            get
            {
                return this.temperatureSlowdownLevel;
            }
            set
            {
                this.temperatureSlowdownLevel = value;
            }
        }

        /// <summary>
        /// Internal data for Temperature dev alarm level
        /// </summary>
        private int temperatureDevAlarmLevel;

        public int TemperatureDevAlarmLevel
        {
            get
            {
                return this.temperatureDevAlarmLevel;
            }
            set
            {
                this.temperatureDevAlarmLevel = value;
            }
        }

        /// <summary>
        /// Internal data for Temperature dev slowdown level
        /// </summary>
        private int temperatureDevSlowdownLevel;

        public int TemperatureDevSlowdownLevel
        {
            get
            {
                return this.temperatureDevSlowdownLevel;
            }
            set
            {
                this.temperatureDevSlowdownLevel = value;
            }
        }

        /// <summary>
        /// Internal collection of beraing temperature in this engine.
        /// </summary>
        private XTSDataCollection<XTSBearTemperature> beraingtemperature;
        /// <summary>
        /// The collection of temprature that are in this engine.
        /// </summary>
        public XTSDataCollection<XTSBearTemperature> Bearingtemperature
        {
            get
            {
                return this.beraingtemperature;
            }
            set
            {
                this.beraingtemperature = value;
                OnPropertyChanged("Beraingtemperature");
            }
        }

        /// <summary>
        /// Internal data for CylinderCountSPU1
        /// </summary>
        private int cylinderCountSPU1 = 7;

        /// <summary>
        /// THe number of the cylinders that are present on SPU1
        /// </summary>
        /// <remarks>Assumes all others are on SPU2</remarks>
        public int CylinderCountSPU1
        {
            get
            {
                return this.cylinderCountSPU1;
            }
            set
            {
                this.cylinderCountSPU1 = value;
                OnPropertyChanged("CylinderCountSPU1");
            }
        }

        /// <summary>
        /// Internal data for CylinderFiringOrder.
        /// </summary>
        private int[] cylinderFiringOrder = new int[7];
        /// <summary>
        /// The cylinder firing order.
        /// </summary>
        public int[] CylinderFiringOrder
        {
            get
            {
                return this.cylinderFiringOrder;
            }
        }

        /// <summary>
        /// Function to notify bound classes that the CylinderFiringOrder has finished being updated.
        /// </summary>
        public void CylinderFiringOrderUpdated()
        {
            OnPropertyChanged("CylinderFiringOrder");
        }

        #region Alarm/Slowdown Thresholds
        /// <summary>
        /// Internal data for SlowdownThreshold
        /// </summary>
        private uint slowdownThreshold;
        /// <summary>
        /// The threshold that will cause a sensor to show Slowdown state
        /// </summary>
        /// <remarks>Used only for determining the display of the bar chart indicators, the sensor/cylinder state
        /// will determine the overall display of the sensor/cylinder.</remarks>
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
        /// The threshold that will cause a sensor to show Alarm state
        /// </summary>
        /// <remarks>Used only for determining the display of the bar chart indicators, the sensor/cylinder state
        /// will determine the overall display of the sensor/cylinder.</remarks>
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
        
        /// <summary>
        /// Internal data for SlowdownDeviationThreshold
        /// </summary>
        private uint slowdownDeviationThreshold;
        /// <summary>
        /// The threshold that will cause a sensor to show Slowdown state
        /// </summary>
        /// <remarks>Used only for determining the display of the bar chart indicators, the sensor/cylinder state
        /// will determine the overall display of the sensor/cylinder.</remarks>
        public uint SlowdownDeviationThreshold
        {
            set
            {
                this.slowdownDeviationThreshold = value;
                OnPropertyChanged("SlowdownDeviationThreshold");
            }
            get
            {
                return this.slowdownDeviationThreshold;
            }
        }

        /// <summary>
        /// Internal data for AlarmDeviationThreshold
        /// </summary>
        private uint alarmDeviationThreshold;
        /// <summary>
        /// The threshold that will cause a sensor to show Alarm state
        /// </summary>
        /// <remarks>Used only for determining the display of the bar chart indicators, the sensor/cylinder state
        /// will determine the overall display of the sensor/cylinder.</remarks>
        public uint AlarmDeviationThreshold
        {
            set
            {
                this.alarmDeviationThreshold = value;
                OnPropertyChanged("AlarmDeviationThreshold");
            }
            get
            {
                return this.alarmDeviationThreshold;
            }
        }

        /// <summary>
        /// Internal data for CylinderAlarmThreshold
        /// </summary>
        private uint cylinderAlarmThreshold;

        /// <summary>
        /// The threshold that will cause a cylinder deviation to show an alarm 
        /// </summary>
        /// <remarks>Used only for determining the display of the bar chart indicators, the sensor/cylinder state
        /// will determine the overall display of the sensor/cylinder.</remarks>        
        public uint CylinderAlarmThreshold
        {
            set
            {
                this.cylinderAlarmThreshold = value;
                OnPropertyChanged("CylinderAlarmThreshold");
            }

            get
            {
                return this.cylinderAlarmThreshold;
            }
        }

        #endregion

        #region Sensor Reading Target Values

        /// <summary>
        /// Structure for holding the required data for sensor targets in Sensor Setup
        /// </summary>
        public struct XTSSensorTarget
        {
            public int IdealHigh;
            public int IdealLow;
            public int OKHigh;
            public int OKLow;
        }

        /// <summary>
        /// Internal data for SensorTarget (µA)
        /// </summary>
        private XTSSensorTarget sensorTarget;
        /// <summary>
        /// Specifies the target in current (µA) that a sensor should be set to for sensor setup
        /// </summary>
        public XTSSensorTarget SensorTarget
        {
            get
            {
                return this.sensorTarget;
            }
            set
            {
                this.sensorTarget = value;
                OnPropertyChanged("SensorTarget");
            }
        }

        /// <summary>
        /// Function to notify client that the bounds have changed if client modifies internal members
        /// of sensorTarget rather than setting the entire structure.
        /// </summary>
        public void SensorTargetChanged()
        {
            OnPropertyChanged("SensorTarget");
        }

        #endregion // Sensor Reading Target Values

        /// <summary>
        /// Internal data for SensorMode
        /// </summary>
        private XTSSensorMode sensorMode = XTSSensorMode.Unknown;
        /// <summary>
        /// The mode of the sensors
        /// </summary>
        public XTSSensorMode SensorMode
        {
            set
            {
                this.sensorMode = value;
                OnPropertyChanged("SensorMode");
            }
            get
            {
                return this.sensorMode;
            }
        }

        /// <summary>
        /// Internal data for RunTime
        /// </summary>
        private uint runTime;
        /// <summary>
        /// Total time in minutes that the engine has been running
        /// </summary>
        public uint RunTime
        {
            set
            {
                this.runTime = value;
                OnPropertyChanged("RunTime");
            }
            get
            {
                return this.runTime;
            }
        }

        /// <summary>
        /// Internal data for RPMLimit
        /// </summary>
        private int rpmLimit;
        /// <summary>
        /// Speed of the engine required for detecting cylinder firing order
        /// </summary>
        public int RPMLimit
        {
            get
            {
                return this.rpmLimit;
            }
            set
            {
                this.rpmLimit = value;
            }
        }

        /// <summary>
        /// Internal data for RPMSlowroll
        /// </summary>
        private bool rpmSlowroll;
        /// <summary>
        /// States if the speed is low enough for performing a slowroll
        /// </summary>
        public bool RPMSlowroll
        {
            get
            {
                return this.rpmSlowroll;
            }
            set
            {
                this.rpmSlowroll = value;
                OnPropertyChanged("RPMSlowroll");
            }
        }

        /// <summary>
        /// Internal data for cylinder reverse
        /// </summary>
        private bool cylinderReverse;
        /// <summary>
        /// States if the engine cylinder number is in reversed order
        /// </summary>
        public bool CylinderReverse
        {
            get
            {
                return this.cylinderReverse;
            }
            set
            {
                this.cylinderReverse = value;                
            }
        }

        /// <summary>
        /// Internal data for RPM20Percent
        /// </summary>
        private int rpm20Percent;
        /// <summary>
        /// Speed of the engine required for calibration/sensor setup
        /// </summary>
        public int RPM20Percent
        {
            get
            {
                return this.rpm20Percent;
            }
            set
            {
                this.rpm20Percent = value;
                OnPropertyChanged("RPM20Percent");
            }
        }

        /// <summary>
        /// Internal data for RPM20Percent
        /// </summary>
        private int rpm100Percent;
        /// <summary>
        /// Speed of the engine required for calibration/sensor setup
        /// </summary>
        public int RPM100Percent
        {
            get
            {
                return this.rpm100Percent;
            }
            set
            {
                this.rpm100Percent = value;
                OnPropertyChanged("RPM100Percent");
            }
        }       

        /// <summary>
        /// Internal data for SPU2Fitted
        /// </summary>
        private bool spu2Fitted;

        /// <summary>
        /// Flag indicating if a second SPU is fitted to the system.
        /// </summary>
        public bool SPU2Fitted
        {
            get
            {
                return this.spu2Fitted;
            }

            set
            {
                this.spu2Fitted = value;
                OnPropertyChanged("SPU2Fitted");
            }
        }

        /// <summary>
        /// Internal data for DatabaseUpdating
        /// </summary>
        private bool databaseUpdating;

        /// <summary>
        /// Flag indicating if a second SPU is fitted to the system.
        /// </summary>
        public bool DatabaseUpdating
        {
            get
            {
                return this.databaseUpdating;
            }

            set
            {
                this.databaseUpdating = value;                
            }
        }

        /// <summary>
        /// Internal data for serial number
        /// </summary>
        private string xtsSerialNumber;

        /// <summary>
        /// string for XTS serial number.
        /// </summary>
        public string XtsSerialNumber
        {
            get
            {
                return this.xtsSerialNumber;
            }

            set
            {
                this.xtsSerialNumber = value;
            }
        }

        /// <summary>
        /// Default constructor
        /// </summary>
        public XTSEngine()
        {
            this.cylinders = new XTSDataCollection<XTSCylinder>();
            this.bearings = new XTSDataCollection<XTSBearing>();

            this.sensorTarget.IdealHigh = 0;
            this.sensorTarget.IdealLow = 0;
            this.sensorTarget.OKHigh = 0;
            this.sensorTarget.OKLow = 0;
        }

        /// <summary>
        /// Search the list of engine components and return the matching cylinder
        /// </summary>
        /// <param name="index">The cylinder ID to search for</param>
        /// <returns>The matched cylinder</returns>
        /// <exception cref="ArgumentOutOfRangeException">If the cylinder could not be found</exception>
        public XTSCylinder FindCylinder(uint index)
        {
            XTSCylinder cylinder = null;

            foreach (XTSCylinder currentCylinder in this.cylinders)
            {
                if (currentCylinder.Index == index)
                {
                    cylinder = currentCylinder;
                    break;
                }
            }
            if (cylinder == null)
            {
                throw new ArgumentOutOfRangeException("Cylinder index not found!");
            }
            return cylinder;
        }
    }    
}
