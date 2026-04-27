/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using WebServiceObjects;
using DataCollectionSDK;
using HelperClasses;
using System.IO;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;

namespace WebService
{
    internal class TrendsConfigManager
    {
        private DatabaseSDK databaseSDK;

        /// <summary>
        /// Default constructor
        /// </summary>
        public TrendsConfigManager(DatabaseSDK databaseSDK)
        {
            this.databaseSDK = databaseSDK;

            List<string> sqlStatements = new List<string>();

            sqlStatements.Add("CREATE TABLE IF NOT EXISTS trend_configuration (slot INTEGER, description TEXT, trend_details TEXT);");            
            databaseSDK.ExecuteSQLStatements(sqlStatements.ToArray());

            //Check if the 10 slots exist
            DataTable table = databaseSDK.SelectIntoDataTable("count(*) from trend_configuration");
            if (table.Rows.Count > 0)
            {
                if ((Int64)table.Rows[0][0] != 10)
                {
                    //Delete the records
                    sqlStatements.Clear();
                    //Create the empty slots
                    sqlStatements.Add("delete from trend_configuration;");
                    
                    for (int i = 0; i < 10; i++)
                    {
                        sqlStatements.Add(string.Format("insert into trend_configuration VALUES({0}, 'Empty', NULL);", i));
                    }

                    databaseSDK.ExecuteSQLStatements(sqlStatements.ToArray());
                }
            }
        }

        /// <summary>
        /// Updates the trends configuration
        /// </summary>
        /// <param name="configuration">The new configuration</param>
        public void SetTrendsConfiguration(TrendConfiguration configuration)
        {
            string[] sqlInsert = new string[1];
            string details = SerializeTrendDetails(configuration.Details);

            sqlInsert[0] = string.Format("update trend_configuration set description='{0}', trend_details='{1}' where slot={2};", configuration.Description, details, configuration.Slot);
            databaseSDK.ExecuteSQLStatements(sqlInsert);
        }

        /// <summary>
        /// Reads the currently configured trends
        /// </summary>
        /// <returns>The trends configuration</returns>
        public TrendConfiguration GetTrendsConfiguration(uint slot)
        {
            DataTable table = databaseSDK.SelectIntoDataTable(string.Format("slot, description, trend_details from trend_configuration where slot={0}",slot));
            if (table.Rows.Count > 0)
            {
                TrendDetail[] details = null;
                string description = (string)table.Rows[0]["description"];

                if (table.Rows[0]["trend_details"] != DBNull.Value)
                {
                    details = DeserializeTrendDetails((string)table.Rows[0]["trend_details"]);
                }

                return new TrendConfiguration(slot, description, details);
            }

            return null;
        }

        /// <summary>
        /// Serializes an array of TrendDetails to a base64 encoded array of bytes array
        /// </summary>
        /// <param name="details">The details to Serialize</param>
        /// <returns>A Base64 encoded array of bytes</returns>
        private string SerializeTrendDetails(TrendDetail[] details)
        {
            List<SerializeableTrendDetails> detailsToSerialize = new List<SerializeableTrendDetails>();

            foreach (TrendDetail detail in details)
            {
                detailsToSerialize.Add(detail);
            }

            using (MemoryStream stream = new MemoryStream())
            {
                BinaryFormatter formatter = new BinaryFormatter();
                formatter.Serialize(stream, detailsToSerialize.ToArray());
                return Convert.ToBase64String(stream.GetBuffer());
            }
        }

        /// <summary>
        /// Deserializes a base64 encoded array of bytes to an array of TrendDetails
        /// </summary>
        /// <param name="buffer">The Base64 encoed array of bytes to deserialize</param>
        /// <returns>The array of TrendDetails</returns>
        private TrendDetail[] DeserializeTrendDetails(string buffer)
        {
            SerializeableTrendDetails[] detailsToSerialize;
            List<TrendDetail> details = new List<TrendDetail>();

            using (MemoryStream stream = new MemoryStream(Convert.FromBase64String(buffer)))
            {
                BinaryFormatter formatter = new BinaryFormatter();
                detailsToSerialize = (SerializeableTrendDetails[])formatter.Deserialize(stream);

                for(int i=0;i<detailsToSerialize.Length;i++)
                {
                    details.Add(detailsToSerialize[i]);
                }

                return details.ToArray();
            }
        }

