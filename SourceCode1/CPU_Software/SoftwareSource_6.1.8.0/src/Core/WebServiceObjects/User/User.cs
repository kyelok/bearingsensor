/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System.Runtime.Serialization;
using System;

namespace WebServiceObjects
{
    /// <summary>
    /// This class defines the data returned
    /// about a user.
    /// </summary>
    [DataContract]
    public class User
    {
        /// <summary>
        /// The name of the user
        /// </summary>
        [DataMember]
        public string Username { get; set; }

        /// <summary>
        /// The users password hash
        /// </summary>
        [DataMember]
        public string Password { get; set; }

        /// <summary>
        /// The group that the user is a member of
        /// </summary>
        [DataMember]
        public string UserGroup { get; set; }

        /// <summary>
        /// The idle timeout for the user
        /// </summary>
        [DataMember]
        public Int64 Timeout { get; set; }
    }
}
