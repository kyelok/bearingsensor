using System.Threading;
using System.Windows;
using System.Windows.Controls;

// TODO: Join() running test threads on unloaded callback.

namespace XTSDataTest
{
	public partial class MainPage : UserControl
	{
		public MainPage()
		{
			// Required to initialize variables
			InitializeComponent();
		}

		private void comboBoxTests_SelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
		{
			ComboBox cb = sender as ComboBox;
			this.buttonTest.IsEnabled = (cb.SelectedIndex >= 0);
		}

		private void buttonTest_Click(object sender, System.Windows.RoutedEventArgs e)
		{
            if (this.comboBoxTests.SelectedIndex >= 0)
            {
                this.buttonTest.IsEnabled = false;
                if (this.comboBoxTests.SelectedItem == this.testAlarmList)
                {
                    Thread alarmTest = new Thread(this.AlarmTestThread);
                    alarmTest.Start();
                }
            }
		}

        private void TestFinishedCallback()
        {
            // Check if we are on the main ui thread or not.
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                MessageBox.Show("Test finished!");
                this.buttonTest.IsEnabled = (this.comboBoxTests.SelectedIndex >= 0);
            }
            else
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(this.TestFinishedCallback);
            }
        }

        private void AlarmTestThread()
        {
            // TODO: Test alarmlist collection.
            Thread.Sleep(2000);
            TestFinishedCallback();
        }
	}
}
