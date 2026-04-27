using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace ScheduleLogFileParser
{
    class Verify
    {
        public void Run(String filename, long longerval, bool dbg)
        {
            
            Console.Out.WriteLine("Verifying file: " + filename + " with interval: " + longerval);
            string[] lines = File.ReadAllLines(filename);
            for (long i = 0; i < lines.Length-1; i++)
            {
                long line = System.Convert.ToInt64(lines[i]);
                long lineplusone = System.Convert.ToInt64(lines[i+1]);
                if (lineplusone - line != longerval)
                {
                    //Gap between method calls were not equal to longerval
                    long actualDiff = lineplusone - line;
                    String errorlevel;
                    if ((actualDiff - longerval) >= 500 || (actualDiff - longerval) <= -500)
                    {
                        //Serious problem
                        errorlevel = "  Error";
                    }
                    else
                    {
                        //Not so serious
                        errorlevel = "Warning";
                    }
                    Console.WriteLine(errorlevel+":  Line " + i + ": interval was: " + actualDiff + ". Should have been: " + longerval + "!");
                }
                else if(dbg)
                {
                    Console.Out.Write(i + " Ok. ");
                }
            }
            Console.Out.WriteLine("\nReached end of file.");
            

        }
    }
}
