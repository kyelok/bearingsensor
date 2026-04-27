using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace XTS.ChildWindows
{
    public partial class TrendDetail : ChildWindow
    {
        public System.Windows.Media.Color Color
        {
            get
            {
                return this.selector.SelectedColor;
            }
            set
            {
                this.selector.SelectedColor = value;
            }
        }

        public string Description
        {
            get
            {
                return this.textBoxDescription.Text;
            }
            set
            {
                this.textBoxDescription.Text = value;
            }
        }

        public bool Axis1Selected
        {
            get
            {
                // Evaluate as IsChecked is bool?
                if (this.Axis1Radio.IsChecked == true)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            set
            {
                this.Axis1Radio.IsChecked = value;
            }
        }
        public bool Axis2Selected
        {
            get
            {
                // Evaluate as IsChecked is bool?
                if (this.Axis2Radio.IsChecked == true)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            set
            {
                this.Axis2Radio.IsChecked = value;
            }
        }

        public string YAxis2Name
        {
            set
            {
                if (value != null)
                {
                    this.Axis2Radio.Content = value;
                    this.Axis2Radio.Visibility = System.Windows.Visibility.Visible;
                }
                else
                {
                    this.Axis2Radio.Visibility = System.Windows.Visibility.Collapsed;
                }
            }
        }

        public string YAxis1Name
        {
            set
            {
                this.Axis1Radio.Content = value;
            }
        }

        public TrendDetail()
        {
            InitializeComponent();

            this.selector.MainPaletteItemsSource = XTSTrendDetail.Palette;            
        }

        /// <summary>
        /// Callback for on screen keyboard
        /// </summary>
        public void KeyboardEnter_Clicked()
        {
            this.DialogResult = true;
        }

        private void OKButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = true;
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }

        /// <summary>
        /// Callback for loaded event (window display)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void TrendDetail_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            // Move this window so that it won't obstruct the keyboard.
            //InputKeyboard.MoveChildWindow(this);
        }
    }
}
