using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Reports
{
    /// <summary>
    /// This interface defines the methods that a report should implememnt to allow it to be
    /// //executed from the Reports Plugin.
    /// </summary>
    public interface IReportRunner
    {
        void Start();
        int Progress();
        bool IsRunning { get; set; }
        bool Complete { get; set; }
        bool Error { get; set; }
    }
}
