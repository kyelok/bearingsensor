/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System.Configuration;
using System.Reflection;
using HelperClasses;
using DataCollectionSDK;

namespace ConfigurationWebsite
{
    /// <summary>
    /// Provides helper operations to locate configuration and database files based on the services .config files
    /// </summary>
    public static class ConfigurationHelper
    {
        /// <summary>
        /// The PSU DataLogger database
        /// </summary>
        public static readonly string DataLoggerDb = "DataLogger";

        /// <summary>
        /// The SPU configuration database
        /// </summary>
        public static readonly string ConfigurationDb = "ConfigurationDb";

        /// <summary>
        /// The EventLog database
        /// </summary>
        public static readonly string EventLog = "EventLog";

        /// <summary>
        /// The users database
        /// </summary>
        public static readonly string UsersDb = "UsersDb";

        /// <summary>
        /// Sensor replacement database
        /// </summary>
        public static readonly string SensorReplacement = "SensorReplacement";

        /// <summary>
        /// Load a configuration file based upon the locate stored within the web.config file.
        /// </summary>
        /// <param name="section">The section stored within the appsettings section</param>
        /// <returns>The ModuleConfiguration for the config file</returns>
        public static ModuleConfiguration GetWebConfiguration(string section)
        {
            ModuleConfiguration config = ModuleConfiguration.GetWebConfiguration();
            AppSettingsSection appSettings = (AppSettingsSection)config.GetSection("appSettings");
            return new ModuleConfiguration(appSettings.Settings[section].Value);
        }

        /// <summary>
        /// Returns the path of a database file
        /// </summary>
        /// <param name="dbName">The ID of the database</param>
        /// <returns>The path and filename of the database file</returns>
        public static string GetDatabasePath(string dbName)
        {
            ModuleConfiguration config = ModuleConfiguration.GetWebConfiguration();
            AppSettingsSection appSettings = (AppSettingsSection)config.GetSection("appSettings");
            DataCollectionConfigurationSection dataCollectionConfig = (DataCollectionConfigurationSection)config.GetSection("DataCollectionSDK");
            PropertyInfo dbPropertyInfo = dataCollectionConfig.Database.GetType().GetProperty(dbName);
            string dbFilename;

            // Find the database file name
            if (dbPropertyInfo != null)
            {
                dbFilename = (string)dbPropertyInfo.GetValue(dataCollectionConfig.Database, null);
            }
            else
            {
                if (appSettings.Settings[dbName] == null)
                    throw new ConfigurationErrorsException("Unable to find database key "+dbName);

                dbFilename = appSettings.Settings[dbName].Value;
            }

            return dbFilename;
        }
    }
}