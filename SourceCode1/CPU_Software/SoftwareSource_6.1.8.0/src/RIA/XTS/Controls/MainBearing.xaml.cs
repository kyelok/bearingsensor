/* 
 * MainBearing.xaml.cs
 * 
 * Displays the main bearing state within the Mimic engine representation.
 * C# partial implementation of MainBearing.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 08/02/2012
 */

using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace XTS.Controls
{
    /// <summary>
    /// Control for displaying a main bearing state on the engine mimic screen.
    /// </summary>
	public partial class MainBearing : UserControl
	{
        /// <summary>
        /// Represents if this main bearing is on the outside edge of a cam shaft, or between to piston cylinders.
        /// </summary>
        public enum EngineBlockPosition
        {
            Mid,
            Right,
            Left,
            RightTimingChain,
            LeftTimingChain
        }

        #region Status
        /// <summary>
        /// Internal data for Status
        /// </summary>
        /// <remarks>Not modified by property itself, changed by callback for associated Dependency Property</remarks>
        private XTSSensorStatus status = XTSSensorStatus.Normal;
        /// <summary>
        /// Property for aggregate Status.
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
        /// Dependency property for creating callbacks for Cylinder Status property.
        /// </summary>
        public static readonly DependencyProperty StatusProperty = DependencyProperty.Register(
            "Status", typeof(XTSSensorStatus), typeof(MainBearing), new PropertyMetadata(XTSSensorStatus.Disabled, OnStatusPropertyChanged));

        /// <summary>
        /// Callback for changed Cylinder status dependency property
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnStatusPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            MainBearing mainBearingUI = dependencyObject as MainBearing;
            mainBearingUI.SetStatus((XTSSensorStatus)e.NewValue);
        }

        /// <summary>
        /// Called by the dependency property callback for the Cylinder status display when it is modified.
        /// </summary>
        /// <param name="status"></param>
        public void SetStatus(XTSSensorStatus status)
        {
            Color statusColor = XTSSensorColor.FromStatus(status);
            this.status = status;
            this.Bearing.Fill = new SolidColorBrush(statusColor);
        }
        #endregion // Status

        /// <summary>
        /// Configures the appearance of the main bearing based on its position in the engine
        /// </summary>
        public EngineBlockPosition Position
        {
            set
            {
                switch (value)
                {
                    case EngineBlockPosition.Left:
                        {
                            this.EngineBlockLeft.Visibility = Visibility.Visible;
                            this.EngineBlockMid.Visibility = Visibility.Collapsed;
                            this.EngineBlockRight.Visibility = Visibility.Collapsed;
                            this.EngineBlockCylinderEdgeLeft.Visibility = Visibility.Collapsed;
                            this.EngineBlockCylinderEdgeLeftTop.Visibility = Visibility.Collapsed;
                            this.EngineBlockCylinderEdgeRight.Visibility = Visibility.Visible;
                            this.EngineBlockCylinderEdgeRightTop.Visibility = Visibility.Visible;
                            break;
                        }

                    case EngineBlockPosition.Right:
                        {
                            this.EngineBlockLeft.Visibility = Visibility.Collapsed;
                            this.EngineBlockMid.Visibility = Visibility.Collapsed;
                            this.EngineBlockRight.Visibility = Visibility.Visible;
                            this.EngineBlockCylinderEdgeLeft.Visibility = Visibility.Visible;
                            this.EngineBlockCylinderEdgeLeftTop.Visibility = Visibility.Visible;
                            this.EngineBlockCylinderEdgeRight.Visibility = Visibility.Collapsed;
                            this.EngineBlockCylinderEdgeRightTop.Visibility = Visibility.Collapsed;
                            break;
                        }
                    case EngineBlockPosition.LeftTimingChain:
                        {
                            this.EngineBlockLeft.Visibility = Visibility.Collapsed;
                            this.EngineBlockMid.Visibility = Visibility.Visible;
                            this.EngineBlockRight.Visibility = Visibility.Collapsed;
                            this.EngineBlockCylinderEdgeLeft.Visibility = Visibility.Collapsed;
                            this.EngineBlockCylinderEdgeLeftTop.Visibility = Visibility.Collapsed;
                            this.EngineBlockCylinderEdgeRight.Visibility = Visibility.Visible;
                            this.EngineBlockCylinderEdgeRightTop.Visibility = Visibility.Visible;
                            break;
                        }

                    case EngineBlockPosition.RightTimingChain:
                        {
                            this.EngineBlockLeft.Visibility = Visibility.Collapsed;
                            this.EngineBlockMid.Visibility = Visibility.Visible;
                            this.EngineBlockRight.Visibility = Visibility.Collapsed;
                            this.EngineBlockCylinderEdgeLeft.Visibility = Visibility.Visible;
                            this.EngineBlockCylinderEdgeLeftTop.Visibility = Visibility.Visible;
                            this.EngineBlockCylinderEdgeRight.Visibility = Visibility.Collapsed;
                            this.EngineBlockCylinderEdgeRightTop.Visibility = Visibility.Collapsed;
                            break;
                        }
                    case EngineBlockPosition.Mid:
                    default:
                        {
                            this.EngineBlockLeft.Visibility = Visibility.Collapsed;
                            this.EngineBlockMid.Visibility = Visibility.Visible;
                            this.EngineBlockRight.Visibility = Visibility.Collapsed;
                            this.EngineBlockCylinderEdgeLeft.Visibility = Visibility.Visible;
                            this.EngineBlockCylinderEdgeLeftTop.Visibility = Visibility.Visible;
                            this.EngineBlockCylinderEdgeRight.Visibility = Visibility.Visible;
                            this.EngineBlockCylinderEdgeRightTop.Visibility = Visibility.Visible;
                            break;
                        }
                }
            }
        }

        /// <summary>
        /// Sets the bearing number to display
        /// </summary>
        public uint Index
        {
            set
            {
                this.TextBlockBearing.Text = XTS.LocalizedResources.GetResourceString("XTSStringMainBearing0Value", new object[] { value });
            }
        }

        /// <summary>
        /// Default Constructor
        /// </summary>
		public MainBearing()
		{
			// Required to initialize variables
			InitializeComponent();            
		}
        public void setToolTip(string toolTip, bool display)
        {
            this.ToolTipName.Content = toolTip;
            if (display == true) { this.ToolTipName.Visibility = Visibility.Visible; }
            else { this.ToolTipName.Visibility = Visibility.Collapsed; }
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
            "Value", typeof(int), typeof(MainBearing), new PropertyMetadata(0, OnValuePropertyChanged));

        /// <summary>
        /// Callback for the value dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnValuePropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            MainBearing UniBarControl = dependencyObject as MainBearing;
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