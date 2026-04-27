using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TriggerInsertTest
{
    public class TableData
    {
        public TableData(String name, int fields)
        {
            this.name = name;
            this.fields = fields;
            //this.beforeRecords = beforeRecords;
        }

     

        public String name { get; set; }
        public int fields { get; set; }
        public int beforeRecords { get; set; }

    }
}
