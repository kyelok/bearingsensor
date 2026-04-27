/* 
 * Reporting.xaml.cs
 * 
 * Reporting screen, allows the user to select certain options for generating a report
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 05/04/2012
 */

using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Media;
using XTS.ChildWindows;

namespace XTS
{
	/// <summary>
	/// Interaction logic for Reporting.xaml
	/// </summary>
	public partial class Reporting : UserControl
	{
        private ToggleButton[] cylinders = new ToggleButton[14];

        private List<string> reportingContentsList = new List<string>();
        public List<string> ReportingContentsList
        {
            get
            {
                return reportingContentsList;
            }
        }

        private DateTime startDate;
        private DateTime endDate;

        private bool reportStart;

		public Reporting()
		{
            InitializeComponent();

            this.reportingContentsList.Add("All");
            this.reportingContentsList.Add("Selected Cylinders Only"); 

            this.cylinders[0]  = this.buttonCylinder01;
            this.cylinders[1]  = this.buttonCylinder02;
            this.cylinders[2]  = this.buttonCylinder03;
            this.cylinders[3]  = this.buttonCylinder04;
            this.cylinders[4]  = this.buttonCylinder05;
            this.cylinders[5]  = this.buttonCylinder06;
            this.cylinders[6]  = this.buttonCylinder07;
            this.cylinders[7]  = this.buttonCylinder08;
            this.cylinders[8]  = this.buttonCylinder09;
            this.cylinders[9]  = this.buttonCylinder10;
            this.cylinders[10] = this.buttonCylinder11;
            this.cylinders[11] = this.buttonCylinder12;
            this.cylinders[12] = this.buttonCylinder13;
            this.cylinders[13] = this.buttonCylinder14;

            DateTime now = DateTime.Now;
            this.endDate = new DateTime(now.Year, now.Month, now.Day);
            this.startDate = this.endDate.Subtract(new TimeSpan(1, 0, 0, 0));

            this.textBlockDateFrom.Text = this.startDate.ToString("d");
            this.textBlockDateTo.Text = this.endDate.ToString("d");

            MainPage mp = (MainPage)MainPage.GetInstance();
            mp.XTSDataSource.ReportData.Progress = 0;
            reportStart = false;

            if (mp.XTSDataSource.EngineData.WIO == null)
            {
                this.WIO.Visibility = Visibility.Collapsed;
                this.RectWIOHidden.Visibility = Visibility.Visible;
            }
            else
            {
                this.WIO.Visibility = Visibility.Visible;
                this.RectWIOHidden.Visibility = Visibility.Collapsed;
            }
            if (mp.XTSDataSource.EngineData.SEDM == null)
            {
                this.SEDM.Visibility = Visibility.Collapsed;
                this.RectSEDMHidden.Visibility = Visibility.Visible;
            }
            else
            {
                this.SEDM.Visibility = Visibility.Visible;
                this.RectSEDMHidden.Visibility = Visibility.Collapsed;
            }
            if (mp.XTSDataSource.EngineData.TemperatureSensors == 0)
            {
                this.Temp.Visibility = Visibility.Collapsed;
                this.RectTempHidden.Visibility = Visibility.Visible;
            }
            else
            {
                this.Temp.Visibility = Visibility.Visible;
                this.RectTempHidden.Visibility = Visibility.Collapsed;
            }
            foreach(XTSCylinder cylinder in mp.XTSDataSource.EngineData.Cylinders)
            {
                this.cylinders[cylinder.Index-1].IsEnabled = true;
                this.cylinders[cylinder.Index - 1].IsChecked = true;
                this.cylinders[cylinder.Index - 1].Visibility = Visibility.Visible;
            }
        }

        /// <summary>
        /// Callback for the Generate report button.
        /// Passes the selected options to the backend for 
        /// processing.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void GenerateReport_Click(object sender, RoutedEventArgs e)
        {
            reportStart = true;
            MainPage mp = (MainPage)MainPage.GetInstance();
            
            AMOTMessageBox amb = new AMOTMessageBox();
            amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OKCancel;
            amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringGenerateReport");
            TimeSpan reportRange = this.endDate - this.startDate;
            int minuteNeedToReport = (reportRange.Days / 30) + 1;
            if (this.listBoxReports.SelectedItem.ToString().Contains("AMOT")) minuteNeedToReport *= 2;

            amb.Message = string.Format(XTS.LocalizedResources.GetResourceString("XTSStringGenerateReportMessage"), minuteNeedToReport);
            amb.Closed += new System.EventHandler(mb_Closed);
            amb.Show();                            
        }

