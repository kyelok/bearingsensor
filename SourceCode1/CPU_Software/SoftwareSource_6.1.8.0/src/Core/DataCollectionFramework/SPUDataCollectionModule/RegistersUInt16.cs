/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;

namespace ModbusClientPlugin
{
    class RegistersUInt16 : Registers
    {
        public RegistersUInt16(ushort startReg, ushort endReg, String description, String[] fields, String table)
            : base(startReg, endReg, description, fields, table)
        {
            intSize = 1;
        }

        public RegistersUInt16(ushort startReg, String description, String field, String table)
            : base(startReg, description, field, table)
        {
            intSize = 1;
        }

        override public String GetStringValue(int position)
        {
            return Value[position].ToString();
        }
    }
}
