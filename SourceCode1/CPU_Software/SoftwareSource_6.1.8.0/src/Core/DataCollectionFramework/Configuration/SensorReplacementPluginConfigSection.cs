// -----------------------------------------------------------------------
// <copyright file="SensorReplacementPluginConfigSection.cs" company="">
// MPC Data Limited.
// </copyright>
// -----------------------------------------------------------------------

namespace Configuration
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Configuration;

    public class SensorReplacementPluginConfigSection : ConfigurationSection
    {
        [ConfigurationProperty("settings")]
        public SensorReplacementPluginConfigElement Settings
        {
            get
            {
                SensorReplacementPluginConfigElement url = (SensorReplacementPluginConfigElement)base["settings"];
                return url;
            }
        }
    }
}
