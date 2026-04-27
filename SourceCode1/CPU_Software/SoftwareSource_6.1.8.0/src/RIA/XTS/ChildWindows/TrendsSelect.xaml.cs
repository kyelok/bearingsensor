/* 
 * TrendsSelect.xaml.cs
 * 
 * Popup screen to allow selection of trends in a trend configuration.
 * C# partial implementation of TrendsSelect.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 02/03/2012
 */

using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Media;
using XTS.ChildWindows;

namespace XTS.ChildWindows
{
    /// <summary>
    /// Child window class for selecting which trends are currently displayed.
    /// </summary>
    public partial class TrendsSelect : ChildWindow
    {
        /// <summary>
        /// The number of sensors shown on a row of the sensor select stack
        /// </summary>
        private int sensorsPerRow = 0;

        /// <summary>
        /// Default Constructor
        /// </summary>
        public TrendsSelect()
        {
            InitializeComponent();
        }

        /// <summary>
        /// The maximum number of selectable items
        /// </summary>
        public const int MAX_LIST_ITEMS = 28;

        private List<XTSTrendDetail> selectedTrends;
        private List<XTSTrendDetail> unselectedTrends;

        private TrendsSelectTemp ts;

        /// <summary>
        /// Callback for the window being loaded.  Populates the window with the sensors/cylinders within the engine components.
        /// </summary>
        /// <param name="sender">The object that raised the event.</param>
        /// <param name="e">The event arguments.</param>
        void TrendsSelect_Loaded(object sender, RoutedEventArgs e)
        {
            ShowSelectedConfigItems();
        }

