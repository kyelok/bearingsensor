/* 
 * RPM.xaml.cs
 * 
 * Control for the footer that displays the current engine RPM and direction.
 * C# partial implementation of RPM.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 16/02/2012
 */

using System;
using System.Windows;
using System.Windows.Controls;

namespace XTS.Controls
{
    /// <summary>
    /// Class for displaying the current engine RPM.  The Value should be bound to the engine RPM
    /// within the containing class.
    /// </summary>
	public partial class RPM : UserControl
	{
        #region Direction Data Bind
        /// <summary>
        /// Internal data for Direction.
        /// </summary>
        /// <remarks>This is not actually set by the Value property, which uses the ValueProperty
        /// dependency property to update it.</remarks>
        private XTSEngine.XTSEngineDirection direction = XTSEngine.XTSEngineDirection.Unknown;
        /// <summary>
        /// The current direction.
        /// </summary>
        public XTSEngine.XTSEngineDirection Direction
        {
            set
            {
                SetValue(DirectionProperty, value);
            }
            get
            {
                return (XTSEngine.XTSEngineDirection)GetValue(DirectionProperty);
            }
        }

        /// <summary>
        /// Dependency property for the Value that specifies the direction.
        /// </summary>
        public static readonly DependencyProperty DirectionProperty = DependencyProperty.Register(
            "Direction", typeof(XTSEngine.XTSEngineDirection), typeof(RPM), new PropertyMetadata(XTSEngine.XTSEngineDirection.Unknown, OnDirectionPropertyChanged));

        /// <summary>
        /// Callback from DirectionProperty when it is updated.
        /// </summary>
        /// <param name="dependencyObject">The object that was modified.</param>
        /// <param name="e">The event args, containing old and new values.</param>
        private static void OnDirectionPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            RPM rpmControl = dependencyObject as RPM;
            rpmControl.SetDirection((XTSEngine.XTSEngineDirection)e.NewValue);
        }

        /// <summary>
        /// Sets the value and updates the direction path indicators.
        /// </summary>
        /// <param name="value">The new direction data.</param>
        /// <remarks>This is preferred method of updating the bound data representation on the control.</remarks>
        public void SetDirection(XTSEngine.XTSEngineDirection value)
        {
            // Set internal class value
            this.direction = value;

            UpdateDirection();
        }
        #endregion // Direction Data Bind

        private void UpdateDirection()
        {
            if (this.commsOK)
            {
                // Display the direction
                switch (this.direction)
                {
                    case XTSEngine.XTSEngineDirection.Astern:
                        {
                            this.PathForwards.Visibility = Visibility.Collapsed;
                            this.PathReverse.Visibility = Visibility.Visible;
                            break;
                        }
                    case XTSEngine.XTSEngineDirection.Forward:
                        {
                            this.PathForwards.Visibility = Visibility.Visible;
                            this.PathReverse.Visibility = Visibility.Collapsed;
                            break;
                        }
                    case XTSEngine.XTSEngineDirection.NotSet:
                        {
                            this.PathForwards.Visibility = Visibility.Collapsed;
                            this.PathReverse.Visibility = Visibility.Collapsed;
                            break;
                        }
                    case XTSEngine.XTSEngineDirection.Unknown:
                    default:
                        {
                            this.PathForwards.Visibility = Visibility.Visible;
                            this.PathReverse.Visibility = Visibility.Visible;
                            break;
                        }
                }
            }
            else
            {
                this.PathForwards.Visibility = Visibility.Collapsed;
                this.PathReverse.Visibility = Visibility.Collapsed;
            }
        }

        #region Value Data Bind
        /// <summary>
        /// Internal data for Value.
        /// </summary>
        /// <remarks>This is not actually set by the Value property, which uses the ValueProperty
        /// dependency property to update it.</remarks>
        private int dataValue = 0;
        /// <summary>
        /// The current RPM.
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
        /// Dependency property for the Value that specifies the RPM.
        /// </summary>
        public static readonly DependencyProperty ValueProperty = DependencyProperty.Register(
            "Value", typeof(int), typeof(RPM), new PropertyMetadata(0, OnValuePropertyChanged));

        /// <summary>
        /// Callback from ValueProperty when it is updated.
        /// </summary>
        /// <param name="dependencyObject">The object that was modified.</param>
        /// <param name="e">The event args, containing old and new values.</param>
        private static void OnValuePropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            RPM rpmControl = dependencyObject as RPM;
            rpmControl.SetValue((int)e.NewValue);
        }

        /// <summary>
        /// Sets the value and updates the text control.
        /// </summary>
        /// <param name="value">The new RPM data.</param>
        /// <remarks>This is preferred method of updating the bound data representation on the control.</remarks>
        public void SetValue(int value)
        {
            // Set internal class value
            this.dataValue = value;

            // Update text display
            this.LabelRPM.Content = value.ToString();
        }
        #endregion // Value Data Bind

        /// <summary>
        /// Default constructor.
        /// </summary>
		public RPM()
		{
			// Required to initialize variables
			InitializeComponent();
		}

        private bool commsOK = false;
        public bool CommsOK
        {
            set
            {
                this.commsOK = value;
                if (value)
                {
                    this.LabelRPM.Visibility = System.Windows.Visibility.Visible;
                    this.PathNoComms.Visibility = System.Windows.Visibility.Collapsed;
                }
                else
                {
                    this.LabelRPM.Visibility = System.Windows.Visibility.Collapsed;
                    this.PathNoComms.Visibility = System.Windows.Visibility.Visible;
                }
                UpdateDirection();
            }
        }
	}
}