/* 
 * SensorReplace.xaml.cs
 * 
 * Main page screen for displaying the sensor replacement screen.
 * C# partial implementation of SensorReplace.xaml silverlight user control screen.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 09/02/2012
 */

using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;

using XTS.ChildWindows;
using XTS.Controls;

namespace XTS
{
	/// <summary>
	/// Interaction logic for SensorReplace.xaml
	/// </summary>
	public partial class SensorReplace : UserControl
	{
        private static SensorReplace instance;

        public static SensorReplace Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new SensorReplace();
                }
                return instance;
            }
            set { instance = value; }
        }

        /// <summary>
        /// 
        /// </summary>
		public SensorReplace()
		{
			InitializeComponent();
		}

        /// <summary>
        /// 
        /// </summary>
        private void InitControls()
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                SetupGauges(mp.XTSDataSource.EngineData);
            }
        }

        /// <summary>
        /// Set up the screen controls with sensor replace controls for all sensors
        /// </summary>
        /// <param name="engine">The engine data to display</param>
        private void SetupGauges(XTSEngine engine)
        {
            ClearBindings();
            this.contentScrollSensors.Children.Clear();

            // Sensor displays
            UserControl last = null;
            foreach (XTSCylinder cylinder in engine.Cylinders)
            {
                foreach (XTSSensor sensor in cylinder.Sensors)
                {
                    SensorReplaceControl src = new SensorReplaceControl(cylinder.Index, sensor.Index);
                    src.Margin = new Thickness(0, 0, 0, 4);

                    BindDataSensor(sensor, src);
                    last = src;
                    this.contentScrollSensors.Children.Add(src);
                }
            }
            if (last != null)
            {
                last.Margin = new Thickness(0, 0, 0, 0);
            }
        }

        /// <summary>
        /// Bind the sensor replace control to the data to display
        /// </summary>
        /// <param name="sensor">The sensor to bind to</param>
        /// <param name="sensorGauge">The control to bind</param>
        private void BindDataSensor(XTSSensor sensor, SensorReplaceControl src)
        {
            Binding e = null;

            e = new Binding();
            e.Source = sensor.Replace;
            e.Path = new PropertyPath("FailureDate");
            e.Mode = BindingMode.OneWay;
            src.SetBinding(SensorReplaceControl.DateFailureProperty, e);

            e = new Binding();
            e.Source = sensor.Replace;
            e.Path = new PropertyPath("ReplacementDate");
            e.Mode = BindingMode.OneWay;
            src.SetBinding(SensorReplaceControl.DateReplacedProperty, e);

            e = new Binding();
            e.Source = sensor.Replace;
            e.Path = new PropertyPath("Stage");
            e.Mode = BindingMode.OneWay;
            src.SetBinding(SensorReplaceControl.CurrentStageProperty, e);

            e = new Binding();
            e.Source = sensor.Replace;
            e.Path = new PropertyPath("TimeRemaining");
            e.Mode = BindingMode.OneWay;
            src.SetBinding(SensorReplaceControl.TimeRemainingProperty, e);

            e = new Binding();
            e.Source = sensor.Replace;
            e.Path = new PropertyPath("TimeTotal");
            e.Mode = BindingMode.OneWay;
            src.SetBinding(SensorReplaceControl.TimeTotalProperty, e);
        }

        private System.Collections.Generic.List<SensorReplaceControl> boundCountrols = new System.Collections.Generic.List<SensorReplaceControl>();
        private void ClearBindings()
        {
            foreach (SensorReplaceControl src in this.boundCountrols)
            {
                src.ClearValue(SensorReplaceControl.DateFailureProperty);
                src.ClearValue(SensorReplaceControl.DateReplacedProperty);
                src.ClearValue(SensorReplaceControl.CurrentStageProperty);
                src.ClearValue(SensorReplaceControl.TimeRemainingProperty);
                src.ClearValue(SensorReplaceControl.TimeTotalProperty);
            }
            this.boundCountrols.Clear();
        }

        /// <summary>
        /// Callback for pressing the slowroll button.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonSlowroll_Click(object sender, RoutedEventArgs e)
        {
            SensorSetupPopup ssw = new SensorSetupPopup();
            ssw.Closed += new System.EventHandler(ssw_Closed);
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.SetMode(XTSMode.SensorSetup);
            }
            ssw.Show();
        }

        /// <summary>
        /// Callback for the sensor setup slowroll popup closing
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void ssw_Closed(object sender, System.EventArgs e)
        {
            SensorSetupPopup ssw = sender as SensorSetupPopup;
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.SetMode(XTSMode.SensorReplace);
                mp.XTSDataSource.ReplaceSensorSlowrollComplete(ssw.SensorsPeakCalibrated);
            }
            ssw.Closed -= ssw_Closed;
        }

        private void SensorReplace_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            InitControls();
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.Diagnostics.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(Diagnostics_PropertyChanged);
                CheckComms();
            }
        }

        private void SensorReplace_Unloaded(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.Diagnostics.PropertyChanged -= Diagnostics_PropertyChanged;
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