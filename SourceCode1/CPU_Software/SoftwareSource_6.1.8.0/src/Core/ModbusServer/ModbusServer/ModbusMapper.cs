using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Security.Cryptography;
using HelperClasses;
using Modbus.Data;
using ModbusRegisters;
using System.Globalization;

namespace ModbusServer
{
    /**
     * The Modbus mapper uses the Modbus register configuration file to map the
     * Modbus server registers to the SPU registers
     * 
     */
    class ModbusMapper
    {
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        /// <summary>
        /// The externalModbusMap holds the view of the Modbus registers used by the 
        /// external Modbus servers.
        /// </summary>
        SparseMatrix<ModbusRegister> externalModbusMap;

        /// <summary>
        /// The internalModbusMap holds the view of teh Modbus registers used by the internal modbus.
        /// </summary>
        SparseMatrix<ModbusRegister> internalModbusMap;

        /// <summary>
        /// This holds the mapping of external slave ids to internal slave ids
        /// </summary>
        Dictionary<byte, byte> mapExternalToInternalIds;

        /// <summary>
        /// This defines the slave address of the SPU.
        /// It is used to set teh slave id when creating one of the calculated
        /// status words for the spu.
        /// </summary>
        private const byte SPUSlaveId = 1;

        /// <summary>
        /// The version number of the map file
        /// </summary>
        VersionNumber mapfileVersion;

        /// <summary>
        /// Constructs the Modbus mapper.
        /// The mapper maps the registers exposed by the Modbus slave to
        /// the registers in the SPU
        /// </summary>
        public ModbusMapper()
        {
            externalModbusMap = new SparseMatrix<ModbusRegister>();
            internalModbusMap = new SparseMatrix<ModbusRegister>();
            mapExternalToInternalIds = new Dictionary<byte, byte>();
        }

        /// <summary>
        /// Loads the configuration file and creates the mappings
        /// </summary>
        public void InitFromConfigurationFile(string configFilename)
        {
            StringBuilder md5OfMapFile = new StringBuilder();
            string line;

            //Calculate the md5 of the map file            
            using (FileStream file = new FileStream(configFilename + ".map", FileMode.Open))
            {
                //Read the md5 from the .md5 file
                using (MD5 md5 = MD5.Create())
                {
                    byte[] hash = md5.ComputeHash(file);
                    foreach (byte b in hash)
                    {
                        md5OfMapFile.Append(b.ToString("x2", CultureInfo.CurrentCulture));
                    }
                }

                file.Close();
            }

            //Compare the md5s
            using (StreamReader md5File = new StreamReader(configFilename + ".md5"))
            {
                line = md5File.ReadLine();
                md5File.Close();
            }

            if (line == md5OfMapFile.ToString())
            {
                //Open file
                using (StreamReader configFile = new StreamReader(configFilename + ".map"))
                {
                    //Read in each line
                    while ((line = configFile.ReadLine()) != null)
                    {
                        InsertMapEntry(line);
                    }
                    configFile.Close();
                }
            }
            else
            {
                throw new FormatException(string.Format(CultureInfo.CurrentCulture, "The MD5 hash of {0}.map does not match the md5 in {0}.md5", configFilename));
            }
        }

