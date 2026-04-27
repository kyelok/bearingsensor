/* 
 * AMOTMessageBox.cs
 * 
 * Generic message box popup window.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 16/03/2012
 */

using System.Windows;
using System.Windows.Controls;

namespace XTS.ChildWindows
{
    /// <summary>
    /// Generic message box class
    /// </summary>
    public partial class AMOTMessageBox : ChildWindow
    {
        /// <summary>
        /// Type of buttons shown on message box
        /// </summary>
        public enum AMOTMessageBoxButtons
        {
            Close,
            OK,
            OKCancel,
            Cancel,
            YesNo,
            AbortRetry,
            Option
        }

        public string Option0Icon
        { get; set; }
        public string Option1Icon
        { get; set; }

        /// <summary>
        /// When using the option mode, allows user to check which button was pressed
        /// </summary>
        public enum AMOTMessageBoxOptionResult
        {
            Option0,
            Option1
        }

        /// <summary>
        /// Internal data for OptionResult
        /// </summary>
        private bool? optionResult0 = null;
        /// <summary>
        /// When using the option mode, allows user to check which button was pressed
        /// </summary>
        public AMOTMessageBoxOptionResult? OptionResult
        {
            get
            {
                if (optionResult0 == null)
                {
                    return null;
                }
                else if (optionResult0 == true)
                {
                    return AMOTMessageBoxOptionResult.Option0;
                }
                else
                {
                    return AMOTMessageBoxOptionResult.Option1;
                }
            }
        }

        /// <summary>
        /// Specifies which buttons to show
        /// </summary>
        public AMOTMessageBoxButtons Buttons
        {
            set
            {
                switch (value)
                {
                    case AMOTMessageBoxButtons.OK:
                        {
                            this.OKButton.Visibility = Visibility.Visible;
                            this.CancelButton.Visibility = Visibility.Collapsed;
                            this.YesButton.Visibility = Visibility.Collapsed;
                            this.NoButton.Visibility = Visibility.Collapsed;
                            this.RetryButton.Visibility = Visibility.Collapsed;
                            this.AbortButton.Visibility = Visibility.Collapsed;
                            this.CloseButton.Visibility = Visibility.Collapsed;
                            this.buttonOption0.Visibility = Visibility.Collapsed;
                            this.buttonOption1.Visibility = Visibility.Collapsed;
                            break;
                        }
                    case AMOTMessageBoxButtons.Cancel:
                        {
                            this.OKButton.Visibility = Visibility.Collapsed;
                            this.CancelButton.Visibility = Visibility.Visible;
                            this.YesButton.Visibility = Visibility.Collapsed;
                            this.NoButton.Visibility = Visibility.Collapsed;
                            this.RetryButton.Visibility = Visibility.Collapsed;
                            this.AbortButton.Visibility = Visibility.Collapsed;
                            this.CloseButton.Visibility = Visibility.Collapsed;
                            this.buttonOption0.Visibility = Visibility.Collapsed;
                            this.buttonOption1.Visibility = Visibility.Collapsed;
                            break;
                        }
                    case AMOTMessageBoxButtons.OKCancel:
                        {
                            this.OKButton.Visibility = Visibility.Visible;
                            this.CancelButton.Visibility = Visibility.Visible;
                            this.YesButton.Visibility = Visibility.Collapsed;
                            this.NoButton.Visibility = Visibility.Collapsed;
                            this.RetryButton.Visibility = Visibility.Collapsed;
                            this.AbortButton.Visibility = Visibility.Collapsed;
                            this.CloseButton.Visibility = Visibility.Collapsed;
                            this.buttonOption0.Visibility = Visibility.Collapsed;
                            this.buttonOption1.Visibility = Visibility.Collapsed;
                            break;
                        }
                    case AMOTMessageBoxButtons.YesNo:
                        {
                            this.OKButton.Visibility = Visibility.Collapsed;
                            this.CancelButton.Visibility = Visibility.Collapsed;
                            this.YesButton.Visibility = Visibility.Visible;
                            this.NoButton.Visibility = Visibility.Visible;
                            this.RetryButton.Visibility = Visibility.Collapsed;
                            this.AbortButton.Visibility = Visibility.Collapsed;
                            this.CloseButton.Visibility = Visibility.Collapsed;
                            this.buttonOption0.Visibility = Visibility.Collapsed;
                            this.buttonOption1.Visibility = Visibility.Collapsed;
                            break;
                        }
                    case AMOTMessageBoxButtons.AbortRetry:
                        {
                            this.OKButton.Visibility = Visibility.Collapsed;
                            this.CancelButton.Visibility = Visibility.Collapsed;
                            this.YesButton.Visibility = Visibility.Collapsed;
                            this.NoButton.Visibility = Visibility.Collapsed;
                            this.RetryButton.Visibility = Visibility.Visible;
                            this.AbortButton.Visibility = Visibility.Visible;
                            this.CloseButton.Visibility = Visibility.Collapsed;
                            this.buttonOption0.Visibility = Visibility.Collapsed;
                            this.buttonOption1.Visibility = Visibility.Collapsed;
                            break;
                        }
                    case AMOTMessageBoxButtons.Option:
                        {
                            this.OKButton.Visibility = Visibility.Collapsed;
                            this.CancelButton.Visibility = Visibility.Visible;
                            this.YesButton.Visibility = Visibility.Collapsed;
                            this.NoButton.Visibility = Visibility.Collapsed;
                            this.RetryButton.Visibility = Visibility.Collapsed;
                            this.AbortButton.Visibility = Visibility.Collapsed;
                            this.CloseButton.Visibility = Visibility.Collapsed;
                            this.buttonOption0.Visibility = Visibility.Visible;
                            this.buttonOption1.Visibility = Visibility.Visible;
                            break;
                        }
                    case AMOTMessageBoxButtons.Close:
                    default:
                        {
                            this.OKButton.Visibility = Visibility.Collapsed;
                            this.CancelButton.Visibility = Visibility.Collapsed;
                            this.YesButton.Visibility = Visibility.Collapsed;
                            this.NoButton.Visibility = Visibility.Collapsed;
                            this.RetryButton.Visibility = Visibility.Collapsed;
                            this.AbortButton.Visibility = Visibility.Collapsed;
                            this.CloseButton.Visibility = Visibility.Visible;
                            this.buttonOption0.Visibility = Visibility.Collapsed;
                            this.buttonOption1.Visibility = Visibility.Collapsed;
                            break;
                        }
                }
            }
        }

        /// <summary>
        /// The text to display in the box
        /// </summary>
        public string Message
        {
            set
            {
                this.TextBlockMessage.Text = value;
            }
        }

        /// <summary>
        /// Default constructor
        /// </summary>
        public AMOTMessageBox()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Callback for OK, Yes, Retry buttons.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void OKButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = true;
        }

        /// <summary>
        /// Callback for Cancel, No, Abort, Close buttons.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }

        private void buttonOption0_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            this.optionResult0 = true;
            this.DialogResult = true;
        }

        private void buttonOption1_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            this.optionResult0 = false;
            this.DialogResult = true;
        }
    }
}

