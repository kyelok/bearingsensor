/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Runtime.Serialization;
using System.Collections.Generic;

namespace WebServiceObjects
{
    /// <summary>
    /// This class holds a TrendConfiguration for saving and loading from the
    /// database,
    /// </summary>
    [DataContract]
    public class TrendConfiguration
    {
        /// <summary>
        /// Constructs a TrendConfiguration object
        /// </summary>
        /// <param name="slot">The slot to store the configuration in</param>
        /// <param name="description">The description of the configuration</param>
        /// <param name="details">The array of TrendDetails assocaited with this configuration</param>
        public TrendConfiguration(uint slot, string description, TrendDetail[] details)
        {
            this.Slot = slot;
            this.Description = description;
            this.Details = details;
        }

        /// <summary>
        /// The slto id that this configuration should be loaded and saved into
        /// </summary>
        [DataMember]
        public uint Slot;

        /// <summary>
        /// The description the user has entered for this configuration
        /// </summary>
        [DataMember]
        public string Description;

        /// <summary>
        /// The trends that are stored against this configuration
        /// </summary>
        [DataMember]
        public TrendDetail[] Details;
    }

    /// <summary>
    /// This class holds the detail of each trend that is associated with this configuration.
    /// </summary>
    [DataContract]
    public class TrendDetail
    {
        /// <summary>
        /// Creates a TrendDetail object for sending to and from the Web Server
        /// </summary>
        /// <param name="id">The id string that identifies the item that this trend plots</param>
        /// <param name="description">The description of the item</param>
        /// <param name="colour">The colour that the trend is plotted in</param>
        /// <param name="trendType">The type of the trend</param>
        /// <param name="axis">The axis the trend is plotted against</param>
        public TrendDetail(string id, string description, string colour, int trendType, uint axis)
        {
            this.Id = id;
            this.Description = description;
            this.Colour = colour;
            this.Type = trendType;
            this.Axis = axis;
        }

        /// <summary>
        /// The id of the trend
        /// </summary>
        [DataMember]        
        public string Id;

        /// <summary>
        /// The colour of the trend
        /// </summary>
        [DataMember]
        public string Colour;

        /// <summary>
        /// The description of the trend item
        /// </summary>
        [DataMember]
        public string Description;

        /// <summary>
        /// The type of trend
        /// </summary>
        [DataMember]
        public int Type;

        /// <summary>
        /// The axis that the trend should be plotted against
        /// </summary>
        [DataMember]
        public uint Axis;

    }
}
