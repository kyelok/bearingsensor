/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ModbusClientPlugin
{
    class RegistersDateTime : Registers
    {
        private int runSchedule;

        public RegistersDateTime(ushort startReg, ushort endReg, String description, int runSchedule)
            : base(startReg, endReg, description, null, null)
        {
            intSize = 1;
            this.runSchedule = runSchedule;

        }
        
        override public String GetStringValue(int position)
        {
            return Value[position].ToString();
        }

        public DateTime GetDateTime()
        {
            DateTime dateTime;

            int year = BcdToInteger(BitConverter.GetBytes(Value[0])[1]);
            int month = BcdToInteger(BitConverter.GetBytes(Value[0])[0]);
            int date = BcdToInteger(BitConverter.GetBytes(Value[1])[1]);
            int hours = BcdToInteger(BitConverter.GetBytes(Value[1])[0]);
            int mins = BcdToInteger(BitConverter.GetBytes(Value[2])[1]);
            int secs = BcdToInteger(BitConverter.GetBytes(Value[2])[0]);
            int roundBy = runSchedule * 10000;
            
            try
            {
                // Assuming all dates start at 2000 AD
                dateTime = new DateTime((((new DateTime(year + 2000, month, date, hours, mins, secs, DateTimeKind.Utc)).Ticks + (roundBy / 2)) / roundBy) * roundBy, DateTimeKind.Utc);
            }
            catch (ArgumentOutOfRangeException e)
            {
                throw new ArgumentOutOfRangeException(string.Format("Cannot convert {0}/{1}/{2} {3}:{4}:{5} (YY/MM/DD hh:mm:sec) into a valid DateTime", year, month, date, hours, mins, secs), e);
            }

            return dateTime;
        }
        
        public static int BcdToInteger(byte bcd)
        {
            //Split the byte up into its 4-bit components
            byte nibble1 = (byte)(bcd & 0x0F);
            byte nibble2 = (byte)((bcd & 0xF0) >> 4);

            return (nibble2 * 10) + nibble1;
        }
    }
}
