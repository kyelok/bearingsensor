/* 
 * ContentScroll.xaml.cs
 * 
 * Partial class implementation of a user control for displaying a sensor status.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 16/08/2012
 */

using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace XTS.Controls
{
	public partial class SensorStatus : UserControl
	{
        #region Status Data Bind
        /// <summary>
        /// Internal data for Status.
        /// </summary>
        /// <remarks>Not modified by property itself, changed by callback for associated Dependency Property</remarks>
        private XTSSensorStatus dataStatus = XTSSensorStatus.Normal;
        /// <summary>
        /// The status to be displayed, modifies the dependency property.
        /// </summary>
        public XTSSensorStatus Status
        {
            set
            {
                SetValue(StatusProperty, value);
            }
            get
            {
                return (XTSSensorStatus)GetValue(StatusProperty);
            }
        }

        /// <summary>
        /// Dependency property for the status updates.
        /// </summary>
        public static readonly DependencyProperty StatusProperty = DependencyProperty.Register(
            "Status", typeof(XTSSensorStatus), typeof(SensorStatus), new PropertyMetadata(OnStatusPropertyChanged));

        /// <summary>
        /// Callback for the status dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnStatusPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            SensorStatus sensorStatus = dependencyObject as SensorStatus;
            sensorStatus.SetStatus((XTSSensorStatus)e.NewValue);
        }

        /// <summary>
        /// Internal function to be called by the dependency property callback
        /// </summary>
        /// <param name="status">The status to display</param>
        public void SetStatus(XTSSensorStatus status)
        {
            this.dataStatus = status;
            Color statusColor = XTSSensorColor.FromStatus(this.dataStatus);
            this.SensorState.Fill = new SolidColorBrush(statusColor);
			
			if (status.HasFlag(XTSSensorStatus.SensorFailureHighLevel))
            {
				this.PathFailureHighLevel.Visibility = Visibility.Visible;
				this.PathFailureLowLevel.Visibility  = Visibility.Collapsed;
				this.PathFailureNoPulse.Visibility   = Visibility.Collapsed;
				this.LabelFailureOOR.Visibility      = Visibility.Collapsed;
			}
            else if (status.HasFlag(XTSSensorStatus.SensorFailureLowLevel))
			{
				this.PathFailureHighLevel.Visibility = Visibility.Collapsed;
				this.PathFailureLowLevel.Visibility  = Visibility.Visible;
				this.PathFailureNoPulse.Visibility   = Visibility.Collapsed;
				this.LabelFailureOOR.Visibility      = Visibility.Collapsed;
			}
            else if (status.HasFlag(XTSSensorStatus.SensorFailureNoPulse))
			{
				this.PathFailureHighLevel.Visibility = Visibility.Collapsed;
				this.PathFailureLowLevel.Visibility  = Visibility.Collapsed;
				this.PathFailureNoPulse.Visibility   = Visibility.Visible;
				this.LabelFailureOOR.Visibility      = Visibility.Collapsed;
			}
            else if (status.HasFlag(XTSSensorStatus.SensorFailureRPMOOR))
			{
				this.PathFailureHighLevel.Visibility = Visibility.Collapsed;
				this.PathFailureLowLevel.Visibility  = Visibility.Collapsed;
				this.PathFailureNoPulse.Visibility   = Visibility.Collapsed;
				this.LabelFailureOOR.Visibility      = Visibility.Visible;
			}
            else
			{
				this.PathFailureHighLevel.Visibility = Visibility.Collapsed;
				this.PathFailureLowLevel.Visibility  = Visibility.Collapsed;
				this.PathFailureNoPulse.Visibility   = Visibility.Collapsed;
				this.LabelFailureOOR.Visibility      = Visibility.Collapsed;
			}
        }
        #endregion // Status Data Bind

        public SensorStatus(uint cylinder, uint sensor)
		{
			// Required to initialize variables
			InitializeComponent();
            SetStatus(XTSSensorStatus.Normal);
            this.LabelSensor.Content = string.Format("{0}.{1}", cylinder, sensor);
        }
	}
}
