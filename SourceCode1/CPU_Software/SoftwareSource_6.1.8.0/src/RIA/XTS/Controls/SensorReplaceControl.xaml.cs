/* 
 * SensorReplaceControl.xaml.cs
 * 
 * Displays the state of a sensor and when it was replaced.
 * C# partial implementation of SensorReplaceControl.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 21/03/2012
 */

using System;
using System.Windows;
using System.Windows.Controls;

using AMOTConstants;

using XTS;
using XTS.ChildWindows;

namespace XTS.Controls
{
    /// <summary>
    /// Class for displaying current state of sensor replacement
    /// </summary>
	public partial class SensorReplaceControl : UserControl
	{
        #region Time Total of progress bar data bind
        /// <summary>
        /// Internal data for TimeTotal
        /// </summary>
        /// <remarks>Not modified by property itself, changed by callback for associated Dependency Property</remarks>
        private uint timeTotal = 30000;

        /// <summary>
        /// Total time of current stage (mins), used to size progress bar.
        /// </summary>
        public uint TimeTotal
        {
            set
            {
                this.timeTotal = value;
            }
        }


        /// <summary>
        /// Dependency property for the value updates.
        /// </summary>
        public static readonly DependencyProperty TimeTotalProperty = DependencyProperty.Register(
            "TimeTotal", typeof(uint), typeof(SensorReplaceControl), new PropertyMetadata((uint)30000, OnTimeTotalPropertyChanged));

        /// <summary>
        /// Callback for the TimeRemaining dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnTimeTotalPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            SensorReplaceControl src = dependencyObject as SensorReplaceControl;
            src.SetTimeTotal((uint)e.NewValue);
        }

        /// <summary>
        /// Internal function to be called by the dependency property callback
        /// </summary>
        /// <param name="status">The value to display</param>
        public void SetTimeTotal(uint value)
        {
            // Redrawing of the control is done in RenderGraph, called by the LayoutUpdated event
            // callback.  This is automatically raised when a dependency property is changed so
            // we only need to set the member variable for the status to be used in RenderGraph().
            this.timeTotal = value;
        }
        #endregion // Time Total of progress bar data bind

        #region Date Replaced and Failure Data Bind
        /// <summary>
        /// The Date the sensor failed, modifies the dependency property.
        /// </summary>
        public DateTime? DateFailure
        {
            set
            {
                SetValue(DateFailureProperty, value);
            }
            get
            {
                return (DateTime?)GetValue(DateFailureProperty);
            }
        }

        /// <summary>
        /// Dependency property for the value updates.
        /// </summary>
        public static readonly DependencyProperty DateFailureProperty = DependencyProperty.Register(
            "DateFailure", typeof(DateTime?), typeof(SensorReplaceControl), new PropertyMetadata(null, OnDateFailurePropertyChanged));

