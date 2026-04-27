/* 
 * SurveyorTest.xaml.cs
 * 
 * Main page screen for displaying the surveyor test options.
 * C# partial implementation of SurveyorTest.xaml silverlight user control screen.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 09/02/2012
 */

using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;

using XTS.Controls;
using XTS.ChildWindows;

namespace XTS
{
	/// <summary>
	/// Interaction logic for SurveyorTest.xaml
	/// </summary>
    public partial class SurveyorTest : UserControl
    {
        private static SurveyorTest instance;

        public static SurveyorTest Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new SurveyorTest();
                }
                return instance;
            }
            set
            { instance = value; }
        }

        /// <summary>
        /// Tracks wether we are waiting on a callback from the server to tell us a surveyor mode request
        /// has completed
        /// </summary>
        private bool surveyorTestWait = false;

        /// <summary>
        /// Default threshold for alarm
        /// </summary>
        private uint alarmThreshold = 1300;
        /// <summary>
        /// Default threshold for slowdown
        /// </summary>
        private uint slowdownThreshold = 1800;

        /// <summary>
        /// Default constructor
        /// </summary>
        public SurveyorTest()
        {
            InitializeComponent();

            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.UpdateSurveyorValues();
                this.alarmThreshold = mp.XTSDataSource.SurveyorTest.AlarmThreshold;
                this.slowdownThreshold = mp.XTSDataSource.SurveyorTest.SlowdownThreshold;
            }

            // TODO: Put these bounds in the engine or general data?
            this.ScalePrecomp.MinValue = -2500;
            this.ScalePrecomp.MaxValue = 2500;
            this.ScalePrecomp.BabyTick = 100;
            this.ScalePrecomp.MinorTick = 500;
            this.ScalePrecomp.MajorTick = 1000;
            this.ScalePrecomp.Alignment = System.Windows.HorizontalAlignment.Right;
            this.ScalePrecomp.Direction = BarControl.BarControlDirection.Down;
            this.ScalePrecomp.Legend = "";
        }

        /// <summary>
        /// Callback for changing engine data
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void EngineData_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("RPM"))
            {
                UpdateUI();
            }
        }

        /// <summary>
        /// Add charts to the screen
        /// </summary>
        private void SetupCharts()
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                ClearBindings();
                this.PanelPrecomp.Children.Clear();

                // Sensor displays
                foreach (XTSCylinder cylinder in mp.XTSDataSource.EngineData.Cylinders)
                {
                    foreach (XTSSensor sensor in cylinder.Sensors)
                    {
                        BarControl precomp = new BarControl();

                        // TODO: Put these bounds in the engine or general config data?
                        precomp.MinValue = -2500;
                        precomp.MaxValue = 2500;
                        precomp.SlowdownThreshold = this.slowdownThreshold;
                        precomp.AlarmThreshold = this.alarmThreshold;

                        precomp.Direction = BarControl.BarControlDirection.Down;

                        precomp.Title = string.Format("{0}.{1}", cylinder.Index, sensor.Index);

                        Binding e = null;

                        e = new Binding();
                        e.Source = sensor;
                        e.Path = new PropertyPath("PreComp");
                        e.Mode = BindingMode.OneWay;
                        precomp.SetBinding(BarControl.ValueProperty, e);

                        // No sensor binding, always draw value and base colour on threshold values.
                        precomp.Status = XTSSensorStatus.Normal;
                        precomp.AutoColour = true;

                        this.PanelPrecomp.Children.Add(precomp);
                        this.boundBars.Add(precomp);
                    }
                }
            }
        }

        private System.Collections.Generic.List<BarControl> boundBars = new System.Collections.Generic.List<BarControl>();
        private void ClearBindings()
        {
            foreach (BarControl barControl in this.boundBars)
            {
                barControl.ClearValue(BarControl.ValueProperty);
            }
            this.boundBars.Clear();
        }

        /// <summary>
        /// Callback for alarm levels button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void buttonAlarmLevels_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            AlarmLevelsWindow alw = new AlarmLevelsWindow();
            alw.Closed += new EventHandler(alw_Closed);
            alw.AlarmLevel = this.alarmThreshold;
            alw.SlowdownLevel = this.slowdownThreshold;
            alw.MinValue = 1;
            alw.MaxValue = 2499;
            alw.Show();
        }

        /// <summary>
        /// Callback for alarms level window
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void alw_Closed(object sender, EventArgs e)
        {
            AlarmLevelsWindow alw = sender as AlarmLevelsWindow;
            if (alw.DialogResult == true)
            {
                MainPage mp = (MainPage)MainPage.GetInstance();
                if (mp != null)
                {
                    this.alarmThreshold = alw.AlarmLevel;
                    this.slowdownThreshold = alw.SlowdownLevel;

                    foreach (UserControl childControl in this.PanelPrecomp.Children)
                    {
                        if (childControl is BarControl)
                        {
                            BarControl barControl = childControl as BarControl;
                            barControl.AlarmThreshold = this.alarmThreshold;
                            barControl.SlowdownThreshold = this.slowdownThreshold;
                            barControl.UpdateLayout();
                        }
                    }

                    mp.XTSDataSource.SetSurveyorAlarmThresholds(this.alarmThreshold, this.slowdownThreshold);
                }
            }
            alw.Closed -= alw_Closed;
        }

        /// <summary>
        /// Callback for when user has pressed the test button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonTest_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                this.surveyorTestWait = true;
                if (mp.XTSDataSource.SurveyorTest.State == XTSSurveyorTest.SurveyorTestState.Stopped)
                {
                    mp.XTSDataSource.SetSurveyorTestMode(XTSSurveyorTest.SurveyorTestState.Running, new XTSResultDelegate(this.SetSurveyorTestModeCallback));
                }
                else
                {
                    mp.XTSDataSource.SetSurveyorTestMode(XTSSurveyorTest.SurveyorTestState.Stopped, new XTSResultDelegate(this.SetSurveyorTestModeCallback));
                }
                UpdateUI();
            }
        }

        /// <summary>
        /// Callback for setting surveyor test mode operation
        /// </summary>
        /// <param name="result"></param>
        public void SetSurveyorTestModeCallback(bool result)
        {
            // Check if we are on the main ui thread or not.
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                this.surveyorTestWait = false;
                UpdateUI();
            }
            else
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new XTSResultDelegate(SetSurveyorTestModeCallback), result);
            }
        }

        /// <summary>
        /// Updates the UI components
        /// </summary>
        private void UpdateUI()
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                if (mp.XTSDataSource.SurveyorTest.State == XTSSurveyorTest.SurveyorTestState.Running)
                {
                    this.TextBlockTest.Text = XTS.LocalizedResources.GetResourceString("XTSStringDisable");
                    this.LabelStatus.Content = XTS.LocalizedResources.GetResourceString("XTSStringRunning");
                    this.buttonTest.IsEnabled = !this.surveyorTestWait;
                    this.buttonTest.IsChecked = true;
                    this.AlarmOutputsButton.IsEnabled = false;
                }
                else
                {
                    this.TextBlockTest.Text = XTS.LocalizedResources.GetResourceString("XTSStringEnable");
                    this.LabelStatus.Content = XTS.LocalizedResources.GetResourceString("XTSStringStopped");
                    // Only enable test button based on RPM if we are not waiting for a callback
                    if (!this.surveyorTestWait)
                    {
                        this.buttonTest.IsEnabled = (mp.XTSDataSource.EngineData.RPM < 12);
                    }
                    else
                    {
                        this.buttonTest.IsEnabled = false;
                    }
                    this.buttonTest.IsChecked = false;
                    this.AlarmOutputsButton.IsEnabled = true;
                }
            }
        }

        /// <summary>
        /// Callback for the test alarm outputs button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonTestAlarms_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            TestAlarmOutputsWindow taow = new TestAlarmOutputsWindow();
            taow.Show();
        }

        private void SurveyorTest_Loaded(object sender, RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.SurveyorTest.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(SurveyorTest_PropertyChanged);
                mp.XTSDataSource.EngineData.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(EngineData_PropertyChanged);
                mp.XTSDataSource.Diagnostics.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(Diagnostics_PropertyChanged);
                CheckComms();
            }
            SetupCharts();
            UpdateUI();
        }

        private void SurveyorTest_Unloaded(object sender, RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.Diagnostics.PropertyChanged -= Diagnostics_PropertyChanged; 
                mp.XTSDataSource.EngineData.PropertyChanged -= EngineData_PropertyChanged;
                mp.XTSDataSource.SurveyorTest.PropertyChanged -= SurveyorTest_PropertyChanged;
            }
            ClearBindings();
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

        void SurveyorTest_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("State"))
            {
                UpdateUI();
            }
        }

        private void CheckComms()
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            XTSDiagnostics diagnostics = mp.XTSDataSource.Diagnostics;
            XTSEngine engineData = mp.XTSDataSource.EngineData;

            if (diagnostics.CPUCommsNetwork &&
                diagnostics.SPUComms.HasValue &&
                diagnostics.SPUComms.Value)
            {
                if (engineData.SPU2Fitted)
                {
                    if (diagnostics.SPU2Comms.HasValue &&
                        diagnostics.SPU2Comms.Value)
                    {
                        this.IsEnabled = true;
                        this.LayoutRoot.Opacity = 1.0;
                    }
                    else
                    {
                        this.IsEnabled = false;
                        this.LayoutRoot.Opacity = 0.5;
                    }
                }
                else
                {
                    this.IsEnabled = true;
                    this.LayoutRoot.Opacity = 1.0;
                }
            }
            else
            {
                this.IsEnabled = false;
                this.LayoutRoot.Opacity = 0.5;
            }
        }
    }
}
