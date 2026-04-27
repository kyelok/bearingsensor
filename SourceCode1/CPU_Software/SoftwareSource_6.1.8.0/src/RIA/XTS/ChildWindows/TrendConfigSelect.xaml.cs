/* 
 * TrendConfigSelect.xaml.cs
 * 
 * Allows the user to Select a trend configuration
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 27/04/2012
 */

using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace XTS.ChildWindows
{
    /// <summary>
    /// Simple window to display the trend configurations
    /// </summary>
    public partial class TrendConfigSelect : ChildWindow
    {
        /// <summary>
        /// Internal data for SelectedConfig
        /// </summary>
		private uint selectedConfig = 0;
        /// <summary>
        /// The config that was selected when the window was closed.
        /// Not set when window is cancelled.
        /// </summary>
		public uint SelectedConfig
		{
			get
			{
				return this.selectedConfig;
			}
		}
		
        /// <summary>
        /// Constructor
        /// </summary>
        public TrendConfigSelect()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Cancel button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }

        /// <summary>
        /// Loaded callback to initialise button labels
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void TrendConfigSelect_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            // TODO: Remove this from the popup and have names set manually?
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                this.buttonConfig0.Content = mp.XTSDataSource.Trends.ConfigNames[0];
                this.buttonConfig1.Content = mp.XTSDataSource.Trends.ConfigNames[1];
                this.buttonConfig2.Content = mp.XTSDataSource.Trends.ConfigNames[2];
                this.buttonConfig3.Content = mp.XTSDataSource.Trends.ConfigNames[3];
                this.buttonConfig4.Content = mp.XTSDataSource.Trends.ConfigNames[4];
                this.buttonConfig5.Content = mp.XTSDataSource.Trends.ConfigNames[5];
                this.buttonConfig6.Content = mp.XTSDataSource.Trends.ConfigNames[6];
                this.buttonConfig7.Content = mp.XTSDataSource.Trends.ConfigNames[7];
                this.buttonConfig8.Content = mp.XTSDataSource.Trends.ConfigNames[8];
                this.buttonConfig9.Content = mp.XTSDataSource.Trends.ConfigNames[9];
            }
        }

        private void buttonConfig_Click(object sender, System.Windows.RoutedEventArgs e)
        {
			if (sender == this.buttonConfig0)
			{
				this.selectedConfig = 0;
			}
			else if (sender == this.buttonConfig1)
			{
				this.selectedConfig = 1;
			}
			else if (sender == this.buttonConfig2)
			{
				this.selectedConfig = 2;
			}
			else if (sender == this.buttonConfig3)
			{
				this.selectedConfig = 3;
			}
			else if (sender == this.buttonConfig4)
			{
				this.selectedConfig = 4;
			}
			else if (sender == this.buttonConfig5)
			{
				this.selectedConfig = 5;
			}
			else if (sender == this.buttonConfig6)
			{
				this.selectedConfig = 6;
			}
			else if (sender == this.buttonConfig7)
			{
				this.selectedConfig = 7;
			}
			else if (sender == this.buttonConfig8)
			{
				this.selectedConfig = 8;
			}
			else if (sender == this.buttonConfig9)
			{
				this.selectedConfig = 9;
			}
            this.DialogResult = true;
        }
    }
}
