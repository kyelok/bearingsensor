/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System.IO;

namespace HelperClasses
{
    /// <summary>
    /// This object creates a stream for a named file. When this object is closed the file is automatically deleted.
    /// </summary>
    public class AutoFileDeleteStream : Stream
    {
        /// <summary>
        /// FileStream to the openned file
        /// </summary>
        protected FileStream innerStream;

        /// <summary>
        /// The path of the file
        /// </summary>
        protected string sourceFile;

        /// <summary>
        /// Can be used to prevent this object from deleting the file when the object is closed
        /// </summary>
        public bool DeleteOnClose {get; set;}

        /// <summary>
        /// Construct the AutoFileDeleteStream
        /// </summary>
        /// <param name="source">The file to access</param>
        /// <param name="mode">The access mechanism for the file</param>
        public AutoFileDeleteStream(string source, FileMode mode)
        {
            innerStream = File.Open(source, mode);
            sourceFile = source;
            DeleteOnClose = true;
        }

        /// <summary>
        /// Distructor calls the Dispose method to make sure this object has been disposed of correctly
        /// </summary>
        ~AutoFileDeleteStream()
        {
            Dispose(); // Make sure Dispose was called            
        }
        
        public override bool CanRead
        {
            get { return innerStream.CanRead; }
        }

        public override bool CanSeek
        {
            get { return innerStream.CanSeek; }
        }

        public override bool CanWrite
        {
            get { return innerStream.CanWrite; }
        }

        public override long Length
        {
            get { return innerStream.Length; }
        }

        public override long Position
        {
            get { return innerStream.Position; }
            set { innerStream.Position = value; }
        }

        public override void Flush()
        {
            innerStream.Flush();
        }

        public override int Read(byte[] buffer, int offset, int count)
        {
            return innerStream.Read(buffer, offset, count);
        }

        public override long Seek(long offset, SeekOrigin origin)
        {
            return innerStream.Seek(offset, origin);
        }

        public override void SetLength(long value)
        {
            innerStream.SetLength(value);
        }

        public override void Write(byte[] buffer, int offset, int count)
        {
            innerStream.Write(buffer, offset, count);
        }

        public override void Close()
        {
            if (innerStream != null)
            {
                innerStream.Close();
                innerStream.Dispose();
                innerStream = null;
            }

            if (DeleteOnClose)
            {
                File.Delete(sourceFile);
            }
        }

        protected override void Dispose(bool disposing)
        {
            base.Dispose(disposing);
            Close(); // Call our close to destroy the file
        }
    }
}
