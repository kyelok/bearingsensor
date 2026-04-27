/* 
 * XTSTrend.cs
 * 
 * Trend data required by the UI.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 27/01/2012
 */

using System;
using System.Windows.Controls;
using System.Windows.Media;
using System.Collections.Generic;

namespace XTS
{
    /// <summary>
    /// Individual details of each trend, excluding data
    /// </summary>
    public class XTSTrendDetail : XTSData
    {
        #region Palette for trend lines
        /// <summary>
        /// Seed for random number generation when creating colours
        /// </summary>
        private static Random rand = new Random((int)DateTime.Now.Ticks);

        /// <summary>
        /// Returns a random colour selected from the trends palette
        /// </summary>
        /// <returns>The randomly selected colour</returns>
        private static Color PaletteRandom()
        {
            return XTSTrendDetail.Palette[rand.Next(XTSTrendDetail.Palette.Count)];
        }

        /// <summary>
        /// Generate a colour as we step through the palette, one "row" at a time (ie change colour, but keep shade the same)
        /// </summary>
        /// <returns>The next colour in the palette</returns>
        private static Color PaletteNext()
        {
            if (XTSTrendDetail.colourCurrent < 0)
            {
                XTSTrendDetail.colourCurrent = XTSTrendDetail.COLOURSHADES - 1;
            }
            else
            {
                // Check if we are within the final "column" of the palette
                int finalColumnStart = XTSTrendDetail.Palette.Count - XTSTrendDetail.COLOURSHADES;
                if (XTSTrendDetail.colourCurrent >= finalColumnStart)
                {
                    XTSTrendDetail.colourCurrent -= (finalColumnStart + 1);
                    if (XTSTrendDetail.colourCurrent < 0)
                    {
                        XTSTrendDetail.colourCurrent = XTSTrendDetail.COLOURSHADES - 1;
                    }
                }
                else
                {
                    XTSTrendDetail.colourCurrent += XTSTrendDetail.COLOURSHADES;
                }
            }
            return XTSTrendDetail.Palette[XTSTrendDetail.colourCurrent];
        }

        private static List<Color> palette = XTSTrendDetail.GeneratePalette();
        public static List<Color> Palette
        {
            get
            {
                return XTSTrendDetail.palette;
            }
        }

        private const int COLOURSHADES = 5;
        private static int colourCurrent;
        private static List<Color> GeneratePalette()
        {
            List<Color> colors = new List<Color>();
            //colors.Add(Colors.Black);
            //GenerateShades(Colors.White, colors, 4);
            GenerateShades(Colors.Red, colors, XTSTrendDetail.COLOURSHADES);
            GenerateShades(Colors.Orange, colors, XTSTrendDetail.COLOURSHADES);
            GenerateShades(Colors.Yellow, colors, XTSTrendDetail.COLOURSHADES);
            //GenerateShades(Color.FromArgb(255, 165, 255,   0), colors, XTSTrendDetail.COLOURSHADES);
            GenerateShades(Color.FromArgb(255,   0, 255,   0), colors, XTSTrendDetail.COLOURSHADES); // GREEN
            GenerateShades(Color.FromArgb(255,   0, 255, 165), colors, XTSTrendDetail.COLOURSHADES);
            GenerateShades(Colors.Cyan, colors, XTSTrendDetail.COLOURSHADES);
            GenerateShades(Color.FromArgb(255, 0, 165, 255), colors, XTSTrendDetail.COLOURSHADES);
            GenerateShades(Colors.Blue, colors, XTSTrendDetail.COLOURSHADES);
            GenerateShades(Color.FromArgb(255, 165,   0, 255), colors, XTSTrendDetail.COLOURSHADES);
            //GenerateShades(Colors.Magenta, colors, XTSTrendDetail.COLOURSHADES);
            GenerateShades(Color.FromArgb(255, 255,   0, 165), colors, XTSTrendDetail.COLOURSHADES);

            XTSTrendDetail.colourCurrent = -1;
            return colors;
        }

