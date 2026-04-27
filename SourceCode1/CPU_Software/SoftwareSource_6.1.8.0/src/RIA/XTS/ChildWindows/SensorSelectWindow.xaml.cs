/* 
 * SensorSelectWindow.cs
 * 
 * Allows a user to select from a list of sensors.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 12/03/2012
 */

using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Media;

namespace XTS.ChildWindows
{
	/// <summary>
	/// Window control for showing a list of sensors
	/// and providing toggle buttons for selecting them.
	/// </summary>
    public partial class SensorSelectWindow : ChildWindow
    {
        /// <summary>
        /// Internal data for SelectedSensors, updated when a user selects/deselects a sensor
        /// </summary>
        private List<int> selectedSensors;
        /// <summary>
        /// List of indexes that are selected in Sensors
        /// </summary>
        public List<int> SelectedSensors
        {
            get
            {
                return this.selectedSensors;
            }
            set
            {
                this.selectedSensors = value;
            }
        }

        /// <summary>
        /// Internal data for DisabledSensors
        /// </summary>
        private List<int> disabledSensors;
        /// <summary>
        /// List of indexes that are disabled in Sensors
        /// </summary>
        public List<int> DisabledSensors
        {
            get
            {
                return this.disabledSensors;
            }
            set
            {
                this.disabledSensors = value;
            }
        }

        /// <summary>
        /// Internal data for Sensors
        /// </summary>
        private List<XTSSensor.XTSSensorID> sensors;
        /// <summary>
        /// List of sensors to display, should be set before showing
        /// </summary>
        public List<XTSSensor.XTSSensorID> Sensors
        {
            get
            {
                return this.sensors;
            }
            set
            {
                this.sensors = value;
            }
        }

        /// <summary>
        /// Buttons added to screen
        /// </summary>
        private List<ToggleButton> sensorButtons;

		/// <summary>
		/// Default constructor
		/// </summary>
        public SensorSelectWindow()
        {
            InitializeComponent();

            this.selectedSensors = new List<int>();
            this.disabledSensors = new List<int>();
            this.Sensors = new List<XTSSensor.XTSSensorID>();
            this.sensorButtons = new List<ToggleButton>();
        }

		/// <summary>
		/// Callback for the OK button
		/// </summary>
		/// <param name="sender">Originator of the event</param>
		/// <param name="e">Event data</param>
        private void OKButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = true;
        }

		/// <summary>
		/// Callback for the cancel button
		/// </summary>
		/// <param name="sender">Originator of the event</param>
		/// <param name="e">Event data</param>
        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }

		/// <summary>
		/// Callback for the all button
		/// </summary>
		/// <param name="sender">Originator of the event</param>
		/// <param name="e">Event data</param>
        private void buttonAll_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            this.selectedSensors.Clear();
            for (int i = 0; i < this.sensors.Count; i++)
            {
                this.selectedSensors.Add(i);
                if (!this.disabledSensors.Contains(i))
                {
                    this.sensorButtons[i].IsChecked = true;
                }
            }
        }

        /// <summary>
        /// Callback for the none button
        /// </summary>
        /// <param name="sender">Originator of the event</param>
        /// <param name="e">Event data</param>
        private void buttonNone_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            this.selectedSensors.Clear();
            for (int i = 0; i < this.sensors.Count; i++)
            {
                this.sensorButtons[i].IsChecked = false;
            }
        }

        /// <summary>
        /// Set up the toggle buttons in the screen stacks for display.
        /// </summary>
        private void SetupSensors()
        {
            this.stackSensors.Children.Clear();
            this.sensorButtons.Clear();
            int index = 0;
            StackPanel currentStackPanel = null;
            
            int divider = this.sensors.Count;
            // Have two rows of sensors if we have more than 8
            if (this.sensors.Count > 8)
            {
                divider = this.sensors.Count / 2;
                if ((divider % 2) != 0)
                {
                    divider++;
                }
            }
            ToggleButton button = null;
            foreach (XTSSensor.XTSSensorID sensor in this.sensors)
            {
                // Add rows of half sensors to screen
                if ((index % divider) == 0)
                {
                    currentStackPanel = new StackPanel();
                    currentStackPanel.Orientation = Orientation.Horizontal;
                    currentStackPanel.Margin = new Thickness(4, 4, 4, 0);
                    currentStackPanel.HorizontalAlignment = System.Windows.HorizontalAlignment.Center;
                    currentStackPanel.VerticalAlignment = System.Windows.VerticalAlignment.Center;
                    this.stackSensors.Children.Add(currentStackPanel);

                    // Last button is going to be last in stack panel, so remove margin
                    if (button != null)
                    {
                        button.Margin = new Thickness(0, 0, 0, 0);
                    }
                }
                button = CreateToggleButton(string.Format("{0}.{1}", sensor.cylinder, sensor.sensor));

                if (this.selectedSensors.Contains(index))
                {
                    button.IsChecked = true;
                }
                else if (this.disabledSensors.Contains(index))
                {
                    button.IsChecked = false;
                    button.IsEnabled = false;
                }
                this.sensorButtons.Add(button);
                currentStackPanel.Children.Add(button);

                index++;
            }
            // For last stack panel add closing margin
            currentStackPanel.Margin = new Thickness(4, 4, 4, 4);
            // Last button is going to be last in stack panel, so remove margin
            if (button != null)
            {
                button.Margin = new Thickness(0, 0, 0, 0);
            }
        }

        /// <summary>
        /// Created a toggle button with the correct parameters
        /// </summary>
        /// <param name="content">Text to display within the button.</param>
        /// <returns>The created button.</returns>
        private ToggleButton CreateToggleButton(string content)
        {
            ToggleButton tb = new ToggleButton();
            tb.Content = content;

            tb.Margin = new Thickness(0, 0, 4, 0);
            tb.Width = 44;
            tb.Height = 44;

            tb.Style = Application.Current.Resources["ToggleButtonStyleAMOT"] as Style;
            tb.ContentTemplate = Application.Current.Resources["ContentTemplateAMOTButton"] as DataTemplate;
            tb.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTButton"]);
            tb.Foreground = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTText"]);

            return tb;
        }

        /// <summary>
        /// Callback to update layout on loading screen.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void SensorSelectWindow_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
        	SetupSensors();
        }

        /// <summary>
        /// Callback for when popup is being closed.  Updates the selected list for parent to access.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void SensorSelectWindow_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            this.selectedSensors.Clear();
            for (int i=0; i<this.sensorButtons.Count; i++)
            {
                if (!this.disabledSensors.Contains(i))
                {
                    if (this.sensorButtons[i].IsChecked == true)
                    {
                        this.selectedSensors.Add(i);
                    }
                }
            }
        }
    }
}

