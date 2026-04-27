using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace cleanplugins
{
    /// <summary>
    /// This application compares the plugins folder to
    /// the folder above it and removes all dlls that appear in both
    /// from the plugins folder.
    /// </summary>
    class Program
    {

        static void Clean(string path, string pat)
        {
            //Get list of dlls in current dir

            DirectoryInfo dir = new DirectoryInfo(path);
            FileInfo[] plugIns = dir.GetFiles("*.dll");
            DirectoryInfo parentPath = Directory.GetParent(path);
            parentPath.GetFiles();
            FileInfo[] parent = parentPath.GetFiles(pat);


            foreach (FileInfo dll in plugIns)
            {
                for (int i = 0; i < parent.Length; i++)
                {
                    if (parent[i].Name.IndexOf(dll.Name) == 0)
                    {
                        File.Delete(dll.FullName);
                    }
                }
            }

        }

        static void Main(string[] args)
        {
            Clean(args[0],"*.dll");
            Clean(args[0],"*.xml");
            Clean(args[0],"*.pdb");
        }
    }
}
