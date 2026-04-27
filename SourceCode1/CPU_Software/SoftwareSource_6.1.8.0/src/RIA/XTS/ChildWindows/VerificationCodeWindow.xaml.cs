/* 
 * VerificationCodeWindow.xaml.cs
 * 
 * Allows user to enter a code string.
 * C# partial implementation of VerificationCodeWindow.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 10/04/2012
 */

using System.Windows;
using System.Windows.Controls;

namespace XTS.ChildWindows
{
    /// <summary>
    /// Child window class that displays a single text entry box with ok/cancel buttons
    /// </summary>
    public partial class VerificationCodeWindow : ChildWindow
    {
        /// <summary>
        /// The code entered by the user.
        /// </summary>
        public string Code
        {
            get
            {
                return this.textBoxCode.Text;
            }
            set
            {
                this.textBoxCode.Text = value;
            }
        }

        /// <summary>
        /// Default constructor
        /// </summary>
        public VerificationCodeWindow()
        {
            InitializeComponent();

            this.textBoxCode.EnterKey = InputKeyboard.XTSKeyboardEnterKey.OK;
            this.textBoxCode.EnterCallback = new InputKeyboard.XTSKeyboardEnterCallback(KeyboardEnter_Clicked);
            this.textBoxCode.TopParent = this;
        }

        /// <summary>
        /// Callback for on screen keyboard
        /// </summary>
        public void KeyboardEnter_Clicked()
        {
            this.DialogResult = true;
        }

        /// <summary>
        /// Callback for user pressing the ok button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void OKButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = true;
        }

        /// <summary>
        /// Callback for user pressing the cancel button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }
    }
}

