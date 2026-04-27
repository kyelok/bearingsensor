/* 
 * PeakGauge.xaml.cs
 * 
 * Displays a bar chart with a peak value, C# partial implementation of PeakGauge.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 20/03/2012
 */

using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace XTS.Controls
{
    /// <summary>
    /// Control for displaying a bar chart with a peak bar and reset button.
    /// </summary>
	public partial class PeakGauge : UserControl
    {
        /// <summary>
        /// Internal data for ModifyValue
        /// </summary>
        private bool modifyValue = false;
        /// <summary>
        /// Specifies if the displayed value should be divided by 1000
        /// </summary>
        public bool ModifyValue
        {
            set
            {
                this.modifyValue = value;
            }
        }

        /// <summary>
        /// Internal data for Direction
        /// </summary>
        private BarControl.BarControlDirection direction = BarControl.BarControlDirection.Down;
        /// <summary>
        /// Sets wether the top of the bar chart is the MaxValue or MinValue
        /// </summary>
        public BarControl.BarControlDirection Direction
        {
            set
            {
                this.direction = value;
            }
        }

        /// <summary>
        /// Internal data for ShowFromZero
        /// </summary>
        private bool fromZero = false;
        /// <summary>
        /// 
        /// </summary>
        public bool ShowFromZero
        {
            set
            {
                this.fromZero = value;
            }
        }

        #region OK/Ideal Data Bounds

        /// <summary>
        /// Property to allow binding to target ideal/ok bounds
        /// </summary>
        public XTSEngine.XTSSensorTarget SensorBounds
        {
            set
            {
                SetValue(SensorBoundsProperty, value);
            }
            get
            {
                return (XTSEngine.XTSSensorTarget)GetValue(SensorBoundsProperty);
            }
        }

        /// <summary>
        /// Dependency property for the status updates.
        /// </summary>
        public static readonly DependencyProperty SensorBoundsProperty = DependencyProperty.Register(
            "SensorBounds", typeof(XTSEngine.XTSSensorTarget), typeof(PeakGauge), new PropertyMetadata(OnSensorBoundsPropertyChanged));

        /// <summary>
        /// Callback for the status dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnSensorBoundsPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            PeakGauge peakGauge = dependencyObject as PeakGauge;
            peakGauge.SetReadingStatus((XTSEngine.XTSSensorTarget)e.NewValue);
        }

        /// <summary>
        /// Internal function to be called by the dependency property callback
        /// </summary>
        /// <param name="status">The status to display</param>
        public void SetReadingStatus(XTSEngine.XTSSensorTarget status)
        {
            // Redrawing of the control is done in RenderGraph, called by the LayoutUpdated event
            // callback.  This is automatically raised when a dependency property is changed so
            // we only need to set the member variable for the status to be used in RenderGraph().
            this.MinValueIdeal = status.IdealLow;
            this.MaxValueIdeal = status.IdealHigh;
            this.MinValueOK = status.OKLow;
            this.MaxValueOK = status.OKHigh;
        }

        /// <summary>
        /// Shows or hides the ideal bounds for the control
        /// </summary>
        public bool ShowIdealBounds
        {
            set
            {
                if (value)
                {
                    this.RectIdeal.Visibility = System.Windows.Visibility.Visible;
                }
                else
                {
                    this.RectIdeal.Visibility = System.Windows.Visibility.Collapsed;
                }
            }
        }

        /// <summary>
        /// Internal data for MaxValueIdeal
        /// </summary>
        private int maxValueIdeal = 2000;
        /// <summary>
        /// The upper bounds that can be displayed by this chart.
        /// </summary>
        public int MaxValueIdeal
        {
            get
            {
                return this.maxValueIdeal;
            }
            set
            {
                this.maxValueIdeal = value;
            }
        }

        /// <summary>
        /// Internal data for MinValueIdeal
        /// </summary>
        private int minValueIdeal = 0;
        /// <summary>
        /// The lower bounds that can be displayed by this chart.
        /// </summary>
        public int MinValueIdeal
        {
            get
            {
                return this.minValueIdeal;
            }
            set
            {
                this.minValueIdeal = value;
            }
        }

        /// <summary>
        /// Shows or hides the ok bounds for the control
        /// </summary>
        public bool ShowOKBounds
        {
            set
            {
                if (value)
                {
                    this.RectOK.Visibility = System.Windows.Visibility.Visible;
                }
                else
                {
                    this.RectOK.Visibility = System.Windows.Visibility.Collapsed;
                }
            }
        }

        /// <summary>
        /// Internal data for MaxValueOK
        /// </summary>
        private int maxValueOK = 2000;
        /// <summary>
        /// The upper bounds that can be displayed by this chart.
        /// </summary>
        public int MaxValueOK
        {
            get
            {
                return this.maxValueOK;
            }
            set
            {
                this.maxValueOK = value;
            }
        }

        /// <summary>
        /// Internal data for MinValueOK
        /// </summary>
        private int minValueOK = 0;
        /// <summary>
        /// The lower bounds that can be displayed by this chart.
        /// </summary>
        public int MinValueOK
        {
            get
            {
                return this.minValueOK;
            }
            set
            {
                this.minValueOK = value;
            }
        }
        #endregion // OK/Ideal Data Bounds
        
        /// <summary>
        /// Internal data for ShowAllValues
        /// </summary>
        private bool showAllValues = false;
        /// <summary>
        /// Determines if the data is shown even when the status is reporting an error or disabled.
        /// </summary>
        public bool ShowAllValues
        {
            set
            {
                this.showAllValues = value;
            }
        }

        #region Data Bounds
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
                this.minValue = value;
            }
        }
        #endregion // Data Bounds

        #region Current reading status Data Bind
        /// <summary>
        /// Internal data for Status.
        /// </summary>
        /// <remarks>Not modified by property itself, changed by callback for associated Dependency Property</remarks>
        private XTSSensorRange readingStatus = XTSSensorRange.OK;
        /// <summary>
        /// The status to be displayed, modifies the dependency property.
        /// </summary>
        public XTSSensorRange ReadingStatus
        {
            set
            {
                SetValue(ReadingStatusProperty, value);
            }
            get
            {
                return (XTSSensorRange)GetValue(ReadingStatusProperty);
            }
        }

        /// <summary>
        /// Dependency property for the status updates.
        /// </summary>
        public static readonly DependencyProperty ReadingStatusProperty = DependencyProperty.Register(
            "ReadingStatus", typeof(XTSSensorRange), typeof(PeakGauge), new PropertyMetadata(XTSSensorRange.OK, OnReadingStatusPropertyChanged));

        /// <summary>
        /// Callback for the status dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnReadingStatusPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            PeakGauge peakGauge = dependencyObject as PeakGauge;
            peakGauge.SetReadingStatus((XTSSensorRange)e.NewValue);
        }

        /// <summary>
        /// Internal function to be called by the dependency property callback
        /// </summary>
        /// <param name="status">The status to display</param>
        public void SetReadingStatus(XTSSensorRange status)
        {
            // Redrawing of the control is done in RenderGraph, called by the LayoutUpdated event
            // callback.  This is automatically raised when a dependency property is changed so
            // we only need to set the member variable for the status to be used in RenderGraph().
            this.readingStatus = status;
        }
        #endregion // mA reading status Data Bind

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
            "Status", typeof(XTSSensorStatus), typeof(PeakGauge), new PropertyMetadata(XTSSensorStatus.Normal, OnStatusPropertyChanged));

        /// <summary>
        /// Callback for the status dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnStatusPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            PeakGauge peakGauge = dependencyObject as PeakGauge;
            peakGauge.SetStatus((XTSSensorStatus)e.NewValue);
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

        #region ValuePeak Data Bind
        /// <summary>
        /// Internal data for ValuePeak.
        /// </summary>
        /// <remarks>Not modified by property itself, changed by callback for associated Dependency Property</remarks>
        private int dataValuePeak = 0;
        /// <summary>
        /// The value to be displayed, modifies the dependency property.
        /// </summary>
        public int ValuePeak
        {
            set
            {
                SetValue(ValuePeakProperty, value);
            }
            get
            {
                return (int)GetValue(ValuePeakProperty);
            }
        }

        /// <summary>
        /// Dependency property for the value updates.
        /// </summary>
        public static readonly DependencyProperty ValuePeakProperty = DependencyProperty.Register(
            "ValuePeak", typeof(int), typeof(PeakGauge), new PropertyMetadata(0, OnValuePeakPropertyChanged));

        /// <summary>
        /// Callback for the value peak dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnValuePeakPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            PeakGauge peakGauge = dependencyObject as PeakGauge;
            peakGauge.SetValuePeak((int)e.NewValue);
        }

        /// <summary>
        /// Internal function to be called by the dependency property callback
        /// </summary>
        /// <param name="status">The value to display</param>
        public void SetValuePeak(int value)
        {
            // Redrawing of the control is done in RenderGraph, called by the LayoutUpdated event
            // callback.  This is automatically raised when a dependency property is changed so
            // we only need to set the member variable for the status to be used in RenderGraph().
            this.dataValuePeak = value;
        }
        #endregion // Value Data Bind

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
            "Value", typeof(int), typeof(PeakGauge), new PropertyMetadata(0, OnValuePropertyChanged));

        /// <summary>
        /// Callback for the value dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnValuePropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            PeakGauge peakGauge = dependencyObject as PeakGauge;
            peakGauge.SetValue((int)e.NewValue);
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
        /// The index of the cylinder.
        /// </summary>
        private uint cylinder;
        /// <summary>
        /// The index of the sensor within the cylinder.
        /// </summary>
        private uint sensor;

        #endregion // Properties/Member Variables

        /// <summary>
        /// Main constructor
        /// </summary>
        public PeakGauge(uint cylinder, uint sensor)
		{
			// Required to initialize variables
			InitializeComponent();

            this.cylinder = cylinder;
            this.sensor = sensor;

            this.LabelTitle.Content = string.Format("{0}.{1}", cylinder, sensor);
		}

        /// <summary>
        /// Callback for when peak reset button is pressed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void buttonPeak_Clicked(object sender, System.Windows.RoutedEventArgs e)
		{
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.ResetSensorReadingPeak(this.cylinder, this.sensor);
            }
		}

        #region Graph Drawing
        /// <summary>
        /// Updates the graph display by modifying control layout etc.
        /// </summary>
        private void RenderGraph()
        {
            Color statusColor;
            // Override colour for certain states...
            if (this.dataStatus.HasFlag(XTSSensorStatus.Alarm) ||
                this.dataStatus.HasFlag(XTSSensorStatus.PreWarning) ||
                this.dataStatus.HasFlag(XTSSensorStatus.Slowdown) ||
                this.dataStatus.HasFlag(XTSSensorStatus.Normal))
            {
                // Evaluate colour based on ideal and ok range...
                switch (this.readingStatus)
                {
                    case XTSSensorRange.OK:
                        {
                            statusColor = XTSSensorColor.FromStatus(XTSSensorStatus.Alarm);
                            break;
                        }
                    case XTSSensorRange.Ideal:
                            {
                                statusColor = XTSSensorColor.FromStatus(XTSSensorStatus.Normal);
                                break;
                            }
                    case XTSSensorRange.Bad:
                    default:
                        {
                            statusColor = XTSSensorColor.FromStatus(XTSSensorStatus.Slowdown);
                            break;
                        }
                }
            }
            else
            {
                // XTSSensorStatus.SensorFailureHighLevel
                // XTSSensorStatus.SensorFailureLowLevel
                // XTSSensorStatus.SensorFailureNoPulse
                // XTSSensorStatus.SensorFailureRPMOOR
                // XTSSensorStatus.SensorFailureUnknown
                // XTSSensorStatus.SensorAdjustment
                // XTSSensorStatus.Disabled
                statusColor = XTSSensorColor.FromStatus(this.dataStatus);
            }
            this.RectValue.Fill = new SolidColorBrush(statusColor);
            this.RectPeak.Fill = new SolidColorBrush(statusColor);

            double fullHeight = this.GridGauge.ActualHeight;
            double pixelsPerUnit = fullHeight / (this.maxValue - this.minValue);

            bool showValue = true;
            if (!this.showAllValues)
            {
                if (this.dataStatus.HasFlag(XTSSensorStatus.Alarm) ||
                    this.dataStatus.HasFlag(XTSSensorStatus.PreWarning) ||
                    this.dataStatus.HasFlag(XTSSensorStatus.Slowdown) ||
                    this.dataStatus.HasFlag(XTSSensorStatus.Normal))
                {
                    showValue = true;
                }
                else
                {
                    // Error states, render full size rectangle!
                    // XTSSensorStatus.SensorFailureHighLevel
                    // XTSSensorStatus.SensorFailureLowLevel
                    // XTSSensorStatus.SensorFailureNoPulse
                    // XTSSensorStatus.SensorFailureRPMOOR
                    // XTSSensorStatus.SensorFailureUnknown
                    // XTSSensorStatus.SensorAdjustment
                    // XTSSensorStatus.Disabled
                    showValue = false;
                }
            }

            if (showValue)
            {
                // Render at size relative to Value
                if (this.modifyValue)
                {
                    this.LabelValue.Content = string.Format("{0:0.00}", this.dataValue / 1000.0);
                }
                else
                {
                    this.LabelValue.Content = this.dataValue.ToString();
                }
                this.LabelValue.Visibility = Visibility.Visible;
                this.BorderValue.Visibility = Visibility.Visible;
                this.ButtonPeak.Visibility = Visibility.Visible;

                if (this.fromZero)
                {
                    double zeroPoint = fullHeight * ((double)maxValue/(maxValue-minValue));

                    double height = Math.Abs(BoundValue(this.dataValue)) * pixelsPerUnit;
                    // Give graph some height if it is a very small value
                    // Height can never be negative!
                    if (height < 1)
                    {
                        height = 1;
                    }
                    this.RectValue.Height = height;
                    this.RectPeak.Height = Math.Abs(BoundValue(this.dataValuePeak)) * pixelsPerUnit;

                    Thickness margin = this.RectValue.Margin;
                    if (((this.direction == BarControl.BarControlDirection.Up) && (this.dataValue >= 0)) ||
                        ((this.direction == BarControl.BarControlDirection.Down) && (this.dataValue < 0)))
                    {
                        this.RectValue.VerticalAlignment = System.Windows.VerticalAlignment.Bottom;
                        this.RectValue.Margin = new Thickness(margin.Left, 0, margin.Right, zeroPoint);
                    }
                    else
                    {
                        this.RectValue.VerticalAlignment = System.Windows.VerticalAlignment.Top;
                        this.RectValue.Margin = new Thickness(margin.Left, zeroPoint, margin.Right, 0);
                    }
                    if (((this.direction == BarControl.BarControlDirection.Up) && (this.dataValuePeak >= 0)) ||
                        ((this.direction == BarControl.BarControlDirection.Down) && (this.dataValuePeak < 0)))
                    {
                        this.RectPeak.VerticalAlignment = System.Windows.VerticalAlignment.Bottom;
                        this.RectPeak.Margin = new Thickness(margin.Left, 0, margin.Right, zeroPoint);
                    }
                    else
                    {
                        this.RectPeak.VerticalAlignment = System.Windows.VerticalAlignment.Top;
                        this.RectPeak.Margin = new Thickness(margin.Left, zeroPoint, margin.Right, 0);
                    }
                }
                else
                {
                    this.RectValue.Height = (BoundValue(this.dataValue) - this.minValue) * pixelsPerUnit;
                    this.RectPeak.Height = (BoundValue(this.dataValuePeak) - this.minValue) * pixelsPerUnit;
                    if (this.direction == BarControl.BarControlDirection.Up)
                    {
                        this.RectValue.VerticalAlignment = System.Windows.VerticalAlignment.Bottom;
                        this.RectPeak.VerticalAlignment = System.Windows.VerticalAlignment.Bottom;
                    }
                    else
                    {
                        this.RectValue.VerticalAlignment = System.Windows.VerticalAlignment.Top;
                        this.RectPeak.VerticalAlignment = System.Windows.VerticalAlignment.Top;
                    }
                }
            }
            else
            {
                // Error states, render full size rectangle!
                this.RectValue.Height = fullHeight;
                this.RectPeak.Visibility = Visibility.Collapsed;
                this.LabelValue.Visibility = Visibility.Collapsed;
                this.BorderValue.Visibility = Visibility.Collapsed;
                this.ButtonPeak.Visibility = Visibility.Collapsed;
            }

            if (this.modifyValue)
            {
                this.TextBlockPeak.Text = string.Format("{0:0.00}", this.dataValuePeak / 1000.0);
            }
            else
            {
                this.TextBlockPeak.Text = this.dataValuePeak.ToString();
            }

            double rectIdealMin = (this.minValueIdeal - this.minValue) * pixelsPerUnit;
            double rectOKMin = (this.minValueOK - this.minValue) * pixelsPerUnit;
            if (this.direction == BarControl.BarControlDirection.Up)
            {
                this.RectIdeal.VerticalAlignment = System.Windows.VerticalAlignment.Bottom;
                this.RectOK.VerticalAlignment = System.Windows.VerticalAlignment.Bottom;
                this.RectIdeal.Margin = new Thickness(4, 0, 4, rectIdealMin-1);
                this.RectOK.Margin = new Thickness(4, 0, 4, rectOKMin-1);
            }
            else
            {
                this.RectIdeal.VerticalAlignment = System.Windows.VerticalAlignment.Top;
                this.RectOK.VerticalAlignment = System.Windows.VerticalAlignment.Top;
                this.RectIdeal.Margin = new Thickness(4, rectIdealMin-1, 4, 0);
                this.RectOK.Margin = new Thickness(4, rectOKMin-1, 4, 0);
            }
            this.RectIdeal.Height = ((this.maxValueIdeal - this.minValueIdeal) * pixelsPerUnit) + 1;
            this.RectOK.Height    = ((this.maxValueOK - this.minValueOK) * pixelsPerUnit) + 1;
        }

        #endregion // Graph Drawing

        #region UserControl Events
        /// <summary>
        /// Callback for updating the graph display on screen resizes, repaints and dependency property updates.
        /// </summary>
        /// <param name="sender">Object where event originated.</param>
        /// <param name="e">The event data.</param>
		private void OnLayoutUpdated(object sender, System.EventArgs e)
		{
            System.Windows.Deployment.Current.Dispatcher.BeginInvoke(this.RenderGraph);
        }
        #endregion // UserControl Events

        /// <summary>
        /// Compare the value provided by the min/max values of the gauge
        /// </summary>
        /// <param name="data">Value to compare</param>
        /// <returns>Bound to within min/max</returns>
        private int BoundValue(int data)
        {
            if (data > this.maxValue)
            {
                data = this.maxValue;
            }
            else if (data < this.minValue)
            {
                data = this.minValue;
            }
            return data;
        }
    }
}
