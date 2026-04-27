/* 
 * Learning.xaml.cs
 * 
 * Main page screen for displaying the learning screen.
 * C# partial implementation of Learning.xaml silverlight user control screen.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 09/02/2012
 */

using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

using XTS.ChildWindows;

namespace XTS
{
	/// <summary>
	/// Interaction logic for Learning.xaml
	/// </summary>
	public partial class Learning : UserControl
	{
        /// <summary>
        /// Show text as greyed out for incomplete items
        /// </summary>
        private const double DISABLED_OPACITY = 0.5;

        /// <summary>
        /// The previous state so we can detect changes.
        /// </summary>
        private XTSLearning.LearningState previousState = XTSLearning.LearningState.Unknown;

        /// <summary>
        /// Internal data for Instance
        /// </summary>
        private static Learning instance;
        /// <summary>
        /// Provides access to a single created instance of this screen
        /// </summary>
        public static Learning Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new Learning();
                }
                return instance;
            }
            set { instance = value; }
        }

        /// <summary>
        /// Default constructor
        /// </summary>
		public Learning()
		{
			InitializeComponent();
		}

        void Diagnostics_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("CPUCommsNetwork") ||
                e.PropertyName.Equals("SPUComms") ||
                e.PropertyName.Equals("SPU2Comms"))
            {
                CheckComms();
            }
        }

        /// <summary>
        /// Callback for when the engine data changes
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">Event data.</param>
        void EngineData_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            XTSEngine engineData = sender as XTSEngine;
            switch (e.PropertyName)
            {
                case "RPM":
                    {
                        MainPage mp = ((MainPage)MainPage.GetInstance());
                        XTSLearning learning = mp.XTSDataSource.Learning;
                        UpdateUI(learning.CurrentState, engineData.RPM, learning.SentVerificationData, learning.Verified);
                        break;
                    }
                case "RPM20Percent":
                case "RPM100Percent":
                    {
                        this.textBlockLimitStage4.Text = XTS.LocalizedResources.GetResourceString("XTSString0To1RPMRange", new object[] { engineData.RPM20Percent, engineData.RPM100Percent });
                        break;
                    }
                default:
                    {
                        break;
                    }
            }
        }

        /// <summary>
        /// Callback for when the learning state changes
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">Event data.</param>
        private void Learning_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            XTSLearning learning = sender as XTSLearning;
            switch (e.PropertyName)
            {
                case "CurrentState":
                case "SentVerificationData":
                case "Verified":
                    {
                        MainPage mp = ((MainPage)MainPage.GetInstance());
                        UpdateUI(learning.CurrentState, mp.XTSDataSource.EngineData.RPM, learning.SentVerificationData, learning.Verified);
                        break;
                    }
                case "SpeedBand1Min":
                case "SpeedBand1Max":
                    {
                        this.textBlockLimitStage1.Text = XTS.LocalizedResources.GetResourceString("XTSString0To1RPMRange", new object[] { learning.SpeedBand1Min, learning.SpeedBand1Max });
                        break;
                    }
                case "SpeedBand2Min":
                case "SpeedBand2Max":
                    {
                        this.textBlockLimitStage2.Text = XTS.LocalizedResources.GetResourceString("XTSString0To1RPMRange", new object[] { learning.SpeedBand2Min, learning.SpeedBand2Max });
                    }
                    break;
                case "SpeedBand3Min":
                case "SpeedBand3Max":
                    {
                        this.textBlockLimitStage3.Text = XTS.LocalizedResources.GetResourceString("XTSString0To1RPMRange", new object[] { learning.SpeedBand3Min, learning.SpeedBand3Max });
                        break;
                    }
                default:
                    {
                        break;
                    }
            }
        }

        /// <summary>
        /// Update the RPM on the UI based on the specified stage of the learning.
        /// </summary>
        /// <param name="state">The stage the learning procedure is at.</param>
        /// <param name="rpm">Current RPM.</param>
        private void UpdateUIRPM(XTSLearning.LearningState state, int rpm)
        {
            this.LabelRPM.Content = rpm.ToString();
            switch (state)
            {
                case XTSLearning.LearningState.CylinderFiringOrder:
                    {
                        MainPage mp = ((MainPage)MainPage.GetInstance());
                        if (rpm >= mp.XTSDataSource.EngineData.RPMLimit)
                        {
                            this.GridRPM.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTSensorNormal"]);
                        }
                        else
                        {
                            this.GridRPM.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTError"]);
                        }
                        this.LabelRPMBound.Content = XTS.LocalizedResources.GetResourceString("XTSStringGreaterThan0RPM", new object[] { mp.XTSDataSource.EngineData.RPMLimit });
                        break;
                    }
                case XTSLearning.LearningState.NotCal:
                case XTSLearning.LearningState.Stage1Start:
                case XTSLearning.LearningState.Stage1:
                    {
                        MainPage mp = ((MainPage)MainPage.GetInstance());
                        if (mp.XTSDataSource.Learning.SpeedValid == null)
                        {
                            this.GridRPM.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        }
                        else if (mp.XTSDataSource.Learning.SpeedValid == true)
                        {
                            this.GridRPM.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTSensorNormal"]);
                        }
                        else
                        {
                            this.GridRPM.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTError"]);
                        }
                        this.LabelRPMBound.Content = XTS.LocalizedResources.GetResourceString("XTSString0To1RPMRange", new object[] {mp.XTSDataSource.Learning.SpeedBand1Min, mp.XTSDataSource.Learning.SpeedBand1Max});
                        break;
                    }
                case XTSLearning.LearningState.Stage1Complete:
                case XTSLearning.LearningState.Stage2:
                    {
                        MainPage mp = ((MainPage)MainPage.GetInstance());
                        if (mp.XTSDataSource.Learning.SpeedValid == null)
                        {
                            this.GridRPM.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        }
                        else if (mp.XTSDataSource.Learning.SpeedValid == true)
                        {
                            this.GridRPM.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTSensorNormal"]);
                        }
                        else
                        {
                            this.GridRPM.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTError"]);
                        }
                        this.LabelRPMBound.Content = XTS.LocalizedResources.GetResourceString("XTSString0To1RPMRange", new object[] { mp.XTSDataSource.Learning.SpeedBand2Min, mp.XTSDataSource.Learning.SpeedBand2Max });
                        break;
                    }
                case XTSLearning.LearningState.Stage2Complete:
                case XTSLearning.LearningState.Stage3:
                    {
                        MainPage mp = ((MainPage)MainPage.GetInstance());
                        if (mp.XTSDataSource.Learning.SpeedValid == null)
                        {
                            this.GridRPM.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        }
                        else if (mp.XTSDataSource.Learning.SpeedValid == true)
                        {
                            this.GridRPM.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTSensorNormal"]);
                        }
                        else
                        {
                            this.GridRPM.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTError"]);
                        }
                        this.LabelRPMBound.Content = XTS.LocalizedResources.GetResourceString("XTSString0To1RPMRange", new object[] { mp.XTSDataSource.Learning.SpeedBand3Min, mp.XTSDataSource.Learning.SpeedBand3Max });
                        break;
                    }
                case XTSLearning.LearningState.Stage4:
                case XTSLearning.LearningState.Stage5:
                    {
                        MainPage mp = ((MainPage)MainPage.GetInstance());
                        if (mp.XTSDataSource.Learning.SpeedValid == null)
                        {
                            this.GridRPM.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        }
                        else if (mp.XTSDataSource.Learning.SpeedValid == true)
                        {
                            this.GridRPM.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTSensorNormal"]);
                        }
                        else
                        {
                            this.GridRPM.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTError"]);
                        }
                        this.LabelRPMBound.Content = XTS.LocalizedResources.GetResourceString("XTSString0To1RPMRange", new object[] { mp.XTSDataSource.EngineData.RPM20Percent, mp.XTSDataSource.EngineData.RPM100Percent });
                        break;
                    }
                case XTSLearning.LearningState.Complete:
                case XTSLearning.LearningState.Abort:
                case XTSLearning.LearningState.Unknown:
                default:
                    {
                        this.GridRPM.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.LabelRPMBound.Content = "";
                        break;
                    }
            }
        }

        /// <summary>
        /// Update the UI based on the specified stage of the learning.
        /// </summary>
        /// <param name="state">The stage the learning procedure is at.</param>
        /// <param name="rpm">Current RPM.</param>
        private void UpdateUI(XTSLearning.LearningState state, int rpm, bool sentData, bool verified)
        {
            // If we're not in cylinder firing order, then assume not in progress
            if (state != XTSLearning.LearningState.CylinderFiringOrder)
            {
                this.firingOrderInProgress = false;
            }
            switch (state)
            {
                case XTSLearning.LearningState.CylinderFiringOrder:
                    {
                        // We can not detect wether we are in the process of detecting the firing order, so we need to
                        // base enabling/disabling the button and setting firing order process to in progress colour
                        // on button press.  In practice, this should be fine as it is a short operation.
                        if (this.firingOrderInProgress)
                        {
                            this.PathFiringOrderLearning.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTSensorNormal"]);
                        }
                        else
                        {
                            this.PathFiringOrderLearning.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        }
                        this.PathStage1.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.PathStage2.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.PathStage3.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.PathStage4.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);

                        this.TextBlockS1Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS2Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS3Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS4Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.labelTimeRemaining.Visibility = System.Windows.Visibility.Collapsed;

                        this.buttonFiringOrder.IsEnabled = (Learning.IsFiringOrderEnabled && !this.firingOrderInProgress);
                        this.buttonLearningStart.IsEnabled = false;
                        this.buttonLearningCancel.IsEnabled = false;
                        this.buttonSendVerification.IsEnabled = false;
                        this.buttonEnterVerification.IsEnabled = false;

                        this.GridFiringOrderComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockFiringOrderComplete.Opacity = Learning.DISABLED_OPACITY;
                        this.GridLearningComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockLearnComplete.Opacity = Learning.DISABLED_OPACITY;
                        this.GridVerificationComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockVerificationComplete.Opacity = Learning.DISABLED_OPACITY;
                        break;
                    }
                case XTSLearning.LearningState.NotCal:
                    {
                        this.PathFiringOrderLearning.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage1.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.PathStage2.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.PathStage3.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.PathStage4.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);

                        this.TextBlockS1Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS2Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS3Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS4Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.labelTimeRemaining.Visibility = System.Windows.Visibility.Collapsed;

                        this.buttonFiringOrder.IsEnabled = false;
                        this.buttonLearningStart.IsEnabled = true;
                        this.buttonLearningCancel.IsEnabled = false;
                        this.buttonSendVerification.IsEnabled = false;
                        this.buttonEnterVerification.IsEnabled = false;

                        this.GridFiringOrderComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.textBlockFiringOrderComplete.Opacity = 1;
                        this.GridLearningComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockLearnComplete.Opacity = Learning.DISABLED_OPACITY;
                        this.GridVerificationComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockVerificationComplete.Opacity = Learning.DISABLED_OPACITY;
                        break;
                    }
                case XTSLearning.LearningState.Stage1Start:
                    {
                        this.PathFiringOrderLearning.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage1.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTSensorNormal"]);
                        this.PathStage2.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.PathStage3.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.PathStage4.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);

                        this.TextBlockS1Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS2Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS3Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS4Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.labelTimeRemaining.Visibility = System.Windows.Visibility.Collapsed;

                        this.buttonFiringOrder.IsEnabled = false;
                        this.buttonLearningStart.IsEnabled = false;
                        this.buttonLearningCancel.IsEnabled = true;
                        this.buttonSendVerification.IsEnabled = false;
                        this.buttonEnterVerification.IsEnabled = false;

                        this.GridFiringOrderComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.textBlockFiringOrderComplete.Opacity = 1;
                        this.GridLearningComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockLearnComplete.Opacity = Learning.DISABLED_OPACITY;
                        this.GridVerificationComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockVerificationComplete.Opacity = Learning.DISABLED_OPACITY;
                        break;
                    }
                case XTSLearning.LearningState.Stage1:
                    {
                        this.PathFiringOrderLearning.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage1.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTSensorNormal"]);
                        this.PathStage2.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.PathStage3.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.PathStage4.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);

                        this.TextBlockS1Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS2Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS3Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS4Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.labelTimeRemaining.Visibility = System.Windows.Visibility.Visible;

                        this.buttonFiringOrder.IsEnabled = false;
                        this.buttonLearningStart.IsEnabled = false;
                        this.buttonLearningCancel.IsEnabled = true;
                        this.buttonSendVerification.IsEnabled = false;
                        this.buttonEnterVerification.IsEnabled = false;

                        this.GridFiringOrderComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.textBlockFiringOrderComplete.Opacity = 1;
                        this.GridLearningComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockLearnComplete.Opacity = Learning.DISABLED_OPACITY;
                        this.GridVerificationComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockVerificationComplete.Opacity = Learning.DISABLED_OPACITY;
                        break;
                    }
                case XTSLearning.LearningState.Stage1Complete:
                    {
                        this.PathFiringOrderLearning.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage1.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage2.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTSensorNormal"]);
                        this.PathStage3.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.PathStage4.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);

                        this.TextBlockS1Complete.Visibility = System.Windows.Visibility.Visible;
                        this.TextBlockS2Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS3Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS4Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.labelTimeRemaining.Visibility = System.Windows.Visibility.Collapsed;

                        this.buttonFiringOrder.IsEnabled = false;
                        this.buttonLearningStart.IsEnabled = false;
                        this.buttonLearningCancel.IsEnabled = true;
                        this.buttonSendVerification.IsEnabled = false;
                        this.buttonEnterVerification.IsEnabled = false;

                        this.GridFiringOrderComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.textBlockFiringOrderComplete.Opacity = 1;
                        this.GridLearningComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockLearnComplete.Opacity = Learning.DISABLED_OPACITY;
                        this.GridVerificationComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockVerificationComplete.Opacity = Learning.DISABLED_OPACITY;
                        break;
                    }
                case XTSLearning.LearningState.Stage2:
                    {
                        this.PathFiringOrderLearning.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage1.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage2.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTSensorNormal"]);
                        this.PathStage3.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.PathStage4.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);

                        this.TextBlockS1Complete.Visibility = System.Windows.Visibility.Visible;
                        this.TextBlockS2Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS3Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS4Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.labelTimeRemaining.Visibility = System.Windows.Visibility.Visible;

                        this.buttonFiringOrder.IsEnabled = false;
                        this.buttonLearningStart.IsEnabled = false;
                        this.buttonLearningCancel.IsEnabled = true;
                        this.buttonSendVerification.IsEnabled = false;
                        this.buttonEnterVerification.IsEnabled = false;

                        this.GridFiringOrderComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.textBlockFiringOrderComplete.Opacity = 1;
                        this.GridLearningComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockLearnComplete.Opacity = Learning.DISABLED_OPACITY;
                        this.GridVerificationComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockVerificationComplete.Opacity = Learning.DISABLED_OPACITY;
                        break;
                    }
                case XTSLearning.LearningState.Stage2Complete:
                    {
                        this.PathFiringOrderLearning.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage1.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage2.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage3.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTSensorNormal"]);
                        this.PathStage4.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);

                        this.TextBlockS1Complete.Visibility = System.Windows.Visibility.Visible;
                        this.TextBlockS2Complete.Visibility = System.Windows.Visibility.Visible;
                        this.TextBlockS3Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS4Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.labelTimeRemaining.Visibility = System.Windows.Visibility.Collapsed;

                        this.buttonFiringOrder.IsEnabled = false;
                        this.buttonLearningStart.IsEnabled = false;
                        this.buttonLearningCancel.IsEnabled = true;
                        this.buttonSendVerification.IsEnabled = false;
                        this.buttonEnterVerification.IsEnabled = false;

                        this.GridFiringOrderComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.textBlockFiringOrderComplete.Opacity = 1;
                        this.GridLearningComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockLearnComplete.Opacity = Learning.DISABLED_OPACITY;
                        this.GridVerificationComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockVerificationComplete.Opacity = Learning.DISABLED_OPACITY;
                        break;
                    }
                case XTSLearning.LearningState.Stage3:
                    {
                        this.PathFiringOrderLearning.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage1.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage2.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage3.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTSensorNormal"]);
                        this.PathStage4.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);

                        this.TextBlockS1Complete.Visibility = System.Windows.Visibility.Visible;
                        this.TextBlockS2Complete.Visibility = System.Windows.Visibility.Visible;
                        this.TextBlockS3Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS4Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.labelTimeRemaining.Visibility = System.Windows.Visibility.Visible;

                        this.buttonFiringOrder.IsEnabled = false;
                        this.buttonLearningStart.IsEnabled = false;
                        this.buttonLearningCancel.IsEnabled = true;
                        this.buttonSendVerification.IsEnabled = false;
                        this.buttonEnterVerification.IsEnabled = false;

                        this.GridFiringOrderComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.textBlockFiringOrderComplete.Opacity = 1;
                        this.GridLearningComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockLearnComplete.Opacity = Learning.DISABLED_OPACITY;
                        this.GridVerificationComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockVerificationComplete.Opacity = Learning.DISABLED_OPACITY;
                        break;
                    }
                case XTSLearning.LearningState.Stage4:
                    {
                        this.PathFiringOrderLearning.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage1.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage2.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage3.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage4.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTSensorNormal"]);

                        this.TextBlockS1Complete.Visibility = System.Windows.Visibility.Visible;
                        this.TextBlockS2Complete.Visibility = System.Windows.Visibility.Visible;
                        this.TextBlockS3Complete.Visibility = System.Windows.Visibility.Visible;
                        this.TextBlockS4Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.labelTimeRemaining.Visibility = System.Windows.Visibility.Visible;

                        this.buttonFiringOrder.IsEnabled = false;
                        this.buttonLearningStart.IsEnabled = false;
                        this.buttonLearningCancel.IsEnabled = true;
                        this.buttonSendVerification.IsEnabled = false;
                        this.buttonEnterVerification.IsEnabled = false;

                        this.GridFiringOrderComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.textBlockFiringOrderComplete.Opacity = 1;
                        this.GridLearningComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockLearnComplete.Opacity = Learning.DISABLED_OPACITY;
                        this.GridVerificationComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockVerificationComplete.Opacity = Learning.DISABLED_OPACITY;
                        break;
                    }
                case XTSLearning.LearningState.Stage5:
                    {
                        this.PathFiringOrderLearning.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage1.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage2.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage3.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage4.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTSensorNormal"]);

                        this.TextBlockS1Complete.Visibility = System.Windows.Visibility.Visible;
                        this.TextBlockS2Complete.Visibility = System.Windows.Visibility.Visible;
                        this.TextBlockS3Complete.Visibility = System.Windows.Visibility.Visible;
                        this.TextBlockS4Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.labelTimeRemaining.Visibility = System.Windows.Visibility.Visible;

                        this.buttonFiringOrder.IsEnabled = false;
                        this.buttonLearningStart.IsEnabled = false;
                        this.buttonLearningCancel.IsEnabled = true;
                        this.buttonSendVerification.IsEnabled = false;
                        this.buttonEnterVerification.IsEnabled = false;

                        this.GridFiringOrderComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.textBlockFiringOrderComplete.Opacity = 1;
                        this.GridLearningComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockLearnComplete.Opacity = Learning.DISABLED_OPACITY;
                        this.GridVerificationComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockVerificationComplete.Opacity = Learning.DISABLED_OPACITY;
                        break;
                    }
                case XTSLearning.LearningState.Complete:
                    {
                        this.PathFiringOrderLearning.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage1.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage2.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage3.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage4.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);

                        this.TextBlockS1Complete.Visibility = System.Windows.Visibility.Visible;
                        this.TextBlockS2Complete.Visibility = System.Windows.Visibility.Visible;
                        this.TextBlockS3Complete.Visibility = System.Windows.Visibility.Visible;
                        this.TextBlockS4Complete.Visibility = System.Windows.Visibility.Visible;
                        this.labelTimeRemaining.Visibility = System.Windows.Visibility.Collapsed;

                        this.buttonFiringOrder.IsEnabled = Learning.IsFiringOrderEnabled;
                        this.buttonLearningStart.IsEnabled = true;
                        this.buttonLearningCancel.IsEnabled = false;
                        this.buttonSendVerification.IsEnabled = false;
                        this.buttonEnterVerification.IsEnabled = false;

                        this.GridFiringOrderComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.textBlockFiringOrderComplete.Opacity = 1;
                        this.GridLearningComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.textBlockLearnComplete.Opacity = 1;
                        this.GridVerificationComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockVerificationComplete.Opacity = Learning.DISABLED_OPACITY;
                        break;
                    }
                case XTSLearning.LearningState.CompleteEnableVerification:
                    {
                        this.PathFiringOrderLearning.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage1.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage2.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage3.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage4.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);

                        this.TextBlockS1Complete.Visibility = System.Windows.Visibility.Visible;
                        this.TextBlockS2Complete.Visibility = System.Windows.Visibility.Visible;
                        this.TextBlockS3Complete.Visibility = System.Windows.Visibility.Visible;
                        this.TextBlockS4Complete.Visibility = System.Windows.Visibility.Visible;
                        this.labelTimeRemaining.Visibility = System.Windows.Visibility.Collapsed;

                        this.buttonFiringOrder.IsEnabled = Learning.IsFiringOrderEnabled;
                        this.buttonLearningStart.IsEnabled = true;
                        this.buttonLearningCancel.IsEnabled = false;
                        this.buttonSendVerification.IsEnabled = true;
                        this.buttonEnterVerification.IsEnabled = sentData;

                        this.GridFiringOrderComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.textBlockFiringOrderComplete.Opacity = 1;
                        this.GridLearningComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.textBlockLearnComplete.Opacity = 1;
                        if (verified)
                        {
                            this.GridVerificationComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                            this.textBlockVerificationComplete.Opacity = 1;
                        }
                        else
                        {
                            this.GridVerificationComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                            this.textBlockVerificationComplete.Opacity = Learning.DISABLED_OPACITY;
                        }
                        break;
                    }
                case XTSLearning.LearningState.Abort:
                    {
                        this.PathFiringOrderLearning.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.PathStage1.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTError"]);
                        this.PathStage2.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTError"]);
                        this.PathStage3.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTError"]);
                        this.PathStage4.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTError"]);

                        this.TextBlockS1Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS2Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS3Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS4Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.labelTimeRemaining.Visibility = System.Windows.Visibility.Collapsed;

                        this.buttonFiringOrder.IsEnabled = false;
                        this.buttonLearningStart.IsEnabled = true;
                        this.buttonLearningCancel.IsEnabled = false;

                        this.GridFiringOrderComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTLearningComplete"]);
                        this.textBlockFiringOrderComplete.Opacity = 1;
                        this.GridLearningComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockLearnComplete.Opacity = Learning.DISABLED_OPACITY;
                        this.GridVerificationComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockVerificationComplete.Opacity = Learning.DISABLED_OPACITY;
                        break;
                    }
                case XTSLearning.LearningState.Unknown:
                default:
                    {
                        // ColorAMOTBlue ColorAMOTSensorNormal ColorAMOTLearningComplete
                        this.PathFiringOrderLearning.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.PathStage1.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.PathStage2.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.PathStage3.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.PathStage4.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);

                        this.TextBlockS1Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS2Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS3Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.TextBlockS4Complete.Visibility = System.Windows.Visibility.Collapsed;
                        this.labelTimeRemaining.Visibility = System.Windows.Visibility.Collapsed;

                        this.buttonFiringOrder.IsEnabled = false;
                        this.buttonLearningStart.IsEnabled = false;
                        this.buttonLearningCancel.IsEnabled = false;

                        this.GridFiringOrderComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockFiringOrderComplete.Opacity = Learning.DISABLED_OPACITY;
                        this.GridLearningComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockLearnComplete.Opacity = Learning.DISABLED_OPACITY;
                        this.GridVerificationComplete.Background = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTBlue"]);
                        this.textBlockVerificationComplete.Opacity = Learning.DISABLED_OPACITY;
                        break;
                    }
            }

            UpdateUIRPM(state, rpm);

            if (state != this.previousState)
            {
                // TODO: Do these message boxes show if we leave the learning screen and return to it?
                if (state == XTSLearning.LearningState.Stage4)
                {
                    AMOTMessageBox mb = new AMOTMessageBox();
                    mb.Title = XTS.LocalizedResources.GetResourceString("XTSStringInitialLearningCompleteTitle");
                    mb.Message = XTS.LocalizedResources.GetResourceString("XTSStringInitialLearningCompleteMsg");
                    mb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.Close;
                    mb.Show();
                }
                else if (state == XTSLearning.LearningState.Complete)
                {
                    // TODO: Align the message text...?
                    AMOTMessageBox mb = new AMOTMessageBox();
                    mb.Title = XTS.LocalizedResources.GetResourceString("XTSStringLearningCompleteTitle");
                    mb.Message = XTS.LocalizedResources.GetResourceString("XTSStringLearningCompleteMsg");
                    mb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.Close;
                    mb.Show();
                }
            }
            this.previousState = state;
        }

        /// <summary>
        /// Keeps track of wether we believe a firing order detect
        /// is in progress.  We have to assume this due to it not
        /// being availble from the SPU.
        /// </summary>
        bool firingOrderInProgress = false;

        /// <summary>
        /// Handler for when the determine cylinder firing order button is pressed.
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
        private void buttonFiringOrder_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            if (!this.firingOrderInProgress)
            {
                MainPage mp = ((MainPage)MainPage.GetInstance());
                if (mp != null)
                {
                    this.PathFiringOrderLearning.Fill = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTSensorNormal"]);
                    this.buttonFiringOrder.IsEnabled = false;
                    this.firingOrderInProgress = true;
                    mp.XTSDataSource.DetectCylinderFiringOrder();
                }
            }
        }

        /// <summary>
        /// Handler for when the start button is pressed.
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
        private void buttonLearningStart_Click(object sender, System.Windows.RoutedEventArgs e)
		{
            AMOTMessageBox mb = new AMOTMessageBox();
            mb.Width = 600;
            mb.Height = 420;
            mb.Title = XTS.LocalizedResources.GetResourceString("XTSStringLearningStartTitle");
            mb.Message = XTS.LocalizedResources.GetResourceString("XTSStringLearningStartMsg");
            mb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OKCancel;
            mb.Closed += new System.EventHandler(StartMessageBox_Closed);
            mb.Show();
		}

        /// <summary>
        /// Callback for closing of the warning message box when starting the learning procedure.
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
        private void StartMessageBox_Closed(object sender, System.EventArgs e)
        {
            ChildWindow cw = sender as ChildWindow;
            if (cw.DialogResult == true)
            {
                MainPage mp = ((MainPage)MainPage.GetInstance());
                if (mp != null)
                {
                    mp.XTSDataSource.StartLearningProcedure();
                }
            }
            cw.Closed -= StartMessageBox_Closed;
        }

        /// <summary>
        /// Handler for when the cancel button is pressed.
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
		private void buttonLearningCancel_Click(object sender, System.Windows.RoutedEventArgs e)
		{
            AMOTMessageBox mb = new AMOTMessageBox();
            mb.Title = XTS.LocalizedResources.GetResourceString("XTSStringLearningCancelTitle");
            mb.Message = XTS.LocalizedResources.GetResourceString("XTSStringLearningCancelMsg");
            mb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.YesNo;
            mb.Closed += new System.EventHandler(CancelMessageBox_Closed);
            mb.Show();
		}

        /// <summary>
        /// Callback for closing the warning message box when cancelling
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
        private void CancelMessageBox_Closed(object sender, System.EventArgs e)
        {
            ChildWindow cw = sender as ChildWindow;
            if (cw.DialogResult == true)
            {
                MainPage mp = ((MainPage)MainPage.GetInstance());
                if (mp != null)
                {
                    mp.XTSDataSource.CancelLearningProcedure();
                }
            }
            cw.Closed -= CancelMessageBox_Closed;
        }

		/// <summary>
		/// Callback for button press for send verification
		/// </summary>
		/// <param name="sender"></param>
		/// <param name="e"></param>
        private void buttonSendVerification_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                SaveFileDialog sfd = new SaveFileDialog();
                sfd.DefaultExt = XTS.LocalizedResources.GetResourceString("XTSStringCsvFileExt");
                sfd.Filter = XTS.LocalizedResources.GetResourceString("XTSStringSaveCsvFileFilter");
                sfd.DefaultFileName = mp.GenerateFilename("verification", XTS.LocalizedResources.GetResourceString("XTSStringCsvFileExt"));
                
                if (sfd.ShowDialog() == true)
                {
                    System.IO.Stream fileStream = sfd.OpenFile();
                    mp.XTSDataSource.SaveLearningVerification(fileStream);
                }
            }
        }

		/// <summary>
		/// Callback for button press for enter verification
		/// </summary>
		/// <param name="sender"></param>
		/// <param name="e"></param>
        private void buttonEnterVerification_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            this.buttonEnterVerification.IsEnabled = false;
            VerificationCodeWindow vcw = new VerificationCodeWindow();
            vcw.Closed += new System.EventHandler(vcw_Closed);
            vcw.Show();
        }

        /// <summary>
        /// Callback for closing of verification code window
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void vcw_Closed(object sender, System.EventArgs e)
        {
            VerificationCodeWindow vcw = sender as VerificationCodeWindow;
            if (vcw.DialogResult == true)
            {
                MainPage mp = ((MainPage)MainPage.GetInstance());
                if (mp != null)
                {
                    mp.XTSDataSource.EnterLearningVerificationCode(vcw.Code, new XTSResultDelegate(EnterLearningVerificationCodeCallback));
                }
            }
            else
            {
                this.buttonEnterVerification.IsEnabled = true;
            }
            vcw.Closed -= vcw_Closed;
        }

        /// <summary>
        /// Callback for when a user enters a verification code
        /// </summary>
        /// <param name="result">True - the verification was successful</param>
        public void EnterLearningVerificationCodeCallback(bool result)
        {
            // Check if we are on the main ui thread or not.
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                AMOTMessageBox mb = new AMOTMessageBox();
                mb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.Close;
                mb.Title = XTS.LocalizedResources.GetResourceString("XTSStringLearningVerificationTitle");
                if (result)
                {
                    mb.Message = XTS.LocalizedResources.GetResourceString("XTSStringLearningVerificationOKMsg");
                }
                else
                {
                    mb.Message = XTS.LocalizedResources.GetResourceString("XTSStringLearningVerificationInvalidMsg");
                }
                mb.Show();
                this.buttonEnterVerification.IsEnabled = true;
            }
            else
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new XTSResultDelegate(EnterLearningVerificationCodeCallback), result);
            }
        }

        private void Learning_Loaded(object sender, RoutedEventArgs e)
        {
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                mp.XTSDataSource.Learning.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(Learning_PropertyChanged);
                mp.XTSDataSource.EngineData.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(EngineData_PropertyChanged);

                this.textBlockLimitStage1.Text = XTS.LocalizedResources.GetResourceString("XTSString0To1RPMRange", new object[] { mp.XTSDataSource.Learning.SpeedBand1Min, mp.XTSDataSource.Learning.SpeedBand1Max });
                this.textBlockLimitStage2.Text = XTS.LocalizedResources.GetResourceString("XTSString0To1RPMRange", new object[] { mp.XTSDataSource.Learning.SpeedBand2Min, mp.XTSDataSource.Learning.SpeedBand2Max });
                this.textBlockLimitStage3.Text = XTS.LocalizedResources.GetResourceString("XTSString0To1RPMRange", new object[] { mp.XTSDataSource.Learning.SpeedBand3Min, mp.XTSDataSource.Learning.SpeedBand3Max });
                this.textBlockLimitStage4.Text = XTS.LocalizedResources.GetResourceString("XTSString0To1RPMRange", new object[] { mp.XTSDataSource.EngineData.RPM20Percent, mp.XTSDataSource.EngineData.RPM100Percent });

                mp.XTSDataSource.Diagnostics.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(Diagnostics_PropertyChanged);
                CheckComms();
            }
        }

        private void Learning_Unloaded(object sender, RoutedEventArgs e)
        {
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                mp.XTSDataSource.Diagnostics.PropertyChanged -= Diagnostics_PropertyChanged;
                mp.XTSDataSource.Learning.PropertyChanged -= Learning_PropertyChanged;
                mp.XTSDataSource.EngineData.PropertyChanged -= EngineData_PropertyChanged;
            }
        }

        /// <summary>
        /// Simple readonly property for determining if the firing order button should be
        /// enabled or not.
        /// </summary>
        public static bool IsFiringOrderEnabled
        {
            get
            {
                MainPage mp = ((MainPage)MainPage.GetInstance());
                if (mp != null)
                {
                    if (((mp.XTSDataSource.EngineData.Direction == XTSEngine.XTSEngineDirection.Forward) || (mp.XTSDataSource.EngineData.Direction == XTSEngine.XTSEngineDirection.NotSet)) &&
                        (mp.XTSDataSource.EngineData.RPM >= mp.XTSDataSource.EngineData.RPMLimit))
                    {
                        return true;
                    }
                }
                return false;
            }
        }

        private void CheckComms()
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            XTSDiagnostics diagnostics = mp.XTSDataSource.Diagnostics;
            XTSEngine engineData = mp.XTSDataSource.EngineData;

            if (diagnostics.CPUCommsNetwork && 
                diagnostics.SPUComms.HasValue &&
                diagnostics.SPUComms.Value)
            {
                if (engineData.SPU2Fitted)
                {
                    if (diagnostics.SPU2Comms.HasValue &&
                        diagnostics.SPU2Comms.Value)
                    {
                        this.IsEnabled = true;
                        this.LayoutRoot.Opacity = 1.0;
                    }
                    else
                    {
                        this.IsEnabled = false;
                        this.LayoutRoot.Opacity = 0.5;
                    }
                }
                else
                {
                    this.IsEnabled = true;
                    this.LayoutRoot.Opacity = 1.0;
                }
            }
            else
            {
                this.IsEnabled = false;
                this.LayoutRoot.Opacity = 0.5;
            }
        }
	}
}
