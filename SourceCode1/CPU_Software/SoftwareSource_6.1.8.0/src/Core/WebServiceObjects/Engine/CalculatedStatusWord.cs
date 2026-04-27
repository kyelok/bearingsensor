/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Text;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    [DataContract]
    public class CalculatedStatusWord
    {
        [DataMember]
        public Int16 Status { get; set; }

        public CalculatedStatusWord()
            : this(0)
        { }

        public CalculatedStatusWord(Int16 Status)
        {
            this.Status = Status;
        }

        public bool Normal
        {
            get { return (Status & (1 << 0)) > 0; }
            set
            {
                if (value)
                    Status |= (1 << 0);
                else
                    Status &= ~(1 << 0);
            }
        }

        public bool Alarm
        {
            get { return (Status & (1 << 1)) > 0; }
            set
            {
                if (value)
                    Status |= (1 << 1);
                else
                    Status &= ~(1 << 1);
            }
        }

        public bool Slowdown
        {
            get { return (Status & (1 << 2)) > 0; }
            set
            {
                if (value)
                    Status |= (1 << 2);
                else
                    Status &= ~(1 << 2);
            }
        }

        public bool Disabled
        {
            get { return (Status & (1 << 3)) > 0; }
            set
            {
                if (value)
                    Status |= (1 << 3);
                else
                    Status &= ~(1 << 3);
            }
        }

        public bool SensorAdjustment
        {
            get { return (Status & (1 << 4)) > 0; }
            set
            {
                if (value)
                    Status |= (1 << 4);
                else
                    Status &= ~(1 << 4);
            }
        }

        public bool Prewarning
        {
            get { return (Status & (1 << 5)) > 0; }
            set
            {
                if (value)
                    Status |= (1 << 5);
                else
                    Status &= ~(1 << 5);
            }
        }

        public bool Sensorfail
        {
            get { return (Status & (1 << 6)) > 0; }
            set
            {
                if (value)
                    Status |= (1 << 6);
                else
                    Status &= ~(1 << 6);
            }
        }

        public bool SensorFailNoPulse
        {
            get { return (Status & (1 << 7)) > 0; }
            set
            {
                if (value)
                    Status |= (1 << 7);
                else
                    Status &= ~(1 << 7);
            }
        }

        public bool SensorFailLowLevel
        {
            get { return (Status & (1 << 8)) > 0; }
            set
            {
                if (value)
                    Status |= (1 << 8);
                else
                    Status &= ~(1 << 8);
            }
        }

        public bool SensorFailHighLevel
        {
            get { return (Status & (1 << 9)) > 0; }
            set
            {
                if (value)
                    Status |= (1 << 9);
                else
                    Status &= ~(1 << 9);
            }
        }

        public bool SensorFailRPMOOR
        {
            get { return (Status & (1 << 10)) > 0; }
            set
            {
                if (value)
                    Status |= (1 << 10);
                else
                    Status &= ~(1 << 10);
            }
        }

        public override string ToString()
        {
            string statusAsString;

            if (Normal)
            {
                statusAsString = "Normal ";
            }
            else if (Alarm)
            {
                statusAsString = "Alarm ";
            }
            else if (Slowdown) 
            {
                statusAsString = "Slowdown ";
            }
            else if (Disabled)
            {
                statusAsString = "Disabled ";
            }
            else if (SensorAdjustment)
            {
                statusAsString = "Sensor Adjustment ";
            }
            else if (Sensorfail)
            {
                statusAsString = "Sensor Fail ";
            }
            else if(Prewarning)
            {
                statusAsString = "Prewarning ";
            }
            else if (SensorFailNoPulse)
            {
                statusAsString = "Sensor Fail No Pulse ";
            }
            else if (SensorFailLowLevel)
            {
                statusAsString = "Sensor Fail Low Level ";
            }
            else if (SensorFailHighLevel)
            {
                statusAsString = "Sensor Fail High Level ";
            }
            else if (SensorFailRPMOOR)
            {
                statusAsString = "Sensor Fail RPM OOR ";
            }
            else
            {
                statusAsString = "Unknown ";
            }
            
            return statusAsString;
        }
    }
}
