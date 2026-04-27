/* 
 * XTSAlarm.cs
 * 
 * Alarm data required by the UI.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 27/01/2012
 */

using System;
using System.Windows.Media;

namespace XTS
{
    /// <summary>
    /// Data class for encapsulating Alarm data required by the UI.
    /// </summary>
    public class XTSAlarm : XTSData, IComparable
    {
        /// <summary>
        /// Level of alarm levels within the system
        /// </summary>
        public enum XTSAlarmLevel
        {
            Cleared,
            Present
        }

        /// <summary>
        /// Type of alarm levels within the system
        /// </summary>
        public enum XTSAlarmType
        {
            General,
            Alarm,
            Slowdown
        }

        #region Data Bind Properties

        private int alarmId = 0;

        public int AlarmID
        {
            set
            {
                this.alarmId = value;
                OnPropertyChanged("AlarmID");
            }
            get
            {
                return this.alarmId; 
            }
        }


        /// <summary>
        /// Internal data for Level
        /// </summary>
        private XTSAlarmLevel level = XTSAlarmLevel.Present;
        /// <summary>
        /// The level fo the alarm
        /// </summary>
        public XTSAlarmLevel Level
        {
            set
            {
                this.level = value;
                OnPropertyChanged("Level");
                OnPropertyChanged("BackgroundColor");
                OnPropertyChanged("ForegroundColor");
            }
            get
            {
                return this.level;
            }
        }

        /// <summary>
        /// Internal data for Type
        /// </summary>
        private XTSAlarmType type = XTSAlarmType.Alarm;
        /// <summary>
        /// The type of the alarm
        /// </summary>
        public XTSAlarmType Type
        {
            set
            {
                this.type = value;
                OnPropertyChanged("Type");
            }
            get
            {
                return this.type;
            }
        }

        /// <summary>
        /// Internal data for Timestamp
        /// </summary>
        private DateTime timestamp;
        /// <summary>
        /// The time that the alarm was raised
        /// </summary>
        public DateTime Timestamp
        {
            set
            {
                this.timestamp = value;
                OnPropertyChanged("Timestamp");
            }
            get
            {
                return this.timestamp;
            }
        }

        /// <summary>
        /// Internal data for message
        /// </summary>
        private string message = null;
        /// <summary>
        /// The message associated with the Alarm
        /// </summary>
        public string Message
        {
            set
            {
                this.message = value;
                OnPropertyChanged("Message");
            }
            get
            {
                return this.message;
            }
        }

        /// <summary>
        /// Internal data for AckUser
        /// </summary>
        private string ackUser = null;
        /// <summary>
        /// The user that acknowledged the alarm
        /// </summary>
        public string AckUser
        {
            get
            {
                return this.ackUser;
            }
        }

        /// <summary>
        /// Internal data for AckTimeStamp
        /// </summary>
        private DateTime ackTimestamp;
        /// <summary>
        /// Timestamp for when the alarm was acknowledged
        /// </summary>
        public DateTime AckTimestamp
        {
            get
            {
                return this.ackTimestamp;
            }
        }

        /// <summary>
        /// 
        /// </summary>
        public bool Acknowledged
        {
            get
            {
                if (this.Type == XTSAlarmType.General)
                {
                    return true;
                }

                // If we have an ack user ID then the
                // alarm has been ack'd
                return (this.ackUser != null); 
            }
        }

        int count;

        /// <summary>
        /// Gets the number of times the alarm has gone active/inactive
        /// before it was ackknowledged.
        /// </summary>
        public int Count
        {
            set
            {
                this.count = value;
                OnPropertyChanged("Count");
            }

            get
            {
                return this.count;                
            }
        }

