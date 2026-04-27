/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    [DataContract]
    public class ChannelStatus
    {
        [DataMember]
        public Int16 Status { get; set; }

        public ChannelStatus() : this(0)
        {
        }

        public ChannelStatus(Int16 status)
        {
            Status = status;
        }

        public ChannelStatus(UInt16 status)
        {
            Status = (Int16)status;
        }

        public bool Enabled { 
            get { return (Status & (1 << 0)) > 0; }
            set
            {
                if (value)
                    Status |= (1 << 0);
                else
                    Status &= ~(1 << 0);
            }
        }

        public bool CalMod { 
            get { return (Status & (1 << 1)) > 0; }
            set
            {
                if (value)
                    Status |= (1 << 1);
                else
                    Status &= ~(1 << 1);
            }
        }

        public bool AlarmMask { 
            get { return (Status & (1 << 2)) > 0; }
            set
            {
                if (value)
                    Status |= (1 << 2);
                else
                    Status &= ~(1 << 2);
            }
        }

        public bool DCMode { 
            get { return (Status & (1 << 3)) > 0; }
            set
            {
                if (value)
                    Status |= (1 << 3);
                else
                    Status &= ~(1 << 3);
            }
        }

        public bool Replaced { 
            get { return (Status & (1 << 4)) > 0; }
            set
            {
                if (value)
                    Status |= (1 << 4);
                else
                    Status &= ~(1 << 4);
            }
        }

        public bool ExcludesSlowRoll { 
            get { return (Status & (1 << 5)) > 0; }
            set
            {
                if (value)
                    Status |= (1 << 5);
                else
                    Status &= ~(1 << 5);
            }
        }
    }
}
