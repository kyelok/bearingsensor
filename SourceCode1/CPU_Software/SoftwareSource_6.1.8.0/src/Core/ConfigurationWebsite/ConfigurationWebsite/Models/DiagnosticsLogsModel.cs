using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConfigurationWebsite.Models
{
    public class DiagnosticsLogsModel
    {

        /// <summary>
        /// Gets and Sets the collection of log files
        /// found in the Log Folder
        /// </summary>
        public IEnumerable<string> LogFiles
        { get; set; }

        /// <summary>
        /// Flag indicating if the current user can delete the log file
        /// from the Log Folder.
        /// </summary>
        public bool CanDelete
        { get; set; }

    }
}