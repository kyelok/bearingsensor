using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Security.Cryptography;

namespace md5gen
{
    /// <summary>
    /// This is a simple class that generates an MD5 for a file.
    /// </summary>
    class Program
    {
        static void Main(string[] args)
        {
            if (args.Length > 0)
            {
                //Assume that the args contains the filename
                StringBuilder md5OfMapFile = new StringBuilder();

                //Calculate the md5 of the map file            
                using (FileStream file = new FileStream(args[0], FileMode.Open))
                {
                    //Read the md5 from the .md5 file
                    using (MD5 md5 = MD5.Create())
                    {
                        byte[] hash = md5.ComputeHash(file);
                        foreach (byte b in hash)
                        {
                            md5OfMapFile.Append(b.ToString("x2"));
                        }
                    }

                    file.Close();
                }

                Console.Write(md5OfMapFile);
            }
        }
    }
}
