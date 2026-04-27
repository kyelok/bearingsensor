/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System.Diagnostics.CodeAnalysis;

namespace DataCollectionSDK
{
    /// <summary>
    /// Database error codes
    /// </summary>
    
    public enum DatabaseErrorCode
    {
        /// <summary>
        /// All good
        /// </summary>
        [SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly")] 
        DbOk,

        /// <summary>
        /// Database is busy
        /// </summary>
        [SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly")]
        DbBusy,

        /// <summary>
        /// Internal database error. Attempt reconnect.
        /// </summary>
        [SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly")]
        DbInternalError,

        /// <summary>
        /// Malformed SQL
        /// </summary>
        [SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly")]
        DbSQLError,

        /// <summary>
        /// System hardware failure
        /// </summary>
        [SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly")]
        DbSystemFailure,

        /// <summary>
        /// System is too low of RAM to complete operation
        /// </summary>
        [SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly")]
        DbLowSystemMemory,

        /// <summary>
        /// Table was not found. Need to create it.
        /// </summary>
        [SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly")]
        DbTableNotFound,

        /// <summary>
        /// Database is full
        /// </summary>
        [SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly")]
        DbFull,

        /// <summary>
        /// Database file is corrupt or could not be openned
        /// </summary>
        [SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly")]
        DbCorrupt,

        /// <summary>
        /// Unknown error occured
        /// </summary>
        [SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly")]
        DbUnknown
    };
}