        private static void GenerateShades(Color baseColor, List<Color> target, int steps)
        {
            byte rVal = (byte)(baseColor.R / (steps+1));
            byte gVal = (byte)(baseColor.G / (steps+1));
            byte bVal = (byte)(baseColor.B / (steps+1));

            // Let's start a little bright, we don't want too dark!
            byte r = rVal;
            byte g = gVal;
            byte b = bVal;

            for (int i = 0; i < steps - 1; i++)
            {
                r += rVal;
                g += gVal;
                b += bVal;
                Color newColor = Color.FromArgb(255, r, g, b);
                target.Add(newColor);
            }
            target.Add(baseColor);
        }
        #endregion

        #region Trend data representations
        /// <summary>
        /// The different types of trends
        /// </summary>
        public enum XTSTrendType
        {
            Sensor,
            SensorDeviation,
            Cylinder,
            CylinderDeviation,
            Temperature,
            SEDMmV,
            WIO,
            WIOPPM,
            RPM,
            CPPMA,
            CPPPCNT
        }
        #endregion Trend data representations

        #region Bindable Data Properties
        /// <summary>
        /// Internal
        /// </summary>
        private uint axis = 0;
        /// <summary>
        /// The axis that this trend is displayed on
        /// </summary>
        public uint Axis
        {
            set
            {
                this.axis = value;
                OnPropertyChanged("Axis");
            }
            get
            {
                return this.axis;
            }
        }

        /// <summary>
        /// Internal 
        /// </summary>
        private Color? colour = null;
        /// <summary>
        /// The colour to be displayed on the chart.
        /// </summary>
        public Color? Colour
        {
            set
            {
                this.colour = value;
                OnPropertyChanged("Colour");
            }
            get
            {
                return this.colour;
            }
        }

        /// <summary>
        /// Internal data for description.
        /// </summary>
        protected string description = null;
        /// <summary>
        /// The text to be displayed with the trend.
        /// </summary>
        public string Description
        {
            get
            {
                return this.description;
            }
            set
            {
                this.description = value;
                OnPropertyChanged("Description");
            }
        }

        /// <summary>
        /// Internal data for IsAverageDisplayed
        /// </summary>
        private bool isAverageDisplayed = true;
        /// <summary>
        /// States wether we should display the average chart or not when we have average data
        /// </summary>
        public bool IsAverageDisplayed
        {
            get
            {
                return this.isAverageDisplayed;
            }
            set
            {
                this.isAverageDisplayed = value;
                OnPropertyChanged("IsAverageDisplayed");
            }
        }
        #endregion // Bindable Data Properties

        #region Data Properties
        /// <summary>
        /// Internal data for TrendType
        /// </summary>
        private XTSTrendType trendtype;
        /// <summary>
        /// Allows accessing of the trend type
        /// </summary>
        public XTSTrendType TrendType
        {
            get
            {
                return this.trendtype;
            }
        }
        #endregion // Data Properties

        /// <summary>
        /// Default constructor
        /// </summary>
        /// <param name="tt"></param>
        public XTSTrendDetail(XTSTrendType tt, string description)
        {
            this.trendtype = tt;
            this.description = description;
        }

        /// <summary>
        /// Automatically assign a colour for this trend detail
        /// </summary>
        public void AutoColour()
        {
            this.colour = XTSTrendDetail.PaletteNext();
        }
    }

    /// <summary>
    /// The parent trend class, child classes will set trendtype in the default constructor
    /// </summary>
    public class XTSTrend : XTSData
    {
        /// <summary>
        /// Internal data for Detail
        /// </summary>
        private XTSTrendDetail detail = null;
        /// <summary>
        /// The detail for this trend
        /// </summary>
        public XTSTrendDetail Detail
        {
            get
            {
                return this.detail;
            }
        }

