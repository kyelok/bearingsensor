using System;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using XTS.Storyboards;

namespace XTS.ChildWindows
{
    public partial class AlarmPopup : ChildWindow
    {
        MainPage mp;

        /// <summary>
        /// This is the alarm that the dialog box is currently displaying and that will
        /// be processed when the user clicks OK.
        /// </summary>
        XTSAlarm alarmCurrentlyBeingHandled;

        /// <summary>
        /// AlarmPopup constructor
        /// </summary>
        public AlarmPopup()
        {
            this.mp = (MainPage) MainPage.GetInstance();
            
            InitializeComponent();
        }

        void AlarmPopup_Unloaded(object sender, RoutedEventArgs e)
        {
            this.mp.AlarmFlashSync.Callback -= this.AlarmFlashSync_Callback;

            this.mp.XTSDataSource.UserData.PropertyChanged -= UserData_PropertyChanged;
            this.mp.XTSDataSource.Alarms.CollectionChanged -= Alarms_CollectionChanged;
        }

        private bool flashState = false;
        public void AlarmFlashSync_Callback(bool state)
        {
            this.flashState = state;
            SetColours();
        }

        private void SetColours()
        {
            if ((this.alarmCurrentlyBeingHandled.Level != XTSAlarm.XTSAlarmLevel.Cleared) &&
                             !this.alarmCurrentlyBeingHandled.Acknowledged)
            {
                // Based on this.flashState
                if (this.flashState)
                {
                    this.TextBlockMessage.Background = new SolidColorBrush(this.alarmCurrentlyBeingHandled.BackgroundColor);
                    this.TextBlockMessage.Foreground = new SolidColorBrush(this.alarmCurrentlyBeingHandled.ForegroundColor);
                }
                else
                {
                    Color backgroundNewColor = Color.FromArgb((byte)255, (byte)(this.alarmCurrentlyBeingHandled.BackgroundColor.R / 4),
                        (byte)(this.alarmCurrentlyBeingHandled.BackgroundColor.G / 4),
                        (byte)(this.alarmCurrentlyBeingHandled.BackgroundColor.B / 4));

                    this.TextBlockMessage.Background = new SolidColorBrush(backgroundNewColor);
                    this.TextBlockMessage.Foreground = new SolidColorBrush(Colors.White);
                }
            }
            else
            {
                this.TextBlockMessage.Background = new SolidColorBrush(this.alarmCurrentlyBeingHandled.BackgroundColor);
                this.TextBlockMessage.Foreground = new SolidColorBrush(this.alarmCurrentlyBeingHandled.ForegroundColor);
            }
        }


