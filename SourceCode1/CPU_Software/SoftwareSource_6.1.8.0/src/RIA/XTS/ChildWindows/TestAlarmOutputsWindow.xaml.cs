/* 
 * TestAlarmOutputsWindow.xaml.cs
 * 
 * Allows user to enable/disable alarm outputs.
 * C# partial implementation of TestAlarmOutputsWindow.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 11/04/2012
 */
using System;
using System.Windows;
using System.Windows.Controls;

namespace XTS.ChildWindows
{
    /// <summary>
    /// Class for displaying alarm outputs and allowing user to set them.
    /// </summary>
    public partial class TestAlarmOutputsWindow : ChildWindow
    {
        /// <summary>
        /// Timer to fire after a specified time of inactivity so we can disable test mode
        /// </summary>
        private System.Windows.Threading.DispatcherTimer timeOut;

        /// <summary>
        /// Default constructor
        /// </summary>
        public TestAlarmOutputsWindow()
        {
            InitializeComponent();
            this.timeOut = new System.Windows.Threading.DispatcherTimer();
            this.timeOut.Interval = new TimeSpan(0, 0, 60);
            this.timeOut.Tick += new EventHandler(timeOut_Tick);
            this.Visibility = System.Windows.Visibility.Collapsed;
        }

        void timeOut_Tick(object sender, EventArgs e)
        {
            this.timeOut.Stop();
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.ShowBusy(true);
                mp.XTSDataSource.SetTestOutputMode(false, OutputEnableCallback);
            }

            this.DialogResult = false;

            AMOTMessageBox amb = new AMOTMessageBox();
            amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringAlarmOutputTestCancelled");
            amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringMessageBoxTitleWarning");
            amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OK;
            amb.Show();
        }

        /// <summary>
        /// Callback for when screen is shown.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void TestAlarmOutputsWindow_Loaded(object sender, RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.ShowBusy(true);
                mp.XTSDataSource.SetTestOutputMode(true, OutputEnableCallback);
            }

            if (mp.XTSDataSource.Diagnostics.AlarmOutput0 == true)
            {
                OutputButton1.IsEnabled = true;
                OutputButton1Off.IsEnabled = false;
            }
            else
            {
                OutputButton1.IsEnabled = false;
                OutputButton1Off.IsEnabled = true;
            }

            if (mp.XTSDataSource.Diagnostics.AlarmOutput1 == true)
            {
                OutputButton2.IsEnabled = true;
                OutputButton2Off.IsEnabled = false;
            }
            else
            {
                OutputButton2.IsEnabled = false;
                OutputButton2Off.IsEnabled = true;
            }

            if (mp.XTSDataSource.Diagnostics.AlarmOutput2 == true)
            {
                OutputButton3.IsEnabled = true;
                OutputButton3Off.IsEnabled = false;
            }
            else
            {
                OutputButton3.IsEnabled = false;
                OutputButton3Off.IsEnabled = true;
            }
        }

        void TestAlarmOutputsWindow_Unloaded(object sender, RoutedEventArgs e)
        {
            this.timeOut.Stop();

            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                if (mp.XTSDataSource.Diagnostics.OutputEnabled)
                {
                    mp.ShowBusy(true);
                    mp.XTSDataSource.SetTestOutputMode(false, OutputEnableCallback);
                }
            }
        }

        void OutputEnableCallback(bool completed)
        {
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess() == false)
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new Action<bool>(OutputEnableCallback), completed);
                return;
            }

            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.ShowBusy(false);
                if (completed)
                {
                    if (mp.XTSDataSource.Diagnostics.OutputEnabled)
                    {
                        this.timeOut.Start();
                        this.Visibility = System.Windows.Visibility.Visible;
                    }
                }
            }
            if (!completed)
            {
                AMOTMessageBox amb = new AMOTMessageBox();
                amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringErrorExclamation");
                amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringCouldNotSetTestOutputMode");
                amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.Close;
                amb.Show();
            }
        }

        /// <summary>
        /// Callback for cancel/close button press.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }

        /// <summary>
        /// Callback for when output 1 is set
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void buttonOutput1_Click(object sender, System.Windows.RoutedEventArgs e)
        {            
            if (OutputButton1.IsEnabled)
            {
                SetAlarmOutput(1, true);                
            }

            OutputButton1.IsEnabled = false;
            OutputButton1Off.IsEnabled = true;
        }

        /// <summary>
        /// Callback for when output 1 is unset
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void buttonOutput1Off_Click(object sender, System.Windows.RoutedEventArgs e)
        {            
            if (!OutputButton1.IsEnabled)
            {
                SetAlarmOutput(1, false);                
            }

            OutputButton1.IsEnabled = true;
            OutputButton1Off.IsEnabled = false;
        }

        /// <summary>
        /// Callback for when output 2 is set
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void buttonOutput2_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            if (OutputButton2.IsEnabled)
            {                
                SetAlarmOutput(2, true);
            }
            OutputButton2.IsEnabled = false;
            OutputButton2Off.IsEnabled = true;
        }

        /// <summary>
        /// Callback for when output 2 is unset
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void buttonOutput2Off_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            if (!OutputButton2.IsEnabled)
            {                
                SetAlarmOutput(2, false);
            }
            OutputButton2.IsEnabled = true;
            OutputButton2Off.IsEnabled = false;
        }

        /// <summary>
        /// Callback for when output 3 is set
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void buttonOutput3_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            if (OutputButton3.IsEnabled)
            {                
                SetAlarmOutput(3, true);
            }
            OutputButton3.IsEnabled = false;
            OutputButton3Off.IsEnabled = true;
        }

        /// <summary>
        /// Callback for when output 3 is unset
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void buttonOutput3Off_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            if (!OutputButton3.IsEnabled)
            {                
                SetAlarmOutput(3, false);
            }
            OutputButton3.IsEnabled = true;
            OutputButton3Off.IsEnabled = false;
        }
		
        /// <summary>
        /// Wrapper around XTS interface function to set alarm output state
        /// </summary>
        /// <param name="index">Alarm index to set</param>
        /// <param name="active">true - sets alarm active</param>
		private void SetAlarmOutput(uint index, bool active)
		{
			MainPage mp = (MainPage)MainPage.GetInstance();
			if (mp != null)
			{
				mp.XTSDataSource.SetAlarmOutputState(index, active);
			}
            this.timeOut.Stop();
            this.timeOut.Start();
        }
    }
}

