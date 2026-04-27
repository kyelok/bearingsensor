using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;

namespace KillProcess
{
    class Program
    {
        static void Main(string[] args)
        {
            System.Console.WriteLine("KillProcess");
            if (args.Length > 0)
            {
                foreach (string arg in args)
                {
                    System.Console.WriteLine("Attempting to kill proc with name '{0}'...", arg);
                    Process[] procs = Process.GetProcessesByName(arg);
                    foreach (Process fbwfmgmt in procs)
                    {
                        string moduleName = "unknown";
                        int id = 0;
                        try
                        {
                            id = fbwfmgmt.Id;
                            moduleName = fbwfmgmt.MainModule.FileName;
                            fbwfmgmt.Kill();
                            System.Console.WriteLine("Killed {0} process {1}, {2}", arg, id, moduleName);
                        }
                        catch (Exception e)
                        {
                            System.Console.WriteLine("Could not kill {0} process {1}, {2} Exception: {3}", arg, id, moduleName, e);
                        }
                    }
                }
            }
            else
            {
                System.Console.WriteLine("Useage:  KillProcess [modulename0] [modulename1] [modulename2] ... [modulenamen]");
            }
        }
    }
}
