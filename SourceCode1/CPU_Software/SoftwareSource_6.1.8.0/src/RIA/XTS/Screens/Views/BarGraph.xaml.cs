/* 
 * BarGraph.xaml.cs
 * 
 * Main page screen for displaying the sensor or cylinder bar graphs for wear and deviation.
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

using XTS.Controls;

namespace XTS
{
	/// <summary>
	/// Interaction logic for BarGraph.xaml
	/// </summary>
	public partial class BarGraph : UserControl
	{
        private static BarGraph instance;
        public static BarGraph Instance
        {
            get
            {
                if (BarGraph.instance == null)
                {
                    BarGraph.instance = new BarGraph(); 
                }
                return BarGraph.instance; 
            }
            set
            {
                BarGraph.instance = value;
            }
        }

        private List<BarControl> boundControls = new List<BarControl>();

		public BarGraph()
		{
			this.InitializeComponent();

            // Default to sensor graphs
            this.buttonSensors.IsChecked = true;
            //SetupCharts(false);

            this.ScaleWear.HideTitleRow = true;

            uint barscaleWear = 1000;
            uint barscaleDeviation = 1000;
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                barscaleWear = mp.XTSDataSource.General.BarScaleWear;
                barscaleDeviation = mp.XTSDataSource.General.BarScaleDeviation;
            }
            this.ScaleWear.MinValue = -1 * (int)barscaleWear;
            this.ScaleWear.MaxValue = (int)barscaleWear;
            this.ScaleWear.BabyTick = 100;
            this.ScaleWear.MinorTick = 500;
            this.ScaleWear.MajorTick = 1000;
            this.ScaleWear.Alignment = System.Windows.HorizontalAlignment.Right;
            this.ScaleWear.Legend = XTS.LocalizedResources.GetResourceString("XTSStringLegendWear");
            this.ScaleWear.Direction = BarControl.BarControlDirection.Down;

            this.ScaleDeviation.MinValue = -1 * (int)barscaleDeviation;
            this.ScaleDeviation.MaxValue = (int)barscaleDeviation;
            this.ScaleDeviation.BabyTick = 250;
            this.ScaleDeviation.MinorTick = 500;
            this.ScaleDeviation.MajorTick = 1000;
            this.ScaleDeviation.Alignment = System.Windows.HorizontalAlignment.Right;
            this.ScaleDeviation.Legend = XTS.LocalizedResources.GetResourceString("XTSStringLegendDeviation");
            this.ScaleDeviation.Direction = BarControl.BarControlDirection.Up;

            this.ScaleWear.RowPadding = 3;
            this.ScaleDeviation.RowPadding = 3;
        }

        private void SetupCharts(bool showCylinders)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                if (showCylinders)
                {
                    SetupCylinderGraphs(mp.XTSDataSource.EngineData, mp.XTSDataSource.General.BarScaleWear, mp.XTSDataSource.General.BarScaleDeviation);
                }
                else
                {
                    SetupSensorGraphs(mp.XTSDataSource.EngineData, mp.XTSDataSource.General.BarScaleWear, mp.XTSDataSource.General.BarScaleDeviation);
                }
            }
        }

		private void SetupSensorGraphs(XTSEngine engine, uint barscaleWear, uint barscaleDeviation)
		{
            CleanBindings();
            this.PanelDeviation.Children.Clear();
            this.PanelWear.Children.Clear();

			// Sensor displays
            foreach (XTSCylinder cylinder in engine.Cylinders)
            {
                bool valueTop = true;
				foreach(XTSSensor sensor in cylinder.Sensors)
				{
                    BarControl wear = new BarControl();
					BarControl deviation = new BarControl();

                    wear.MinValue = -1 * (int)barscaleWear;
                    wear.MaxValue = (int)barscaleWear;
                    deviation.MinValue = -1 * (int)barscaleDeviation;
                    deviation.MaxValue = (int)barscaleDeviation;
                    wear.SlowdownThreshold = engine.SlowdownThreshold;
                    wear.AlarmThreshold = engine.AlarmThreshold;
                    wear.HideTitleRow = true;
                    deviation.SlowdownThreshold = engine.SlowdownDeviationThreshold;
                    deviation.AlarmThreshold = engine.AlarmDeviationThreshold;
                    wear.ShowTopValue = valueTop;
                    deviation.ShowTopValue = valueTop;

                    wear.Direction = BarControl.BarControlDirection.Down;
                    deviation.Direction = BarControl.BarControlDirection.Up;

                    deviation.Title = String.Format("{0}.{1}", cylinder.Index, sensor.Index);

                    deviation.CylinderIndex = cylinder.Index + (sensor.Index/10.0);
                    wear.CylinderIndex = cylinder.Index + (sensor.Index / 10.0); 

                    wear.MouseLeftButtonUp += new System.Windows.Input.MouseButtonEventHandler(Sensor_MouseLeftButtonUp);
                    deviation.MouseLeftButtonUp += new System.Windows.Input.MouseButtonEventHandler(SensorDeviation_MouseLeftButtonUp);

					BindDataSensor(sensor, wear, deviation);
						
					this.PanelWear.Children.Add(wear);
                    this.PanelDeviation.Children.Add(deviation);

                    valueTop = !valueTop;
                }
			}
		}

        private void CleanBindings()
        {
            foreach (BarControl bc in this.boundControls)
            {
                bc.ClearValue(BarControl.ValueProperty);
                bc.ClearValue(BarControl.StatusProperty);
            }
            this.boundControls.Clear();
        }

        void Sensor_MouseLeftButtonUp(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            BarControl bc = sender as BarControl;

            uint cylinder = (uint) bc.CylinderIndex;
            uint sensor = (uint) ((bc.CylinderIndex * 10) % 10);
            Trends.Instance.ShowInsertIntoTrend(new XTSTrendSensor(
                XTS.LocalizedResources.GetResourceString("XTSStringTrendDefaultSensor", new object[] {cylinder, sensor}),
                cylinder, sensor));
        }

        void SensorDeviation_MouseLeftButtonUp(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            BarControl bc = sender as BarControl;

            uint cylinder = (uint)bc.CylinderIndex;
            uint sensor = (uint)((bc.CylinderIndex * 10) % 10);
            Trends.Instance.ShowInsertIntoTrend(new XTSTrendSensorDeviation(
                XTS.LocalizedResources.GetResourceString("XTSStringTrendDefaultSensorDeviation", new object[] { cylinder, sensor }),
                cylinder, sensor));
        }

		private void BindDataSensor(XTSSensor sensor, BarControl wear, BarControl deviation)
        {
            Binding e = null;

            e = new Binding();
            e.Source = sensor;
            e.Path = new PropertyPath("Status");
            e.Mode = BindingMode.OneWay;
            wear.SetBinding(BarControl.StatusProperty, e);
            
            e = new Binding();
            e.Source = sensor;
            e.Path = new PropertyPath("DeviationStatus");
            e.Mode = BindingMode.OneWay;
			deviation.SetBinding(BarControl.StatusProperty, e);

            e = new Binding();
            e.Source = sensor;
            e.Path = new PropertyPath("Wear");
            e.Mode = BindingMode.OneWay;
            wear.SetBinding(BarControl.ValueProperty, e);
			
			e = new Binding();
            e.Source = sensor;
            e.Path = new PropertyPath("Deviation");
            e.Mode = BindingMode.OneWay;
            deviation.SetBinding(BarControl.ValueProperty, e);

            this.boundControls.Add(wear);
            this.boundControls.Add(deviation);
        }

        private void SetupCylinderGraphs(XTSEngine engine, uint barscaleWear, uint barscaleDeviation)
        {
            CleanBindings();
            this.PanelDeviation.Children.Clear();
            this.PanelWear.Children.Clear();

            // Cylinder displays
            foreach (XTSCylinder cylinder in engine.Cylinders)
            {
                BarControl wear = new BarControl();
                BarControl deviation = new BarControl();

                wear.MinValue = -1 * (int)barscaleWear;
                wear.MaxValue = (int)barscaleWear;
                deviation.MinValue = -1 * (int)barscaleDeviation;
                deviation.MaxValue = (int) barscaleDeviation;
                wear.SlowdownThreshold = engine.SlowdownThreshold;
                wear.AlarmThreshold = engine.CylinderAlarmThreshold;
                wear.HideTitleRow = true;
                deviation.SlowdownThreshold = engine.SlowdownDeviationThreshold;
                deviation.AlarmThreshold = engine.CylinderAlarmThreshold;

                wear.Direction = BarControl.BarControlDirection.Down;
                deviation.Direction = BarControl.BarControlDirection.Up;

                wear.ShowSlowdown = false;
                wear.ShowAlarm = false;
                deviation.ShowSlowdown = false;

                deviation.Title = XTS.LocalizedResources.GetResourceString("XTSStringCylinder0Number", new object[] { cylinder.Index });

                BindDataCylinder(cylinder, wear, deviation);

                deviation.CylinderIndex = cylinder.Index;
                wear.CylinderIndex = cylinder.Index;

                wear.MouseLeftButtonUp += new System.Windows.Input.MouseButtonEventHandler(Cylinder_MouseLeftButtonUp);
                deviation.MouseLeftButtonUp += new System.Windows.Input.MouseButtonEventHandler(CylinderDeviation_MouseLeftButtonUp);

                this.PanelWear.Children.Add(wear);
                this.PanelDeviation.Children.Add(deviation);
            }
        }

        void Cylinder_MouseLeftButtonUp(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            BarControl bc = sender as BarControl;

            uint index = (uint)bc.CylinderIndex;

            Trends.Instance.ShowInsertIntoTrend(new XTSTrendCylinder(
                                XTS.LocalizedResources.GetResourceString("XTSStringTrendDefaultCylinder", new object[] { index }),
                                index)); 
        }

        void CylinderDeviation_MouseLeftButtonUp(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            BarControl bc = sender as BarControl;

            uint index = (uint)bc.CylinderIndex;

            Trends.Instance.ShowInsertIntoTrend(new XTSTrendCylinderDeviation(
                XTS.LocalizedResources.GetResourceString("XTSStringTrendDefaultCylinderDeviation", new object[] { index }),
                index));
        }

        private void BindDataCylinder(XTSCylinder cylinder, BarControl wear, BarControl deviation)
        {
            Binding e = null;

            e = new Binding();
            e.Source = cylinder;
            e.Path = new PropertyPath("Status");
            e.Mode = BindingMode.OneWay;
            wear.SetBinding(BarControl.StatusProperty, e);

            e = new Binding();
            e.Source = cylinder;
            e.Path = new PropertyPath("DeviationStatus");
            e.Mode = BindingMode.OneWay;
            deviation.SetBinding(BarControl.StatusProperty, e);

            e = new Binding();
            e.Source = cylinder;
            e.Path = new PropertyPath("Wear");
            e.Mode = BindingMode.OneWay;
            wear.SetBinding(BarControl.ValueProperty, e);

            e = new Binding();
            e.Source = cylinder;
            e.Path = new PropertyPath("Deviation");
            e.Mode = BindingMode.OneWay;
            deviation.SetBinding(BarControl.ValueProperty, e);

            this.boundControls.Add(wear);
            this.boundControls.Add(deviation);
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
                mp.XTSDataSource.Diagnostics.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(Diagnostics_PropertyChanged);
                CheckComms();
            }
        }

        private void BarGraph_Unloaded(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.Diagnostics.PropertyChanged -= Diagnostics_PropertyChanged;
            }
            CleanBindings();
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
                            this.PanelDeviation.Opacity = 1.0;
                            this.PanelWear.Opacity = 1.0;
                        }
                        else
                        {
                            this.PanelDeviation.Opacity = 0.5;
                            this.PanelWear.Opacity = 0.5;
                        }
                    }
                    else
                    {
                        this.PanelDeviation.Opacity = 1.0;
                        this.PanelWear.Opacity = 1.0;
                    }
                }
                else
                {
                    this.PanelDeviation.Opacity = 0.5;
                    this.PanelWear.Opacity = 0.5;
                }
            }
            else
            {
                this.PanelDeviation.Opacity = 0.5;
                this.PanelWear.Opacity = 0.5;
            }
        }
	}
}