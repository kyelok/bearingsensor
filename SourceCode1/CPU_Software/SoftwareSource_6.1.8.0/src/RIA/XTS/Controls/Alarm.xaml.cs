/* 
 * Alarm.xaml.cs
 * 
 * Control on the main page layout for displaying the alarm list and count.
 * C# partial implementation of Alarm.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 31/01/2012
 */

using System.Collections.Specialized;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Collections.Generic;

using XTS.ChildWindows;

namespace XTS.Controls
{
    /// <summary>
    /// Alarm panel
    /// </summary>
    public partial class Alarm : UserControl
    {
        private const int MAX_ALARM_LIST_COUNT = 5;

        /// <summary>
        /// Delegate for callback functions for when the alarm popup is displayed
        /// </summary>
        public delegate void AlarmPopupShownEventHandler();

        /// <summary>
        /// Callbacks for clients who want notification that the alarm popup is about to be displayed
        /// </summary>
        public event AlarmPopupShownEventHandler AlarmPopupShown;

        /// <summary>
        /// Internal data for DisableAlarmPopups
        /// </summary>
        private bool disableAlarmPopups = false;
        /// <summary>
        /// Causes buttons to be disabled and if a new alarm is raised the screen to return to the mimic if no
        /// AlarmPopupShown event exists.
        /// </summary>
        /// <remarks>It's a little misnomer, because although users are prevented from pressing the button
        /// to view the alarm popup, the system can still show the dialog.</remarks>
        public bool DisableAlarmPopups
        {
            set
            {
                this.disableAlarmPopups = value;
                UpdateUIButton();
            }
        }

        /// <summary>
        /// Tracks if the alarm popup is shown
        /// </summary>
        private bool popupShown = false;

        /// <summary>
        /// The current top most position shown in the alarm list.
        /// </summary>
        private int scrollYItemPosition = 0;

        /// <summary>
        /// Current number of alarms
        /// </summary>
        private int alarmCount = 0;

        /// <summary>
        /// Default Constructor
        /// </summary>
        public Alarm()
        {
            InitializeComponent();

            ScrollUp.IsEnabled = false;
            ScrollDown.IsEnabled = false;
            LayoutRoot.DataContext = this;
        }

