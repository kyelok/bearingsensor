/* 
 * BarGraph.xaml.cs
 * 
 * Main page screen for displaying the sensor or cylinder bar graphs for Temperature and deviation.
 * C# partial implementation of BarGraph.xaml silverlight user control screen.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 25/01/2012
 */

using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using XTS.ChildWindows;
using XTS.Controls;

namespace XTS
{
	/// <summary>
	/// Interaction logic for BarGraph.xaml
	/// </summary>
	public partial class Temperature : UserControl
	{
        private static Temperature instance;
        public static Temperature Instance
        {
            get
            {
                if (Temperature.instance == null)
                {
                    Temperature.instance = new Temperature(); 
                }
                return Temperature.instance; 
            }
            set
            {
                Temperature.instance = value;
            }
        }

        private List<UniBarControl> TempControls = new List<UniBarControl>();
        private List<BarControl> TempDevControls = new List<BarControl>();

        private ushort SensorDisplayTotal = 28;
        private const ushort SensorDisplayPerPageMin = 14;

        public Temperature()
		{
			this.InitializeComponent();

            // Default to sensor graphs
            this.buttonPageOne.IsChecked = true;
            this.buttonPageTwo.IsChecked = false; 
            //SetupCharts(false);
            MainPage mp = (MainPage)MainPage.GetInstance();

            //if (mp.XTSDataSource.EngineData.TemperatureSensors > SensorDisplayTotal)
            {
                this.buttonPageOne.Visibility = Visibility.Visible;
                this.buttonPageTwo.Visibility = Visibility.Visible;
            }
            //else
            {
                //this.buttonPageOne.Visibility = Visibility.Collapsed;
                //this.buttonPageTwo.Visibility = Visibility.Collapsed;
            }

            this.ScaleTemperature.HideTitleRow = true;

            uint barscaleTemperature = 100;
            uint barscaleDeviation = 100;
            
            if (mp != null)
            {
                barscaleTemperature = (uint)mp.XTSDataSource.EngineData.TemperatureBarscale;
                barscaleDeviation = (uint)mp.XTSDataSource.EngineData.TemperatureDevBarscale;
            }
            //this.ScaleTemperature.MinValue = -1 * (int)barscaleTemperature;            
            this.ScaleTemperature.MinValue = 0;
            this.ScaleTemperature.MaxValue = (int)barscaleTemperature;
            this.ScaleTemperature.MinorTick = 10;
            this.ScaleTemperature.BabyTick = 1;
            //this.ScaleTemperature.MajorTick = 100;
            this.ScaleTemperature.Alignment = System.Windows.HorizontalAlignment.Right;
            this.ScaleTemperature.Legend = XTS.LocalizedResources.GetResourceString("XTSStringLegendTemperature");
            this.ScaleTemperature.Direction = BarControl.BarControlDirection.Up;

            this.ScaleDeviation.MinValue = -1 * (int)barscaleDeviation;           
            this.ScaleDeviation.MaxValue = (int)barscaleDeviation;
            this.ScaleDeviation.BabyTick = 10;
            this.ScaleDeviation.MinorTick = 50;
            //this.ScaleDeviation.MajorTick = 100;
            this.ScaleDeviation.Alignment = System.Windows.HorizontalAlignment.Right;
            this.ScaleDeviation.Legend = XTS.LocalizedResources.GetResourceString("XTSStringLegendTemperatureDeviation");
            this.ScaleDeviation.Direction = BarControl.BarControlDirection.Up;

            this.ScaleTemperature.RowPadding = 3;
            this.ScaleDeviation.RowPadding = 3;
        }

