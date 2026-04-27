/* 
 * Diagnostics.xaml.cs
 * 
 * Main page screen for displaying the diagnostics.
 * C# partial implementation of Diagnostics.xaml silverlight user control screen.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 25/01/2012
 */

using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;

using XTS.ChildWindows;
using XTS.Controls;

namespace XTS
{
	/// <summary>
	/// Interaction logic for Diagnostics.xaml
	/// </summary>
	public partial class Diagnostics : UserControl
	{
        /// <summary>
        /// Internal data for Instance
        /// </summary>
        private static Diagnostics instance;
        /// <summary>
        /// Provides access to a single created instance of this screen
        /// </summary>
        public static Diagnostics Instance
        {
            get {
                if (instance == null)
                {
                    instance = new Diagnostics();
                }
                return instance; 
            }
            set { instance = value; }
        }

        private ItemsControl softwareVersionsDisplay = null;

        /// <summary>
        /// List of SensorStatus controls added so that we can unbind them on window unloaded
        /// </summary>
        private List<SensorStatus> statusIndicatorsSPU1 = new List<SensorStatus>();

        /// <summary>
        /// List of SensorStatus controls added so that we can unbind them on window unloaded
        /// </summary>
        private List<SensorStatus> statusIndicatorsSPU2 = new List<SensorStatus>();

        /// <summary>
        /// Default Constructor
        /// </summary>
		public Diagnostics()
		{
			this.InitializeComponent();
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

        void EngineData_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            XTSEngine engineData = sender as XTSEngine;
            if (e.PropertyName.Equals("Cylinders"))
            {
                CheckEngineData(engineData);
            }
        }

        private void CheckEngineData(XTSEngine engineData)
        {
            if ((engineData != null) && (engineData.Cylinders != null))
            {
                this.GridSensors.Visibility = Visibility.Visible;
            }
            else
            {
                this.GridSensors.Visibility = Visibility.Collapsed;
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
            bool hideSetup = true;
            bool hideAmot = true;
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                // Check current logged in user
                XTSUser user = mp.XTSDataSource.UserData.CurrentUser;
                if (user != null)
                {
                    hideSetup = user.Permissions < XTSUser.XTSUserLevel.Setup;
                    hideAmot = user.Permissions < XTSUser.XTSUserLevel.AMOT;
                }
            }
            if (hideSetup)
            {
                this.buttonAlarmOutputs.Visibility = Visibility.Collapsed;
                this.buttonEnableSensors.Visibility = Visibility.Collapsed;
                this.rectangleHideSetup.Visibility = Visibility.Visible;
            }
            else
            {
                this.buttonAlarmOutputs.Visibility = Visibility.Visible;
                this.buttonEnableSensors.Visibility = Visibility.Visible;
                this.rectangleHideSetup.Visibility = Visibility.Collapsed;
            }
            if (hideAmot)
            {
                this.buttonLiveData.Visibility = Visibility.Collapsed;
                this.buttonExportModbus.Visibility = Visibility.Collapsed;
                this.rectangleHideAMOT.Visibility = Visibility.Visible;
            }
            else
            {
                this.buttonLiveData.Visibility = Visibility.Visible;
                this.buttonExportModbus.Visibility = Visibility.Visible;
                this.rectangleHideAMOT.Visibility = Visibility.Collapsed;
            }
        }

        /// <summary>
        /// Callback for when the SPU version information has changed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void SPUs_CollectionChanged(object sender, System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
        {
            UpdateSPUs();
        }

