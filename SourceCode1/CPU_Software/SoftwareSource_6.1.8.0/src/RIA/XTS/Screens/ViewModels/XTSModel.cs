/* 
 * XTSModel.cs
 * 
 * Child class for screen data models to use for shared XTS data access/binding and
 * converter classes.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 13/03/2012
 */

using System;
using System.Windows;
using System.Windows.Data;
using System.Windows.Media;

namespace XTS
{
    #region XTSTimeConverter
    /// <summary>
    /// Converts an int representing minutes to a string for displaying
    /// </summary>
    public class XTSTimeConverter : IValueConverter
    {
        #region IValueConverter Members

        /// <summary>
        /// Converts from int or uint to a string for display
        /// </summary>
        /// <param name="value">The value produced by the binding source.</param>
        /// <param name="targetType">The type of the binding target property.</param>
        /// <param name="parameter">The converter parameter to use.</param>
        /// <param name="culture">The culture to use in the converter.</param>
        /// <returns>A converted value.</returns>
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            if (value == null)
            {
                return "";
            }
            uint hrs = 0;
            uint mins = 0;
            uint valueInt = 0;

            if (value.GetType() == typeof(int))
            {
                valueInt = (uint) Math.Abs((int)value);
            }
            else if (value.GetType() == typeof(uint))
            {
                valueInt = (uint)value;
            }
            string format = "";
            if (value.GetType() == typeof(int) || value.GetType() == typeof(uint))
            {
                
                hrs = valueInt / 60;
                mins = valueInt % 60;

                if (hrs > 1)
                {
                    format += XTS.LocalizedResources.GetResourceString("XTSStringTime0Hrs", new object[] { hrs });
                }
                else if (hrs == 1)
                {
                    format += XTS.LocalizedResources.GetResourceString("XTSStringOneHour");
                }
                if (mins > 1)
                {
                    format += XTS.LocalizedResources.GetResourceString("XTSStringTime0Mins", new object[] { mins });
                }
                else if (mins == 1)
                {
                    format += XTS.LocalizedResources.GetResourceString("XTSStringOneMin");
                }
                else
                {
                    format += XTS.LocalizedResources.GetResourceString("XTSStringZeroMins");
                }
            }
            return format;
        }

        /// <summary>
        /// Converts from string to int
        /// </summary>
        /// <param name="value">The value that is produced by the binding target.</param>
        /// <param name="targetType">The type to convert to.</param>
        /// <param name="parameter">The converter parameter to use.</param>
        /// <param name="culture">The culture to use in the converter.</param>
        /// <returns>A converted value.</returns>
        /// <remarks>Currently not implemented.</remarks>
        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
    #endregion // XTSTimeConverter

    #region XTSStatusConverter
    /// <summary>
    /// Converts a bool? to a colour for displaying
    /// </summary>
    public class XTSStatusConverter : IValueConverter
    {
        #region IValueConverter Members

        /// <summary>
        /// Converts from bool? to a colour for display
        /// </summary>
        /// <param name="value">The value produced by the binding source.</param>
        /// <param name="targetType">The type of the binding target property.</param>
        /// <param name="parameter">The converter parameter to use.</param>
        /// <param name="culture">The culture to use in the converter.</param>
        /// <returns>A converted value.</returns>
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            bool? boolValue = value as bool?;

            if ((targetType == typeof(Color)) || (targetType == typeof(Brush)))
            {
                Color color;
                if (boolValue == null)
                {
                    color = (Color) Application.Current.Resources["ColorAMOTDarkGrey"];
                }
                else if (boolValue == true)
                {
                    color = (Color) Application.Current.Resources["ColorAMOTSensorNormal"];
                }
                else
                {
                    color = (Color) Application.Current.Resources["ColorAMOTError"];
                }
                if (targetType == typeof(Color))
                {
                    return color;
                }
                else
                {
                    return new SolidColorBrush(color);
                }
            }
            else if ((targetType == typeof(string)) ||
                     (targetType == typeof(object)))
            {
                if (boolValue == null)
                {
                    return "";
                }
                else if (boolValue == true)
                {
                    return "OK";
                }
                else
                {
                    return "FAULT";
                }
            }
            else if (targetType == typeof(Visibility))
            {
                bool invert = false;
                if (parameter != null)
                {
                    invert = bool.Parse(parameter as string);
                }
                Visibility visible = Visibility.Collapsed;
                if (boolValue != null)
                {
                    if (((boolValue == true) && !invert) ||
                             ((boolValue == false) && invert))
                    {
                        visible = Visibility.Visible;
                    }
                }
                else if (invert)
                {
                    visible = Visibility.Visible;
                }
                return visible;
            }
            // Target type not supported!
            throw new NotImplementedException(XTS.LocalizedResources.GetResourceString("XTSStringTargetType0NotSupported", new object[] { targetType }));
        }

