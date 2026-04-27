/* 
 * Scale.xaml.cs
 * 
 * Displays a right/left aligned scale to complement BarControl.
 * C# partial implementation of Scale.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 20/02/2012
 */

using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Shapes;

namespace XTS.Controls
{
    /// <summary>
    /// Scale control for showing vertical tick marks according to specified parameters.
    /// </summary>
	public partial class Scale : UserControl
	{
        private const int LEGEND_OFFSET = 29;

        #region Properties/Member Variables
        /// <summary>
        /// String to display vertically alongside the scale
        /// </summary>
        public string Legend
        {
            set
            {
                if (value == null)
                {
                    this.LabelLegend.Visibility = System.Windows.Visibility.Collapsed;
                }
                else
                {
                    this.LabelLegend.Content = value;
                    this.LabelLegend.Visibility = System.Windows.Visibility.Visible;
                }
            }
        }

        #region Data Bounds
        /// <summary>
        /// Internal data for MajorTick
        /// </summary>
        private uint majorTick = 1000;
        /// <summary>
        /// At what interval major tick marks are shown.
        /// </summary>
        public uint MajorTick
        {
            set
            {
                this.majorTick = value;
            }
        }

        /// <summary>
        /// Internal data for MinorTick
        /// </summary>
        private uint minorTick = 500;
        /// <summary>
        /// Interval for medium tick marks
        /// </summary>
        public uint MinorTick
        {
            set
            {
                this.minorTick = value;
            }
        }

        /// <summary>
        /// Internal data for babyTick
        /// </summary>
        private uint babyTick = 100;
        /// <summary>
        /// The interval for the smallest tick mark (shows no text)
        /// </summary>
        public uint BabyTick
        {
            set
            {
                this.babyTick = value;
            }
        }

        /// <summary>
        /// Internal data for Direction.
        /// </summary>
        private BarControl.BarControlDirection direction = BarControl.BarControlDirection.Down;
        /// <summary>
        /// Specifies if the MaxValue is shown at the top or bottom of the control.
        /// </summary>
        public BarControl.BarControlDirection Direction
        {
            set
            {
                this.direction = value;
            }
        }

        /// <summary>
        /// Internal data for Alignment.
        /// </summary>
        private System.Windows.HorizontalAlignment alignment = System.Windows.HorizontalAlignment.Left;
        /// <summary>
        /// Which side of the control the scale is displayed on.
        /// </summary>
        public System.Windows.HorizontalAlignment Alignment
        {
            set
            {
                this.alignment = value;
            }
        }

        /// <summary>
        /// Internal data for MaxValue.
        /// </summary>
        private int maxValue = 1200;
        /// <summary>
        /// The maximum value displayed by the control.
        /// </summary>
        public int MaxValue
        {
            get
            {
                return this.maxValue;
            }
            set
            {
                if (value <= this.minValue)
                {
                    throw new ArgumentOutOfRangeException("MaxValue is less than Minvalue!");
                }
                this.maxValue = value;
            }
        }

        /// <summary>
        /// Internal data for MinValue.
        /// </summary>
        private int minValue = -1200;
        /// <summary>
        /// The smallest value displayed by the control.
        /// </summary>
        public int MinValue
        {
            get
            {
                return this.minValue;
            }
            set
            {
                if (value >= this.maxValue)
                {
                    throw new ArgumentOutOfRangeException(XTS.LocalizedResources.GetResourceString("XTSStringMinValueGreaterThanMax"));
                }
                this.minValue = value;
            }
        }
        #endregion // Data Bounds

        /// <summary>
        /// The height of the title row height so that it can be restored after being hidden.
        /// </summary>
        private double titleRowHeight;
        /// <summary>
        /// If true, this will set the title row height to zero to hide it.
        /// </summary>
        public bool HideTitleRow
        {
            set
            {
                double newRowHeight = 0;
                if (!value)
                {
                    newRowHeight = this.titleRowHeight;
                }
                this.LayoutRoot.RowDefinitions[0].Height = new GridLength(newRowHeight);
            }
        }

