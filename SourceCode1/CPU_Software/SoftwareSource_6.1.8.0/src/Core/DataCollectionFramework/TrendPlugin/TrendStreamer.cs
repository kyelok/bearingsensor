using System;
using System.IO;
using System.Threading;
using System.Text;
using System.Threading.Tasks;
using WebServiceObjects;

namespace TrendPlugin
{
    public class TrendStreamer : Stream
    {
        Int64 totalBytesRead = 0;
        TrendQuery query;
        bool dataToRead;
        byte[] internalBuffer;
        int internalBufferOffset;

        public TrendStreamer(string end, string span,
            string Sensor, string SensorDeviation, string Cylinder,
            string CylinderDeviation, string SLEM, string WIOActivity,
            string WIOPPM, string WIOTemp, string RPM)
        {
            //Create the QueryObject and configure it with
            //the query
            this.query = new TrendQuery(end,span,Sensor,SensorDeviation,Cylinder,
            CylinderDeviation, SLEM, WIOActivity, WIOPPM, WIOTemp, RPM);
            dataToRead = true;
            internalBuffer = null;
            internalBufferOffset = 0;
        }

        public override void Close()
        {
            query.Dispose();
            query = null;
            base.Close();
        }

        public override bool CanRead
        {
            get { return dataToRead; }
        }

        public override bool CanSeek
        {
            get { return false; }
        }

        public override bool CanWrite
        {
            get { return false; }
        }

        public override long Length
        {
            get { throw new NotImplementedException(); }
        }

        public override long Position
        {
            get
            {
                return totalBytesRead;
            }
            set
            {
                totalBytesRead = value;
            }
        }

        public override void Flush()
        {
        }

        public override int Read(byte[] buffer, int offset, int count)
        {

            TrendPoints points = null;
            int numberOfBytes = 0;

            if (internalBuffer != null)
            {
                //Copy the internal buffered data into the read buffer and return it to the client
                numberOfBytes = Math.Min(count, (this.internalBuffer.Length - this.internalBufferOffset));
                if (numberOfBytes > 0)
                {
                    //There are bytes left to copy
                    Array.Copy(this.internalBuffer, this.internalBufferOffset, buffer, offset, numberOfBytes);
                    this.internalBufferOffset += numberOfBytes;
                    count = numberOfBytes;
                }
                dataToRead = true;
            }
            
            //No bytes left to copy from the intenalBuffer
            //re fill it.
            if (numberOfBytes <= 0)
            {
                //When a read request is received the following needs to happen:
                //Check if there is any unsent data in the current buffers
                //If so return it to the client
                //If no unsent data
                //Read records from database
                //Fill client buffer with data
                //Store away unsent data

                //Read the record from the query object
                //and write it into the buffer
                //and return the number of bytes written
                //If no records return 0

                //Read records from database until either a result is returned
                //or the range of dates has been exhausted.
                while ((points == null) && (query.RecordsToRead))
                {
                    points = query.GetEngineTrendData();
                }

                if (points != null)
                {
                    string tx = ConvertTrendPointsToCSV(points);

                    this.internalBuffer = new byte[System.Text.UTF8Encoding.UTF8.GetByteCount(tx)];
                    this.internalBuffer = System.Text.UTF8Encoding.UTF8.GetBytes(tx);
                    this.internalBufferOffset = 0;
                    numberOfBytes = Math.Min(count, (this.internalBuffer.Length - this.internalBufferOffset));
                    Array.Copy(this.internalBuffer, this.internalBufferOffset, buffer, offset, numberOfBytes);
                    this.internalBufferOffset += numberOfBytes;
                    totalBytesRead += numberOfBytes;
                    count = numberOfBytes;
                    dataToRead = true;
                }
                else
                {
                    //No more records to read
                    dataToRead = false;
                    count = 0;                   
                }
            }

            return count;
        }

        /// <summary>
        /// Converts a TrendPoints object to a CSV line.
        /// </summary>
        /// <param name="trend">The trend to convert to a CSV line</param>
        /// <returns>The csv line</returns>
        private string ConvertTrendPointsToCSV(TrendPoints trend)
        {
            StringBuilder csvLine = new StringBuilder();

            csvLine.AppendFormat("{0},", trend.Date);

            foreach (TrendPoint point in trend.sensorPoints)
            {
                AppendPointData(csvLine, point);
            }

            foreach (TrendPoint point in trend.sensorDevPoints)
            {
                AppendPointData(csvLine, point);
            }

            foreach (TrendPoint point in trend.cylinderPoints)
            {
                AppendPointData(csvLine, point);          
            }

            foreach (TrendPoint point in trend.cylinderDevPoints)
            {
                AppendPointData(csvLine, point);
            }

            AppendPointData(csvLine, trend.rpmPoint);
            AppendPointData(csvLine, trend.slemPoint);
            AppendPointData(csvLine, trend.wioActivityPoint);
            AppendPointData(csvLine, trend.wioPPMPoint);
            AppendPointData(csvLine, trend.wioTempPoint);
            
            csvLine.AppendFormat("{0}\r\n", trend.Averaged);

            return csvLine.ToString();
}

        private void AppendPointData(StringBuilder csvLine, TrendPoint point)
        {
                if (point != null)
                {
                    csvLine.AppendFormat("{0},{1},{2},", point.Actual, point.Low, point.High);
                }
                else
                {
                    csvLine.AppendFormat(",,,");
                }
        }

        public override long Seek(long offset, SeekOrigin origin)
        {
            throw new NotImplementedException();
        }

        public override void SetLength(long value)
        {
            throw new NotImplementedException();
        }

        public override void Write(byte[] buffer, int offset, int count)
        {
            throw new NotImplementedException();
        }
    }
}
