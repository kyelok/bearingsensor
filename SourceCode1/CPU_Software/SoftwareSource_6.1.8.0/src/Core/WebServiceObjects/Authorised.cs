/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;

namespace WebServiceObjects
{
    /// <summary>
    /// This class is used to indicate that an operation
    /// has been successful.  If the user making the
    /// request does not have the correct user level then
    /// the operation will fail and the UserAuthorised flag will
    /// be set to null.
    /// </summary>
    [DataContract]
    public class Authorised
    {
        /// <summary>
        /// Used by all services.  Set to true if the user is authorised to 
        /// perform the requested function, otherwise false.
        /// </summary>
        [DataMember]
        public bool UserAuthorised;

        /// <summary>
        /// Used by services that have a bool return value.  True indicates
        /// success, otherwise false.
        /// </summary>
        [DataMember]
        public bool Success;

        /// <summary>
        /// Used by services that have data to return.
        /// The data is copied into the array.
        /// </summary>
        [DataMember]
        public Int16[] DataArray;
    }
}
