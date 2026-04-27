/* 
 * DatePickerWindow.cs
 * 
 * Simple message box popup window for selecting a date.
 * C# partial implementation of DatePickerWindow.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 18/04/2012
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;

namespace XTS.ChildWindows
{
    /// <summary>
    /// Simple window to select a date
    /// </summary>
    public partial class DatePickerWindow : ChildWindow
    {
        /// <summary>
        /// Gets/sets the date shown
        /// </summary>
        public DateTime Date
        {
            get
            {
                return this.datePicker.Date;
            }
            set
            {
                this.datePicker.Date = value;
            }
        }

        /// <summary>
        /// Default constructor
        /// </summary>
        public DatePickerWindow()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Callback for ok button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void OKButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = true;
        }

        /// <summary>
        /// Callback for cancel button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }
    }
}

