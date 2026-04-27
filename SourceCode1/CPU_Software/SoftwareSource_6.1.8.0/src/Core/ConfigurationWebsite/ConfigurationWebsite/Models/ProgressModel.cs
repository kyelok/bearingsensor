using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace ConfigurationWebsite.Models
{
    public class ProgressModel
    {
        /// <summary>
        /// Constructs a ProgressModel with a default message
        /// </summary>
        /// <param name="message">The message to display on the progress screen.</param>
        public ProgressModel(string message)
        {
            this.Message = message;
            this.ViewToRedirectTo = "SPU";
            this.AutoProgress = false;
            this.Complete = false;
            this.FileDownload = false;
        }

        /// <summary>
        /// Message that should be displayed on the progress screen
        /// </summary>
        public string Message { get; set; }

        /// <summary>
        /// The progress percentage complete
        /// </summary>
        public long PercentageProgress { get; set; }

        /// <summary>
        /// The session id of this progress
        /// </summary>
        public string SessionId { get; set; }

        /// <summary>
        /// The configuration record in any associated with 
        /// this progress
        /// </summary>
        public ConfigRecordModel Model { get; set; }

        /// <summary>
        /// Flag indicating that the progress is complete
        /// </summary>
        public bool Complete { get; set; }

        /// <summary>
        /// String that holds the view to redirect to once complete
        /// Default is SPU view
        /// </summary>
        public string ViewToRedirectTo { get; set; }

        /// <summary>
        /// Auto progress flag.  The progress will increament itself
        /// until the complete flag is set.
        /// </summary>
        public bool AutoProgress { get; set; }

        /// <summary>
        /// Flag indicating if this isa file download progress
        /// </summary>
        public bool FileDownload { get; set; }

        /// <summary>
        /// Information about any file being exported
        /// </summary>
        public string ExportFile { get; set; }

        /// <summary>
        /// The error message if any.
        /// </summary>
        public string ErrorMessage { get; set; }
    }
}