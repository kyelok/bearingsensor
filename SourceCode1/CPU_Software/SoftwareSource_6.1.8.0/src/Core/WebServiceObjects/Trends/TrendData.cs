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
        public List<TrendPoints> TrendData;

        /// <summary>
        /// This flag indicates is this is
        /// the last set of records from the database.
        /// </summary>
        [DataMember]
        public bool LastRecords;

        /// <summary>
        /// The id of the session this data is associated with
        /// </summary>
        [DataMember]
        public string SessionId;

    }

    /// <summary>
    /// This class holds a collection of trend points
    /// </summary>
    [DataContract]
    public class TrendPoints
    {
        /// <summary>
        /// Constructs a default TrendPoint object
        /// </summary>
        /// <param name="date">The timestamp to assocaite with this TrendPoints</param>
        /// <param name="averaged">Is the data averaged</param>
        public TrendPoints(Int64 date, bool averaged)
        {
            this.Date = date;
            this.Averaged = averaged;
            this.sensorPoints = new TrendPoint[28];
            this.sensorDevPoints = new TrendPoint[28];
            this.cylinderPoints = new TrendPoint[14];
            this.cylinderDevPoints = new TrendPoint[14];
            this.temperaturePoints = new TrendPoint[56];
            this.slemPoint = null;
            this.rpmPoint = null;
            this.wioActivityPoint = null;
            this.wioPPMPoint = null;
            this.wioTempPoint = null;
            this.cppmAPoint = null;
            this.cppPercentPoint = null;
        }

        private void ExtractTrendPoints(TrendPoint[] points, List<string> lineParts)
        {
            //Extract Sensors
            for (int i = 0; i < points.Length; i++)
            {
                if (lineParts[0] != "" && lineParts[1] != "" && lineParts[2] != "")
                {
                    points[i] = new TrendPoint(i, short.Parse(lineParts[0]), short.Parse(lineParts[1]), short.Parse(lineParts[2]));
                }
                lineParts.RemoveRange(0, 3);
            }
        }

        private void ExtractTrendPoint(TrendPoint point, List<string> lineParts)
        {
            if (lineParts[0] != "" && lineParts[1] != "" && lineParts[2] != "")
            {
                point = new TrendPoint(0, short.Parse(lineParts[0]), short.Parse(lineParts[1]), short.Parse(lineParts[2]));
            }
            lineParts.RemoveRange(0, 3);
        }

        /// <summary>
        /// The unix timestamp for this point.
        /// </summary>
        [DataMember]
        public Int64 Date;

        /// <summary>
        /// Flag indicating if the data is averaged or not
        /// </summary>
        [DataMember]
        public bool Averaged;

        /// <summary>
        /// The sensors reading at this Date
        /// </summary>
        [DataMember]
        public TrendPoint[] sensorPoints;

        /// <summary>
        /// The Sensor dev readings at this Date
        /// </summary>
        [DataMember]
        public TrendPoint[] sensorDevPoints;

        /// <summary>
        /// The Cylinder readings at this Date
        /// </summary>
        [DataMember]
        public TrendPoint[] cylinderPoints;

        /// <summary>
        /// The Cylinder Devs readings at this Date
        /// </summary>
        [DataMember]
        public TrendPoint[] cylinderDevPoints;

        /// <summary>
        /// The Temperraure readings at this Date
        /// </summary>
        [DataMember]
        public TrendPoint[] temperaturePoints;

        /// <summary>
        /// The SLEM reading at this Date
        /// </summary>
        [DataMember]
        public TrendPoint slemPoint;

        /// <summary>
        /// The RPM reading as this Date
        /// </summary>
        [DataMember]
        public TrendPoint rpmPoint;

        /// <summary>
        /// The WIO reading at this Date
        /// </summary>
        [DataMember]
        public TrendPoint wioActivityPoint;

        /// <summary>
        /// The WIO PPM at this Date
        /// </summary>
        [DataMember]
        public TrendPoint wioPPMPoint;

        /// <summary>
        /// The WIO temp at this Date
        /// </summary>
        [DataMember]
        public TrendPoint wioTempPoint;

        /// <summary>
        /// The CPP mA at this Date
        /// </summary>
        [DataMember]
        public TrendPoint cppmAPoint;

        /// <summary>
        /// The CPP percent at this Date
        /// </summary>
        [DataMember]
        public TrendPoint cppPercentPoint;
    }


    /// <summary>
    /// This class defines a Trend Point
    /// </summary>
    [DataContract]
    public class TrendPoint
    {
        /// <summary>
        /// Default constructor
        /// </summary>
        public TrendPoint()
        { }

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
}
