/* 
 * WIO.xaml.cs
 * 
 * Control within the engine mimic for displaying the WIO PPM.
 * C# partial implementation of wio.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 18/04/2012
 */

using System.Windows.Controls;
using System.Windows.Data;

namespace XTS.Controls
{
    public class WIOStringConverter : IValueConverter
    {
        #region IValueConverter Members

        public object Convert(object value, System.Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            string str = null;

            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                XTSWIO wio = mp.XTSDataSource.EngineData.WIO;
                if (wio != null)
                {
                    switch (wio.Units)
                    {
                    case XTSWIO.XTSWIOUnits.Error:
                        {
                            if (wio.ErrorValue == -32764)
                            {
                                str = XTS.LocalizedResources.GetResourceString("XTSStringWIOErrorHigh");
                            }
                            else if (wio.ErrorValue == -32765)
                            {
                                str = XTS.LocalizedResources.GetResourceString("XTSStringWIOErrorLow");
                            }
                            else if (wio.ErrorValue >= 0)
                            {
                                //str = XTS.LocalizedResources.GetResourceString("XTSStringWIOErrorComms", new object[] { wio.ErrorValue });
                                str = XTS.LocalizedResources.GetResourceString("XTSStringWIOErrorComms");
                            }
                            else
                            {
                                //str = XTS.LocalizedResources.GetResourceString("XTSStringGeneralErrorNumber", new object[] { wio.ErrorValue });
                                str = XTS.LocalizedResources.GetResourceString("XTSStringGeneralErrorNumber");
                            }
                            break;
                        }
                    case XTSWIO.XTSWIOUnits.aW:
                        {
                            str = XTS.LocalizedResources.GetResourceString("XTSStringNumberaW", new object[] { value });
                            break;
                        }
                    case XTSWIO.XTSWIOUnits.Percent:
                        {
                            str = XTS.LocalizedResources.GetResourceString("XTSStringNumberPercent", new object[] { value });
                            break;
                        }
                    case XTSWIO.XTSWIOUnits.PPM:
                        {
                            str = XTS.LocalizedResources.GetResourceString("XTSStringNumberPPM", new object[] { value });
                            break;
                        }
                    }
                }
            }
            return str;
        }

        public object ConvertBack(object value, System.Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new System.NotImplementedException();
        }

        #endregion
    }

    /// <summary>
    /// User control class for displaying the WIO details
    /// </summary>
    public partial class WIO : UserControl
    {
        /// <summary>
        /// Default constructor
        /// </summary>
        public WIO()
        {
            InitializeComponent();
        }

        private void buttonWIO_Click(object sender, System.Windows.RoutedEventArgs e)
        {            
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                int count = (int)Mimic.Instance.StackEngine.Children.Count;
                //Last cylinder, count-1 is for last main bearing
                Cylinder cd = (Cylinder)Mimic.Instance.StackEngine.Children[count-2];
                //1 is for WIO
                Mimic.Instance.ShowCylinderPopup(cd, 1);                
            }
        }
    }
}
