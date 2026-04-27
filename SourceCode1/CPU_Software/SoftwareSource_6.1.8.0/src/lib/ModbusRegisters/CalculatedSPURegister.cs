using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics.CodeAnalysis;

namespace ModbusRegisters
{
    /// <summary>
    /// This is the base class that all calculated registers should
    /// sub class.  It provides the common functions for all calculated registers.
    /// </summary>
    public abstract class CalculatedSPURegister : ModbusRegister
    {
        /// <summary>
        /// These bit flags define a calculated status word.
        /// </summary>
        [FlagsAttribute]
        public enum CalculatedAlarmStatusWord : ushort
        {
            Normal = 1,
            Alarm = 2,
            Slowdown = 4,
            Disabled = 8,
            SensorAdjustment = 16,
            PreWarning = 32,
            SensorFailure = 64,
            SensorFailureNoPulse = 128,
            SensorFailureLowLevel = 256,
            SensorFailureHighLevel = 512,
            SensorFailureRpmOOR = 1024
        }

        /// <summary>
        /// These bit flags are used to process the result of the sensor status 1 register
        /// </summary>
        [FlagsAttribute]
        public enum SensorStatus1 : ushort
        {
            Enabled = 1,
            CalibrationMode = 2,
            AlarmMasked = 4,
            DcMode = 8,
            Replaced = 16,
            ExcludedFromSlowRoll = 32
        }

        /// <summary>
        /// These bit flags are used to process the result of the sensor status 2 register
        /// </summary>
        [FlagsAttribute]
        public enum SensorStatus2 : ushort
        {
            Failure = 1,
            FailureLatched = 2,
            Slowdown = 4,
            SlowdownLatched = 8,
            Alarm = 16,
            AlarmLatched = 32,
            DeviationAlarm = 64,
            DeviationAlarmLatched = 128,
            DeviationSlowdown = 256,
            DeviationSlowdownLatched = 512,
            Calibration = 1024,
            CalibrationLatched = 2048,
            PreWarning = 4096,
            PreWarningLatched = 8192,
        }

        /// <summary>
        /// These bit flags are used to process the result of the cylinder status 2 register
        /// </summary>
        [FlagsAttribute]
        public enum CylinderStatus2 : ushort
        {
            Alarm = 1,
            AlarmLatched = 2
        }

        /// <summary>
        /// These bit flags are used to process the result of the SLEM Alarm register
        /// </summary>
        [FlagsAttribute]
        public enum SLEMAlarm : ushort
        {
            OOR = 1,
            Alarm = 2
        }

        /// <summary>
        /// These bit flags are used to process the result of the WIO bitmap register
        /// </summary>
        [FlagsAttribute]
        public enum WIOBitmap : ushort
        {
            AlarmUpper = 1,
            AlarmUpperLatched = 2,
            Alarm = 4,
            AlarmLatched = 8,
            Comms = 16,
            CommsLatched = 32,
            AnalogLow = 64,
            AnalogHigh = 128
        }

        /// <summary>
        /// These fields define the base register addresses that are
        /// used to calcuate the status words
        /// </summary>
        internal const ushort SensorStatus2Base = 146;
        internal const ushort SensorStatus1Base = 117;
        internal const ushort SensorResultBase = 59;
        internal const ushort SensorDeviationBase = 88;
        internal const ushort CylinderStatus2Base = 298;
        internal const ushort CylinderBase = 256;
        internal const ushort CylinderDeviationsBase = 270;
        internal const ushort SlemBase = 472;
        internal const ushort SlemAlarmStatusBase = 473;
        internal const ushort WioBase = 468;
        internal const ushort WioBitmapBase = 471;

        /// <summary>
        /// These fields define the failure values returned by a sensor or cylinder
        /// </summary>
        internal const short CylinderSensorDisabled = -32761;
        internal const short CylinderSensorAdjustment = -32762;
        internal const short SensorFailureNoPulse = -32766;
        internal const short SensorFailureLowLevel = -32765;
        internal const short SensorFailureHighLevel = -32764;
        internal const short SensorFailureRpmOOR = -32763;
        internal const short SensorFailure = -32767;

        /// <summary>
        /// This variable holds the addresses of the internal registers that this
        /// register is calculated from.
        /// </summary>
        private ushort[] internalRegisters;

        /// <summary>
        /// Provides access to the InternalRegisters
        /// </summary>
        [SuppressMessage("Microsoft.Performance", "CA1819:PropertiesShouldNotReturnArrays")]
        protected ushort[] InternalRegisters
        {
            get { return internalRegisters; }
            set { internalRegisters = value; }
        }