        /// <summary>
        /// The height of the title row height so that it can be restored after being hidden.
        /// </summary>
        private double footerRowHeight;
        /// <summary>
        /// If true, this will set the title row height to zero to hide it.
        /// </summary>
        public bool HideFooterRow
        {
            set
            {
                double newRowHeight = 0;
                if (!value)
                {
                    newRowHeight = this.footerRowHeight;
                }
                this.LayoutRoot.RowDefinitions[4].Height = new GridLength(newRowHeight);
            }
        }

        /// <summary>
        /// Set the size of the padding on either side of the scale
        /// </summary>
        public double RowPadding
        {
            set
            {
                this.LayoutRoot.RowDefinitions[1].Height = new GridLength(value);
                this.LayoutRoot.RowDefinitions[3].Height = new GridLength(value);
            }
        }
        #endregion // Properties/Member Variables

        /// <summary>
        /// Default constructor
        /// </summary>
        public Scale()
		{
			// Required to initialize variables
			InitializeComponent();

            this.titleRowHeight = this.LayoutRoot.RowDefinitions[0].Height.Value;
            this.footerRowHeight = this.LayoutRoot.RowDefinitions[4].Height.Value;

            // Default to zero padding
            this.LayoutRoot.RowDefinitions[1].Height = new GridLength(0);
            this.LayoutRoot.RowDefinitions[3].Height = new GridLength(0);
		}

        /// <summary>
        /// Draw tickmarks at the specified spacing and width
        /// </summary>
        /// <param name="tickSpacing">How far apart the tickmarks should be relative to the scale.</param>
        /// <param name="width">The pixel width of the tick mark.</param>
        /// <param name="ignores">Which multiples of the tick mark should not be drawn (so that babyTicks aren't drawn over minorTicks.</param>
        /// <param name="showNumbers">Show text indicating the tick mark.</param>
        private void DrawTickmarks(double tickSpacing, double width, uint ignores, bool showNumbers)
        {
            double totalUnits = this.maxValue - this.minValue;
            double fullHeight = this.GridScale.ActualHeight-1;
            double pixelsPerUnit = fullHeight / totalUnits;

            int tickCount = (int) (this.minValue / tickSpacing);
            double offset = tickCount * tickSpacing;
            if (offset < this.minValue)
            {
                offset += tickSpacing;
            }

            double zeroPoint = (totalUnits / 2) + this.minValue;
            while (offset <= this.maxValue)
            {
                bool showTick = true;
                if (ignores > 0)
                {
                    if ((Math.Abs(offset) % ignores) == 0)
                    {
                        showTick = false;
                    }
                }
                if (showTick)
                {
                    Path tickmark = CreateTickLine(width);
                    tickmark.HorizontalAlignment = this.alignment;
                    tickmark.VerticalAlignment = System.Windows.VerticalAlignment.Center;

                    // Calculate the drawing offset
                    double offsetPixels = ((offset - zeroPoint) * pixelsPerUnit) * 2;

                    // Due to a quirk in layouts (it crops when we offset by a positive number, but not by a negative)
                    // we need to adjust the margin based on wether we move it up or down from the zero point.
                    if (offsetPixels >= 0)
                    {
                        if (direction == BarControl.BarControlDirection.Down)
                        {
                            tickmark.Margin = new Thickness(0, 0, 0, -1 * offsetPixels);
                        }
                        else
                        {
                            tickmark.Margin = new Thickness(0, -1 * offsetPixels, 0, 0);
                        }
                    }
                    else
                    {
                        if (direction == BarControl.BarControlDirection.Down)
                        {
                            tickmark.Margin = new Thickness(0, offsetPixels, 0, 0);
                        }
                        else
                        {
                            tickmark.Margin = new Thickness(0, 0, 0, offsetPixels);
                        }
                    }
                    this.GridScale.Children.Add(tickmark);

                    if (showNumbers)
                    {
                        Label label = new Label();
                        label.HorizontalAlignment = this.alignment;
                        label.VerticalAlignment = System.Windows.VerticalAlignment.Center;
                        label.Content = offset.ToString();
                        label.FontSize = 9;

                        // Due to a quick in layouts (it crops when we offset by a positive number, but not by a negative)
                        // we need to adjust the margin based on wether we move it up or down from the zero point.
                        if (offsetPixels >= 0)
                        {
                            if (direction == BarControl.BarControlDirection.Down)
                            {
                                label.Margin = new Thickness(width + 2, 0, width + 2, -1 * offsetPixels);
                            }
                            else
                            {
                                label.Margin = new Thickness(width + 2, -1 * offsetPixels, width + 2, 0);                                
                            }
                        }
                        else
                        {
                            if (direction == BarControl.BarControlDirection.Down)
                            {
                                label.Margin = new Thickness(width + 2, offsetPixels, width + 2, 0);
                            }
                            else
                            {
                                label.Margin = new Thickness(width + 2, 0, width + 2, offsetPixels);
                            }
                        }
                        this.GridScale.Children.Add(label);
                    }
                }
                offset += tickSpacing;
            }
            switch (this.alignment)
            {
                case System.Windows.HorizontalAlignment.Left:
                    {
                        int diff = (int)(this.ActualWidth / 2);
                        this.LabelLegend.Margin = new Thickness(-200, 0, -200 - diff, 0);
                        break;
                    }
                case System.Windows.HorizontalAlignment.Right:
                    {
                        int diff = (int)(this.ActualWidth / 2);
                        this.LabelLegend.Margin = new Thickness(-200 - diff, 0, -200, 0);
                        break;
                    }
                case System.Windows.HorizontalAlignment.Center:
                case System.Windows.HorizontalAlignment.Stretch:
                    {
                        this.LabelLegend.Margin = new Thickness(-200, -200, 0, 0);
                        break;
                    }
            }
            this.PathBar.HorizontalAlignment = this.alignment;
        }