        /// <summary>
        /// Callback for report message box
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void mb_Closed(object sender, System.EventArgs e)
        {
            ChildWindow cw = sender as ChildWindow;
            if (cw.DialogResult == true)
            {
                MainPage mp = ((MainPage)MainPage.GetInstance());
                if (mp != null)
                {
                    if (this.startDate.Ticks >= this.endDate.Ticks)
                    {
                        Error(XTS.LocalizedResources.GetResourceString("XTSStringStartDateLaterThanEndDate"));
                        return;
                    }
                    // If date span is greater than 5 years, then stop report generation
                    if ((this.endDate - this.startDate) > TimeSpan.FromDays((365.25 * 5) + 1))
                    {
                        Error(XTS.LocalizedResources.GetResourceString("XTSStringTimeSpanGreaterThanYears", new object[] { 5 }));
                        return;
                    }

                    if (mp.XTSDataSource.ReportData.IsRunning)
                    {
                        Error(XTS.LocalizedResources.GetResourceString("XTSStringReportAlreadyInProgress"));
                        return;
                    }

                    bool allEvents = false;
                    StringBuilder sb = new StringBuilder();

                    if (listBoxReports.SelectedItem == null)
                    {
                        Error(XTS.LocalizedResources.GetResourceString("XTSStringReportStyleNeeded"));
                        return;
                    }

                    if (this.radioButtonReportAll.IsChecked == true)
                    {
                        allEvents = true;
                    }

                    for (int i = 0; i < this.cylinders.Length; i++)
                    {
                        if (this.cylinders[i].IsChecked == true)
                        {
                            sb.Append("1,1,");
                        }
                        else
                        {
                            sb.Append("0,0,");
                        }
                    }

                    if (WIO.IsChecked.Value)
                    {
                        sb.Append("1");
                    }
                    else
                    {
                        sb.Append("0");
                    }

                    sb.Append(",");

                    if (SEDM.IsChecked.Value)
                    {
                        sb.Append("1");
                    }
                    else
                    {
                        sb.Append("0");
                    }
                    sb.Append(",");

                    if (Temp.IsChecked.Value)
                    {
                        sb.Append("1");
                    }
                    else
                    {
                        sb.Append("0");
                    }

                    //Combine the two type of sensors into one variable
                    int WearAndTempSensors = mp.XTSDataSource.EngineData.Cylinders.Count << 8 | mp.XTSDataSource.EngineData.TemperatureSensors;
                    mp.XTSDataSource.StartReport(this.startDate.ToString("dd/MM/yyyy"),
                                        this.endDate.ToString("dd/MM/yyyy"),
                                        allEvents,
                                        this.sensorAbsolute.IsChecked.Value,
                                        this.sensorDeviation.IsChecked.Value,
                                        this.cylinderAbsolute.IsChecked.Value,
                                        this.cylinderDeviation.IsChecked.Value,
                                        this.singleSensor.IsChecked.Value,
                                        this.cylinderSum.IsChecked.Value,
                                        this.mainBearingNeighbourSum.IsChecked.Value,
                                        sb.ToString(),
                                        this.listBoxReports.SelectedItem.ToString(),
                                        WearAndTempSensors,
                                        this.toggleButtonGraphData.IsChecked.Value,
                                        new XTSResultDelegate(ReportStarted));        
                }
            }
            cw.Closed -= mb_Closed;
        }