        /// <summary>
        /// This handles updates to the alarms list in the DataSource
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void Alarms_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Reset)
            {
                bool found_unack = DisplayNextAlarm();

                if (!found_unack)
                {
                    this.DialogResult = true;
                }
            }
        }

        /// <summary>
        /// Callback to notify us when the current user has changed. 
        /// This allows us to update the buttons on the alarm popup 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void UserData_PropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("CurrentUser"))
            {
                XTSUserData s = sender as XTSUserData;
                UpdateButtons(s.CurrentUser);
            }
        }

        /// <summary>
        /// Update the buttons shown on the alarm popup based on the usergroup 
        /// permissions. Currently everything > none can dismiss popups and ignore. 
        /// 
        /// </summary>
        /// <param name="data">Current user data</param>
        private void UpdateButtons(XTSUser data)
        {
            XTSUser.XTSUserLevel userLevel;

            if (data != null)
            {
                userLevel = (XTSUser.XTSUserLevel)data.Permissions;
            }
            else
            {
                userLevel = XTSUser.XTSUserLevel.None;
            }

            if (userLevel > XTSUser.XTSUserLevel.None)
            {
                LoginButton.Visibility = System.Windows.Visibility.Collapsed;
                CancelButton.Visibility = System.Windows.Visibility.Visible;
                OKButton.Visibility = System.Windows.Visibility.Visible; 
            }
            else
            {
                LoginButton.Visibility = System.Windows.Visibility.Visible;
                CancelButton.Visibility = System.Windows.Visibility.Collapsed;
                OKButton.Visibility = System.Windows.Visibility.Collapsed; 
            }
        }


        /// <summary>
        /// Callback for when the AlarmPopup has been loaded
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void AlarmPopup_Loaded(object sender, RoutedEventArgs e)
        {
            this.flashState = mp.AlarmFlashSync.State;
            this.mp.AlarmFlashSync.Callback += new SyncState.SyncStateCallback(this.AlarmFlashSync_Callback);

            mp.XTSDataSource.UserData.PropertyChanged += new PropertyChangedEventHandler(UserData_PropertyChanged);
            mp.XTSDataSource.Alarms.CollectionChanged += new NotifyCollectionChangedEventHandler(Alarms_CollectionChanged);

            DisplayNextAlarm();

            UpdateButtons(mp.XTSDataSource.UserData.CurrentUser);
        }

        private void AcknowledgeAlarmResultCallback(bool result)
        {
            bool found_unack = false;

            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess() == false)
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new XTSResultDelegate(AcknowledgeAlarmResultCallback), result);
                return;
            }

            this.OKButton.IsEnabled = true;
            this.CancelButton.IsEnabled = true;

            if (result)
            {
                this.alarmCurrentlyBeingHandled.Acknowledge(mp.XTSDataSource.UserData.CurrentUser.Username, DateTime.Now);

                found_unack = DisplayNextAlarm();

                if (!found_unack)
                {
                    this.DialogResult = true;
                }
            }
            else
            {
                AMOTMessageBox amb = new AMOTMessageBox();
                amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringErrorExclamation");
                amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringAckAlarmFailed");
                amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OK;
                amb.Show();
            }
        }

        /// <summary>
        /// Finds the next unacknowledged alarm to display and displays it.        
        /// </summary>
        /// <returns>Returns true if there is a unacknowledged alarm to display, otherwise false.</returns>
        private bool DisplayNextAlarm()
        {
            bool found_unack = false;

            int count = mp.XTSDataSource.Alarms.Count - 1;
            for (int i = count; i >= 0; i--)
            {
                if (mp.XTSDataSource.Alarms[i].Acknowledged == false)
                {
                    this.alarmCurrentlyBeingHandled = mp.XTSDataSource.Alarms[i];
                    found_unack = true;
                    break;
                }
            }

            this.TextBlockMessage.Content = this.alarmCurrentlyBeingHandled.Message;

            if (this.alarmCurrentlyBeingHandled.Count > 1)
            {
                this.TextBlockCount.Visibility = System.Windows.Visibility.Visible;
                this.TextBlockCount.Text = XTS.LocalizedResources.GetResourceString("XTSStringAlarmRetriggered",
                    new object[] { this.alarmCurrentlyBeingHandled.Count - 1 });
            }
            else
            {
                this.TextBlockCount.Visibility = System.Windows.Visibility.Collapsed;
            }

            SetColours();

            return found_unack;
        }

        /// <summary>
        /// Callback for the OK button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void OKButton_Click(object sender, RoutedEventArgs e)
        {
            int count = mp.XTSDataSource.Alarms.Count - 1;
            for (int i = count; i >= 0; i--)
            {
                if (mp.XTSDataSource.Alarms[i].Acknowledged == false)
                {
                    this.alarmCurrentlyBeingHandled = mp.XTSDataSource.Alarms[i];
                    break;
                }
            }

            int alarmId = this.alarmCurrentlyBeingHandled.AlarmID;
            this.OKButton.IsEnabled = false;
            this.CancelButton.IsEnabled = false;
            mp.XTSDataSource.AcknowledgeAlarm(alarmId, this.AcknowledgeAlarmResultCallback);
        }

        /// <summary>
        /// Callback for the Cancelbutton being clicked
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }

        /// <summary>
        /// Callback for the Login button being clicked. Show the login window
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            LoginPopup lp = new LoginPopup(this);

            lp.Show();
        }
    }
}

