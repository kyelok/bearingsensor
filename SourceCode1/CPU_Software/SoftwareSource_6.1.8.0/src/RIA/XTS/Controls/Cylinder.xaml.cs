/* 
 * Cylinder.xaml.cs
 * 
 * Displays a cylinder and associated sensor states in the engine mimic.
 * Can be configured to display with the crank either up or down.
 * C# partial implementation of Cylinder.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 20/01/2012
 */

using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace XTS.Controls
{
    /// <summary>
    /// Control for displaying status of sensors, bearing, aggregate state etc. within a cylinder in
    /// the mimic engine display.
    /// </summary>
	public partial class Cylinder : UserControl
    {
        /// <summary>
        /// Default state to set of bearings/sensors etc.
        /// </summary>
        private const XTSSensorStatus DEFAULT_STATUS = XTSSensorStatus.Disabled;

        #region Dependency Properties for Data Binding

        #region Sensors Status
        #region Sensor0Status
        /// <summary>
        /// Internal data for Sensor0Status
        /// </summary>
        /// <remarks>Not modified by property itself, changed by callback for associated Dependency Property</remarks>
        private XTSSensorStatus sensor0Status = XTSSensorStatus.Normal;
        /// <summary>
        /// Property for left sensor status display.
        /// </summary>
        public XTSSensorStatus Sensor0Status
        {
            set
            {
                SetValue(Sensor0StatusProperty, value);
            }
            get
            {
                return (XTSSensorStatus)GetValue(Sensor0StatusProperty);
            }
        }

        /// <summary>
        /// Dependency property for creating callbacks for left sensor status property.
        /// </summary>
        public static readonly DependencyProperty Sensor0StatusProperty = DependencyProperty.Register(
            "Sensor0Status", typeof(XTSSensorStatus), typeof(Cylinder), new PropertyMetadata(Cylinder.DEFAULT_STATUS, OnSensor0StatusPropertyChanged));

        /// <summary>
        /// Callback for changed left sensor dependency property
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnSensor0StatusPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            Cylinder cylinderUI = dependencyObject as Cylinder;
            cylinderUI.SetSensorStatus((XTSSensorStatus)e.NewValue, 0);
        }
        
        #endregion // Sensor0Status

        #region Sensor1Status
        /// <summary>
        /// Internal data for Sensor1Status
        /// </summary>
        /// <remarks>Not modified by property itself, changed by callback for associated Dependency Property</remarks>
        private XTSSensorStatus sensor1Status = XTSSensorStatus.Normal;
        /// <summary>
        /// Property for right sensor status display.
        /// </summary>
        public XTSSensorStatus Sensor1Status
        {
            set
            {
                SetValue(Sensor1StatusProperty, value);
            }
            get
            {
                return (XTSSensorStatus)GetValue(Sensor1StatusProperty);
            }
        }

        /// <summary>
        /// Dependency property for creating callbacks for right sensor status property.
        /// </summary>
        public static readonly DependencyProperty Sensor1StatusProperty = DependencyProperty.Register(
            "Sensor1Status", typeof(XTSSensorStatus), typeof(Cylinder), new PropertyMetadata(Cylinder.DEFAULT_STATUS, OnSensor1StatusPropertyChanged));

        /// <summary>
        /// Callback for changed right sensor dependency property
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnSensor1StatusPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            Cylinder cylinderUI = dependencyObject as Cylinder;
            cylinderUI.SetSensorStatus((XTSSensorStatus)e.NewValue, 1);
        }
        #endregion // Sensor1Status

        /// <summary>
        /// Updates the status of the specified sensor status display.  Called by the dependency property callback.
        /// </summary>
        /// <param name="status">The status to display.</param>
        /// <param name="sensor">The sensor to update, 0 = left, 1 = right</param>
        public void SetSensorStatus(XTSSensorStatus status, uint sensor)
        {
            Color statusColor = XTSSensorColor.FromStatus(status);
            if (sensor == 0)
            {
                sensor0Status = status;
                this.Sensor0.Fill = new SolidColorBrush(statusColor);
            }
            else if (sensor == 1)
            {
                sensor1Status = status;
                this.Sensor1.Fill = new SolidColorBrush(statusColor);
            }
        }
        #endregion

        #region Cylinder Status
        /// <summary>
        /// Internal data for CylinderStatus
        /// </summary>
        /// <remarks>Not modified by property itself, changed by callback for associated Dependency Property</remarks>
        private XTSSensorStatus cylinderStatus = XTSSensorStatus.Normal;
        /// <summary>
        /// Property for aggregate Cylinder Status.
        /// </summary>
        public XTSSensorStatus CylinderStatus
        {
            set
            {
                SetValue(CylinderStatusProperty, value);
            }
            get
            {
                return (XTSSensorStatus)GetValue(CylinderStatusProperty);
            }
        }

        /// <summary>
        /// Dependency property for creating callbacks for Cylinder Status property.
        /// </summary>
        public static readonly DependencyProperty CylinderStatusProperty = DependencyProperty.Register(
            "CylinderStatus", typeof(XTSSensorStatus), typeof(Cylinder), new PropertyMetadata(Cylinder.DEFAULT_STATUS, OnCylinderPropertyChanged));

        /// <summary>
        /// Callback for changed Cylinder status dependency property
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnCylinderPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            Cylinder cylinderUI = dependencyObject as Cylinder;
            cylinderUI.SetCylinderStatus((XTSSensorStatus)e.NewValue);
        }

        /// <summary>
        /// Called by the dependency property callback for the Cylinder status display when it is modified.
        /// </summary>
        /// <param name="status"></param>
        public void SetCylinderStatus(XTSSensorStatus status)
        {
            Color statusColor = XTSSensorColor.FromStatus(status);
            this.cylinderStatus = status;
            this.CylinderState.Fill = new SolidColorBrush(statusColor);
        }
        #endregion // Cylinder Status

        #region Crank Pin Bearing
        /// <summary>
        /// Internal data for BearingStatus
        /// </summary>
        /// <remarks>Not modified by property itself, changed by callback for associated Dependency Property</remarks>
        private XTSSensorStatus bearingStatus = XTSSensorStatus.Normal;
        /// <summary>
        /// Property for Crank Pin Bearing Status
        /// </summary>
        public XTSSensorStatus BearingStatus
        {
            set
            {
                SetValue(BearingStatusProperty, value);
            }
            get
            {
                return (XTSSensorStatus)GetValue(BearingStatusProperty);
            }
        }

        /// <summary>
        /// Dependency property for creating callbacks for Bearing property.
        /// </summary>
        public static readonly DependencyProperty BearingStatusProperty = DependencyProperty.Register(
            "BearingStatus", typeof(XTSSensorStatus), typeof(Cylinder), new PropertyMetadata(Cylinder.DEFAULT_STATUS, OnBearingPropertyChanged));

        /// <summary>
        /// Callback for changed Bearing dependency property
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnBearingPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            Cylinder cylinderUI = dependencyObject as Cylinder;
            cylinderUI.SetBearingStatus((XTSSensorStatus)e.NewValue);
        }

        /// <summary>
        /// Called by the dependency property callback for the Bearing display when it is modified.
        /// </summary>
        /// <param name="status"></param>
        public void SetBearingStatus(XTSSensorStatus status)
        {
            Color statusColor = XTSSensorColor.FromStatus(status);
            this.bearingStatus = status;
            this.CrankpinDown.Fill = new SolidColorBrush(statusColor);
            this.CrankpinUp.Fill = new SolidColorBrush(statusColor);
        }
        #endregion // Crank Pin Bearing

        #region Guide Crosshead
        /// <summary>
        /// Internal data for Crosshead Status on guide shoe.
        /// </summary>
        /// <remarks>Not modified by property itself, changed by callback for associated Dependency Property</remarks>
        private XTSSensorStatus crossheadStatus = XTSSensorStatus.Normal;
        /// <summary>
        /// Property for Crosshead Status
        /// </summary>
        public XTSSensorStatus CrossheadStatus
        {
            set
            {
                SetValue(CrossheadStatusProperty, value);
            }
            get
            {
                return (XTSSensorStatus)GetValue(CrossheadStatusProperty);
            }
        }

        /// <summary>
        /// Dependency property for creating callbacks for Crosshead property.
        /// </summary>
        public static readonly DependencyProperty CrossheadStatusProperty = DependencyProperty.Register(
            "CrossheadStatus", typeof(XTSSensorStatus), typeof(Cylinder), new PropertyMetadata(Cylinder.DEFAULT_STATUS, OnCrossheadPropertyChanged));

        /// <summary>
        /// Callback for changed Crosshead dependency property
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnCrossheadPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            Cylinder cylinderUI = dependencyObject as Cylinder;
            cylinderUI.SetCrossheadStatus((XTSSensorStatus)e.NewValue);
        }

        /// <summary>
        /// Called by the dependency property callback for the Crosshead display when it is modified.
        /// </summary>
        /// <param name="status">Status to display</param>
        public void SetCrossheadStatus(XTSSensorStatus status)
        {
            Color statusColor = XTSSensorColor.FromStatus(status);
            this.crossheadStatus = status;
            this.CrossheadDown.Fill = new SolidColorBrush(statusColor);
            this.CrossheadUp.Fill = new SolidColorBrush(statusColor);
        }
        #endregion // Guide Crosshead

        #endregion // Dependency Properties for Data Binding

        /// <summary>
        /// Internal data for Index
        /// </summary>
        private uint index = 0;
        /// <summary>
        /// The index of the cylinder being displayed.  Affects the labels and wether the
        /// crank is in the up or down position.
        /// </summary>
        public uint Index
		{
			set
			{
                this.index = value;
                IXTSDataProvider xts = ((MainPage)MainPage.GetInstance()).XTSDataSource;

                this.LabelIndex.Content = LocalizedResources.GetResourceString("XTSStringCylIndex", new object[] { value });
                this.LabelPistonUpIndex.Content = String.Format("{0}", value);
                this.LabelPistonDownIndex.Content = String.Format("{0}", value);
                if (xts.EngineData.CylinderReverse == true)
                {
                    this.LabelSensor0.Content = String.Format(".2");
                    this.LabelSensor1.Content = String.Format(".1");
                }
                else
                {
                    this.LabelSensor0.Content = String.Format(".1");
                    this.LabelSensor1.Content = String.Format(".2");
                }
				Visibility crankUp = Visibility.Visible;
				Visibility crankDown = Visibility.Collapsed;
				if (((value % 2) == 0))
				{
					crankUp = Visibility.Collapsed;
					crankDown = Visibility.Visible;
				}
				this.GridPistonUp.Visibility      = crankUp;
				this.GridCrankUp.Visibility       = crankUp;
				this.GridCrossheadUp.Visibility   = crankUp;
				this.GridPistonDown.Visibility    = crankDown;
				this.GridCrankDown.Visibility     = crankDown;
				this.GridCrossheadDown.Visibility = crankDown;
			}
            get
            {
                return this.index;
            }
		}

        /// <summary>
        /// Default constructor.
        /// </summary>
        public Cylinder()
		{
			// Required to initialize variables
			InitializeComponent();

            // Refresh status colour to default on init
            SetCylinderStatus(Cylinder.DEFAULT_STATUS);
            SetSensorStatus(Cylinder.DEFAULT_STATUS, 0);
            SetSensorStatus(Cylinder.DEFAULT_STATUS, 1);
            SetCrossheadStatus(Cylinder.DEFAULT_STATUS);
            SetBearingStatus(Cylinder.DEFAULT_STATUS);

            //this.ToolTipName.Content = toolTip;
        }

        public void setToolTip(string toolTip, bool display)
        {
            this.ToolTipName.Content = toolTip;
            if (display == true) { this.ToolTipName.Visibility = Visibility.Visible; }
            else { this.ToolTipName.Visibility = Visibility.Collapsed; }
        }
        /// <summary>
        /// Displays the popup over this cylinder
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
        private void ShowPopup(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            Cylinder cd = sender as Cylinder;
            //0 is for cylinder
            Mimic.Instance.ShowCylinderPopup(cd, 0);
        }

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
            "Value", typeof(int), typeof(Cylinder), new PropertyMetadata(0, OnValuePropertyChanged));

        /// <summary>
        /// Callback for the value dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnValuePropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            Cylinder UniBarControl = dependencyObject as Cylinder;
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

        public int GetTempValue()
        {
            return dataValue;
        }
        #endregion // Value Data Bind
	}
}