        public Color BackgroundColor
        {
            get
            {
                Color rc = Colors.White;
                switch (this.Type)
                {
                    case XTSAlarmType.Alarm:
                        {
                            if (this.level == XTSAlarmLevel.Present)
                            {
                                rc = Color.FromArgb(255, 255, 255, 0);
                            }
                            else
                            {
                                if (this.Acknowledged)
                                {
                                    rc = Color.FromArgb(255, 255, 255, 255);
                                }
                                else
                                {
                                    rc = Color.FromArgb(255, 166, 166, 0);
                                }
                            }
                            break;
                        }

                    case XTSAlarmType.Slowdown:
                        {
                            if (this.level == XTSAlarmLevel.Present)
                            {
                                rc = Color.FromArgb(255, 255, 0, 0);
                            }
                            else
                            {
                                if (this.Acknowledged)
                                {
                                    rc = Color.FromArgb(255, 255, 255, 255);
                                }
                                else
                                {
                                    rc = Color.FromArgb(255, 166, 0, 0);
                                }
                            }
                            break;
                        }
                    default:
                        {
                            rc = Color.FromArgb(255, 87, 130, 175);
                            break;
                        }
                }
                return rc;
            }
        }

        public Color ForegroundColor
        {
            get
            {
                Color rc = Colors.White;
                switch (this.Type)
                {
                    case XTSAlarmType.Alarm:
                        {
                            if (this.level == XTSAlarmLevel.Present)
                            {
                                rc = Color.FromArgb(255, 0, 0, 0);
                            }
                            else
                            {
                                if (this.Acknowledged)
                                {
                                    rc = Color.FromArgb(255, 0, 0, 255);
                                }
                                else
                                {
                                    rc = Color.FromArgb(255, 255, 255, 255);
                                }
                            }
                            break;
                        }

                    case XTSAlarmType.Slowdown:
                        {
                            if (this.level == XTSAlarmLevel.Present)
                            {
                                rc = Color.FromArgb(255, 0, 0, 0);
                            }
                            else
                            {
                                if (this.Acknowledged)
                                {
                                    rc = Color.FromArgb(255, 255, 0, 0);
                                }
                                else
                                {
                                    rc = Color.FromArgb(255, 255, 255, 255);
                                }
                            }
                            break;
                        }
                    default:
                        {
                            rc = Color.FromArgb(255, 255, 255, 255);
                            break;
                        }
                }
                return rc;
            }
        }


        #endregion // Data Bind Properties

        /// <summary>
        ///  Default constructor
        /// </summary>
        public XTSAlarm(int ID)
        {
            this.alarmId = ID;
        }

        /// <summary>
        /// Set the alarm to the acknowledged state
        /// </summary>
        /// <param name="userID">The ID of the user who ack'd the alarm</param>
        /// <remarks>To clear an acknowledgement, set user to null</remarks>
        public void Acknowledge(string user, DateTime ackTime)
        {
            this.ackUser = user;
            this.ackTimestamp = ackTime;
            OnPropertyChanged("Acknowledged");
            OnPropertyChanged("BackgroundColor");
            OnPropertyChanged("ForegroundColor");
        }

        /// <summary>
        /// Method used to compare one XTSAlarm to Another
        /// </summary>
        /// <param name="obj">The object to compare to this XTSAlarm</param>
        /// <returns></returns>
        public int CompareTo(object obj)
        {
            XTSAlarm alarm = obj as XTSAlarm;
            if (alarm == null)
            {
                throw new ArgumentNullException("Object is not XTSAlarm");
            }

            //Order is:
            //
            // Unacked > acked or cleared
            // Acked < acked but > cleared
            // Cleared < acked < unacked

            if (alarm.Acknowledged != this.Acknowledged)
            {
                //This XTSAlarm is unacked so should be put at the top of the list
                //regardless of the item it is being compared against
                if (this.Acknowledged == false)
                {
                    return -1;
                }
                return 1;
            }
            if (alarm.level != this.level)
            {
                //This item is present but the alarm being compared to is cleared
                //This alarm should precede it
                if (this.level == XTSAlarmLevel.Present)
                {
                    return -1;
                } 
                return 1;
            }

            //XTSAlarms are equal compare the time stamps
            return alarm.Timestamp.CompareTo(this.Timestamp);
        }

        public override string ToString()
        {
            if (this.ackUser == string.Empty)
            {
                return String.Format("{0}\t{1}", this.timestamp, this.message.PadRight(75));
            }
            else if (this.ackUser != null)
            {
                return String.Format("{0}\t{1}\t{2}\t{3}", this.timestamp, this.message.PadRight(75), this.ackTimestamp, this.ackUser);
            }
            else
            {
                return String.Format("{0}\t{1}", this.timestamp, this.message);
            }
        }
    }
}