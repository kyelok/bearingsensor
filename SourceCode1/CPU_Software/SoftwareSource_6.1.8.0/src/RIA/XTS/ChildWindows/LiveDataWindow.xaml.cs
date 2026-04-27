/* 
 * LiveDataWindow.xaml.cs
 * 
 * Child window to show live data from SPU.
 * C# partial implementation of LiveDataWindow.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 12/04/2012
 */

using System.Windows;
using System.Windows.Controls;

namespace XTS.ChildWindows
{
    /// <summary>
    /// Child window to display live data
    /// </summary>
    public partial class LiveDataWindow : ChildWindow
    {
        /// <summary>
        /// Default constructor
        /// </summary>
        public LiveDataWindow()
        {
            InitializeComponent();
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

