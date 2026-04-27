using System;
using System.Configuration;

namespace Configuration
{
    public class SPUDataCollectionConfigSection : ConfigurationSection
    {
        [ConfigurationProperty("settings")]
        public SPUDataCollectionConfigElement Settings
        {
            get
            {
                SPUDataCollectionConfigElement url = (SPUDataCollectionConfigElement)base["settings"];
                return url;
            }
        }
    }
}
