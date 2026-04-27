/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    /// <summary>
    /// This class holds the request and response for 
    /// resting the user passwords.
    /// </summary>
    [DataContract]
    public class Reset
    {
        /// <summary>
        /// The reset code
        /// </summary>
        [DataMember]
        public string Code { get; set; }

        /// <summary>
        /// A flag indicating if the passwords have been reset or should be reset
        /// </summary>
        [DataMember]
        public bool PasswordsReset { get; set; }
    }
}
