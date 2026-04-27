/* 
 * Popup.xaml.cs
 * 
 * Mimic screen popup for displaying bar charts for the selected and adjacent cylinders.
 * C# partial implementation of Popup.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 09/02/2012
 */

using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Media;

namespace XTS.Controls
{
    /// <summary>
    /// Popup control for displaying sensor / cylinder data.
    /// </summary>
	public partial class Popup : UserControl
	{
        /// <summary>
        /// List of cylinder indexes to display.
        /// </summary>
		private List<uint> cylinders = null;

        /// <summary>
        /// Determines if the each cylinder shows sensor charts as well as the main cylinder chart.
        /// </summary>
		private bool showSensors = true;

        /// <summary>
        /// The cylinder that the popup pertains to.
        /// </summary>
        public uint SelectedCylinder { get; set; }

        /// <summary>
        /// List of distances between the cylinders' charts.
        /// </summary>
        private List <double> spacers = null;

        /// <summary>
        /// Internal data for ShowPreviousButton
        /// </summary>
        //private bool showPreviousButton = true;
		/// <summary>
		/// Enables a button to move popup to the previous cylinders 
		/// </summary>
		public bool ShowPreviousButton
		{
            set
            {
                if (value)
                {
                    buttonPrevious.Visibility = Visibility.Visible;
                }
                else
                {
                    buttonPrevious.Visibility = Visibility.Collapsed;
                }
            }
        }

        /// <summary>
        /// Internal data for ShowNextButton
        /// </summary>
        //private bool showNextButton = true;
        /// <summary>
		/// Enables a button to move popup to the next cylinders
		/// </summary>
		public bool ShowNextButton
		{
			set
			{
                if (value)
                {
                    buttonNext.Visibility = Visibility.Visible;
                }
                else
                {
                    buttonNext.Visibility = Visibility.Collapsed;
                }
			}
		}

        /// <summary>
        /// Default constructor
        /// </summary>
		public Popup()
		{
			// Required to initialize variables
			InitializeComponent();

            // Make invisible!
            this.Opacity = 0;

            this.ScaleWear.HideTitleRow = true;

            uint barscaleWear = 1000;
            uint barscaleDeviation = 1000;
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                barscaleWear = mp.XTSDataSource.General.BarScaleWear;
                barscaleDeviation = mp.XTSDataSource.General.BarScaleDeviation;
            }
            this.ScaleWear.MinValue = -1 * (int)barscaleWear;
            this.ScaleWear.MaxValue = (int)barscaleWear;
            this.ScaleWear.BabyTick = 100;
            this.ScaleWear.MinorTick = 500;
            this.ScaleWear.MajorTick = 1000;
            this.ScaleWear.Legend = null;

            this.ScaleDeviation.MinValue = -1 * (int)barscaleDeviation;
            this.ScaleDeviation.MaxValue = (int)barscaleDeviation;
            this.ScaleDeviation.BabyTick = 250;
            this.ScaleDeviation.MinorTick = 500;
            this.ScaleDeviation.MajorTick = 1000;
            this.ScaleDeviation.Legend = null;
        }

        /// <summary>
        /// Displays the charts for each cylinder all at fixed distances apart.
        /// </summary>
        /// <param name="cylinders">The cylinder indexes to display.</param>
        /// <param name="spacer">A fixed width spacer for all cylinder charts.</param>
		public void ShowPopup(List<uint> cylinders, double spacer)
		{
            List<double> localSpacers = new List<double>();
            // Only add count-1 as we only need spacers inbetween charts
            for (int i=0; i<cylinders.Count-1; i++)
            {
                localSpacers.Add(spacer);
            }
            ShowPopup(cylinders, localSpacers);
		}

        /// <summary>
        /// Displays the charts with each cylinder's charts different spaces apart.
        /// </summary>
        /// <param name="cylinders">The cylinder indexes to display.</param>
        /// <param name="spacers">The spacer between the charts for each cylinder.</param>
        public void ShowPopup(List<uint> cylinders, List<double> spacers)
        {
            this.cylinders = cylinders;
            this.spacers = spacers;
            if ((this.buttonSensors.IsChecked != true) &&
                (this.buttonCylinders.IsChecked != true))
            {
                this.buttonCylinders.IsChecked = true;
            }
            else
            {
                ShowPopup();
            }
        }

