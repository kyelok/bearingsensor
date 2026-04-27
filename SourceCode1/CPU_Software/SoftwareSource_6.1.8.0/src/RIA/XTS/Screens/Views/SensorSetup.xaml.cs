/* 
 * SensorSetup.xaml.cs
 * 
 * Main page screen for displaying the sensor setup options.
 * C# partial implementation of SensorSetup.xaml silverlight user control screen.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 09/02/2012
 */

// No callbacks for DC Mode buttons, enable to reinstate these
// Note: Need to add the callbacks in the .xaml and reset IsHitTestVisible on the buttons.
//#define DCMODE_BUTTONS

using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Collections.Generic;

using XTS.ChildWindows;
using XTS.Controls;
using AMOTConstants;

namespace XTS
{
    /// <summary>
    /// Converter for enabling controls based on a sensor mode
    /// </summary>
    public class XTSPeakEnableSensorModeConverter : IValueConverter
    {
        public object Convert(object value, System.Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            bool isEnabled = false;
            XTSEngine.XTSSensorMode mode = (XTSEngine.XTSSensorMode)value;
            if ((mode == XTSEngine.XTSSensorMode.DCPeakHold) ||
                (mode == XTSEngine.XTSSensorMode.DCMode))
            {
                isEnabled = true;
            }
            return isEnabled;
        }

        public object ConvertBack(object value, System.Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new System.NotImplementedException();
        }
    }

    /// <summary>
	/// Interaction logic for SensorSetup.xaml
	/// </summary>
	public partial class SensorSetup : UserControl
	{
        private static SensorSetup instance;

        public static SensorSetup Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new SensorSetup(); 
                }
                return instance; 
            }
            set { instance = value; }
        }

        // Disables RPM updating of DCMode button IsEnabled when waiting
        // for Sensor Mode update callback
#if DCMODE_BUTTONS
        private bool waitingForSensorMode = false;