        /// <summary>
        /// Callback for the DateReplaced dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnDateFailurePropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            SensorReplaceControl src = dependencyObject as SensorReplaceControl;
            src.SetDateFailure((DateTime?)e.NewValue);
        }

        /// <summary>
        /// Internal function to be called by the dependency property callback
        /// </summary>
        /// <param name="status">The value to display</param>
        public void SetDateFailure(DateTime? value)
        {
            if (value == null)
            {
                this.LabelFailure.Content = "-";
            }
            else
            {
                this.LabelFailure.Content = ((DateTime)value).ToString("dd MMM yyyy");
            }
        }

        /// <summary>
        /// The Date the sensor was replaced, modifies the dependency property.
        /// </summary>
        public DateTime? DateReplaced
        {
            set
            {
                SetValue(DateReplacedProperty, value);
            }
            get
            {
                return (DateTime?)GetValue(DateReplacedProperty);
            }
        }

        /// <summary>
        /// Dependency property for the value updates.
        /// </summary>
        public static readonly DependencyProperty DateReplacedProperty = DependencyProperty.Register(
            "DateReplaced", typeof(DateTime?), typeof(SensorReplaceControl), new PropertyMetadata(null, OnDateReplacedPropertyChanged));

        /// <summary>
        /// Callback for the DateReplaced dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnDateReplacedPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            SensorReplaceControl src = dependencyObject as SensorReplaceControl;
            src.SetDateReplaced((DateTime?)e.NewValue);
        }

        /// <summary>
        /// Internal function to be called by the dependency property callback
        /// </summary>
        /// <param name="status">The value to display</param>
        public void SetDateReplaced(DateTime? value)
        {
            if (value == null)
            {
                this.LabelReplaced.Content = "-";
            }
            else
            {
                this.LabelReplaced.Content = ((DateTime) value).ToString("dd MMM yyyy");
            }
        }
        #endregion // Date Replaced and Failure Data Bind

        #region Time Remaining Data Bind
        /// <summary>
        /// Internal data for TimeRemaining.
        /// </summary>
        /// <remarks>Not modified by property itself, changed by callback for associated Dependency Property</remarks>
        private uint timeRemaining = 0;

        /// <summary>
        /// The Time Remaining to be displayed (mins), modifies the dependency property.
        /// </summary>
        public uint TimeRemaining
        {
            set
            {
                SetValue(TimeRemainingProperty, value);
            }
            get
            {
                return (uint)GetValue(TimeRemainingProperty);
            }
        }

        /// <summary>
        /// Dependency property for the value updates.
        /// </summary>
        public static readonly DependencyProperty TimeRemainingProperty = DependencyProperty.Register(
            "TimeRemaining", typeof(uint), typeof(SensorReplaceControl), new PropertyMetadata((uint) 0, OnTimeRemainingPropertyChanged));

        /// <summary>
        /// Callback for the TimeRemaining dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnTimeRemainingPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            SensorReplaceControl src = dependencyObject as SensorReplaceControl;
            src.SetTimeRemaining((uint)e.NewValue);
        }

        /// <summary>
        /// Internal function to be called by the dependency property callback
        /// </summary>
        /// <param name="status">The value to display</param>
        public void SetTimeRemaining(uint value)
        {
            // Redrawing of the control is done in RenderGraph, called by the LayoutUpdated event
            // callback.  This is automatically raised when a dependency property is changed so
            // we only need to set the member variable for the status to be used in RenderGraph().
            this.timeRemaining = value;

            if (value > 0)
            {
                this.LabelProgress.Content = XTS.LocalizedResources.GetResourceString("XTSStringProgressTimeRemaining",  new object[] { value/60, value % 60 });
            }
            else
            {
                this.LabelProgress.Content = "";
            }
        }
        #endregion // Time Remaining Data Bind

        #region Stage Data Bind
        /// <summary>
        /// Internal data for CurrentStage, set by callback for dependency property
        /// </summary>
        private SensorReplacementStage currentStage = SensorReplacementStage.None;
        /// <summary>
        /// The Time Remaining to be displayed (mins), modifies the dependency property.
        /// </summary>
        public SensorReplacementStage CurrentStage
        {
            set
            {
                SetValue(CurrentStageProperty, value);
            }
            get
            {
                return (SensorReplacementStage)GetValue(CurrentStageProperty);
            }
        }

        /// <summary>
        /// Dependency property for the value updates.
        /// </summary>
        public static readonly DependencyProperty CurrentStageProperty = DependencyProperty.Register(
            "CurrentStage", typeof(SensorReplacementStage), typeof(SensorReplaceControl),
            new PropertyMetadata(SensorReplacementStage.None, OnCurrentStagePropertyChanged));

        /// <summary>
        /// Callback for the TimeRemaining dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnCurrentStagePropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            SensorReplaceControl src = dependencyObject as SensorReplaceControl;
            src.SetCurrentStage((SensorReplacementStage)e.NewValue);
        }

        /// <summary>
        /// Internal function to be called by the dependency property callback
        /// </summary>
        /// <param name="status">The value to display</param>
        public void SetCurrentStage(SensorReplacementStage value)
        {
            bool learningComplete = false;
            // TODO: ? We currently don't update automatically when the learning state changes, but I think in
            // practice this isn't going to be a problem.
			MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                learningComplete = ((mp.XTSDataSource.Learning.CurrentState == XTSLearning.LearningState.Complete) ||
                    (mp.XTSDataSource.Learning.CurrentState == XTSLearning.LearningState.CompleteEnableVerification));
            }
            this.currentStage = value;
            switch (value)
            {
                case SensorReplacementStage.Average500Hours:
                case SensorReplacementStage.Average50Hours:
                    {
                        this.buttonReplace.IsEnabled = true;
                        this.buttonImport.IsEnabled = false;
                        this.buttonSend.IsEnabled = false;
                        this.LabelStage.Content =  XTS.LocalizedResources.GetResourceString("XTSStringCollection");
                        this.buttonReplaceText.Text = XTS.LocalizedResources.GetResourceString("XTSStringCancel");
                        this.RectProgress.Visibility = System.Windows.Visibility.Visible;
                        this.GridProgress.Opacity = 1.0;
                        break;
                    }
                case SensorReplacementStage.EnableInputReplacementData:
                    {
                        this.buttonReplace.IsEnabled = false;
                        this.buttonImport.IsEnabled = true;
                        this.buttonSend.IsEnabled = true;
                        this.LabelStage.Content = XTS.LocalizedResources.GetResourceString("XTSStringComplete");
                        this.buttonReplaceText.Text = XTS.LocalizedResources.GetResourceString("XTSStringReplace");
                        this.RectProgress.Visibility = System.Windows.Visibility.Visible;
                        this.GridProgress.Opacity = 1.0;
                        break;
                    }
                case SensorReplacementStage.EnableSendReplacementData:
                    {
                        this.buttonReplace.IsEnabled = false;
                        this.buttonImport.IsEnabled = false;
                        this.buttonSend.IsEnabled = true;
                        this.LabelStage.Content = XTS.LocalizedResources.GetResourceString("XTSStringSendData"); 
                        this.buttonReplaceText.Text = XTS.LocalizedResources.GetResourceString("XTSStringReplace");
                        this.RectProgress.Visibility = System.Windows.Visibility.Visible;
                        this.GridProgress.Opacity = 1.0;
                        break;
                    }
                case SensorReplacementStage.SlowRoll:
                    {
                        this.buttonReplace.IsEnabled = true;
                        this.buttonImport.IsEnabled = false;
                        this.buttonSend.IsEnabled = false;
                        this.LabelStage.Content = XTS.LocalizedResources.GetResourceString("XTSStringSlowroll");
                        this.buttonReplaceText.Text = XTS.LocalizedResources.GetResourceString("XTSStringCancel");
                        this.RectProgress.Visibility = System.Windows.Visibility.Collapsed;
                        this.GridProgress.Opacity = 1.0;
                        break;
                    }
                case SensorReplacementStage.Cancelled:
                    {
                        this.buttonReplace.IsEnabled = learningComplete;
                        this.buttonImport.IsEnabled = false;
                        this.buttonSend.IsEnabled = false;
                        this.LabelStage.Content = XTS.LocalizedResources.GetResourceString("XTSStringCancelled");
                        this.buttonReplaceText.Text = XTS.LocalizedResources.GetResourceString("XTSStringReplace");
                        this.RectProgress.Visibility = System.Windows.Visibility.Collapsed;
                        this.GridProgress.Opacity = 0.5;
                        break;
                    }
                case SensorReplacementStage.None:
                default:
                    {
                        this.buttonReplace.IsEnabled = learningComplete;
                        this.buttonImport.IsEnabled = false;
                        this.buttonSend.IsEnabled = false;
                        this.LabelStage.Content = XTS.LocalizedResources.GetResourceString("XTSStringReplaceStageNone");
                        this.buttonReplaceText.Text = XTS.LocalizedResources.GetResourceString("XTSStringReplace");
                        this.RectProgress.Visibility = System.Windows.Visibility.Collapsed;
                        this.GridProgress.Opacity = 0.5;
                        break;
                    }
            }
            this.LabelProgress.Visibility = this.RectProgress.Visibility;
        }
        #endregion // Time Remaining Data Bind

        #region Properties/Member Variables

        /// <summary>
        /// Internal data for sensor data
        /// </summary>
        private XTSSensor.XTSSensorID index;

        #endregion // Properties/Member Variables

        /// <summary>
        /// Default control
        /// </summary>
		public SensorReplaceControl(uint cylinder, uint sensor)
		{
			// Required to initialize variables
			InitializeComponent();

            this.index.sensor = sensor;
            this.index.cylinder = cylinder;
            this.LabelTitle.Content = string.Format("{0}.{1}", cylinder, sensor);

            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                foreach (var currentCylinder in mp.XTSDataSource.EngineData.Cylinders)
                {
                    if (currentCylinder.Index == cylinder)
                    {
                        foreach (var currentSensor in currentCylinder.Sensors)
                        {
                            if (currentSensor.Index == sensor)
                            {
                                SetCurrentStage(currentSensor.Replace.Stage);
                                break;
                            }
                        }
                        break;
                    }
                }
            }
		}

        /// <summary>
        /// Updates the progress display by modifying control layout etc.
        /// </summary>
        private void RenderProgress()
        {
            if ((this.currentStage == SensorReplacementStage.Average50Hours) ||
                (this.currentStage == SensorReplacementStage.Average500Hours))
            {
                if (this.timeTotal > 0)
                {
                    double pixelsPerUnit = this.GridProgress.ActualWidth / this.timeTotal;
                    this.RectProgress.Width = (this.timeTotal - this.timeRemaining) * pixelsPerUnit;
                }
                else
                {
                    this.RectProgress.Width = 0;
                }
            }
            else if ((this.currentStage == SensorReplacementStage.EnableInputReplacementData) ||
                     (this.currentStage == SensorReplacementStage.EnableSendReplacementData))
            {
                this.RectProgress.Width = this.GridProgress.ActualWidth;
            }
        }

        #region UserControl Events
        /// <summary>
        /// Callback for updating the graph display on screen resizes, repaints and dependency property updates.
        /// </summary>
        /// <param name="sender">Object where event originated.</param>
        /// <param name="e">The event data.</param>
        private void OnLayoutUpdated(object sender, System.EventArgs e)
        {
            System.Windows.Deployment.Current.Dispatcher.BeginInvoke(this.RenderProgress);
        }

        /// <summary>
        /// Callback for pressing the replace button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonReplace_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                if ((this.currentStage == SensorReplacementStage.Cancelled) ||
                    (this.currentStage == SensorReplacementStage.None))
                {
                    // Need to get failure date
                    DatePickerWindow dtpw = new DatePickerWindow();
                    // Defaults to todays date, but we can use dtpw.Date if we want to override
                    dtpw.Title = XTS.LocalizedResources.GetResourceString("XTSStringPleaseSelectAFailureDate");
                    dtpw.Closed += new EventHandler(dtpw_Closed);
                    dtpw.Show();
                }
                else
                {
                    mp.XTSDataSource.CancelReplaceSensor(this.index.cylinder, this.index.sensor);
                }
            }
        }

        /// <summary>
        /// Callback for failure date selection window
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void dtpw_Closed(object sender, EventArgs e)
        {
            DatePickerWindow dtpw = sender as DatePickerWindow;
            if (dtpw.DialogResult == true)
            {
                MainPage mp = (MainPage)MainPage.GetInstance();
                if (mp != null)
                {
                    mp.XTSDataSource.ReplaceSensor(this.index.cylinder, this.index.sensor, dtpw.Date);
                }
            }
            dtpw.Closed -= dtpw_Closed;
        }

        /// <summary>
        /// Callback for pressing the send button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonSend_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                SaveFileDialog sfd = new SaveFileDialog();
                sfd.DefaultExt = XTS.LocalizedResources.GetResourceString("XTSStringCsvFileExt");
                sfd.Filter = XTS.LocalizedResources.GetResourceString("XTSStringSaveCsvFileFilter");
                sfd.DefaultFileName = mp.GenerateFilename("sensor_replace", "csv");

                if (sfd.ShowDialog() == true)
                {
                    System.IO.Stream fileStream = sfd.OpenFile();
                    mp.XTSDataSource.SaveReplacementData(this.index.cylinder, this.index.sensor, fileStream);
                }

            }
        }

        /// <summary>
        /// Callback for pressing the import button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonImport_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();
            //ofd.Filter = XTS.LocalizedResources.GetResourceString("XTSStringOpenCsvFileFilter");
            ofd.Multiselect = false;
            if (ofd.ShowDialog() == true)
            {
                MainPage mp = (MainPage)MainPage.GetInstance();
                if (mp != null)
                {
                    System.IO.FileStream fileStream = ofd.File.OpenRead();
                    mp.XTSDataSource.ImportReplacementData(this.index.cylinder, this.index.sensor, fileStream);
                }
            }
        }
        #endregion // UserControl Events
	}
}