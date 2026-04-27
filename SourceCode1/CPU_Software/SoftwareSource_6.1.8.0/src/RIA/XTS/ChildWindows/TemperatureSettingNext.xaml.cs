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
using XTS.Controls;
using System.Threading;

namespace XTS.ChildWindows
{
    /// <summary>
    /// Child window class for selecting which trends are currently displayed.
    /// </summary>
    public partial class TemperatureSettingsNext : ChildWindow
    {
        /// <summary>
        /// The number of sensors shown on a row of the sensor select stack
        /// </summary>
        private int sensorsPerRow = 0;
        
        public List<XTSBearTemperature> updatedTemperatureToServer;
        public bool hasNoError;

        private const int SensorPerPge = 30;
        /// <summary>
        /// Default Constructor
        /// </summary>
        public TemperatureSettingsNext()
        {
            InitializeComponent();
        }

        /// <summary>
        /// The list of temperatures
        /// </summary>
        //private List<SensorTemperature> updatedTemperature = new List<SensorTemperature>();  

        /// <summary>
        /// Callback for the window being loaded.  Populates the window with the sensors/cylinders within the engine components.
        /// </summary>
        /// <param name="sender">The object that raised the event.</param>
        /// <param name="e">The event arguments.</param>
        void TemperatureSettings_Loaded(object sender, RoutedEventArgs e)
        {
            ShowSelectedConfigItems(0);
        }

