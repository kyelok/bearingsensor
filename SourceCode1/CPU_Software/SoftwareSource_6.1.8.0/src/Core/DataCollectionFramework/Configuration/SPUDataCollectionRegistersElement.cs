using System;
using System.Configuration;
using System.Xml;
using System.Collections.Generic;
using ModbusDb;

namespace Configuration
{
    public class SPUDataCollectionRegistersElement : ConfigurationElement
    {
        private Registers[] RegistersInternal;

        public Registers[] Registers
        {
            get { return RegistersInternal; }
        }

        protected override void DeserializeElement(XmlReader reader, bool serializeCollectionKey)
        {
            List<Registers> registers = new List<Registers>();
            List<String> dbFieldNames = null;
            List<String> channelNames = null;
            Dictionary<String, String> registerGroupAttributes = null;
            String attribute;
            bool bBuildingRegister = false;

            while (reader.Read())
            {
                switch (reader.NodeType)
                {
                    case XmlNodeType.Element: // The node is an element.
                        if (reader.Name.CompareTo("register") == 0)
                        {
                            dbFieldNames = new List<string>();
                            channelNames = new List<string>();
                            registerGroupAttributes = new Dictionary<string, string>();

                            if (reader.AttributeCount > 0)
                            {
                                reader.MoveToFirstAttribute();
                                do
                                {
                                    registerGroupAttributes[reader.Name.ToLower()] = reader.Value;
                                } while (reader.MoveToNextAttribute());

                                // Verify that the required fields are included
                                if (registerGroupAttributes.ContainsKey("startreg") == false)
                                    throw new XmlException("Missing required field 'startreg' for Modbus register");
                                if (registerGroupAttributes.ContainsKey("endreg") == false)
                                    throw new XmlException("Missing required field 'endreg' for Modbus register");
                                if (registerGroupAttributes.ContainsKey("description") == false)
                                    throw new XmlException("Missing required field 'description' for Modbus register");
                                if (registerGroupAttributes.ContainsKey("type") == false)
                                    throw new XmlException("Missing required field 'type' for Modbus register");
                                if (registerGroupAttributes.ContainsKey("table") == false)
                                    throw new XmlException("Missing required field 'table' for Modbus register");
                            }
                            bBuildingRegister = true;
                        }

                        if (bBuildingRegister && reader.Name.CompareTo("field") == 0)
                        {
                            attribute = reader.GetAttribute("name");
                            if (attribute != null)
                            {
                                dbFieldNames.Add(attribute);
                            }
                            else
                            {
                                throw new XmlException("Empty field name when parsing Modbus register configuration for " + registerGroupAttributes["table"]);
                            }
                        }

                        if (bBuildingRegister && reader.Name.CompareTo("channel") == 0)
                        {
                            attribute = reader.GetAttribute("name");
                            if (attribute != null)
                            {
                                channelNames.Add(attribute);
                            }
                            else
                            {
                                throw new XmlException("Empty channel name when parsing Modbus register configuration for " + registerGroupAttributes["table"]);
                            }
                        }
                        break;
                    case XmlNodeType.EndElement: //Display the end of the element.
                        if (bBuildingRegister && reader.Name.CompareTo("register") == 0)
                        {
                            String type = registerGroupAttributes["type"];

                            if (type.CompareTo("int16") == 0)
                            {
                                registers.Add(new RegistersInt16(
                                    (ushort)Int32.Parse(registerGroupAttributes["startreg"]),
                                    (ushort)Int32.Parse(registerGroupAttributes["endreg"]),
                                    registerGroupAttributes["description"],
                                    dbFieldNames.ToArray(),
                                    registerGroupAttributes["table"],
                                    channelNames.ToArray()));
                            }
                            else if (type.CompareTo("uint16") == 0)
                            {
                                registers.Add(new RegistersUInt16(
                                    (ushort)Int32.Parse(registerGroupAttributes["startreg"]),
                                    (ushort)Int32.Parse(registerGroupAttributes["endreg"]),
                                    registerGroupAttributes["description"],
                                    dbFieldNames.ToArray(),
                                    registerGroupAttributes["table"],
                                    channelNames.ToArray()));
                            }
                            else if (type.CompareTo("int32") == 0)
                            {
                                registers.Add(new RegistersInt32(
                                    (ushort)Int32.Parse(registerGroupAttributes["startreg"]),
                                    (ushort)Int32.Parse(registerGroupAttributes["endreg"]),
                                    registerGroupAttributes["description"],
                                    dbFieldNames.ToArray(),
                                    registerGroupAttributes["table"],
                                    channelNames.ToArray()));
                            }
                            else if (type.CompareTo("uint32") == 0)
                            {
                                registers.Add(new RegistersUInt32(
                                    (ushort)Int32.Parse(registerGroupAttributes["startreg"]),
                                    (ushort)Int32.Parse(registerGroupAttributes["endreg"]),
                                    registerGroupAttributes["description"],
                                    dbFieldNames.ToArray(),
                                    registerGroupAttributes["table"],
                                    channelNames.ToArray()));
                            }
                            else
                            {
                                throw new XmlException("Unknown Modbus register field type " + type + " in '" + registerGroupAttributes["description"]+"'");
                            }

                            dbFieldNames = null;
                            channelNames = null;
                            registerGroupAttributes = null;
                            bBuildingRegister = false;
                        }
                        break;
                }
            }
            RegistersInternal = registers.ToArray();
        }
    }
}
