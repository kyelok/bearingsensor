/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */

using System;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.IO;

namespace ConfigurationWebsite.Filters
{
    public class SavePageFilter : Stream
    {
        Stream responseStream;
        long position;
        StringBuilder responseHtml;
        string outputFolder;
        
        public SavePageFilter(string outputFolder, Stream inputStream)
        {
            this.responseStream = inputStream;
            this.responseHtml = new StringBuilder();
            this.outputFolder = outputFolder;
        }

        public override bool CanRead
        {
            get { return true; }
        }

        public override bool CanSeek
        {
            get { return true; }
        }

        public override bool CanWrite
        {
            get { return true; }
        }

        public override void Close()
        {
            responseStream.Close();
        }

        public override void Flush()
        {
            responseStream.Flush();
        }

        public override long Length
        {
            get { return 0; }
        }

        public override long Position
        {
            get
            {
                return this.position;
            }

            set
            {
                this.position = value;
            }
        }

        public override int Read(byte[] buffer, int offset, int count)
        {
            return responseStream.Read(buffer, offset, count);
        }

        public override long Seek(long offset, SeekOrigin origin)
        {
            return responseStream.Seek(offset, origin);
        }

        public override void SetLength(long value)
        {
            responseStream.SetLength(value);
        }

        public override void Write(byte[] buffer, int offset, int count)
        {
            string strBuffer = System.Text.UTF8Encoding.UTF8.GetString(buffer, offset, count);

            if (HttpContext.Current.Response.ContentType == "text/html")
            {
                // ---------------------------------
                // Wait for the closing </html> tag
                // ---------------------------------
                Regex eof = new Regex("</html>", RegexOptions.IgnoreCase);

                if (!eof.IsMatch(strBuffer))
                {
                    responseHtml.Append(strBuffer);
                }
                else
                {
                    //Delete files older than a day
                    DirectoryInfo dir = new DirectoryInfo(outputFolder);
                    foreach (FileInfo file in dir.GetFiles())
                    {
                        if (DateTime.UtcNow - file.CreationTimeUtc > TimeSpan.FromDays(1))
                        {
                            file.Delete();
                        }
                    }

                    Guid id = Guid.NewGuid();
                    responseHtml.Append(strBuffer);
                    string finalHtml = responseHtml.ToString().Replace("<title>", string.Format("<title id=\"{0}\">", id));
                    byte[] data = System.Text.UTF8Encoding.UTF8.GetBytes(finalHtml);

                    try
                    {
                        using (StreamWriter writer = File.CreateText(string.Format("{0}\\{1}.html", outputFolder, id)))
                        {
                            //We need to process the html dumped to the file so that the Scripts and CSS files can be located on the disk
                            //for the dumped file.
                            finalHtml = finalHtml.Replace("href=\"/config/Content/", "href=\"Content/");
                            finalHtml = finalHtml.Replace("src=\"/config/Scripts/", "src=\"Scripts/");

                            writer.Write(finalHtml);
                        }
                    }
                    catch (Exception)
                    {
                        //Ignore for now but break into debugger if attached
                        if (System.Diagnostics.Debugger.IsAttached)
                        {
                            System.Diagnostics.Debugger.Break();
                        }
                    }

                    responseStream.Write(data, 0, data.Length);
                    responseHtml.Clear();
                }
            }
            else
            {
                //Not html.  Pass the response straight through
                responseStream.Write(buffer, offset, count);
            }
        }
    }
}