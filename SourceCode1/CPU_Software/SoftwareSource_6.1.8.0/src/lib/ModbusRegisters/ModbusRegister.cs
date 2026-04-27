using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics.CodeAnalysis;

namespace ModbusRegisters
{
    /// <summary>
    /// This enum defines how the register should be updated
    /// </summary>
    public enum AccessType
    {
        Live,
        Cached,
        Polled
    }

    /// <summary>
    /// This enum defines the types of calculated status word registers
    /// that can be constructed.
    /// </summary>
    public enum CalculatedRegisterType
    {
        None,
        Sensors,
        SensorsDeviation,
        Cylinders,
        CylindersDeviations,
        Slem,
        Wio
    }


    /// <summary>
    /// The Register map holds the data about each mapped
    /// register.  The data held is for the real register on the device being
    /// accessed.  Each map is indexed in the SparseMatrix by it's external register and id.
    /// </summary>
    public class ModbusRegister
    {
        /// <summary>
        /// The id of the Modbus slave to access
        /// </summary>
        [SuppressMessage("Microsoft.Naming", "CA1708:IdentifiersShouldDifferByMoreThanCase")]
        [SuppressMessage("Microsoft.Design", "CA1051:DoNotDeclareVisibleInstanceFields")]
        protected byte internalId;

        /// <summary>
        /// The register address on the Modbus slave to access
        /// </summary>
        [SuppressMessage("Microsoft.Naming", "CA1708:IdentifiersShouldDifferByMoreThanCase")]
        [SuppressMessage("Microsoft.Design", "CA1051:DoNotDeclareVisibleInstanceFields")]
        protected UInt16 internalAddress;

        /// <summary>
        /// The id on the Modbus server
        /// </summary>
        byte externalId;

        /// <summary>
        /// The register address on the Modbus server
        /// </summary>
        UInt16 externalAddress;

        /// <summary>
        /// The value last read from the Modbus slave
        /// </summary>
        UInt16 value;

        /// <summary>
        /// Enum that is used to determine how the register should be updated
        /// </summary>
        AccessType type;

        /// <summary>
        /// Flag used to indicate if this register needs updating.
        /// Only used for Cached register types.
        /// When true the value has been read and the register needs to be updated.
        /// </summary>
        bool dirty;

        /// <summary>
        /// This tracks the tick count that a register was
        /// last updated at.  It is used to track that polled registers
        /// are being polled.
        /// </summary>
        Int32 lastUpdateTick;

        /// <summary>
        /// This value is used to determine if a register should be
        /// polled.
        /// </summary>
        readonly Int32 ForceAPollTimeoutinMS = 10000;

        /// <summary>
        /// Gets the internal register address
        /// </summary>
        [SuppressMessage("Microsoft.Naming", "CA1708:IdentifiersShouldDifferByMoreThanCase")]
        public UInt16 InternalAddress
        {
            get
            {
                return this.internalAddress;
            }
        }

        /// <summary>
        /// Gets the internal slave id
        /// </summary>
        [SuppressMessage("Microsoft.Naming", "CA1708:IdentifiersShouldDifferByMoreThanCase")]
        public byte InternalId
        {
            get
            {
                return this.internalId;
            }
        }

        /// <summary>
        /// Gets the external register address
        /// </summary>
        public UInt16 ExternalAddress
        {
            get
            {
                return this.externalAddress;
            }
        }

        /// <summary>
        /// Gets the external slave id
        /// </summary>
        public byte ExternalId
        {
            get
            {
                return this.externalId;
            }
        }

        /// <summary>
        /// Gets the value that the register holds
        /// </summary>
        virtual public ushort Value
        {
            get
            {
                if (this.type == AccessType.Cached)
                {
                    if (this.dirty)
                    {
                        this.dirty = false;
                    }
                    else
                    {
                        this.dirty = true;
                    }
                }
                return this.value;
            }

            set
            {
                this.lastUpdateTick = Environment.TickCount;
                this.value = value;
            }
        }

        /// <summary>
        /// Gets the update type for this register
        /// </summary>
        public AccessType UpdateType
        {
            get
            {
                return this.type;
            }
        }

        /// <summary>
        /// Flag indicating if this is a calculated or real register
        /// </summary>
        virtual public bool IsCalculated
        {
            get
            {
                return false;
            }
        }