        /// <summary>
        /// Parses a line from the file.
        /// It will be in the format:
        /// Id,Internal_Register = Id,External_Register,Access_Type
        /// or
        /// Id,Internal_Register_Start_Range-Internal_End_Range = External_Register,Id,Access_Type
        /// 
        /// The Access_Type is optional and is not present will be defaulted to Live
        /// all other lines will be ignored
        /// </summary>
        /// <returns>An array of ModbusRegisters created from the line.</returns>
        static private ModbusRegister[] ParseLine(string line, out string version)
        {
            List<ModbusRegister> mappedRegisters = new List<ModbusRegister>();
            UInt16 internalStartRegister;
            UInt16 internalEndRegister;
            byte internalId;
            UInt16 externalRegister;
            byte externalId;
            AccessType accessType;
            CalculatedRegisterType registerType = CalculatedRegisterType.None;

            internalStartRegister = 0;
            internalEndRegister = 0;
            internalId = 0;
            externalRegister = 0;
            externalId = 0;
            accessType = AccessType.Live;


            version = string.Empty;

            //Split the line into Internal and Exposed Registers
            string[] registers = line.Split(new char[] { '=', ',' });

            //Check that line is in the format x,n = y,n
            //If it is parse the line
            if (registers[0] != line)
            {
                try
                {
                    //Get the Internal register and the External Register
                    if (registers[1].Contains('-'))
                    {
                        //Line defines a range of registers to be mapped
                        string[] internalRange = registers[1].Split(new char[] { '-' });
                        //Get the range from the internal array
                        internalStartRegister = UInt16.Parse(internalRange[0].Trim(), CultureInfo.CurrentCulture);
                        internalEndRegister = UInt16.Parse(internalRange[1].Trim(), CultureInfo.CurrentCulture);
                    }
                    else
                    {
                        //Line defines a single register to be mapped or version number
                        //Try parse will fail if the item at register[1] is not a number.
                        if (UInt16.TryParse(registers[1].Trim(), out internalStartRegister) == false)
                        {
                            if ((registers[1].Trim()).Length == 0)
                            {
                                throw new ArgumentOutOfRangeException("line");
                            }
                        }
                    }

                    if (Byte.TryParse(registers[0].Trim(), out internalId) == false)
                    {
                        //First field is not a slave id
                        //It may be a mapped register or a version
                        if (registers[0].ToLower(CultureInfo.CurrentCulture) == "version") //Version number
                        {
                            //The version number will be all values after the '=' in the format
                            //"major.minor.point"
                            version = registers[1];
                        }
                        else //Assume Mapped register
                        {
                            //The calcuated values are all read from the SPU
                            //which has the Slave Id of 1
                            internalId = SPUSlaveId;

                            //Internal id is not a byte.  Check if it is a calculated register
                            switch (registers[0].ToLower(CultureInfo.CurrentCulture))
                            {
                                case "sensors":
                                    registerType = CalculatedRegisterType.Sensors;
                                    accessType = AccessType.Polled;
                                    break;
                                case "sensorsdeviation":
                                    registerType = CalculatedRegisterType.SensorsDeviation;
                                    accessType = AccessType.Polled;
                                    break;
                                case "cylinders":
                                    registerType = CalculatedRegisterType.Cylinders;
                                    accessType = AccessType.Polled;
                                    break;
                                case "cylindersdeviations":
                                    registerType = CalculatedRegisterType.CylindersDeviations;
                                    accessType = AccessType.Polled;
                                    break;
                                case "slem":
                                    registerType = CalculatedRegisterType.Slem;
                                    accessType = AccessType.Polled;
                                    break;
                                case "wio":
                                    registerType = CalculatedRegisterType.Wio;
                                    accessType = AccessType.Polled;
                                    break;
                                default:
                                    throw new ArgumentOutOfRangeException(line);
                            }
                        }
                    }

                    if (registers.Length > 2)
                    {
                        externalRegister = UInt16.Parse(registers[3].Trim(), CultureInfo.CurrentCulture);
                        externalId = Byte.Parse(registers[2].Trim(), CultureInfo.CurrentCulture);

                        //Check if optional param is present
                        if (registers.Length == 5)
                        {
                            switch (registers[4])
                            {
                                case "l":
                                case "L":
                                    accessType = AccessType.Live;
                                    break;
                                case "p":
                                case "P":
                                    accessType = AccessType.Polled;
                                    break;
                                case "c":
                                case "C":
                                    accessType = AccessType.Cached;
                                    break;
                                default:
                                    //Unknown access type.  Default to Live
                                    accessType = AccessType.Live;
                                    break;
                            }
                        }


                        int sizeOfRange;
                        if (internalEndRegister != 0)
                        {
                            sizeOfRange = (UInt16)(internalEndRegister - internalStartRegister);
                        }
                        else
                        {
                            sizeOfRange = 0;
                        }

                        //At this point we have either a range to map or a single register to map
                        //Create the array of registers to return from the function.
                        for (UInt16 i = 0; i <= sizeOfRange; i++)
                        {
                            mappedRegisters.Add(ModbusRegister.RegisterMapFactory(internalId, (UInt16)(internalStartRegister + i),
                                externalId, (UInt16)(externalRegister + i), accessType, registerType));
                        }
                    }

                }
                catch (Exception e)
                {
                    logger.DebugFormat("Failed to parse the line {0}. Exception {1}", line, e.Message);
                }
            }

            return mappedRegisters.ToArray();
        }

