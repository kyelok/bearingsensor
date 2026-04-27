/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.IO;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Threading;
using DataCollectionSDK;
using HelperClasses;
using System.Collections.Generic;
using WebServiceObjects;
using log4net;
using System.Threading.Tasks;

namespace WebService
{
    partial class WebService
    {
        /// <summary>
        /// This class holds the state of any on going verification download
        /// </summary>
        PrepareVerificationDownload preparingVerification = null;

        /// <summary>
        /// This class holds the state of any on going accumalted valyes download
        /// </summary>
        PrepareAccumulatedValuesDownload preparingAccumulatedValues = null;

        /// <summary>
        /// Downloads a file from the Web Service
        /// </summary>
        /// <param name="name">The name of the file to download</param>
        /// <returns>A stream that that can be used to read the requested file</returns>
        [OperationContract]
        [WebGet(UriTemplate = "engine/download/{name}", ResponseFormat = WebMessageFormat.Json)]
        public Stream DownloadExport(string name)
        {
            AutoFileDeleteStream deleteStream = null;
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;

            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            try
            {
                if (preparingVerification != null && name == preparingVerification.FileName)
                {
                    deleteStream = new AutoFileDeleteStream(preparingVerification.FilePath, FileMode.Open);
                    preparingVerification = null;
                }
                else if (preparingAccumulatedValues != null && name == preparingAccumulatedValues.FileName)
                {
                    deleteStream = new AutoFileDeleteStream(preparingAccumulatedValues.FilePath, FileMode.Open);
                    preparingAccumulatedValues = null;
                }
                else
                {
                    //Other file requested
                    //Generate the path to the file
                    deleteStream = new AutoFileDeleteStream(FullFilePath(name), FileMode.Open);
                }

                if (deleteStream == null)
                {
                    WebOperationContext.Current.OutgoingResponse.StatusCode = System.Net.HttpStatusCode.NotFound;
                }
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }
            return deleteStream;
        }

        /// <summary>
        /// Starts or Gets the progress of export learning data request.
        /// </summary>
        /// <param name="codeNeeded">A flag indicating that the verification code is required</param>
        /// <returns>The progress of the operation</returns>
        [OperationContract]
        [WebGet(UriTemplate = "engine/learning/export?code={codeNeeded}", ResponseFormat = WebMessageFormat.Json)]
        public DownloadOperation ExportLearningVerification(string codeNeeded)
        {
            DownloadOperation download = null;
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            bool code = (codeNeeded == null) ? false : bool.Parse(codeNeeded);

            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            try
            {
                if (preparingVerification != null)
                {
                    //There is a verification operation already in progress
                    //return the state of it to the client
                    download = preparingVerification.Progress();
                }
                else
                {
                    //There are no current verification progress operation in progress
                    //Start a new one.
                    preparingVerification = new PrepareVerificationDownload(code, WebOperationContext.Current.IncomingRequest.UriTemplateMatch.BaseUri.ToString());
                    download = preparingVerification.Progress();

                    Task.Factory.StartNew(() =>
                    {
                        preparingVerification.PrepareData(this.engineManagement.ModbusInternal);
                    });
                }
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }
            return download;
        }

        /// <summary>
        /// Starts or Gets the progress of exporting the accumulated valyes tables.
        /// </summary>
        /// <returns>The progress of the operation</returns>
        [OperationContract]
        [WebGet(UriTemplate = "engine/accumulatedvalues", ResponseFormat = WebMessageFormat.Json)]
        public DownloadOperation GetAccumulatedValuesTable()
        {
            DownloadOperation download = null;
            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;

            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            try
            {
                if (preparingAccumulatedValues != null)
                {
                    //There is a operation already in progress
                    //return the state of it to the client
                    download = preparingAccumulatedValues.Progress();
                }
                else
                {
                    //There are no current verification progress operation in progress
                    //Start a new one.
                    preparingAccumulatedValues = new PrepareAccumulatedValuesDownload(WebOperationContext.Current.IncomingRequest.UriTemplateMatch.BaseUri.ToString());
                    download = preparingAccumulatedValues.Progress();

                    Task.Factory.StartNew(() =>
                    {
                        preparingAccumulatedValues.PrepareData(this.engineManagement.ModbusInternal);
                    });
                }
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }

            return download;
        }

        private string FullFilePath(string name)
        {
            string tempFolder = System.Environment.GetEnvironmentVariable("TEMP");
            return tempFolder + "\\" + name;
        }
    }

    /// <summary>
    /// This class 
    /// </summary>
    internal class PrepareAccumulatedValuesDownload
    {
        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        ProgressIndicator progress;
        bool exportComplete;
        bool failedToCreateFile;
        public string FileName { get; set; }
        public string FilePath { get; set; }
        string url;

