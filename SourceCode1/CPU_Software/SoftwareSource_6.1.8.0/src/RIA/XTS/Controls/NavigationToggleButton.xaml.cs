/* 
 * NavigationToggleButton.xaml.cs
 * 
 * Togglebutton for the navigation menu.
 * This is intended to handle the animation for displaynig a new submenu
 * 
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 05/04/2012
 */

using System;
using System.Windows;
using System.Windows.Controls;
using XTS.Storyboards;

namespace XTS.Controls
{
    public partial class NavigationToggleButton : UserControl
    {
        /// <summary>
        /// The Submenu which this togglebutton shows and hides
        /// </summary>
        private NavigationPresenter navigationPresenter;

        /// <summary>
        /// The parent menu, which this togglebutton is part of
        /// and the submenu is a child of
        /// </summary>
        private NavigationPresenter parent;

        /// <summary>
        /// Animation
        /// </summary>
        SlideMenuAnimation animation; 

        /// <summary>
        /// Icon for the button
        /// </summary>
        public string Icon
        { get; set; }

        /// <summary>
        /// Text for the togglebutton
        /// </summary>
        public string Text
        { get; set; }

        /// <summary>
        /// Constructor
        /// </summary>
        public NavigationToggleButton()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="navigationPresenter">The submenu which this togglebutton displays</param>
        /// <param name="p">Parent menu</param>
        public NavigationToggleButton(NavigationPresenter navigationPresenter, NavigationPresenter p)
        {
            this.DataContext = this;

            InitializeComponent();
            this.navigationPresenter = navigationPresenter;

            this.parent = p; 
            animation = new SlideMenuAnimation();

            animation.SetupAnimation(navigationPresenter, parent.Margin.Left, (parent.Margin.Left + p.Width) + 4);
        }

        /// <summary>
        /// Callback for when the ToggleButton is loaded. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void NavigationToggleButton_Loaded(object sender, RoutedEventArgs e)
        {
            NavBar.Instance.MenuToggle.Unchecked += new RoutedEventHandler(MenuToggle_Unchecked);
        }

        /// <summary>
        /// Callback to notify us when the Menu button has been unchecked. 
        /// Closes the submenu
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void MenuToggle_Unchecked(object sender, RoutedEventArgs e)
        {
            Advanced.IsChecked = false;
        }

        /// <summary>
        /// Plays the slide out animations
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Advanced_Checked(object sender, RoutedEventArgs e)
        {
            parent.DisableScrollKeys(); 
            animation.SlideOut();

            double parentRight = parent.Margin.Left + parent.Width + 4;

            Navigation.Instance.SlideBorder(parentRight, parentRight + (navigationPresenter.Width ), new TimeSpan(0, 0, 0, 0, 500));
        }

        /// <summary>
        /// Plays the close animation
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Advanced_Unchecked(object sender, RoutedEventArgs e)
        {
            animation.SlideIn();
            parent.EnableScrollKeys();

            double startWidth = parent.Width + (navigationPresenter.Width );

            Navigation.Instance.SlideBorder(startWidth, parent.Width + 4, new TimeSpan(0, 0, 0, 0, 500));
        }
    }
}
