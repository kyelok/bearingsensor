/* 
 * SensorSetupPopup.xaml.cs
 * 
 * Popup that hosts the main page sensor setup screen for use in sensor replacement.
 * C# partial implementation of SensorSetupPopup.xaml silverlight user control screen.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 05/04/2012
 */

using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;

namespace XTS.ChildWindows
{
    /// <summary>
    /// Class for displaying sensor setup screen in a popup
    /// </summary>
    public partial class SensorSetupPopup : ChildWindow
    {
        /// <summary>
        /// List of sensors that were successfully peak calibrated by the screen
        /// </summary>
        public List<XTSSensor.XTSSensorID> SensorsPeakCalibrated
        {
            get
            {
                return this.SensorSetup.SensorsPeakCalibrated;
            }
        }

        /// <summary>
        /// Default constructor
        /// </summary>
        public SensorSetupPopup()
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
    }
}

