/* 
 * NavBarViewModel.cs
 * 
 * Defines the states and functionality used in the main menu.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 31/01/2012
 */

using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;

using XTS.Controls;

namespace XTS.ViewModels
{
    public class NavBarViewModel
    {
        MainPage mp = (MainPage)MainPage.GetInstance();

        public void HomeButtonClicked()
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            mp.RenderControl(MainPage.ContentScreen.Mimic);
            CloseMenu();
        }

        public void MenuToggle_Checked(object sender, RoutedEventArgs e)
        {
            OpenMenu();
        }
        public void MenuToggle_Unchecked(object sender, RoutedEventArgs e)
        {
            CloseMenu();
        }

        public void OpenMenu()
        {
            NavBar.Instance.MenuReset();
            VisualStateManager.GoToState(NavBar.Instance, "Open", true);
            NavBar.Instance.MenuToggle.IsChecked = true;
        }

		public void CloseMenu()
		{
            VisualStateManager.GoToState(NavBar.Instance, "Close", true);
            NavBar.Instance.MenuToggle.IsChecked = false;
		}
    }
}
