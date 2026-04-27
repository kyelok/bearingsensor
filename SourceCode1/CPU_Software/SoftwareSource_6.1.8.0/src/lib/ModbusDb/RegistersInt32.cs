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
    public class RegistersInt32 : Registers
    {
        public RegistersInt32(ushort startReg, ushort endReg, String description, String[] fields, String table, String[] channelname)
            : base(startReg, endReg, description, fields, table, channelname)
        {
            intSize = 2;
        }

        public RegistersInt32(ushort startReg, String description, String field, String table, String channelname)
            : base(startReg, description, field, table, channelname)
        {
            intSize = 2;
        }

        override public String GetStringValue(int position)
        {
            //pcHigh and pcLow are the values returned by our read to the Modbus device
            Int16 pcHigh = (Int16)IPAddress.HostToNetworkOrder((short)Value[position]);
            Int16 pcLow = (Int16)IPAddress.HostToNetworkOrder((short)Value[position + 1]);

            //Convert to byte array
            byte[] deviceHighbytes = BitConverter.GetBytes((short)pcHigh);
            byte[] deviceLowbytes = BitConverter.GetBytes((short)pcLow);
            byte[] combinedBytes = new byte[] { deviceHighbytes[0], deviceHighbytes[1], deviceLowbytes[0], deviceLowbytes[1] };

            //Convert the 4 byte array to a int32
            Int32 deviceInt32 = BitConverter.ToInt32(combinedBytes, 0);
            return ((Int32)IPAddress.NetworkToHostOrder(deviceInt32)).ToString();
        }
    }
}
