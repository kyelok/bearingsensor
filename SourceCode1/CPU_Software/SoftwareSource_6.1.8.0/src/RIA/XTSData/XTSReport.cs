/* 
 * XTSReport.cs
 * 
 * Report data required by the UI.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 10/05/2012
 */

using System;

namespace XTS
{
    /// <summary>
    /// Report data representation class
    /// </summary>
    public class XTSReport : XTSData
    {
        /// <summary>
        /// Internal data for isRunning
        /// </summary>
        private bool isRunning = false;
        /// <summary>
        /// Property calculated from progress
        /// </summary>
        public bool IsRunning
        {
            get
            {
                return this.isRunning;
            }
            set
            {
                this.isRunning = value;
                OnPropertyChanged("IsRunning");
            }
        }

        /// <summary>
        /// Internal data for progress
        /// </summary>
        private int progress = 0;
        /// <summary>
        /// Report progress in %
        /// </summary>
        public int Progress
        {
            get
            {
                return this.progress;
            }
            set
            {
                this.progress = value;
                OnPropertyChanged("Progress");
            }
        }

        private XTSDataCollection<string> completed = new XTSDataCollection<string>();
        /// <summary>
        /// List of completed Reports
        /// </summary>
        public XTSDataCollection<string> Completed
        {
            get
            {
                return this.completed;
            }
        }

        private XTSDataCollection<string> available = new XTSDataCollection<string>();
        /// <summary>
        /// Available Reports to Run 
        /// </summary>
        public XTSDataCollection<string> Available
        {
            get
            {
                return this.available;
            }
        }

        private Int64 lastReportDate = 0;
        /// <summary>
        /// Last GL report date. 
        /// </summary>
        public Int64 LastReportDate
        {
            get
            {
                return this.lastReportDate;
            }
            set
            {
                this.lastReportDate = value;
                OnPropertyChanged("LastReportDate");
            }
        }
    }
}
