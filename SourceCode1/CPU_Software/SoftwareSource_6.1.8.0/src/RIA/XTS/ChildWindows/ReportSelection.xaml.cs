/* 
 * ReportSelection.xaml.cs
 * 
 * Allows the user to select a report and view it. 
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 25/04/2012
 */

// This specifies if the report page tries to display an HTML page explaining the XML can not be displayed.
// If it is not set, the XML report shall be set as the source of the IFRAME for report display, but behaviour
// is browser dependant.
#define XMLREPORTHTMLPAGE

using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using Telerik.Windows.Controls;
using System.Text;
using System.Threading;

namespace XTS.ChildWindows
{
    public partial class ReportSelection : ChildWindow
    {
        MainPage mp = (MainPage)MainPage.GetInstance(); 
 
        private int listReportType;

        /// <summary>
        /// Constructor for the ReportSelection
        /// </summary>
        public ReportSelection(int selectedReportType)
        {
            InitializeComponent();
            listReportType = selectedReportType;
        }

        /// <summary>
        /// Shows the webpage window after the popup as loaded and animation finished. 
        /// If this isn't done the HTML page renders incorrectly until the animation is 
        /// finished. 
        /// </summary>
        private void ShowPage()
        {
            Thread.Sleep(1000);
            this.Dispatcher.BeginInvoke(() => htmlReportPage.Visibility = System.Windows.Visibility.Visible);
        }

        /// <summary>
        /// Callback when the ReportSelection Screen is loaded. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void ReportSelection_Loaded(object sender, RoutedEventArgs e)
        {
            this.ReportItems.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(ReportItems_SelectionChanged);
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                this.ReportItems.ItemsSource = mp.XTSDataSource.ReportData.Completed;
                
                XTSDataCollection<string> Completed = new XTSDataCollection<string>();
                foreach (var item in mp.XTSDataSource.ReportData.Completed)
                {
                    if (listReportType == 0 && item.Contains("Report"))
                    {
                        Completed.Add(item);
                    }
                    if (listReportType == 1 && item.Contains("XML"))
                    {
                        Completed.Add(item);
                    }
                }

                this.ReportItems.ItemsSource = Completed;
                 
                // Add a callback so we can handle the alarm popup getting shown
                mp.Alarm_bar.AlarmPopupShown += new XTS.Controls.Alarm.AlarmPopupShownEventHandler(AlarmPopupShown);
            }
            Thread showHTMLPageThread = new Thread(ShowPage);
            showHTMLPageThread.Start();
        }

        /// <summary>
        /// Callback for screen unloaded.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ReportSelection_Unloaded(object sender, System.Windows.RoutedEventArgs e)
        {
            this.ReportItems.ClearValue(System.Windows.Controls.ListBox.ItemsSourceProperty);
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                // Remove callback for when alarm popup is about to be displayed
                mp.Alarm_bar.AlarmPopupShown -= AlarmPopupShown;
            }
            this.ReportItems.SelectionChanged -= ReportItems_SelectionChanged;
        }

        /// <summary>
        /// When the selection changes we load up the webpage associated with that 
        /// selected item 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void ReportItems_SelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            // Hide keyboard if it's shown
            InputKeyboard.Hide();

            if (e.AddedItems != null)
            {
                StringBuilder sb = new StringBuilder();
                string selected = (string)e.AddedItems[0].ToString();

                sb.Append("http://" + mp.XTSDataSource.General.Server + @"/reports/");
                /*
                if (selected.StartsWith("XML: "))
                {
#if XMLREPORTHTMLPAGE
                    // Show page explaining report can not be displayed
                    sb.Append("xmlreport.html?report=" + selected.Substring(5) + ".xml");
#else
                    // This relies on the browser displaying XML and the XML mime type of the
                    // webserver being something the browser will display/not download
                    sb.Append(selected.Substring(5) + ".xml");
#endif
                }
                 */
                if (listReportType == 1)
                {                    
                    StringBuilder page = new StringBuilder(selected);

                    // We have to remove the "XML:" string to get the correct HTM file
                    page.Replace("XML: ", "");
                    sb.Append(page.ToString() + @".xml");
                }
                if(listReportType == 0)
                {
                    sb.Append(selected + @"/");

                    StringBuilder page = new StringBuilder(selected);

                    // We have to remove the "Report" string to get the correct HTM file
                    page.Replace("Report ", "");

                    sb.Append(page.ToString() + @".htm");
                }
                Uri address = new Uri(Uri.EscapeUriString(sb.ToString()));

                try
                {
                    htmlReportPage.SourceUrl = address;
                }
                catch (Exception)
                { }
            }
            this.buttonDownload.IsEnabled = (this.ReportItems.SelectedItems.Count > 0);
        }

        /// <summary>
        /// Closes the popup window. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;

            htmlReportPage.Visibility = System.Windows.Visibility.Collapsed;
        }

        /// <summary>
        /// Callback function for when alarm popup is shown
        /// </summary>
        public void AlarmPopupShown()
        {
            this.Close();
        }

		/// <summary>
		/// Callback for when user presses the download button
		/// </summary>
		/// <param name="sender"></param>
		/// <param name="e"></param>
        private void buttonDownload_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            SaveFileDialog sfd = new SaveFileDialog();

            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                string ext = "";
                string reportName = (string)this.ReportItems.SelectedItem;
                if (reportName.StartsWith("XML: "))
                {
                    reportName = reportName.Substring(5);
                    ext = ".xml";
                }
                
                sfd.DefaultExt = XTS.LocalizedResources.GetResourceString("XTSStringZipFileExt");
                sfd.Filter = XTS.LocalizedResources.GetResourceString("XTSZipFileFilter");
                sfd.DefaultFileName = reportName;

                if (sfd.ShowDialog() == true)
                {
                    System.IO.Stream fileStream = sfd.OpenFile();
                    mp.XTSDataSource.DownloadReport(reportName + ext, fileStream);
                }
            }
        }
    }
}

