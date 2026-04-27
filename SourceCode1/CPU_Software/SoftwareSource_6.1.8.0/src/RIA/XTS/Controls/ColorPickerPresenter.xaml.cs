/* 
 * ColorPickerPresenter.xaml.cs
 * 
 * Allows the user to pick a colour
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 03/05/2012
 */

using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Media;
using System.Windows.Shapes;
using XTS.ChildWindows;

namespace XTS.Controls
{
    public partial class ColorPickerPresenter : UserControl
    {

        #region Trend detail dependency property
        /// <summary>
        /// Internal data for Trend
        /// </summary>
        private XTSTrendDetail trend = null;
        /// <summary>
        /// Property for ComponentID
        /// </summary>
        public XTSTrendDetail Trend
        {
            get { return (XTSTrendDetail)GetValue(TrendDetailProperty); }
            set { SetValue(TrendDetailProperty, value); }
        }

        public static readonly DependencyProperty TrendDetailProperty =
            DependencyProperty.Register("Trend", typeof(XTSTrendDetail), typeof(ColorPickerPresenter), new PropertyMetadata(OnTrendDetailPropertyChanged));

        /// <summary>
        /// Callback for the status dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnTrendDetailPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            ColorPickerPresenter cpp = dependencyObject as ColorPickerPresenter;
            cpp.SetTrendDetail((XTSTrendDetail)e.NewValue);
        }

        public void SetTrendDetail(XTSTrendDetail trend)
        {
            Binding b = new Binding();
            b.Path = new PropertyPath("Colour");
            b.Mode = BindingMode.OneWay;
            b.Source = trend;
            b.Converter = new Telerik.Windows.Controls.ColorToBrushConverter();
            this.Rectangle.SetBinding(Rectangle.FillProperty, b);

            b = new Binding();
            b.Path = new PropertyPath("IsAverageDisplayed");
            b.Mode = BindingMode.OneWay;
            b.Source = trend;
            b.Converter = new Telerik.Windows.Controls.InvertedBooleanToVisibilityConverter();
            this.StrokePath.SetBinding(Path.VisibilityProperty, b);

            b = new Binding();
            b.Path = new PropertyPath("IsAverageDisplayed");
            b.Mode = BindingMode.OneWay;
            b.Source = trend;
            b.Converter = new Telerik.Windows.Controls.BooleanToVisibilityConverter();
            this.StrokePathAveraged.SetBinding(Path.VisibilityProperty, b);

            this.trend = trend;
        }
        #endregion // Trend detail dependency property

        #region IsAveraged dependency property
        public bool IsAveraged
        {
            get { return (bool)GetValue(IsAveragedProperty); }
            set { SetValue(IsAveragedProperty, value); }
        }

        public static readonly DependencyProperty IsAveragedProperty =
            DependencyProperty.Register("IsAveraged", typeof(bool), typeof(ColorPickerPresenter), new PropertyMetadata(OnIsAveragedPropertyChanged));

        /// <summary>
        /// Callback for the status dependency property.
        /// </summary>
        /// <param name="dependencyObject">The target object that the property is changing for.</param>
        /// <param name="e">Event Data (includes new value).</param>
        private static void OnIsAveragedPropertyChanged(DependencyObject dependencyObject,
            DependencyPropertyChangedEventArgs e)
        {
            ColorPickerPresenter cpp = dependencyObject as ColorPickerPresenter;
            cpp.SetIsAveraged((bool)e.NewValue);
        }

        public void SetIsAveraged(bool isAveraged)
        {
            if (IsAveraged)
            {
                this.AvgButton.Visibility = System.Windows.Visibility.Visible;
            }
            else
            {
                this.AvgButton.Visibility = System.Windows.Visibility.Collapsed;
            }
        }
        #endregion // IsAveraged dependency property

        /// <summary>
        /// Default constructor
        /// </summary>
        public ColorPickerPresenter()
        {
            InitializeComponent();
        }

        void ColorPickerPresenter_Loaded(object sender, RoutedEventArgs e)
        {
            SetIsAveraged(this.IsAveraged);
        }

        private void ColorButton_Click(object sender, RoutedEventArgs e)
        {
            TrendDetail td = new TrendDetail();
            if (this.trend != null)
            {
                if (this.trend.Axis == 0)
                {
                    td.Axis1Selected = true;
                }
                else if (this.trend.Axis == 1)
                {
                    td.Axis2Selected = true;
                }
            }
            if (trend.Colour == null)
            {
                td.Color = Colors.Transparent;
            }
            else
            {
                td.Color = (Color) trend.Colour;
            }
            td.Description = trend.Description;

            td.YAxis1Name = Trends.Instance.YAxis1.Title.ToString();
            if (Trends.Instance.YAxis2 != null)
            {
                td.YAxis2Name = Trends.Instance.YAxis2.Title.ToString();
            }
            else
            {
                td.YAxis2Name = null;
            }
            td.Closed += new System.EventHandler(td_Closed);

            td.Show(); 
        }

        void td_Closed(object sender, System.EventArgs e)
        {
            TrendDetail td = sender as TrendDetail;
            if (td.DialogResult == true)
            {
                this.trend.Colour = td.Color;
                this.trend.Description = td.Description;

                if (td.Axis1Selected)
                {
                    this.trend.Axis = 0;
                }
                else if (td.Axis2Selected)
                {
                    this.trend.Axis = 1;
                }
                Trends.Instance.RefreshTrendGraphs();
            }
            td.Closed -= td_Closed;
        }

        private void AvgButton_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            // Toggle average display
            this.trend.IsAverageDisplayed = !this.trend.IsAverageDisplayed;
        }

        private void ColorPickerPresenter_Unloaded(object sender, System.Windows.RoutedEventArgs e)
        {
            this.Rectangle.ClearValue(Rectangle.FillProperty);
            this.StrokePath.ClearValue(Path.VisibilityProperty);
            this.StrokePathAveraged.ClearValue(Path.VisibilityProperty);
        }
    }
}
