/* 
 * CylinderPercentComparison.xaml.cs
 * 
 * Displays the cylinder percentage comparison.
 * C# partial implementation of CylinderPercentComparison.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 22/03/2012
 */

using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace XTS.Controls
{
    /// <summary>
    /// Control for displaying a percent symbol
    /// </summary>
    public partial class CylinderPercentComparison : UserControl
    {
        #region Value Data Bind
        /// <summary>
        /// The value to be displayed, modifies the dependency property.
        /// </summary>
        public bool? Value
        {
            set
            {
                SetValue(ValueProperty, value);
            }
            get
            {
                return (bool?)GetValue(ValueProperty);
            }
        }

        /// <summary>
        /// Dependency property for the value updates.
        /// </summary>
        public static readonly DependencyProperty ValueProperty = DependencyProperty.Register(
            "Value", typeof(bool?), typeof(CylinderPercentComparison), new PropertyMetadata(null, OnValuePropertyChanged));

        /// <summary>
        /// Callback for the value dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnValuePropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            CylinderPercentComparison cpc = dependencyObject as CylinderPercentComparison;
            cpc.SetValue((bool?)e.NewValue);
        }

        /// <summary>
        /// Internal function to be called by the dependency property callback
        /// </summary>
        /// <param name="status">The value to display</param>
        public void SetValue(bool? value)
        {
            Color statusColour;
            if (value == null)
            {
                statusColour = (Color)Application.Current.Resources["ColorAMOTDarkGrey"];
            }
            else if (value == true)
            {
                statusColour = (Color)Application.Current.Resources["ColorAMOTSensorNormal"];
            }
            else
            {
                statusColour = (Color)Application.Current.Resources["ColorAMOTSensorSlowdown"];
            }
            this.RectStatus.Fill = new SolidColorBrush(statusColour);
        }
        #endregion // Value Data Bind

        /// <summary>
        /// Default Contstructor
        /// </summary>
		public CylinderPercentComparison()
		{
			// Required to initialize variables
			InitializeComponent();

            // Update display with default
            SetValue(this.Value);
		}
	}
}