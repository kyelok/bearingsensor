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
	public partial class SensorTemperature : UserControl
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
            "Status", typeof(XTSSensorStatus), typeof(SensorTemperature), new PropertyMetadata(OnStatusPropertyChanged));
        
        /// <summary>
        /// Internal data for Value.
        /// </summary>
        /// <remarks>Not modified by property itself, changed by callback for associated Dependency Property</remarks>
        private int dataValue = 0;
        /// <summary>
        /// The value to be displayed, modifies the dependency property.
        /// </summary>
        public int Value
        {
            set
            {
                SetValue(ValueProperty, value);
            }
            get
            {
                return (int)GetValue(ValueProperty);
            }
        }

        public static readonly DependencyProperty ValueProperty = DependencyProperty.Register(
            "Reading", typeof(int), typeof(SensorTemperature), new PropertyMetadata(OnValuePropertyChanged));

        /// <summary>
        /// Callback for the status dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnStatusPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            SensorTemperature sensorStatus = dependencyObject as SensorTemperature;
            sensorStatus.SetStatus((XTSSensorStatus)e.NewValue);
        }

        /// <summary>
        /// Callback for the value dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnValuePropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            SensorTemperature sensorStatus = dependencyObject as SensorTemperature;            
            sensorStatus.SetValue((int)e.NewValue);
        }

        /// <summary>
        /// Internal function to be called by the dependency property callback
        /// </summary>
        /// <param name="status">The status to display</param>
        public void SetStatus(XTSSensorStatus status)
        {
            this.dataStatus = status;
            Color statusColor = XTSSensorColor.FromStatus(this.dataStatus);
            //this.SensorState.Fill = new SolidColorBrush(statusColor);           
        }

        public void SetValue(int value)
        {
            this.dataValue = value;
            float displayvalue = (float)this.dataValue;
            displayvalue = displayvalue / 10;
            //this.SensorTemp.Content = displayvalue.ToString();
        }
        #endregion // Status Data Bind

        public SensorTemperature(uint cylinder, uint sensor)
		{
			// Required to initialize variables
			InitializeComponent();
            SetStatus(XTSSensorStatus.Normal);            
        }

        public SensorTemperature(bool enable, string sensName, int alarmLevel, int slowdownLevel )
        {
            // Required to initialize variables
            InitializeComponent();

            if(enable) this.checkBoxEnable.IsChecked = true;
            else this.checkBoxEnable.IsChecked = false;
            this.txtName.Text = sensName;
            this.ToolTipName.Content = sensName;
            this.txtAlarmLevel.Text = alarmLevel.ToString();
            this.txtSlowdownLevel.Text = slowdownLevel.ToString();            
        }
	}
}
