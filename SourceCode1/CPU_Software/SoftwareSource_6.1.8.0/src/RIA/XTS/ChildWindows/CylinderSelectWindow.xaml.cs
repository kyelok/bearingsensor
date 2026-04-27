/* 
 * CylinderSelectWindow.cs
 * 
 * Allows a user to select from a list of cylinders.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 27/04/2012
 */

using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Media;

namespace XTS.ChildWindows
{
    /// <summary>
    /// Window control for showing a list of all cylinders within the system
    /// and providing toggle buttons for selecting them.
    /// </summary>
    public partial class CylinderSelectWindow : ChildWindow
    {
        /// <summary>
        /// Internal data for SelectedCylinders, updated when a user selects/deselects a cylinder
        /// </summary>
        private List<int> selectedCylinders;
        /// <summary>
        /// List of indexes that are selected in Cylinders
        /// </summary>
        public List<int> SelectedCylinders
        {
            get
            {
                return this.selectedCylinders;
            }
            set
            {
                this.selectedCylinders = value;
            }
        }

        /// <summary>
        /// Internal data for DisabledCylinders
        /// </summary>
        private List<int> disabledCylinders;
        /// <summary>
        /// List of indexes that are disabled in Cylinders
        /// </summary>
        public List<int> DisabledCylinders
        {
            get
            {
                return this.disabledCylinders;
            }
            set
            {
                this.disabledCylinders = value;
            }
        }

        /// <summary>
        /// Internal data for Cylinders
        /// </summary>
        private List<uint> cylinders;
        /// <summary>
        /// List of cylinders to display, should be set before showing
        /// </summary>
        public List<uint> Cylinders
        {
            get
            {
                return this.cylinders;
            }
            set
            {
                this.cylinders = value;
            }
        }

        /// <summary>
        /// Buttons added to screen
        /// </summary>
        private List<ToggleButton> cylinderButtons;

        /// <summary>
        /// Default constructor
        /// </summary>
        public CylinderSelectWindow()
        {
            InitializeComponent();

            this.selectedCylinders = new List<int>();
            this.disabledCylinders = new List<int>();
            this.Cylinders = new List<uint>();
            this.cylinderButtons = new List<ToggleButton>();
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
            this.selectedCylinders.Clear();
            for (int i = 0; i < this.cylinders.Count; i++)
            {
                this.selectedCylinders.Add(i);
                if (!this.disabledCylinders.Contains(i))
                {
                    this.cylinderButtons[i].IsChecked = true;
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
            this.selectedCylinders.Clear();
            for (int i = 0; i < this.cylinders.Count; i++)
            {
                this.cylinderButtons[i].IsChecked = false;
            }
        }

        /// <summary>
        /// Set up the toggle buttons in the screen stacks for display.
        /// </summary>
        private void SetupCylinders()
        {
            this.stackCylinders.Children.Clear();
            this.cylinderButtons.Clear();
            int index = 0;
            StackPanel currentStackPanel = null;

            int divider = this.cylinders.Count;
            // Have two rows of sensors if we have more than 7
            if (this.cylinders.Count > 7)
            {
                divider = this.cylinders.Count / 2;
                if ((divider % 2) != 0)
                {
                    divider++;
                }
            }
            ToggleButton button = null;
            foreach (int cylinder in this.cylinders)
            {
                // Add rows of half sensors to screen
                if ((index % divider) == 0)
                {
                    currentStackPanel = new StackPanel();
                    currentStackPanel.Orientation = Orientation.Horizontal;
                    currentStackPanel.Margin = new Thickness(4, 4, 4, 0);
                    currentStackPanel.HorizontalAlignment = System.Windows.HorizontalAlignment.Center;
                    currentStackPanel.VerticalAlignment = System.Windows.VerticalAlignment.Center;
                    this.stackCylinders.Children.Add(currentStackPanel);

                    // Last button is going to be last in stack panel, so remove margin
                    if (button != null)
                    {
                        button.Margin = new Thickness(0, 0, 0, 0);
                    }
                }
                button = CreateToggleButton(string.Format("{0}", cylinder));

                if (this.selectedCylinders.Contains(index))
                {
                    button.IsChecked = true;
                }
                else if (this.disabledCylinders.Contains(index))
                {
                    button.IsChecked = false;
                    button.IsEnabled = false;
                }
                this.cylinderButtons.Add(button);
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
        private void CylinderSelectWindow_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            SetupCylinders();
        }

        /// <summary>
        /// Callback for when popup is being closed.  Updates the selected list for parent to access.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CylinderSelectWindow_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            this.selectedCylinders.Clear();
            for (int i = 0; i < this.cylinderButtons.Count; i++)
            {
                if (!this.disabledCylinders.Contains(i))
                {
                    if (this.cylinderButtons[i].IsChecked == true)
                    {
                        this.selectedCylinders.Add(i);
                    }
                }
            }
        }
    }
}