        /// <summary>
        /// Constructs the layout of the popup, based on the cylinders and spacers member variables.
        /// </summary>
        /// <remarks>The positioning of the popup is controlled by the main screen itself.</remarks>
        // TODO: Refactor this code!! Lots of repeated similar code here so could be made a lot clearner
        public void ShowPopup()
        {
            ClearGraphs();
            this.StackWear.Clear();
            this.StackNames.Clear();
            this.StackDeviation.Clear();

            if (this.cylinders != null)
            {
                MainPage mp = (MainPage)MainPage.GetInstance();
                if (mp != null)
                {
                    XTSEngine engine = mp.XTSDataSource.EngineData;

                    for (int i = 0; i < this.cylinders.Count; i++)
                    {
                        uint index = this.cylinders[i];
                        try
                        {
                            XTSCylinder cylinder = engine.FindCylinder(index);

                            // Create main wear bar charts
                            BarControl bcCylinder = new BarControl();
                            bcCylinder.MinValue = -1*(int)mp.XTSDataSource.General.BarScaleWear;
                            bcCylinder.MaxValue = (int)mp.XTSDataSource.General.BarScaleWear;
                            bcCylinder.SlowdownThreshold = engine.SlowdownThreshold;
                            bcCylinder.AlarmThreshold = engine.CylinderAlarmThreshold;
                            bcCylinder.HideTitleRow = true;
                            bcCylinder.ShowSlowdown = false;
                            bcCylinder.ShowAlarm = false;
                            bcCylinder.ShowTopValue = !this.showSensors;
                            bcCylinder.Direction = BarControl.BarControlDirection.Down;
                            this.BindData(cylinder, bcCylinder);

                            BarControl bcSensor0 = null;
                            BarControl bcSensor1 = null;
                            if (this.showSensors)
                            {
                                bcSensor0 = new BarControl();
                                bcSensor0.MinValue = -1 * (int)mp.XTSDataSource.General.BarScaleWear;
                                bcSensor0.MaxValue = (int)mp.XTSDataSource.General.BarScaleWear;
                                bcSensor0.SlowdownThreshold = engine.SlowdownThreshold;
                                bcSensor0.AlarmThreshold = engine.AlarmThreshold;
                                bcSensor0.HideTitleRow = true;
                                bcSensor0.ShowTopValue = true;
                                bcSensor0.Direction = BarControl.BarControlDirection.Down;
                                this.BindDataSensor(cylinder.Sensors[0], bcSensor0);

                                bcSensor1 = new BarControl();
                                bcSensor1.MinValue = -1 * (int)mp.XTSDataSource.General.BarScaleWear;
                                bcSensor1.MaxValue = (int)mp.XTSDataSource.General.BarScaleWear;
                                bcSensor1.SlowdownThreshold = engine.SlowdownThreshold;
                                bcSensor1.AlarmThreshold = engine.AlarmThreshold;
                                bcSensor1.HideTitleRow = true;
                                bcSensor1.ShowTopValue = true;
                                bcSensor1.Direction = BarControl.BarControlDirection.Down;
                                this.BindDataSensor(cylinder.Sensors[1], bcSensor1);
                            }

                            this.ScaleWear.Direction = BarControl.BarControlDirection.Down;

                            if (this.showSensors)
                            {
                                this.StackWear.Children.Add(bcSensor0);
                            }
                            this.StackWear.Children.Add(bcCylinder);
                            if (this.showSensors)
                            {
                                this.StackWear.Children.Add(bcSensor1);
                            }

                            // Create deviation bar charts
                            BarControl bcCylinderD = new BarControl();
                            bcCylinderD.MinValue = -1*(int)mp.XTSDataSource.General.BarScaleDeviation;
                            bcCylinderD.MaxValue = (int)mp.XTSDataSource.General.BarScaleDeviation;
                            bcCylinderD.SlowdownThreshold = engine.SlowdownDeviationThreshold;
                            bcCylinderD.AlarmThreshold = engine.CylinderAlarmThreshold;
                            bcCylinderD.ShowSlowdown = false;
                            bcCylinderD.ShowTopValue = !this.showSensors;
                            bcCylinderD.Direction = BarControl.BarControlDirection.Up;
                            this.BindDataDeviation(cylinder, bcCylinderD);

                            BarControl bcSensor0D = null;
                            BarControl bcSensor1D = null;
                            if (this.showSensors)
                            {
                                bcSensor0D = new BarControl();
                                bcSensor0D.MinValue = -1 * (int)mp.XTSDataSource.General.BarScaleDeviation;
                                bcSensor0D.MaxValue = (int)mp.XTSDataSource.General.BarScaleDeviation;
                                bcSensor0D.SlowdownThreshold = engine.SlowdownDeviationThreshold;
                                bcSensor0D.AlarmThreshold = engine.AlarmDeviationThreshold;
                                bcSensor0D.ShowTopValue = true;
                                bcSensor0D.Direction = BarControl.BarControlDirection.Up;
                                this.BindDataSensorDeviation(cylinder.Sensors[0], bcSensor0D);

                                bcSensor1D = new BarControl();
                                bcSensor1D.MinValue = -1 * (int)mp.XTSDataSource.General.BarScaleDeviation;
                                bcSensor1D.MaxValue = (int)mp.XTSDataSource.General.BarScaleDeviation;
                                bcSensor1D.SlowdownThreshold = engine.SlowdownDeviationThreshold;
                                bcSensor1D.AlarmThreshold = engine.AlarmDeviationThreshold;
                                bcSensor1D.ShowTopValue = true;
                                bcSensor1D.Direction = BarControl.BarControlDirection.Up;
                                this.BindDataSensorDeviation(cylinder.Sensors[1], bcSensor1D);
                            }
                            this.ScaleDeviation.Direction = BarControl.BarControlDirection.Up;

                            if (this.showSensors)
                            {
                                this.StackDeviation.Children.Add(bcSensor0D);
                            }
                            this.StackDeviation.Children.Add(bcCylinderD);
                            if (this.showSensors)
                            {
                                this.StackDeviation.Children.Add(bcSensor1D);
                            }

                            // Add to bar graph list to keep track so we can clear bind
                            this.barGraphs.Add(bcCylinder);
                            this.barGraphs.Add(bcCylinderD);
                            if (this.showSensors)
                            {
                                this.barGraphs.Add(bcSensor0);
                                this.barGraphs.Add(bcSensor1);
                                this.barGraphs.Add(bcSensor0D);
                                this.barGraphs.Add(bcSensor1D);
                            }

                            // Create name header
                            TextBlock labelName = new TextBlock();
                            labelName.HorizontalAlignment = System.Windows.HorizontalAlignment.Center;
                            labelName.VerticalAlignment = System.Windows.VerticalAlignment.Center;
                            labelName.Foreground = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTText"]);
                            labelName.Text = LocalizedResources.GetResourceString("XTSStringCylIndex", new object[] { cylinder.Index });
                            labelName.FontSize = 11;
                            labelName.Margin = new Thickness(-2, 0, -2, 0);
                            labelName.FontWeight = FontWeights.Bold;
                            labelName.TextWrapping = TextWrapping.Wrap;
                            labelName.TextAlignment = TextAlignment.Center;
                            labelName.IsHitTestVisible = false;
                            this.StackNames.Children.Add(labelName);

                            // If it's not the last cylinder, then add a spacer
                            if (i != this.cylinders.Count - 1)
                            {
                                if ((this.spacers != null) && (i < this.spacers.Count))
                                {
                                    double spacer = this.spacers[i];
                                    this.StackNames.AddSpacer((uint)this.StackNames.Children.Count, spacer);
                                    this.StackWear.AddSpacer((uint)this.StackWear.Children.Count, spacer);
                                    this.StackDeviation.AddSpacer((uint)this.StackDeviation.Children.Count, spacer);
                                }
                            }
                        }
                        catch (ArgumentOutOfRangeException)
                        {
                            // Cylinder index not found, no problem, move on to the next one
                        }
                    }
                }
                this.Visibility = Visibility.Visible;
                VisualStateManager.GoToState(this, "Show", true);
            }
        }

