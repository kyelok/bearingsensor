/* 
 * NavigationPresenter.xaml.cs
 * 
 * This is the menu presenter. Holds the Up and Down and item list controls. 
 * 
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 05/04/2012
 */

using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;

namespace XTS.Controls
{
    public partial class NavigationPresenter : UserControl
    {
        private const int VISIBLE_BUTTONS = 4;
        private int currentTopButton = 0;

        ObservableCollection<UIElement> items = new ObservableCollection<UIElement>();

        /// <summary>
        /// This Menu list's menu items. 
        /// </summary>
        public ObservableCollection<UIElement> MenuItems
        {
            get
            {
                return items; 
            }
        }

        /// <summary>
        /// Constructor
        /// </summary>
        public NavigationPresenter()
        {
            InitializeComponent();
            this.DataContext = this;
        }

        /// <summary>
        /// Callback for the loaded event, sets up how many viewableitems 
        /// there is on the item list. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void NavigationPresenter_Loaded(object sender, RoutedEventArgs e)
        {
            Reset();
        }

        /// <summary>
        /// Initialises the menu to the first item
        /// </summary>
        public void Reset()
        {
            this.currentTopButton = 0;
            UpdatePosition();
        }

        /// <summary>
        /// Disabled the menukeys when a submenu has been spawned.
        /// </summary>
        public void DisableScrollKeys()
        {
            this.Up.IsEnabled = false;
            this.Down.IsEnabled = false;
        }

        /// <summary>
        /// Enables the Scrollkeys once the child menu has been closed
        /// </summary>
        public void EnableScrollKeys()
        {
            // Update position will do logic based on current position
            UpdatePosition();
        }

        /// <summary>
        ///
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Up_Click(object sender, RoutedEventArgs e)
        {
            if (this.currentTopButton > 0)
            {
                this.currentTopButton--;
                UpdatePosition();
            }
        }

        /// <summary>
        /// Callback for down button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Down_Click(object sender, RoutedEventArgs e)
        {
            if ((this.currentTopButton + NavigationPresenter.VISIBLE_BUTTONS) < this.items.Count)
            {
                this.currentTopButton++;
                UpdatePosition();
            }
        }
        
        /// <summary>
        /// Updates the position of the buttons based on the current top button.
        /// </summary>
        private void UpdatePosition()
        {
            if (this.items.Count > 0)
            {
                UIElement b = this.items[this.currentTopButton];
                if (b != null)
                {
                    this.ItemList.ScrollIntoView(b);
                }
                b = this.items[this.currentTopButton + NavigationPresenter.VISIBLE_BUTTONS - 1];
                if (b != null)
                {
                    this.ItemList.ScrollIntoView(b);
                }
                this.Up.IsEnabled = (currentTopButton > 0);
                this.Down.IsEnabled = ((currentTopButton + NavigationPresenter.VISIBLE_BUTTONS) < this.items.Count);
            }
        }
    }
}
