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
	public partial class PopupSedm : UserControl
	{
        /// <summary>
        /// List of cylinder indexes to display.
        /// </summary>
		private List<uint> cylinders = null;        

        /// <summary>
        /// The cylinder that the popup pertains to.
        /// </summary>
        public uint SelectedCylinder { get; set; }

        /// <summary>
        /// List of distances between the cylinders' charts.
        /// </summary>
        private List <double> spacers = null;
        
        /// <summary>
        /// Default constructor
        /// </summary>
        public PopupSedm()
		{
			// Required to initialize variables
			InitializeComponent();

            // Make invisible!
            this.Opacity = 0;            

            this.ScaleWear.HideTitleRow = true;
                                  
            this.ScaleWear.BabyTick = 10;
            this.ScaleWear.MinorTick = 50;
            this.ScaleWear.MajorTick = 100;
            this.ScaleWear.MinValue = -300;
            this.ScaleWear.MaxValue = 300;
            this.ScaleWear.Legend = null;            
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
            ShowPopup();
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

            if (this.cylinders != null)
            {
                MainPage mp = (MainPage)MainPage.GetInstance();
                if (mp != null)
                {
                    if (mp.XTSDataSource.EngineData.SEDM.Status == XTSSensorStatus.Normal ||
                        mp.XTSDataSource.EngineData.SEDM.Status == XTSSensorStatus.Alarm)
                    {
                        this.buttonAddToTrend.IsEnabled = true;
                    }
                    else
                    {
                        this.buttonAddToTrend.IsEnabled = false;
                    }

                    XTSSEDM sedm = mp.XTSDataSource.EngineData.SEDM;

                    for (int i = 0; i < this.cylinders.Count; i++)
                    {
                        uint index = this.cylinders[i];
                        try
                        {     
                      
                            // Create main wear bar charts
                            BarControl bcWio = new BarControl();
                            
                            bcWio.MinValue = -1 * 300;
                            bcWio.MaxValue = 300;
                            bcWio.AlarmThreshold = (uint)mp.XTSDataSource.EngineData.SEDM.AlarmLevel;
                            bcWio.ShowSlowdown = false;                                                            
                            bcWio.HideTitleRow = true;
                            bcWio.ShowAlarm = true;
                            bcWio.Direction = BarControl.BarControlDirection.Up;                            
                            this.BindData(sedm, bcWio);                            
                                                        
                            this.ScaleWear.Direction = BarControl.BarControlDirection.Up;
                            this.StackWear.Children.Add(bcWio);
                            // Add to bar graph list to keep track so we can clear bind
                            this.barGraphs.Add(bcWio);

                            // Create name header
                            TextBlock labelName = new TextBlock();
                            labelName.HorizontalAlignment = System.Windows.HorizontalAlignment.Center;
                            labelName.VerticalAlignment = System.Windows.VerticalAlignment.Center;
                            labelName.Foreground = new SolidColorBrush((Color)Application.Current.Resources["ColorAMOTText"]);                            
                            labelName.Text = LocalizedResources.GetResourceString("XTSStringSEDMmV");
                            
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
        /// <param name="cylinder">The slem to bind to.</param>
        /// <param name="barControl">The bar control to display the slem's data.</param>
        private void BindData(XTSSEDM sedm, BarControl barControl)
        {
            Binding e = null;

            e = new Binding();
            e.Source = sedm;
            e.Path = new PropertyPath("Status");
            e.Mode = BindingMode.OneWay;
            barControl.SetBinding(BarControl.StatusProperty, e);

            e = new Binding();
            e.Source = sedm;
            e.Path = new PropertyPath("Value");
            e.Mode = BindingMode.OneWay;
            barControl.SetBinding(BarControl.ValueProperty, e);
        }               

        /// <summary>
        /// Callback for pressing the trends button.
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">An RoutedEventArgs that contains the event data.</param>
		private void OnButtonTrends_Click(object sender, System.Windows.RoutedEventArgs e)
		{
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {               
                Trends.Instance.ShowInsertIntoTrend(new XTSTrendSEDMmV(XTS.LocalizedResources.GetResourceString("XTSStringTrendDefaultSEDMmV")));
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
                }
                else
                {
                    this.StackWear.Opacity = 0.5;
                }
            }
        }

        public bool CommsOK
        {
            set
            {
                this.buttonAddToTrend.IsEnabled = value;
            }
        }
    }
}