        /// <summary>
        /// This property is used to indicate if the register should
        /// be updated.  When it returns true the registery should be updated from the Modbus, otherwise
        /// the register should not be updated.
        /// </summary>
        virtual public bool ShouldUpdate
        {
            get
            {
                bool update;

                if (this.UpdateType == AccessType.Polled)
                {
                    if ((Environment.TickCount - this.lastUpdateTick) > ForceAPollTimeoutinMS)
                    {
                        update = true;
                    }
                    else
                    {
                        update = false;
                    }
                }
                else if (this.UpdateType == AccessType.Cached)
                {
                    update = this.dirty;
                }
                else
                {
                    update = true;
                }

                return update;
            }
        }

        /// <summary>
        /// Calculates the value of this register and returns it
        /// </summary>
        /// <param name="spuRegisters">A collection of registers that this register should be calculated form.</param>
        /// <returns>The calcuated status word for this register</returns>
        virtual public ushort CalculateValue(IEnumerable<ModbusRegister> spuRegisters)
        {
            return this.Value;
        }

        /// <summary>
        /// Factory method for constructing a register
        /// </summary>
        /// <param name="id">The internal slave id</param>
        /// <param name="address">The internal address</param>
        /// <param name="externalId">The external id</param>
        /// <param name="externalAddress">The external address</param>
        /// <param name="accessType">The access type for the register</param>
        /// <param name="regType">The type of register to construct</param>
        /// <returns>The constructed register object</returns>
        public static ModbusRegister RegisterMapFactory(byte id, UInt16 address, byte externalId, UInt16 externalAddress, AccessType accessType, CalculatedRegisterType regType)
        {
            ModbusRegister map = null;

            switch (regType)
            {
                case CalculatedRegisterType.Sensors:
                    map = new SensorRegister(id, address, externalId, externalAddress);
                    break;
                case CalculatedRegisterType.SensorsDeviation:
                    map = new SensorDeviationRegister(id, address, externalId, externalAddress);
                    break;
                case CalculatedRegisterType.Cylinders:
                    map = new CylinderRegister(id, address, externalId, externalAddress);
                    break;
                case CalculatedRegisterType.CylindersDeviations:
                    map = new CylinderDeviationRegister(id, address, externalId, externalAddress);
                    break;
                case CalculatedRegisterType.Slem:
                    map = new SlemRegister(id, address, externalId, externalAddress);
                    break;
                case CalculatedRegisterType.Wio:
                    map = new WioRegister(id, address, externalId, externalAddress);
                    break;
                case CalculatedRegisterType.None:
                default:
                    map = new ModbusRegister(id, address, externalId, externalAddress, accessType);
                    break;
            }

            return map;
        }

        /// <summary>
        /// Constructs a RegisterMap object 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="address"></param>
        /// <param name="accessType"></param>
        protected ModbusRegister(byte id, UInt16 address, byte externalId, UInt16 externalAddress, AccessType accessType)
        {
            this.internalId = id;
            this.internalAddress = address;
            this.externalId = externalId;
            this.externalAddress = externalAddress;
            this.type = accessType;
            this.dirty = true;
        }
    }

    /// <summary>
    /// This class can be used as a comparer to sort a register list based on the
    /// register address.
    /// </summary>
    public class RegisterInternalAddressComparer : IComparer<ModbusRegister>
    {
        public int Compare(ModbusRegister x, ModbusRegister y)
        {
            //Handle x or y being null
            if (x == null)
            {
                if (y == null)
                {
                    //x and y are null and therefore equal
                    return 0;
                }
                else
                {
                    //y is not null so is greater then x
                    return -1;
                }
            }
            else if (y == null)
            {
                //y is null so x is greater
                return 1;
            }

            //x and y are not null so perform a standard UInt16 comparison
            return x.InternalAddress.CompareTo(y.InternalAddress);
        }
    }

    /// <summary>
    /// This class can be used as a comparer to sort a register list based on the
    /// register address.
    /// </summary>
    public class RegisterExternalAddressComparer : IComparer<ModbusRegister>
    {
        public int Compare(ModbusRegister x, ModbusRegister y)
        {
            //Handle x or y being null
            if (x == null)
            {
                if (y == null)
                {
                    //x and y are null and therefore equal
                    return 0;
                }
                else
                {
                    //y is not null so is greater then x
                    return -1;
                }
            }
            else if (y == null)
            {
                //y is null so x is greater
                return 1;
            }

            //x and y are not null so perform a standard UInt16 comparison
            return x.ExternalAddress.CompareTo(y.ExternalAddress);
        }
    }
}
