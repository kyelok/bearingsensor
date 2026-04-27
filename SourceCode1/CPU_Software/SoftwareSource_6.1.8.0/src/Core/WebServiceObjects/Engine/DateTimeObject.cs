/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    [DataContract]
    public class DateTimeObject
    {
        public DateTimeObject()
        {
        }

        public DateTimeObject(DateTime time)
        {
            this.Year = (UInt16)time.Year;
            this.Month = (UInt16)time.Month;
            this.Day = (UInt16)time.Day;
            this.Hours = (UInt16)time.Hour;
            this.Minutes = (UInt16)time.Minute;
            this.Seconds = (UInt16)time.Second;
        }

        [DataMember]
        public UInt16 Year { get; set; }

        [DataMember]
        public UInt16 Month { get; set; }

        [DataMember]
        public UInt16 Day { get; set; }

        [DataMember]
        public UInt16 Hours { get; set; }

        [DataMember]
        public UInt16 Minutes { get; set; }

        [DataMember]
        public UInt16 Seconds { get; set; }

        public DateTime GetTime()
        {
            return new DateTime(Year, Month, Day, Hours, Minutes, Seconds);
        }
    }
}
