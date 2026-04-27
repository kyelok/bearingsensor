/* 
 * TrendExportPopup.xaml.cs
 * 
 * Allows user to select the type of trend export.
 * C# partial implementation of TrendExportPopup.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 03/05/2012
 */

using System;
using System.Windows;
using System.Windows.Controls;

namespace XTS.ChildWindows
{
    /// <summary>
    /// Simple window presenting user with options for trend export
    /// </summary>
    public partial class TrendExportPopup : ChildWindow
    {
        MainPage mp = (MainPage)MainPage.GetInstance();

        private const int MINIMUM_HOURS = 2; 

        public TrendExportPopup()
        {
            InitializeComponent();
        }

        public TrendExportPopup(int spanTime)
        {
            InitializeComponent();

            LowExport.IsEnabled = (spanTime >= MINIMUM_HOURS);
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }

        private static string FILE_FILTER = XTS.LocalizedResources.GetResourceString("XTSStringCsvFileFilter");
        private static string CSV_EXT = XTS.LocalizedResources.GetResourceString("XTSStringCsvFileExt");

        private void LowExport_Click(object sender, RoutedEventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Filter = FILE_FILTER;
            string header = mp.Header.LabelScreenDescription.Content.ToString();
            if (header.Contains("("))
            {
                header = header.Remove(header.IndexOf('('), 1);
                header = header.Remove(header.IndexOf(')'), 1);
                header = header.Replace(':', '-');
            }            
            header = header + " - low";
            saveFileDialog.DefaultFileName = mp.GenerateFilename(header, CSV_EXT);
            
            if (saveFileDialog.ShowDialog() == true)
            {
                System.IO.Stream fileStream = saveFileDialog.OpenFile();
                mp.XTSDataSource.ExportCurrentTrend(fileStream, false);
                this.DialogResult = true;
            }
        }

        private void HighExport_Click(object sender, RoutedEventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Filter = FILE_FILTER;
            string header = mp.Header.LabelScreenDescription.Content.ToString();
            if (header.Contains("("))
            {
                header = header.Remove(header.IndexOf('('), 1);
                header = header.Remove(header.IndexOf(')'), 1);
                header = header.Replace(':', '-');
            }
            header = header + " - high";
            saveFileDialog.DefaultFileName = mp.GenerateFilename(header, CSV_EXT);
            
            if (saveFileDialog.ShowDialog() == true)
            {
                System.IO.Stream fileStream = saveFileDialog.OpenFile();
                mp.XTSDataSource.ExportCurrentTrend(fileStream, true);
                this.DialogResult = true;
            }
        }
    }
}

