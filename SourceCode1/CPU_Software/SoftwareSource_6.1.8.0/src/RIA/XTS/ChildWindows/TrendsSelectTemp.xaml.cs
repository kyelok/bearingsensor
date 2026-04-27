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

namespace XTS.ChildWindows
{
    /// <summary>
    /// Child window class for selecting which trends are currently displayed.
    /// </summary>
    public partial class TrendsSelectTemp : ChildWindow
    {
        /// <summary>
        /// The number of sensors shown on a row of the sensor select stack
        /// </summary>
        private int sensorsPerRow = 0;

        public List<XTSTrendDetail> selectedTrends;
        public List<XTSTrendDetail> unselectedTrends;  

        /// <summary>
        /// Default Constructor
        /// </summary>
        public TrendsSelectTemp()
        {
            InitializeComponent();
        }

        /// <summary>
        /// The maximum number of selectable items
        /// </summary>
        public const int MAX_LIST_ITEMS = 28; 

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
            
            this.TemperaturePanel0.Children.Clear();
            this.TemperaturePanel1.Children.Clear();
            this.TemperaturePanel2.Children.Clear();
            this.TemperaturePanel3.Children.Clear();
            this.TemperaturePanel4.Children.Clear();
                        
            MainPage mp = MainPage.GetInstance() as MainPage;

            this.sensorsPerRow = mp.XTSDataSource.EngineData.Cylinders.Count;
         
            for (int Sensor = 1; Sensor <= mp.XTSDataSource.EngineData.TemperatureSensors; Sensor++)
            {
                ToggleButton cylinder_tb = CreateToggleButton(Sensor.ToString());

                if (Sensor <= this.sensorsPerRow)
                {
                    this.TemperaturePanel0.Children.Add(cylinder_tb);
                }
                else if (Sensor <= (2* this.sensorsPerRow))
                {
                    this.TemperaturePanel1.Children.Add(cylinder_tb);
                }
                else if (Sensor <= (3 * this.sensorsPerRow))
                {
                    this.TemperaturePanel2.Children.Add(cylinder_tb);
                }
                else if (Sensor <= (4 * this.sensorsPerRow))
                {
                    this.TemperaturePanel3.Children.Add(cylinder_tb);
                }
                else if (Sensor <= (5 * this.sensorsPerRow))
                {
                    this.TemperaturePanel4.Children.Add(cylinder_tb);
                } 

                foreach (XTSTrend trend in mp.XTSDataSource.Trends.TrendConfiguration)
                {
                    if (trend.Detail.TrendType == XTSTrendDetail.XTSTrendType.Temperature)
                    {
                        XTSTrendTemperature trendSensor = (XTSTrendTemperature)trend.Detail;
                        if (trendSensor.Index == Sensor)
                        {
                            cylinder_tb.IsChecked = true;
                        }
                    }
                }
            }

            if (this.TemperaturePanel0.Children.Count == 0) this.TemperaturePanel0.Visibility = Visibility.Collapsed;
            if (this.TemperaturePanel1.Children.Count == 0) this.TemperaturePanel1.Visibility = Visibility.Collapsed;
            if (this.TemperaturePanel2.Children.Count == 0) this.TemperaturePanel2.Visibility = Visibility.Collapsed;
            if (this.TemperaturePanel3.Children.Count == 0) this.TemperaturePanel3.Visibility = Visibility.Collapsed;
            if (this.TemperaturePanel4.Children.Count == 0) this.TemperaturePanel4.Visibility = Visibility.Collapsed;
            if (mp.XTSDataSource.EngineData.TemperatureSensors == 0) this.TemperatureText.Visibility = Visibility.Collapsed;
                        
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

            uint Sensor = 0;
            foreach (XTSBearTemperature channel in mp.XTSDataSource.EngineData.Bearingtemperature)
            {
                ToggleButton sensor_tb = null;
                int stackIndex = (int)Sensor % this.sensorsPerRow;
                if (Sensor < this.sensorsPerRow)
                {
                    sensor_tb = (ToggleButton)this.TemperaturePanel0.Children[stackIndex];
                }
                else if (Sensor < (2 * this.sensorsPerRow))
                {
                    sensor_tb = (ToggleButton)this.TemperaturePanel1.Children[stackIndex];
                }
                else if (Sensor < (3 * this.sensorsPerRow))
                {
                    sensor_tb = (ToggleButton)this.TemperaturePanel2.Children[stackIndex];
                }
                else if (Sensor < (4 * this.sensorsPerRow))
                {
                    sensor_tb = (ToggleButton)this.TemperaturePanel3.Children[stackIndex];
                }
                else if (Sensor < (5 * this.sensorsPerRow))
                {
                    sensor_tb = (ToggleButton)this.TemperaturePanel4.Children[stackIndex];
                }

                if (sensor_tb != null)
                {
                    // Determine if the checkbox is set for this sensor
                    if (sensor_tb.IsChecked == true)
                    {                        
                        selectedTrends.Add(new XTSTrendTemperature(channel.Channelname, Sensor+1));                        
                    }
                    else
                    {
                        //unselectedTrends.Add(new XTSTrendRPM(null));
                        unselectedTrends.Add(new XTSTrendTemperature(null, Sensor+1));
                    }
                }

                Sensor++;
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
    }
}

