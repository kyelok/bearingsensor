/*
 * TopBar.xaml.cs
 *
 * Implements the control that shows the header and drop down menu.
 * C# partial implementation of TrendsSelect.xaml silverlight user control.
 *
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 *
 * Originator: AMacleod, 31/01/2012
 */

using System.Windows;
using System.Windows.Controls;

namespace XTS.Controls
{
    /// <summary>
    /// Header control for the main screen.
    /// </summary>
	public partial class TopBar : UserControl
	{
        private string[] ERROR_CODE_MESSAGE_MAP = new string[] {
            /*  0 */ "XTSStringCoreErrorUnknown",
            /*  1 */ "XTSStringCoreErrorRTUStart",
            /*  2 */ "XTSStringCoreErrorRTUDongle",
            /*  3 */ "XTSStringCoreErrorRTURS485",
            /*  4 */ "XTSStringCoreErrorRTUExternal",
            /*  5 */ "XTSStringCoreErrorModbusTCPIP",
            /*  6 */ "XTSStringCoreErrorModBusMapper",
            /*  7 */ "XTSStringCoreErrorDatabaseCorrupt",
            /*  8 */ "XTSStringCoreErrorDataLogger",
            /*  9 */ "XTSStringCoreErrorDataLogger",
            /* 10 */ "XTSStringCoreErrorDataLogger",
            /* 11 */ "XTSStringCoreErrorReplacementDatabase",
            /* 12 */ "XTSStringCoreErrorReplacementDatabase",
            /* 13 */ "XTSStringCoreErrorReplacementDatabase",
            /* 14 */ "XTSStringCoreErrorReplacementDatabase",
            /* 15 */ "XTSStringCoreErrorCommStats",
            /* 16 */ "XTSStringCoreErrorDatabase",
            /* 17 */ "XTSStringCoreErrorDatabase",
            /* 18 */ "XTSStringCoreErrorDatabase",
            /* 19 */ "XTSStringCoreErrorDatabase",
            /* 20 */ "XTSStringCoreErrorEventLog",
            /* 21 */ "XTSStringCoreErrorEventLog",
            /* 22 */ "XTSStringCoreErrorEventLog",
            /* 23 */ "XTSStringCoreErrorEventLog",
            /* 24 */ "XTSStringCoreErrorModbus",
            /* 25 */ "XTSStringCoreErrorModbus",
            /* 26 */ "XTSStringCoreErrorModbus",
            /* 27 */ "XTSStringCoreErrorModbus",
            /* 28 */ "XTSStringCoreErrorReportGL",
            /* 29 */ "XTSStringCoreErrorReportGL",
            /* 30 */ "XTSStringCoreErrorReportGL",
            /* 31 */ "XTSStringCoreErrorReportGL",
            /* 32 */ "XTSStringCoreErrorReportGL",
            /* 33 */ "XTSStringCoreErrorReportAMOT",
            /* 34 */ "XTSStringCoreErrorReportAMOT",
            /* 35 */ "XTSStringCoreErrorReportAMOT",
            /* 36 */ "XTSStringCoreErrorReportAMOT",
            /* 37 */ "XTSStringCoreErrorReportAMOT",
            /* 38 */ "XTSStringCoreErrorReportAMOT",
            /* 39 */ "XTSStringCoreErrorReportAMOT",
            /* 40 */ "XTSStringCoreErrorReportAMOT",
            /* 41 */ "XTSStringCoreErrorGLMM",
            /* 42 */ "XTSStringCoreErrorGLMM",
            /* 43 */ "XTSStringCoreErrorGLMM",
            /* 44 */ "XTSStringCoreErrorGLMM",
            /* 45 */ "XTSStringCoreErrorGLMM",
            /* 46 */ "XTSStringCoreErrorGLMM",
            /* 47 */ "XTSStringCoreErrorIMO"
        };

        /// <summary>
        /// Default constructor.
        /// </summary>
		public TopBar()
		{
			// Required to initialize variables
			InitializeComponent();
		}

        /// <summary>
        /// Callback for when property changes occur in the XTS General data
        /// </summary>
        /// <param name="sender">Object callback originated from</param>
        /// <param name="e">Event data</param>
        void General_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            switch (e.PropertyName)
            {
                case "Message":
                    {
                        XTSGeneral general = sender as XTSGeneral;
                        UpdateStatusMessage(general);
                        break;
                    }
                default:
                    {
                        break;
                    }
            }
        }

        /// <summary>
        /// Update status message, obtained from a localized string based on the ID in the data source.
        /// </summary>
        /// <param name="general">The data source for the message</param>
        private void UpdateStatusMessage(XTSGeneral general)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            object[] args = null;
            string messageID = null;
            if (general == null)
            {
                messageID = "XTSStringStatusDefault";
            }
            else
            {
                messageID = general.GetMessageString(out args);
                if (messageID == null)
                {
                    messageID = "XTSStringStatusDefault";
                }
            }

            string finalMessage = string.Empty;
            if (messageID == "XTSStringCoreError")
            {
                // Need to concatonate error code messages
                string errorMessages = "";
                if ((args != null) && (args.Length > 0))
                {
                    short[] errCodes = (short[])(args[0]);
                    foreach (object errCode in errCodes)
                    {
                        errorMessages += " ";
                        errorMessages += XTS.LocalizedResources.GetResourceString(ERROR_CODE_MESSAGE_MAP[(short)errCode]);
                        errorMessages += string.Format(" ({0}),", errCode);
                    }
                    errorMessages = errorMessages.TrimEnd(new char[] { ',' });
                    finalMessage = string.Format(XTS.LocalizedResources.GetResourceString(messageID), errorMessages);
                }
                else
                {
                    finalMessage = XTS.LocalizedResources.GetResourceString(messageID);
                }
            }
            else if (mp.IgnoreCommsErrors && (messageID == "XTSStringCommsError"))
            {
                finalMessage = XTS.LocalizedResources.GetResourceString("XTSStringUpdateMode");
            }
            else
            {
                finalMessage = XTS.LocalizedResources.GetResourceString(messageID, args);
            }

            if (mp.XTSDataSource.Diagnostics.PLCComms != null)
            {
                if (mp.XTSDataSource.Diagnostics.PLCComms.HasValue && mp.XTSDataSource.Diagnostics.PLCComms.Value)
                {
                }
                else
                {
                    string errorString = "Error";
                    if (finalMessage != null && finalMessage.Contains(errorString))
                    {
                        finalMessage += " TMP communication lost";
                    }
                    else
                    {
                        finalMessage = "Error: TMP communication lost";
                    }

                }
            }

            if (mp.XTSDataSource.EngineData.DatabaseUpdating == true)
            {
                finalMessage += " - Updating database";
            }

            

            if (finalMessage == null)
            {
                finalMessage = string.Empty;
            }
            this.LabelMessage.Text = finalMessage;
        }

        private void TopBar_Loaded(object sender, RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                UpdateStatusMessage(mp.XTSDataSource.General);

                // We need to update the string when the resource ref. is updated.
                mp.XTSDataSource.General.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(General_PropertyChanged);
            }	
        }

        private void TopBar_Unloaded(object sender, RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                // We need to update the string when the resource ref. is updated.
                mp.XTSDataSource.General.PropertyChanged -= General_PropertyChanged;
            }	
        }
	}
}