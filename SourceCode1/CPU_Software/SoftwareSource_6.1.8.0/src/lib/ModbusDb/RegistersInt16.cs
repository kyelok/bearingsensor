/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;

namespace ModbusDb
{
    public class RegistersInt16 : Registers
    {
        public RegistersInt16(ushort startReg, ushort endReg, String description, String[] fields, String table, String[] channelname)
            : base(startReg, endReg, description, fields, table, channelname)
        { 
            intSize = 1;        
        }

        public RegistersInt16(ushort startReg, String description, String field, String table, String channelname)
            : base(startReg, description, field, table, channelname)
        {
            intSize = 1;
        }

        override public String GetStringValue(int position)
        {
            return Value[position].ToString();
        }
    }
}
