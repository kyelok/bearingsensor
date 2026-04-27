/* 
 * SensorStatusWindow.xaml.cs
 * 
 * Child window to show HTML SensorStatus webpages.
 * C# partial implementation of SensorStatusWindow.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 16/04/2012
 */

using System.Windows;
using System.Windows.Controls;

namespace XTS.ChildWindows
{
    /// <summary>
    /// SensorStatus window class
    /// </summary>
    public partial class SensorStatusWindow : ChildWindow
    {       
        /// <summary>
        /// Default constructor
        /// </summary>
        public SensorStatusWindow()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Callback for close button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }

        private void SensorStatusWindow_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                // Add a callback so we can handle the alarm popup getting shown
                mp.Alarm_bar.AlarmPopupShown += new XTS.Controls.Alarm.AlarmPopupShownEventHandler(AlarmPopupShown);
            }
        }

        private void SensorStatusWindow_Unloaded(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                // Remove callback for when alarm popup is about to be displayed
                mp.Alarm_bar.AlarmPopupShown -= AlarmPopupShown;
            }
        }

        /// <summary>
        /// Callback function for when alarm popup is shown
        /// </summary>
        public void AlarmPopupShown()
        {
            this.Close();
        }
    }
}