        /// <summary>
        /// Parses a line and inserts it into the Register map.  If the line is invalid that it is not inserted.
        /// </summary>
        /// <param name="line">The line to parse and insert into the register map.</param>
        /// <exception cref="IndexOutOfRangeException">Will throw a IndexOutOfRangeException exception if the entery being inserted already exists.</exception>
        /// <returns>A flag indicating if the line has been parsed as a register correctly.  True if the line was a register configuration, otherwise false.</returns>
        public void InsertMapEntry(string line)
        {
            string versionNumber;

            ModbusRegister[] registers = ParseLine(line, out versionNumber);

            if (registers.Length > 0)
            {
                lock (this.externalModbusMap.Sync)
                {
                    foreach (ModbusRegister r in registers)
                    {
                        //If there is no entry in the id map for the
                        //external id add one.
                        if (this.mapExternalToInternalIds.ContainsKey(r.ExternalId) == false)
                        {
                            this.mapExternalToInternalIds.Add(r.ExternalId, r.InternalId);
                        }

                        if (this.externalModbusMap[r.ExternalId, r.ExternalAddress] != null)
                        {
                            //A entry already exists for this item in the map.
                            //Log a warning before overwritting it.
                            logger.WarnFormat("Overwritten Modbus map configuration {0}", line);

                            this.externalModbusMap[r.ExternalId, r.ExternalAddress] = null;
                            if (r.IsCalculated == false)
                            {
                                internalModbusMap[r.InternalId, r.InternalAddress] = null;
                            }
                        }

                        //Add the registers to the map
                        //The externalModbusMap maps external registers and external ids
                        //The internalModbusMap provides a quick lookup table for us to map internal registers to external registers
                        this.externalModbusMap[r.ExternalId, r.ExternalAddress] = r;

                        //We do not want to insert calculated values into the
                        //internal map as these registers only exist on the
                        //external interface.
                        if (r.IsCalculated == false)
                        {
                            internalModbusMap[r.InternalId, r.InternalAddress] = r;
                        }
                    }
                }
            }
            else
            {
                if (versionNumber.Length != 0)
                {
                    this.mapfileVersion = new VersionNumber(versionNumber);
                }
            }
        }

        /// <summary>
        /// Gets a list of the registers to write too.
        /// </summary>
        /// <param name="id">The slave id to get the registers for</param>
        /// <param name="startRegisterAddress">The address of the first register</param>
        /// <param name="count">The number of registers to get</param>
        /// <returns>A List of RegisterMap objects.  If the list is empty then there are no registers in the range specified.</returns>
        public List<ModbusRegister> GetInternalWriteRegisters(int id, int startRegisterAddress, int count)
        {
            return ExternalToInternal(id, startRegisterAddress, count, false);
        }

