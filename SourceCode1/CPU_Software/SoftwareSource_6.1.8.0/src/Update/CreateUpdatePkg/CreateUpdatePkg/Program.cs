using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Ionic.Zip;
using System.IO;

namespace CreateUpdatePkg
{
    /// <summary>
    /// A simple program to create an update package
    /// </summary>
    class Program
    {
        static void Main(string[] args)
        {
            if (args.Length > 1)
            {
                bool displayInfo = false;
                bool setComment = false;
                if (args[0].Equals("-i"))
                {
                    displayInfo = true;
                }
                else if (args[0].Equals("-p"))
                {
                    setComment = true;
                }
                if (displayInfo)
                {
                    System.Console.WriteLine("PKG File Install Paths:");
                    foreach (string arg in args)
                    {
                        if (!arg.Equals("-i"))
                        {
                            using (var zip = new ZipFile(arg))
                            {
                                System.Console.WriteLine("{0}: path = '{1}'", arg, zip.Comment);
                            }
                        }
                    }
                }
                else if (setComment)
                {
                    System.Console.WriteLine("PKG File Set Install Paths:");
                    if (args.Length > 2)
                    {
                        using (var zip = new ZipFile(args[1]))
                        {
                            zip.Comment = args[2];
                            zip.Save(args[1]);
                        }
                        System.Console.WriteLine("{0}: Path set to '{1}'", args[1], args[2]);
                    }
                    else
                    {
                        System.Console.WriteLine("Not enough arguments!");
                    }
                }
                else
                {
                    System.Console.WriteLine("PKG File Create:");
                    if (args.Length > 2)
                    {
                        if (!Directory.Exists(args[0]))
                        {
                            System.Console.WriteLine("{0}: Source path does not exist", args[0]);
                            return;
                        }

                        using (var zip = new ZipFile())
                        {
                            zip.AddDirectory(args[0], args[1]);
                            zip.Comment = Path.GetPathRoot(args[1]);
                            zip.Save(args[2]);
                            System.Console.WriteLine("{0}: Created! Install path set to '{1}'", args[2], zip.Comment);
                        }
                    }
                    else
                    {
                        System.Console.WriteLine("Not enough arguments!");
                    }
                }
            }
            else
            {
                System.Console.WriteLine("Not enough arguments!");
            }
        }
    }
}
