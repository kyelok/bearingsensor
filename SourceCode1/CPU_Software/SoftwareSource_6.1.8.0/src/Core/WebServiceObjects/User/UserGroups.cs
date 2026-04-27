/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System.Collections.Generic;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    /// <summary>
    /// This class is used to return a Dictionary that holds
    /// the user groups and the permissions assigned to each group.
    /// </summary>
    [CollectionDataContract(Name = "UserGroups", ItemName = "group", KeyName = "groupname", ValueName = "rights")]
    public class UserGroups : Dictionary<string, List<string>> { }
}
