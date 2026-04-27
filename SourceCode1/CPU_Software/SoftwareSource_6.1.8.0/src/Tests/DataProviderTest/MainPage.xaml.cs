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

using System.Windows.Data;
using System.Collections.ObjectModel;

using XTS;

namespace DataProviderTest
{
    public partial class MainPage : UserControl
    {
        private IXTSDataProvider xtsData = null;

        public MainPage()
        {
            InitializeComponent();
        }

        private void buttonConnect_Click(object sender, RoutedEventArgs e)
        {
            this.buttonConnect.IsEnabled = false;
            if (this.xtsData == null)
            {
                if (this.radioButtonSimulator.IsChecked == true)
                {
                    this.xtsData = new XTSDataProviderSimulator();
                }
                else if (this.radioButtonWebServer.IsChecked == true)
                {
                    this.xtsData = new XTSDataProviderWeb();
                }

                this.xtsData.SetErrorCallback(new XTSErrorDelegate(this.OnDataProviderError));

                this.xtsData.Connect(textBoxIP.Text);
                this.buttonConnect.Content = "Disconnect";
                this.radioButtonSimulator.IsEnabled = false;
                this.radioButtonWebServer.IsEnabled = false;
                this.radioButtonSensorModeDCMode.IsEnabled = true;
                this.radioButtonSensorModeDCPeekHold.IsEnabled = true;
                this.radioButtonSensorModePulseMode.IsEnabled = true;
                this.buttonSensorMode.IsEnabled = true;
                this.buttonSendImportFile.IsEnabled = true;
				
				this.listBoxUsers.ItemsSource = this.xtsData.UserData.Users;
                this.listBoxAlarms.ItemsSource = this.xtsData.Alarms;

                Binding binding = null;
                binding = new Binding();
                binding.Source = this.xtsData.EngineData;
                binding.Path = new PropertyPath("SensorMode");
                binding.Mode = BindingMode.OneWay; // If we bound to a value that set the radio buttons, we could make this two way
                this.labelSensorMode.SetBinding(Label.ContentProperty, binding);
            }
            else
            {
                this.xtsData.Disconnect();
                this.buttonConnect.Content = "Connect";
                this.xtsData = null;
                this.radioButtonSimulator.IsEnabled = true;
                this.radioButtonWebServer.IsEnabled = true;
                this.radioButtonSensorModeDCMode.IsEnabled = false;
                this.radioButtonSensorModeDCPeekHold.IsEnabled = false;
                this.radioButtonSensorModePulseMode.IsEnabled = false;
                this.buttonSensorMode.IsEnabled = false;
                this.buttonSendImportFile.IsEnabled = false;

				this.listBoxUsers.ItemsSource = null;

                this.labelSensorMode.ClearValue(Label.ContentProperty);
                this.labelSensorMode.Content = "-";
            }
            this.buttonConnect.IsEnabled = true;
        }

        private void buttonSensorMode_Click(object sender, RoutedEventArgs e)
        {
            XTSEngine.XTSSensorMode sensorMode = XTSEngine.XTSSensorMode.Unknown;
            if (radioButtonSensorModeDCMode.IsChecked == true)
            {
                sensorMode = XTSEngine.XTSSensorMode.DCMode;
            }
            else if (radioButtonSensorModeDCPeekHold.IsChecked == true)
            {
                sensorMode = XTSEngine.XTSSensorMode.DCPeakHold;
            }
            else if (radioButtonSensorModePulseMode.IsChecked == true)
            {
                sensorMode = XTSEngine.XTSSensorMode.PulseMode;
            }
            this.xtsData.EngineData.SensorMode = sensorMode;
        }

        private void buttonSendImportFile_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            if (this.xtsData != null)
            {
                if ((this.comboBoxCylinder.SelectedItem != null) && (this.comboBoxSensor.SelectedItem != null))
                {
                    OpenFileDialog ofd = new OpenFileDialog();
                    ofd.Multiselect = false;
                    if (ofd.ShowDialog() == true)
                    {
                        uint cylinder = (uint)uint.Parse(((ListBoxItem)this.comboBoxCylinder.SelectedItem).Content.ToString());
                        uint sensor = (uint)uint.Parse(((ListBoxItem)this.comboBoxSensor.SelectedItem).Content.ToString());
                        System.IO.FileStream fileStream = ofd.File.OpenRead();
                        this.xtsData.ImportReplacementData(cylinder, sensor, fileStream);
                    }
                }
                else
                {
                    MessageBox.Show("Select a cylinder and sensor");
                }
            }
        }

        public void OnDataProviderError(XTSErrors errorCode, object[] parameters)
        {
            // Check if we are on the main ui thread or not.
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                MessageBox.Show(string.Format("An error occurred: {0}", errorCode), "Error", MessageBoxButton.OK);
            }
            else
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new XTSErrorDelegate(OnDataProviderError), errorCode, parameters);
            }
        }
    }
}
