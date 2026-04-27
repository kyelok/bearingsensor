/* 
 * XTSVersion.cs
 * 
 * Version data of the system.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 08/03/2012
 */

using System;
using System.Reflection;

namespace XTS
{
    /// <summary>
    /// Various version data for components within the XTS system
    /// </summary>
    public class XTSVersion : XTSData
    {
        #region Class to encapsulate version info
        /// <summary>
        /// Class the incorporates version info specific to XTS
        /// </summary>
        public class XTSVersionData
        {
            /// <summary>
            /// Internal data for ExtraInfo
            /// </summary>
            private string extraInfo;
            /// <summary>
            /// Additional details of this version, e.g. "beta"
            /// </summary>
            public string ExtraInfo
            {
                get
                {
                    return this.extraInfo;
                }
            }

            /// <summary>
            /// Internal data for Name
            /// </summary>
            private string name;
            /// <summary>
            /// The name of the module that this version is for
            /// </summary>
            public string Name
            {
                get
                {
                    return this.name;
                }
            }

            /// <summary>
            /// Internal data for Build
            /// </summary>
            private uint? svn;
            /// <summary>
            /// Read only SVN revision number
            /// </summary>
            public uint? SVN
            {
                get
                {
                    return this.svn;
                }
            }

            /// <summary>
            /// Internal data for Alpha
            /// </summary>
            private uint? revision;
            /// <summary>
            /// Read anly alpha version numnber
            /// </summary>
            public uint? Revision
            {
                get
                {
                    return this.revision;
                }
            }

            /// <summary>
            /// Internal data for Major
            /// </summary>
            private uint major;
            /// <summary>
            /// Read only Major version number
            /// </summary>
            public uint Major
            {
                get
                {
                    return this.major;
                }
            }

            /// <summary>
            /// Internal data for Minor
            /// </summary>
            private uint minor;
            /// <summary>
            /// Read only Minor version number
            /// </summary>
            public uint Minor
            {
                get
                {
                    return this.minor;
                }
            }

            /// <summary>
            /// Main constructor, sets the major and minor version numbers
            /// </summary>
            /// <param name="name">The name of the module that this version applies to</param>
            /// <param name="major">The major version number</param>
            /// <param name="minor">The minor version number</param>
            /// <param name="extraInfo">And extra details, such as alpha/beta etc.</param>
            /// <exception cref="ArgumentException">If name is invalid</exception>
            public XTSVersionData(string name, uint major=1, uint minor=0, uint? revision=null, uint? svn=null, string extraInfo=null)
            {
                if ((name == null) || (name.Length == 0))
                {
                    throw new ArgumentException("The parameter must be non-null and have length > 0", "name");
                }
                this.name = name;
                this.major = major;
                this.minor = minor;
                this.revision = revision;
                this.svn = svn;
                this.extraInfo = extraInfo;
            }

            /// <summary>
            /// Override for creating a formatted version string
            /// </summary>
            /// <returns>The version string</returns>
            public override string ToString()
            {
                string rc = String.Format("{0} v{1}.{2}", this.name, this.major, this.minor);
                if (this.revision.HasValue)
                {
                    rc += string.Format(".{0}", this.revision.Value);
                }
                if (this.svn.HasValue)
                {
                    rc += string.Format(".{0}", this.svn.Value);
                }                
                if ((this.extraInfo != null) && (this.extraInfo.Length > 0))
                {
                    rc += " " + this.extraInfo;
                }
                return rc;
            }

            public override bool Equals(object obj)
            {
                if (obj == null)
                {
                    return false;
                }
                if (obj is XTSVersionData)
                {
                    XTSVersionData ver = obj as XTSVersionData;
                    return ((ver.Name      == this.name) &&
                            (ver.Major     == this.major) &&
                            (ver.Minor     == this.minor) &&
                            (ver.Revision  == this.revision) &&
                            (ver.SVN       == this.svn) &&
                            (ver.ExtraInfo == this.extraInfo));
                }
                return base.Equals(obj);
            }

            public override int GetHashCode()
            {
                return base.GetHashCode();
            }
        }
        #endregion // Class to encapsulate version info

        /// <summary>
        /// Internal data for RefreshRequired
        /// </summary>
        private bool refreshRequired;
        /// <summary>
        /// Set when the RIA is out of date and needs to get a new version
        /// </summary>
        public bool RefreshRequired
        {
            set
            {
                if (this.refreshRequired != value)
                {
                    this.refreshRequired = value;
                    OnPropertyChanged("RefreshRequired");
                }
            }
            get
            {
                return this.refreshRequired;
            }
        }

        /// <summary>
        /// Internal data for RIA
        /// </summary>
        private XTSVersionData application;
        /// <summary>
        /// Version of the application assembly
        /// </summary>
        public XTSVersionData Application
        {
            get
            {
                return this.application;
            }
        }

        /// <summary>
        /// Internal list for SoftwareModules
        /// </summary>
        private XTSDataCollection<XTSVersionData> softwareModules;
        /// <summary>
        /// Software revision data for software modules within the system
        /// </summary>
        public XTSDataCollection<XTSVersionData> SoftwareModules
        {
            get
            {
                return this.softwareModules;
            }
        }

        /// <summary>
        /// Internal list for SPUs
        /// </summary>
        private XTSDataCollection<XTSVersionData> spus;
        /// <summary>
        /// Firmware revision data for connected SPUs
        /// </summary>
        /// <remarks>Can be used to infer how many SPUs are fitted (typically 1 or 2)</remarks>
        public XTSDataCollection<XTSVersionData> SPUs
        {
            get
            {
                return this.spus;
            }
        }

        /// <summary>
        /// Default Constructor, initialise application version
        /// </summary>
        public XTSVersion()
	    {
            this.spus = new XTSDataCollection<XTSVersionData>();
            this.softwareModules = new XTSDataCollection<XTSVersionData>();

            AssemblyName assemblyName = new AssemblyName(System.Windows.Application.Current.GetType().Assembly.FullName);

            uint appMajor = 0;
            uint appMinor = 0;
            uint? appSVN = null;
            uint? appRev = null;

            if (assemblyName != null)
            {
                Version v = assemblyName.Version;

                if (v != null)
                {
                    appMajor = (uint)v.Major;
                    appMinor = (uint)v.Minor;
                    // MS Version is maj.min.bld.rev, but we set as maj.min.rev.svn
                    appRev = (uint)v.Build;
                    appSVN = (uint)v.Revision;
                }
            }

            this.application = new XTSVersionData("RIA", appMajor, appMinor, appRev, appSVN);
	    }
    }
}
