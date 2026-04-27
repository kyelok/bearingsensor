/* 
 * XTSSensorColor.cs
 * 
 * Classes for retreiving UI colours from resources for setting within code.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 03/02/2012
 */

using System.Windows;
using System.Windows.Media;

namespace XTS
{
    /// <summary>
    /// Provides colours within code for formatting state UI elements
    /// </summary>
    public class XTSSensorColor
    {
        #region Sensor State Colour Statics
        /// <summary>
        /// Sensor state Normal, obtained from current application resources.
        /// </summary>
        public static Color Normal           = (Color)Application.Current.Resources["ColorAMOTSensorNormal"];
        /// <summary>
        /// Sensor state Alarm, obtained from current application resources.
        /// </summary>
        public static Color Alarm            = (Color)Application.Current.Resources["ColorAMOTSensorAlarm"];
        /// <summary>
        /// Sensor state Slowdown, obtained from current application resources.
        /// </summary>
        public static Color Slowdown         = (Color)Application.Current.Resources["ColorAMOTSensorSlowdown"];
        /// <summary>
        /// Sensor state Disabled, obtained from current application resources.
        /// </summary>
        public static Color Disabled         = (Color)Application.Current.Resources["ColorAMOTSensorDisabled"];
        /// <summary>
        /// Sensor state PreWarning, obtained from current application resources.
        /// </summary>
        public static Color PreWarning       = (Color)Application.Current.Resources["ColorAMOTSensorPreWarning"];
        /// <summary>
        /// Sensor state SensorAdjustment, obtained from current application resources.
        /// </summary>
        public static Color SensorAdjustment = (Color)Application.Current.Resources["ColorAMOTSensorAdjustment"];
        /// <summary>
        /// Sensor state SensorFailure, obtained from current application resources.
        /// </summary>
        public static Color SensorFailure    = (Color)Application.Current.Resources["ColorAMOTSensorFailure"];
        #endregion // Sensor State Colours

        /// <summary>
        /// Converts a sensor status to its corresponding colour.
        /// </summary>
        /// <param name="status">The current sensor/cylinder status.</param>
        /// <returns>The colour to use during display.</returns>
        public static Color FromStatus(XTSSensorStatus status)
        {
            Color color;
            if (status.HasFlag(XTSSensorStatus.SensorFailureHighLevel) ||
                status.HasFlag(XTSSensorStatus.SensorFailureLowLevel) ||
                status.HasFlag(XTSSensorStatus.SensorFailureNoPulse) ||
                status.HasFlag(XTSSensorStatus.SensorFailureRPMOOR) ||
                status.HasFlag(XTSSensorStatus.SensorFailureUnknown))
            {
                color = XTSSensorColor.SensorFailure;
            }
            else if (status.HasFlag(XTSSensorStatus.Disabled))
            {
                color = XTSSensorColor.Disabled;
            }
            else if (status.HasFlag(XTSSensorStatus.SensorAdjustment))
            {
                color = XTSSensorColor.SensorAdjustment;
            }
            else if (status.HasFlag(XTSSensorStatus.PreWarning))
            {
                color = XTSSensorColor.PreWarning;
            }
            else if (status.HasFlag(XTSSensorStatus.Slowdown))
            {
                color = XTSSensorColor.Slowdown;
            }
            else if (status.HasFlag(XTSSensorStatus.Alarm))
            {
                color = XTSSensorColor.Alarm;
            }
            else if (status.HasFlag(XTSSensorStatus.Normal))
            {
                color = XTSSensorColor.Normal;
            }
            else
            {
                color = XTSSensorColor.SensorFailure;
            }
            return color;
        }
    }
}
