using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ModbusRegisters
{
    /// <summary>
    /// This class processes calculated status words for sensors.
    /// </summary>
    public class SensorRegister : CalculatedSPURegister
    {
        /// <summary>
        /// Constructs a calculated status word
        /// </summary>
        /// <param name="id">The intenral slave id</param>
        /// <param name="address">The base address of this sensor (1 - 28)</param>
        /// <param name="externalId">The external slave id of this register</param>
        /// <param name="externalAddress">The external address of this register</param>
        internal SensorRegister(byte id, ushort address, byte externalId, ushort externalAddress)
            : base(id, (ushort)(address - 1), externalId, externalAddress)

        {
            this.InternalRegisters = new ushort[3];
            this.InternalRegisters[0] = (ushort)(SensorStatus1Base + this.InternalAddress);
            this.InternalRegisters[1] = (ushort)(SensorStatus2Base + this.InternalAddress);
            this.InternalRegisters[2] = (ushort)(SensorResultBase + this.InternalAddress);
        }

        /// <summary>
        /// Calculates the value of this register as follows:
        /// Bit  Colour  Condition                      Register(s)     Condition       Internal SPU ref 
        ///  0   Green   Normal       
        ///  1   Yellow  Alarm                          (146–174)       Bit 4 = 1       SensorStatus2.alarm 
        ///  2   Red     Slowdown                       (146-174)       Bit 2 = 1       SensorStatus2.slowdown 
        ///  3   Blue    Disabled                       (117-144)       Bit 0 = 0       ChStatus1.enabled 
        ///  4   Magenta Sensor adjustment              (117-144)       Bit 4 = 1       ChStatus1.replaced 
        ///  5           Pre-warning                    (146-174)       Bit 12 = 1      SensorStatus2.prewarning 
        ///  6   Blue    Sensor failure                 (146-174)       Bit 0 = 1       SensorStatus2.failure 
        ///  7   Blue    Sensor failure – no pulse      (59-87)         = -32766   
        ///  8   Blue    Sensor failure – low level     (59-87)         = -32765   
        ///  9   Blue    Sensor failure – high level    (59-87)         = -32764   
        /// 10   Blue    Sensor failure – rpm OOR       (59-87)         = -32763      
        /// </summary>
        /// <param name="iEnumerable">A list of the SPU registers</param>
        /// <returns>The calculated value of this register.</returns>
        public override ushort CalculateValue(IEnumerable<ModbusRegister> spuRegisters)
        {
            CalculatedAlarmStatusWord result = 0;
            ushort sensorStatus1Address = this.InternalRegisters[0];
            ushort sensorStatus2Address = this.InternalRegisters[1];
            ushort sensorResultAddress = this.InternalRegisters[2];

            SensorStatus1 sensorStatus1 = (SensorStatus1)spuRegisters.ElementAt(sensorStatus1Address).Value;
            SensorStatus2 sensorStatus2 = (SensorStatus2)spuRegisters.ElementAt(sensorStatus2Address).Value;
            short sensorResult = (short)spuRegisters.ElementAt(sensorResultAddress).Value;

            //Calcuate the bits for this register.
            if ((sensorStatus2 & SensorStatus2.Alarm) == SensorStatus2.Alarm)
            {
                result |= CalculatedAlarmStatusWord.Alarm;
            }

            if ((sensorStatus2 & SensorStatus2.Slowdown) == SensorStatus2.Slowdown)
            {
                result |= CalculatedAlarmStatusWord.Slowdown;
            }

            if ((sensorStatus2 & SensorStatus2.PreWarning) == SensorStatus2.PreWarning)
            {
                result |= CalculatedAlarmStatusWord.PreWarning;
            }

            if ((sensorStatus2 & SensorStatus2.Failure) == SensorStatus2.Failure)
            {
                result |= CalculatedAlarmStatusWord.SensorFailure;
            }

            if ((sensorStatus1 & SensorStatus1.Enabled) != SensorStatus1.Enabled)
            {
                result |= CalculatedAlarmStatusWord.Disabled;
            }

            if ((sensorStatus1 & SensorStatus1.Replaced) == SensorStatus1.Replaced)
            {
                result |= CalculatedAlarmStatusWord.SensorAdjustment;
            }

            result |= CalculateSensorFailure(sensorResult);

            if (result == 0)
                result |= CalculatedAlarmStatusWord.Normal;

            return (ushort)result;
        }
    }
}
