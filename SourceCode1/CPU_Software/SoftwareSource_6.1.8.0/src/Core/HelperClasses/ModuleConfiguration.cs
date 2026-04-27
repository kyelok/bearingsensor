using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Web.Configuration;
using System.IO;
using System.Threading;

namespace HelperClasses
{
    /// <summary>
    /// The ModuleConfiguration object is designed too load a .config file. It is configured as follows in the app.config file:
    /// &lt;configuration&gt;
    ///    &lt;configSections&gt;
    ///       &lt;section name="CustomSection" type="System.Configuration.AppSettingsSection"/&gt;
    ///    &lt;/configSections&gt;
    ///    &lt;CustomSection&gt;
    ///       &lt;add key="pair1"       value="value1" /&gt;
    ///       &lt;add key="pair1"       value="value1" /&gt;
    ///    &lt;/CustomSection&gt;
    /// &lt;/configuration&gt;
    /// </summary>
    public class ModuleConfiguration : IDisposable
    {
        /// <summary>
        /// Loaded Configuration file
        /// </summary>
        protected Configuration configuration;

        /// <summary>
        /// File system watcher
        /// </summary>
        protected FileSystemWatcher fileSystemWatcher;

        /// <summary>
        /// Delegate type called when the configuration file is changed
        /// </summary>
        /// <param name="config">The object which manages the configuration</param>
        public delegate void ConfigurationChanged(ModuleConfiguration config);

        /// <summary>
        /// Called when a configuration file has changed
        /// </summary>
        public ConfigurationChanged OnConfigChanged;

        /// <summary>
        /// Logger
        /// </summary>
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        /// <summary>
        /// Defaugt constructor will load the current assemblies configuration file from the current directory
        /// </summary>
        public ModuleConfiguration(Configuration configuration)
        {
            if (configuration == null)
            {
                throw new NullReferenceException("Null configuration passed to ModuleConfiguration");
            }
            this.configuration = configuration;
        }

        /// <summary>
        /// Specify the path and filename of a configuration file
        /// </summary>
        /// <param name="configFile">The configuration file</param>
        public ModuleConfiguration(String configFile)
        {
            Initialise(configFile);
        }

        /// <summary>
        /// Finalizer for handling dispose correctly
        /// </summary>
        ~ModuleConfiguration()
        {
            Dispose(false);
        }

        /// <summary>
        /// Returns a new instance of the ModuleConfiguration of this 
        /// application. If the value "ConfigFile" value is set in the 
        /// appSettings section of the .config file this setting will be 
        /// loaded, otherwise the default assembly configuration file will be loaded.
        /// </summary>
        /// <returns></returns>
        /// <exception cref="System.IO.IOException">If the assemblies configuration cannot be loaded.</exception>
        public static ModuleConfiguration GetApplicationConfiguration()
        {
            Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);

            try
            {
                if (config != null && config.AppSettings.Settings["ConfigFile"] != null)
                {
                    return new ModuleConfiguration(config.AppSettings.Settings["ConfigFile"].Value);
                }
            }
            catch (IOException)
            {
                logger.ErrorFormat("Failed to open configuration file {0}, check your .config file", config.AppSettings.Settings["ConfigFile"].Value);
            }

            return new ModuleConfiguration(config);
        }

        /// <summary>
        /// Returns a new instance of the ModuleConfiguration of this 
        /// application. If the value "ConfigFile" value is set in the 
        /// appSettings section of the .config file this setting will be 
        /// loaded, otherwise the default assembly configuration file will be loaded.
        /// </summary>
        /// <returns></returns>
        /// <exception cref="System.IO.IOException">If the assemblies configuration cannot be loaded.</exception>
        public static ModuleConfiguration GetWebConfiguration()
        {
            //The string passed here must match the "path" property of the appropriate "application" element in 
            //iisexpress applicationhost.config file
            Configuration config = WebConfigurationManager.OpenWebConfiguration("/config");
            
            try
            {
                if (config != null && config.AppSettings.Settings["ConfigFile"] != null)
                {
                    return new ModuleConfiguration(config.AppSettings.Settings["ConfigFile"].Value);
                }
            }
            catch (IOException)
            {
                logger.ErrorFormat("Failed to open configuration file {0}, check your .config file", config.AppSettings.Settings["ConfigFile"].Value);
            }

            return new ModuleConfiguration(config);
        }