#endif // DCMODE_BUTTONS

        /// <summary>
        /// Temp list for storing sensor ids during peak calibration before adding to success list
        /// </summary>
        private List<XTSSensor.XTSSensorID> sensorsPeakCalibratedSelected = null;
        /// <summary>
        /// Internal data for SensorsPeakCalibrated
        /// </summary>
        private List<XTSSensor.XTSSensorID> sensorsPeakCalibratedSuccess = new List<XTSSensor.XTSSensorID>();
        /// <summary>
        /// List of sensors that were successfully peak calibrated by the screen, note that the
        /// </summary>
        public List<XTSSensor.XTSSensorID> SensorsPeakCalibrated
        {
            get
            {
                return this.sensorsPeakCalibratedSuccess;
            }
        }

        /// <summary>
        /// Wether the screen is showing microns or mA
        /// </summary>
        private bool showMicrons = false;

        /// <summary>
        /// Wether the screen shows only charts that are in slowroll stage
        /// </summary>
        private bool setupSlowroll = false;
        /// <summary>
        /// True if we want to grey out charts not in slowroll stage</param>
        /// </summary>
        public bool Slowroll
        {
            set
            {
                this.setupSlowroll = value;
            }
            get
            {
                return this.setupSlowroll;
            }
        }

        /// <summary>
        /// Default constructor
        /// </summary>
         public SensorSetup()
		{
            InitializeComponent();
        }
		
        /// <summary>
        /// Adds sensor comparison display to page
        /// </summary>
        /// <remarks>only required once, so no need to call in InitControls which reinits
        /// all controls when switching mA/Microns</remarks>
        private void SetupSensorComparison()
        {
            this.StackPanelPercent.Children.Clear();

            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                foreach (XTSCylinder cylinder in mp.XTSDataSource.EngineData.Cylinders)
                {
                    CylinderPercentComparison cpc = new CylinderPercentComparison();

                    Binding e = null;

                    e = new Binding();
                    e.Source = cylinder;
                    e.Path = new PropertyPath("SensorComparison");
                    e.Mode = BindingMode.OneWay;
                    cpc.SetBinding(CylinderPercentComparison.ValueProperty, e);

                    this.StackPanelPercent.Children.Add(cpc);
                    this.boundPercentComparisons.Add(cpc);
                }
            }
        }

        private System.Collections.Generic.List<PeakGauge> boundGauges = new List<PeakGauge>();
        private System.Collections.Generic.List<CylinderPercentComparison> boundPercentComparisons = new List<CylinderPercentComparison>();
        private void ClearBindings()
        {
            foreach (CylinderPercentComparison cpc in this.boundPercentComparisons)
            {
                cpc.ClearValue(CylinderPercentComparison.ValueProperty);
            }
            foreach (PeakGauge peakGauge in this.boundGauges)
            {
                peakGauge.ClearValue(PeakGauge.StatusProperty);
                peakGauge.ClearValue(PeakGauge.ReadingStatusProperty);
                peakGauge.ClearValue(PeakGauge.ValueProperty);
                peakGauge.ClearValue(PeakGauge.ValuePeakProperty);
                peakGauge.ClearValue(PeakGauge.SensorBoundsProperty);
            }
            this.boundPercentComparisons.Clear();
            this.boundGauges.Clear();
        }

        /// <summary>
        /// Initialise screen display extra controls
        /// </summary>
        private void InitControls()
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                ClearBindings();
                SetupGauges(mp.XTSDataSource.EngineData, this.showMicrons);
                SetupSensorComparison();
            }
        }

        /// <summary>
        /// Set up the screen controls with peak gauges for all sensors
        /// </summary>
        /// <param name="engine">The engine data to display</param>
        /// <param name="microns">Display in microns or mA</param>
        private void SetupGauges(XTSEngine engine, bool microns)
        {
            this.StackPanelCharts.Children.Clear();

            this.ScaleLeft.HideTitleRow = true;
            this.ScaleLeft.HideFooterRow = true;
            this.ScaleLeft.Alignment = System.Windows.HorizontalAlignment.Right;
			
            if (microns)
            {
                // TODO: Get bounds from XTS data?
                this.ScaleLeft.MinValue = -2500;
                this.ScaleLeft.MaxValue = 2500;
                this.ScaleLeft.BabyTick = 100;
                this.ScaleLeft.MinorTick = 500;
                this.ScaleLeft.MajorTick = 1000;
                this.ScaleLeft.Legend = "µm";
                this.ScaleLeft.Direction = BarControl.BarControlDirection.Up;
            }
            else
            {
                // TODO: Get bounds from XTS data?
                this.ScaleLeft.MinValue = 0;
                this.ScaleLeft.MaxValue = 20;
                this.ScaleLeft.BabyTick = 0;
                this.ScaleLeft.MinorTick = 1;
                this.ScaleLeft.MajorTick = 10;
                this.ScaleLeft.Legend = "mA";
                this.ScaleLeft.Direction = BarControl.BarControlDirection.Down;
            }
            this.ScaleLeft.UpdateTickmarks();

            // Sensor displays
            foreach (XTSCylinder cylinder in engine.Cylinders)
            {
                foreach (XTSSensor sensor in cylinder.Sensors)
                {
                    PeakGauge sensorGauge = new PeakGauge(cylinder.Index, sensor.Index);

                    if (!microns)
                    {
                        sensorGauge.MinValueOK = engine.SensorTarget.OKLow;
                        sensorGauge.MinValueIdeal = engine.SensorTarget.IdealLow;
                        sensorGauge.MaxValueIdeal = engine.SensorTarget.IdealHigh;
                        sensorGauge.MaxValueOK = engine.SensorTarget.OKHigh;
                        // TODO: Get bounds from engine data?
                        sensorGauge.MinValue = 0;
                        sensorGauge.MaxValue = 20000;
                        sensorGauge.Direction = BarControl.BarControlDirection.Down;
                    }
                    else
                    {
                        // TODO: Get bounds from engine data?
                        sensorGauge.MinValue = -2500;
                        sensorGauge.MaxValue = 2500;
                        sensorGauge.Direction = BarControl.BarControlDirection.Up;
                    }
                    sensorGauge.ShowIdealBounds = !microns;
                    sensorGauge.ShowOKBounds    = !microns;
                    sensorGauge.ShowAllValues   = !microns;
                    sensorGauge.ModifyValue     = !microns;
                    sensorGauge.ShowFromZero    = microns;

                    BindDataSensor(sensor, engine, sensorGauge, microns);

                    // Only enable graph if slow roll is enabled or if we are in the setup sensor replace setup slowroll
                    // mode then also grey graph if replace state is not slowroll
                    if ((!sensor.SlowrollEnabled) ||
                        (this.setupSlowroll && (sensor.Replace.Stage != SensorReplacementStage.SlowRoll)))
                    {
                            sensorGauge.Opacity = 0.5;
                    }

                    this.StackPanelCharts.Children.Add(sensorGauge);
                    this.boundGauges.Add(sensorGauge);
                }
            }
        }

        /// <summary>
        /// Bind the peak gauge control to the data to display
        /// </summary>
        /// <param name="sensor">The sensor to bind to</param>
        /// <param name="engine">The engine data to bind to</param>
        /// <param name="sensorGauge">The control to bind</param>
        /// <param name="microns">Display in microns or mA</param>
        private void BindDataSensor(XTSSensor sensor, XTSEngine engine, PeakGauge sensorGauge, bool microns)
        {
            Binding e = null;

            e = new Binding();
            e.Source = sensor;
            e.Path = new PropertyPath("Status");
            e.Mode = BindingMode.OneWay;
            sensorGauge.SetBinding(PeakGauge.StatusProperty, e);

            e = new Binding();
            e.Source = sensor;
            e.Path = new PropertyPath("ReadingStatus");
            e.Mode = BindingMode.OneWay;
            sensorGauge.SetBinding(PeakGauge.ReadingStatusProperty, e);

            e = new Binding();
            e.Source = sensor;
            if (microns)
            {
                e.Path = new PropertyPath("PreComp");
            }
            else
            {
                e.Path = new PropertyPath("Reading");
            }
            e.Mode = BindingMode.OneWay;
            sensorGauge.SetBinding(PeakGauge.ValueProperty, e);

            e = new Binding();
            e.Source = sensor;
            if (microns)
            {
                e.Path = new PropertyPath("PreCompPeak");
            }
            else
            {
                e.Path = new PropertyPath("ReadingPeak");
            }
            e.Mode = BindingMode.OneWay;
            sensorGauge.SetBinding(PeakGauge.ValuePeakProperty, e);

            if (!microns)
            {
                e = new Binding();
                e.Source = engine;
                e.Path = new PropertyPath("SensorTarget");
                e.Mode = BindingMode.OneWay;
                sensorGauge.SetBinding(PeakGauge.SensorBoundsProperty, e);
            }
        }

        /// <summary>
        /// Callback for the display values in MilliAmps button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void buttonMilliAmps_checked(object sender, System.Windows.RoutedEventArgs e)
		{
            if (this.showMicrons)
            {
                this.showMicrons = false;
                InitControls();
            }
		}

        /// <summary>
        /// Callback for the display values in Microns button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void buttonMicrons_checked(object sender, System.Windows.RoutedEventArgs e)
		{
            if (!this.showMicrons)
            {
                this.showMicrons = true;
                InitControls();
            }
		}

        // Removed the callbacks for the buttons as the user should not be able to click these now
