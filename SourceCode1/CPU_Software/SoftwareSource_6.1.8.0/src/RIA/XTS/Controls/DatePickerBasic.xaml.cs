/* 
 * DatePickerBasic.cs
 * 
 * Simple spinner control based selection of date/time for touch screens.
 * C# partial implementation of DatePickerBasic.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 18/04/2012
 */

using System;
using System.Windows.Controls;

namespace XTS.Controls
{
    /// <summary>
    /// Control for displaying a date for user to select day, month, year.
    /// </summary>
    public partial class DatePickerBasic : UserControl
    {
        /// <summary>
        /// Internal data for Date
        /// </summary>
        private DateTime date = DateTime.Now;
        /// <summary>
        /// Property for getting/setting the date displayed
        /// </summary>
		public DateTime Date
		{
			get
			{
				return this.date;
			}
			set
			{
                this.date = value;
				UpdateUI();
			}
		}

        /// <summary>
        /// Default constructor
        /// </summary>
        public DatePickerBasic()
        {
            InitializeComponent();
			UpdateUI();
        }

        /// <summary>
        /// Callback for pressing the up button for days
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonDayUp_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            // We need to use this instead of DateTime.AddDay() as we want the days to wrap
            int day = this.date.Day + 1;
            if (day > DateTime.DaysInMonth(this.date.Year, this.date.Month))
            {
                day = 1;
            }
			this.date = new DateTime(this.date.Year, this.date.Month, day);
            UpdateUI();
        }

        /// <summary>
        /// Callback for pressing the down button for days
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonDayDown_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            // We need to use this instead of DateTime.AddDay() as we want the days to wrap
            int day = this.date.Day - 1;
            if (day == 0)
            {
                day = DateTime.DaysInMonth(this.date.Year, this.date.Month);
            }
            this.date = new DateTime(this.date.Year, this.date.Month, day);
            UpdateUI();
        }

        /// <summary>
        /// Callback for pressing the up button for months
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonMonthUp_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            // We need to use this instead of DateTime.AddMonth() as we want the months to wrap
            int month = this.date.Month + 1;
            if (month > 12)
            {
                month = 1;
            }
            int day = this.date.Day;
            if (day > DateTime.DaysInMonth(this.date.Year, month))
            {
                day = DateTime.DaysInMonth(this.date.Year, month);
            }
            this.date = new DateTime(this.date.Year, month, day);
            UpdateUI();
        }

        /// <summary>
        /// Callback for pressing the down button for months
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonMonthDown_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            // We need to use this instead of DateTime.AddMonth() as we want the months to wrap
            int month = this.date.Month - 1;
            if (month == 0)
            {
                month = 12;
            }
            int day = this.date.Day;
            if (day > DateTime.DaysInMonth(this.date.Year, month))
            {
                day = DateTime.DaysInMonth(this.date.Year, month);
            }
            this.date = new DateTime(this.date.Year, month, day);
            UpdateUI();
        }

        /// <summary>
        /// Callback for pressing the up button for years
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonYearUp_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            this.date = this.date.AddYears(1);
            UpdateUI();
        }

        /// <summary>
        /// Callback for pressing the down button for years
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonYearDown_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            this.date = this.date.AddYears(-1);
            UpdateUI();
        }
		
        /// <summary>
        /// Function to update screen components with the current data.
        /// </summary>
		private void UpdateUI()
		{
            // For day we don't use DateTime.ToString("d") as this doesn't work
            // when "d" is the only argument in the format string.
			this.textBlockDay.Text = this.date.Day.ToString();
			this.textBlockMonth.Text = this.date.ToString("MMMM");
			this.textBlockYear.Text = this.date.ToString("yyyy");
		}
    }
}