        /// <summary>
        /// Create a path for drawing a tick.
        /// </summary>
        /// <param name="size">The length of the tick line.</param>
        /// <returns>The created path.</returns>
        private Path CreateTickLine(double size)
        {
            Path path = new Path();

            PathFigure pathFigure = new PathFigure();
            // Single line, so don't need to set to closed loop
            //pathFigure.IsClosed = true;

            pathFigure.StartPoint = new Point(0, 0);

            LineSegment lineSegment1 = new LineSegment();
            lineSegment1.Point = new Point(size, 0);
            pathFigure.Segments.Add(lineSegment1);

            PathGeometry pathGeometry = new PathGeometry();
            pathGeometry.Figures = new PathFigureCollection();

            pathGeometry.Figures.Add(pathFigure);

            path.Data = pathGeometry;

            path.Stroke = new SolidColorBrush(Colors.Black);
            path.StrokeThickness = 1;
            path.Height = 1;
            path.Width = size;

            return path;
        }

        /// <summary>
        /// Remove the existing tick marks and draw new major, minor and baby ticks.
        /// </summary>
        public void UpdateTickmarks()
        {
            this.GridScale.Children.Clear();
            DrawMajorTickmarks();
            DrawMinorTickmarks();
            DrawBabyTickmarks();
        }

        /// <summary>
        /// Wraps the DrawTickmarks with parameters for drawing major ticks.
        /// </summary>
        private void DrawMajorTickmarks()
        {
            if (this.majorTick > 0)
            {
                DrawTickmarks(this.majorTick, 10, 0, true);
            }
        }

        /// <summary>
        /// Wraps the DrawTickmarks with parameters for drawing minor ticks.
        /// </summary>
        private void DrawMinorTickmarks()
        {
            if (this.minorTick > 0)
            {
                DrawTickmarks(this.minorTick, 8, this.majorTick, true);
            }
        }

        /// <summary>
        /// Wraps the DrawTickmarks with parameters for drawing baby ticks.
        /// </summary>
        private void DrawBabyTickmarks()
        {
            if (this.babyTick > 0)
            {
                DrawTickmarks(this.babyTick, 4, this.minorTick, false);
            }
        }

        #region UserControl Events
        /// <summary>
        /// Callback for when the size of the control has changed.
        /// </summary>
        /// <remarks>This is better than using OnLayoutUpdated as the redraw count is less.</remarks>
        /// <param name="sender">Originator of the event.</param>
        /// <param name="e">An SizeChangedEventArgs that contains the event data.</param>
        private void OnSizeChanged(object sender, SizeChangedEventArgs e)
        {
            System.Windows.Deployment.Current.Dispatcher.BeginInvoke(this.UpdateTickmarks);
        }
        #endregion // UserControl Events
	}
}