#if DCMODE_BUTTONS
		/// <summary>
        /// Callback for pressing the DC Mode Sensor Mode button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonDCMode_clicked(object sender, System.Windows.RoutedEventArgs e)
		{
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                if (mp.XTSDataSource.EngineData.SensorMode != XTSEngine.XTSSensorMode.DCMode)
                {
                    AMOTMessageBox mb = new AMOTMessageBox();
                    mb.Title = XTS.LocalizedResources.GetResourceString("XTSStringDCModeSelectTitle");
                    mb.Message = XTS.LocalizedResources.GetResourceString("XTSStringDCModeSelectMsg");
                    mb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.YesNo;
                    mb.Closed += new System.EventHandler(DCModeMessageBox_Closed);
                    mb.Show();
                }
            }
		}

        /// <summary>
        /// Callback for closing the warning message box when using DC Mode
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
        private void DCModeMessageBox_Closed(object sender, System.EventArgs e)
        {
            ChildWindow cw = sender as ChildWindow;
            if (cw.DialogResult == true)
            {
                MainPage mp = ((MainPage)MainPage.GetInstance());
                if (mp != null)
                {
                    if (mp.XTSDataSource.EngineData.RPM != 0)
                    {
                        UpdateSensorMode();
                        AMOTMessageBox mb = new AMOTMessageBox();
                        mb.Title = XTS.LocalizedResources.GetResourceString("XTSStringDCModeEngineRunningTitle");
                        mb.Message = XTS.LocalizedResources.GetResourceString("XTSStringDCModeEngineRunningMsg");
                        mb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.Close;
                        mb.Show();
                    }
                    else
                    {
                        // Disable all buttons whilst we wait for update
                        this.buttonDCPeakHold.IsEnabled = false;
                        this.buttonDCMode.IsEnabled = false;
                        this.buttonPulseMode.IsEnabled = false;

                        if (this.buttonDCPeakHold.IsChecked != null)
                        {
                            this.waitingForSensorMode = true;
                            if (this.buttonDCPeakHold.IsChecked == true)
                            {
                                mp.XTSDataSource.SetSensorMode(XTSEngine.XTSSensorMode.PulseMode, this.SetSensorModeResultCallback);
                            }
                            else
                            {
                                mp.XTSDataSource.SetSensorMode(XTSEngine.XTSSensorMode.DCMode, this.SetSensorModeResultCallback);
                            }
                        }
                    }
                }
            }
            else
            {
                UpdateSensorMode();
            }
            cw.Closed -= DCModeMessageBox_Closed;
        }

		/// <summary>
        /// Callback for pressing the Pulse Mode Sensor Mode button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonPulseMode_clicked(object sender, System.Windows.RoutedEventArgs e)
		{
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                if (mp.XTSDataSource.EngineData.SensorMode != XTSEngine.XTSSensorMode.PulseMode)
                {
                    // Disable all buttons whilst we wait for update
                    this.buttonDCPeakHold.IsEnabled = false;
                    this.buttonDCMode.IsEnabled = false;
                    this.buttonPulseMode.IsEnabled = false;

                    this.waitingForSensorMode = true;
                    mp.XTSDataSource.SetSensorMode(XTSEngine.XTSSensorMode.PulseMode, this.SetSensorModeResultCallback);
                }
            }
		}

		/// <summary>
        /// Callback for pressing the DC Peak Hold Sensor Mode button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void buttonDCPeakHold_clicked(object sender, System.Windows.RoutedEventArgs e)
		{
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
				// Disable all buttons whilst we wait for update
				this.buttonDCPeakHold.IsEnabled = false;
				this.buttonDCMode.IsEnabled = false;
				this.buttonPulseMode.IsEnabled = false;

                // If we're already in dcpeakhold, then set to normal DCMode
                this.waitingForSensorMode = true;
                if (mp.XTSDataSource.EngineData.SensorMode == XTSEngine.XTSSensorMode.DCPeakHold)
                {
                    mp.XTSDataSource.SetSensorMode(XTSEngine.XTSSensorMode.DCMode, this.SetSensorModeResultCallback);
                }
                else
                {
                    mp.XTSDataSource.SetSensorMode(XTSEngine.XTSSensorMode.DCPeakHold, this.SetSensorModeResultCallback);
                }
            }
		}
