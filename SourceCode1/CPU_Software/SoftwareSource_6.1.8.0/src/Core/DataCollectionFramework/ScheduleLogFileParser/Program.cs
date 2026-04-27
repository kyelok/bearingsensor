using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ScheduleLogFileParser
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Out.WriteLine("SCHEDULE LOG FILE PARSER\n------------------------\n");
            if (args.Length < 2)
            {
                Console.Out.WriteLine("Usage:\n------\n" +
                    "ScheduleLogFileParser [LOGFILE] [RUN INTERVAL] [debug](optional)\n" +
                    "\nFor example:\nScheduleLogFileParser example.txt 1912" + 
                    "\nAppend \"debug\" to show OK lines");
            }

            else
            {
                bool dbg = false;
                if (args.Length > 2 && args[2] == "debug")
                {
                    dbg = true;
                }
                Verify v = new Verify();     
                v.Run(args[0], System.Convert.ToInt64(args[1]), dbg);
                
            }
            
            
                
        }
    }
}
