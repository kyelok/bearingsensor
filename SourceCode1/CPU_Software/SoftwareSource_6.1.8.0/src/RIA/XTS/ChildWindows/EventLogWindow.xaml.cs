/* 
 * EventLogWindow.xaml.cs
 * 
 * Allows user to view the event log.
 * C# partial implementation of EventLogWindow.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 12/04/2012
 */

using System.Windows;
using System.Windows.Media;
using System.Windows.Controls;
using XTS.Controls;

namespace XTS.ChildWindows
{
    /// <summary>
    /// Converter for AlarmItem timestamp. DateTime->String
    /// </summary>
    public class XTSTimeStampConverter : System.Windows.Data.IValueConverter
    {
        public object Convert(object value, System.Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            string rc = "";
            try
            {
                System.DateTime dt = (System.DateTime)value;
                if (dt != null)
                {                    
                     rc = System.String.Format("{0:dd/MM/yyyy HH:mm:ss}", dt);
                }
            }
            catch
            {
                rc = "";
            }
            return rc;

            //DateTime dt = (DateTime)value;
            //return String.Format("{0:dd/MM/yyyy HH:mm:ss}", dt);

        }

        public object ConvertBack(object value, System.Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new System.NotImplementedException();
        }
    }

    public class XTSAlarmAckDateTimeConverter : System.Windows.Data.IValueConverter
    {
        #region IValueConverter Members

        public object Convert(object value, System.Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            string rc = "";
            try
            {
				XTS.XTSAlarm alarm = value as XTS.XTSAlarm;
				if (alarm != null)
				{
					if (alarm.AckUser != null)
					{
    		            rc = System.String.Format("{0:dd/MM/yyyy HH:mm:ss}", alarm.AckTimestamp);
					}
				}
			}
            catch
            {
                rc = "";
            }
            return rc;
        }

        public object ConvertBack(object value, System.Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new System.NotImplementedException();
        }

        #endregion
    }

    /// <summary>
    /// Child window to display alarm event log
    /// </summary>
    public partial class EventLogWindow : ChildWindow
    {
        /// <summary>
        /// The index for the first event log to show
        /// </summary>
        private int eventLogIndex = 0;

        /// <summary>
        /// The event log display to add to the scroll list box
        /// </summary>
        private ItemsControl eventLogs = new ItemsControl();

        /// <summary>
        /// Internal data for EventLogCount
        /// </summary>
        private int eventLogCount = 100;
        /// <summary>
        /// The number of events to show on a page
        /// </summary>
        public int EventLogDisplayCount
        {
            set
            {
                this.eventLogCount = value;
            }
        }

        /// <summary>
        /// Default constructor
        /// </summary>
        public EventLogWindow()
        {
            InitializeComponent();
            this.eventLogs.VerticalAlignment = System.Windows.VerticalAlignment.Top;
            this.eventLogs.HorizontalAlignment = System.Windows.HorizontalAlignment.Stretch;
            this.eventLogs.Background = new SolidColorBrush(Colors.Transparent);
            this.eventLogs.BorderBrush = new SolidColorBrush(Colors.Transparent);
            this.eventLogs.ItemTemplate = (DataTemplate)Resources["EventTemplate"];
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                this.eventLogs.ItemsSource = mp.XTSDataSource.EventLogs;
            }
            this.EventLogList.Children.Add(eventLogs);
        }

        void EventLogWindow_Loaded(object sender, RoutedEventArgs e)
        {
            this.eventLogIndex = 0;
            GetEvents(this.eventLogIndex, this.eventLogCount);
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.EventLogs.CollectionChanged += new System.Collections.Specialized.NotifyCollectionChangedEventHandler(EventLogs_CollectionChanged);
            }
            SetupButtons();
        }

        private void EventLogWindow_Unloaded(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.EventLogs.CollectionChanged -= EventLogs_CollectionChanged;
            }
        }

        void EventLogs_CollectionChanged(object sender, System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
        {
            SetupButtons();
        }

        /// <summary>
        /// Callback for close button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }

        /// <summary>
        /// Callback for previous button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonPrevious_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            this.eventLogIndex -= this.eventLogCount;
            if (this.eventLogIndex < 0)
            {
                this.eventLogIndex = 0;
            }
            GetEvents(this.eventLogIndex, this.eventLogCount);
        }

        /// <summary>
        /// Callback for next button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonNext_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            this.eventLogIndex += this.eventLogCount;
            GetEvents(this.eventLogIndex, this.eventLogCount);
        }

        private void SetupButtons()
        {
            // We assume that if less than this.eventLogCount events are returned then we are at the end of the event logs.
            // It's not perfect however, we may have exactly % this.eventLogCount!
            this.buttonNext.IsEnabled = !(this.eventLogs.Items.Count < this.eventLogCount);

            this.buttonPrevious.IsEnabled = (this.eventLogIndex > 0);
        }

        /// <summary>
        /// Prompts the data provider to refresh the event log with the specified events
        /// </summary>
        /// <param name="start">The index of the first event log to show</param>
        /// <param name="count">The number of logs to get</param>
        private void GetEvents(int start, int count)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.GetEventLog(start, count);
            }
        }
    }
}