#endif // DCMODE_BUTTONS

        /// <summary>
        /// Callback for pressing the Peak Calibration button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void buttonPeakCalibration_clicked(object sender, System.Windows.RoutedEventArgs e)
		{
            AMOTMessageBox mb = new AMOTMessageBox();
            mb.Title = XTS.LocalizedResources.GetResourceString("XTSStringPeakCalibrationTitle");
            mb.Message = XTS.LocalizedResources.GetResourceString("XTSStringPeakCalibrationMsg");
            mb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.YesNo;
            mb.Closed += new System.EventHandler(PeakCalibrationMessageBox_Closed);
            mb.Show();
		}

        /// <summary>
        /// Callback for when sensor replacement data is avaliable
        /// </summary>
        /// <param name="success"></param>
        private void UpdateSensorReplaceDataCallback(bool result)
        {
            if (result == false)
            {
                return;
            }

            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess() == false)
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new XTSResultDelegate(UpdateSensorReplaceDataCallback), result);
                return;
            }

            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp == null)
            {
                return;
            }

            SensorSelectWindow sdw = new SensorSelectWindow();
            
            int count = 0;
            // Add ALL sensors and set to checked.
            foreach (XTSCylinder cylinder in mp.XTSDataSource.EngineData.Cylinders)
            {
                foreach (XTSSensor sensor in cylinder.Sensors)
                {
                    XTSSensor.XTSSensorID id;
                    id.cylinder = sensor.Cylinder;
                    id.sensor = sensor.Index;
                    sdw.Sensors.Add(id);

                    if ((sensor.Status.HasFlag(XTSSensorStatus.Disabled)) ||
                        (!sensor.SlowrollEnabled) ||
                        (this.setupSlowroll && (sensor.Replace.Stage != SensorReplacementStage.SlowRoll)))
                    {
                        sdw.DisabledSensors.Add(count);
                    }
                    else
                    {
                        sdw.SelectedSensors.Add(count);
                    }
                    count++;
                }
            }

            sdw.Title = XTS.LocalizedResources.GetResourceString("XTSStringSelectSensorsToCalibrate");
            sdw.Closed += new System.EventHandler(sdw_Closed);
            mp.ShowBusy(false);
            sdw.Show();
        }

        /// <summary>
        /// Callback for closing the warning message box when starting peak calibration
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
        private void PeakCalibrationMessageBox_Closed(object sender, System.EventArgs e)
        {
            ChildWindow cw = sender as ChildWindow;
            if (cw.DialogResult == true)
            {
                MainPage mp = ((MainPage)MainPage.GetInstance());
                if (mp != null)
                {
                    mp.ShowBusy(true);
                    mp.XTSDataSource.UpdateSensorReplaceData(UpdateSensorReplaceDataCallback);
                }
            }
            cw.Closed -= PeakCalibrationMessageBox_Closed;
        }

        /// <summary>
        /// Callback for peak calibration sensor selection messagebox.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void sdw_Closed(object sender, System.EventArgs e)
        {
            SensorSelectWindow sdw = sender as SensorSelectWindow;
            if (sdw.DialogResult == true)
            {
                MainPage mp = ((MainPage)MainPage.GetInstance());
                if (mp != null)
                {
                    // Clear out list
                    this.sensorsPeakCalibratedSelected = new List<XTSSensor.XTSSensorID>();

                    // Only call peak calibration if we have a list of sensor ids selected
                    if (sdw.SelectedSensors.Count > 0)
                    {
                        foreach (int index in sdw.SelectedSensors)
                        {
                            this.sensorsPeakCalibratedSelected.Add(sdw.Sensors[index]);
                        }
                        this.buttonPeakCalibration.IsEnabled = false;
                        mp.ShowBusy(true);
                        mp.XTSDataSource.PeakCalibration(this.sensorsPeakCalibratedSelected, this.PeakCalibrationResultCallback);
                    }
                }
            }
            sdw.Closed -= sdw_Closed;
        }

        /// <summary>
        /// Callback for pressing the Reset all peak values button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void buttonResetPeak_clicked(object sender, System.Windows.RoutedEventArgs e)
		{
			MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.ResetSensorReadingPeak();
            }
		}

		/// <summary>
        /// Callback for pressing Calibrate Firing Order button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void buttonFiring_clicked(object sender, System.Windows.RoutedEventArgs e)
		{
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                // Engine should always be running in forward direction as button
                // will be disabled if it isn't, but spec says to show message box.

                AMOTMessageBox mb = new AMOTMessageBox();
                mb.Title = XTS.LocalizedResources.GetResourceString("XTSStringCalibrateFiringOrderTitle");
                mb.Message = XTS.LocalizedResources.GetResourceString("XTSStringCalibrateFiringOrderMsg");
                mb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OKCancel;
                mb.Closed += new System.EventHandler(FiringOrderMessageBox_Closed);
                mb.Show();
            }
		}

        /// <summary>
        /// Callback for closing the warning message box when starting calibrate firing order
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
        private void FiringOrderMessageBox_Closed(object sender, System.EventArgs e)
        {
            ChildWindow cw = sender as ChildWindow;
            if (cw.DialogResult == true)
            {
                MainPage mp = (MainPage)MainPage.GetInstance();
                if (mp != null)
                {
                    mp.XTSDataSource.DetectCylinderFiringOrder();
                }
            }
            cw.Closed -= FiringOrderMessageBox_Closed;
        }

		/// <summary>
		/// Callback for when engine data is updated
		/// </summary>
		/// <param name="sender"></param>
		/// <param name="e"></param>
		private void EngineData_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
		{
			if (e.PropertyName.Equals("SensorMode"))
			{
				UpdateSensorMode();
			}
            else if (e.PropertyName.Equals("RPM"))
            {
                MainPage mp = (MainPage)MainPage.GetInstance();
                if (mp != null)
                {
                    if (((mp.XTSDataSource.EngineData.Direction == XTSEngine.XTSEngineDirection.Forward) || (mp.XTSDataSource.EngineData.Direction == XTSEngine.XTSEngineDirection.NotSet)) &&
                        (mp.XTSDataSource.EngineData.RPM >= mp.XTSDataSource.EngineData.RPMLimit))
                    {
                        this.buttonFiring.IsEnabled = true;
                    }
                    else
                    {
                        this.buttonFiring.IsEnabled = false;
                    }
#if DCMODE_BUTTONS
                    // If we're waiting for a callback from a sensor mode, then
                    // leave enabled state as is, otherwise set 
                    if (!this.waitingForSensorMode)
                    {
                        bool enabled = (mp.XTSDataSource.EngineData.RPM == 0);
                        this.buttonDCMode.IsEnabled = enabled;
                        this.buttonDCPeakHold.IsEnabled = enabled;
                    }
#endif // DCMODE_BUTTONS
                }
            }
		}

