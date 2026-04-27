/* 
 * NavBar.xaml.cs
 * 
 * Top level set of buttons for use in the header to show the main menu or
 * navigate back to the home/mimic screen.
 * C# partial implementation of NavBar.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 20/01/2012
 */

using System.Windows.Controls;

namespace XTS.Controls
{
    /// <summary>
    /// Control for displaying top level buttons in header.
    /// </summary>
    public partial class NavBar : UserControl
    {

        /// <summary>
        /// Property to return status of menu. 
        /// </summary>
        public bool IsMenuOpen { get; set; }

        /// <summary>
        /// Internal data for Navigation Instance singleton.
        /// </summary>
        private static NavBar instance;
        /// <summary>
        /// Singleton for access to NavBar.
        /// </summary>
        public static NavBar Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new NavBar(); 
                }

                return instance; 
            }
        }

        /// <summary>
        /// Default constructor
        /// </summary>
        public NavBar()
        {
            InitializeComponent();

            NavBar.instance = this;
        }

        public void MenuReset()
        {
            this.navigation.MenuReset();
        }
    }
}
