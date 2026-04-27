/* 
 * TimePicker.cs
 * 
 * Simple spinner control based selection of time for touch screens.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacLeod, 23/04/12
 */
using System;
using System.Windows;
using System.Windows.Controls;

namespace XTS.Controls
{
    /// <summary>
    /// Child window to allow use to select a time.
    /// </summary>
    public partial class TimePicker : UserControl
    {
        /// <summary>
        /// Private internal representation of our Time
        /// </summary>
        private DateTime time;
        /// <summary>
        /// The time shown on the child window.
        /// </summary>
        public DateTime Time
        {
            get
            {
                return time;
            }
            set
            {
                time = value;
                UpdateUI();
            }
        }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public TimePicker()
        {
            InitializeComponent();

            time = DateTime.Now;
            UpdateUI();
        }

        /// <summary>
        /// Add an hour onto the time.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonHourUp_Click(object sender, RoutedEventArgs e)
        {
            // We can't use DateTime.AddHours or DateTime.AddMinutes as we don't want the date
            // to change when we wrap around.
            int hour = this.time.Hour+1;
            if (hour > 23)
            {
                hour = 0;
            }
            this.time = new DateTime(this.time.Year, this.time.Month, this.time.Day, hour, this.time.Minute, 0);
            UpdateUI();
        }

        /// <summary>
        /// Add Minutes onto time.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonMinuteUp_Click(object sender, RoutedEventArgs e)
        {
            // We can't use DateTime.AddHours or DateTime.AddMinutes as we don't want the date
            // to change when we wrap around.
            int minute = this.time.Minute + 1;
            if (minute > 59)
            {
                minute = 0;
            }
            this.time = new DateTime(this.time.Year, this.time.Month, this.time.Day, this.time.Hour, minute, 0);
            UpdateUI();
        }

        /// <summary>
        /// Remove hour from time.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonHourDown_Click(object sender, RoutedEventArgs e)
        {
            // We can't use DateTime.AddHours or DateTime.AddMinutes as we don't want the date
            // to change when we wrap around.
            int hour = this.time.Hour - 1;
            if (hour < 0)
            {
                hour = 23;
            }
            this.time = new DateTime(this.time.Year, this.time.Month, this.time.Day, hour, this.time.Minute, 0);
            UpdateUI();
        }

        /// <summary>
        /// Remove minutes from time.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonMinuteDown_Click(object sender, RoutedEventArgs e)
        {
            // We can't use DateTime.AddHours or DateTime.AddMinutes as we don't want the date
            // to change when we wrap around.
            int minute = this.time.Minute - 1;
            if (minute < 0)
            {
                minute = 59;
            }
            this.time = new DateTime(this.time.Year, this.time.Month, this.time.Day, this.time.Hour, minute, 0);
            UpdateUI();
        }

        /// <summary>
        /// Updates the text on the TimePicker
        /// </summary>
        private void UpdateUI()
        {
            Hour.Text = this.time.ToString("HH"); 
            Minute.Text = this.time.ToString("mm");
        }
    }
}
