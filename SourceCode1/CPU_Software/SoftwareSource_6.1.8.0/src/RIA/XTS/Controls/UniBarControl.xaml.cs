/* 
 * UniBarControl.xaml.cs
 * 
 * Bar chart control for displaying sensor/cylinder levels and states.
 * C# partial implementation of UniBarControl.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 13/02/2012
 */

using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace XTS.Controls
{
    /// <summary>
    /// Bar chart control for displaying sensor/cylinder states
    /// </summary>
    public partial class UniBarControl : UserControl
    {
        /// <summary>
        /// Is the top MaxValue or MinValue?
        /// </summary>
        public enum UniBarControlDirection
        {
            Up,
            Down
        }

        #region Indicator Points
        /// <summary>
        /// Internal data for SlowdownThreshold
        /// </summary>
        private uint slowdown = 200;
        /// <summary>
        /// Represents the point (+ve and -ve) for showing the slowdown threshold indicators.
        /// </summary>
        public uint SlowdownThreshold
        {
            set
            {
                this.slowdown = value;
            }
        }

        /// <summary>
        /// Internal data for AlarmThreshold
        /// </summary>
        private uint alarm = 100;
        /// <summary>
        /// Represents the point (+ve and -ve) for showing the alarm threshold indicators.
        /// </summary>
        public uint AlarmThreshold
        {
            set
            {
                this.alarm = value;
            }
        }

        private bool showAlarm = true;
        /// <summary>
        /// Determines if the alarm threshold indicator is shown or not
        /// </summary>
        public bool ShowAlarm
        {
            set
            {
                this.showAlarm = value;
            }
        }

        private bool showSlowdown = true;
        /// <summary>
        /// Determines if the slowdown threshold indicator is shown or not
        /// </summary>
        public bool ShowSlowdown
        {
            set
            {
                this.showSlowdown = value;
            }
        }

        /// <summary>
        /// Internal data for AutoColour
        /// </summary>
        private bool autoColour = false;
        /// <summary>
        /// Causes the barchart to automatically set the colour based on the alarm/slowdown thresholds
        /// and not on the status databinding.
        /// </summary>
        public bool AutoColour
        {
            set
            {
                this.autoColour = value;
            }
        }

        private string channelName = null;
        /// <summary>
        /// Determines if the slowdown threshold indicator is shown or not
        /// </summary>
        public string ChannelName
        {
            get
            {
                return this.channelName;
            }
            set
            {
                this.channelName = value;
            }
        }
        #endregion // Indicator Points

        #region Data Bounds
        /// <summary>
        /// Internal data for Direction
        /// </summary>
        private UniBarControlDirection direction = UniBarControlDirection.Down;
        /// <summary>
        /// Sets wether the top of the bar chart is the MaxValue or MinValue
        /// </summary>
        public UniBarControlDirection Direction
        {
            set
            {
                this.direction = value;
            }
        }

        /// <summary>
        /// Internal data for MaxValue
        /// </summary>
        private int maxValue = 2000;
        /// <summary>
        /// The upper bounds that can be displayed by this chart.
        /// </summary>
        public int MaxValue
        {
            get
            {
                return this.maxValue;
            }
            set
            {
                if (value <= this.minValue)
                {
                    throw new ArgumentOutOfRangeException(XTS.LocalizedResources.GetResourceString("XTSStringMaxValueLessThanMin"));
                }
                this.maxValue = value;
            }
        }

        /// <summary>
        /// Internal data for MinValue
        /// </summary>
        private int minValue = 0;
        /// <summary>
        /// The lower bounds that can be displayed by this chart.
        /// </summary>
        public int MinValue
        {
            get
            {
                return this.minValue;
            }
            set
            {
                if (value >= this.maxValue)
                {
                    throw new ArgumentOutOfRangeException(XTS.LocalizedResources.GetResourceString("XTSStringMinValueGreaterThanMax"));
                }
                this.minValue = value;
            }
        }
        #endregion // Data Bounds

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
            "Status", typeof(XTSSensorStatus), typeof(UniBarControl), new PropertyMetadata(XTSSensorStatus.Normal, OnStatusPropertyChanged));

        /// <summary>
        /// Callback for the status dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnStatusPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            UniBarControl UniBarControl = dependencyObject as UniBarControl;
            UniBarControl.SetStatus((XTSSensorStatus)e.NewValue);
        }

        /// <summary>
        /// Internal function to be called by the dependency property callback
        /// </summary>
        /// <param name="status">The status to display</param>
        public void SetStatus(XTSSensorStatus status)
        {
            // Redrawing of the control is done in RenderGraph, called by the LayoutUpdated event
            // callback.  This is automatically raised when a dependency property is changed so
            // we only need to set the member variable for the status to be used in RenderGraph().
            this.dataStatus = status;
        }
        #endregion // Status Data Bind

        #region Value Data Bind
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

        /// <summary>
        /// Dependency property for the value updates.
        /// </summary>
        public static readonly DependencyProperty ValueProperty = DependencyProperty.Register(
            "Value", typeof(int), typeof(UniBarControl), new PropertyMetadata(0, OnValuePropertyChanged));

        /// <summary>
        /// Callback for the value dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnValuePropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            UniBarControl UniBarControl = dependencyObject as UniBarControl;
            UniBarControl.SetValue((int)e.NewValue);
        }

        /// <summary>
        /// Internal function to be called by the dependency property callback
        /// </summary>
        /// <param name="status">The value to display</param>
        public void SetValue(int value)
        {
            // Redrawing of the control is done in RenderGraph, called by the LayoutUpdated event
            // callback.  This is automatically raised when a dependency property is changed so
            // we only need to set the member variable for the status to be used in RenderGraph().
            this.dataValue = value;
        }
        #endregion // Value Data Bind

        #region Properties/Member Variables

        /// <summary>
        /// Internal data for ShowTopValue
        /// </summary>
        private bool showTopValue = true;
        /// <summary>
        /// Determines if values are shown on the top label or the bottom
        /// </summary>
        public bool ShowTopValue
        {
            set
            {
                this.showTopValue = value;
            }
        }

        /// <summary>
        /// Records the initial titleRowHeight so that it can be restored after being hidden.
        /// </summary>
        private double titleRowHeight;
        /// <summary>
        /// Sets wether the title row should be shown or not.
        /// </summary>
        public bool HideTitleRow
        {
            set
            {
                double newRowHeight = 0;
                if (!value)
                {
                    newRowHeight = this.titleRowHeight;
                }
                this.LayoutRoot.RowDefinitions[0].Height = new GridLength(newRowHeight);
            }
        }

        /// <summary>
        /// Internal data for Title.
        /// </summary>
        private string title = null;
        /// <summary>
        /// The title shown in the Title row.
        /// </summary>
        public string Title
        {
            set
            {
                this.title = value;
            }
        }

        /// <summary>
        /// Cylinder index 
        /// </summary>
        private double cylinderIndex = 0.0;

        /// <summary>
        /// A number representation of what location 
        /// we currently are in the system 
        /// </summary>
        public double CylinderIndex
        {
            set
            {
                cylinderIndex = value;
            }
            get
            {
                return cylinderIndex;
            }
        }

        public void ChangeToolTipName(string toolTip)
        {
            this.ToolTipName.Content = toolTip;
        }

        #endregion // Properties/Member Variables

        /// <summary>
        /// Default constructor
        /// </summary>
        public UniBarControl()
        {
            // Required to initialize variables
            InitializeComponent();

            // Hide screen controls to stop flicking on creation
            this.GridChart.Visibility = Visibility.Collapsed;
            this.LabelValueTop.Visibility = Visibility.Collapsed;
            this.LabelValueBottom.Visibility = Visibility.Collapsed;
            this.LabelTitle.Visibility = Visibility.Collapsed;
            this.PathZeroPoint.Visibility = Visibility.Collapsed;

            // Set title row height
            this.titleRowHeight = this.LayoutRoot.RowDefinitions[0].Height.Value;
        }

        #region Graph Drawing
        /// <summary>
        /// Updates the graph display by modifying control layout etc.
        /// </summary>
        private void RenderGraph()
        {
            Color statusColor = XTSSensorColor.Normal;
            System.Windows.Shapes.Path alarmNeg = null;
            System.Windows.Shapes.Path alarmPos = null;
            System.Windows.Shapes.Path sdownNeg = null;
            System.Windows.Shapes.Path sdownPos = null;
            if (this.autoColour)
            {
                //if (Math.Abs(this.dataValue) > this.slowdown)
                if (this.dataValue > this.slowdown)
                {
                    statusColor = XTSSensorColor.Slowdown;
                }
                //else if (Math.Abs(this.dataValue) > this.alarm)
                else if (this.dataValue > this.alarm)
                {
                    statusColor = XTSSensorColor.Alarm;
                }
                alarmNeg = this.PathAlarm1;
                alarmPos = this.PathAlarm0;
                sdownNeg = this.PathSlowdown1;
                sdownPos = this.PathSlowdown0;
            }
            else
            {
                statusColor = XTSSensorColor.FromStatus(this.dataStatus);
                alarmNeg = this.PathAlarm0;
                alarmPos = this.PathAlarm1;
                sdownNeg = this.PathSlowdown0;
                sdownPos = this.PathSlowdown1;
            }
            if (this.autoColour)
            {
                alarmNeg.Visibility = System.Windows.Visibility.Collapsed;
                sdownNeg.Visibility = System.Windows.Visibility.Collapsed;
            }
            else
            {
                if (this.showAlarm)
                {
                    alarmNeg.Visibility = System.Windows.Visibility.Collapsed;
                }
                else
                {
                    alarmNeg.Visibility = System.Windows.Visibility.Collapsed;
                }
                if (this.showSlowdown)
                {
                    sdownNeg.Visibility = System.Windows.Visibility.Collapsed;
                }
                else
                {
                    sdownNeg.Visibility = System.Windows.Visibility.Collapsed;
                }
            }
            if (this.showAlarm)
            {
                alarmPos.Visibility = System.Windows.Visibility.Visible;
            }
            else
            {
                alarmPos.Visibility = System.Windows.Visibility.Collapsed;
            }
            if (this.showSlowdown)
            {
                sdownPos.Visibility = System.Windows.Visibility.Visible;
            }
            else
            {
                sdownPos.Visibility = System.Windows.Visibility.Collapsed;
            }

            int renderValue = this.dataValue;
            if (renderValue > this.maxValue)
            {
                renderValue = this.maxValue;
            }
            else if (renderValue < this.minValue)
            {
                renderValue = this.minValue;
            }

            this.bar_graph.Fill = new SolidColorBrush(statusColor);

            Visibility chartExtrasVisible = Visibility.Visible;

            this.bar_graph.VerticalAlignment = System.Windows.VerticalAlignment.Bottom;
            double fullHeight = this.GridChart.ActualHeight; // Subtract 3 pixels each for border top/bottom
            double pixelsPerUnit = fullHeight / (this.maxValue - this.minValue);

            this.PathAlarm0.VerticalAlignment = System.Windows.VerticalAlignment.Bottom;
            this.PathAlarm1.VerticalAlignment = System.Windows.VerticalAlignment.Bottom;
            this.PathSlowdown0.VerticalAlignment = System.Windows.VerticalAlignment.Bottom;
            this.PathSlowdown1.VerticalAlignment = System.Windows.VerticalAlignment.Bottom;
            this.PathAlarm0.Margin = new Thickness(0, ((this.alarm * pixelsPerUnit)), 0, 0);
            this.PathAlarm1.Margin = new Thickness(0, 0, 0, ((this.alarm * pixelsPerUnit)));
            this.PathSlowdown0.Margin = new Thickness(0, ((this.slowdown * pixelsPerUnit)), 0, 0);
            this.PathSlowdown1.Margin = new Thickness(0, 0, 0, ((this.slowdown * pixelsPerUnit)));

            if (this.dataStatus.HasFlag(XTSSensorStatus.SensorFailureHighLevel) ||
                this.dataStatus.HasFlag(XTSSensorStatus.SensorFailureLowLevel) ||
                this.dataStatus.HasFlag(XTSSensorStatus.SensorFailureNoPulse) ||
                this.dataStatus.HasFlag(XTSSensorStatus.SensorFailureRPMOOR) ||
                this.dataStatus.HasFlag(XTSSensorStatus.SensorFailureUnknown) ||
                this.dataStatus.HasFlag(XTSSensorStatus.SensorAdjustment) ||
                this.dataStatus.HasFlag(XTSSensorStatus.Disabled))
            {
                this.bar_graph.VerticalAlignment = System.Windows.VerticalAlignment.Stretch;
                this.bar_graph.Margin = new Thickness(3, 3, 4, 3);
                this.bar_graph.Height = double.NaN;

                chartExtrasVisible = Visibility.Collapsed;
            }
            else
            {
                // Render at size relative to Value
                // XTSSensorStatus.Normal:
                // XTSSensorStatus.Alarm:
                // XTSSensorStatus.Slowdown:
                // XTSSensorStatus.PreWarning:
                this.LabelValueTop.Content = this.dataValue.ToString();
                this.LabelValueBottom.Content = this.dataValue.ToString();

                double zeroPoint = (((this.MaxValue - this.minValue) / 2) + this.minValue) * pixelsPerUnit;
                double offset = renderValue * pixelsPerUnit;
                if (offset == 0)
                {
                    this.bar_graph.Height = 1;
                    this.bar_graph.Margin = new Thickness(3, 0.5 + zeroPoint, 4, 0);
                }
                else
                {
                    // Give graph some height if it is a very small value
                    if ((offset < 1) && (offset > 0))
                    {
                        offset = 1;
                    }
                    else if ((offset > -1) && (offset < 0))
                    {
                        offset = -1;
                    }
                    if (this.direction == UniBarControlDirection.Up)
                    {
                        offset *= -1;
                    }

                    this.bar_graph.Height = Math.Abs(offset);
                    this.bar_graph.Margin = new Thickness(3, offset + zeroPoint, 4, 0);
                }
                // We need to multiply offset by *2 for the lines, as the line is drawn in the middle of the margin
                this.PathZeroPoint.Margin = new Thickness(0, zeroPoint, 0, 0);
            }
            this.PathZeroPoint.Visibility = Visibility.Collapsed; ;
            if (this.showTopValue)
            {
                this.LabelValueTop.Visibility = chartExtrasVisible;
                this.LabelValueBottom.Visibility = Visibility.Collapsed;
            }
            else
            {
                this.LabelValueTop.Visibility = Visibility.Collapsed;
                this.LabelValueBottom.Visibility = chartExtrasVisible;
            }
            if (this.dataStatus.HasFlag(XTSSensorStatus.SensorFailureHighLevel))
            {
                this.PathFailureHighLevel.Visibility = Visibility.Visible;
                this.PathFailureLowLevel.Visibility = Visibility.Collapsed;
                this.PathFailureNoPulse.Visibility = Visibility.Collapsed;
                this.LabelFailureOOR.Visibility = Visibility.Collapsed;
            }
            else if (this.dataStatus.HasFlag(XTSSensorStatus.SensorFailureLowLevel))
            {
                this.PathFailureHighLevel.Visibility = Visibility.Collapsed;
                this.PathFailureLowLevel.Visibility = Visibility.Visible;
                this.PathFailureNoPulse.Visibility = Visibility.Collapsed;
                this.LabelFailureOOR.Visibility = Visibility.Collapsed;
            }
            else if (this.dataStatus.HasFlag(XTSSensorStatus.SensorFailureNoPulse))
            {
                this.PathFailureHighLevel.Visibility = Visibility.Collapsed;
                this.PathFailureLowLevel.Visibility = Visibility.Collapsed;
                this.PathFailureNoPulse.Visibility = Visibility.Visible;
                this.LabelFailureOOR.Visibility = Visibility.Collapsed;
            }
            else if (this.dataStatus.HasFlag(XTSSensorStatus.SensorFailureRPMOOR))
            {
                this.PathFailureHighLevel.Visibility = Visibility.Collapsed;
                this.PathFailureLowLevel.Visibility = Visibility.Collapsed;
                this.PathFailureNoPulse.Visibility = Visibility.Collapsed;
                this.LabelFailureOOR.Visibility = Visibility.Visible;
            }
            else
            {
                this.PathFailureHighLevel.Visibility = Visibility.Collapsed;
                this.PathFailureLowLevel.Visibility = Visibility.Collapsed;
                this.PathFailureNoPulse.Visibility = Visibility.Collapsed;
                this.LabelFailureOOR.Visibility = Visibility.Collapsed;
            }

            if (this.title == null)
            {
                this.LabelTitle.Content = "";
            }
            else
            {
                this.LabelTitle.Content = this.title;
            }
            this.LabelTitle.Visibility = Visibility.Visible;
            this.GridChart.Visibility = Visibility.Visible;
        }

        #endregion // Graph Drawing

        #region UserControl Events
        /// <summary>
        /// Callback for updating the graph display on screen resizes, repaints and dependency property updates.
        /// </summary>
        /// <param name="sender">Object where event originated.</param>
        /// <param name="e">The event data.</param>
        private void OnLayoutUpdated(object sender, EventArgs e)
        {
            System.Windows.Deployment.Current.Dispatcher.BeginInvoke(this.RenderGraph);
        }
        #endregion // UserControl Events
    }
}