        #region Data Properties
        /// <summary>
        /// Internal data for IsAveraged
        /// </summary>
        private bool isAveraged;
        /// <summary>
        /// States if the display is averaged or not
        /// </summary>
        public bool IsAveraged
        {
            get
            {
                return isAveraged;
            }
            set
            {
                isAveraged = value;
                OnPropertyChanged("IsAveraged");
            }
        }

        /// <summary>
        /// Start Range of the history
        /// </summary>
        public DateTime startRange { get; set; }

        /// <summary>
        /// End Range of the history
        /// </summary>
        public DateTime endRange { get; set; }

        /// <summary>
        /// Internal data for History.
        /// </summary>
        private XTSDataCollection<XTSTrendHistory> history = new XTSDataCollection<XTSTrendHistory>();
        /// <summary>
        /// Past data for the trends.
        /// </summary>
        public XTSDataCollection<XTSTrendHistory> History
        {
            get
            {
                return this.history;
            }
        }

        #endregion // Data Properties

        #region Selected Values for the Trend
        /// <summary>
        /// Currently selected actual value from the Telerik control
        /// </summary>
        private double _actual;
        public double SelectedActual { get { return _actual; } set { _actual = value; OnPropertyChanged("SelectedActual"); } }

        /// <summary>
        /// Time and date of the currently selected Category from the Telerik control
        /// </summary>
        private DateTime? _timeDate;
        public DateTime? SelectedTimeDate { get { return _timeDate; } set { this._timeDate = value; OnPropertyChanged("SelectedTimeDate"); } }

        /// <summary>
        /// Highest value when averaging enabled
        /// </summary>
        private double _high;
        public double High { get { return _high; } set { _high = value; OnPropertyChanged("High"); } }

        /// <summary>
        /// Lowest value when averaging enabled
        /// </summary>
        private double _low;
        public double Low { get { return _low; } set { _low = value; OnPropertyChanged("Low"); } }

        /// <summary>
        /// Maximum value across the time range
        /// </summary>
        private double _max;
        public double Max { get { return _max; } set { _max = value; OnPropertyChanged("Max"); } }

        /// <summary>
        /// Minimum value across the time range
        /// </summary>
        private double _min;
        public double Min { get { return _min; } set { _min = value; OnPropertyChanged("Min"); } }

        #endregion // Selected Values for the Trend

        /// <summary>
        /// Default constructor
        /// </summary>
        /// <param name="tt"></param>
        public XTSTrend(XTSTrendDetail trendDetail)
        {
            this.detail = trendDetail;
        }
    }

    /// <summary>
    /// Sampled data used for the Telerik line graph control 
    /// </summary>
    public class XTSTrendHistory : XTSData, IComparable
    {
        /// <summary>
        /// Time and Date of the sampled data
        /// </summary>
        private DateTime _timeDate;
        public DateTime TimeDate { get { return this._timeDate; } set { this._timeDate = value; OnPropertyChanged("TimeDate"); } }

        /// <summary>
        /// Actual sampled data
        /// </summary>
        private double _actual = 0;
        public double Actual { get { return this._actual; } set { this._actual = value; OnPropertyChanged("Actual"); } }

        /// <summary>
        /// The min value of the trend
        /// </summary>
        private double _low = 0;
        public double? Low
        {
            get
            {
                if (this._actual < -32000)
                {
                    return null;
                }
                return this._low;
            }
            set
            {
                if (value == null)
                {
                    this._low = 0;
                }
                else
                {
                    this._low = (double)value;
                }
                OnPropertyChanged("Low");
                OnPropertyChanged("HighOffset");
            }
        }

        /// <summary>
        /// The max value of the trend
        /// </summary>
        private double _high = 0;
        public double High { get { return this._high; } set { this._high = value; OnPropertyChanged("High"); OnPropertyChanged("HighOffset"); } }

