using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ModbusRegisters
{
    /// <summary>
    /// This class processes calculated status words for cylinders.
    /// </summary>
    public class CylinderRegister : CalculatedSPURegister
    {
        /// <summary>
        /// Constructs a calculated status word
        /// </summary>
        /// <param name="id">The intenral slave id</param>
        /// <param name="address">The base address of this sensor (1 - 14)</param>
        /// <param name="externalId">The external slave id of this register</param>
        /// <param name="externalAddress">The external address of this register</param>
        internal CylinderRegister(byte id, ushort address, byte externalId, ushort externalAddress)
            : base(id, (ushort)(address-1), externalId, externalAddress)
        {
            this.InternalRegisters = new ushort[1];
            this.InternalRegisters[0] = (ushort)(CylinderBase + this.InternalAddress);
        }

        /// <summary>
        /// Calculates the value of this register as follows:
        /// Bit     Colour          Condition                       Register(s)                     Condition       Internal SPU ref 
        /// 0       Green           Normal       
        /// 1       Yellow          Alarm                           n/a     
        /// 2       Red             Slowdown                        n/a     
        /// 3       Blue            Disabled                        (256-269)                       = -32761   
        /// 4       Magenta         Sensor adjustment               (256-269)                       = -32762   
        /// 5                       Pre-warning                     n/a     
        /// 6       Blue            Sensor failure                  (256-269)               ≥ -32766 and ≤ -32763 
        /// 7       Blue            Sensor failure – no pulse       (256-269)                        = -32766   
        /// 8       Blue            Sensor failure – low level      (256-269)                        = -32765   
        /// 9       Blue            Sensor failure – high level     (256-269)                        = -32764   
        ///10       Blue            Sensor failure – rpm OOR        (256-269)                        = -32763   
        /// </summary>
        /// <param name="iEnumerable">A list of the SPU registers</param>
        /// <returns>The calculated value of this register.</returns>
        override public ushort CalculateValue(IEnumerable<ModbusRegister> spuRegisters)
        {
            CalculatedAlarmStatusWord result = 0;
            ushort cylinderAddress = this.InternalRegisters[0];
            short cylinderAverage = (short)spuRegisters.ElementAt(cylinderAddress).Value;


            result |= CalculateCylinderFailure(cylinderAverage);

            if (result == 0)
                result |= CalculatedAlarmStatusWord.Normal;

            return (ushort)result;

        }
    }
}
