/* 
 * TrendConfigName.xaml.cs
 * 
 * Popup that allows user to set a name for a trend config.
 * C# partial implementation of TrendConfigName.xaml silverlight user control screen.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 23/05/2012
 */

using System.Windows;
using System.Windows.Controls;

using XTS.ChildWindows;

namespace XTS
{
    /// <summary>
    /// Class for displaying a child window to allow user to set a text description of a trend config
    /// </summary>
    public partial class TrendConfigName : ChildWindow
    {
        /// <summary>
        /// The description of the trend config
        /// </summary>
        public string Description
        {
            get
            {
                return this.textBoxDescription.Text;
            }
            set
            {
                this.textBoxDescription.Text = value;
            }
        }

        /// <summary>
        /// Default constructor
        /// </summary>
        public TrendConfigName()
        {
            InitializeComponent();

            this.textBoxDescription.EnterKey = InputKeyboard.XTSKeyboardEnterKey.OK;
            this.textBoxDescription.EnterCallback = new InputKeyboard.XTSKeyboardEnterCallback(KeyboardEnter_Clicked);
            this.textBoxDescription.TopParent = this;
        }

        /// <summary>
        /// Callback for on screen keyboard
        /// </summary>
        public void KeyboardEnter_Clicked()
        {
            this.DialogResult = true;
        }

        /// <summary>
        /// Callback for ok button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void OKButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = true;
        }

        /// <summary>
        /// Callback for cancel button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }
    }
}