        /// <summary>
        /// Converts from target colour to bool?
        /// </summary>
        /// <param name="value">The value that is produced by the binding target.</param>
        /// <param name="targetType">The type to convert to.</param>
        /// <param name="parameter">The converter parameter to use.</param>
        /// <param name="culture">The culture to use in the converter.</param>
        /// <returns>A converted value.</returns>
        /// <remarks>Currently not implemented.</remarks>
        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
    #endregion // XTSStatusConverter

    #region XTSTestStatusConverter
    /// <summary>
    /// Converts a bool? to a text for displaying
    /// </summary>
    public class XTSTestStatusConverter : IValueConverter
    {
        #region IValueConverter Members

        /// <summary>
        /// Converts from bool? to a colour for display
        /// </summary>
        /// <param name="value">The value produced by the binding source.</param>
        /// <param name="targetType">The type of the binding target property.</param>
        /// <param name="parameter">The converter parameter to use.</param>
        /// <param name="culture">The culture to use in the converter.</param>
        /// <returns>A converted value.</returns>
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            bool? boolValue = value as bool?;
            
            if ((targetType == typeof(string)) ||
                     (targetType == typeof(object)))
            {
                if (boolValue == null)
                {
                    return "";
                }
                else if (boolValue == true)
                {
                    return "ON";
                }
                else
                {
                    return "OFF";
                }
            }
            
            // Target type not supported!
            throw new NotImplementedException(XTS.LocalizedResources.GetResourceString("XTSStringTargetType0NotSupported", new object[] { targetType }));
        }

        /// <summary>
        /// Converts from target colour to bool?
        /// </summary>
        /// <param name="value">The value that is produced by the binding target.</param>
        /// <param name="targetType">The type to convert to.</param>
        /// <param name="parameter">The converter parameter to use.</param>
        /// <param name="culture">The culture to use in the converter.</param>
        /// <returns>A converted value.</returns>
        /// <remarks>Currently not implemented.</remarks>
        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
    #endregion // XTSTestStatusConverter 

    #region XTSTestSlowdownStatusConverter
    /// <summary>
    /// Converts a bool? to a text for displaying
    /// </summary>
    public class XTSTestSlowdownStatusConverter : IValueConverter
    {
        #region IValueConverter Members

        /// <summary>
        /// Converts from bool? to a colour for display
        /// </summary>
        /// <param name="value">The value produced by the binding source.</param>
        /// <param name="targetType">The type of the binding target property.</param>
        /// <param name="parameter">The converter parameter to use.</param>
        /// <param name="culture">The culture to use in the converter.</param>
        /// <returns>A converted value.</returns>
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            bool? boolValue = value as bool?;

            if ((targetType == typeof(string)) ||
                     (targetType == typeof(object)))
            {
                if (boolValue == null)
                {
                    return "";
                }
                else if (boolValue == true)
                {
                    return "OFF";
                }
                else
                {
                    return "ON";
                }
            }

            // Target type not supported!
            throw new NotImplementedException(XTS.LocalizedResources.GetResourceString("XTSStringTargetType0NotSupported", new object[] { targetType }));
        }

        /// <summary>
        /// Converts from target colour to bool?
        /// </summary>
        /// <param name="value">The value that is produced by the binding target.</param>
        /// <param name="targetType">The type to convert to.</param>
        /// <param name="parameter">The converter parameter to use.</param>
        /// <param name="culture">The culture to use in the converter.</param>
        /// <returns>A converted value.</returns>
        /// <remarks>Currently not implemented.</remarks>
        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
    #endregion // XTSTestSlowdownStatusConverter

    #region XTSSensorStatusConverter   
    /// <summary>
    /// Converts a XTSSensorStatus to a colour for displaying
    /// </summary>
    public class XTSSensorStatusConverter : IValueConverter
    {
        #region IValueConverter Members

        /// <summary>
        /// Converts from XTSSensorStatus to a colour for display
        /// </summary>
        /// <param name="value">The value produced by the binding source.</param>
        /// <param name="targetType">The type of the binding target property.</param>
        /// <param name="parameter">The converter parameter to use.</param>
        /// <param name="culture">The culture to use in the converter.</param>
        /// <returns>A converted value.</returns>
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            XTSSensorStatus status = (XTSSensorStatus) value;

            if ((targetType == typeof(Color)) || (targetType == typeof(Brush)))
            {
                Color color = XTSSensorColor.FromStatus(status);
                if (targetType == typeof(Color))
                {
                    return color;
                }
                else
                {
                    return new SolidColorBrush(color);
                }
            }
            else if ((targetType == typeof(string)) ||
                     (targetType == typeof(object)))
            {
                return status.ToString();
            }
            // Target type not supported!
            throw new NotImplementedException(XTS.LocalizedResources.GetResourceString("XTSStringTargetType0NotSupported", new object[] { targetType }));
        }

