/* 
 * SPUCommsWindow.xaml.cs
 * 
 * Child window to show SPU communication statistics.
 * C# partial implementation of SPUCommsWindow.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 19/04/2012
 */

using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using XTS.Util;

namespace XTS.ChildWindows
{
    /// <summary>
    /// Class for displaying simple window with comms stats
    /// </summary>
    public partial class SPUCommsWindow : ChildWindow
    {
        MainPage mp = (MainPage)MainPage.GetInstance(); 

        /// <summary>
        /// Default constructor
        /// </summary>
        public SPUCommsWindow()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Callback for the close button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }

        /// <summary>
        /// Callback for reset comm stats button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonReset_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.ResetCommStats();
            }
        }

        private void SPUCommsWindow_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            Binding b = new Binding();
            b.Source = mp.XTSDataSource.UserData;
            b.Path = new PropertyPath("CurrentUser");
            b.Mode = BindingMode.OneWay;
            b.Converter = new UserPermissionConverter();
            b.ConverterParameter = (string)Application.Current.Resources["SensorSetup"];
            this.buttonReset.SetBinding(Button.VisibilityProperty, b);
        }

        private void SPUCommsWindow_Unloaded(object sender, System.Windows.RoutedEventArgs e)
        {
            this.buttonReset.ClearValue(Button.VisibilityProperty);
        }
    }
}