        /// <summary>
        /// Gets a list of the registers that should be processed as live registers
        /// </summary>
        /// <param name="id">The slave id to get the registers for</param>
        /// <param name="startRegisterAddress">The start address of the first register to get</param>
        /// <param name="count">The number of registers to get</param>
        /// <returns>A List of RegisterMap objects.  If the list is empty then either there are no live registers in the ranged specified</returns>
        public List<ModbusRegister> GetLiveReadRegisters(int id, int startRegisterAddress, int count)
        {
            List<ModbusRegister> registers = new List<ModbusRegister>();

            lock (this.externalModbusMap.Sync)
            {
                for (int i = 0; i < count; i++)
                {
                    ModbusRegister reg = this.externalModbusMap[id, startRegisterAddress + i];

                    if (reg == null)
                    {
                        throw new Modbus.SlaveException(new Modbus.Message.SlaveExceptionResponse((byte)id, (byte)0, (byte)0x02));
                    }

                    if (reg.UpdateType == AccessType.Live)
                    {
                        registers.Add(reg);
                    }
                }
            }

            //Sort array of registers based on internal register address
            registers.Sort(new RegisterInternalAddressComparer());

            logger.DebugFormat(CultureInfo.CurrentCulture, "{0} out of {1} of the Live registers in the request will be retreived for Slave {2}, Starting at Address {3}", registers.Count, count, id, startRegisterAddress);

            return registers;
        }

        /// <summary>
        /// Gets registers from the internal list
        /// </summary>
        /// <param name="id">The id to get the registers for</param>
        /// <param name="startRegisterAddress">The address of the first register to get</param>
        /// <param name="count">The number of registers to get</param>
        /// <returns>A List of ModbusRegisters</returns>
        public List<ModbusRegister> GetInternalRegisters(ushort id, ushort startRegisterAddress, ushort count)
        {
            List<ModbusRegister> registers = new List<ModbusRegister>();

            for (int i = 0; i < count; i++)
            {
                ModbusRegister internalReg = this.internalModbusMap[id, startRegisterAddress + i];

                if (internalReg != null)
                {
                    if ((internalReg.UpdateType == AccessType.Polled || internalReg.UpdateType == AccessType.Cached) && (internalReg.ShouldUpdate))
                    {
                        registers.Add(internalReg);
                    }
                }
            }

            return registers;
        }

        /// <summary>
        /// Returns a ranges of registers based upon the external id and external register address.  If the registers
        /// are marked as being cached or polled then they are not returned in the collection.
        /// </summary>
        /// <param name="id">The external id to map</param>
        /// <param name="startRegisterAddress">The first external register address to map</param>
        /// <param name="count">The number of registers to map</param>
        /// <exception cref="Modbus.SlaveException">Throws a Modbus.SlaveException if the Slave Id or Register address accessed do not exist in the map.</exception>
        /// <returns>A sorted array of RegisterMap objects containing the registers mapped to the range.  If no registers map then the Array will be empty.
        /// The array will be sorted by internal register address in ascending order.</returns>
        private List<ModbusRegister> ExternalToInternal(int id, int startRegisterAddress, int count, bool readOperation)
        {
            List<ModbusRegister> registers = new List<ModbusRegister>();

            logger.DebugFormat("Mapping {0} registers for Slave Id {1}, Starting at Address {2}", count, id, startRegisterAddress);

            //If the id is 0 then
            //set it to 1 so that the SPU registers are returned.
            if (id == 0)
            {
                id = 1;
            }

            lock (this.externalModbusMap.Sync)
            {
                for (int i = 0; i < count; i++)
                {
                    ModbusRegister reg = this.externalModbusMap[id, startRegisterAddress + i];

                    if (reg == null)
                    {
                        throw new Modbus.SlaveException(new Modbus.Message.SlaveExceptionResponse((byte)id, (byte)0, (byte)0x02));
                    }

                    if (readOperation)
                    {
                        if (reg.ShouldUpdate)
                        {
                            registers.Add(reg);
                        }
                    }
                    else
                    {
                        registers.Add(reg);
                    }
                }
            }

            //Sort array of registers based on internal register address
            registers.Sort(new RegisterInternalAddressComparer());

            logger.DebugFormat("Mapped {0} registers", registers.Count);

            return registers;
        }