        /// <summary>
        /// Hides the popup.
        /// </summary>
		public void ClosePopup()
		{
            VisualStateManager.GoToState(this, "Hide", true); 
            this.Visibility = Visibility.Collapsed;
		}

        /// <summary>
        /// Connects the barcontrol to the specified cylinder's wear data.
        /// </summary>
        /// <param name="cylinder">The cylinder to bind to.</param>
        /// <param name="barControl">The bar control to display the cylinder's data.</param>
        private void BindData(XTSCylinder cylinder, BarControl barControl)
        {
            Binding e = null;

            e = new Binding();
            e.Source = cylinder;
            e.Path = new PropertyPath("Status");
            e.Mode = BindingMode.OneWay;
            barControl.SetBinding(BarControl.StatusProperty, e);

            e = new Binding();
            e.Source = cylinder;
            e.Path = new PropertyPath("Wear");
            e.Mode = BindingMode.OneWay;
            barControl.SetBinding(BarControl.ValueProperty, e);
        }

        /// <summary>
        /// Connects the barcontrol to the specified cylinder's deviation data.
        /// </summary>
        /// <param name="cylinder">The cylinder to bind to.</param>
        /// <param name="barControl">The bar control to display the cylinder's data.</param>
        private void BindDataDeviation(XTSCylinder cylinder, BarControl barControl)
        {
            Binding e = null;

            e = new Binding();
            e.Source = cylinder;
            e.Path = new PropertyPath("DeviationStatus");
            e.Mode = BindingMode.OneWay;
            barControl.SetBinding(BarControl.StatusProperty, e);

            e = new Binding();
            e.Source = cylinder;
            e.Path = new PropertyPath("Deviation");
            e.Mode = BindingMode.OneWay;
            barControl.SetBinding(BarControl.ValueProperty, e);
        }