        /// <summary>
        /// Gets a string array of the configuration slots
        /// defined by a user.  A slot with a empty string indicates 
        /// that this slot has not been defined by the user.
        /// </summary>
        /// <returns>A string array of all the slot names order from slot 0 - 9.</returns>
        internal String[] GetConfigurationSlots()
        {
            string[] slots = new string[10];

            //Set all slots to undefined.
            for (int i = 0; i < slots.Length; i++)
            {
                slots[i] = string.Format("");
            }

            DataTable table = databaseSDK.SelectIntoDataTable(string.Format("slot, description from trend_configuration order by slot asc;"));
            if (table.Rows.Count > 0)
            {
                foreach (DataRow row in table.Rows)
                {
                    if (row["slot"] != DBNull.Value)
                    {
                        Int64 i = (Int64)row["slot"];

                        if (i >= 0 && i <= 9)
                        {
                            if (row["description"] != DBNull.Value)
                            {
                                slots[i] = (string)row["description"];
                            }
                        }
                    }
                }
            }

            return slots;
        }
    }

    /// <summary>
    /// This class is used to serialize the TrendDetail WebService object to and from the Database
    /// </summary>
    [Serializable]
    internal class SerializeableTrendDetails : ISerializable
    {
        private string id;
        private string colour;
        private string description;
        private int type;
        private uint axis;

        /// <summary>
        /// Creates a SerializeableTrendDetails from a TrendDetails object
        /// </summary>
        /// <param name="details">The TrendDetails object to create the SerializeableTrendDetails object from.</param>
        private SerializeableTrendDetails(TrendDetail details)
        {
            id = details.Id;
            colour = details.Colour;
            description = details.Description;
            type = details.Type;
            axis = details.Axis;
        }

        /// <summary>
        /// Creates a SerializeableTrendDetails from a serialized stream.
        /// </summary>
        /// <param name="info">Object that the serialized data will be read from</param>
        /// <param name="ctxt">The stream that will be used for serialization</param>
        public SerializeableTrendDetails(SerializationInfo info, StreamingContext ctxt)
        {
            this.id = info.GetString("Id");
            this.colour = info.GetString("Colour");
            this.description = info.GetString("Description");
            this.type = info.GetInt32("Type");
            this.axis = info.GetUInt32("Axis");
        }

        /// <summary>
        /// Casts a SerializeableTrendDetails to a TrendDetail
        /// </summary>
        /// <param name="d">SerializeableTrendDetails to cast to TrendDetail</param>
        /// <returns>TrendDetail</returns>
        public static implicit operator TrendDetail(SerializeableTrendDetails d)
        {
            return new TrendDetail(d.id, d.description, d.colour, d.type, d.axis);
        }

        /// <summary>
        /// Casts a TrendDetail to a SerializeableTrendDetails
        /// </summary>
        /// <param name="d">TrendDetail to cast to SerializeableTrendDetails</param>
        /// <returns></returns>
        public static implicit operator SerializeableTrendDetails(TrendDetail d)
        {
            return new SerializeableTrendDetails(d);
        }

        /// <summary>
        /// Gets the Serializeable data from the object
        /// </summary>
        /// <param name="info">Object that the serialized data will be loaded into.</param>
        /// <param name="context">The stream that will be used for serialization</param>
        public void GetObjectData(SerializationInfo info, StreamingContext context)
        {
            info.AddValue("Id", this.id);
            info.AddValue("Colour", this.colour);
            info.AddValue("Description", this.description);
            info.AddValue("Type", this.type);
            info.AddValue("Axis", this.axis);
        }
    }
}
