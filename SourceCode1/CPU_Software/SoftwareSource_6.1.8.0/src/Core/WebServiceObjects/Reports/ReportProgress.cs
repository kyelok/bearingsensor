/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    /// <summary>
    /// This class is used to return information regrading
    /// the progress of reports from the reports plugin to Web Service
    /// clients.
    /// </summary>
    [DataContract]
    public class ReportProgress
    {
        /// <summary>
        /// The current progress from 0 - 100%
        /// of the report that is currently being run (if any).
        /// </summary>
        [DataMember]
        public int Progress;

        /// <summary>
        /// An array of all reports that are avaliable for
        /// viewing.
        /// </summary>
        [DataMember]
        public string[] CompletedReports;

        /// <summary>
        /// An array of all reports that are avaliable for running. 
        /// </summary>
        [DataMember]
        public string[] AvailableReports;

        /// <summary>
        /// The Date and Time in unix time stamp format
        /// of when the GL report was last run.
        /// </summary>
        [DataMember]
        public Int64 GLReportDate;

        /// <summary>
        /// Flag used to indicate if a report is currently in
        /// progress.
        /// </summary>
        [DataMember]
        public bool InProgress;

        /// <summary>
        /// Flag indicating if the report that was last requested
        /// has completed.
        /// </summary>
        [DataMember]
        public bool Completed;

    }
}