        /// <summary>
        /// Allows graphing using a stacked graph
        /// </summary>
        public double? HighOffset
        {
            get
            {
                if (this._actual < -32000)
                {
                    return null;
                }
                if (((this._high > 0) && (this._low < 0)) ||
                    ((this._high < 0) && (this._low > 0)))
                {
                    return this._high;
                }
                return this._high - this._low;
            }
        }

        /// <summary>
        /// Construct the element using the time and actual value
        /// </summary>
        public XTSTrendHistory(DateTime timeDate, double actual)
        {
            this._timeDate = timeDate;
            this._actual = actual;
        }

        /// <summary>
        /// Construct the element using the time, min, max and actual value
        /// </summary>
        public XTSTrendHistory(DateTime timeDate, double actual, double low, double high) :
            this(timeDate, actual)
        {
            if ((low < 0) && 
                (high < 0) &&
                (low < high))
            {
                // We need to swap if both values are negative due to the way graphs are drawn.
                // ie. stacked graphs based on absolute values for low vs high comparison.
                this._low = high;
                this._high = low;
            }
            else
            {
                this._low = low;
                this._high = high;
            }
        }

        #region IComparable Members

        public int CompareTo(object obj)
        {
            if (obj == null)
            {
                return 1;
            }
            XTSTrendHistory otherHistory = obj as XTSTrendHistory;
            return this.TimeDate.CompareTo(otherHistory.TimeDate);
        }

        #endregion
    }

    /// <summary>
    /// Child class for Sensor Trend
    /// </summary>
    public class XTSTrendSensor : XTSTrendDetail
    {
        #region ID Members
        /// <summary>
        /// Internal data for sensor data
        /// </summary>
        private XTSSensor.XTSSensorID index;
        /// <summary>
        /// The index of the sensor in the cylinder
        /// </summary>
        public uint Index
        {
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

        /// <summary>
        /// Default constructor, initialises parent with Sensor type
        /// </summary>
        public XTSTrendSensor(string description, uint cylinder, uint sensor)
            : base(XTSTrendDetail.XTSTrendType.Sensor, description)
        {
            this.index.cylinder = cylinder;
            this.index.sensor = sensor;
        }

        /// <summary>
        /// Overridden to return the sensor id
        /// </summary>
        /// <returns>The sensor id</returns>
        public override string ToString()
        {
            return string.Format("Sensor {0}.{1}", this.index.cylinder, this.index.sensor);
        }
    }

    /// <summary>
    /// Child class for Sensor Trend
    /// </summary>
    public class XTSTrendSensorDeviation : XTSTrendDetail
    {
        #region ID Members
        /// <summary>
        /// Internal data for sensor data
        /// </summary>
        private XTSSensor.XTSSensorID index;
        /// <summary>
        /// The index of the sensor in the cylinder
        /// </summary>
        public uint Index
        {
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
 
        /// <summary>
        /// Default constructor, initialises parent with Sensor Deviation type
        /// </summary>
        public XTSTrendSensorDeviation(string description, uint cylinder, uint sensor)
            : base(XTSTrendDetail.XTSTrendType.SensorDeviation, description)
        {
            this.index.cylinder = cylinder;
            this.index.sensor = sensor;
        }

        /// <summary>
        /// Overridden to return the sensor id
        /// </summary>
        /// <returns>The sensor id</returns>
        public override string ToString()
        {
            return string.Format("Sensor Deviation {0}.{1}", this.index.cylinder, this.index.sensor);
        }
    }

    /// <summary>
    /// Child class for Cylinder Trend
    /// </summary>
    public class XTSTrendCylinder : XTSTrendDetail
    {
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
            get
            {
                return this.index;
            }
        }
        #endregion // ID Members

        /// <summary>
        /// Default constructor, initialises parent with Cylinder type
        /// </summary>
        public XTSTrendCylinder(string description, uint index)
            : base(XTSTrendDetail.XTSTrendType.Cylinder, description)
        {
            this.index = index;
        }

