using System;
using System.Linq;

using FaultErrorIndicators;

namespace FaultGenerator
{
    class Program
    {
        static void Main(string[] args)
        {
            bool verbose = false;

            if ((args.Length == 0) || args.Contains("help"))
            {
                Console.WriteLine("XTS-W II Server Fault Generator");
                Console.WriteLine();
                Console.WriteLine("Useage:");
                Console.WriteLine("faultgenerator [help] [v] [+{faultcode}]* [-{faultcode}]*");
                Console.WriteLine("          help - Displays this text");
                Console.WriteLine("             v - Verbose mode");
                Console.WriteLine("  +{faultcode} - Raises the specified faultcode (numeric)");
                Console.WriteLine("  -{faultcode} - Clears the specified faultcode (numeric)");
                Console.WriteLine();
                Console.WriteLine("    Note: Raising and clearing faultcodes can be done in any order");
                Console.WriteLine("          e.g. 'faultgenerator -27 +3 +4 -32'");
                return;
            }

            if ((args.Length > 0) && args.Contains("v"))
            {
                verbose = true;
                Console.WriteLine("XTS-W II Server Fault Generator");
                Console.WriteLine();
            }

            Faults faults = Faults.Instance;
            foreach (string arg in args)
            {
                try
                {
                    if (arg[0] == '+')
                    {
                        int error = int.Parse(arg.Substring(1));
                        if (verbose)
                        {
                            Console.WriteLine("Raising Fault: {0}", error);
                        }
                        faults.SignalFault((FaultCodes)error);
                    }
                    else if (arg[0] == '-')
                    {
                        int error = int.Parse(arg.Substring(1));
                        if (verbose)
                        {
                            Console.WriteLine("Clearing Fault: {0}", error);
                        }
                        faults.ClearFault((FaultCodes)error);
                    }
                    else if (!arg.Equals("v"))
                    {
                        if (verbose)
                        {
                            Console.WriteLine("Unknown argument \"{0}\"", arg);
                        }
                    }
                }
                catch (FormatException)
                {
                    Console.WriteLine("Error processing argument \"{0}\"", arg);
                }
            }
            if (verbose)
            {
                Console.WriteLine("");
                Console.WriteLine("Done!");
            }
        }
    }
}