        /// <summary>
        /// Converts from target colour to sensor status
        /// </summary>
        /// <param name="value">The value that is produced by the binding target.</param>
        /// <param name="targetType">The type to convert to.</param>
        /// <param name="parameter">The converter parameter to use.</param>
        /// <param name="culture">The culture to use in the converter.</param>
        /// <returns>A converted value.</returns>
        /// <remarks>Currently not implemented.</remarks>
        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
    #endregion // XTSSensorStatusConverter

    #region XTSSEDMConverter

    /// <summary>
    /// Converts a sedm value to a string for display
    /// </summary>
    public class XTSSEDMConverter : IValueConverter
    {
        #region IValueConverter Members

        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            short valueInt = (short)value;
            // Check if we are an error code
            if (valueInt < -32000)
            {
                return XTS.LocalizedResources.GetResourceString("XTSStringSEDMError");
            }
            else
            {
                return XTS.LocalizedResources.GetResourceString("XTSStringValue0mV", new object[] { valueInt });
            }
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }

        #endregion
    }

    #endregion // XTSSEDMConverter

    #region XTSDisabledOpacityConverter

    /// <summary>
    /// Converts a bool to an opacity for fading things when disabled.
    /// </summary>
    public class XTSDisabledOpacityConverter : IValueConverter
    {
        #region IValueConverter Members

        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            bool valueBool = (bool)value;
            if (valueBool)
            {
                return 1.0;
            }
            else
            {
                return 0.4;
            }
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }

        #endregion
    }

    #endregion // XTSDisabledOpacityConverter

    /// <summary>
    /// Converts a DateTime to a string for displaying the date string bound to the SPU update time/date.
    /// </summary>
    public class XTSSPUDateConverter : IValueConverter
    {
        #region IValueConverter Members

        /// <summary>
        /// Converts from DateTime to a string for display in the SPUDateTimeControl (Date)
        /// </summary>
        /// <param name="value">The value produced by the binding source.</param>
        /// <param name="targetType">The type of the binding target property.</param>
        /// <param name="parameter">The converter parameter to use.</param>
        /// <param name="culture">The culture to use in the converter.</param>
        /// <returns>A converted value.</returns>
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            if (value == null)
            {
                return "";
            }
            DateTime dtValue = (DateTime)value;
            return dtValue.ToString("dd MMM yyyy");
        }

        /// <summary>
        /// Converts from target date string to DateTime.
        /// </summary>
        /// <param name="value">The value that is produced by the binding target.</param>
        /// <param name="targetType">The type to convert to.</param>
        /// <param name="parameter">The converter parameter to use.</param>
        /// <param name="culture">The culture to use in the converter.</param>
        /// <returns>A converted value.</returns>
        /// <remarks>Currently not implemented as SPUDateTimeControl can not set the time!</remarks>
        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }

        #endregion
    }

    /// <summary>
    /// Converts a DateTime to a string for displaying the time string bound to the SPU update time/date.
    /// </summary>
    public class XTSSPUTimeConverter : IValueConverter
    {
        #region IValueConverter Members

        /// <summary>
        /// Converts from DateTime to a string for display in the SPUDateTimeControl (Time)
        /// </summary>
        /// <param name="value">The value produced by the binding source.</param>
        /// <param name="targetType">The type of the binding target property.</param>
        /// <param name="parameter">The converter parameter to use.</param>
        /// <param name="culture">The culture to use in the converter.</param>
        /// <returns>A converted value.</returns>
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            if (value == null)
            {
                return "";
            }
            DateTime dtValue = (DateTime)value;
            return dtValue.ToString("H:mm");
        }

        /// <summary>
        /// Converts from target time string to DateTime.
        /// </summary>
        /// <param name="value">The value that is produced by the binding target.</param>
        /// <param name="targetType">The type to convert to.</param>
        /// <param name="parameter">The converter parameter to use.</param>
        /// <param name="culture">The culture to use in the converter.</param>
        /// <returns>A converted value.</returns>
        /// <remarks>Currently not implemented as SPUDateTimeControl can not set the time!</remarks>
        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }

        #endregion
    }

    /// <summary>
    /// Parent class for data model for most XTS screens.
    /// </summary>
    /// <remarks>Typically ViewModels implement INotifyPropertyChanged, however, we have this
    /// covered by our XTSData classes.</remarks>
    public class XTSModel
    {
        /// <summary>
        /// Internal data for XTSDataSource
        /// </summary>
        private IXTSDataProvider xts;
        /// <summary>
        /// Source of data within the XTS system.
        /// </summary>
        public IXTSDataProvider XTSDataSource
        {
            get
            {
                return this.xts;
            }
        }

        /// <summary>
        /// Default constructor, initialise data source
        /// </summary>
        public XTSModel()
		{
            this.xts = null;

            // Work around for Expression blend as main page is only created at runtime.
            MainPage mp = ((MainPage)MainPage.GetInstance());
            if (mp != null)
            {
                this.xts = mp.XTSDataSource;
            }
		}
    }
}