        /// <summary>
        /// Constructs a Calculated SPU Register.  This is the base constructor for
        /// all classes that need to create a calculated SPU register.
        /// </summary>
        /// <param name="id">The internal slave id of the register</param>
        /// <param name="address">This value is added to the real address of the registers
        /// that are used to calculate this register.  One is subtracted from this address before calculating the
        /// address when calculating the address of the intenral registers.</param>
        /// <param name="externalId">The external slave id for the register</param>
        /// <param name="externalAddress">The external address of the register</param>
        protected CalculatedSPURegister(byte id, ushort address, byte externalId, ushort externalAddress)
            : base(id, address, externalId, externalAddress, ModbusRegisters.AccessType.Polled)
        {
            /*
            if (address == 0)
            {
                throw new ArgumentOutOfRangeException("id");
            }
             */
        }

        /// <summary>
        /// Maps a ushort holding a sensor result to a calculated status word
        /// </summary>
        /// <param name="sensorResult">The sensor result to map</param>
        /// <returns>A Bit flag enum with the correct bits set.</returns>
        internal static CalculatedAlarmStatusWord CalculateSensorFailure(short sensorResult)
        {
            CalculatedAlarmStatusWord result = 0;

            switch (sensorResult)
            {
                case SensorFailureNoPulse:
                    result = CalculatedAlarmStatusWord.SensorFailureNoPulse;
                    break;
                case SensorFailureLowLevel:
                    result = CalculatedAlarmStatusWord.SensorFailureLowLevel;
                    break;
                case SensorFailureHighLevel:
                    result = CalculatedAlarmStatusWord.SensorFailureHighLevel;
                    break;
                case SensorFailureRpmOOR:
                    result = CalculatedAlarmStatusWord.SensorFailureRpmOOR;
                    break;
                default:
                    //DoNothing;
                    break;
            }

            return result;
        }

        /// <summary>
        /// Maps a cylinder failure to a calculated sensor word
        /// </summary>
        /// <param name="sensorResult">The cylinder failure to map</param>
        /// <returns>>A Bit flag enum with the correct bits set.</returns>
        internal static CalculatedAlarmStatusWord CalculateCylinderFailure(short sensorResult)
        {
            CalculatedAlarmStatusWord result = 0;
            switch (sensorResult)
            {
                case CylinderSensorDisabled:
                    result = CalculatedAlarmStatusWord.Disabled;
                    break;
                case CylinderSensorAdjustment:
                    result = CalculatedAlarmStatusWord.SensorAdjustment;
                    break;
                case SensorFailureNoPulse:
                    result = CalculatedAlarmStatusWord.SensorFailureNoPulse;
                    break;
                case SensorFailureLowLevel:
                    result = CalculatedAlarmStatusWord.SensorFailureLowLevel;
                    break;
                case SensorFailureHighLevel:
                    result = CalculatedAlarmStatusWord.SensorFailureHighLevel;
                    break;
                case SensorFailureRpmOOR:
                    result = CalculatedAlarmStatusWord.SensorFailureRpmOOR;
                    break;
            }

            return result;
        }

        /// <summary>
        /// Maps a SLEM failure to a calculated sensor word
        /// </summary>
        /// <param name="sensorResult">The SLEM failure to map</param>
        /// <returns>>A Bit flag enum with the correct bits set.</returns>
        internal static CalculatedAlarmStatusWord CalculateSlemWioFailure(short sensorResult)
        {
            CalculatedAlarmStatusWord result = 0;

            switch (sensorResult)
            {
                case CylinderSensorDisabled:
                    result = CalculatedAlarmStatusWord.Disabled;
                    break;
                case SensorFailureLowLevel:
                    result = CalculatedAlarmStatusWord.SensorFailureLowLevel;
                    break;
                case SensorFailureHighLevel:
                    result = CalculatedAlarmStatusWord.SensorFailureHighLevel;
                    break;
                case SensorFailure:
                    result = CalculatedAlarmStatusWord.SensorFailureRpmOOR;
                    break;
                default:
                    //DoNothing;
                    break;
            }

            //Check the range of the sensorResult
            if ((sensorResult <= SensorFailureRpmOOR) && (sensorResult >= SensorFailureNoPulse))
            {
                result |= CalculatedAlarmStatusWord.SensorFailure;
            }

            return result;
        }

        /// <summary>
        /// A calculated register should always be updated.
        /// </summary>
        public override bool ShouldUpdate
        {
            get
            {
                return true;
            }
        }

        /// <summary>
        /// Calculated registers are always updated
        /// </summary>
        public override bool IsCalculated
        {
            get
            {
                return true;
            }
        }

        /// <summary>
        /// Gets the addresses of the internal registers that is register is
        /// calculated from.
        /// </summary>
        public ushort[] Registers
        {
            get
            {
                return this.internalRegisters;
            }
        }
    }
}