        /// <summary>
        /// Shows the selected TrendConfiguration items.
        /// </summary>
        private void ShowSelectedConfigItems()
        {
            // Clear window controls to default state
            this.CylindersPanel.Children.Clear();
            this.CylindersDeviationPanel.Children.Clear();
            this.SensorsPanel0.Children.Clear();
            this.SensorsDeviationPanel0.Children.Clear();
            this.SensorsPanel1.Children.Clear();
            this.SensorsDeviationPanel1.Children.Clear();            
            this.RPM.IsChecked = false;
            this.WIOPercent.IsChecked = false;
            this.PPM.IsChecked = false;
            this.mv.IsChecked = false;
            this.CppMa.IsChecked = false;
            this.CppPercent.IsChecked = false;

            this.ts = new TrendsSelectTemp();

            MainPage mp = MainPage.GetInstance() as MainPage;

            this.sensorsPerRow = mp.XTSDataSource.EngineData.Cylinders.Count;

            if(mp.XTSDataSource.EngineData.TemperatureSensors == 0) this.TmpButton.Visibility = Visibility.Collapsed;
            else this.TmpButton.Visibility = Visibility.Visible;

            int sensorCount = 0;
            foreach (XTSCylinder cylinder in mp.XTSDataSource.EngineData.Cylinders)
            {
                foreach (XTSSensor sensor in cylinder.Sensors)
                {
                    ToggleButton sensor_tb = CreateToggleButton(cylinder.Index + "." + sensor.Index);
                    ToggleButton deviation_tb = CreateToggleButton(cylinder.Index + "." + sensor.Index);
                    if (sensorCount < this.sensorsPerRow)
                    {
                        this.SensorsPanel0.Children.Add(sensor_tb);
                        this.SensorsDeviationPanel0.Children.Add(deviation_tb);
                    }
                    else
                    {
                        this.SensorsPanel1.Children.Add(sensor_tb);
                        this.SensorsDeviationPanel1.Children.Add(deviation_tb);
                    }
                    foreach (XTSTrend trend in mp.XTSDataSource.Trends.TrendConfiguration)
                    {
                        if (trend.Detail.TrendType == XTSTrendDetail.XTSTrendType.Sensor)
                        {
                            XTSTrendSensor trendSensor = (XTSTrendSensor)trend.Detail;
                            if ((trendSensor.Cylinder == sensor.Cylinder) &&
                                (trendSensor.Index == sensor.Index))
                            {
                                sensor_tb.IsChecked = true;
                            }
                        }
                        else if (trend.Detail.TrendType == XTSTrendDetail.XTSTrendType.SensorDeviation)
                        {
                            XTSTrendSensorDeviation trendSensor = (XTSTrendSensorDeviation)trend.Detail;
                            if ((trendSensor.Cylinder == sensor.Cylinder) &&
                                (trendSensor.Index == sensor.Index))
                            {
                                deviation_tb.IsChecked = true;
                            }
                        }
                    }
                    sensorCount++;
                }

                ToggleButton cylinder_tb = CreateToggleButton(cylinder.Index.ToString());
                ToggleButton cylinder_deviation_tb = CreateToggleButton(cylinder.Index.ToString());

                this.CylindersPanel.Children.Add(cylinder_tb);
                this.CylindersDeviationPanel.Children.Add(cylinder_deviation_tb);

                foreach (XTSTrend trend in mp.XTSDataSource.Trends.TrendConfiguration)
                {
                    if (trend.Detail.TrendType == XTSTrendDetail.XTSTrendType.Cylinder)
                    {
                        XTSTrendCylinder trendCylinder = (XTSTrendCylinder)trend.Detail;
                        if (trendCylinder.Index == cylinder.Index)
                        {
                            cylinder_tb.IsChecked = true;
                        }
                    }
                    else if (trend.Detail.TrendType == XTSTrendDetail.XTSTrendType.CylinderDeviation)
                    {
                        XTSTrendCylinderDeviation trendCylinder = (XTSTrendCylinderDeviation)trend.Detail;
                        if (trendCylinder.Index == cylinder.Index)
                        {
                            cylinder_deviation_tb.IsChecked = true;
                        }
                    }
                }
            }                                    
            
            foreach (XTSTrend trend in mp.XTSDataSource.Trends.TrendConfiguration)
            {
                if (trend.Detail.TrendType == XTSTrendDetail.XTSTrendType.RPM)
                {
                    RPM.IsChecked = true;
                }
                else if (trend.Detail.TrendType == XTSTrendDetail.XTSTrendType.WIO)
                {
                    WIOPercent.IsChecked = true;
                }
                else if (trend.Detail.TrendType == XTSTrendDetail.XTSTrendType.WIOPPM)
                {
                    PPM.IsChecked = true;
                }
                else if (trend.Detail.TrendType == XTSTrendDetail.XTSTrendType.SEDMmV)
                {
                    mv.IsChecked = true;
                }
                else if (trend.Detail.TrendType == XTSTrendDetail.XTSTrendType.CPPMA)
                {
                    this.CppMa.IsChecked = true;
                }
                else if (trend.Detail.TrendType == XTSTrendDetail.XTSTrendType.CPPPCNT)
                {
                    this.CppPercent.IsChecked = true;
                }
            }

            if (mp.XTSDataSource.EngineData.SEDM == null) mv.IsEnabled = false;
            else mv.IsEnabled = true;

            if (mp.XTSDataSource.EngineData.WIO == null) { WIOPercent.IsEnabled = false; PPM.IsEnabled = false; }
            else { WIOPercent.IsEnabled = true; PPM.IsEnabled = true; }

            if (mp.XTSDataSource.EngineData.CPP == null) { this.CppPercent.IsEnabled = false; this.CppMa.IsEnabled = false; }
            else { this.CppMa.IsEnabled = true; this.CppPercent.IsEnabled = true; }
        }

