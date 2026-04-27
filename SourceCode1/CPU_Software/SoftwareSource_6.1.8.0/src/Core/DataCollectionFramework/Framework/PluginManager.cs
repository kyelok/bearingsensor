/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Threading;
using log4net;
using HelperClasses;
using DataCollectionSDK;
using System.Diagnostics.CodeAnalysis;
using System.Configuration;

namespace Framework
{
    /// <summary>
    /// Handles plugin loading and performing tasks
    /// </summary>
    class PluginManager
    {
        /// <summary>
        /// Singleton instance of the PluginManager manager
        /// </summary>
        private static PluginManager instance = null;

        /// <summary>
        /// PluginManager plugin list lookup lock
        /// </summary>
        private static readonly object threadLock = new object();

        /// <summary>
        /// Logging
        /// </summary>
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        /// <summary>
        /// Cache of the available plugins that have been loaded by the application
        /// </summary>
        private List<IExtInterface> availablePlugins = new List<IExtInterface>();

        /// <summary>
        /// Returns enumeration of the loaded plugins
        /// </summary>
        public IEnumerable<IExtInterface> Plugins
        {
            get
            {
                lock (threadLock)
                {
                    return availablePlugins.AsEnumerable();
                }
            }
        }

        /// <summary>
        /// Load available plugins that can be used by the application.
        /// </summary>
        public static PluginManager InitalisePlugins
        {
            get
            {
                lock (threadLock)
                {
                    if (instance == null)
                    {
                        instance = new PluginManager();
                    }
                    return instance;
                }
            }
        }

        /// <summary>
        /// Private Constructor to enforce Plugin Manager Singleton
        /// </summary>
        [SuppressMessage("Microsoft.Design", "CA1031:DoNotCatchGeneralExceptionTypes")]
        private PluginManager()
        {
            string versionNumberFile = @"d:\versionnumbers.txt";
            if (ConfigurationManager.AppSettings ["PluginVersionNumbers"] != null)
            {
                versionNumberFile = ConfigurationManager.AppSettings["PluginVersionNumbers"];
            }

            try
            {
                //Delete the old file
                File.Delete(versionNumberFile);
            }
            catch (Exception e)
            {
                if ((e is UnauthorizedAccessException) || (e is IOException))
                {
                    logger.FatalFormat("Caught Exception {0} trying to delete {1}", e.ToString(), versionNumberFile);
                }
                else
                {
                    throw;
                }
            }

            DirectoryInfo pluginsDirectory = new DirectoryInfo(Directory.GetCurrentDirectory() + @"\plugins"); //Removed +@"\plugins"
            if (!pluginsDirectory.Exists)
            {
                return;
            }

            //The AssemblyResolve event is called when the common language runtime tries to bind to the assembly and fails.
            AppDomain currentDomain = AppDomain.CurrentDomain;
            currentDomain.AssemblyResolve += new ResolveEventHandler(currentDomain_AssemblyResolve);

                // Iterate through all dll's in the folder and use reflection to see if they are of the correct type
                // so that they can be loaded in by the application
                FileInfo[] pluginFiles = pluginsDirectory.GetFiles("*.dll", SearchOption.AllDirectories);
                foreach (FileInfo fi in pluginFiles)
                {
                    // Not all assemblies in the folder may be accessible via reflection 
                    // so some may fail Assembly loading, this is to be expected.
                    Assembly ass = Assembly.LoadFile(fi.FullName);
                    if (ass != null)
                    {
                        int retryCounter = 0;

                        do
                        {
                            try
                            {
                                if (LoadPluginsFromAssembly(ass))
                                {
                                    logger.InfoFormat("Loaded assembly '{0}' ", fi.Name);
                                    try
                                    {
                                        using (StreamWriter file = File.AppendText(versionNumberFile))
                                        {
                                            file.WriteLine("{0},{1}",
                                                fi.Name.Split('.')[0], // Remove .dll Extension 
                                                ass.GetName().Version);
                                        }
                                    }
                                    catch (Exception e)
                                    {
                                        logger.FatalFormat("Caught Exception {0} trying to write {1}", e.ToString(), versionNumberFile);
                                    }
                                }
                                break;
                            }
                            catch (Exception e)
                            {
                                logger.ErrorFormat("Assembly failed '{0}', retry count {1} .... {2}",
                                    fi.FullName, (retryCounter + 1), e.ToString());
                                retryCounter++;
                            }
                        } while (retryCounter < 3);
                    }
                }
        }

        private Assembly currentDomain_AssemblyResolve(object sender, ResolveEventArgs args)
        {
            Assembly MyAssembly = null;
            int indexOfComma = 0;
            string strTempAssmbPath = "";

            strTempAssmbPath = Directory.GetCurrentDirectory() + @"\plugins";

            if (!strTempAssmbPath.EndsWith("\\", StringComparison.OrdinalIgnoreCase))
            {
                strTempAssmbPath += "\\";
            }

            indexOfComma = args.Name.IndexOf(",", StringComparison.OrdinalIgnoreCase);
            if (indexOfComma > 0)
            {
                strTempAssmbPath += args.Name.Substring(0, indexOfComma) + ".dll";
            }
            else
            {
                strTempAssmbPath += args.Name + ".dll";
            }

            try
            {
                MyAssembly = Assembly.LoadFrom(strTempAssmbPath);
            }
            catch (FileNotFoundException)
            {
                // Ignore resources Dlls
                if (strTempAssmbPath.ToLower().Contains(".resources") == false)
                {
                    logger.ErrorFormat("Assembly not found '{0}'", args.Name);
                }
            }

            return MyAssembly;
        }

        /// <summary>
        /// Loads Classes that inherit from the BasePlugin class. These are
        /// used as Plugins for tasks.
        /// </summary>
        /// <param name="caller">Assembly to check</param>
        private bool LoadPluginsFromAssembly(Assembly caller)
        {
            bool loaded = false;
            // Iterate through the types available in the Assembly to see if any inherit 
            // from the BasePlugin class but not equals to. These can be instantiated as plugins
            foreach (Type t in caller.GetTypes())
            {
                // Checking non-equality allows the project assembly to be scanned as well as a caller.
                if (typeof(IExtInterface).IsAssignableFrom(t) && !t.Equals(typeof(IExtInterface)))
                {
                    logger.InfoFormat("Plugin detected '{0}': Creating instance.", t.ToString());
                    IExtInterface newInterface = (IExtInterface)caller.CreateInstance(t.ToString());

                    logger.InfoFormat("Plugin detected '{0}', Initialising instance.", t.ToString());
                    newInterface.Init();

                    logger.InfoFormat("Plugin detected '{0}', Plug-in initialised.", t.ToString());
                    availablePlugins.Add(newInterface);
                    loaded = true;
                }
            }

            return loaded;
        }
    }
}
