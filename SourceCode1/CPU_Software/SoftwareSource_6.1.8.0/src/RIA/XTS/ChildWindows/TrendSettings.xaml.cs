using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;

namespace XTS.ChildWindows
{
    public partial class TrendSettings : ChildWindow
    {
        private const int MAX_SPAN_HOURS = Trends.MAX_REALTIME_SPAN_MINS / 60;
        private const int MIN_SPAN_HOURS = 1;

        /// <summary>
        /// String for Y Axis 2 Label
        /// </summary>
        public string YAxis2
        {
            get
            {
                return this.textBoxAxis2.Text;
            }
            set
            {
                this.textBoxAxis2.Text = value;
            }
        }

        /// <summary>
        /// Is the 2nd Y Axis Enabled?
        /// </summary>
        public bool YAxis2Enabled
        {
            get
            {
                // Convert IsChecked to a bool (it's a bool?)
                if (this.ExtraAxis.IsChecked == true)
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
                this.ExtraAxis.IsChecked = value;
            }
        }

        /// <summary>
        /// String for Y Axis 1 Label
        /// </summary>
        public string YAxis1
        {
            get
            {
                return this.textBoxAxis1.Text;
            }
            set
            {
                this.textBoxAxis1.Text = value;
            }
        }

        public DateTime LatestTime
        {
            get
            {
                return new DateTime(datePickerBasic.Date.Year,
                        datePickerBasic.Date.Month,
                        datePickerBasic.Date.Day,
                        timePicker.Time.Hour,
                        timePicker.Time.Minute, 0);
            }
            set
            {
                this.datePickerBasic.Date = value;
                this.timePicker.Time = value;
                UpdateSpanControls();
            }
        }

        public bool RealTime
        {
            get
            {
                // Compare as IsChecked is bool?
                if (this.buttonRealTime.IsChecked == true)
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
                if (value)
                {
                    this.buttonRealTime.IsChecked = true;
                }
                else
                {
                    this.buttonTime.IsChecked = true;
                }
            }
        }

        /// <summary>
        /// The span displayed in hours modified by the user
        /// </summary>
        private uint spanTimeHours = 1;
        /// <summary>
        /// The previous span set before window is opened
        /// </summary>
        private uint span = 60;
        /// <summary>
        /// Span time in minutes
        /// </summary>
        public uint Span
        {
            get
            {
                if ((this.buttonSpan.IsChecked == true) ||
                    (this.buttonRealTime.IsChecked == true))
                {
                    return this.spanTimeHours * 60;
                }
                else
                {
                    // Use hours/minutes/seconds from main time picker
                    DateTime date = new DateTime(this.datePickerBasicStart.Date.Year, this.datePickerBasicStart.Date.Month, this.datePickerBasicStart.Date.Day,
                        this.timePicker.Time.Hour, this.timePicker.Time.Minute, 0);
                    TimeSpan diff = this.LatestTime.Subtract(date);
                    return (uint)diff.TotalMinutes;
                }
            }
            set
            {
                if (value < (60 * TrendSettings.MIN_SPAN_HOURS))
                {
                    throw new ArgumentOutOfRangeException(XTS.LocalizedResources.GetResourceString("XTSStringSpanGreaterThan0Mins", new object[] { TrendSettings.MIN_SPAN_HOURS * 60 }));
                }
                this.span = value;
                UpdateSpanControls();
            }
        }

        public TrendSettings()
        {
            InitializeComponent();

            //this.textBoxAxis1.EnterKey = InputKeyboard.XTSKeyboardEnterKey.Next;
            //this.textBoxAxis1.EnterCallback = new InputKeyboard.XTSKeyboardEnterCallback(KeyboardEnterAxis1_Clicked);
            //this.textBoxAxis1.TopParent = this;

            //this.textBoxAxis2.EnterKey = InputKeyboard.XTSKeyboardEnterKey.OK;
            //this.textBoxAxis2.EnterCallback = new InputKeyboard.XTSKeyboardEnterCallback(KeyboardEnterAxis2_Clicked);
            //this.textBoxAxis2.TopParent = this;
        }

        private void UpdateSpanControls()
        {
            uint hours = this.span / 60;

            this.SpanInc.IsEnabled = (hours != TrendSettings.MAX_SPAN_HOURS);
            this.SpanDec.IsEnabled = (hours != TrendSettings.MIN_SPAN_HOURS);

            if (hours > TrendSettings.MAX_SPAN_HOURS)
            {
                hours = TrendSettings.MAX_SPAN_HOURS;
                this.datePickerBasicStart.Date = this.LatestTime.AddMinutes(-this.span);
                this.buttonTimeStart.IsChecked = true;
            }
            else
            {
                this.datePickerBasicStart.Date = this.LatestTime.AddDays(-1);
                this.buttonSpan.IsChecked = true;
            }
            this.spanTimeHours = hours;
            this.SpanDisplay.Text = this.spanTimeHours.ToString();
        }

