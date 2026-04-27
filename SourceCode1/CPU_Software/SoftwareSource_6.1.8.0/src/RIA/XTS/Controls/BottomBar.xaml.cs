/* 
 * BottomBar.xaml.cs
 * 
 * The footer for the main page layout.
 * C# partial implementation of BottomBar.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 31/01/2012
 */

using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;

using XTS.ChildWindows;

namespace XTS.Controls
{
    /// <summary>
    /// Footer control for the main screen layout, responsible for binding various data to child controls
    /// </summary>
    public partial class BottomBar : UserControl
    {
        /// <summary>
        /// Default constructor
        /// </summary>
        public BottomBar()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Callback when the user clicks on the screen capture button. 
        /// Takes a screen capture of the Silverlight application and 
        /// writes it out as a PNG
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ButtonScreenCapture_Click(object sender, RoutedEventArgs e)
        {
			ScreenCapture sc = new ScreenCapture();
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp.CurrentContent == MainPage.ContentScreen.Settings)
            {
                System.Windows.Media.Imaging.BitmapImage settingsCapture = Settings.Instance.Capture;
                if (settingsCapture == null)
                {
                    sc.Capture(new UIElement[] { mp.LayoutRoot });
                }
                else
                {
                    sc.Capture(new UIElement[] { mp.LayoutRoot }, settingsCapture);
                }
            }
            else
            {
                sc.Capture(new UIElement[] { mp.LayoutRoot });
            }
        }

		/// <summary>
		/// Callback for pressing help button.
		/// </summary>
		/// <param name="sender"></param>
		/// <param name="e"></param>
        private void buttonHelp_Click(object sender, System.Windows.RoutedEventArgs e)
        {
			HelpWindow hw = new HelpWindow();
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                hw.URL = mp.XTSDataSource.General.HelpURL;
                mp.EnablePopups = false;
            }
            //hw.Closed += new EventHandler(hw_Closed);
            hw.Show();            

        }

        /// <summary>
        /// Callback for when help window closes
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void hw_Closed(object sender, EventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                // Reenable popups
                mp.EnablePopups = true;
            }
            HelpWindow hw = sender as HelpWindow;
            hw.Closed -= hw_Closed;
        }

        private void BottomBar_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                IXTSDataProvider xts = mp.XTSDataSource;

                this.RPM.LabelRPM.Content = xts.EngineData.RPM.ToString();
                
                // Bind engine data RPM to RPM display value.
                Binding b = null;

                b = new Binding();
                b.Source = xts.EngineData;
                b.Path = new PropertyPath("RPM");
                b.Mode = BindingMode.OneWay;
                this.RPM.SetBinding(RPM.ValueProperty, b);

                b = new Binding();
                b.Source = xts.EngineData;
                b.Path = new PropertyPath("Direction");
                b.Mode = BindingMode.OneWay;
                this.RPM.SetBinding(RPM.DirectionProperty, b);
            }
        }

        private void BottomBar_Unloaded(object sender, System.Windows.RoutedEventArgs e)
        {
            this.RPM.ClearValue(RPM.ValueProperty);
            this.RPM.ClearValue(RPM.DirectionProperty);
        }

        public void SetComms(bool network, bool spu)
        {
            // All OK
            this.SPUDateTime.CommsOK = network;
            this.UserLogIn.CommsOK = (network && spu);
            this.RPM.CommsOK = (network && spu);
            this.ButtonHelp.IsEnabled = network;
        }

        /// <summary>
        /// Callback for when Sensor status key window closes
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void hw_Key_Closed(object sender, EventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                // Reenable popups
                mp.EnablePopups = true;
            }
            SensorStatusWindow hw = sender as SensorStatusWindow;
            hw.Closed -= hw_Key_Closed;
        }
        
        private void ButtonSensorKey_Click(object sender, RoutedEventArgs e)
        {
            SensorStatusWindow hw = new SensorStatusWindow();
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {                               
                if (mp.CurrentContent == MainPage.ContentScreen.Settings)
                {
                    mp.RenderControl(MainPage.ContentScreen.Mimic);
                }
                
                mp.EnablePopups = false;
            }
            hw.Closed += new EventHandler(hw_Key_Closed);
            hw.Show();                        
        }

        private void ButtonCloseWindowRia_Click(object sender, RoutedEventArgs e)
        {
            //System.Windows.Browser.HtmlPage.Window.Invoke("open", new object[] { "", "_self", "" });
            System.Windows.Browser.HtmlPage.Window.Invoke("close");
        }       
    }
}
