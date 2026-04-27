/* 
 * Trends.xaml.cs
 * 
 * Main page screen for displaying the trends bar graphs and trend configuration.
 * C# partial implementation of Trends.xaml silverlight user control screen.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 25/01/2012
 */

using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Markup;
using System.Windows.Media;
using Telerik.Charting;
using Telerik.Windows.Controls;
using Telerik.Windows.Controls.ChartView;
using XTS.ChildWindows;
using XTS.Util;

namespace XTS
{
	/// <summary>
	/// Interaction logic for Trends.xaml
	/// </summary>
    public partial class Trends : UserControl
    {
        #region Structs/Enums etc
        /// <summary>
        /// Used to keep track of graphs that we are currently showing.
        /// </summary>
        /// <remarks>Class used effectively as a struct to keep track of data, hence public members
        /// instead of properties and no constructor.</remarks>
        private class TrendControl
        {
            public LineSeries line = null;
            public XTSTrend trend = null;
            public RadCartesianChart avgChart = null;
            public LinearAxis avgyaxis2 = null;
        }

        /// <summary>
        /// The possible modes that the screen can be in
        /// </summary>
        private enum TrendState
        {
            Realtime,
            Historical
        }
        #endregion // Structs/Enums etc

#if DEBUG
        /// <summary>
        /// The number of intervals on screen for pressing the small step button
        /// </summary>
        private const int TRENDS_STEP = 30;
#else
        /// <summary>
        /// The number of intervals on screen for pressing the small step button
        /// </summary>
        private const int TRENDS_STEP = 4;
#endif
        /// <summary>
        /// Maximum number of minutes viewed for realtime data.
        /// </summary>
        public const int MAX_REALTIME_SPAN_MINS = 24 * 60;

        /// <summary>
        /// The number of trends that are visible to the user in the trendlist control.
        /// </summary>
        /// <remarks>This should probably be calculated by listbox height / list item height</remarks>
        private const int TRENDLIST_VISIBLE_COUNT = 4;

        /// <summary>
        /// Instance of the Trends screen
        /// </summary>
        private static Trends instance;
        public static Trends Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new Trends();
                }

                return instance;
            }
            set { instance = value; }
        }

        #region Private Member Variables
        /// <summary>
        /// Data provider for XTS trend information
        /// </summary>
        private IXTSDataProvider xts;

        /// <summary>
        /// The scale of the left hand axis (+ve and -ve)
        /// </summary>
        private uint trendRange = 1000;

        /// <summary>
        /// The range of the RPM graph (0-rpmRange)
        /// </summary>
        private uint rpmRange = 100;

        /// <summary>
        /// The trends that have been added to the chart and associated
        /// </summary>
        private List<TrendControl> trendControls;

        /// <summary>
        /// The last time to be displayed on the graph.
        /// </summary>
        private DateTime endRange;

        /// <summary>
        /// The current mode for the screen
        /// </summary>
        private TrendState currentState = TrendState.Realtime;

        /// <summary>
        /// The default time span to display
        /// </summary>
        private uint spanTimeMinutes = 60;

        private bool yAxis2Visible = true;
        private List<Axis> additionalYAxis;
        private LinearAxis yAxis2;
        public LinearAxis[] ChartAxis
        {
            get
            {
                LinearAxis[] axis = new LinearAxis[2];
                axis[0] = this.YAxis1;
                axis[1] = this.yAxis2;
                return axis;
            }
        }        

        /// <summary>
        /// The fake history to keep chart width at the time span
        /// </summary>
        private XTSDataCollection<XTSTrendHistory> fakeHis = new XTSDataCollection<XTSTrendHistory>();

        /// <summary>
        /// Lock for protecting access to trend and graph plot lines
        /// </summary>
        private object objLock = new object();

        /// <summary>
        /// The item index of the trend list item shown at the top of the listbox
        /// </summary>
        private int currentTrendListItemTop = 0;

        #endregion // Member Variables

        #region Public Properties
        public LinearAxis YAxis2
        {
            get
            {
                if (this.yAxis2Visible)
                {
                    return this.yAxis2;
                }
                else
                {
                    return null;
                }
            }
        }
        #endregion

        #region Constructor
        /// <summary>
        /// Constructor for Trends screen 
        /// </summary>
        public Trends()
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            this.xts = mp.XTSDataSource;            

            this.trendRange = this.xts.General.BarScaleWear;
            this.rpmRange = this.xts.General.BarScaleRPM;

            // TODO: Load the initial span from somewhere?
            this.spanTimeMinutes = 60;

            InitializeComponent();

            this.DataContext = this;

            // Insert code required on object creation below this point.
            Trends.instance = this;

            this.YAxis1.Minimum = -1.0 * this.trendRange;
            this.YAxis1.Maximum = (double)this.trendRange;

            this.additionalYAxis = new List<Axis>();

            LinearAxis la = new LinearAxis();
            la.HorizontalLocation = AxisHorizontalLocation.Right;
            la.Title = XTS.LocalizedResources.GetResourceString("XTSStringRPM");
            if (xts.EngineData.WIO != null)
            {
                la.Title += " / % / PPM";
            }
            if (xts.EngineData.SEDM != null)
            {
                la.Title += " / mV";
            }
            if (xts.EngineData.TemperatureSensors != 0)
            {
                la.Title += " / °C";
            }
            if (xts.EngineData.CPP != null)
            {
                la.Title += " / % / mA(x10)";
            }
            
            la.Minimum = 0;
            la.Maximum = this.rpmRange;
            la.Visibility = System.Windows.Visibility.Collapsed;
            la.RangeExtendDirection = NumericalAxisRangeExtendDirection.None;
            this.additionalYAxis.Add(la);
            this.yAxis2 = (LinearAxis)this.additionalYAxis[0];

            this.trendControls = new List<TrendControl>();

            this.xCartesianChart.VerticalAxis = YAxis1;

            CreateFakeLines();

            this.currentState = TrendState.Realtime;
            this.endRange = this.xts.General.SPUDateTime;

#if DEBUG
            this.buttonExportClient.Visibility = System.Windows.Visibility.Visible;
