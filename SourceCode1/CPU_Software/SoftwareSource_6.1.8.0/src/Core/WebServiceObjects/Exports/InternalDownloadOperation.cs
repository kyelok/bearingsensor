using System.Runtime.Serialization;
using System.Runtime.Serialization.Json;

namespace WebServiceObjects
{
    /// <summary>
    /// This class defines that data that is returned during a
    /// file download operation.  It is used to report back
    /// progress of the file creation before it is downloaded.
    /// </summary>
    public class InternalDownloadOperation
    {
        private ProgressIndicator progress;

        /// <summary>
        /// The file creation progress
        /// </summary>
        public ProgressIndicator Progress { 
            get 
            { 
                return progress; 
            } 
        }

        public System.Threading.Thread Thread { get; set; }

        public InternalDownloadOperation()
        {
            progress = new ProgressIndicator();
        }

        /// <summary>
        /// The path of the file to download
        /// </summary>
        public string FilePath { get; set; }

        /// <summary>
        /// The URL to download the file from.  Only
        /// valid when progress is 100%
        /// </summary>
        public string DownloadURL { get; set; }
    }

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