        /// <summary>
        /// Updates the screen components based on the spu version/count etc.
        /// </summary>
        private void UpdateSPUs()
        {
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                if (mp.XTSDataSource.VersionInfo.SPUs.Count > 1)
                {
                    this.labelFirmwareSPU1.Content = string.Format("{0}.{1:X2}",
                        mp.XTSDataSource.VersionInfo.SPUs[1].Major, mp.XTSDataSource.VersionInfo.SPUs[1].Minor);
                }
                else if (mp.XTSDataSource.VersionInfo.SPUs.Count > 0)
                {
                    this.labelFirmwareSPU1.Content = string.Format("{0}.{1:X2}",
                        mp.XTSDataSource.VersionInfo.SPUs[0].Major, mp.XTSDataSource.VersionInfo.SPUs[0].Minor);
                }

                if (mp.XTSDataSource.EngineData.SPU2Fitted)
                {
                    if (mp.XTSDataSource.VersionInfo.SPUs.Count > 1)
                    {
                        this.labelFirmwareSPU2.Content = string.Format("{0}.{1:X2}",
                            mp.XTSDataSource.VersionInfo.SPUs[0].Major, mp.XTSDataSource.VersionInfo.SPUs[0].Minor);
                    }
                    else
                    {
                        this.labelFirmwareSPU2.Content = string.Format("{0}.{1:X2}", 0, 0);
                    }
                    this.GridSPU2Replace.Visibility = Visibility.Collapsed;
                    if (this.statusIndicatorsSPU2.Count > 0)
                    {
                        this.StackPanelSPU2.Visibility = Visibility.Visible;
                    }
                }
                else
                {
                    // Hide SPU 2 if we don't have it!
                    this.LabelSPU2.Visibility = Visibility.Collapsed;
                    this.GridSPU2.Visibility = Visibility.Collapsed;
                    this.PathSPU2Link.Visibility = Visibility.Collapsed;
                    this.GridSPU2Replace.Visibility = Visibility.Visible;
                    this.StackPanelSPU2.Visibility = Visibility.Collapsed;
                }

                UpdateStatusMessage(mp.XTSDataSource.General);                
            }
        }

