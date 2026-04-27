/* 
 * Navigation.xaml.cs
 * 
 * Main menu for the XTS software.
 * C# partial implementation of Navigation.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 07/02/2012
 */

using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Data;
using XTS.Util;

namespace XTS.Controls
{
   
    /// <summary>
    /// Main menu for the system, implements a scrolling stack of buttons.
    /// </summary>
	public partial class Navigation : UserControl
	{
        private Storyboard storyboardSlideEffect = null;
        private NavigationPresenter advancedMenu = null;
        private NavigationButton barGraph = null;
        private NavigationButton trends = null;
        private NavigationButton settings = null;
        private NavigationButton reporting = null;
        private NavigationToggleButton advanced = null;
        private NavigationButton temperature = null;

        /// <summary>
        /// Internal data for Navigation Instance singleton.
        /// </summary>
        private static Navigation instance;
        /// <summary>
        /// Singleton for menu access for showing/hiding.
        /// </summary>
        public static Navigation Instance
        {
            get 
            {
                if (instance == null)
                {
                    instance = new Navigation();
                }

                return instance; 
            }
        }

        /// <summary>
        /// Default constructor.
        /// </summary>
		public Navigation()
		{
			// Required to initialize variables
			InitializeComponent();

            Navigation.instance = this;
        }