        /// <summary>
        /// Created a toggle button with the correct parameters
        /// </summary>
        /// <param name="content">Text to display within the button.</param>
        /// <returns>The created button.</returns>
        private ToggleButton CreateToggleButton(String content)
        {
            ToggleButton tb = new ToggleButton();
            tb.Content = content;

            tb.Margin = new Thickness(0, 4, 4, 0);
            tb.Width = 44;
            tb.Height = 44;

            tb.Style = Application.Current.Resources["ToggleButtonStyleAMOT"] as Style;
            tb.ContentTemplate = Application.Current.Resources["ContentTemplateAMOTButton"] as DataTemplate;
            tb.Foreground = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTText"]);
            tb.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTButton"]);

            return tb;
        }

        /// <summary>
        /// Callback for when the user pressed the OK button. 
        /// We iterate through the trends list and removing items the user no longer wants to see
        /// and added ones that they do. 
        /// We also maintain the order that the user has the trends in.
        /// </summary>
        /// <param name="sender">The object that raised the event.</param>
        /// <param name="e">The event arguments.</param>
        private void OKButton_Click(object sender, RoutedEventArgs e)
        {
            MainPage mp = MainPage.GetInstance() as MainPage;

            selectedTrends = new List<XTSTrendDetail>();
            unselectedTrends = new List<XTSTrendDetail>();

            int cylinderCount = 0;
            int sensorCount = 0;
            foreach (XTSCylinder cylinder in mp.XTSDataSource.EngineData.Cylinders)
            {
                ToggleButton cylinder_tb = (ToggleButton) this.CylindersPanel.Children[cylinderCount];
                ToggleButton cylinderDeviation_tb = (ToggleButton) this.CylindersDeviationPanel.Children[cylinderCount];

                // Determine if the checkbox is set for this cylinder
                if (cylinder_tb.IsChecked == true)
                {
                    selectedTrends.Add(new XTSTrendCylinder(
                        XTS.LocalizedResources.GetResourceString("XTSStringTrendDefaultCylinder", new object[] { cylinder.Index }),
                        cylinder.Index));
                }
                else
                {
                    unselectedTrends.Add(new XTSTrendCylinder(null, cylinder.Index));
                }
                // Determine if the checkbox is set for this cylinder deviation
                if (cylinderDeviation_tb.IsChecked == true)
                {
                    selectedTrends.Add(new XTSTrendCylinderDeviation(
                        XTS.LocalizedResources.GetResourceString("XTSStringTrendDefaultCylinderDeviation", new object[] { cylinder.Index }),
                        cylinder.Index));
                }
                else
                {
                    unselectedTrends.Add(new XTSTrendCylinderDeviation(null, cylinder.Index));
                }
                foreach (XTSSensor sensor in cylinder.Sensors)
                {
                    ToggleButton sensor_tb = null;
                    ToggleButton sensorDeviation_tb = null;
                    int stackIndex = sensorCount % this.sensorsPerRow;
                    if (sensorCount < this.sensorsPerRow)
                    {
                        sensor_tb = (ToggleButton)this.SensorsPanel0.Children[stackIndex];
                        sensorDeviation_tb = (ToggleButton)this.SensorsDeviationPanel0.Children[stackIndex];
                    }
                    else
                    {
                        sensor_tb = (ToggleButton)this.SensorsPanel1.Children[stackIndex];
                        sensorDeviation_tb = (ToggleButton)this.SensorsDeviationPanel1.Children[stackIndex];
                    }

                    if (sensor_tb != null)
                    {
                        // Determine if the checkbox is set for this sensor
                        if (sensor_tb.IsChecked == true)
                        {
                            selectedTrends.Add(new XTSTrendSensor(
                                XTS.LocalizedResources.GetResourceString("XTSStringTrendDefaultSensor", new object[] { sensor.Cylinder, sensor.Index }),
                                sensor.Cylinder, sensor.Index));
                        }
                        else
                        {
                            unselectedTrends.Add(new XTSTrendSensor(null, sensor.Cylinder, sensor.Index));
                        }
                    }
                    if (sensorDeviation_tb != null)
                    {
                        // Determine if the checkbox is set for this sensor deviation
                        if (sensorDeviation_tb.IsChecked == true)
                        {
                            selectedTrends.Add(new XTSTrendSensorDeviation(
                                XTS.LocalizedResources.GetResourceString("XTSStringTrendDefaultSensorDeviation", new object[] { sensor.Cylinder, sensor.Index }),
                                sensor.Cylinder, sensor.Index));
                        }
                        else
                        {
                            unselectedTrends.Add(new XTSTrendSensorDeviation(null, sensor.Cylinder, sensor.Index));
                        }
                    }
                    sensorCount++;
                }
                cylinderCount++;
            }            
                        
            if (this.RPM.IsChecked == true)
            {
                selectedTrends.Add(new XTSTrendRPM(XTS.LocalizedResources.GetResourceString("XTSStringTrendDefaultRPM")));
            }
            else
            {
                unselectedTrends.Add(new XTSTrendRPM(null));
            }
            if (this.WIOPercent.IsChecked == true)
            {
                selectedTrends.Add(new XTSTrendWIO(XTS.LocalizedResources.GetResourceString("XTSStringTrendDefaultWIOPct")));
            }
            else
            {
                unselectedTrends.Add(new XTSTrendWIO(null));
            }
            if (this.PPM.IsChecked == true)
            {
                selectedTrends.Add(new XTSTrendWIOPPM(XTS.LocalizedResources.GetResourceString("XTSStringTrendDefaultWIOPPM")));
            }
            else
            {
                unselectedTrends.Add(new XTSTrendWIOPPM(null));
            }
            if (this.mv.IsChecked == true)
            {
                selectedTrends.Add(new XTSTrendSEDMmV(XTS.LocalizedResources.GetResourceString("XTSStringTrendDefaultSEDMmV")));
            }
            else
            {
                unselectedTrends.Add(new XTSTrendSEDMmV(null));
            }

            if (this.CppPercent.IsChecked == true)
            {
                selectedTrends.Add(new XTSTrendCPPPER(XTS.LocalizedResources.GetResourceString("XTSStringTrendDefaultCPPPct")));
            }
            else
            {
                unselectedTrends.Add(new XTSTrendCPPPER(null));
            }

            if (this.CppMa.IsChecked == true)
            {
                selectedTrends.Add(new XTSTrendCPPMA(XTS.LocalizedResources.GetResourceString("XTSStringTrendDefaultCPPmA")));
            }
            else
            {
                unselectedTrends.Add(new XTSTrendCPPMA(null));
            }

            if (ts.selectedTrends != null)
            {
                foreach (XTSTrendDetail trendItem in ts.selectedTrends)
                {
                    this.selectedTrends.Add(trendItem);
                }
            }
            if (ts.unselectedTrends != null)
            {
                foreach (XTSTrendDetail trendItem in ts.unselectedTrends)
                {
                    this.unselectedTrends.Add(trendItem);
                }
            }

            // Check number of selected items is within the limit
            if (selectedTrends.Count > TrendsSelect.MAX_LIST_ITEMS)
            {
                AMOTMessageBox amb = new AMOTMessageBox();
                amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OK;
                amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringErrorExclamation");
                amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringTooManyTrendsInConfig",
                    new object[] { TrendsSelect.MAX_LIST_ITEMS,
                                   selectedTrends.Count - TrendsSelect.MAX_LIST_ITEMS } );
                amb.Show();
            }
            else
            {
                mp.XTSDataSource.UpdateTrendConfig(selectedTrends, unselectedTrends);
                this.DialogResult = true;
            }
        }

        /// <summary>
        /// Callback for user pressing the cancel button.
        /// </summary>
        /// <param name="sender">The object that raised the event.</param>
        /// <param name="e">The event arguments.</param>
        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }

        private void TmpButton_Click(object sender, RoutedEventArgs e)
        {
            this.ts = new TrendsSelectTemp();
            // Do not need a close callback as trend configuration management is handled by
            // the TrendsSelect window internally.
            ts.Show();            
        }
    }
}