        private void ReportStarted(bool success)
        {
            // Check if we are on the main ui thread or not.
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                if (!success)
                {
                    Error(XTS.LocalizedResources.GetResourceString("XTSStringCouldNotStartReport"));
                }
            }
            else
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new XTSResultDelegate(ReportStarted), success);
            }
        }

        /// <summary>
        /// Callback for the ViewReport button. 
        /// View previous reports 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ViewReport_Click(object sender, RoutedEventArgs e)
        {
            if (listBoxReports.SelectedItem == null)
            {
                Error(XTS.LocalizedResources.GetResourceString("XTSStringReportStyleNeeded"));
            }
            else
            {
                ReportSelection rs = new ReportSelection(0);
                if (this.listBoxReports.SelectedItem.ToString() == "AMOT")
                {
                    rs = new ReportSelection(0);
                }
                else if (this.listBoxReports.SelectedItem.ToString() == "GL")
                {
                    rs = new ReportSelection(1);
                }

                rs.Closed += new EventHandler(rs_Closed);
                MainPage mp = (MainPage)MainPage.GetInstance();
                if (mp != null)
                {
                    mp.EnablePopups = false;
                }
                rs.Show();
            }
        }

        /// <summary>
        /// Callback for report selection popup window closing
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void rs_Closed(object sender, EventArgs e)
        {
            ReportSelection rc = sender as ReportSelection;
            rc.Closed -= rs_Closed;
            MainPage mp = (MainPage) MainPage.GetInstance();
            if (mp != null)
            {
                mp.EnablePopups = true;
            }
        }

        private void Error(string text)
        {
            AMOTMessageBox amb = new AMOTMessageBox();
            amb.Message = text;
            amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringMessageBoxTitleError");
            amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.Close;
            amb.Show();
        }

        private void GeneratingReportDone(string text)
        {
            AMOTMessageBox amb = new AMOTMessageBox();
            amb.Message = text;
            amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringMessageBoxTitleInfo");
            amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.Close;
            amb.Show();
        }

        private void buttonFrom_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            DatePickerWindow dpwFrom = new DatePickerWindow();
            dpwFrom.Date = this.startDate;
            dpwFrom.Closed += new EventHandler(dpwFrom_Closed);
            dpwFrom.Show();
        }

        void dpwFrom_Closed(object sender, EventArgs e)
        {
            DatePickerWindow dpwFrom = sender as DatePickerWindow;
            if (dpwFrom.DialogResult == true)
            {
                this.startDate = dpwFrom.Date;
                this.textBlockDateFrom.Text = this.startDate.ToString("d");
            }
            dpwFrom.Closed -= dpwFrom_Closed;
        }

        private void buttonTo_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            DatePickerWindow dpwTo = new DatePickerWindow();
            dpwTo.Date = this.endDate;
            dpwTo.Closed += new EventHandler(dpwTo_Closed);
            dpwTo.Show();
        }

        void dpwTo_Closed(object sender, EventArgs e)
        {
            DatePickerWindow dpwTo = sender as DatePickerWindow;
            if (dpwTo.DialogResult == true)
            {
                this.endDate = dpwTo.Date;
                this.textBlockDateTo.Text = this.endDate.ToString("d");
            }
            dpwTo.Closed -= dpwTo_Closed;
        }

        private void buttonAll_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            foreach (ToggleButton tb in this.cylinders)
            {
                if (tb.IsEnabled)
                {
                    tb.IsChecked = true;
                }
            }
        }

        private void buttonNone_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            foreach (ToggleButton tb in this.cylinders)
            {
                tb.IsChecked = false;
            }
        }

        private void Reporting_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.Diagnostics.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(Diagnostics_PropertyChanged);
                CheckComms();
            }
        }

        private void Reporting_Unloaded(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.Diagnostics.PropertyChanged -= Diagnostics_PropertyChanged;
            }
        }

        void Diagnostics_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("CPUCommsNetwork") ||
                e.PropertyName.Equals("SPUComms") ||
                e.PropertyName.Equals("SPU2Comms"))
            {
                CheckComms();
            }
        }

        private void CheckComms()
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            XTSDiagnostics diagnostics = mp.XTSDataSource.Diagnostics;
            XTSEngine engineData = mp.XTSDataSource.EngineData;

            if (diagnostics.CPUCommsNetwork)
            {
                if (diagnostics.SPUComms.HasValue &&
                    diagnostics.SPUComms.Value)
                {
                    if (engineData.SPU2Fitted)
                    {
                        if (diagnostics.SPU2Comms.HasValue &&
                            diagnostics.SPU2Comms.Value)
                        {
                            this.ccDates.IsEnabled = true;
                            this.ccEventLog.IsEnabled = true;
                            this.ccGraphs.IsEnabled = true;
                            this.ccCylinders.IsEnabled = true;
                            this.scrollViewerReportTypes.Opacity = 1.0;
                            this.ccGenerateReport.IsEnabled = !engineData.DatabaseUpdating;
                        }
                        else
                        {
                            this.ccDates.IsEnabled = false;
                            this.ccEventLog.IsEnabled = false;
                            this.ccGraphs.IsEnabled = false;
                            this.ccCylinders.IsEnabled = false;
                            this.scrollViewerReportTypes.Opacity = 0.5;
                            this.ccGenerateReport.IsEnabled = false;
                        }
                    }
                    else
                    {
                        this.ccDates.IsEnabled = true;
                        this.ccEventLog.IsEnabled = true;
                        this.ccGraphs.IsEnabled = true;
                        this.ccCylinders.IsEnabled = true;
                        this.scrollViewerReportTypes.Opacity = 1.0;
                        this.ccGenerateReport.IsEnabled = !engineData.DatabaseUpdating;                        
                    }
                }
                else
                {
                    this.ccDates.IsEnabled = false;
                    this.ccEventLog.IsEnabled = false;
                    this.ccGraphs.IsEnabled = false;
                    this.ccCylinders.IsEnabled = false;
                    this.scrollViewerReportTypes.Opacity = 0.5;
                    this.ccGenerateReport.IsEnabled = false;
                }
                this.ViewReport.IsEnabled = true;
            }
            else
            {
                this.ccDates.IsEnabled = false;
                this.ccEventLog.IsEnabled = false;
                this.ccGraphs.IsEnabled = false;
                this.ccCylinders.IsEnabled = false;
                this.scrollViewerReportTypes.Opacity = 0.5;
                this.ccGenerateReport.IsEnabled = false;
                this.ViewReport.IsEnabled = false;
            }
        }

        private void RadProgressBar_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            if (e.NewValue == 100 && reportStart == true)
                {
                    GeneratingReportDone(XTS.LocalizedResources.GetResourceString("XTSStringReportComplete"));
                    reportStart = false;
                }
        }
	}
}