        /// <summary>
        /// Handler for when the export button is pressed.
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
		private void buttonExport_Click(object sender, System.Windows.RoutedEventArgs e)
		{
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                SaveFileDialog sfd = new SaveFileDialog();
                sfd.DefaultExt = XTS.LocalizedResources.GetResourceString("XTSStringCsvFileExt");
                sfd.Filter = XTS.LocalizedResources.GetResourceString("XTSStringSaveCsvFileFilter");
                sfd.DefaultFileName = mp.GenerateFilename("system_info", XTS.LocalizedResources.GetResourceString("XTSStringCsvFileExt"));

                if (sfd.ShowDialog() == true)
                {
                    System.IO.Stream fileStream = sfd.OpenFile();
                    mp.XTSDataSource.SaveSystemStatus(fileStream);
                }
            }
		}

        /// <summary>
        /// Handler for when the event log button is pressed.
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
		private void buttonEventLog_Click(object sender, System.Windows.RoutedEventArgs e)
		{
            EventLogWindow elw = new EventLogWindow();
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                elw.EventLogDisplayCount = mp.XTSDataSource.General.EventLogDisplayCount;
            }
            elw.Show();
        }

        /// <summary>
        /// Handler for when the export event log button is pressed.
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
		private void buttonEventLogExport_Click(object sender, System.Windows.RoutedEventArgs e)
		{
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                SaveFileDialog sfd = new SaveFileDialog();
                sfd.DefaultExt = XTS.LocalizedResources.GetResourceString("XTSStringCsvFileExt");
                sfd.Filter = XTS.LocalizedResources.GetResourceString("XTSStringSaveCsvFileFilter");
                sfd.DefaultFileName = mp.GenerateFilename("event_log", XTS.LocalizedResources.GetResourceString("XTSStringCsvFileExt"));
                if (sfd.ShowDialog() == true)
                {
                    System.IO.Stream fileStream = sfd.OpenFile();
                    mp.XTSDataSource.SaveEventLog(fileStream);
                }
            }
		}
	
        /// <summary>
        /// Handler for when the enable sensors button is pressed.
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
		private void buttonEnableSensors_Click(object sender, System.Windows.RoutedEventArgs e)
		{
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
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
                        if (sensor.Status != XTSSensorStatus.Disabled)
                        {
                            sdw.SelectedSensors.Add(count);
                        }
                        count++;
                    }
                }
                sdw.Title = "Select enabled sensors";
                sdw.Closed += new System.EventHandler(sdw_Closed);
                sdw.Show();
            }
        }

        /// <summary>
        /// Callback for when sensor select closed
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
                    for (int i = 0; i < sdw.Sensors.Count; i++)
                    {
                        mp.XTSDataSource.SetSensorEnabled(sdw.Sensors[i], sdw.SelectedSensors.Contains(i));
                    }
                }
            }
            sdw.Closed -= sdw_Closed;
        }

        /// <summary>
        /// Callback for enable/disable alarm outputs button
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
		private void buttonAlarmOutputs_Click(object sender, System.Windows.RoutedEventArgs e)
		{
            TestAlarmOutputsWindow taow = new TestAlarmOutputsWindow();
            taow.Show();
		}

        /// <summary>
        /// Handler for when the export modbus button is pressed.
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
		private void buttonExportModbus_Click(object sender, System.Windows.RoutedEventArgs e)
		{
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                SaveFileDialog sfd = new SaveFileDialog();
                sfd.DefaultExt = XTS.LocalizedResources.GetResourceString("XTSStringCsvFileExt");
                sfd.Filter = XTS.LocalizedResources.GetResourceString("XTSStringSaveCsvFileFilter");
                sfd.DefaultFileName = mp.GenerateFilename("accumulated_speedtable", XTS.LocalizedResources.GetResourceString("XTSStringCsvFileExt"));
                
                if (sfd.ShowDialog() == true)
                {
                    System.IO.Stream fileStream = sfd.OpenFile();
                    mp.XTSDataSource.SaveSpeedAccumulatedTableConfig(fileStream);
                }

            }
		}

        /// <summary>
        /// Handler for when the live data button is pressed.
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
		private void buttonLiveData_Click(object sender, System.Windows.RoutedEventArgs e)
		{
            LiveDataWindow ldw = new LiveDataWindow();
            ldw.Show();
		}

        private void Diagnostics_Loaded(object sender, RoutedEventArgs e)
        {
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                mp.XTSDataSource.VersionInfo.SPUs.CollectionChanged += new System.Collections.Specialized.NotifyCollectionChangedEventHandler(SPUs_CollectionChanged);
                UpdateSPUs();

                if (mp.XTSDataSource.EngineData.SEDM == null)
                {
                    this.gridSEDM.Visibility = Visibility.Collapsed;
                }
                else
                {
                    /*
                    Binding b = new Binding();
                    b.Source = mp.XTSDataSource.EngineData.SEDM;
                    b.Path = new PropertyPath("Connection");
                    b.Mode = BindingMode.OneWay;
                    b.Converter = new XTSStatusConverter();
                    this.rectSEDMInput.SetBinding(System.Windows.Shapes.Rectangle.FillProperty, b);

                    b = new Binding();
                    b.Source = mp.XTSDataSource.EngineData.SEDM;
                    b.Path = new PropertyPath("Connection");
                    b.Mode = BindingMode.OneWay;
                    b.Converter = new XTSStatusConverter();
                    this.labelSEDMInput.SetBinding(Label.ContentProperty, b);
                     * */
                }
                if (mp.XTSDataSource.EngineData.WIO == null)
                {
                    this.gridWIO.Visibility = Visibility.Collapsed;
                }
                else
                {
                    /*
                    Binding b = new Binding();

                    b.Source = mp.XTSDataSource.Diagnostics.WioStatus;
                    b.Path = new PropertyPath("WioStatus");
                    b.Mode = BindingMode.OneWay;
                    b.Converter = new XTSStatusConverter();
                    this.rectWIOInput.SetBinding(System.Windows.Shapes.Rectangle.FillProperty, b);
                    
                    b = new Binding();
                    b.Source = mp.XTSDataSource.Diagnostics.WioStatus;
                    b.Path = new PropertyPath("WioStatus");
                    b.Mode = BindingMode.OneWay;
                    b.Converter = new XTSStatusConverter();
                    this.labelWIOInput.SetBinding(Label.ContentProperty, b);
                     * */
                }

                // Add sensor status controls
                foreach (XTSCylinder cylinder in mp.XTSDataSource.EngineData.Cylinders)
                {
                    IXTSDataProvider xts = ((MainPage)MainPage.GetInstance()).XTSDataSource;
                    uint cylinderIndex = (uint)xts.EngineData.Cylinders.Count - cylinder.Index + 1;

                    foreach (XTSSensor sensor in cylinder.Sensors)
                    {
                        SensorStatus sensorStatus;
                        if (xts.EngineData.CylinderReverse == true)
                        {
                            sensorStatus = new SensorStatus(sensor.Cylinder, sensor.Index);
                        }
                        else
                        {
                            sensorStatus = new SensorStatus(sensor.Cylinder, sensor.Index);
                        }
                        sensorStatus.Margin = new Thickness(0, 0, 2, 0);

                        Binding b = new Binding();
                        b.Source = sensor;
                        b.Path = new PropertyPath("Status");
                        b.Mode = BindingMode.OneWay;
                        sensorStatus.SetBinding(SensorStatus.StatusProperty, b);

                        if (xts.EngineData.CylinderReverse == true)
                        {
                            if (cylinder.Index <= mp.XTSDataSource.EngineData.CylinderCountSPU1)
                            {
                            
                                this.StackPanelSPU2.Children.Add(sensorStatus);
                                this.statusIndicatorsSPU2.Add(sensorStatus);
                                this.labelStatusSpu2.Content = string.Format("SPU1");
                            }
                            else
                            {
                                this.StackPanelSPU1.Children.Add(sensorStatus);
                                this.statusIndicatorsSPU1.Add(sensorStatus);
                                this.labelStatusSpu1.Content = string.Format("SPU2");
                            }
                        }
                        else
                        {
                            if (cylinder.Index <= mp.XTSDataSource.EngineData.CylinderCountSPU1)
                            {

                                this.StackPanelSPU1.Children.Add(sensorStatus);
                                this.statusIndicatorsSPU1.Add(sensorStatus);
                                this.labelStatusSpu1.Content = string.Format("SPU1");
                            }
                            else
                            {
                                this.StackPanelSPU2.Children.Add(sensorStatus);
                                this.statusIndicatorsSPU2.Add(sensorStatus);
                                this.labelStatusSpu2.Content = string.Format("SPU2");
                            }
                        }
                    }
                }
                if (this.statusIndicatorsSPU1.Count == 0)
                {
                    this.StackPanelSPU1.Visibility = Visibility.Collapsed;
                }
                if (this.statusIndicatorsSPU2.Count == 0)
                {
                    this.StackPanelSPU2.Visibility = Visibility.Collapsed;
                }

                mp.XTSDataSource.UserData.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(UserData_PropertyChanged);

                UserChanged();

                TextBlock riaVersion = new TextBlock();
                riaVersion.Text = mp.XTSDataSource.VersionInfo.Application.ToString();
                this.contentScrollSWVersions.Children.Add(riaVersion);
                this.softwareVersionsDisplay = new ItemsControl();
                this.softwareVersionsDisplay.ItemsSource = mp.XTSDataSource.VersionInfo.SoftwareModules;
                this.contentScrollSWVersions.Children.Add(this.softwareVersionsDisplay);

                mp.XTSDataSource.Diagnostics.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(Diagnostics_PropertyChanged);
                mp.XTSDataSource.EngineData.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(EngineData_PropertyChanged);

                CheckComms();
                CheckEngineData(mp.XTSDataSource.EngineData);
            }
        }

        private void Diagnostics_Unloaded(object sender, RoutedEventArgs e)
        {
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (this.softwareVersionsDisplay != null)
            {
                this.softwareVersionsDisplay.ClearValue(ItemsControl.ItemsSourceProperty);
            }
            if (mp != null)
            {
                mp.XTSDataSource.EngineData.PropertyChanged -= EngineData_PropertyChanged;
                mp.XTSDataSource.Diagnostics.PropertyChanged -= Diagnostics_PropertyChanged;
                mp.XTSDataSource.UserData.PropertyChanged -= UserData_PropertyChanged;
            }
            //this.rectSEDMInput.ClearValue(System.Windows.Shapes.Rectangle.FillProperty);
            //this.labelSEDMInput.ClearValue(Label.ContentProperty);
            //this.rectWIOInput.ClearValue(System.Windows.Shapes.Rectangle.FillProperty);
            //this.labelWIOInput.ClearValue(Label.ContentProperty);
            foreach (SensorStatus sensorStatus in this.statusIndicatorsSPU1)
            {
                sensorStatus.ClearValue(SensorStatus.StatusProperty);
            }
            foreach (SensorStatus sensorStatus in this.statusIndicatorsSPU2)
            {
                sensorStatus.ClearValue(SensorStatus.StatusProperty);
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
                        this.gridSPU2Comms.Opacity = 1.0;
                        if (diagnostics.SPU2Comms.HasValue &&
                            diagnostics.SPU2Comms.Value)
                        {
                            this.gridSPU2Firmware.Opacity = 1.0;
                            this.rpmSPU2.CommsOK = true;
                            this.rpmSPU2.Opacity = 1.0;
                            this.StackPanelSPU2.Opacity = 1.0;
                        }
                        else
                        {
                            this.gridSPU2Firmware.Opacity = 0.5;
                            this.rpmSPU2.CommsOK = false;
                            this.rpmSPU2.Opacity = 0.5;
                            this.StackPanelSPU2.Opacity = 0.5;
                        }
                    }

                    this.gridAlarmSystem.Opacity = 1.0;
                    this.gridAlarm.Opacity = 1.0;
                    this.gridAlarmSlowdown.Opacity = 1.0;

                    this.gridWIO.Opacity = 1.0;
                    this.gridSEDM.Opacity = 1.0;

                    this.rpmSPU1.CommsOK = true;
                    this.rpmSPU1.Opacity = 1.0;
                    this.gridBattery.Opacity = 1.0;
                    this.gridSDCard.Opacity = 1.0;
                    this.gridFirmware.Opacity = 1.0;

                    this.gridRuntime.Opacity = 1.0;
                    this.buttonExport.IsEnabled = true;
                    this.buttonEnableSensors.IsEnabled = true;
                    this.buttonAlarmOutputs.IsEnabled = true;
                    this.buttonLiveData.IsEnabled = true;
                    this.buttonExportModbus.IsEnabled = true;
                    this.StackPanelSPU1.Opacity = 1.0;
                }
                else
                {
                    this.gridAlarmSystem.Opacity = 0.5;
                    this.gridAlarm.Opacity = 0.5;
                    this.gridAlarmSlowdown.Opacity = 0.5;

                    this.gridWIO.Opacity = 0.5;
                    this.gridSEDM.Opacity = 0.5;

                    this.rpmSPU1.CommsOK = false;
                    this.rpmSPU1.Opacity = 0.5;
                    this.gridBattery.Opacity = 0.5;
                    this.gridSDCard.Opacity = 0.5;
                    this.gridFirmware.Opacity = 0.5;

                    if (engineData.SPU2Fitted)
                    {
                        this.gridSPU2Comms.Opacity = 0.5;
                        this.gridSPU2Firmware.Opacity = 0.5;
                        this.rpmSPU2.CommsOK = false;
                        this.rpmSPU2.Opacity = 0.5;
                    }
                    this.gridRuntime.Opacity = 0.5;
                    this.buttonExport.IsEnabled = false;
                    this.buttonEnableSensors.IsEnabled = false;
                    this.buttonAlarmOutputs.IsEnabled = false;
                    this.buttonLiveData.IsEnabled = false;
                    this.buttonExportModbus.IsEnabled = false;
                    this.StackPanelSPU1.Opacity = 0.5;
                    this.StackPanelSPU2.Opacity = 0.5;
                }
                this.gridSoftware.Opacity = 1.0;
                this.buttonEventLog.IsEnabled = true;
                this.buttonExportEventLog.IsEnabled = true;
            }
            else
            {
                this.gridAlarmSystem.Opacity = 0.5;
                this.gridAlarm.Opacity = 0.5;
                this.gridAlarmSlowdown.Opacity = 0.5;

                this.gridWIO.Opacity = 0.5;
                this.gridSEDM.Opacity = 0.5;

                this.rpmSPU1.CommsOK = false;
                this.rpmSPU1.Opacity = 0.5;
                this.gridBattery.Opacity = 0.5;
                this.gridSDCard.Opacity = 0.5;
                this.gridFirmware.Opacity = 0.5;

                if (engineData.SPU2Fitted)
                {
                    this.gridSPU2Comms.Opacity = 0.5;
                    this.gridSPU2Firmware.Opacity = 0.5;
                    this.rpmSPU2.CommsOK = false;
                    this.rpmSPU2.Opacity = 0.5;
                }
                this.gridRuntime.Opacity = 0.5;
                this.buttonExport.IsEnabled = false;
                this.buttonEventLog.IsEnabled = false;
                this.buttonExportEventLog.IsEnabled = false;
                this.buttonEnableSensors.IsEnabled = false;
                this.buttonAlarmOutputs.IsEnabled = false;
                this.gridSoftware.Opacity = 0.5;
                this.buttonLiveData.IsEnabled = false;
                this.buttonExportModbus.IsEnabled = false;
                this.StackPanelSPU1.Opacity = 0.5;
                this.StackPanelSPU2.Opacity = 0.5;
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
                messageID = "XTSStringRegistered";
            }
            else
            {
                messageID = general.GetMessageString(out args);
                if (messageID == null)
                {
                    messageID = "XTSStringRegistered";
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
                        if ((short)errCode == 47)
                        {
                            errorMessages = XTS.LocalizedResources.GetResourceString("XTSStringCoreErrorIMO");
                        }                        
                    }
                    finalMessage = errorMessages;
                }
                else
                {
                    finalMessage = XTS.LocalizedResources.GetResourceString(messageID);
                }
            }            
            else
            {
                finalMessage = XTS.LocalizedResources.GetResourceString("XTSStringRegistered");
            }

            this.labelRegister.Content = finalMessage;
            this.labelSerialNumner.Content = mp.XTSDataSource.EngineData.XtsSerialNumber;
        }
	}
}