        void EngineData_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            barGraph.IsEnabled = true;
            trends.IsEnabled = true;
            settings.IsEnabled = true;
            reporting.IsEnabled = true;
            advanced.IsEnabled = true;

            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp.XTSDataSource.EngineData.TemperatureSensors > 0 && mp.XTSDataSource.Diagnostics.PLCComms == true)
            {
                temperature.IsEnabled = true;
            }
            else temperature.IsEnabled = false;
        }

        /// <summary>
        /// This handles Sliding the background boreder out so it 
        /// encapsulated all the of NavigationPresenters currently 
        /// visible. 
        /// </summary>
        /// <param name="start"></param>
        /// <param name="end"></param>
        /// <param name="duration"></param>
        public void SlideBorder(double start, double end, TimeSpan duration)
        {
            storyboardSlideEffect = new Storyboard();

            DoubleAnimation slide = new DoubleAnimation();
            slide.Duration = new Duration(duration);
            slide.AutoReverse = false;
            slide.From = start;
            slide.To = end+4;
            Storyboard.SetTarget(slide, border);
            Storyboard.SetTargetProperty(slide, new PropertyPath("(Width)"));

            DoubleAnimation slideLayout = new DoubleAnimation();
            slideLayout.Duration = new Duration(duration);
            slideLayout.AutoReverse = false;
            slideLayout.From = start;
            slideLayout.To = end +8;
            Storyboard.SetTarget(slideLayout, this);
            Storyboard.SetTargetProperty(slideLayout, new PropertyPath("(Width)"));

            storyboardSlideEffect.Children.Add(slideLayout);

            storyboardSlideEffect.Begin(); 
        }


        /// <summary>
        /// TODO:Dynamic menu creation via Resources or something
        /// Setup a static menu
        /// </summary>
        public void SetupMenu()
        {
            barGraph = new NavigationButton(MainPage.ContentScreen.BarChart);
            barGraph.Icon = "M54,41.489998 L67,41.489998 L67,59.489998 L54,59.489998 z M23.601004,29.472994 L37.000008,29.472994 L37.000008,59.48999 L23.601004,59.48999 z M8.000001,18.489996 L22.000002,18.489996 L22.000002,59.489998 L8.000001,59.489998 z M39,7.489996 L52,7.489996 L52,59.489998 L39,59.489998 z M0,0 L5.3590012,0 L5.3590012,60.032501 L69.667,60.032501 L69.667,65.489998 L0,65.489998 z";
            barGraph.Text = "Wear Bar Graph";
            barGraph.IconFillColor = (Color)Application.Current.Resources["ColorAMOTText"];
            barGraph.IconStrokeColor = Colors.Transparent;
            
            Menu.MenuItems.Add(barGraph);

            trends = new NavigationButton(MainPage.ContentScreen.Trends);
            trends.Icon = "M65.107834,9.3409071 L65.015938,19.388487 L46.7938,51.764881 L46.812981,51.824997 L46.770061,51.80706 L46.72979,51.878616 L46.695858,51.776051 L21.612389,41.293068 L5.7969837,59.470932 L5.8547001,51.616245 L21.588982,33.53162 L21.588982,33.376999 L21.684795,33.421494 L21.699947,33.404079 L21.699768,33.428444 L44.290581,43.918713 L44.352467,44.11269 z M0,0 L5.5832305,0 L5.5832305,61.416668 L72.582001,61.416668 L72.582001,67 L0,67 z";
            trends.Text = "Trends";
            trends.IconFillColor = (Color)Application.Current.Resources["ColorAMOTText"];
            trends.IconStrokeColor = Colors.Transparent;
            Menu.MenuItems.Add(trends);

            settings = new NavigationButton(MainPage.ContentScreen.Settings);
            settings.Icon = "M21.413544,36.377975 C23.840025,36.377975 25.807011,38.344723 25.807011,40.770973 C25.807011,43.197227 23.840025,45.163971 21.413544,45.163971 C18.987061,45.163971 17.02001,43.197227 17.02001,40.770973 C17.02001,38.344723 18.987061,36.377975 21.413544,36.377975 z M21.600725,31.693104 C21.450821,31.690376 21.300049,31.691429 21.148506,31.69635 C16.29917,31.854042 12.495817,35.913231 12.653489,40.762424 C12.811138,45.611839 16.870117,49.415154 21.719452,49.257462 C26.568699,49.099991 30.372231,45.041019 30.214535,40.191608 C30.061769,35.49374 26.247761,31.777605 21.600725,31.693104 z M16.624947,19.042961 L22.488657,26.278252 L29.358643,19.987499 C30.70343,20.508415 31.985622,21.158298 33.189407,21.92239 L32.219746,31.182858 L41.525856,31.592247 C42.099525,32.888279 42.551956,34.251518 42.868004,35.667908 L35.632557,41.531788 L41.923378,48.401566 C41.402641,49.746574 40.752758,51.028774 39.98867,52.232338 L30.728249,51.262901 L30.318638,60.568806 C29.022612,61.1427 27.659376,61.594917 26.24299,61.910961 L20.379257,54.675716 L13.509426,60.966553 C12.164463,60.445595 10.882294,59.795712 9.6785965,59.031624 L10.648213,49.771175 L1.3420868,49.361786 C0.76843643,48.065758 0.31612968,46.702515 0,45.285908 L7.2353363,39.422245 L0.94454575,32.552467 C1.465435,31.207457 2.1153011,29.92524 2.8794193,28.721582 L12.139843,29.691179 L12.549274,20.385094 C13.845346,19.811357 15.208539,19.359053 16.624947,19.042961 z M48.240063,13.607058 C48.575352,13.609848 48.915916,13.66254 49.252052,13.770126 C51.045013,14.343988 52.033325,16.261995 51.459747,18.054077 C50.886177,19.846136 48.967892,20.833687 47.174934,20.259825 C45.382191,19.686031 44.393616,17.768105 44.967194,15.976044 C45.433228,14.519978 46.78714,13.594975 48.240063,13.607058 z M48.037178,10.225189 C45.3554,10.276245 42.843094,11.918293 41.812119,14.573412 C40.449902,18.081594 42.18969,22.029774 45.698029,23.392029 C49.20636,24.754284 53.15451,23.014595 54.516731,19.506414 C55.878944,15.998232 54.139145,12.050074 50.631042,10.687845 C49.863586,10.38987 49.075073,10.240316 48.297188,10.225233 C48.210373,10.223549 48.123688,10.223541 48.037178,10.225189 z M48.347366,0.00094223022 C49.311478,0.011142731 50.282585,0.10391235 51.251022,0.28333282 L53.234879,7.2292919 L60.050133,4.8298225 C60.85141,5.6104279 61.568657,6.4640675 62.195259,7.3754025 L58.687332,13.688189 L65.203331,16.810486 C65.218643,17.909702 65.126663,19.019896 64.921585,20.126816 L57.975601,22.110466 L60.375221,28.925369 C59.594536,29.726809 58.740944,30.444038 57.829727,31.070412 L51.51651,27.562403 L48.394447,34.078205 C47.295097,34.093456 46.184799,34.001667 45.077805,33.796558 L43.093971,26.850513 L36.278896,29.250141 C35.477417,28.469461 34.760212,27.615675 34.133591,26.704403 L37.641716,20.391724 L31.125725,17.269407 C31.110455,16.170065 31.202181,15.059931 31.407471,13.953075 L38.353455,11.969425 L35.953651,5.1543732 C36.734528,4.3530617 37.588116,3.6358337 38.499355,3.0093956 L44.812557,6.5174484 L47.934628,0.0016174316 C48.072044,-0.0002822876 48.209633,-0.00051116943 48.347366,0.00094223022 z";
            settings.Text = "Settings";
            settings.IconFillColor = (Color)Application.Current.Resources["ColorAMOTText"];
            settings.IconStrokeColor = Colors.Transparent;
            Menu.MenuItems.Add(settings);

            reporting = new NavigationButton(MainPage.ContentScreen.Reporting);
            reporting.Icon = "F1 M 14.1415,21.4294L 21.5275,28.8153L 18.8063,31.5365L 11.4204,24.1506L 14.1415,21.4294 Z M 10.8373,23.5675L 9.28239,22.3201C 8.78374,21.8215 8.97811,20.7619 9.47675,20.2632L 10.2542,19.4858C 10.7529,18.9871 11.6992,18.7928 12.1979,19.2914L 13.5584,20.8464L 10.8373,23.5675 Z M 22.7001,33.0914L 19.3894,32.1196L 22.1105,29.3984L 23.0193,32.7722L 22.7001,33.0914 Z M 25,10C 26.3807,10 27.5,11.1193 27.5,12.5L 27.45,13L 35,13L 35,36L 15,36L 15,30L 17,32L 17,34L 33,34L 33,15L 29.5,15L 31,18L 19,18L 20.5,15L 17,15L 17,22L 15,20L 15,13L 22.55,13L 22.5,12.5C 22.5,11.1193 23.6193,10 25,10 Z M 25,11.5C 24.4477,11.5 24,11.9477 24,12.5C 24,12.6822 24.0487,12.8529 24.1338,13L 25.8662,13C 25.9513,12.8529 26,12.6822 26,12.5C 26,11.9477 25.5523,11.5 25,11.5 Z ";
            reporting.Text = "Reporting";
            reporting.IconFillColor = (Color)Application.Current.Resources["ColorAMOTText"];
            reporting.IconStrokeColor = Colors.Transparent;
            reporting.Image.Margin = new Thickness(6, 4, 14, 16);
            Menu.MenuItems.Add(reporting);            

            this.advancedMenu = SetupAdvancedMenu();
            advanced = new NavigationToggleButton(advancedMenu, Menu);
            advanced.Icon = "F1 M 14,15L 16,15L 16,22L 19,22L 19,25L 16,25L 16,34L 14,34L 14,25L 11,25L 11,22L 14,22L 14,15 Z M 23,15L 25,15L 25,28L 28,28L 28,31L 25,31L 25,34L 23,34L 23,31L 20,31L 20,28L 23,28L 23,15 Z M 32,15L 34,15L 34,17L 37,17L 37,20L 34,20L 34,34L 32,34L 32,20L 29,20L 29,17L 32,17L 32,15 Z ";
            advanced.Text = "Advanced";
            Menu.MenuItems.Add(advanced);

            temperature = new NavigationButton(MainPage.ContentScreen.Temperature);
            temperature.Icon = "M54,18.489996 L67,18.489996 L67,59.489998 L54,59.489998 z M23.601004,29.472994 L37.000008,29.472994 L37.000008,59.48999 L23.601004,59.48999 z M8.000001,41.489998 L22.000002,41.489998 L22.000002,59.489998 L8.000001,59.489998 z M39,7.489996 L52,7.489996 L52,59.489998 L39,59.489998 z M0,0 L5.3590012,0 L5.3590012,60.032501 L69.667,60.032501 L69.667,65.489998 L0,65.489998 z";
            temperature.Text = "Temperature";
            temperature.IconFillColor = (Color)Application.Current.Resources["ColorAMOTText"];
            temperature.IconStrokeColor = Colors.Transparent;
            temperature.Image.Margin = new Thickness(6, 4, 14, 16);
            Menu.MenuItems.Add(temperature); 

            barGraph.IsEnabled = false;
            trends.IsEnabled = false;
            settings.IsEnabled = false;
            reporting.IsEnabled = false;            
            advanced.IsEnabled = true;
            temperature.IsEnabled = false;                                    
        }

        /// <summary>
        /// Setup the Advanced menu
        /// TODO: Probably should be more dynamic like being created via resources.  
        /// </summary>
        /// <param name="parent"></param>
        public NavigationPresenter SetupAdvancedMenu()
        {
            Binding b;
            MainPage mp = (MainPage)MainPage.GetInstance(); 

            NavigationPresenter adv_menu = new NavigationPresenter(); 

            NavigationButton diag = new NavigationButton(MainPage.ContentScreen.Diagnostics); 
            diag.Text ="Diagnostics";
            diag.Icon = "M 32,32L 32,224L 224,224L 224,32L 32,32 Z M 51.842,128L 79.842,128L 88.092,108.421L 96,128L 108.842,128L 122.759,64.0001L 145.259,192L 164.759,112.087L 175.342,128L 203.092,128";
            diag.IconFillColor = Colors.Transparent;
            diag.IconStrokeColor = (Color)Application.Current.Resources["ColorAMOTText"];
            diag.ButtonBackground = (Color)Application.Current.Resources["ColorAMOTButtonHighlighted"];
            diag.Image.Margin = new Thickness(12, 8, 12, 24);
            adv_menu.MenuItems.Add(diag); 

            NavigationButton sensorSetup = new NavigationButton(MainPage.ContentScreen.SensorSetup);
            sensorSetup.Text = "Sensor Setup";
            sensorSetup.Icon = "F1 M 32,0L 159.717,0L 159.717,448L 127.616,448L 127.616,480L 64,480L 64,448L 32,448L 32,0 Z M 532.084,351.972C 549.624,371.849 547.73,402.182 527.853,419.722C 507.976,437.263 477.643,435.369 460.103,415.492L 369.254,312.541C 321.517,329.341 266.276,316.753 230.733,276.475C 199.385,240.951 191.315,192.903 205.358,150.994L 289.307,246.126L 385.282,161.433L 301.333,66.3013C 344.664,57.5811 391.335,71.5657 422.683,107.09C 458.226,147.368 463.844,203.746 441.235,249.021L 532.084,351.972 Z ";
            sensorSetup.IconFillColor = (Color)Application.Current.Resources["ColorAMOTText"];
            sensorSetup.IconStrokeColor = Colors.Transparent;
            sensorSetup.ButtonBackground = (Color)Application.Current.Resources["ColorAMOTButtonHighlighted"];
            sensorSetup.Image.Margin = new Thickness(12, 8, 12, 24);
            b = new Binding();
            b.Source = mp.XTSDataSource.UserData;
            b.Path = new PropertyPath("CurrentUser");
            b.Mode = BindingMode.OneWay;
            b.Converter = new UserPermissionConverter();
            b.ConverterParameter = (string)Application.Current.Resources["SensorSetup"];
            sensorSetup.SetBinding(NavigationButton.IsEnabledProperty, b);
            adv_menu.MenuItems.Add(sensorSetup); 

            NavigationButton learning = new NavigationButton(MainPage.ContentScreen.Learning); 
            learning.Text = "Learning"; 
            learning.Icon = "F1 M 192,56L 336,136L 296,153.778L 296,142.4L 295.971,142.4L 296,141.5C 296,120.789 249.438,104 192,104C 134.562,104 88.0001,120.789 88.0001,141.5L 88.0295,142.4L 88.0001,142.4L 88.0001,153.778L 74.1666,147.63L 74.1666,168.157L 76.5968,180.735L 66.0135,178.13L 69.8468,166.567L 69.8468,145.71L 48,136L 192,56 Z M 95.9999,144L 96.0271,144L 96,143.25C 96,125.991 138.981,112 192,112C 245.019,112 288,125.991 288,143.25L 287.973,144L 288,144L 288,176L 95.9999,176L 95.9999,144 Z M 120,184L 128,184L 128,336L 440,336L 440,152L 312,152L 328,144L 448,144L 448,152L 448,336L 448,344L 120,344L 120,336L 120,184 Z M 136,320L 200,248L 232,280L 288,224L 360,256L 432,168L 432,176L 362.388,264L 288,232L 232,288L 200,256L 136,328L 136,320 Z ";
            learning.IconFillColor = (Color)Application.Current.Resources["ColorAMOTText"];
            learning.IconStrokeColor = Colors.Transparent;
            learning.ButtonBackground = (Color)Application.Current.Resources["ColorAMOTButtonHighlighted"];
            learning.Image.Margin = new Thickness(12, 8, 12, 24);
            b = new Binding();
            b.Source = mp.XTSDataSource.UserData;
            b.Path = new PropertyPath("CurrentUser");
            b.Mode = BindingMode.OneWay;
            b.Converter = new UserPermissionConverter();
            b.ConverterParameter = (string)Application.Current.Resources["EngineLearning"];
            learning.SetBinding(NavigationButton.IsEnabledProperty, b);
            adv_menu.MenuItems.Add(learning); 

            NavigationButton sensorReplace = new NavigationButton(MainPage.ContentScreen.SensorReplace); 
            sensorReplace.Text = "Sensor Replace"; 
            sensorReplace.Icon = "F1 M 32,0L 159.717,0L 159.717,448L 127.616,448L 127.616,480L 64,480L 64,448L 32,448L 32,0 Z M 480,0.00012207L 607.717,0.00012207L 607.717,448L 575.616,448L 575.616,480L 512,480L 512,448L 480,448L 480,0.00012207 Z M 448,219.83L 448,267.892L 281.6,267.892L 355.84,352L 289.28,352L 192,243.861L 289.28,135.722L 355.84,135.722L 281.6,219.83L 448,219.83 Z ";
            sensorReplace.IconFillColor = (Color)Application.Current.Resources["ColorAMOTText"];
            sensorReplace.IconStrokeColor = Colors.Transparent;
            sensorReplace.ButtonBackground = (Color)Application.Current.Resources["ColorAMOTButtonHighlighted"];
            sensorReplace.Image.Margin = new Thickness(12, 8, 12, 24);
            b = new Binding();
            b.Source = mp.XTSDataSource.UserData;
            b.Path = new PropertyPath("CurrentUser");
            b.Mode = BindingMode.OneWay;
            b.Converter = new UserPermissionConverter();
            b.ConverterParameter = (string)Application.Current.Resources["SensorSetup"];
            sensorReplace.SetBinding(NavigationButton.IsEnabledProperty, b);
            adv_menu.MenuItems.Add(sensorReplace); 

            NavigationButton sensorSurvey = new NavigationButton(MainPage.ContentScreen.SurveyorTest); 
            sensorSurvey.Text = "Sensor Survey";
            sensorSurvey.Icon = "M 274.921,160C 271.638,160 268.976,162.653 268.976,165.926C 268.976,169.199 271.638,171.852 274.921,171.852C 278.204,171.852 280.866,169.199 280.866,165.926C 280.866,162.653 278.204,160 274.921,160 Z M 268.976,180.148L 268.521,190.405C 270.635,191.427 273.008,192 275.516,192C 277.573,192 279.539,191.614 281.346,190.912L 280.866,180.148C 281.659,180.543 283.244,183.704 283.244,183.704C 283.244,183.704 284.037,184.889 284.433,189.63L 288,188.444L 286.811,182.518C 286.811,182.518 284.433,174.222 279.677,174.222L 270.165,174.222C 265.409,174.222 263.031,182.518 263.031,182.518L 261.842,188.444L 265.409,189.63C 265.805,184.889 266.598,183.704 266.598,183.704C 266.598,183.704 268.183,180.543 268.976,180.148 Z M 300.175,163.671C 301.556,163.671 302.675,164.79 302.675,166.171L 302.625,166.671L 310.175,166.671L 310.175,189.671L 290.175,189.671L 290.175,166.671L 297.725,166.671L 297.675,166.171C 297.675,164.79 298.795,163.671 300.175,163.671 Z M 300.175,165.171C 299.623,165.171 299.175,165.618 299.175,166.171C 299.175,166.353 299.224,166.524 299.309,166.671L 301.042,166.671C 301.127,166.524 301.175,166.353 301.175,166.171C 301.175,165.618 300.728,165.171 300.175,165.171 Z M 292.175,168.671L 292.175,187.671L 308.175,187.671L 308.175,168.671L 304.675,168.671L 306.175,171.671L 294.175,171.671L 295.675,168.671L 292.175,168.671 Z M 297.96,173.251L 299.689,175.313L 302.499,171.962L 303.363,173.122L 299.689,177.504L 296.988,174.54L 297.96,173.251 Z M 297.96,178.012L 299.689,180.074L 302.499,176.723L 303.363,177.883L 299.689,182.264L 296.988,179.3L 297.96,178.012 Z M 297.96,182.772L 299.689,184.834L 302.499,181.483L 303.363,182.643L 299.689,187.025L 296.988,184.061L 297.96,182.772 Z ";
            sensorSurvey.IconFillColor = (Color)Application.Current.Resources["ColorAMOTText"];
            sensorSurvey.IconStrokeColor = Colors.Transparent;
            sensorSurvey.ButtonBackground = (Color)Application.Current.Resources["ColorAMOTButtonHighlighted"];
            sensorSurvey.Image.Margin = new Thickness(6, 12, 6, 22);
            b = new Binding();
            b.Source = mp.XTSDataSource.UserData;
            b.Path = new PropertyPath("CurrentUser");
            b.Mode = BindingMode.OneWay;
            b.Converter = new UserPermissionConverter();
            b.ConverterParameter = (string)Application.Current.Resources["Surveying"];
            sensorSurvey.SetBinding(NavigationButton.IsEnabledProperty, b);
            adv_menu.MenuItems.Add(sensorSurvey);

            adv_menu.Visibility = System.Windows.Visibility.Collapsed;

            Canvas cv = new Canvas();
            cv.Children.Add(adv_menu);
            this.LayoutRoot.Children.Add(cv); 

            return adv_menu; 
        }

        private void Navigation_Loaded(object sender, RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.EngineData.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(EngineData_PropertyChanged);
            }
            SetupMenu();
        }

        private void Navigation_Unloaded(object sender, RoutedEventArgs e)
        {
            // TODO: Remove bindings from menu buttons.  Always shown however, so unloaded should never be called.
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.EngineData.PropertyChanged -= EngineData_PropertyChanged;
            }
        }

        public void MenuReset()
        {
            this.Menu.Reset();
            if (this.advancedMenu != null)
            {
                this.advancedMenu.Reset();
            }
        }
	}
}