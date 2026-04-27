/* 
 * TrendReorder.xaml.cs
 * 
 * Control for trend row columns for reordering the list items.
 * C# partial implementation of TrendReorder.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 08/06/2012
 */

using System.Windows;
using System.Windows.Controls;

namespace XTS.Controls
{
    /// <summary>
    /// Class for displaying controls for reordering list items.
    /// </summary>
	public partial class TrendReorder : UserControl
	{
        /// <summary>
        /// The current known position in the list.
        /// </summary>
        private int position = -1;

        #region Trend Detail Dependency Property
        /// <summary>
        /// Internal data for Trend.
        /// </summary>
        /// <remarks>Set by dependency property callback, not by property iteslef.</remarks>
        private XTSTrendDetail trendDetail = null;
        /// <summary>
        /// Property for ComponentID
        /// </summary>
        public XTSTrendDetail Trend
        {
            get { return (XTSTrendDetail)GetValue(TrendDetailProperty); }
            set { SetValue(TrendDetailProperty, value); }
        }

        /// <summary>
        /// Dependency property for Trend.
        /// </summary>
        public static readonly DependencyProperty TrendDetailProperty =
            DependencyProperty.Register("Trend", typeof(XTSTrendDetail), typeof(TrendReorder), new PropertyMetadata(OnTrendDetailPropertyChanged));

        /// <summary>
        /// Callback for the Trend dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnTrendDetailPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            TrendReorder tr = dependencyObject as TrendReorder;
            tr.SetTrend((XTSTrendDetail)e.NewValue);
        }
        #endregion // Trend Detail Dependency Property

        /// <summary>
        /// Default constructor.
        /// </summary>
		public TrendReorder()
		{
			// Required to initialize variables
			InitializeComponent();
		}

        /// <summary>
        /// When the user presses the down button.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void buttonDown_Click(object sender, System.Windows.RoutedEventArgs e)
		{
            MainPage mp = (MainPage)MainPage.GetInstance();
            int currentPosition = this.position;
            if ((currentPosition > -1) &&
                (currentPosition < (mp.XTSDataSource.Trends.TrendConfiguration.Count - 1)))
            {
                // Disable update as list gets repopulated with ScrollTrendListDown() call below
                mp.XTSDataSource.Trends.TrendConfiguration.SuspendCollectionChangeNotification = true;
                XTSTrend trend = mp.XTSDataSource.Trends.TrendConfiguration[currentPosition];
                mp.XTSDataSource.Trends.TrendConfiguration.Remove(trend);
                mp.XTSDataSource.Trends.TrendConfiguration.Insert(currentPosition + 1, trend);
                mp.XTSDataSource.Trends.TrendConfiguration.SuspendCollectionChangeNotification = false;

                // Ensure this item is visible!
                Trends.Instance.ScrollTrendListDown();
                // Sort out graph order
                Trends.Instance.RefreshTrendGraphs();
            }
        }

        /// <summary>
        /// When the user presses the up button.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonUp_Click(object sender, System.Windows.RoutedEventArgs e)
		{
            MainPage mp = (MainPage)MainPage.GetInstance();
            int currentPosition = this.position;
            if (currentPosition > 0)
            {
                // Disable update as list gets repopulated with ScrollTrendListUp() call below
                mp.XTSDataSource.Trends.TrendConfiguration.SuspendCollectionChangeNotification = true;
                XTSTrend trend = mp.XTSDataSource.Trends.TrendConfiguration[currentPosition];
                mp.XTSDataSource.Trends.TrendConfiguration.Remove(trend);
                mp.XTSDataSource.Trends.TrendConfiguration.Insert(currentPosition - 1, trend);
                mp.XTSDataSource.Trends.TrendConfiguration.SuspendCollectionChangeNotification = false;

                // Ensure this item is visible!
                Trends.Instance.ScrollTrendListUp();
                // Sort out graph order
                Trends.Instance.RefreshTrendGraphs();
            }
        }

        /// <summary>
        /// Finds this rows trenddetail position within the configuration
        /// </summary>
        /// <param name="detail"></param>
        /// <returns></returns>
        private static int FindPosition(XTSTrendDetail detail)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            
            int currentIndex = 0;
            int index = -1;
            foreach(XTSTrend trend in mp.XTSDataSource.Trends.TrendConfiguration)
            {
                if (trend.Detail == detail)
                {
                    index = currentIndex;
                    break;
                }
                currentIndex++;
            }
            return index;
        }

        /// <summary>
        /// Member function for setting the trend.
        /// </summary>
        /// <param name="detail"></param>
        public void SetTrend(XTSTrendDetail detail)
        {
            this.trendDetail = detail;
            SetupButtons();
        }

        /// <summary>
        /// Configures the buttons based on the position in the list
        /// </summary>
        private void SetupButtons()
        {
            this.position = FindPosition(this.trendDetail);

            this.buttonUp.IsEnabled = (this.position > 0);
            if (this.position == -1)
            {
                this.buttonDown.IsEnabled = false;
            }
            else
            {
                MainPage mp = (MainPage)MainPage.GetInstance();
                this.buttonDown.IsEnabled = (this.position < (mp.XTSDataSource.Trends.TrendConfiguration.Count - 1));
            }
        }

        /// <summary>
        /// Callback for when control is displayed.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void TrendReorder_Loaded(object sender, RoutedEventArgs e)
        {
            // Add callback for tracked configuration changes
            MainPage mp = (MainPage)MainPage.GetInstance();
            mp.XTSDataSource.Trends.TrendConfiguration.CollectionChanged += new System.Collections.Specialized.NotifyCollectionChangedEventHandler(TrendConfiguration_CollectionChanged);
        }

        /// <summary>
        /// Callback for when control is removed from the display.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void TrendReorder_Unloaded(object sender, RoutedEventArgs e)
        {
            // Remove callback for tracked configuration changes
            MainPage mp = (MainPage)MainPage.GetInstance();
            mp.XTSDataSource.Trends.TrendConfiguration.CollectionChanged -= TrendConfiguration_CollectionChanged;
        }

        /// <summary>
        /// Callback for when trend config changes
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void TrendConfiguration_CollectionChanged(object sender, System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
        {
            // Refresh the up/down and current position
            SetupButtons();
        }
    }
}