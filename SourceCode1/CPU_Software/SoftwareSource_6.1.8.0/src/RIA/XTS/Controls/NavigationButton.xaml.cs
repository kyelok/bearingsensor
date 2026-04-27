/* 
 * NavigationButton.xaml.cs
 * 
 * This is the menu presenter. Holds the Up and Down and item list controls. 
 * 
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 05/04/2012
 */

using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using XTS.ViewModels;

namespace XTS.Controls
{
    public partial class NavigationButton : UserControl
    {
        /// <summary>
        /// The contentScreen we are associated with 
        /// </summary>
        public MainPage.ContentScreen contentScreen 
        { get; set; }

        /// <summary>
        /// Our button's icon
        /// </summary>
        public string Icon
        { get; set; }

        /// <summary>
        /// Our button's Text
        /// </summary>
        public string Text
        { get; set; }

        /// <summary>
        /// Our Icon Fill Color
        /// </summary>
        public Color IconFillColor
        { get; set; }

        /// <summary>
        /// Our Icon Stroke Color
        /// </summary>
        public Color IconStrokeColor
        { get; set; }

        /// <summary>
        /// Our Button's background color
        /// </summary>
        public Color ButtonBackground
        { get; set; }

        /// <summary>
        /// Constructor. 
        /// Sets the default button background. 
        /// </summary>
        /// <param name="cs"></param>
        public NavigationButton(MainPage.ContentScreen cs)
        {
            this.DataContext = this;

            ButtonBackground = (Color)Application.Current.Resources["ColorAMOTButton"];

            contentScreen = cs;
            InitializeComponent();

            navButton.Click += new RoutedEventHandler(navButton_Click);
        }

        /// <summary>
        /// Callback for when the NavigationButton has been clicked. 
        /// We call Render control with the ContentScreen enum we are
        /// assotiated with 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void navButton_Click(object sender, RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            mp.RenderControl(contentScreen);

            NavBarViewModel vm = new NavBarViewModel();

            vm.CloseMenu(); 
           
        }
    }
}
