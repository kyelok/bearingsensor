/* 
 * GridDeleteButton.xaml.cs
 * 
 * Allows the user to delete a grid item. 
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 03/05/2012
 */

using System.Windows;
using System.Windows.Controls;

using XTS.ChildWindows;

namespace XTS.Controls
{
    public partial class GridDeleteButton : UserControl
    {
        /// <summary>
        /// Constructor
        /// </summary>
        public GridDeleteButton()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Callback for when the user clicks the delete button.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void DeleteTrend_Click(object sender, RoutedEventArgs e)
        {
            AMOTMessageBox amb = new AMOTMessageBox();
            amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringMessageBoxTitleWarning"); ;
            amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringSureRemoveSelectedTrend");
            amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OKCancel;
            amb.Closed += new System.EventHandler(amb_Closed);
            amb.Show();
        }

        void amb_Closed(object sender, System.EventArgs e)
        {
            AMOTMessageBox amb = sender as AMOTMessageBox;
            if (amb.DialogResult == true)
            {
                MainPage mp = MainPage.GetInstance() as MainPage;
                mp.XTSDataSource.RemoveTrendFromConfig(this.Trend);
            }
            amb.Closed -= amb_Closed;
        }

        /// <summary>
        /// Property for ComponentID
        /// </summary>
        public XTSTrendDetail Trend
        {
            get { return (XTSTrendDetail)GetValue(TrendDetailProperty); }
            set { SetValue(TrendDetailProperty, value); }
        }

        public static readonly DependencyProperty TrendDetailProperty =
            DependencyProperty.Register("Trend", typeof(XTSTrendDetail), typeof(GridDeleteButton), new PropertyMetadata(null));
    }
}