        /// <summary>
        /// Shows the selected TrendConfiguration items.
        /// </summary>
        private void ShowSelectedConfigItems(int loadMode)
        {
            // Clear window controls to default state            
            this.TemperaturePanel0.Children.Clear();
            this.TemperaturePanel1.Children.Clear();
            this.TemperaturePanel2.Children.Clear();
            this.TemperaturePanel3.Children.Clear();
            this.TemperaturePanel4.Children.Clear();
            
            MainPage mp = MainPage.GetInstance() as MainPage;

            this.sensorsPerRow = (mp.XTSDataSource.EngineData.TemperatureSensors - SensorPerPge) / 5;
            if (((mp.XTSDataSource.EngineData.TemperatureSensors - SensorPerPge) % 5 != 0))
            {
                this.sensorsPerRow += 1;
            }               
         
            uint Sensor = 1;                        
            foreach (XTSBearTemperature tempsensor in mp.XTSDataSource.EngineData.Bearingtemperature)            
            {
                if (Sensor > SensorPerPge)
                {
                    SensorTemperature cylinder_tb = new SensorTemperature(tempsensor.Enable, tempsensor.Channelname, tempsensor.AlarmLevel, tempsensor.SlowdownLevel);
                    if (loadMode == 0) //Load true status
                    {
                        cylinder_tb = new SensorTemperature(tempsensor.Enable, tempsensor.Channelname, tempsensor.AlarmLevel, tempsensor.SlowdownLevel);
                    }
                    else if (loadMode == 1) //Enable all
                    {
                        cylinder_tb = new SensorTemperature(true, tempsensor.Channelname, tempsensor.AlarmLevel, tempsensor.SlowdownLevel);
                    }
                    else if (loadMode == 2) //Disable all
                    {
                        cylinder_tb = new SensorTemperature(false, tempsensor.Channelname, tempsensor.AlarmLevel, tempsensor.SlowdownLevel);
                    }

                    cylinder_tb.checkBoxEnable.Content = Sensor.ToString();

                    if ((Sensor - SensorPerPge) <= this.sensorsPerRow)
                    {
                        this.TemperaturePanel0.Children.Add(cylinder_tb);
                    }
                    else if ((Sensor - SensorPerPge) <= (2 * this.sensorsPerRow))
                    {
                        this.TemperaturePanel1.Children.Add(cylinder_tb);
                    }
                    else if ((Sensor - SensorPerPge) <= (3 * this.sensorsPerRow))
                    {
                        this.TemperaturePanel2.Children.Add(cylinder_tb);
                    }
                    else if ((Sensor - SensorPerPge) <= (4 * this.sensorsPerRow))
                    {
                        this.TemperaturePanel3.Children.Add(cylinder_tb);
                    }
                    else if ((Sensor - SensorPerPge) <= (5 * this.sensorsPerRow))
                    {
                        this.TemperaturePanel4.Children.Add(cylinder_tb);
                    }
                }
                Sensor++;                
            }
            
            
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
            hasNoError = true;

            MainPage mp = MainPage.GetInstance() as MainPage;            

            bool[] enableInput = new bool[mp.XTSDataSource.EngineData.TemperatureSensors];
            string[] nameInput = new string[mp.XTSDataSource.EngineData.TemperatureSensors];
            string[] alarmInput = new string[mp.XTSDataSource.EngineData.TemperatureSensors];
            string[] slowdownInput = new string[mp.XTSDataSource.EngineData.TemperatureSensors];

            int[] alarmOutput = new int[mp.XTSDataSource.EngineData.TemperatureSensors];
            int[] slowdownOutput = new int[mp.XTSDataSource.EngineData.TemperatureSensors];

            List<SensorTemperature>  updatedTemperature = new List<SensorTemperature>();
            updatedTemperatureToServer = new List<XTSBearTemperature>();

            uint Sensor = 0;
            foreach (XTSBearTemperature tempsensor in mp.XTSDataSource.EngineData.Bearingtemperature)
            {
                if (Sensor >= SensorPerPge)
                {
                    SensorTemperature sensor_tb = null;
                    int stackIndex = ((int)Sensor - SensorPerPge) % this.sensorsPerRow;
                    if ((Sensor - SensorPerPge) < this.sensorsPerRow)
                    {
                        sensor_tb = (SensorTemperature)this.TemperaturePanel0.Children[stackIndex];
                    }
                    else if ((Sensor - SensorPerPge) < (2 * this.sensorsPerRow))
                    {
                        sensor_tb = (SensorTemperature)this.TemperaturePanel1.Children[stackIndex];
                    }
                    else if ((Sensor - SensorPerPge) < (3 * this.sensorsPerRow))
                    {
                        sensor_tb = (SensorTemperature)this.TemperaturePanel2.Children[stackIndex];
                    }
                    else if ((Sensor - SensorPerPge) < (4 * this.sensorsPerRow))
                    {
                        sensor_tb = (SensorTemperature)this.TemperaturePanel3.Children[stackIndex];
                    }
                    else if ((Sensor - SensorPerPge) < (5 * this.sensorsPerRow))
                    {
                        sensor_tb = (SensorTemperature)this.TemperaturePanel4.Children[stackIndex];
                    }

                    if (sensor_tb != null)
                    {
                        XTSBearTemperature oneTemperature = new XTSBearTemperature(Sensor);
                        updatedTemperature.Add(sensor_tb);

                        enableInput[Sensor] = (sensor_tb.checkBoxEnable.IsChecked == true) ? true : false;
                        nameInput[Sensor] = sensor_tb.txtName.Text;
                        alarmInput[Sensor] = sensor_tb.txtAlarmLevel.Text;
                        slowdownInput[Sensor] = sensor_tb.txtSlowdownLevel.Text;
                    }
                }
                Sensor++;
            }

            Sensor = 0;
            foreach (string value in alarmInput)
            {
                if (Sensor >= SensorPerPge)
                {
                    try
                    {
                        alarmOutput[Sensor] = Int32.Parse(value);

                    }
                    catch (FormatException)
                    {
                        AMOTMessageBox amb = new AMOTMessageBox();
                        amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OK;
                        amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringErrorExclamation");
                        amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringWrongInput");
                        amb.Show();
                        hasNoError = false;
                    }

                    if (alarmOutput[Sensor] < 0 || alarmOutput[Sensor] > 500)
                    {
                        AMOTMessageBox outOfRangeMessage = new AMOTMessageBox();
                        outOfRangeMessage.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OK;
                        outOfRangeMessage.Title = XTS.LocalizedResources.GetResourceString("XTSStringErrorExclamation");
                        outOfRangeMessage.Message = XTS.LocalizedResources.GetResourceString("XTSStringAlarmOutofRange", new object[] { Sensor + 1 });
                        outOfRangeMessage.Show();
                        hasNoError = false;
                    }
                }
                Sensor++;
            }

            Sensor = 0;
            foreach (string value in slowdownInput)
            {
                if (Sensor >= SensorPerPge)
                {
                    try
                    {
                        slowdownOutput[Sensor] = Int32.Parse(value);

                    }
                    catch (FormatException)
                    {
                        AMOTMessageBox amb = new AMOTMessageBox();
                        amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OK;
                        amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringErrorExclamation");
                        amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringWrongInput");
                        amb.Show();
                        hasNoError = false;
                    }

                    if (slowdownOutput[Sensor] < 0 || slowdownOutput[Sensor] > 500)
                    {
                        AMOTMessageBox outOfRangeMessage = new AMOTMessageBox();
                        outOfRangeMessage.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OK;
                        outOfRangeMessage.Title = XTS.LocalizedResources.GetResourceString("XTSStringErrorExclamation");
                        outOfRangeMessage.Message = XTS.LocalizedResources.GetResourceString("XTSStringSlowdownOutofRange", new object[] { Sensor + 1 });
                        outOfRangeMessage.Show();
                        hasNoError = false;
                    }
                }
                Sensor++;
            }

            Sensor = 0;
            for (uint i = 0; i < updatedTemperature.ToArray().Length; i++)
            {
                //if (i >= 24)
                {
                    XTSBearTemperature oneTemperature = new XTSBearTemperature(i + SensorPerPge);
                    oneTemperature.Enable = enableInput[i + SensorPerPge];
                    oneTemperature.Channelname = nameInput[i + SensorPerPge];

                    string channelName = String.Format("Ch {0} - ", i + 1 + SensorPerPge);
                    if (!oneTemperature.Channelname.Trim().StartsWith(channelName))
                    {
                        oneTemperature.Channelname = channelName + oneTemperature.Channelname;
                    }

                    oneTemperature.AlarmLevel = alarmOutput[i + SensorPerPge];
                    oneTemperature.SlowdownLevel = slowdownOutput[i + SensorPerPge];

                    updatedTemperatureToServer.Add(oneTemperature);

                    if (oneTemperature.AlarmLevel > oneTemperature.SlowdownLevel)
                    {
                        AMOTMessageBox amb = new AMOTMessageBox();
                        amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OK;
                        amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringErrorExclamation");
                        amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringAlarmGreaterThanSlowdown", new object[] { i + 1 + SensorPerPge });
                        amb.Show();
                        hasNoError = false;
                    }
                }
                
            }

            if (hasNoError) this.Close();                                                            
            
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

        private void buttonAll_Click(object sender, RoutedEventArgs e)
        {
            ShowSelectedConfigItems(1);
        }

        private void buttonNone_Click(object sender, RoutedEventArgs e)
        {
            ShowSelectedConfigItems(2);
        }
    }
}