        /// <summary>
        /// Connects the barcontrol to the specified sensor's wear data.
        /// </summary>
        /// <param name="sensor">The sensor to bind to.</param>
        /// <param name="barControl">The bar control to display the sensor's data.</param>
        private void BindDataSensor(XTSSensor sensor, BarControl barControl)
        {
            Binding e = null;

            e = new Binding();
            e.Source = sensor;
            e.Path = new PropertyPath("Status");
            e.Mode = BindingMode.OneWay;
            barControl.SetBinding(BarControl.StatusProperty, e);

            e = new Binding();
            e.Source = sensor;
            e.Path = new PropertyPath("Wear");
            e.Mode = BindingMode.OneWay;
            barControl.SetBinding(BarControl.ValueProperty, e);
        }

        /// <summary>
        /// Connects the barcontrol to the specified sensor's deviation data.
        /// </summary>
        /// <param name="sensor">The sensor to bind to.</param>
        /// <param name="barControl">The bar control to display the sensor's data.</param>
        private void BindDataSensorDeviation(XTSSensor sensor, BarControl barControl)
        {
            Binding e = null;

            e = new Binding();
            e.Source = sensor;
            e.Path = new PropertyPath("DeviationStatus");
            e.Mode = BindingMode.OneWay;
            barControl.SetBinding(BarControl.StatusProperty, e);

            e = new Binding();
            e.Source = sensor;
            e.Path = new PropertyPath("Deviation");
            e.Mode = BindingMode.OneWay;
            barControl.SetBinding(BarControl.ValueProperty, e);

            barControl.Title = String.Format(".{0}", sensor.Index);
        }

        /// <summary>
        /// Callback for pressing the trends button.
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">An RoutedEventArgs that contains the event data.</param>
		private void OnButtonTrends_Click(object sender, System.Windows.RoutedEventArgs e)
		{
            // Go to the trends screen.
            if (this.buttonCylinders.IsChecked == true)
            {
                Trends.Instance.ShowInsertIntoTrend(new XTSTrendCylinder(XTS.LocalizedResources.GetResourceString("XTSStringTrendDefaultCylinder",
                    new object[] { this.SelectedCylinder }),
                    this.SelectedCylinder));
            }
            else
            {
                Trends.Instance.ShowInsertIntoTrend(new XTSTrendDetail[] {
                    new XTSTrendSensor(XTS.LocalizedResources.GetResourceString("XTSStringTrendDefaultSensor", new object[] { this.SelectedCylinder, 1 }), this.SelectedCylinder, 1),
                    new XTSTrendSensor(XTS.LocalizedResources.GetResourceString("XTSStringTrendDefaultSensor", new object[] { this.SelectedCylinder, 2 }), this.SelectedCylinder, 2)
                });
            }
        }

        /// <summary>
        /// Callback for when the close button is pressed.
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">An RoutedEventArgs that contains the event data.</param>
        private void OnButtonClose_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            // Just close the popup
        	ClosePopup();
        }

        /// <summary>
        /// Callback for next button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonNext_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            Mimic.Instance.ShowCylinderPopup(this.cylinders[this.cylinders.Count-1], 0);
        }

        /// <summary>
        /// Callback for previous button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonPrevious_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            Mimic.Instance.ShowCylinderPopup(this.cylinders[0], 0);
        }

        /// <summary>
        /// Callback for when the swap between sensors/cylinders button is pressed.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonCylinders_Checked(object sender, System.Windows.RoutedEventArgs e)
        {
            this.showSensors = false;
            ShowPopup();
        }

        /// <summary>
        /// Callback for when the swap between sensors/cylinders button is pressed.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonSensors_Checked(object sender, System.Windows.RoutedEventArgs e)
        {
            this.showSensors = true;
            ShowPopup();
        }

        private void Popup_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
        	// TODO: Add event handler implementation here.
        }

        private List<BarControl> barGraphs = new List<BarControl>(3);
        private void Popup_Unloaded(object sender, System.Windows.RoutedEventArgs e)
        {
            ClearGraphs();
        }

        private void ClearGraphs()
        {
            foreach (BarControl barGraph in this.barGraphs)
            {
                barGraph.ClearValue(BarControl.StatusProperty);
                barGraph.ClearValue(BarControl.ValueProperty);
            }
            this.barGraphs.Clear();
        }

        public bool SPUCommsOK
        {
            set
            {
                if (value)
                {
                    this.StackWear.Opacity = 1.0;
                    this.StackDeviation.Opacity = 1.0;
                }
                else
                {
                    this.StackWear.Opacity = 0.5;
                    this.StackDeviation.Opacity = 0.5;
                }
            }
        }

        public bool CommsOK
        {
            set
            {
                this.button1.IsEnabled = value;
            }
        }
    }
}
