/* 
 * SPUDateTimeControl.xaml.cs
 * 
 * Control displayed in the footer for displaying the last updated date and time of
 * the SPU system data.
 * C# partial implementation of SPUDateTimeControl.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 06/02/2012
 */

using System;
using System.Windows.Controls;

using System.Windows.Data;

namespace XTS.Controls
{
    public class XTSDateTimeVisibilityConverter : IValueConverter
    {
        #region IValueConverter Members

        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            DateTime dt = (DateTime) value;
            if (targetType == typeof(System.Windows.Visibility))
            {
                if (dt == DateTime.MinValue)
                {
                    return System.Windows.Visibility.Collapsed;
                }
                else
                {
                    return System.Windows.Visibility.Visible;
                }
            }
            else
            {
                throw new NotImplementedException("Only supports Visibility");
            }
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }

        #endregion
    }

    /// <summary>
    /// Control for displaying the last updated time/date that the SPU was updated.
    /// </summary>
	public partial class SPUDateTimeControl : UserControl
	{
        /// <summary>
        /// Default Constructor
        /// </summary>
		public SPUDateTimeControl()
		{
			IXTSDataProvider xts = null;
			MainPage mp = (MainPage) MainPage.GetInstance();
			// Workaround for designer as MainPage isntance gets set at runtime
			if (mp != null)
			{
            	xts = mp.XTSDataSource;
			}

			// Required to initialize variables
			InitializeComponent();

			if (xts != null)
			{
            	this.LabelDate.DataContext = xts.General;
            	this.LabelTime.DataContext = xts.General;
			}
		}

        public bool CommsOK
        {
            set
            {
                if (value)
                {
                    this.LabelTime.Opacity = 1.0;
                    this.LabelDate.Opacity = 1.0;
                }
                else
                {
                    this.LabelTime.Opacity = 0.5;
                    this.LabelDate.Opacity = 0.5;
                }
            }
        }
	}
}