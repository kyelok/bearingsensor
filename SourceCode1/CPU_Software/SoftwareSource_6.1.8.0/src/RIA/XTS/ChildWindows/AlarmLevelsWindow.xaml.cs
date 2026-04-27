/* 
 * AlarmLevelsWindow.cs
 * 
 * Popup window to allow user to select an alarm and slowdown level.
 * Partial implementation of AlarmLevelsWindow.xaml class.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 13/04/2012
 */

using System.Windows;
using System.Windows.Controls;

namespace XTS.ChildWindows
{
    /// <summary>
    /// Class to display a window allowing user to select an alarm and slowdown level
    /// </summary>
    public partial class AlarmLevelsWindow : ChildWindow
    {
        /// <summary>
        /// Amount the values change by when pressing increase/decrease buttons
        /// </summary>
        private const uint ALARMLEVELSWINDOW_VALUECHANGE = 100;

        /// <summary>
        /// Internal data for AlarmLevel
        /// </summary>
        private uint alarmLevel = 1300;
        /// <summary>
        /// The value selected by the user for the Alarm Level
        /// </summary>
        public uint AlarmLevel
        {
            get
            {
                return this.alarmLevel;
            }
            set
            {
                this.alarmLevel = value;
            }
        }

        /// <summary>
        /// Internal data for SlowdownLevel
        /// </summary>
        private uint slowdownLevel = 1500;
        /// <summary>
        /// The value selected by the user for the Slowdown Level
        /// </summary>
        public uint SlowdownLevel
        {
            get
            {
                return this.slowdownLevel;
            }
            set
            {
                this.slowdownLevel = value;
            }
        }

        /// <summary>
        /// Internal data for MinValue
        /// </summary>
        private uint minValue = 0;
        /// <summary>
        /// The minimum value that can be selected by the user
        /// </summary>
        public uint MinValue
        {
            set
            {
                this.minValue = value;
            }
        }

        /// <summary>
        /// Internal data for MinValue
        /// </summary>
        private uint maxValue = 2500;
        /// <summary>
        /// The maximum value that can be selected by the user
        /// </summary>
        public uint MaxValue
        {
            set
            {
                this.maxValue = value;
            }
        }

        /// <summary>
        /// Default constructor
        /// </summary>
        public AlarmLevelsWindow()
        {
            InitializeComponent();
        }

        /// <summary>
        /// OK the selected values button callback
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void OKButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = true;
        }

        /// <summary>
        /// Cancel the operation button callback
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }

        /// <summary>
        /// Callback for up button for alarm level
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonAlarmDown_Click(object sender, RoutedEventArgs e)
        {
            // Ensure we don't wrap around as unsigned
            if (this.alarmLevel >= ALARMLEVELSWINDOW_VALUECHANGE)
            {
                uint targetValue = this.alarmLevel - ALARMLEVELSWINDOW_VALUECHANGE;
                if (targetValue >= this.minValue)
                {
                    this.alarmLevel = targetValue;
                    UpdateUI();
                }
            }
        }
        /// <summary>
        /// Callback for down button for alarm level
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonAlarmUp_Click(object sender, RoutedEventArgs e)
        {
            uint targetValue = this.alarmLevel + ALARMLEVELSWINDOW_VALUECHANGE;
            if ((targetValue < this.slowdownLevel) &&
                (targetValue <= this.maxValue))
            {
                this.alarmLevel = targetValue;
                UpdateUI();
            }
        }

        /// <summary>
        /// Callback for up button for slowdown level
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonSlowdownDown_Click(object sender, RoutedEventArgs e)
        {
            // Ensure we don't wrap around as unsigned
            if (this.slowdownLevel >= ALARMLEVELSWINDOW_VALUECHANGE)
            {
                uint targetValue = this.slowdownLevel - ALARMLEVELSWINDOW_VALUECHANGE;
                if ((targetValue > this.alarmLevel) &&
                    (targetValue >= this.minValue))
                {
                    this.slowdownLevel = targetValue;
                    UpdateUI();
                }
            }
        }
        /// <summary>
        /// Callback for down button for slowdown level
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonSlowdownUp_Click(object sender, RoutedEventArgs e)
        {
            uint targetValue = this.slowdownLevel + ALARMLEVELSWINDOW_VALUECHANGE;
            if (targetValue <= this.maxValue)
            {
                this.slowdownLevel = targetValue;
                UpdateUI();
            }
        }

        /// <summary>
        /// Update the ui components based on thread values
        /// </summary>
        private void UpdateUI()
        {
            this.labelAlarmLevel.Content = this.alarmLevel.ToString();
            this.labelSlowdownLevel.Content = this.slowdownLevel.ToString();
        }

        /// <summary>
        /// Callback for when screen is shown.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void AlarmLevelsWindow_Loaded(object sender, RoutedEventArgs e)
        {
            // Ensure screen components are up to date
            UpdateUI();
        }
    }
}

