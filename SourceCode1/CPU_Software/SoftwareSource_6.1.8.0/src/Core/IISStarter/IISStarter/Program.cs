using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace IISStarter
{
    class Program
    {
        static void Main(string[] args)
        {
            string title = args[0];
            string config = args[1];
            string website = args[2];
            bool hide = true;

            try
            {
                if (args.Length == 4)
                {
                    if (args[3] == "show")
                    {
                        hide = false;
                    }
                }
            }
            catch (Exception)
            { }
            
            Console.Title = title;

            if (hide)
            {
                HideConsole.HideWindow(title);
            }

            Console.Out.WriteLine("Launching IIS Express...");
            IISExpress iis = IISExpress.Start(config, website, @"Clr4IntegratedAppPool");
            
            Thread.Sleep(Timeout.Infinite);

            iis.Stop();
        }
    }
}