        void General_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("UnackedAlarms"))
            {
                UpdateUIButton();
            }
        }

        private void UpdateUIButton()
        {
            if (this.commsOK)
            {
                MainPage mp = MainPage.GetInstance() as MainPage;
                if (this.disableAlarmPopups)
                {
                    this.button.IsEnabled = false;
                }
                else
                {
                    this.button.IsEnabled = (mp.XTSDataSource.General.UnackedAlarms > 0);
                }
            }
            else
            {
                this.button.IsEnabled = false;
            }
        }

        private List<int> prevAlarms = new List<int>();
        private object prevAlarmsLock = new object();
        void Alarms_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            XTSDataCollection<XTSAlarm> alarms = sender as XTSDataCollection<XTSAlarm>;
            bool showPopup = false;
            // Check all alarms to see if we have one that requires a popup shown

            lock (this.prevAlarmsLock)
            {
                List<int> currentAlarms = new List<int>();
                foreach (XTSAlarm alarm in alarms)
                {
                    if (alarm.Type != XTSAlarm.XTSAlarmType.General)
                    {
                        if ((alarm.Acknowledged == false) &&
                            (alarm.Level == XTSAlarm.XTSAlarmLevel.Present))
                        {
                            if (!prevAlarms.Contains(alarm.AlarmID))
                            {
                                showPopup = true;
                            }
                            currentAlarms.Add(alarm.AlarmID);
                            break;
                        }
                    }
                }
                this.prevAlarms = currentAlarms;
                if (showPopup)
                {
                    ShowAlarmPopup();
                }
            }

            // Take account of new items and offset scroll position if we are not at top
            if (this.scrollYItemPosition > 0)
            {
                if (e.NewItems != null)
                {
                    if (e.NewItems.Count > 0)
                    {
                        this.scrollYItemPosition += e.NewItems.Count;
                    }
                }
            }
            UpdateAlarmList();
            CheckScrollButtons();
        }

        public void ShowAlarmPopup()
        {
            if (!this.popupShown)
            {
                // If popups are "disabled" and we have no callback send back to the mimic
                if (this.disableAlarmPopups)
                {
                    MainPage mp = (MainPage)MainPage.GetInstance();
                    if (mp != null)
                    {
                        // Check if we have an event handler
                        if (this.AlarmPopupShown == null)
                        {
                            mp.RenderControl(MainPage.ContentScreen.Mimic);
                        }
                    }
                }

                if (this.AlarmPopupShown != null)
                {
                    // Popup about to be displayed so call event handlers
                    // to close other windows etc. as needed...
                    this.AlarmPopupShown.Invoke();
                }
                AlarmPopup ap = new AlarmPopup();
                ap.Closed += new System.EventHandler(AlarmPopup_Closed);
                this.popupShown = true;
                ap.Show();
            }
        }

        /// <summary>
        /// Allows other users to call the handlers set for notification that
        /// alarm handler will be shown as other dialog popups may want this
        /// functionality (eg software updated)
        /// </summary>
        public void CallPopupHandlers()
        {
            if (this.AlarmPopupShown != null)
            {
                // Popup about to be displayed so call event handlers
                // to close other windows etc. as needed...
                this.AlarmPopupShown.Invoke();
            }
        }

        void AlarmPopup_Closed(object sender, System.EventArgs e)
        {
            this.popupShown = false;
            AlarmPopup ap = sender as AlarmPopup;
            ap.Closed -= AlarmPopup_Closed;
        }

        private void UpdateAlarmList()
        {
            System.TimeSpan animationTime = System.TimeSpan.FromMilliseconds(0);

            this.alarmList.Children.Clear();
            MainPage mp = MainPage.GetInstance() as MainPage;

            int alarmsAdded = 0;
            int alarmCurrent = 0;
            foreach (XTSAlarm item in mp.XTSDataSource.Alarms)
            {
                if (item.Type != XTSAlarm.XTSAlarmType.General)
                {
                    if ((alarmCurrent >= this.scrollYItemPosition) &&
                        (alarmsAdded < Alarm.MAX_ALARM_LIST_COUNT))
                    {
                        alarmList.Children.Add(new AlarmItem(item));
                        alarmsAdded++;
                    }
                    alarmCurrent++;
                }
            }
            this.alarmCount = alarmCurrent;
        }

        /// <summary>
        /// Enables scroll buttons based on the position of the alarm list scroll.
        /// </summary>
        /// <param name="scrollYPosition">The index of the topmost item in the list</param>
        private void CheckScrollButtons()
        {
            this.ScrollUp.IsEnabled = (this.scrollYItemPosition != 0);
            this.ScrollDown.IsEnabled = (this.scrollYItemPosition < (this.alarmCount - Alarm.MAX_ALARM_LIST_COUNT));
        }

        /// <summary>
        /// Callback for when the alarm up button is pressed.
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
        private void ScrollAlarmUp(object sender, System.Windows.RoutedEventArgs e)
        {
            if (this.scrollYItemPosition > 0)
            {
                this.scrollYItemPosition--;
            }
            CheckScrollButtons();
            UpdateAlarmList();
        }

        /// <summary>
        /// Callback for when the alarm up button is pressed.
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
        private void ScrollAlarmDown(object sender, System.Windows.RoutedEventArgs e)
        {
            if (this.scrollYItemPosition < (this.alarmCount - Alarm.MAX_ALARM_LIST_COUNT))
            {
                this.scrollYItemPosition++;
            }
            CheckScrollButtons();
            UpdateAlarmList();
        }

        /// <summary>
        /// Callback for when a user presses the alarm count button.
        /// </summary>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">The event data.</param>
        private void ack_alarm(object sender, System.Windows.RoutedEventArgs e)
        {
            ShowAlarmPopup();
        }

        private void Alarm_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = MainPage.GetInstance() as MainPage;

            Binding b;

            b = new Binding();
            b.Source = mp.XTSDataSource.General;
            b.Path = new PropertyPath("UnackedAlarms");
            b.Mode = BindingMode.OneWay;
            this.Alarms.SetBinding(TextBlock.TextProperty, b);

            UpdateUIButton();
            UpdateAlarmList();
            CheckScrollButtons();

            mp.XTSDataSource.General.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(General_PropertyChanged);
            mp.XTSDataSource.Alarms.CollectionChanged += new NotifyCollectionChangedEventHandler(Alarms_CollectionChanged);
        }

        private void Alarm_Unloaded(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = MainPage.GetInstance() as MainPage;

            mp.XTSDataSource.General.PropertyChanged -= General_PropertyChanged;
            mp.XTSDataSource.Alarms.CollectionChanged -= Alarms_CollectionChanged;

            this.Alarms.ClearValue(TextBlock.TextProperty);
        }

        /// <summary>
        /// Internal data for CommsOK
        /// </summary>
        private bool commsOK = true;
        /// <summary>
        /// Sets up the controls to appear "invalid" or not
        /// </summary>
        public bool CommsOK
        {
            set
            {
                this.commsOK = value;
                if (value)
                {
                    this.button.Opacity = 1.0;
                    this.alarmList.Opacity = 1.0;
                }
                else
                {
                    this.button.Opacity = 0.5;
                    this.alarmList.Opacity = 0.5;
                }
                UpdateUIButton();
            }
        }
    }
}
