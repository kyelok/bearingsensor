using System;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using System.Collections.Generic;

namespace XTS
{
    /// <summary>
    /// Holds the permissions a Usergroup is allowed to access
    /// </summary>
    public class XTSGroup
    {
        /// <summary>
        /// Constructor
        /// </summary>
        public XTSGroup()
        {
            GroupPermissions = new List<string>(); 

        }

        /// <summary>
        /// The Group level we are.
        /// </summary>
        public XTSUser.XTSUserLevel GroupLevel
        {
            get;
            set; 
        }

        /// <summary>
        /// List of the permissions we are allowed. 
        /// </summary>
        public List<string> GroupPermissions
        {
            get;
            set;
        }




    }
}