        /// <summary>
        /// Overridden to return the cylinder id
        /// </summary>
        /// <returns>The sensor id</returns>
        public override string ToString()
        {
            return string.Format("Cylinder {0}", this.index);
        }
    }

    /// <summary>
    /// Child class for Cylinder Trend
    /// </summary>
    public class XTSTrendCylinderDeviation : XTSTrendDetail
    {
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
            get
            {
                return this.index;
            }
        }
        #endregion // ID Members

        /// <summary>
        /// Default constructor, initialises parent with Cylinder Deviation type
        /// </summary>
        public XTSTrendCylinderDeviation(string description, uint index)
            : base(XTSTrendDetail.XTSTrendType.CylinderDeviation, description)
        {
            this.index = index;
        }

        /// <summary>
        /// Overridden to return the cylinder id
        /// </summary>
        /// <returns>The sensor id</returns>
        public override string ToString()
        {
            return string.Format("Cylinder Deviation {0}", this.index);
        }
    }

    /// <summary>
    /// Child class for temperature Trend
    /// </summary>
    public class XTSTrendTemperature : XTSTrendDetail
    {
        #region ID Members
        /// <summary>
        /// Internal data for Index
        /// </summary>
        private uint index;
        /// <summary>
        /// The index of the sensor
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
        /// Default constructor, initialises parent
        /// </summary>
        public XTSTrendTemperature(string description, uint index)
            : base(XTSTrendDetail.XTSTrendType.Temperature, description)
        {
            this.index = index;
            this.description = description;
            // Default to right X-axis
            this.Axis = 1;
        }

        /// <summary>
        /// Overridden to return the cylinder id
        /// </summary>
        /// <returns>The sensor id</returns>
        public override string ToString()
        {            
            return string.Format("temperature sensor {0}", this.index);
        }
    }
    /// <summary>
    /// Child class for SEDM mV Trend
    /// </summary>
    public class XTSTrendSEDMmV : XTSTrendDetail
    {
        /// <summary>
        /// Default constructor, initialises parent with SEDM type
        /// </summary>
        public XTSTrendSEDMmV(string description)
            : base(XTSTrendDetail.XTSTrendType.SEDMmV, description)
        {
            // 2014-08-20 FF: changed to Default to right X-axis according to mantis #631
            this.Axis = 1;
        }

        /// <summary>
        /// Overridden to return the SEDM id
        /// </summary>
        /// <returns>The sensor id</returns>
        public override string ToString()
        {
            return string.Format("SEDM (mV)");
        }
    }

    /// <summary>
    /// Child class for WIO Trend
    /// </summary>
    public class XTSTrendWIO : XTSTrendDetail
    {
        /// <summary>
        /// Default constructor, initialises parent with WIO type
        /// </summary>
        public XTSTrendWIO(string description)
            : base(XTSTrendDetail.XTSTrendType.WIO, description)
        {
            // Default to right X-axis
            this.Axis = 1;
        }

        /// <summary>
        /// Overridden to return the WIO id
        /// </summary>
        /// <returns>The sensor id</returns>
        public override string ToString()
        {
            return string.Format("WIO %");
        }
    }

    /// <summary>
    /// Child class for WIO PPM Trend
    /// </summary>
    public class XTSTrendWIOPPM : XTSTrendDetail
    {
        /// <summary>
        /// Default constructor, initialises parent with WIOPPM type
        /// </summary>
        public XTSTrendWIOPPM(string description)
            : base(XTSTrendDetail.XTSTrendType.WIOPPM, description)
        {
            // Default to right X-axis
            this.Axis = 1;
        }

        /// <summary>
        /// Overridden to return the WIO ppm id
        /// </summary>
        /// <returns>The sensor id</returns>
        public override string ToString()
        {
            return string.Format("WIO (ppm)");
        }
    }

