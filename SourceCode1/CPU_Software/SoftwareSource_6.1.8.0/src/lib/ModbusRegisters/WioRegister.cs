using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ModbusRegisters
{
    /// <summary>
    /// This class processes calculated status words for WIO.
    /// </summary>
    public class WioRegister : CalculatedSPURegister
    {
        /// <summary>
        /// Constructs a calculated status word
        /// </summary>
        /// <param name="id">The intenral slave id</param>
        /// <param name="address">The base address of this sensor</param>
        /// <param name="externalId">The external slave id of this register</param>
        /// <param name="externalAddress">The external address of this register</param>
        internal WioRegister(byte id, ushort address, byte externalId, ushort externalAddress)
            : base(id, (ushort)(address - 1), externalId, externalAddress)
        {
            this.InternalRegisters = new ushort[3];
            this.InternalRegisters[0] = (ushort)(SlemBase + this.InternalAddress);
            this.InternalRegisters[1] = (ushort)(WioBase + this.InternalAddress);
            this.InternalRegisters[2] = (ushort)(WioBitmapBase + this.InternalAddress);
        }

        /// <summary>
        /// Calculates the value of this register as follows:
        /// Bit  Colour  Condition                          Register(s)  Condition  Internal SPU ref 
        /// 0    Green   Normal       
        /// 1    Yellow  Alarm                              (471)           Bit 2 = 1  Wiobitmap.alarm 
        /// 2    Red     Slowdown                           n/a     
        /// 3    Blue    Disabled                           (468)           = -32761   
        /// 4    Magenta Sensor adjustment                  n/a     
        /// 5            Pre-warning                        n/a     
        /// 6    Blue    Sensor failure                     (468)           ≥ -32766 and ≤ -32763 
        ///                                                 (471)           bit 4 = 1 (Wiobitmap.comms)  or 
        ///                                                                 bit 6 = 1 (Wiobitmap.analoglow ) or 
        ///                                                                 bit 7 = 1 (Wiobitmap.analoghi) 
        ///7    Blue    Sensor failure – no pulse                           n/a     
        ///8    Blue    Sensor failure – low level         (472)            = -32765   
        ///9    Blue    Sensor failure – high level        (472)            = -32764   
        ///10   Blue    Sensor failure – rpm OOR           n/a     
        /// </summary>
        /// <param name="iEnumerable">A list of the SPU registers</param>
        /// <returns>The calculated value of this register.</returns>
        override public ushort CalculateValue(IEnumerable<ModbusRegister> spuRegisters)
        {
            CalculatedAlarmStatusWord result = 0;

            ushort slemValueAddress = this.InternalRegisters[0];
            ushort wioBaseAddress = this.InternalRegisters[1];
            ushort wioBitmapAddress = this.InternalRegisters[2];

            short slemValue = (short)spuRegisters.ElementAt(slemValueAddress).Value;
            short wioValue = (short)spuRegisters.ElementAt(wioBaseAddress).Value;
            WIOBitmap wioBitmap = (WIOBitmap)spuRegisters.ElementAt(wioBitmapAddress).Value;

            if ((wioBitmap & WIOBitmap.Alarm) == WIOBitmap.Alarm)
            {
                result |= CalculatedAlarmStatusWord.Alarm;
            }

            if ((wioBitmap & WIOBitmap.Comms) == WIOBitmap.Comms ||
                (wioBitmap & WIOBitmap.AnalogLow) == WIOBitmap.AnalogLow ||
                (wioBitmap & WIOBitmap.AnalogHigh) == WIOBitmap.AnalogHigh)
            {
                result |= CalculatedAlarmStatusWord.SensorFailure;
            }

            result |= CalculateSlemWioFailure(wioValue);
            result |= CalculateSlemWioFailure(slemValue);

            if (result == 0)
            {
                result |= CalculatedAlarmStatusWord.Normal;
            }

            return (ushort)result;
        }
    }
}