        /// <summary>
        /// This method inserts a response from a device on the internal Modbus into the map.
        /// </summary>
        /// <param name="internalResponse"></param>
        /// <param name="registers"></param>
        public void UpdateMapFromInternalResponse(RegisterCollection internalResponse, List<ModbusRegister> registers)
        {
            lock (this.externalModbusMap.Sync)
            {
                if ((internalResponse.Count > 0) && (internalResponse.Count == registers.Count))
                {
                    logger.DebugFormat("Inserting values {0} read from Modbus into register map", internalResponse.Count);
                    for (int i = 0; i < internalResponse.Count; i++)
                    {
                        registers[i].Value = internalResponse[i];
                    }
                }
            }
        }

        /// <summary>
        /// Updates the Modbus map from a response received by the Non Mapped data store
        /// </summary>
        /// <param name="internalResponse">The collection of registers that holds the response</param>
        /// <param name="slaveId">The slave id the response was recieved from</param>
        /// <param name="registerAddress">The register address the response starts at.</param>
        public void UpdateMapFromInternalResponse(RegisterCollection internalResponse, byte slaveId, ushort registerAddress)
        {
            //We lock the externalModbus.
            //We are only using the internalModbusmap as
            //a view into the external map
            lock (this.externalModbusMap.Sync)
            {
                for (int i = 0; i < internalResponse.Count; i++)
                {
                    if (internalModbusMap[slaveId, registerAddress + i] != null)
                    {
                        internalModbusMap[slaveId, registerAddress + i].Value = internalResponse[i];
                    }
                }
            }
        }

        /// <summary>
        /// Creates a response to send to a client from the map
        /// </summary>
        /// <param name="slaveId">The external slave id the response is for</param>
        /// <param name="startAddress">The register to start constructing the response at</param>
        /// <param name="count">The number of registers to return in the response.</param>
        /// <exception cref="Modbus.SlaveException">Throws a Modbus.SlaveException if the Slave Id and register address do not exist in the map.</exception>
        /// <returns>A RegisterCollection that contains the response.</returns>
        public RegisterCollection CreateExternalResponseFromMap(byte slaveId, ushort startAddress, ushort count)
        {
            RegisterCollection result = new RegisterCollection();

            lock (this.externalModbusMap.Sync)
            {
                if (count > 0)
                {
                    logger.DebugFormat("Building response that contains {2} results for Slave Id {0} starting at Register {1}", slaveId, startAddress, count);

                    for (int i = 0; i < count; i++)
                    {
                        ModbusRegister reg = this.externalModbusMap[slaveId, startAddress + i];

                        if (reg == null)
                        {
                            throw new Modbus.SlaveException(new Modbus.Message.SlaveExceptionResponse((byte)slaveId, (byte)0, (byte)0x02));
                        }

                        //Check if this is a calculated register
                        if (reg.IsCalculated)
                        {
                            logger.DebugFormat("External Register {0} on Slave Id {1} is a calculated register.", reg.ExternalId, slaveId);
                            //Register is a calculated value
                            //construct the value from the latest data stored in the modbusmap
                            //Data is looked up using the internal id
                            try
                            {
                                if (this.internalModbusMap.GetRowDataCount(reg.InternalId) > 0)
                                {
                                    IEnumerable<ModbusRegister> internalRegisters = this.internalModbusMap.GetRowData(reg.InternalId);
                                    reg.Value = reg.CalculateValue(internalRegisters);
                                    logger.DebugFormat("Calculated Value of External Register {0} on Slave Id {1} is {2}", reg.ExternalId, slaveId, reg.Value);
                                }
                                else
                                {
                                    //The Internal Id that the register is assocaited with does not exist
                                    //Let the client know.
                                    throw new Modbus.SlaveException(new Modbus.Message.SlaveExceptionResponse((byte)slaveId, (byte)0, (byte)0x02));
                                }
                            }
                            catch (Exception e)
                            {
                                if (e is ArgumentNullException ||
                                    e is IndexOutOfRangeException)
                                {
                                    //Cannot calculate the internal register.  Let the client know.
                                    throw new Modbus.SlaveException(new Modbus.Message.SlaveExceptionResponse((byte)slaveId, (byte)0, (byte)0x02));
                                }
                            }
                        }
                        else
                        {
                            logger.DebugFormat("Value of External Register {0} on Slave Id {1} is {2}", reg.ExternalId, slaveId, reg.Value);
                        }

                        result.Add(reg.Value);
                    }
                }
            }

            logger.DebugFormat("Response contains {0} Register.", result.Count);

            return result;
        }

