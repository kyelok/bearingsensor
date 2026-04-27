/* 
 * LoginPopup.xaml.cs
 * 
 * Child window to show login window for useres.
 * C# partial implementation of LoginPopup.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 30/03/2012
 */

using System.Windows;
using System.Windows.Controls;


namespace XTS.ChildWindows
{
    /// <summary>
    /// Interaction logic for LoginPopup.xaml
    /// </summary>
    public partial class LoginPopup : ChildWindow
    {

        MainPage mp;

        private XTSDataCollection<XTSUser> userList;

        private ChildWindow parent = null;

        /// <summary>
        /// Collection of the list of users on the system. 
        /// </summary>
        public XTSDataCollection<XTSUser> UserList
        {
            get { return userList; }
        }

        /// <summary>
        /// Constructor for the LoginPopup
        /// </summary>
        public LoginPopup() : this(null)
        { }

        /// <summary>
        /// Constructor for the LoginPopup
        /// </summary>
        public LoginPopup(ChildWindow parent)
        {
            DataContext = this;

            InitializeComponent();

            this.mp = (MainPage) MainPage.GetInstance();
            this.parent = parent;

            this.userList = mp.XTSDataSource.UserData.Users;

            this.BorderThickness = new Thickness(0, 0, 0, 0);

            this.InputPassword.EnterKey = InputKeyboard.XTSKeyboardEnterKey.Login;
            this.InputPassword.EnterCallback = new InputKeyboard.XTSKeyboardEnterCallback(KeyboardEnter_Clicked);
            this.InputPassword.TopParent = this;
        }

        public void KeyboardEnter_Clicked()
        {
            ValidateOK();
        }

        /// <summary>
        /// Callback for the OKButton being clicked. Does some validation of the details
        /// entered. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void OKButton_Click(object sender, RoutedEventArgs e)
        {
            ValidateOK();
        }

        private void ValidateOK()
        {
            XTSUser selected_user = (XTSUser)UserListBox.SelectedItem;

            if (selected_user == null)
            {
                Error(XTS.LocalizedResources.GetResourceString("XTSStringNoSelectedUser"));
            }
            else
            {
                this.IsEnabled = false;
                this.mp.XTSDataSource.UserData.LastPassword = InputPassword.PasswordText;
                this.mp.XTSDataSource.UserLogOn(selected_user, InputPassword.PasswordText, LogOnCallback);

                this.mp.ShowBusy(true);
                this.Visibility = System.Windows.Visibility.Collapsed;
                if (this.parent != null)
                {
                    this.parent.Visibility = System.Windows.Visibility.Collapsed;
                }
            }
        }

        /// <summary>
        /// Callback for when a log in operation has completed
        /// </summary>
        /// <param name="result">If the operation succeeded or not</param>
        public void LogOnCallback(bool result)
        {
            // Check if we are on the main ui thread or not.
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                if (this.parent != null)
                {
                    this.parent.Visibility = System.Windows.Visibility.Visible;
                }
                this.IsEnabled = true;
                this.mp.ShowBusy(false);

                if (result)
                {
                    Close();
                }
                else
                {
                    this.Visibility = System.Windows.Visibility.Visible;
                    Error(XTS.LocalizedResources.GetResourceString("XTSStringUserNotLoggedIn"), new System.EventHandler(loginfailed_Closed));
                }
            }
            else
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new XTSResultDelegate(LogOnCallback), result);
            }
        }

        /// <summary>
        /// Callback for when login failed error message is displayed.  Clears password and reselects control
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void loginfailed_Closed(object sender, System.EventArgs e)
        {
            AMOTMessageBox amb = sender as AMOTMessageBox;
            amb.Closed -= loginfailed_Closed;

            this.InputPassword.Text = string.Empty;
            this.InputPassword.Focus();
        }

        /// <summary>
        /// Cancel callback
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        /// <summary>
        /// Callback function for when alarm popup is shown
        /// </summary>
        public void AlarmPopupShown()
        {
            this.Close();
        }

        /// <summary>
        /// Callback for loaded event (window display)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void LoginPopup_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            // Move this window so that it won't obstruct the keyboard.
            //InputKeyboard.MoveChildWindow(this);
        }

        /// <summary>
        /// Report error to user.
        /// </summary>
        /// <param name="text">The message to display</param>
        private void Error(string text, System.EventHandler errorMessageClosed = null)
        {
            AMOTMessageBox amb = new AMOTMessageBox();
            amb.Message = text;
            amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringErrorExclamation");
            amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.Close;
            if (errorMessageClosed != null)
            {
                amb.Closed += errorMessageClosed;
            }
            amb.Show();
        }
    }
}