    /// <summary>
    /// Child class for RPM Trend
    /// </summary>
    public class XTSTrendRPM : XTSTrendDetail
    {
        /// <summary>
        /// Default constructor, initialises parent with RPM type
        /// </summary>
        public XTSTrendRPM(string description)
            : base(XTSTrendDetail.XTSTrendType.RPM, description)
        {
            // Default to right X-axis
            this.Axis = 1;
        }

        /// <summary>
        /// Overridden to return the RPM id
        /// </summary>
        /// <returns>The sensor id</returns>
        public override string ToString()
        {
            return string.Format("RPM");
        }
    }

    /// <summary>
    /// Child class for CPP Trend
    /// </summary>
    public class XTSTrendCPPMA : XTSTrendDetail
    {
        /// <summary>
        /// Default constructor, initialises parent with WIO type
        /// </summary>
        public XTSTrendCPPMA(string description)
            : base(XTSTrendDetail.XTSTrendType.CPPMA, description)
        {
            // Default to right X-axis
            this.Axis = 1;
        }

        /// <summary>
        /// Overridden to return the WIO id
        /// </summary>
        /// <returns>The sensor id</returns>
        public override string ToString()
        {
            return string.Format("CPP (mAx10)");
        }
    }

    /// <summary>
    /// Child class for CPP % Trend
    /// </summary>
    public class XTSTrendCPPPER : XTSTrendDetail
    {
        /// <summary>
        /// Default constructor, initialises parent with WIOPPM type
        /// </summary>
        public XTSTrendCPPPER(string description)
            : base(XTSTrendDetail.XTSTrendType.CPPPCNT, description)
        {
            // Default to right X-axis
            this.Axis = 1;
        }

        /// <summary>
        /// Overridden to return the WIO ppm id
        /// </summary>
        /// <returns>The sensor id</returns>
        public override string ToString()
        {
            return string.Format("CPP %");
        }
    }

    /// <summary>
    /// The main trends encapsulation class
    /// </summary>
    public class XTSTrends : XTSData
    {
        /// <summary>
        /// Internal data for ConfigChanged.
        /// </summary>
        private bool configChanged = false;
        /// <summary>
        /// Set when the configuration has changed since the last save/load.
        /// We can not keep track of all config changes by monitoring the
        /// XTSDataCollection as some changes will be internal to the
        /// items within that (ie trend details).
        /// </summary>
        public bool ConfigChanged
        {
            get
            {
                return this.configChanged;
            }
            set
            {
                this.configChanged = value;
            }
        }

        /// <summary>
        /// Internal data for Trend Data
        /// </summary>
        XTSDataCollection<XTSTrend> trendConfiguration;
        /// <summary>
        /// The current trend configuration and history
        /// </summary>
        public XTSDataCollection<XTSTrend> TrendConfiguration
        {
            get
            {
                return this.trendConfiguration;
            }
        }

        /// <summary>
        /// Internal data for ConfigNames
        /// </summary>
        private string[] configNames = null;
        /// <summary>
        /// The names of the trend configurations
        /// </summary>
        public string[] ConfigNames
        {
            get
            {
                return configNames;
            }
        }

        /// <summary>
        /// Internal data for LastHistoryUpdate
        /// </summary>
        private DateTime lastHistoryUpdate;
        /// <summary>
        /// The time that the history was last updated
        /// </summary>
        public DateTime LastHistoryUpdate
        {
            set
            {
                lastHistoryUpdate = value;
                OnPropertyChanged("LastHistoryUpdate");
            }
            get
            {
                return lastHistoryUpdate;
            }
        }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public XTSTrends()
        {
            this.configNames = new string[10];
            // Initialise the config names, but the data provider implementation should
            // overwrite with those from the server
            for (int i = 0; i < 10; i++)
            {
                this.configNames[i] = string.Format("Config {0}", i + 1);
            }

            this.trendConfiguration = new XTSDataCollection<XTSTrend>();
            // Leave empty for now!
        }
    }
}