#if DCMODE_BUTTONS
        /// <summary>
        /// Callback for setting sensor mode
        /// </summary>
        /// <param name="result">True if it succeeded</param>
        public void SetSensorModeResultCallback(bool result)
        {
            // Check if we are on the main ui thread or not.
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                UpdateSensorMode();
                if (!result)
                {
                    AMOTMessageBox mb = new AMOTMessageBox();
                    mb.Title = XTS.LocalizedResources.GetResourceString("XTSStringSetSensorModeFailTitle");
                    mb.Message = XTS.LocalizedResources.GetResourceString("XTSStringSetSensorModeFailMsg");
                    mb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OK;
                    mb.Show();
                }
                // We do not need to call UpdateSensorMode() as the mode will be updated
                // in the EngineData_PropertyChanged() handler.
                MainPage mp = (MainPage)MainPage.GetInstance();
                if (mp != null)
                {
                    this.buttonDCPeakHold.IsEnabled = (mp.XTSDataSource.EngineData.SensorMode != XTSEngine.XTSSensorMode.PulseMode);
                    this.buttonDCMode.IsEnabled = true;
                    this.buttonPulseMode.IsEnabled = true;
                }
                this.waitingForSensorMode = false;
            }
            else
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new XTSResultDelegate(SetSensorModeResultCallback), result);
            }
        }
