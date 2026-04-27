/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System.Collections.Generic;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    [CollectionDataContract(Name = "UserGroups", ItemName = "group", KeyName = "groupname", ValueName = "rights")]
    public class UserGroups : Dictionary<string, List<string>> 
    {
    }
}
