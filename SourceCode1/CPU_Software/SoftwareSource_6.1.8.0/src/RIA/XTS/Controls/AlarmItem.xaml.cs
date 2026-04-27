using System;
using System.ComponentModel;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using XTS.Storyboards;
using System.Windows.Media;

namespace XTS.Controls
{
    public partial class AlarmItem : UserControl
    {
        /// <summary>
        /// Constructor for AlarmItem
        /// </summary>
        /// <param name="item">XTSAlarm associated with this alarm item </param>
        public AlarmItem(XTSAlarm item)
        {
            InitializeComponent();
            this.item = item;

            MainPage mp = (MainPage)MainPage.GetInstance();
            this.flashState = mp.AlarmFlashSync.State;
            SetColours();
        }

        private void Setup()
        {
            this.DataContext = this;
            Binding alarmTimeBinding = new Binding();
            alarmTimeBinding.Path = new PropertyPath("Timestamp");
            alarmTimeBinding.Mode = BindingMode.OneWay;
            alarmTimeBinding.Source = this.item;
            alarmTimeBinding.Converter = new TimeStampConverter();
            //this.alarmTimeString.DataContext = this.item;
            this.AlarmTimeString.SetBinding(TextBlock.TextProperty, alarmTimeBinding);

            Binding messageBinding = new Binding();
            messageBinding.Path = new PropertyPath("Message");
            messageBinding.Mode = BindingMode.OneWay;
            messageBinding.Source = this.item;
            //this.AlarmMessage.DataContext = this.item;
            this.AlarmMessage.SetBinding(TextBlock.TextProperty, messageBinding);

            Binding ackTimestampBinding = new Binding();
            ackTimestampBinding.Path = new PropertyPath("Acknowledged");
            ackTimestampBinding.Mode = BindingMode.OneWay;
            ackTimestampBinding.Source = this.item;
            ackTimestampBinding.Converter = new AcknowledgeTimeDateConverter();
            ackTimestampBinding.ConverterParameter = this.item;
            //this.AckTimeStamp.DataContext = this.item;
            this.AckTimeStamp.SetBinding(TextBlock.TextProperty, ackTimestampBinding);

            Binding ackUserIDStringBinding = new Binding();
            ackUserIDStringBinding.Path = new PropertyPath("Acknowledged");
            ackUserIDStringBinding.Mode = BindingMode.OneWay;
            ackUserIDStringBinding.Source = this.item;
            ackUserIDStringBinding.Converter = new UserIDConverter();
            ackUserIDStringBinding.ConverterParameter = this.item;
            // this.AckUserID.DataContext = this.item;
            this.AckUserID.SetBinding(TextBlock.TextProperty, ackUserIDStringBinding);
        }

        private void CleanUp()
        {
            this.AlarmTimeString.ClearValue(TextBlock.TextProperty);
            this.AlarmMessage.ClearValue(TextBlock.TextProperty);
            this.AckTimeStamp.ClearValue(TextBlock.TextProperty);
            this.AckUserID.ClearValue(TextBlock.TextProperty);
        }

        private bool flashState = false;
        public void AlarmFlashSync_Callback(bool state)
        {
            this.flashState = state;
            SetColours();
        }

        private void SetColours()
        {
            if ((this.item.Level != XTSAlarm.XTSAlarmLevel.Cleared) &&
                             !this.item.Acknowledged)
            {
                // Based on this.flashState
                if (this.flashState)
                {
                    this.Background = new SolidColorBrush(this.item.BackgroundColor);
                    this.Foreground = new SolidColorBrush(this.item.ForegroundColor);
                }
                else
                {
                    Color backgroundNewColor = Color.FromArgb((byte)255, (byte)(this.item.BackgroundColor.R / 4),
                        (byte)(this.item.BackgroundColor.G / 4),
                        (byte)(this.item.BackgroundColor.B / 4));

                    this.Background = new SolidColorBrush(backgroundNewColor);
                    this.Foreground = new SolidColorBrush(Colors.White);
                }
            }
            else
            {
                this.Background = new SolidColorBrush(this.item.BackgroundColor);
                this.Foreground = new SolidColorBrush(this.item.ForegroundColor);
            }
        }

        /// <summary>
        /// PropertyChanged for XTSAlarm, stops the alarmitem from flashing
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void item_PropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            SetColours();
        }

        /// <summary>
        /// Event for notifying registered classes
        /// </summary>
        private XTSAlarm item;

        public XTSAlarm Alarm
        {
            get
            {
                return this.item;
            }
        }

        private void AlarmItem_Loaded(object sender, RoutedEventArgs e)
        {
            Setup();
            this.item.PropertyChanged += item_PropertyChanged;

            MainPage mp = (MainPage)MainPage.GetInstance();
            mp.AlarmFlashSync.Callback += new SyncState.SyncStateCallback(this.AlarmFlashSync_Callback);
        }

        private void AlarmItem_Unloaded(object sender, RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            mp.AlarmFlashSync.Callback -= this.AlarmFlashSync_Callback;
            
            this.item.PropertyChanged -= item_PropertyChanged;

            CleanUp();
        }
    }

    /// <summary>
    /// Converter for AlarmItem timestamp. DateTime->String
    /// </summary>
    public class TimeStampConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            DateTime dt = (DateTime)value;
            return String.Format("{0:dd-MMM-yyyy HH:mm:ss}", dt);

        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    /// <summary>
    /// Converter for AckTimeDate. DateTime->String 
    /// </summary>
    public class AcknowledgeTimeDateConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            bool ackd = (bool)value;
            XTSAlarm alarm = parameter as XTSAlarm;
            MainPage mp = (MainPage)MainPage.GetInstance();
            string rc = "";

            if (ackd && alarm.Type != XTSAlarm.XTSAlarmType.General && alarm.AckTimestamp != DateTime.MinValue)
            {
                if (alarm != null)
                {
                    rc = String.Format("{0:dd-MMM-yyyy HH:mm:ss}", alarm.AckTimestamp);
                }
            }
            return rc; 
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    /// <summary>
    /// UserId converter, converts the ID to a username.
    /// </summary>
    public class UserIDConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            bool ackd = (bool)value;
            XTSAlarm alarm = parameter as XTSAlarm; 
            return alarm.AckUser;
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