#endif // DCMODE_BUTTONS

        /// <summary>
        /// Callback for when peak calibration has finished
        /// </summary>
        /// <param name="result">True if it succeeded</param>
        public void PeakCalibrationResultCallback(bool result)
        {
            // Check if we are on the main ui thread or not.
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                AMOTMessageBox mb = new AMOTMessageBox();
                if (result)
                {
                    mb.Title = XTS.LocalizedResources.GetResourceString("XTSStringDCOffsetCalibrationCompleteTitle");
                    mb.Message = XTS.LocalizedResources.GetResourceString("XTSStringDCOffsetCalibrationCompleteMsg");

                    // Add calibrated sensors to list
                    if (this.sensorsPeakCalibratedSelected != null)
                    {
                        foreach (XTSSensor.XTSSensorID id in this.sensorsPeakCalibratedSelected)
                        {
                            // Check if this sensor is already in the success list
                            bool found = false;
                            foreach(XTSSensor.XTSSensorID successID in this.sensorsPeakCalibratedSuccess)
                            {
                                if ((id.cylinder == successID.cylinder) &&
                                    (id.sensor == successID.sensor))
                                {
                                    found = true;
                                    break;
                                }
                            }
                            // Add to the success list if we didn't find it
                            if (!found)
                            {
                                this.sensorsPeakCalibratedSuccess.Add(id);
                            }
                        }
                    }
                }
                else
                {
                    mb.Title = XTS.LocalizedResources.GetResourceString("XTSStringDCOffsetCalibrationFailTitle");
                    mb.Message = XTS.LocalizedResources.GetResourceString("XTSStringDCOffsetCalibrationFailMsg");
                }
                mb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OK;

                MainPage mp = (MainPage)MainPage.GetInstance();
                if (mp != null)
                {
                    mp.ShowBusy(false);
                }

                mb.Show();
                this.buttonPeakCalibration.IsEnabled = true;
            }
            else
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new XTSResultDelegate(PeakCalibrationResultCallback), result);
            }
        }

		/// <summary>
		/// Updates the sensor mode buttons with the current state
		/// </summary>
		public void UpdateSensorMode()
		{
			MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
#if DCMODE_BUTTONS
                this.buttonDCPeakHold.IsEnabled = (mp.XTSDataSource.EngineData.SensorMode != XTSEngine.XTSSensorMode.PulseMode);
#endif  // DCMODE_BUTTONS
                switch (mp.XTSDataSource.EngineData.SensorMode)
                {
                    case XTSEngine.XTSSensorMode.DCMode:
                        {
                            this.buttonDCPeakHold.IsChecked = false;
                            this.buttonDCMode.IsChecked = true;
                            this.buttonPulseMode.IsChecked = false;
                            break;
                        }
                    case XTSEngine.XTSSensorMode.PulseMode:
                        {
                            this.buttonDCPeakHold.IsChecked = false;
                            this.buttonDCMode.IsChecked = false;
                            this.buttonPulseMode.IsChecked = true;
                            break;
                        }
                    case XTSEngine.XTSSensorMode.DCPeakHold:
                        {
                            this.buttonDCPeakHold.IsChecked = true;
                            this.buttonDCMode.IsChecked = true;
                            this.buttonPulseMode.IsChecked = false;
                            break;
                        }
                    case XTSEngine.XTSSensorMode.Unknown:
                    default:
                        {
                            this.buttonDCPeakHold.IsChecked = false;
                            this.buttonDCMode.IsChecked = false;
                            this.buttonPulseMode.IsChecked = false;
                            break;
                        }
                }
#if DCMODE_BUTTONS
                bool enabled = (mp.XTSDataSource.EngineData.RPM == 0);
                this.buttonDCMode.IsEnabled = enabled;
                this.buttonDCPeakHold.IsEnabled = enabled;
#endif  // DCMODE_BUTTONS
            }
		}

        private void SensorSetup_Loaded(object sender, RoutedEventArgs e)
        {
            InitControls();
            this.buttonMilliAmps.IsChecked = !this.showMicrons;

            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.EngineData.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(EngineData_PropertyChanged);
                mp.XTSDataSource.Diagnostics.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(Diagnostics_PropertyChanged);
                CheckComms();
            }
            UpdateSensorMode();
        }

        private void SensorSetup_Unloaded(object sender, RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.Diagnostics.PropertyChanged -= Diagnostics_PropertyChanged; 
                mp.XTSDataSource.EngineData.PropertyChanged -= EngineData_PropertyChanged;
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