using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataCollectionSDK
{
    /// <summary>
    /// Class to represent progress of a function
    /// </summary>
    public class ProgressIndicator
    {
        /// <summary>
        /// Percent of function complete. Expected to vary from 0-100
        /// </summary>
        public int PercentageProgress { get; set; }
        /// <summary>
        /// False when not started or in progress, True when complete
        /// </summary>
        public bool Complete { get; set; }
        /// <summary>
        /// Error message from process. Will be empty if no error
        /// </summary>
        public string ErrorMessage { get; set; }

        public ProgressIndicator()
        {
            PercentageProgress = 0;
            Complete = false;
            ErrorMessage = "";
        }
    }
}