        /// <summary>
        /// This method returns the name of the directory that holds the configuration data
        /// </summary>
        /// <returns>The name of the directory that holds configuration files.</returns>
        public static String GetConfigurationDirectory()
        {
            Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);

            if (config != null && config.AppSettings.Settings["ConfigDir"] != null)
            {
                String configurationFile = config.AppSettings.Settings["ConfigDir"].Value;
                int lastSlash = configurationFile.LastIndexOf('\\');
                if (lastSlash == 0)
                {
                    return (configurationFile + "\\");
                }
                else
                {
                    return configurationFile;
                }
            }

            return "config\\";
        }

        /// <summary>
        /// Retrieves a configuration section
        /// </summary>
        /// <param name="section">The sect</param>
        /// <returns>The </returns>
        public ConfigurationSection GetSection(String section)
        {
            return configuration.GetSection(section);
        }

        /// <summary>
        /// Initialises this ModuleConfiguration with a configuration file
        /// </summary>
        /// <param name="configFile">The configuration file to load</param>
        private void Initialise(String configFile)
        {
            String directory;
            String configurationFile;
            int fileIndex;

            if (File.Exists(configFile) == false)
            {
                throw new IOException("Configuration file '" + configFile + "' not found.");
            }

            ExeConfigurationFileMap fileMap = new ExeConfigurationFileMap();
            fileMap.ExeConfigFilename = configFile;

            this.configuration = ConfigurationManager.OpenMappedExeConfiguration(fileMap, ConfigurationUserLevel.None);

            fileIndex = configFile.LastIndexOf('\\');
            if (fileIndex >= 0)
            {
                directory = configFile.Substring(0, fileIndex);
                configurationFile = configFile.Substring(fileIndex + 1);
            }
            else
            {
                directory = ".";
                configurationFile = configFile;
            }

            //I have disabled this as it is not used in the system and is causing the system to crash.
#if false
            fileSystemWatcher = new FileSystemWatcher(directory, configurationFile);
            fileSystemWatcher.NotifyFilter = NotifyFilters.LastWrite;
            fileSystemWatcher.Changed += new FileSystemEventHandler(OnChanged);
            fileSystemWatcher.Created += new FileSystemEventHandler(OnChanged);
            fileSystemWatcher.EnableRaisingEvents = true;
#endif
        }

        /// <summary>
        /// Save any changes to the configuration file. Note this will also fire off the OnChanged method
        /// </summary>
        public void Save()
        {
            configuration.Save();
        }

        /// <summary>
        /// Called when the monitored configuration file is changed
        /// </summary>
        /// <param name="source"></param>
        /// <param name="e"></param>
        private void OnChanged(object source, FileSystemEventArgs e)
        {
            fileSystemWatcher.EnableRaisingEvents = false;

            ExeConfigurationFileMap fileMap = new ExeConfigurationFileMap();
            fileMap.ExeConfigFilename = configuration.FilePath;

            configuration = ConfigurationManager.OpenMappedExeConfiguration(fileMap, ConfigurationUserLevel.None);

            if (OnConfigChanged != null)
            {
                OnConfigChanged(this);
            }

            fileSystemWatcher.EnableRaisingEvents = true;
        }

        internal virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                if (fileSystemWatcher != null)
                {
                    fileSystemWatcher.Dispose();
                }

                OnConfigChanged = null;
                configuration = null;
            }
        }

        /// <summary>
        /// Dispose this object
        /// </summary>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
