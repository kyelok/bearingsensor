using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;


namespace DemoExtension
{
    public class Demo : Framework.IExtInterface
    {

        public Demo()
        {
            RunSchedule = 99999999;
            LogSchedule = 99999999;
        }

        #region IExtInterface Members

        public int RunSchedule
        { get; set; }

        public int LogSchedule
        { get; set; }

        public void Init()
        {
            System.Diagnostics.Debug.WriteLine("Hello! This is Demo Extension initialising!"+
                "\nI have a RunSchedule of " + RunSchedule + " and a LogSchedule of " + LogSchedule);
            Console.WriteLine("This extension will write the times at which its Run() and log functions are called" + 
                "to the following files:\nlogcall.txt and runcall.txt");

           
        }

        public void Run()
        {
            Console.Out.WriteLine("# This is Demo Extention RUNNING");
            /* Simulate that this method has crashed */
            //while (true) ;
            File.AppendAllText(@"runcall.txt",(DateTime.Now.Ticks/TimeSpan.TicksPerMillisecond).ToString() + "\n");
        }

        public void Log()
        {
            Console.Out.WriteLine("@ This is Demo Extention LOGGING");
            File.AppendAllText(@"logcall.txt", (DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond).ToString() + "\n");
        }

        #endregion
    }



}