#endif // DEBUG
        }
        #endregion // Constructor

        #region Load/Unload Handlers
        /// <summary>
        /// Callback for when page is loaded. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void Trends_Loaded(object sender, RoutedEventArgs e)
        {
            lock (this.objLock)
            {
                this.trendRange = this.xts.General.BarScaleWear;
                this.rpmRange = this.xts.General.BarScaleRPM;
                this.YAxis1.Minimum = -1.0 * this.trendRange;
                this.YAxis1.Maximum = (double)this.trendRange;

                this.ButtonDateTime.IsEnabled = (this.xts.Trends.TrendConfiguration.Count != 0);
                this.buttonRewind.IsEnabled = (this.xts.Trends.TrendConfiguration.Count != 0);
                this.buttonStepBack.IsEnabled = (this.xts.Trends.TrendConfiguration.Count != 0);
                this.buttonStepForward.IsEnabled = (this.xts.Trends.TrendConfiguration.Count != 0);
                this.buttonFastForward.IsEnabled = (this.xts.Trends.TrendConfiguration.Count != 0);
                this.buttonEnd.IsEnabled = (this.xts.Trends.TrendConfiguration.Count != 0);
                this.buttonClear.IsEnabled = (this.xts.Trends.TrendConfiguration.Count != 0);
                this.buttonExport.IsEnabled = (this.xts.Trends.TrendConfiguration.Count != 0);

                UpdateAxis("Actual", this.yAxis2Visible, this.yAxis2.Title.ToString());

                this.labelSpan.Content = Trends.SpanStringConvert(this.spanTimeMinutes);

                this.DateCategory.Minimum = this.endRange.AddMinutes(-this.spanTimeMinutes);
                this.DateCategory.Maximum = this.endRange;

                this.xts.SetTrendRange(this.endRange, (int)this.spanTimeMinutes, (this.currentState == TrendState.Realtime));

                LoadTrendInformation(this.xts.Trends.TrendConfiguration, true);

                this.xts.Trends.TrendConfiguration.CollectionChanged +=
                    new System.Collections.Specialized.NotifyCollectionChangedEventHandler(TrendConfiguration_CollectionChanged);

                this.xts.Trends.PropertyChanged += new PropertyChangedEventHandler(Trends_PropertyChanged);

                this.xts.Diagnostics.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(Diagnostics_PropertyChanged);
                CheckComms();
                
                MainPage mp = (MainPage)MainPage.GetInstance();                
                mp.Header.LabelScreenDescription.Content = TrendTitle.titleDisplay;
            }
        }

        /// <summary>
        /// Converts a time in minutes to hours for display
        /// </summary>
        /// <param name="minutes">The number of minutes to display</param>
        /// <returns>The minutes converted</returns>
        private static string SpanStringConvert(uint minutes)
        {
            uint hours = minutes / 60;
            if (hours > 99)
            {
                return XTS.LocalizedResources.GetResourceString("XTSStringGreaterThan99");
            }
            return hours.ToString();
        }

        /// <summary>
        /// Callback for when screen is unloaded.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Trends_Unloaded(object sender, RoutedEventArgs e)
        {
            lock (this.objLock)
            {
                ClearTrendInformation();

                this.xts.Diagnostics.PropertyChanged -= Diagnostics_PropertyChanged;
                this.xts.Trends.PropertyChanged -= Trends_PropertyChanged;
                this.xts.Trends.TrendConfiguration.CollectionChanged -= TrendConfiguration_CollectionChanged;                
            }            
        }
        #endregion // Load/Unload Handlers

        /// <summary>
        /// Workaround for a Telerik Bug in which removing all trends
        /// from a YAxis will delete it and it will never come back
        /// </summary>
        private void CreateFakeLines()
        {
            LineSeries lines = new LineSeries();
            lines.CategoryBinding = new PropertyNameDataPointBinding("TimeDate");
            lines.ValueBinding = new PropertyNameDataPointBinding("Actual");

            // Add data in a range that will never be covered by the graph
            this.fakeHis.Add(new XTSTrendHistory(DateTime.MinValue, -20000));
            this.fakeHis.Add(new XTSTrendHistory(DateTime.MinValue.AddHours(1), -20000));
            lines.ItemsSource = this.fakeHis;

            lines.Stroke = new SolidColorBrush(Colors.Transparent);
            lines.StrokeThickness = 1;
            lines.TrackBallInfoTemplate = CreateBlankTemplate();
            this.xCartesianChart.Series.Add(lines);

            LineSeries secondlines = new LineSeries();
            secondlines.CategoryBinding = new PropertyNameDataPointBinding("TimeDate");
            secondlines.ValueBinding = new PropertyNameDataPointBinding("Actual");
            secondlines.ItemsSource = this.fakeHis;
            secondlines.VerticalAxis = this.yAxis2;
            secondlines.Stroke = new SolidColorBrush(Colors.Yellow);
            secondlines.StrokeThickness = 1;
            secondlines.TrackBallInfoTemplate = CreateBlankTemplate();
            this.xCartesianChart.Series.Add(secondlines);
        }

        /// <summary>
        /// Event handler for when the trends data changes
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void Trends_PropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("LastHistoryUpdate"))
            {
                this.endRange = this.xts.Trends.LastHistoryUpdate;
                UpdateChartTimes();
            }
        }

        /// <summary>
        /// Callback for when the Trend data collection changes 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void TrendConfiguration_CollectionChanged(object sender, System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
        {
            lock (this.objLock)
            {
                XTSDataCollection<XTSTrend> trends = (XTSDataCollection<XTSTrend>)sender;

                if (trends.Count == 0)
                {
                    this.ButtonDateTime.IsEnabled = false;
                    this.buttonRewind.IsEnabled = false;
                    this.buttonStepBack.IsEnabled = false;
                    this.buttonStepForward.IsEnabled = false;
                    this.buttonFastForward.IsEnabled = false;
                    this.buttonEnd.IsEnabled = false;
                    this.buttonClear.IsEnabled = false;
                    this.buttonExport.IsEnabled = false;
                }
                else
                {
                    this.ButtonDateTime.IsEnabled = true;
                    this.buttonRewind.IsEnabled = true;
                    this.buttonStepBack.IsEnabled = true;
                    this.buttonStepForward.IsEnabled = (this.currentState != TrendState.Realtime);
                    this.buttonFastForward.IsEnabled = (this.currentState != TrendState.Realtime);
                    this.buttonEnd.IsEnabled = (this.currentState != TrendState.Realtime);
                    this.buttonClear.IsEnabled = true;
                    this.buttonExport.IsEnabled = true;
                }
                // TODO: We could handle the specific type of collection update as in the
                // #if'd out code below.
                // However, it is simpler for now to just clear the graphs and redraw.
#if _NOT_DEFINED_
                // Update the lines in the chart
                if (e.Action == System.Collections.Specialized.NotifyCollectionChangedAction.Add)
                {
                    foreach (XTSTrend trend in e.NewItems)
                    {
                        CreateLine(trend);
                    }
                }
                else if (e.Action == System.Collections.Specialized.NotifyCollectionChangedAction.Remove)
                {
                    List<CartesianSeries> remove = new List<CartesianSeries>();
                    // Find removed histories
                    foreach (XTSTrend trend in e.OldItems)
                    {
                        foreach (CartesianSeries series in this.xCartesianChart.Series)
                        {
                            if (trend.History == series.ItemsSource)
                            {
                                remove.Add(series);
                            }
                        }
                    }
                    // And remove from the series
                    foreach (CartesianSeries series in remove)
                    {
                        this.xCartesianChart.Series.Remove(series);
                    }
                }
                else if (e.Action == System.Collections.Specialized.NotifyCollectionChangedAction.Replace)
                {
                    throw new NotImplementedException(XTS.LocalizedResources.GetResourceString("XTSStringTrendsReplaceConfiguration"));
                }
                else if (e.Action == System.Collections.Specialized.NotifyCollectionChangedAction.Reset)
#endif
                {
                    // Remove Trends
                    ClearTrendInformation();
                    // Add new trends
                    LoadTrendInformation(trends, true);
                }
            }
        }

        /// <summary>
        /// Callback for when the Trackbar Information is updated.
        /// This is updated when the user moves the cursor along the line graph.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ChartTrackBallBehavior_TrackInfoUpdated(object sender, TrackBallInfoEventArgs e)
        {
            int trendCount = 0;

            foreach (DataPointInfo info in e.Context.DataPointInfos)
            {
                CategoricalDataPoint cdp = info.DataPoint as CategoricalDataPoint;
                // Remove all early points from the check as we use these for
                // the fake lines to keep the x and y axis' alive
                DateTime time = (DateTime)cdp.Category;
                if (time > DateTime.MinValue.AddDays(1))
                {
                    // Convert data to our type
                    XTSTrendHistory his = cdp.DataItem as XTSTrendHistory;

                    //WARN GRS In the simulator I've seen the above as return null.
                    if (his != null)
                    {
                        this.xts.Trends.TrendConfiguration[trendCount].SelectedActual = his.Actual;
                        this.xts.Trends.TrendConfiguration[trendCount].SelectedTimeDate = his.TimeDate;
                        if (his.Actual > -32000)
                        {
                            this.xts.Trends.TrendConfiguration[trendCount].High = his.High;
                            this.xts.Trends.TrendConfiguration[trendCount].Low = (double)his.Low;
                        }
                        else
                        {
                            this.xts.Trends.TrendConfiguration[trendCount].High = 0;
                            this.xts.Trends.TrendConfiguration[trendCount].Low = 0;
                        }
                        trendCount++;
                    }
                }
            }
        }

        /// <summary>
        /// This function creates a second Axis if required, and renames
        /// the Axis when the users changes them.
        /// </summary>
        /// <param name="Axis1"></param>
        /// <param name="Axis2Enabled"></param>
        /// <param name="Axis2"></param>
        public void UpdateAxis(string axis1, bool axis2Enabled, string axis2)
        {
            if (axis1 != null)
            {
                if (axis1.Length > 0)
                {
                    xCartesianChart.VerticalAxis.Title = axis1;
                }
            }

            if (axis2Enabled)
            {                        
                this.yAxis2.Visibility = System.Windows.Visibility.Visible;
                foreach (TrendControl tc in this.trendControls)
                {
                    if (tc.avgyaxis2 != null)
                    {
                        tc.avgyaxis2.Visibility = System.Windows.Visibility.Visible;
                    }
                }

                if (this.yAxis2 == null)
                {
                    this.yAxis2 = (LinearAxis)this.additionalYAxis[0];
                }

                this.yAxis2.Minimum = 0;
                this.yAxis2.Maximum = this.rpmRange;      

                this.yAxis2.Title = XTS.LocalizedResources.GetResourceString("XTSStringRPM");
                if (xts.EngineData.WIO != null)
                {
                    this.yAxis2.Title += " / %(wio) / PPM";
                }
                if (xts.EngineData.SEDM != null)
                {
                    this.yAxis2.Title += " / mV";
                }
                if (xts.EngineData.TemperatureSensors != 0)
                {
                    this.yAxis2.Title += " / °C";
                }
                if(xts.EngineData.CPP != null)
                {
                    this.yAxis2.Title += " / mA / %(cpp)";
                }

                /*
                if (axis2 != null)
                {
                    if (axis2.Length > 0)
                    {
                        this.yAxis2.Title = axis2;
                    }
                    else
                    {
                        this.yAxis2.Title = XTS.LocalizedResources.GetResourceString("XTSStringRPMAndTemp");
                    }
                }
                else
                {
                    this.yAxis2.Title = XTS.LocalizedResources.GetResourceString("XTSStringRPMAndTemp");
                }
                 * */
            }
            else
            {
                if (axis2 != null)
                {
                    this.yAxis2.Visibility = System.Windows.Visibility.Collapsed;
                }
                // Remove axis from all avg charts and set all trends that
                // use the second axis to use main axis.
                foreach (TrendControl tc in this.trendControls)
                {
                    if (tc.avgyaxis2 != null)
                    {
                        tc.avgyaxis2.Visibility = System.Windows.Visibility.Collapsed;
                    }
                    tc.trend.Detail.Axis = 0;
                }
            }
        }

        public void RefreshTrendGraphs()
        {
            // Remove Trends
            ClearTrendInformation();
            // Add new trends
            LoadTrendInformation(this.xts.Trends.TrendConfiguration, false);
        }

        /// <summary>
        /// Called when the screen is loaded or trend config changed, resets the graph and adds trend details
        /// </summary>
        /// <param name="trends">Collection of trends to draw</param>
        /// <param name="otherUI">True - refresh the scroll and buttons on the ui</param>
        public void LoadTrendInformation(XTSDataCollection<XTSTrend> trends, bool otherUI)
        {
            foreach (XTSTrend trend in trends)
            {
                CreateLine(trend);
            }
            if (otherUI)
            {
                SetupScrollButtons();
                SetupTrendListItems();
            }
        }

        /// <summary>
        /// Removes all trend info from the graphs etc.
        /// </summary>
        public void ClearTrendInformation()
        {
            foreach (TrendControl tc in this.trendControls)
            {
                tc.trend.PropertyChanged -= Trend_PropertyChanged;
                tc.line.ClearValue(LineSeries.VerticalAxisProperty);
                tc.line.ClearValue(LineSeries.StrokeProperty);
                tc.line.ClearValue(LineSeries.ItemsSourceProperty);

                this.xCartesianChart.Series.Remove(tc.line);
                if (tc.avgChart != null)
                {
                    tc.avgChart.ClearValue(RadCartesianChart.PaletteProperty);
                    tc.avgChart.ClearValue(RadCartesianChart.VisibilityProperty);
                    foreach (CartesianSeries series in tc.avgChart.Series)
                    {
                        series.ClearValue(CartesianSeries.VerticalAxisProperty);
                        series.ClearValue(CartesianSeries.ItemsSourceProperty);
                    }
                    this.GraphGrid.Children.Remove(tc.avgChart);
                    tc.avgChart = null;
                }
            }
            this.trendControls.Clear();
        }

        private void CreateLine(XTSTrend xtst)
        {
            LineSeries lines = new LineSeries();

            lines.CategoryBinding = new PropertyNameDataPointBinding("TimeDate");
            lines.ValueBinding = new PropertyNameDataPointBinding("Actual");

            // Data bind for axis
            Binding axisBind = new Binding();
            axisBind.Path = new PropertyPath("Axis");
            axisBind.Mode = BindingMode.OneWay;
            axisBind.Source = xtst.Detail;
            axisBind.Converter = new TrendDetailAxisConverter(this.ChartAxis);
            lines.SetBinding(LineSeries.VerticalAxisProperty, axisBind);

            // Data bind for colour
            Binding b = new Binding();
            b.Path = new PropertyPath("Colour");
            b.Mode = BindingMode.OneWay;
            b.Source = xtst.Detail;
            b.Converter = new Telerik.Windows.Controls.ColorToBrushConverter();
            lines.SetBinding(LineSeries.StrokeProperty, b);

            lines.ItemsSource = xtst.History;
            lines.TrackBallInfoTemplate = CreateBlankTemplate();

            lines.Name = xtst.Detail.Description;

            this.xCartesianChart.Series.Add(lines);

            TrendControl tc = new TrendControl();
            tc.trend = xtst;
            tc.line = lines;
            if (xtst.IsAveraged)
            {
                CreateCloneChart(tc);
            }
            this.trendControls.Add(tc);

            xtst.PropertyChanged += new PropertyChangedEventHandler(Trend_PropertyChanged);
        }

        void Trend_PropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            lock (this.objLock)
            {
                XTSTrend trend = sender as XTSTrend;
                if (e.PropertyName.Equals("IsAveraged"))
                {
                    TrendControl tc = null;
                    foreach (TrendControl currentTC in this.trendControls)
                    {
                        if (currentTC.trend == trend)
                        {
                            tc = currentTC;
                            break;
                        }
                    }
                    if (tc != null)
                    {
                        if (trend.IsAveraged)
                        {
                            // Create clone chart
                            CreateCloneChart(tc);
                        }
                        else
                        {
                            // Remove clone chart
                            this.GraphGrid.Children.Remove(tc.avgChart);
                            tc.avgChart = null;
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Work around to hide the Telerik TrackballInfo box. Simply hiding the box stops all callbacks 
        /// for when the trackbar has been moved. This creates a template for each line series which is empty. 
        /// </summary>
        /// <returns></returns>
        public static DataTemplate CreateBlankTemplate()
        {
            return (DataTemplate)XamlReader.Load(
                @"<DataTemplate
				xmlns=""http://schemas.microsoft.com/client/2007""> </DataTemplate>"
              );
        }

        private void UpdateTrendListData()
        {
            foreach (XTSTrend trend in this.xts.Trends.TrendConfiguration)
            {                
                // Assume history is in order.  Last one is the latest
                if (trend.History.Count > 0)
                {
                    XTSTrendHistory his = trend.History[trend.History.Count - 1];
                    // TODO: May be better to get real latest value from engine components?
                    trend.SelectedActual = his.Actual;
                    trend.SelectedTimeDate = his.TimeDate;
                    if (his.Actual > -32000)
                    {
                        trend.High = his.High;
                        trend.Low = (double)his.Low;
                    }
                    else
                    {
                        trend.High = 0;
                        trend.Low = 0;
                    }
                }
                else
                {
                    trend.SelectedActual = 0;
                    trend.SelectedTimeDate = null;
                    trend.High = 0;
                    trend.Low = 0;
                }

                 if (trend.IsAveraged == false)
                {
                    trend.High = 0xFFFFFFFF;
                    trend.Low = 0xFFFFFFFF;
                }
            }
        }

        private void UpdateChartTimes()
        {
            lock (this.objLock)
            {
                if (this.currentState == TrendState.Realtime)
                {
                    this.pathRealTime.Visibility = Visibility.Visible;
                    // Disable trackbar
                    this.xCartesianChart.IsHitTestVisible = false;

                    // Update trends with latest data
                    UpdateTrendListData();
                }
                else
                {
                    this.pathRealTime.Visibility = Visibility.Collapsed;
                    // Enable trackbar
                    this.xCartesianChart.IsHitTestVisible = true;
                }
                this.buttonFastForward.IsEnabled = (this.currentState != TrendState.Realtime);
                this.buttonStepForward.IsEnabled = (this.currentState != TrendState.Realtime);
                this.buttonEnd.IsEnabled = (this.currentState != TrendState.Realtime);
                this.labelSpan.Content = Trends.SpanStringConvert(this.spanTimeMinutes);

                this.DateCategory.Maximum = this.endRange;
                this.DateCategory.Minimum = this.endRange.AddMinutes(-this.spanTimeMinutes);

                this.DateCategory.LabelInterval = 1;
                this.DateCategory.MajorStep = this.spanTimeMinutes / 4;
                this.xCartesianChart.InvalidateMeasure();
                foreach (TrendControl tc in this.trendControls)
                {
                    if (tc.avgChart != null)
                    {
                        DateTimeContinuousAxis horizAxis = (DateTimeContinuousAxis)tc.avgChart.HorizontalAxis;
                        // Copy main axis details to avg chart
                        horizAxis.Minimum = this.DateCategory.Minimum;
                        horizAxis.Maximum = this.DateCategory.Maximum;
                        horizAxis.MajorStep = this.DateCategory.MajorStep;
                        tc.avgChart.InvalidateMeasure();
                    }
                }
            }
        }

        #region Button Handlers
        /// <summary>
        /// Displays the Date and Time settings screen. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ButtonDateTime_Click(object sender, RoutedEventArgs e)
        {
            TrendSettings ts = new TrendSettings();

            ts.YAxis1 = (string)this.YAxis1.Title;
            ts.YAxis2Enabled = this.yAxis2Visible;
            ts.YAxis2 = (string)this.yAxis2.Title;

            ts.RealTime = (this.currentState == TrendState.Realtime);
            ts.Span = this.spanTimeMinutes;

            ts.LatestTime = this.xts.Trends.LastHistoryUpdate;

            ts.Closed += new EventHandler(TrendSettings_Closed);
            ts.Show();
        }

        /// <summary>
        /// Callback to notify us when a popup has been closed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void TrendSettings_Closed(object sender, EventArgs e)
        {
            TrendSettings ts = sender as TrendSettings;
            if (ts.DialogResult == true)
            {
                this.yAxis2Visible = ts.YAxis2Enabled;
                UpdateAxis(ts.YAxis1, ts.YAxis2Enabled, ts.YAxis2);

                this.spanTimeMinutes = ts.Span;
                if (ts.RealTime)
                {
                    this.currentState = TrendState.Realtime;
                }
                else
                {
                    this.currentState = TrendState.Historical;
                }

                this.xts.SetTrendRange(ts.LatestTime, (int)ts.Span, ts.RealTime);
                //UpdateChartTimes();
            }
            ts.Closed -= TrendSettings_Closed;
        }

        /// <summary>
        /// Displays the Trends Selection screen 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void TrendsSelect_Click(object sender, RoutedEventArgs e)
        {
            TrendsSelect ts = new TrendsSelect();
            // Do not need a close callback as trend configuration management is handled by
            // the TrendsSelect window internally.
            ts.Show();
        }

        /// <summary>
        /// Resets the trend configuration
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonClear_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            TrendPopupManager tpm = new TrendPopupManager();
            tpm.ClearConfig();
            this.ScrollUp.IsEnabled = false;
            this.ScrollUp.IsEnabled = false;
        }

        /// <summary>
        /// Callback for when the user clicks the rewind button. 
        /// This puts the trend into a Historical state which means
        /// it won't be updated when new data arrives
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Rewind_Click(object sender, RoutedEventArgs e)
        {
            UpdateTime(-(int)this.spanTimeMinutes);
        }

        /// <summary>
        /// Callback for when the Step Back button is clicked. 
        /// This will step back 1/4 of the span time 
        /// putting the state into Historical 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void StepBack_Click(object sender, RoutedEventArgs e)
        {
            UpdateTime(-(int)this.spanTimeMinutes / Trends.TRENDS_STEP);
        }

        /// <summary>
        /// Callback for the step forward button
        /// Moves the trend forward 1/4 of the span time
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void StepForward_Click(object sender, RoutedEventArgs e)
        {
            UpdateTime((int)this.spanTimeMinutes / Trends.TRENDS_STEP);
        }

        /// <summary>
        /// Callback for the FastForward buton
        /// Moves the trend forward a whole span time
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void FastForward_Click(object sender, RoutedEventArgs e)
        {
            UpdateTime((int)this.spanTimeMinutes);
        }

        /// <summary>
        /// Callback for End button. 
        /// Puts the Trend into realtime mode and
        /// forwards to the end of the graph. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void End_Click(object sender, RoutedEventArgs e)
        {
            this.currentState = TrendState.Realtime;
            this.endRange = this.xts.General.SPUDateTime;
            if (this.spanTimeMinutes > Trends.MAX_REALTIME_SPAN_MINS)
            {
                this.spanTimeMinutes = Trends.MAX_REALTIME_SPAN_MINS;
            }
            this.xts.SetTrendRange(this.endRange, (int)this.spanTimeMinutes, true);
            //UpdateChartTimes();
        }

        private void UpdateTime(int minutesDelta)
        {
            lock (this.objLock)
            {
                this.endRange = this.endRange.AddMinutes(minutesDelta);

                // If we're trying to access future data then switch to real time mode
                if (this.endRange > this.xts.General.SPUDateTime)
                {
                    this.currentState = TrendState.Realtime;
                    this.endRange = this.xts.General.SPUDateTime;

                    if (this.spanTimeMinutes > Trends.MAX_REALTIME_SPAN_MINS)
                    {
                        this.spanTimeMinutes = Trends.MAX_REALTIME_SPAN_MINS;
                    }
                }
                else
                {
                    this.currentState = TrendState.Historical;
                }
                this.xts.SetTrendRange(this.endRange, (int)this.spanTimeMinutes, (this.currentState == TrendState.Realtime));
            }
            //UpdateChartTimes();
        }

        private void TrendsConfigSelect_Click(object sender, RoutedEventArgs e)
        {
            TrendPopupManager tpm = new TrendPopupManager();
            tpm.LoadConfig();
        }

        private void TrendsConfigStore_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            TrendPopupManager tpm = new TrendPopupManager();
            tpm.StoreConfig();
        }

        private void Export_Click(object sender, RoutedEventArgs e)
        {
            TrendExportPopup tep = new TrendExportPopup((int)this.spanTimeMinutes / 60);
            tep.Show();
        }
        #endregion // Button Handlers

        private void CreateCloneChart(TrendControl tc)
        {
            // Only create if this TrendControl doesn't have an average chart
            if (tc.avgChart == null)
            {
                // Create the new chart
                tc.avgChart = new RadCartesianChart();
                tc.avgChart.HorizontalAlignment = System.Windows.HorizontalAlignment.Stretch;
                tc.avgChart.VerticalAlignment = System.Windows.VerticalAlignment.Stretch;
                tc.avgChart.Foreground = new SolidColorBrush(Colors.Transparent);
                tc.avgChart.ClipToBounds = true;

                // The X-Axis (date span)
                DateTimeContinuousAxis dx = new DateTimeContinuousAxis();
                dx.LabelFitMode = this.DateCategory.LabelFitMode;
                dx.LabelFormat = this.DateCategory.LabelFormat;
                dx.MajorStepUnit = TimeInterval.Minute;
                dx.MajorStep = this.DateCategory.MajorStep;
                dx.PlotMode = AxisPlotMode.OnTicks;
                dx.Title = this.DateCategory.Title;
                dx.Foreground = new SolidColorBrush(Colors.Transparent);
                dx.LineStroke = new SolidColorBrush(Colors.Transparent);
                dx.ElementBrush = new SolidColorBrush(Colors.Transparent);
                dx.Minimum = this.DateCategory.Minimum;
                dx.Maximum = this.DateCategory.Maximum;
                tc.avgChart.HorizontalAxis = dx;

                // Set up chart data colour binding, using stacked graphs, we need a palette
                Binding b = new Binding();
                b.Path = new PropertyPath("Colour");
                b.Mode = BindingMode.OneWay;
                b.Source = tc.trend.Detail;
                b.Converter = new AverageTrendPaletteConverter();
                tc.avgChart.SetBinding(RadCartesianChart.PaletteProperty, b);

                // The main left hand y-axis (typically wear)
                LinearAxis lx = new LinearAxis();
                lx.Minimum = -1.0 * this.trendRange;
                lx.Maximum = (double)this.trendRange;
                lx.Title = " ";
                lx.Foreground = new SolidColorBrush(Colors.Transparent);
                lx.LineStroke = new SolidColorBrush(Colors.Transparent);
                lx.ElementBrush = new SolidColorBrush(Colors.Transparent);
                lx.RangeExtendDirection = NumericalAxisRangeExtendDirection.None;
                tc.avgChart.VerticalAxis = lx;

                // The right hand y-axis (typically RPM)
                LinearAxis la = new LinearAxis();
                la.HorizontalLocation = AxisHorizontalLocation.Right;
                la.Minimum = 0;
                la.Maximum = this.rpmRange;
                la.Title = " ";
                la.LineStroke = new SolidColorBrush(Colors.Transparent);
                la.Foreground = new SolidColorBrush(Colors.Transparent);
                la.ElementBrush = new SolidColorBrush(Colors.Transparent);
                la.RangeExtendDirection = NumericalAxisRangeExtendDirection.None;
                tc.avgyaxis2 = la;

                // Data bind for axis
                LinearAxis[] axis = new LinearAxis[2];
                axis[0] = lx;
                axis[1] = la;

                // Data bind for axis to change when trend detail is modified
                Binding axisBind = new Binding();
                axisBind.Path = new PropertyPath("Axis");
                axisBind.Mode = BindingMode.OneWay;
                axisBind.Source = tc.trend.Detail;
                axisBind.Converter = new TrendDetailAxisConverter(axis);

                // The high series of data for the stack
                AreaSeries seriesHigh = new AreaSeries();
                seriesHigh.CombineMode = Telerik.Charting.ChartSeriesCombineMode.Stack;
                seriesHigh.CategoryBinding = new PropertyNameDataPointBinding("TimeDate");
                seriesHigh.ValueBinding = new PropertyNameDataPointBinding("HighOffset");
                seriesHigh.ItemsSource = tc.trend.History;

                // The low series of data for the stack
                AreaSeries seriesLow = new AreaSeries();
                seriesLow.CombineMode = Telerik.Charting.ChartSeriesCombineMode.Stack;
                seriesLow.CategoryBinding = new PropertyNameDataPointBinding("TimeDate");
                seriesLow.ValueBinding = new PropertyNameDataPointBinding("Low");
                seriesLow.ItemsSource = tc.trend.History;

                seriesHigh.SetBinding(LineSeries.VerticalAxisProperty, axisBind);
                seriesLow.SetBinding(LineSeries.VerticalAxisProperty, axisBind);

                // These are added in order to match the colour palette, so low is transparent
                tc.avgChart.Series.Add(seriesLow);
                tc.avgChart.Series.Add(seriesHigh);

                // Fake data to keep left axis present to prevent resizing of graph
                // when this axis is not used by the main data.
                LineSeries lines = new LineSeries();
                lines.CategoryBinding = new PropertyNameDataPointBinding("TimeDate");
                lines.ValueBinding = new PropertyNameDataPointBinding("Actual");

                // Add data in a range that will never be covered by the graph
                this.fakeHis.Add(new XTSTrendHistory(DateTime.MinValue, -20000));
                this.fakeHis.Add(new XTSTrendHistory(DateTime.MinValue.AddHours(1), -20000));
                lines.ItemsSource = this.fakeHis;

                lines.Stroke = new SolidColorBrush(Colors.Transparent);
                lines.StrokeThickness = 1;
                lines.TrackBallInfoTemplate = CreateBlankTemplate();
                tc.avgChart.Series.Add(lines);

                // Fake data to keep right "RPM" axis present to prevent resizing of graph
                // when no trends are using this scale.
                LineSeries secondlines = new LineSeries();
                secondlines.CategoryBinding = new PropertyNameDataPointBinding("TimeDate");
                secondlines.ValueBinding = new PropertyNameDataPointBinding("Actual");
                secondlines.ItemsSource = this.fakeHis;
                secondlines.VerticalAxis = la;
                secondlines.Stroke = new SolidColorBrush(Colors.Yellow);
                secondlines.StrokeThickness = 1;
                secondlines.TrackBallInfoTemplate = CreateBlankTemplate();
                tc.avgChart.Series.Add(secondlines);

                // Hide this chart if the graph is set to not display averaged
                b = new Binding();
                b.Path = new PropertyPath("IsAverageDisplayed");
                b.Mode = BindingMode.OneWay;
                b.Source = tc.trend.Detail;
                b.Converter = new Telerik.Windows.Controls.BooleanToVisibilityConverter();
                tc.avgChart.SetBinding(RadCartesianChart.VisibilityProperty, b);

                // Add chart to UI
                this.GraphGrid.Children.Insert(0, tc.avgChart);
            }
        }

        /// <summary>
        /// Function to be called by other screens for inserting trends
        /// </summary>
        /// <param name="trend"></param>
        internal void ShowInsertIntoTrend(XTSTrendDetail trend)
        {
            TrendPopupManager tpm = new TrendPopupManager();
            XTSTrendDetail[] trends = new XTSTrendDetail[] { trend };
            tpm.InsertTrend(trends);
        }

        /// <summary>
        /// Function to be called by other screens for inserting trends
        /// </summary>
        /// <param name="trend"></param>
        internal void ShowInsertIntoTrend(XTSTrendDetail[] trends)
        {
            TrendPopupManager tpm = new TrendPopupManager();
            tpm.InsertTrend(trends);
        }

        /// <summary>
        /// Scrolls the trend list up one place
        /// </summary>
        public void ScrollTrendListUp()
        {
            if (this.currentTrendListItemTop > 0)
            {
                this.currentTrendListItemTop--;
                SetupScrollButtons();
            }
            SetupTrendListItems();
        }

        /// <summary>
        /// Scrolls the trend list down one place
        /// </summary>
        public void ScrollTrendListDown()
        {
            if (this.currentTrendListItemTop <
                (this.xts.Trends.TrendConfiguration.Count - Trends.TRENDLIST_VISIBLE_COUNT))
            {
                this.currentTrendListItemTop++;
                SetupScrollButtons();
            }
            SetupTrendListItems();
        }

        private void SetupTrendListItems()
        {
            this.TrendsGrid.Items.Clear();
            int addCount = Trends.TRENDLIST_VISIBLE_COUNT;
            if (addCount > this.xts.Trends.TrendConfiguration.Count)
            {
                addCount = this.xts.Trends.TrendConfiguration.Count;
            }
            if (this.currentTrendListItemTop > (this.xts.Trends.TrendConfiguration.Count - Trends.TRENDLIST_VISIBLE_COUNT))
            {
                this.currentTrendListItemTop = (this.xts.Trends.TrendConfiguration.Count - Trends.TRENDLIST_VISIBLE_COUNT);
                if (this.currentTrendListItemTop < 0)
                {
                    this.currentTrendListItemTop = 0;
                }
            }
            for (int i = this.currentTrendListItemTop; i < (this.currentTrendListItemTop + addCount); i++)
            {
                this.TrendsGrid.Items.Add(this.xts.Trends.TrendConfiguration[i]);
            }
        }

        /// <summary>
        /// Sets up the scroll bars, based on height of first item in list
        /// </summary>
        private void SetupScrollButtons()
        {
            if (this.xts.Trends.TrendConfiguration.Count > Trends.TRENDLIST_VISIBLE_COUNT)
            {
                this.ScrollUp.IsEnabled = (this.currentTrendListItemTop != 0);
                this.ScrollDown.IsEnabled = (this.currentTrendListItemTop < (this.xts.Trends.TrendConfiguration.Count - Trends.TRENDLIST_VISIBLE_COUNT));
            }
            else
            {
                this.ScrollDown.IsEnabled = false;
                this.ScrollUp.IsEnabled = false;
            }
        }

        /// <summary>
        /// Callback for scroll up button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ScrollUp_Click(object sender, RoutedEventArgs e)
        {
            ScrollTrendListUp();
        }

        /// <summary>
        /// Callback for scroll down button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ScrollDown_Click(object sender, RoutedEventArgs e)
        {
            ScrollTrendListDown();
        }

        void Diagnostics_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("CPUCommsNetwork") ||
                e.PropertyName.Equals("SPUComms") ||
                e.PropertyName.Equals("SPU2Comms"))
            {
                CheckComms();
            }
        }

        private void CheckComms()
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            XTSDiagnostics diagnostics = mp.XTSDataSource.Diagnostics;
            XTSEngine engineData = mp.XTSDataSource.EngineData;

            this.ccTrendRange.IsEnabled = diagnostics.CPUCommsNetwork;
            this.ccTrendSetup.IsEnabled = diagnostics.CPUCommsNetwork;
            this.ButtonDateTime.IsEnabled = diagnostics.CPUCommsNetwork;
            this.TrendsGrid.IsEnabled = diagnostics.CPUCommsNetwork;


            if (diagnostics.CPUCommsNetwork)
            {
                if (diagnostics.SPUComms.HasValue &&
                    diagnostics.SPUComms.Value)
                {
                    if (engineData.SPU2Fitted)
                    {
                        if (diagnostics.SPU2Comms.HasValue &&
                            diagnostics.SPU2Comms.Value)
                        {
                            this.stackSPUWarning.Visibility = System.Windows.Visibility.Collapsed;
                        }
                        else
                        {
                            this.stackSPUWarning.Visibility = System.Windows.Visibility.Visible;
                        }
                    }
                    else
                    {
                        this.stackSPUWarning.Visibility = System.Windows.Visibility.Collapsed;
                    }
                }
                else
                {
                    this.stackSPUWarning.Visibility = System.Windows.Visibility.Visible;
                }
            }
            else
            {
                this.stackSPUWarning.Visibility = System.Windows.Visibility.Collapsed;
            }
        }

        private void buttonExportClient_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            SaveFileDialog sfd = new SaveFileDialog();
            sfd.DefaultFileName = "trendclientdata.txt";

            if (sfd.ShowDialog() == true)
            {
                MainPage mp = (MainPage)MainPage.GetInstance();
                if (mp != null)
                {
                    mp.ShowBusy(true);
                    System.IO.StreamWriter sw = new System.IO.StreamWriter(sfd.OpenFile());
                    sw.WriteLine("OVERVIEW: Last History Update, Span Minutes");
                    sw.WriteLine("{0:o}, {1}", mp.XTSDataSource.Trends.LastHistoryUpdate, this.spanTimeMinutes);
                    sw.WriteLine("XAXIS BOUNDS:");
                    sw.WriteLine("{0:o}, {1:o}", this.DateCategory.Minimum, this.DateCategory.Maximum);
                    foreach (TrendControl tc in this.trendControls)
                    {
                        if (tc.avgChart != null)
                        {
                            DateTimeContinuousAxis horizAxis = (DateTimeContinuousAxis)tc.avgChart.HorizontalAxis;
                            sw.WriteLine("{0:o}, {1:o} (Avg Chart: {2}", horizAxis.Minimum, horizAxis.Maximum, tc.trend.Detail.Description);
                        }
                    }
                    sw.WriteLine();
                    sw.WriteLine("TREND DATA:");
                    foreach (XTSTrend trend in mp.XTSDataSource.Trends.TrendConfiguration)
                    {
                        // Write File
                        sw.WriteLine(trend.Detail.Description);
                        foreach (XTSTrendHistory history in trend.History)
                        {
                            sw.WriteLine("{0:o}, {1}", history.TimeDate, history.Actual);
                        }
                    }
                    sw.Close();
                    mp.ShowBusy(false);
                }
            }
        }
    }

    public static class TrendTitle
    {
        public static string titleDisplay = "Trends";
    }

    #region TrendDetailAxisConverter
    /// <summary>
    /// Converts an index to a linear axis
    /// </summary>
    public class TrendDetailAxisConverter : IValueConverter
    {
        /// <summary>
        /// The axis to convert to
        /// </summary>
        private LinearAxis[] axis = null;

        #region IValueConverter Members

        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            LinearAxis selectedAxis = null;
            uint uintValue = (uint)value;
            int index = (int) uintValue;

            // Only set axis when it is not the default one
            if (index != 0)
            {
                if (index < this.axis.Length)
                {
                    selectedAxis = this.axis[index];
                }
            }
            return selectedAxis;
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Main constructor
        /// </summary>
        public TrendDetailAxisConverter(LinearAxis[] axis)
        {
            this.axis = axis;
        }
        #endregion
    }
    #endregion // TrendDetailAxisConverter

    #region AverageTrendPaletteConverter
    /// <summary>
    /// Class to convert colour to palette for average graph display.
    /// </summary>
    public class AverageTrendPaletteConverter : IValueConverter
    {
        #region IValueConverter Members
        /// <summary>
        /// Converts a color object to a palette, with transparent as the first colour, and the original colour with
        /// an opacity decrease as the second.
        /// </summary>
        /// <param name="value"></param>
        /// <param name="targetType"></param>
        /// <param name="parameter"></param>
        /// <param name="culture"></param>
        /// <returns></returns>
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            ChartPalette palette = new ChartPalette();
            palette.GlobalEntries.Add(new PaletteEntry(new SolidColorBrush(Colors.Transparent)));

            if (value is Color)
            {
                Color color = (Color)value;
                // Reduce opacity by 20%
                color.A = (byte)(color.A * 0.5);
                palette.GlobalEntries.Add(new PaletteEntry(new SolidColorBrush(color)));
            }
            else
            {
                palette.GlobalEntries.Add(new PaletteEntry(new SolidColorBrush(Color.FromArgb(200, 255, 255, 255))));
            }
            return palette;
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
    #endregion // AverageTrendPaletteConverter

    #region ActualValueErrorConverter
    /// <summary>
    /// Converter to convert numbers into Error strings
    /// </summary>
    public class ActualValueErrorConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            double output = (double)value;
            string output_string = "";

            if (output == XTSEngine.SensorFailureRPMORR)
            {
                output_string = XTS.LocalizedResources.GetResourceString("XTSStringFailureRPMORR");
            }
            else if (output == XTSEngine.SensorFailureHighLevel)
            {
                output_string = XTS.LocalizedResources.GetResourceString("XTSStringFailureHighLevel");
            }
            else if (output == XTSEngine.SensorFailureLowLevel)
            {
                output_string = XTS.LocalizedResources.GetResourceString("XTSStringFailureLowLevel");
            }
            else if (output == XTSEngine.SensorFailureNoPulse)
            {
                output_string = XTS.LocalizedResources.GetResourceString("XTSStringFailureNoPulse");
            }
            else if (output == XTSEngine.SensorFailure)
            {
                output_string = XTS.LocalizedResources.GetResourceString("XTSStringFailure");
            }
            else if (output == XTSEngine.SensorDisabled)
            {
                output_string = XTS.LocalizedResources.GetResourceString("XTSStringDisabled");
            }
            else if (output == 0xFFFFFFFF)
            {
                output_string = String.Empty;
            }
            else
            {
                output_string = output.ToString();
            }

            return output_string;
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
    #endregion // ActualValueErrorConverter

    #region BlankZeroConverter
    public class BlankZeroConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            double output = (double)value;
            string output_string = "";
            
            if (output == 0xFFFFFFFF)
            {
                output_string = String.Empty;
            }
            else
            {
                output_string = output.ToString();
            }
            return output_string;
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
    #endregion // BlankZeroConverter

    #region TrendPopupManager
    /// <summary>
    /// Class for handling popping up child windows when managing trends.
    /// </summary>
    public class TrendPopupManager
    {
        /// <summary>
        /// The states of the popup handler
        /// </summary>
        private enum State
        {
            Unknown,
            InsertOrCreate,
            LimitWarning,
            SaveOrDiscard,
            SelectConfig,
            ConfirmOverwrite,
            ConfirmLoseExisting,
            EnterName
        }

        /// <summary>
        /// The different modes of the state machine
        /// </summary>
        private enum Mode
        {
            InsertTrend,
            StoreConfig,
            LoadConfig,
            ClearConfig
        }

        /// <summary>
        /// The current state of the state machine.
        /// </summary>
        private State currentState = State.Unknown;
        /// <summary>
        /// A list of previous states so we can cancel out of the process at any point
        /// </summary>
        /// <remarks>This could be inferred from the current/previous and the mode, but this is a little cleaner</remarks>
        private List<State> previousStates = new List<State>();
        /// <summary>
        /// The last state in the previous states list
        /// </summary>
        private State previousState
        {
            get
            {
                if (previousStates.Count > 0)
                {
                    return this.previousStates[previousStates.Count - 1];
                }
                else
                {
                    return State.Unknown;
                }
            }
        }

        /// <summary>
        /// The current mode, used in determining the final action after the child window process.
        /// </summary>
        // TODO: We could subclass and set these in the ctors instead of in the main functions??
        private Mode mode = Mode.InsertTrend;

        /// <summary>
        /// The data provider
        /// </summary>
        private IXTSDataProvider xts = null;

        /// <summary>
        /// The Trend to insert in the Insert mode
        /// </summary>
        private XTSTrendDetail [] trends = null;

        /// <summary>
        /// The configuration selected during the store/load config process
        /// </summary>
        private uint selectedTrendConfiguration = 0;

        /// <summary>
        /// The configuration name entered by the user.
        /// </summary>
        private string trendConfigName = null;

        /// <summary>
        /// Default constructor
        /// </summary>
        public TrendPopupManager()
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                this.xts = mp.XTSDataSource;
                this.selectedTrendConfiguration = mp.CurrentselectedTrendConfiguration;
            }
        }

        #region Functions for displaying popups
        // TODO: Could these be static?

        /// <summary>
        /// Pop up child windows for storing a config
        /// </summary>
        public void StoreConfig()
        {
            this.mode = Mode.StoreConfig;
            ShowPopup(State.SelectConfig);
        }
        /// <summary>
        /// Pop up child windows for loading a config
        /// </summary>
        public void LoadConfig()
        {
            this.mode = Mode.LoadConfig;
            ShowPopup(State.SelectConfig);
        }

        /// <summary>
        /// Pop up child windows for clearing the current config
        /// </summary>
        public void ClearConfig()
        {
            this.mode = Mode.ClearConfig;
            ShowPopup(State.ConfirmLoseExisting);
        }

        /// <summary>
        /// Pop up child windows for adding the specified trend into the current config
        /// </summary>
        /// <param name="trend"></param>
        public void InsertTrend(XTSTrendDetail [] trends)
        {
            this.trends = trends;
            this.mode = Mode.InsertTrend;
            if (this.xts.Trends.TrendConfiguration.Count > (28 - this.trends.Length))
            {
                ShowPopup(State.LimitWarning);
            }
            else
            {
                ShowPopup(State.InsertOrCreate);
            }
        }
        #endregion // Functions for displaying popups

        private void ShowPopup(State state)
        {
            ShowPopup(state, false);
        }

        // TODO: We could detect if we are currently showing a screen and block new ones getting shown?
        /// <summary>
        /// Main function for showing new screens.
        /// </summary>
        /// <param name="state">The current screen/state to show</param>
        private void ShowPopup(State state, bool cancelled)
        {
            if ((this.currentState != State.Unknown) &&
                (this.currentState != State.LimitWarning) &&
                (!cancelled))
            {
                this.previousStates.Add(this.currentState);
            }
            this.currentState = state;

            switch (state)
            {
                case State.InsertOrCreate:
                    {
                        MainPage mp = (MainPage)MainPage.GetInstance();
                        this.selectedTrendConfiguration = mp.CurrentselectedTrendConfiguration;
                        xts.LoadCurrentTrend(this.selectedTrendConfiguration);
                        string trendsToAdd = null;
                        int i = 0;
                        for (i = 0; i < this.trends.Length - 1; i++)
                        {
                            //trendsToAdd += this.trends[i].Description;
                            //trendsToAdd += ", ";
                        }
                        trendsToAdd += "[" + this.trends[i].Description +"]";

                        AMOTMessageBox amb = new AMOTMessageBox();
                        amb.DataContext = amb;
                        amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.Option;
                        amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringStateInsertOrCreateTitle");
                        amb.option0Text.Text = XTS.LocalizedResources.GetResourceString("XTSStringStateInsertOrCreateOpt1");
                        amb.Option0Icon = "F1M382.687,296.045L392.072,296.045L387.885,292.135L391.639,292.135L397.125,297.161L391.639,302.188L387.885,302.188L392.072,298.278L382.687,298.278L382.687,296.045z" +
                            "M390.5,307L412.5,307L412.5,305L390.5,305L390.5,307z" +
                            "M412.5,308L390.5,308L390.5,310L412.5,310L412.5,308z" +
                            "M390.5,304L412.5,304L412.5,302L393.937,302L394.98,301L412.5,301L412.5,290L390.5,290L390.5,290.875L388.5,290.875L388.5,288L414.5,288L414.5,312L388.5,312L388.5,303.5L390.5,303.5L390.5,304z";
                        // 31.81 x 24
                        amb.option0Path.Height = 36;
                        amb.option0Path.Width = 48;
                        amb.option1Text.Text = XTS.LocalizedResources.GetResourceString("XTSStringStateInsertOrCreateOpt2");
                        amb.Option1Icon = "M13,29.9999L35,29.9999L35,27.9999L13,27.9999L13,29.9999z" +
                            "M35,30.9999L13,30.9999L13,33L35,33L35,30.9999z" +
                            "M13,26.9999L35,26.9999L35,24.9999L13,24.9999L13,26.9999z" +
                            "M13,23.9999L35,23.9999L35,22L37,22L37,35L11,35L11,11L27,11L27,13L13,13L13,23.9999z" +
                            "M28,14L33.2974,14L29.5872,10.2358L30.2994,9.53376L34,13.2883L34,8.06237L35,8.06237L35,13.1539L38.5807,9.52103L39.2929,10.223L35.5701,14L41,14L41,15L35.6871,15L39.3812,18.748L38.669,19.4499L35,15.7275L35,21L34,21L34,15.593L30.211,19.4372L29.4988,18.7352L33.1804,15L28,15L28,14z";
                        // 30 x 26.94
                        amb.option1Path.Height = 40;
                        amb.option1Path.Width = 45;
                        amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringStateInsertOrCreateMsg", new object [] {trendsToAdd});
                        amb.Closed += new EventHandler(Popup_Closed);
                        amb.Show();
                        break;
                    }
                case State.LimitWarning:
                    {
                        AMOTMessageBox amb = new AMOTMessageBox();
                        amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OK;
                        amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringStateLimitWarningTitle");
                        amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringStateLimitWarningMsg");
                        amb.Closed += new EventHandler(Popup_Closed);
                        amb.Show();
                        break;
                    }
                case State.SaveOrDiscard:
                    {
                        AMOTMessageBox amb = new AMOTMessageBox();
                        amb.DataContext = amb;
                        amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.Option;
                        amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringStateSaveOrDiscardTitle");
                        amb.option0Text.Text = XTS.LocalizedResources.GetResourceString("XTSStringStateSaveOrDiscardOpt1");
                        amb.option0Path.Height = 56.25;
                        amb.option0Path.Width = 56.25;
                        amb.Option0Icon = "F1M13,13L31.0001,13L35,17L35,35L13,35L13,13z" +
                            "M32.9999,18.0001L30,15L29,15L29,23L18,23L18,15L15,15L15,33L33,33L32.9999,18.0001z" +
                            "M25,15L25,21L27,21L27,15L25,15z";
                        amb.option1Path.Height = 56.25;
                        amb.option1Path.Width = 43.75;
                        amb.option1Text.Text = XTS.LocalizedResources.GetResourceString("XTSStringStateSaveOrDiscardOpt2");
                        amb.Option1Icon = "F1M16,15L32,15C32.5523,15 32.75,17.25 32.75,17.25L15.25,17.25C15.25,17.25 15.4477,15 16,15z" +
                            "M22.5,12.5L25.5,12.5C25.7761,12.5 26.5,13.2239 26.5,13.5C26.5,13.7762 25.7761,14.5 25.5,14.5L22.5,14.5C22.2238,14.5 21.5,13.7762 21.5,13.5C21.5,13.2239 22.2238,12.5 22.5,12.5z" +
                            "M17.5,18L30.5,18C31.0523,18 31.5,18.4477 31.5,19L30.5,34C30.5,34.5523 30.0523,35 29.5,35L18.5,35C17.9477,35 17.5,34.5523 17.5,34L16.5,19C16.5,18.4477 16.9477,18 17.5,18z" +
                            "M19,20L19.25,33L21,33L20.75,20L19,20z" +
                            "M23,20L23,33L25,33L25,20L23,20z" +
                            "M27.25,20L27,33L28.75,33L29,20L27.25,20z";
                        amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringStateSaveOrDiscardMsg");
                        amb.Closed += new EventHandler(Popup_Closed);
                        amb.Show();
                        break;
                    }
                case State.SelectConfig:
                    {
                        TrendConfigSelect tcs = new TrendConfigSelect();
                        tcs.Closed += new EventHandler(Popup_Closed);
                        tcs.Show();
                        break;
                    }
                case State.EnterName:
                    {
                        TrendConfigName tcn = new TrendConfigName();
                        tcn.Description = this.trendConfigName;
                        tcn.Closed += new EventHandler(Popup_Closed);
                        tcn.Show();
                        break;
                    }
                case State.ConfirmOverwrite:
                    {
                        AMOTMessageBox amb = new AMOTMessageBox();
                        amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OKCancel;
                        amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringStateConfirmOverwriteTitle");
                        amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringStateConfirmOverwriteMsg");
                        amb.Closed += new EventHandler(Popup_Closed);
                        amb.Show();
                        break;
                    }
                case State.ConfirmLoseExisting:
                    {
                        AMOTMessageBox amb = new AMOTMessageBox();
                        amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OKCancel;
                        amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringStateConfirmLoseExistingTitle");
                        amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringStateConfirmLoseExistingMsg");
                        amb.Closed += new EventHandler(Popup_Closed);
                        amb.Show();
                        break;
                    }
                case State.Unknown:
                default:
                    {
                        // Do nothing!
                        break;
                    }
            }
            //MainPage mainpage = (MainPage)MainPage.GetInstance();
            //TrendTitle.titleDisplay = mainpage.Header.LabelScreenDescription.Content.ToString();
        }

        /// <summary>
        /// Callback for all child window popups
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void Popup_Closed(object sender, EventArgs e)
        {
            ChildWindow cw = sender as ChildWindow;
            if (cw.DialogResult == true)
            {
                // Pass window for positive result handling
                HandleResult(cw);
            }
            else
            {
                // Has been cancelled!  Return to previous screen
                if (this.previousStates.Count > 0)
                {
                    int lastIndex = this.previousStates.Count - 1;
                    State prev = this.previousStates[lastIndex];
                    // This will get added to the previous list again when we call showPopup,
                    // so remove it.
                    this.previousStates.RemoveAt(lastIndex);
                    ShowPopup(prev, true);
                }
            }
            cw.Closed -= Popup_Closed;
        }

        /// <summary>
        /// Positive child window result handler
        /// </summary>
        /// <param name="cw"></param>
        private void HandleResult(ChildWindow cw)
        {
            if (cw.DialogResult != true)
            {
                throw new InvalidProgramException(XTS.LocalizedResources.GetResourceString("XTSStringChildWindowNegativeResult"));
            }
            // We don't need to check the dialog results as that is checked in the Popup_Closed handler
            switch (this.currentState)
            {
                case State.InsertOrCreate:
                    {                        
                        AMOTMessageBox amb = cw as AMOTMessageBox;
                        if (amb.OptionResult == AMOTMessageBox.AMOTMessageBoxOptionResult.Option0)
                        {
                            foreach (XTSTrendDetail td in this.trends)
                            {
                                this.xts.AddTrendToConfig(td, false);
                            }
                            MainPage mp = (MainPage)MainPage.GetInstance();                            
                            mp.RenderControl(MainPage.ContentScreen.Trends);
                            xts.SaveCurrentTrend(this.selectedTrendConfiguration, xts.Trends.ConfigNames[selectedTrendConfiguration]);
                            mp.Header.LabelScreenDescription.Content = XTS.LocalizedResources.GetResourceString("XTSStringTrends") + (" Config " + string.Format("{0} - ", selectedTrendConfiguration+1) + xts.Trends.ConfigNames[this.selectedTrendConfiguration]);
                            TrendTitle.titleDisplay = mp.Header.LabelScreenDescription.Content.ToString();
                        }
                        else
                        {
                            ShowPopup(State.SaveOrDiscard);
                        }
                        break;
                    }
                case State.LimitWarning:
                    {
                        ShowPopup(State.SaveOrDiscard);
                        break;
                    }
                case State.SaveOrDiscard:
                    {
                        AMOTMessageBox amb = cw as AMOTMessageBox;
                        if (amb.OptionResult == AMOTMessageBox.AMOTMessageBoxOptionResult.Option0)
                        {
                            ShowPopup(State.SelectConfig);
                        }
                        else
                        {
                            ShowPopup(State.ConfirmLoseExisting);
                        }
                        break;
                    }
                case State.SelectConfig:
                    {
                        TrendConfigSelect tcs = cw as TrendConfigSelect;
                        this.selectedTrendConfiguration = tcs.SelectedConfig;
                        this.trendConfigName = xts.Trends.ConfigNames[this.selectedTrendConfiguration];
                        if (this.mode == Mode.LoadConfig)
                        {
                            if (xts.Trends.ConfigChanged)
                            {
                                ShowPopup(State.ConfirmLoseExisting);
                            }
                            else
                            {
                                xts.LoadCurrentTrend(this.selectedTrendConfiguration);                                
                            }
                            MainPage mp = (MainPage)MainPage.GetInstance();
                            mp.Header.LabelScreenDescription.Content = XTS.LocalizedResources.GetResourceString("XTSStringTrends") + (" Config " + string.Format("{0} - ", selectedTrendConfiguration+1) + xts.Trends.ConfigNames[this.selectedTrendConfiguration]);
                            mp.CurrentselectedTrendConfiguration = this.selectedTrendConfiguration;
                            TrendTitle.titleDisplay = mp.Header.LabelScreenDescription.Content.ToString();
                        }
                        else if ((this.mode == Mode.StoreConfig) ||
                                 (this.mode == Mode.InsertTrend))
                        {
                            ShowPopup(State.EnterName);
                        }                                               
                        break;
                    }
                case State.EnterName:
                    {
                        TrendConfigName tcn = cw as TrendConfigName;
                        this.trendConfigName = tcn.Description;
                        ShowPopup(State.ConfirmOverwrite);                        
                        break;
                    }
                case State.ConfirmOverwrite:
                    {
                        xts.SaveCurrentTrend(this.selectedTrendConfiguration, trendConfigName);
                        if (this.mode == Mode.InsertTrend)
                        {
                            xts.ClearTrendConfig();
                            foreach (XTSTrendDetail td in this.trends)
                            {
                                this.xts.AddTrendToConfig(td, false);
                            }                           
                        }
                        MainPage mp = (MainPage)MainPage.GetInstance();
                        mp.RenderControl(MainPage.ContentScreen.Trends);
                        mp.Header.LabelScreenDescription.Content = XTS.LocalizedResources.GetResourceString("XTSStringTrends") + ("Config " + string.Format("{0} - ", selectedTrendConfiguration + 1) + trendConfigName);
                        mp.CurrentselectedTrendConfiguration = this.selectedTrendConfiguration;
                        TrendTitle.titleDisplay = mp.Header.LabelScreenDescription.Content.ToString();
                        break;
                    }
                case State.ConfirmLoseExisting:
                    {
                        if (this.mode == Mode.LoadConfig)
                        {
                            xts.LoadCurrentTrend(this.selectedTrendConfiguration);
                        }
                        else if (this.mode == Mode.InsertTrend)
                        {
                            xts.ClearTrendConfig();
                            foreach (XTSTrendDetail td in this.trends)
                            {
                                this.xts.AddTrendToConfig(td, false);
                            }
                        }
                        else if (this.mode == Mode.ClearConfig)
                        {
                            xts.ClearTrendConfig();
                        }
                        MainPage mp = (MainPage) MainPage.GetInstance();
                        mp.Header.LabelScreenDescription.Content = XTS.LocalizedResources.GetResourceString("XTSStringTrends") + ("Config " + string.Format("{0} - ", selectedTrendConfiguration+1) + xts.Trends.ConfigNames[this.selectedTrendConfiguration]);                        
                        mp.RenderControl(MainPage.ContentScreen.Trends);
                        TrendTitle.titleDisplay = mp.Header.LabelScreenDescription.Content.ToString();
                        break;
                    }
                case State.Unknown:
                default:
                    {
                        break;
                    }
            }
            MainPage mainpage = (MainPage)MainPage.GetInstance();

            TrendTitle.titleDisplay = mainpage.Header.LabelScreenDescription.Content.ToString();
            
        }
    }
    #endregion // TrendPopupManager
}
