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
    public abstract class Registers
    {
        public ushort StartReg { get; set; }
        public ushort EndReg { get; set; }
        public ushort Count { get; set; }
        public String Description { get; set; }

        public String Table { get; set; }
        public String[] Fields { get; set; }
        protected int intSize = 0;

        public UInt16[] Value { get; set; }

        public Registers(ushort startReg, ushort endReg, String description, String[] fields, String table)
        {
            this.StartReg = startReg;
            this.EndReg = endReg;
            this.Description = description;
            this.Count = (ushort)((endReg - startReg)+1); 
            
            this.Fields = fields;
            this.Table = table;
            
        }

        public Registers(ushort startReg, String description, String field, String table)
        {
            this.StartReg = startReg;
            this.EndReg = 0;
            this.Description = description;
            this.Count = 1;
            
            this.Fields = new String[1];
            this.Fields[0] = field;
            this.Table = table;
        }

        public abstract String GetStringValue(int position);

        //Returns the SQL for this record
        public String GetSql(DateTime time)
        {
            StringBuilder sql = new StringBuilder(this.Table);
            sql.Append(" VALUES(");
            sql.Append(ConvertToUnixTimestamp(time) + ",");
            for (int i = 0; i < this.Value.Length; i = i + intSize)
            {
                sql.AppendFormat("{0},", this.GetStringValue(i));
            }

            //Remove last comma from SQL command
            sql.Remove(sql.Length - 1, 1);
            sql.Append(");");

            //Return the constructed SQL command to execute for this instance
            return sql.ToString();
            
        }

        private static int ConvertToUnixTimestamp(DateTime date)
        {
            DateTime origin = new DateTime(1970, 1, 1, 0, 0, 0, 0);
            TimeSpan diff = date - origin;
            return ((int)Math.Floor(diff.TotalSeconds));
        }
    }
}