        /// <summary>
        /// Callback for on screen keyboard
        /// </summary>
        public void KeyboardEnterAxis1_Clicked()
        {
            // Try to select next text box
            this.textBoxAxis2.Focus();
        }

        /// <summary>
        /// Callback for on screen keyboard
        /// </summary>
        public void KeyboardEnterAxis2_Clicked()
        {
            ValidateOK();
        }

        private void OKButton_Click(object sender, RoutedEventArgs e)
        {
            ValidateOK();
        }

        private void ValidateOK()
        {
            // We only want to compare the dates of the date pickers ignoring any possible times included in the DateTime data.
            DateTime endDate = new DateTime(this.datePickerBasic.Date.Year, this.datePickerBasic.Date.Month, this.datePickerBasic.Date.Day);
            DateTime startDate = new DateTime(this.datePickerBasicStart.Date.Year, this.datePickerBasicStart.Date.Month, this.datePickerBasicStart.Date.Day);
            // Check that if we are specifying a start date, then it is earlier than the current date specified.
            if ((this.buttonTimeStart.IsChecked == true) &&
                (endDate <= startDate))
            {
                AMOTMessageBox amb = new AMOTMessageBox();
                amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringStartDateLaterThanEndDate");
                amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OK;
                amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringErrorExclamation");
                amb.Show();
            }
            else
            {
                this.DialogResult = true;
            }
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }

        private void SpanInc_Click(object sender, RoutedEventArgs e)
        {
            if (spanTimeHours < MAX_SPAN_HOURS)
            {
                spanTimeHours++;
            }
            this.SpanInc.IsEnabled = (this.spanTimeHours < MAX_SPAN_HOURS);
            this.SpanDec.IsEnabled = (this.spanTimeHours > MIN_SPAN_HOURS);
            SpanDisplay.Text = this.spanTimeHours.ToString();
        }

        private void SpanDec_Click(object sender, RoutedEventArgs e)
        {
            if (this.spanTimeHours > MIN_SPAN_HOURS)
            {
                this.spanTimeHours--;
            }
            this.SpanInc.IsEnabled = (this.spanTimeHours < MAX_SPAN_HOURS);
            this.SpanDec.IsEnabled = (this.spanTimeHours > MIN_SPAN_HOURS);
            SpanDisplay.Text = this.spanTimeHours.ToString();
        }

        private void buttonRealTime_Checked(object sender, System.Windows.RoutedEventArgs e)
        {
            this.timePicker.IsEnabled = false;
            this.datePickerBasic.IsEnabled = false;

            this.SpanInc.IsEnabled = (this.spanTimeHours < MAX_SPAN_HOURS);
            this.SpanDec.IsEnabled = (this.spanTimeHours > MIN_SPAN_HOURS);
            this.stackPanelTimeSpan.Opacity = 1.0;

            this.datePickerBasicStart.IsEnabled = false;
            this.buttonSpan.IsEnabled = false;
            this.buttonTimeStart.IsEnabled = false;
        }

        private void buttonTime_Checked(object sender, System.Windows.RoutedEventArgs e)
        {
            this.timePicker.IsEnabled = true;
            this.datePickerBasic.IsEnabled = true;

            if (this.buttonSpan.IsChecked == true)
            {
                this.SpanInc.IsEnabled = (this.spanTimeHours < MAX_SPAN_HOURS);
                this.SpanDec.IsEnabled = (this.spanTimeHours > MIN_SPAN_HOURS);
            }
            else
            {
                this.SpanDec.IsEnabled = false;
                this.SpanInc.IsEnabled = false;
            }

            if (this.buttonSpan.IsChecked == true)
            {
                this.stackPanelTimeSpan.Opacity = 1.0;
            }
            else
            {
                this.stackPanelTimeSpan.Opacity = 0.4;
            }
            this.datePickerBasicStart.IsEnabled = (this.buttonTimeStart.IsChecked == true);
            this.buttonSpan.IsEnabled = true;
            this.buttonTimeStart.IsEnabled = true;
        }

        private void buttonSpan_Checked(object sender, System.Windows.RoutedEventArgs e)
        {
            this.SpanInc.IsEnabled = (this.spanTimeHours < MAX_SPAN_HOURS);
            this.SpanDec.IsEnabled = (this.spanTimeHours > MIN_SPAN_HOURS);
            this.stackPanelTimeSpan.Opacity = 1.0;

            this.datePickerBasicStart.IsEnabled = false;
        }

        private void buttonTimeStart_Checked(object sender, System.Windows.RoutedEventArgs e)
        {
            this.SpanDec.IsEnabled = false;
            this.SpanInc.IsEnabled = false;
            this.stackPanelTimeSpan.Opacity = 0.4;

            this.datePickerBasicStart.IsEnabled = true;
        }

        /// <summary>
        /// Callback for loaded event (window display)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void TrendSettings_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            // Move this window so that it won't obstruct the keyboard.
            //InputKeyboard.MoveChildWindow(this);
        }
    }
}