        private void SetupCharts(bool showCylinders)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                if (showCylinders)
                {
                    SetupCylinderGraphs(mp.XTSDataSource.EngineData, (uint)mp.XTSDataSource.EngineData.TemperatureBarscale, (uint)mp.XTSDataSource.EngineData.TemperatureDevBarscale);
                }
                else
                {
                    SetupNextCylinderGraphs(mp.XTSDataSource.EngineData, (uint)mp.XTSDataSource.EngineData.TemperatureBarscale, (uint)mp.XTSDataSource.EngineData.TemperatureDevBarscale);
                }
            }
        }

        private void SetupNextCylinderGraphs(XTSEngine engine, uint barscaleTemperature, uint barscaleDeviation)
        {            
            this.PanelDeviation.Children.Clear();
            this.PanelTemperature.Children.Clear();

            int sensor = 0;
            // Cylinder displays
            foreach (UniBarControl cylinder in this.TempControls)
            {
                if (sensor < SensorDisplayTotal / 2)
                {
                    UniBarControl Temperature = this.TempControls[sensor];
                    BarControl deviation = this.TempDevControls[sensor];
                    Temperature.MouseLeftButtonUp -= new System.Windows.Input.MouseButtonEventHandler(Cylinder_MouseLeftButtonUp);
                }
                else
                {
                    UniBarControl Temperature = this.TempControls[sensor];
                    BarControl deviation = this.TempDevControls[sensor];                    
                    Temperature.MouseLeftButtonUp += new System.Windows.Input.MouseButtonEventHandler(Cylinder_MouseLeftButtonUp);
                    //deviation.MouseLeftButtonUp += new System.Windows.Input.MouseButtonEventHandler(CylinderDeviation_MouseLeftButtonUp);

                    this.PanelTemperature.Children.Add(this.TempControls[sensor]);
                    this.PanelDeviation.Children.Add(this.TempDevControls[sensor]);
                }
                sensor++;
            }
        }

        private void SetupCylinderGraphs(XTSEngine engine, uint barscaleTemperature, uint barscaleDeviation)
        {            
            this.PanelDeviation.Children.Clear();
            this.PanelTemperature.Children.Clear();

            int sensor = 0;
            // Cylinder displays
            foreach (UniBarControl cylinder in this.TempControls)
            {
                if (sensor >= SensorDisplayTotal / 2)
                {
                    UniBarControl Temperature = this.TempControls[sensor];
                    BarControl deviation = this.TempDevControls[sensor];
                    Temperature.MouseLeftButtonUp -= new System.Windows.Input.MouseButtonEventHandler(Cylinder_MouseLeftButtonUp);
                }
                else
                {
                   UniBarControl Temperature = this.TempControls[sensor];
                   BarControl deviation = this.TempDevControls[sensor];
                   Temperature.MouseLeftButtonUp += new System.Windows.Input.MouseButtonEventHandler(Cylinder_MouseLeftButtonUp);
                   //deviation.MouseLeftButtonUp += new System.Windows.Input.MouseButtonEventHandler(CylinderDeviation_MouseLeftButtonUp);

                   this.PanelTemperature.Children.Add(this.TempControls[sensor]);
                   this.PanelDeviation.Children.Add(this.TempDevControls[sensor]);
                }
                sensor++;
            }
        }

        void Cylinder_MouseLeftButtonUp(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {                       
            UniBarControl bc = sender as UniBarControl;

            uint index = (uint)bc.CylinderIndex;
            Trends.Instance.ShowInsertIntoTrend(new XTSTrendTemperature(bc.ChannelName, index)); 
        }

        void CylinderDeviation_MouseLeftButtonUp(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            UniBarControl bc = sender as UniBarControl;

            uint index = (uint)bc.CylinderIndex;

            Trends.Instance.ShowInsertIntoTrend(new XTSTrendTemperature(bc.ChannelName, index)); 
        }        

        private void buttonCylinders_Checked(object sender, System.Windows.RoutedEventArgs e)
        {
            SetupCharts(true);
        }

        private void buttonSensors_Checked(object sender, System.Windows.RoutedEventArgs e)
        {
            SetupCharts(false);
        }

        private void BarGraph_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                //set scale first
                if (mp.XTSDataSource.EngineData.TemperatureBarscale > 200)
                {
                    this.ScaleTemperature.BabyTick = 5;
                    this.ScaleTemperature.MinorTick = 20;
                }
                else
                {
                    this.ScaleTemperature.BabyTick = 2;
                    this.ScaleTemperature.MinorTick = 10;
                }

                if (mp.XTSDataSource.EngineData.TemperatureDevBarscale > 200)
                {
                    this.ScaleDeviation.BabyTick = 20;
                    this.ScaleDeviation.MinorTick = 100;
                }
                else
                {
                    this.ScaleDeviation.BabyTick = 10;
                    this.ScaleDeviation.MinorTick = 50;
                }

                SensorDisplayTotal = (ushort)mp.XTSDataSource.EngineData.TemperatureSensors;

                foreach (XTSBearTemperature cylinder in mp.XTSDataSource.EngineData.Bearingtemperature)
                {
                    UniBarControl TempBar = new UniBarControl();
                    TempBar.SetValue(cylinder.Temperature);                    
                    TempBar.SetStatus(cylinder.DisplayStatus);
                    TempBar.MinValue = 0;                    
                    TempBar.MaxValue = (int)mp.XTSDataSource.EngineData.TemperatureBarscale;
                    TempBar.SlowdownThreshold = (uint)cylinder.SlowdownLevel;
                    TempBar.AlarmThreshold = (uint)cylinder.AlarmLevel;
                    TempBar.HideTitleRow = true;
                    TempBar.Direction = UniBarControl.UniBarControlDirection.Up;
                    TempBar.ShowSlowdown = true;
                    TempBar.ShowAlarm = true;
                    TempBar.CylinderIndex = cylinder.Index;
                    TempBar.ChannelName = cylinder.Channelname;
                    TempBar.ToolTipName.Content = cylinder.Channelname;
                    this.TempControls.Add(TempBar);

                    BarControl TempDevBar = new BarControl();
                    TempDevBar.SetValue(cylinder.TemperatureDev);
                    TempDevBar.SetStatus(cylinder.DisplayDevStatus);
                    TempDevBar.MinValue = -(int)mp.XTSDataSource.EngineData.TemperatureDevBarscale;
                    TempDevBar.MaxValue = (int)mp.XTSDataSource.EngineData.TemperatureDevBarscale;
                    TempDevBar.SlowdownThreshold = (uint)mp.XTSDataSource.EngineData.TemperatureDevSlowdownLevel;
                    TempDevBar.AlarmThreshold = (uint)mp.XTSDataSource.EngineData.TemperatureDevAlarmLevel;
                    TempDevBar.Direction = BarControl.BarControlDirection.Up;
                    TempDevBar.ShowSlowdown = false;
                    TempDevBar.ShowAlarm = false;
                    TempDevBar.Title = cylinder.Index.ToString();                    
                    TempDevBar.CylinderIndex = cylinder.Index;
                    //TempDevBar.ToolTipName.Content = cylinder.Channelname;
                    this.TempDevControls.Add(TempDevBar);                    
                }

                //Display all channels in one page
                if (SensorDisplayTotal < SensorDisplayPerPageMin)
                {
                    SensorDisplayTotal *= 2;
                    this.buttonPageOne.Visibility = Visibility.Collapsed;
                    this.buttonPageTwo.Visibility = Visibility.Collapsed;
                }
            
                SetupCharts(true);

                mp.XTSDataSource.Diagnostics.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(Diagnostics_PropertyChanged);
                CheckComms();

                mp.XTSDataSource.EngineData.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(EngineData_PropertyChanged);

                mp.XTSDataSource.UserData.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(UserData_PropertyChanged);
                UserChanged();
            }
        }

        private void BarGraph_Unloaded(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.Diagnostics.PropertyChanged -= Diagnostics_PropertyChanged;
                mp.XTSDataSource.EngineData.PropertyChanged -= EngineData_PropertyChanged;
                mp.XTSDataSource.UserData.PropertyChanged -= UserData_PropertyChanged;
            }
            //CleanBindings();
        }

        /// <summary>
        /// Callback for changing engine data
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void EngineData_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("Beraingtemperature"))
            {
                UpdateDisplay();
            }
        }

        private void UpdateDisplay()
        {
            MainPage mp = MainPage.GetInstance() as MainPage;
            if (mp != null)
            {
                int sensor = 0;
                foreach (XTSBearTemperature tempsensor in mp.XTSDataSource.EngineData.Bearingtemperature)
                {
                    this.TempControls[sensor].SetValue(tempsensor.Temperature);                    
                    this.TempControls[sensor].SetStatus(tempsensor.DisplayStatus);
                    this.TempControls[sensor].ChangeToolTipName(tempsensor.Channelname);

                    this.TempDevControls[sensor].SetValue(tempsensor.TemperatureDev);
                    this.TempDevControls[sensor].SetStatus(tempsensor.DisplayDevStatus);
                    //this.TempDevControls[sensor].ChangeToolTipName(tempsensor.Channelname);
                    
                    sensor++;
                }


            }
        }

        /// <summary>
        /// Callback for when user info changes
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void UserData_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("CurrentUser"))
            {
                UserChanged();
            }
        }

        /// <summary>
        /// Update the UI Components based on the current logged in user
        /// </summary>
        private void UserChanged()
        {
            bool showSetup = false;
            bool showAmot = false;
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                // Check current logged in user
                XTSUser user = mp.XTSDataSource.UserData.CurrentUser;
                if (user != null)
                {
                    showSetup = user.Permissions >= XTSUser.XTSUserLevel.Setup;
                    showAmot = user.Permissions >= XTSUser.XTSUserLevel.AMOT;
                }
            }
            if (showSetup)
            {
                this.buttonSetting.Visibility = Visibility.Visible;
                this.buttonSaveSetting.Visibility = Visibility.Visible; 
            }
            else
            {
                this.buttonSetting.Visibility = Visibility.Collapsed;
                this.buttonSaveSetting.Visibility = Visibility.Collapsed;
            }            
        }

        void Diagnostics_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("CPUCommsNetwork") ||
                e.PropertyName.Equals("PLCComms"))
            {
                CheckComms();
            }
        }

        private void CheckComms()
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            XTSDiagnostics diagnostics = mp.XTSDataSource.Diagnostics;
            XTSEngine engineData = mp.XTSDataSource.EngineData;

            //if (diagnostics.CPUCommsNetwork)
            {
                if (diagnostics.PLCComms.HasValue && diagnostics.PLCComms.Value)
                {                    
                    this.PanelDeviation.Opacity = 1.0;
                    this.PanelTemperature.Opacity = 1.0;
                }
                else
                {
                    this.PanelDeviation.Opacity = 0.5;
                    this.PanelTemperature.Opacity = 0.5;
                    this.buttonSetting.Visibility = Visibility.Collapsed;
                }
            }
            //else
            {
                //this.PanelDeviation.Opacity = 0.5;
                //this.PanelTemperature.Opacity = 0.5;
                //this.buttonSetting.Visibility = Visibility.Collapsed;
            }
        }

        private void buttonSettings_clicked(object sender, RoutedEventArgs e)
        {
            TemperatureSettings ts = new TemperatureSettings();
            // Do not need a close callback as trend configuration management is handled by
            // the TrendsSelect window internally.
            ts.Show();
        }

        private void buttonSaveSetting_Click(object sender, RoutedEventArgs e)
        {
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                SaveFileDialog sfd = new SaveFileDialog();
                sfd.DefaultExt = XTS.LocalizedResources.GetResourceString("XTSStringCsvFileExt");
                sfd.Filter = XTS.LocalizedResources.GetResourceString("XTSStringSaveCsvFileFilter");
                sfd.DefaultFileName = mp.GenerateFilename("temperature-setting", XTS.LocalizedResources.GetResourceString("XTSStringCsvFileExt"));
                if (sfd.ShowDialog() == true)
                {
                    System.IO.Stream fileStream = sfd.OpenFile();
                    mp.XTSDataSource.SaveTemperatureSetting(fileStream);
                }
            }
        }
	}
}