        /// <summary>
        /// Constructs the class
        /// </summary>
        /// <param name="uri">The URI that the file will be downloaded from once prepared</param>
        public PrepareAccumulatedValuesDownload(string uri)
        {
            this.progress = new ProgressIndicator();
            DateTime time = DateTime.UtcNow;
            string tempFolder = System.Environment.GetEnvironmentVariable("TEMP");
            FileName = String.Format("accumulatedvalues_{0:D4}{1:D2}{2:D2}{3:D2}{4:D2}{5:D2}{6:D2}.csv", time.Year, time.Month, time.Day, time.Hour, time.Minute, time.Second, time.Millisecond);
            FilePath = tempFolder + "\\" + FileName;
            url = string.Format("{0}/engine/download/{1}", uri, FileName);
            exportComplete = false;
            failedToCreateFile = true;
        }

        /// <summary>
        /// Reads the data from the SPU and writes it to the file ready for downloading
        /// </summary>
        /// <param name="modbus">The ModbusSDK connection to use for reading from the SPU</param>
        public void PrepareData(ModbusSDK modbus)
        {
            int retry = 0;

            try
            {
                exportComplete = false;

                while (retry < 3)
                {
                    using (StreamWriter writer = new StreamWriter(this.FilePath))
                    {
                        try
                        {
                            SPUSDK.ExportSpeedTableALV(writer, modbus, progress);
                            writer.Flush();
                            writer.Close();
                            failedToCreateFile = false;
                            break;
                        }
                        catch (Exception e)
                        {
                            log.ErrorFormat("Error during verification export: {0}", e.ToString());
                            writer.Flush();
                            writer.Close();
                            File.Delete(this.FilePath);
                            retry++;
                            failedToCreateFile = true;
                        }
                    }
                }

                exportComplete = true;
            }
            catch (Exception e)
            {
                log.ErrorFormat("Error during verification export: {0}", e.ToString());
                exportComplete = true;
            }
        }

        /// <summary>
        /// Gets the progress of the file preperation
        /// </summary>
        /// <returns>A DownloadOperation that holds the progress of the current prepartion.</returns>
        public DownloadOperation Progress()
        {
            DownloadOperation download = new DownloadOperation();
            download.PercentDone = this.progress.PercentageProgress;

            if (this.exportComplete)
            {
                if (failedToCreateFile)
                {
                    download.FileURL = string.Empty;
                }
                else
                {
                    download.FileURL = this.url;
                }
            }

            return download;
        }

    }

    /// <summary>
    /// This class perpares the verification data for download
    /// </summary>
    internal class PrepareVerificationDownload
    {
        /// <summary>
        /// Log4net Logging
        /// </summary>
        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        bool verificationCodeNeeded;
        ProgressIndicator progress;
        string url;
        bool exportComplete;
        bool failedToCreateFile;
        public string FileName { get; set; }
        public string FilePath { get; set; }

        /// <summary>
        /// Constructs the class
        /// </summary>
        /// <param name="codeNeeded">Flag indicating if the verification code is needed</param>
        /// <param name="uri">URI of where the file will be downloaded from</param>
        public PrepareVerificationDownload(bool codeNeeded, string uri)
        {
            this.progress = new ProgressIndicator();
            this.verificationCodeNeeded = codeNeeded;
            string tempFolder = System.Environment.GetEnvironmentVariable("TEMP");
            DateTime time = DateTime.UtcNow;
            FileName = String.Format("verification_{0:D4}{1:D2}{2:D2}{3:D2}{4:D2}{5:D2}{6:D2}.csv", time.Year, time.Month, time.Day, time.Hour, time.Minute, time.Second, time.Millisecond);
            FilePath = tempFolder + "\\" + FileName;
            url = string.Format("{0}/engine/download/{1}", uri, FileName);
            exportComplete = false;
            failedToCreateFile = true;
        }

        /// <summary>
        /// Reads the data from the SPU and writes it to the file ready for downloading
        /// </summary>
        /// <param name="modbus">The ModbusSDK connection to use for reading from the SPU</param>
        public void PrepareData(ModbusSDK modbus)
        {
            int retry = 0;
            
            try
            {
                exportComplete = false;

                while (retry < 3)
                {
                    using (StreamWriter writer = new StreamWriter(this.FilePath))
                    {
                        try
                        {
                            VerificationData.ExportVerification(writer, modbus, progress, this.verificationCodeNeeded);
                            writer.Flush();
                            writer.Close();
                            failedToCreateFile = false;
                            break;
                        }
                        catch (Exception e)
                        {
                            log.ErrorFormat("Error during verification export: {0}", e.ToString());
                            writer.Flush();
                            writer.Close();
                            File.Delete(this.FilePath);
                            retry++;
                            failedToCreateFile = true;
                        }
                    }
                }

                exportComplete = true;
            }
            catch (Exception e)
            {
                log.ErrorFormat("Error during verification export: {0}", e.ToString());
                exportComplete = true;
            }
        }

        /// <summary>
        /// Gets the progress of the file preperation
        /// </summary>
        /// <returns>A DownloadOperation that holds the progress of the current prepartion.</returns>
        public DownloadOperation Progress()
        {
            DownloadOperation download = new DownloadOperation();
            download.PercentDone = this.progress.PercentageProgress;

            if (this.exportComplete)
            {
                if (failedToCreateFile)
                {
                    download.FileURL = string.Empty;
                }
                else
                {
                    download.FileURL = this.url;
                }
            }

            return download;
        }
    }
}
