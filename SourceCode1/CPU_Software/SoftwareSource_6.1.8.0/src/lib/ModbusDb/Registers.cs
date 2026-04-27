/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Text;
using System.Net;

namespace ModbusDb
{
    public abstract class Registers
    {
        const Int16 SPUCommsError = (Int16)(-32766);

        public ushort StartReg { get; set; }
        public ushort EndReg { get; set; }
        public ushort Count { get; set; }
        public String Description { get; set; }

        public String Table { get; set; }
        public String[] Fields { get; set; }
        public String[] ChannelName { get; set; }
        protected int intSize = 0;

        protected Int16[] values;

        public Int16[] Value 
        {
            get
            {
            
                return this.values;
            }
        }

        /// <summary>
        /// Constructs a Register object for a polling and logging a range of Modbus register
        /// </summary>
        /// <param name="startReg">The start of the register range</param>
        /// <param name="endReg">The end of the register range</param>
        /// <param name="description">A description of the range to add debugging</param>
        /// <param name="fields">The database fields to create for the range</param>
        /// <param name="table">The database table to store the fields in</param>
        /// <param name="fieldsname">The field name for RIA, this is for temperature channel only and not store in database</param>
        public Registers(ushort startReg, ushort endReg, String description, String[] fields, String table, String[] channelname = null)
        {
            this.StartReg = startReg;
            this.EndReg = endReg;
            this.Description = description;
            this.Count = (ushort)((endReg - startReg)+1);
            
            this.Fields = fields;
            this.Table = table;
            this.ChannelName = channelname;
            this.values = new Int16[this.Count];
        }

        /// <summary>
        /// Constructs a Register object for a polling and logging a single Modbus register
        /// </summary>
        /// <param name="startReg">The Modbus register to poll and log</param>
        /// <param name="description">A description of the Modbus register to add debugging</param>
        /// <param name="field">The data field to create for the register</param>
        /// <param name="table">The database table to store the field in</param>
        public Registers(ushort startReg, String description, String field, String table, String channelname) :
            this(startReg, 0, description, new string[] { field }, table, new string[] { channelname })
        { }

        public abstract String GetStringValue(int position);

        /// <summary>
        /// Converts the values in the insternal buffer into
        /// values to be inserted into the database.
        /// </summary>
        /// <param name="spuFault">A flag indicating if there is a SPU comms fault.  If set to true then
        /// the SPU comms error will be insertedi into the data returned.</param>
        /// <returns>A strig of values correctly formatted to be inserated into the database</returns>
        public String Values(bool spuFault)
        {
            StringBuilder values = new StringBuilder();

            if (this.Value != null)
            {
                for (int i = 0; i < this.Value.Length; i = i + intSize)
                {
                    if (!spuFault)
                    {
                        values.AppendFormat("{0}, ", this.GetStringValue(i));
                    }
                    else
                    {
                        values.AppendFormat("{0}, ", SPUCommsError);
                    }
                }
            }
            else
            {
                //No values to log
                //Fill the database row with the error value
                for (int i = 0; i < this.Fields.Length; i++)
                {
                    values.AppendFormat("{0}, ", SPUCommsError);
                }
            }

            return values.ToString();
        }

        public String CreateColums()
        {
            StringBuilder columns = new StringBuilder();

            foreach (String field in this.Fields)
            {
                columns.AppendFormat("{0} INTEGER,", field);
            }

            return columns.ToString();
        }

        public String ColumnNames()
        {
            StringBuilder columns = new StringBuilder();
            for (int i = 0; i < this.Fields.Length; i++)
            {
                columns.AppendFormat("{0}, ", this.Fields[i]);
            }

            return columns.ToString();
        }
    }

    /// <summary>
    /// This class is used as the comparer when sorting a
    /// list of REgisters by there table name.
    /// </summary>
    public class TableComparer : IComparer
    {
        public int Compare(object x, object y)
        {
            Registers regX = (Registers)x;
            Registers regY = (Registers)y;

            return regX.Table.CompareTo(regY.Table);
        }
    }

}
