using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using Telerik.Charting;
using Telerik.Windows.Controls;
using Telerik.Windows.Controls.ChartView;

namespace RadCartesianChartDemo
{
    public partial class MainPage : UserControl
    {
        public class TestData : IComparable
        {
            private DateTime x;
            public DateTime X
            {
                get
                {
                    return this.x;
                }
            }
            private int y;
            public int Y
            {
                get
                {
                    return this.y;
                }
            }

            public TestData(int xDay, int xMonth, int xYear, int y) :
                this(new DateTime(xYear, xMonth, xDay), y)
            { }

            public TestData(DateTime x, int y)
            {
                this.x = x;
                this.y = y;
            }

            public override string ToString()
            {
                return string.Format("{0:dd/MM/yyyy} : {1}", this.x, this.y);
            }

            #region IComparable Members

            public int CompareTo(object obj)
            {
                if (obj.GetType() == typeof(TestData))
                {
                    TestData td = obj as TestData;
                    int res = this.x.CompareTo(td.X);
                    if (res == 0)
                    {
                        res = this.y.CompareTo(td.Y);
                    }
                    return res;
                }
                else
                {
                    throw new NotImplementedException("Wrong type!");
                }
            }

            #endregion
        }

        private System.Collections.ObjectModel.ObservableCollection<TestData> graphData;

        public MainPage()
        {
            InitializeComponent();

            this.graphData = new System.Collections.ObjectModel.ObservableCollection<TestData>();
            this.graphData.Add(new TestData(01, 01, 2012, 5));
            this.graphData.Add(new TestData(10, 01, 2012, 6));

            this.ListBoxData.ItemsSource = this.graphData;

            // Bind graph series to this data
            LineSeries lines = new LineSeries();
            lines.CategoryBinding = new PropertyNameDataPointBinding("X");
            lines.ValueBinding = new PropertyNameDataPointBinding("Y");

            // Add data in a range that will never be covered by the graph
            lines.ItemsSource = this.graphData;

            lines.Stroke = new SolidColorBrush(Colors.Red);
            lines.StrokeThickness = 1;
            
            this.xCartesianChart.Series.Add(lines);
        }

        private void ButtonSet_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            try
            {
                DateTime xMin = DateTime.Parse(this.TextBoxXMin.Text);
                DateTime xMax = DateTime.Parse(this.TextBoxXMax.Text);
                int yMin = int.Parse(this.TextBoxYMin.Text);
                int yMax = int.Parse(this.TextBoxYMax.Text);

                // Set axis
                this.DateCategory.Minimum = xMin;
                this.DateCategory.Maximum = xMax;
                this.YAxis1.Minimum = yMin;
                this.YAxis1.Maximum = yMax;
            }
            catch (FormatException)
            {
                System.Windows.MessageBox.Show("Error with values, must be Date/int");
            }
        }

        private void ButtonRemove_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            TestData currentItem = (TestData) this.ListBoxData.SelectedItem;
            if (currentItem != null)
            {
                this.graphData.Remove(currentItem);
            }
        }

        private void ButtonAdd_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            InsertItem(this.graphData.Count);
        }

        private void ButtonInsert_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            try
            {
                int index = int.Parse(this.TextBoxIndex.Text);
                InsertItem(index);
            }
            catch (FormatException)
            {
                System.Windows.MessageBox.Show("Error with index, must be int");
            }
        }

        private void InsertItem(int index)
        {
            try
            {
                DateTime x = DateTime.Parse(this.TextBoxX.Text);
                int y = int.Parse(this.TextBoxY.Text);
                this.graphData.Insert(index, new TestData(x, y));
            }
            catch (FormatException)
            {
                System.Windows.MessageBox.Show("Error with values, must be Date/int");
            }
        }

        private void ButtonClear_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            this.graphData.Clear();
        }

        private void ButtonSort_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            for (int i = 0; i < this.graphData.Count-1; i++)
            {
                for (int j = 0; j < this.graphData.Count-1; j++)
                {
                    if (this.graphData[j].CompareTo(this.graphData[j+1]) > 0)
                    {
                        TestData item = this.graphData[j];
                        this.graphData.RemoveAt(j);
                        this.graphData.Insert(j+1, item);
                    }
                }
            }
        }
    }
}
