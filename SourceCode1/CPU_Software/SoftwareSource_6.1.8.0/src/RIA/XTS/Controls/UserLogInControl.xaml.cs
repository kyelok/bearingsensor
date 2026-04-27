/* 
 * UserLogInControl.xaml.cs
 * 
 * Displays the current logged in user and a button for allowing log in/out.
 * C# partial implementation of UserLogInControl.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 06/02/2012
 */

using System.Windows.Controls;

using XTS.ChildWindows;

namespace XTS.Controls
{
    /// <summary>
    /// Control for displaying the current logged in user and a button for allowing log in/out.
    /// </summary>
    public partial class UserLogInControl : UserControl
    {
        /// <summary>
        /// Default constructor
        /// </summary>
        public UserLogInControl()
        {
            // Required to initialize variables
            InitializeComponent();
        }

        /// <summary>
        /// Callback for when user data has changed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void UserData_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("CurrentUser"))
            {
                UpdateButton(sender as XTSUserData);
            }
        }

        /// <summary>
        /// Updates the log in button appropriately for the current logged in user
        /// </summary>
        /// <param name="userData">The data containing the current user data</param>
        private void UpdateButton(XTSUserData userData)
        {
            if (userData.CurrentUser == null)
            {
                this.pathLogIn.Visibility = System.Windows.Visibility.Visible;
                this.pathLogOut.Visibility = System.Windows.Visibility.Collapsed;
                this.textBlockLogIn.Text = XTS.LocalizedResources.GetResourceString("XTSStringLogOn");
                this.labelUser.Content = XTS.LocalizedResources.GetResourceString("XTSStringNone");
                this.labelUser.Opacity = 0.5;

                // Disable button when we have no comms
                if (this.commsOK)
                {
                    this.buttonLogIn.IsEnabled = true;
                }
                else
                {
                    this.buttonLogIn.IsEnabled = false;
                }
            }
            else
            {
                this.pathLogIn.Visibility = System.Windows.Visibility.Collapsed;
                this.pathLogOut.Visibility = System.Windows.Visibility.Visible;
                this.textBlockLogIn.Text = XTS.LocalizedResources.GetResourceString("XTSStringLogOff");
                this.labelUser.Content = userData.CurrentUser.Username;
                this.labelUser.Opacity = 1;

                this.buttonLogIn.IsEnabled = true;
            }
        }

        /// <summary>
        /// Callback for when the log in button is pressed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonLogIn_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                if (mp.XTSDataSource.UserData.CurrentUser == null)
                {
                    LoginPopup lp = new LoginPopup();
                    // Add a callback so we can handle the alarm popup getting shown
                    mp.Alarm_bar.AlarmPopupShown += new Alarm.AlarmPopupShownEventHandler(lp.AlarmPopupShown);
                    lp.Closed += new System.EventHandler(lp_Closed);
                    lp.Show();
                }
                else
                {
                    AMOTMessageBox mb = new AMOTMessageBox();
                    mb.Title = XTS.LocalizedResources.GetResourceString("XTSStringMessageBoxTitleWarning");
                    mb.Message = XTS.LocalizedResources.GetResourceString("XTSStringSureWishLogOut");
                    mb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.YesNo;
                    mb.Closed += new System.EventHandler(mb_Closed);
                    mb.Show();
                }
            }
        }

        /// <summary>
        /// Callback for login popup window closing
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void lp_Closed(object sender, System.EventArgs e)
        {
            LoginPopup lp = sender as LoginPopup;
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                // Remove callback for when alarm popup is about to be displayed
                mp.Alarm_bar.AlarmPopupShown -= lp.AlarmPopupShown;
            }
            lp.Closed -= lp_Closed;
        }

        /// <summary>
        /// Callback for log out message box
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void mb_Closed(object sender, System.EventArgs e)
        {
            ChildWindow cw = sender as ChildWindow;
            if (cw.DialogResult == true)
            {
                MainPage mp = ((MainPage)MainPage.GetInstance());
                if (mp != null)
                {
                    this.buttonLogIn.IsEnabled = false;
                    mp.ShowBusy(true);
                    mp.XTSDataSource.UserLogOff(UserLogOff_Callback);
                    mp.CancelTimeoutThread(); 
                }
            }
            cw.Closed -= mb_Closed;
        }

        /// <summary>
        /// Callback for attempted log off
        /// </summary>
        /// <param name="result"></param>
        public void UserLogOff_Callback(bool result)
        {
            // Check if we are on the main ui thread or not.
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                MainPage mp = ((MainPage)MainPage.GetInstance());
                if (mp != null)
                {
                    mp.ShowBusy(false);
                }
                this.buttonLogIn.IsEnabled = true;
            }
            else
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new XTSResultDelegate(UserLogOff_Callback), result);
            }
        }

        private void UserLogInControl_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                mp.XTSDataSource.UserData.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(UserData_PropertyChanged);
                UpdateButton(mp.XTSDataSource.UserData);
            }
        }

        private void UserLogInControl_Unloaded(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                mp.XTSDataSource.UserData.PropertyChanged -= UserData_PropertyChanged;
            }
        }

        private bool commsOK = false;
        public bool CommsOK
        {
            set
            {
                this.commsOK = value;
                MainPage mp = (MainPage)MainPage.GetInstance();
                UpdateButton(mp.XTSDataSource.UserData);
            }
        }
    }
}
