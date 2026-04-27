/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;
using System.Collections.Generic;

namespace WebServiceObjects
{
    /// <summary>
    /// This class holds a point that is to be plotted on a chart.
    /// </summary>
    [DataContract]
    public class EngineTrendResult
    {
        public EngineTrendResult(Int64 startOfSpan, Int64 endOfSpan, Int64 dateOfmostRecentRecord, bool averaged)
        {
            this.StartOfSpan = startOfSpan;
            this.EndOfSpan = endOfSpan;
            this.DateTimeOfMostRecentRecord = dateOfmostRecentRecord;
            this.Averaged = averaged;
        }

        /// <summary>
        /// The date and time of the start of the span that was queried from the database.
        /// </summary>
        [DataMember]
        public Int64 StartOfSpan;

        /// <summary>
        /// The date and time of the end of the span that was queried from the database.
        /// </summary>
        [DataMember]
        public Int64 EndOfSpan;

        /// <summary>
        /// This is the date and time of the newest record in the database
        /// </summary>
        [DataMember]
        public Int64 DateTimeOfMostRecentRecord;

        /// <summary>
        /// Flag indicating if the data in TrendData is averaged or not.
        /// </summary>
        [DataMember]
        public bool Averaged;

        /// <summary>
        /// The data that is extracted from the database
        /// </summary>
        [DataMember]
        public List<EngineTrend> TrendData;
    }

    /// <summary>
    /// This class defines a Trend Point
    /// </summary>
    [DataContract]
    public class TrendPoint
    {
        /// <summary>
        /// Creates a TrendPoint object
        /// </summary>
        public TrendPoint(int id, Int16 actual, Int16 low = 0, Int16 high = 0)
        {
            this.Id = id;
            this.Actual = actual;
            this.Low = low;
            this.High = high;
        }

        /// <summary>
        /// The id of this item.  Used to assocaite the
        /// point with a sensor, cylinder, RPM etc...
        /// </summary>
        [DataMember]
        public int Id;

        /// <summary>
        /// The actual or average value of the point.
        /// Is the actual value in high res or average value
        /// in low res.
        /// </summary>
        [DataMember]
        public Int16 Actual;

        /// <summary>
        /// The lowest value for this point when averaged
        /// </summary>
        [DataMember]
        public Int16 Low;

        /// <summary>
        /// The highest value of this point when averaged
        /// </summary>
        [DataMember]
        public Int16 High;

    }

    /// <summary>
    /// Holds a complete set of engine data for a point in
    /// time.
    /// </summary>
    [DataContract]
    public class EngineTrend
    {
        public EngineTrend(Int64 date)
        {
            this.Date = date;
        }

        /// <summary>
        /// The unix timestamp for this point.
        /// </summary>
        [DataMember]
        public Int64 Date;

        /// <summary>
        /// The value of any sensors at this point
        /// </summary>
        [DataMember]
        public TrendPoint[] Sensor;

        /// <summary>
        /// The value of any sensor devs at this point
        /// </summary>
        [DataMember]
        public TrendPoint[] SensorDev;

        /// <summary>
        /// The value of any cylinders at this point
        /// </summary>
        [DataMember]
        public TrendPoint[]Cylinder;

        /// <summary>
        /// The value of any cyldiner decs at this point
        /// </summary>
        [DataMember]
        public TrendPoint[]CylinderDev;

        /// <summary>
        /// The value of SLEM/SEDM at this point
        /// </summary>
        [DataMember]
        public TrendPoint SLEM;

        /// <summary>
        /// The value of WIO activity at this point
        /// </summary>
        [DataMember]
        public TrendPoint WIOActivity;

        /// <summary>
        /// The valeu of WIO PPM at this point
        /// </summary>
        [DataMember]
        public TrendPoint WIOPPM;

        /// <summary>
        /// The value of WIO temp at this point
        /// </summary>
        [DataMember]
        public TrendPoint WIOTemp;

        /// <summary>
        /// The RPM at this point
        /// </summary>
        [DataMember]
        public TrendPoint RPM;

        public static DateTime ConvertURLTimeToDateTime(String end)
        {
            return new DateTime(
                Int32.Parse(end.Substring(0, 4)),
                Int32.Parse(end.Substring(4, 2)),
                Int32.Parse(end.Substring(6, 2)),
                Int32.Parse(end.Substring(8, 2)),
                Int32.Parse(end.Substring(10, 2)),
                Int32.Parse(end.Substring(12, 2)));
        }

        public static String ConvertDateTimeToURLTime(DateTime date)
        {
            return String.Format("{0:D4}{1:D2}{2:D2}{3:D2}{4:D2}{5:D2}",
                date.Year, date.Month, date.Day, date.Hour, date.Minute, date.Second);
        }
    }
}