        /// <summary>
        /// Sets the value of the externally mapped registers
        /// </summary>
        /// <param name="slaveId">The slave id of the registers to set</param>
        /// <param name="startAddress">The address of the first register to set</param>
        /// <param name="values">A array of ushorts to load into the registers starting at startAddress</param>
        public void SetRegisterValues(byte slaveId, ushort startAddress, ushort[] values)
        {
            lock (this.externalModbusMap.Sync)
            {
                //Load the values to write into the modbus map
                for (int i = 0; i < values.Length; i++)
                {
                    if (this.externalModbusMap[slaveId, (UInt16)(startAddress + i)] != null)
                    {
                        this.externalModbusMap[slaveId, (UInt16)(startAddress + i)].Value = values[i];
                    }
                }
            }
        }

        /// <summary>
        /// Gets a list of the registers that should be processed as cached or polled registers
        /// </summary>
        /// <param name="id">The slave id to get the registers for</param>
        /// <param name="startRegisterAddress">The start address of the first register to get</param>
        /// <param name="count">The number of registers to get</param>
        /// <returns>A List of RegisterMap objects.  If the list is empty then either there are no live registers in the ranged specified.  The list may contain more registers
        /// then where specificed in the request.  This is because some of the registers may be calucalted and the registers that they are calcualted from may need
        /// to be updated.</returns>
        public List<ModbusRegister> GetPolledOrCachedReadRegisters(int id, int startRegisterAddress, int count)
        {
            List<ModbusRegister> registers = new List<ModbusRegister>();

            lock (this.externalModbusMap.Sync)
            {
                for (int i = 0; i < count; i++)
                {
                    ModbusRegister reg = this.externalModbusMap[id, startRegisterAddress + i];

                    if (reg == null)
                    {
                        throw new Modbus.SlaveException(new Modbus.Message.SlaveExceptionResponse((byte)id, (byte)0, (byte)0x02));
                    }

                    if ((reg.UpdateType == AccessType.Polled || reg.UpdateType == AccessType.Cached) && (reg.ShouldUpdate))
                    {
                        if (reg.IsCalculated)
                        {
                            //Calculated registers are calculated from a number of different registers
                            //We need to add all the registers that make up it's calculated value.
                            //The calculated register holds a list of all the internal registers it uses
                            //Retrive them and add them to the register list
                            foreach (ushort regAddress in ((CalculatedSPURegister)reg).Registers)
                            {
                                ModbusRegister internalReg = this.internalModbusMap[reg.InternalId, regAddress];

                                if (internalReg != null)
                                {
                                    if (internalReg.ShouldUpdate)
                                    {
                                        registers.Add(internalReg);
                                    }
                                }
                            }
                        }
                        else
                        {
                            registers.Add(reg);
                        }
                    }
                }
            }

            //Sort array of registers based on internal register address
            registers.Sort(new RegisterInternalAddressComparer());

            logger.DebugFormat(CultureInfo.CurrentCulture, "{0} out of {1} of Cached, Polled or Calculated registers will be retreived for Slave {2}, Starting at Address {3}", registers.Count, count, id, startRegisterAddress);

            return registers;
        }

        /// <summary>
        /// Returns the version number of the map file
        /// </summary>
        public string Version
        {
            get
            {
                return this.mapfileVersion.Version;
            }
        }

        /// <summary>
        /// Returns the number of registers in the internal map
        /// </summary>
        public int InternalCount(int rowId)
        {
            return this.internalModbusMap.GetRowDataCount(rowId);
        }
    }

}
