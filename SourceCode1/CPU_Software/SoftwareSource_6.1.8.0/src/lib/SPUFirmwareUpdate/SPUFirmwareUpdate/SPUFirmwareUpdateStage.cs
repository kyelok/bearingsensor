/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Text;

namespace SPUFirmwareUpdate
{
    /// <summary>
    /// Enum to represent the stages involved in updating the firmware on an SPU
    /// </summary>
    public enum SPUFirmwareUpdateStage : int
    {
        /// <summary>
        /// Update process not started
        /// </summary>
        NotStarted = 0,

        /// <summary>
        /// Reading firmware update file into memory
        /// </summary>
        ReadingUpdateFile,
        
        /// <summary>
        /// Checking firmware versions on SPU
        /// </summary>
        CheckingCurrentVersions,

        /// <summary>
        /// Erasing the SPI flash on SPU
        /// </summary>
        ErasingSPIFlash,

        /// <summary>
        /// Writing program data to SPI flash on SPU
        /// </summary>
        WritingSPIFlash,

        /// <summary>
        /// Erasing DSP flash on slave SPU
        /// </summary>
        ErasingSlaveSPU,

        /// <summary>
        /// Programming DSP flash on slave SPU
        /// </summary>
        ProgrammingSlaveSPU,

        /// <summary>
        /// Erasing DSP flash on master SPU
        /// </summary>
        ErasingMasterSPU,

        /// <summary>
        /// Programming DSP flash on master SPU
        /// </summary>
        ProgrammingMasterSPU,

        /// <summary>
        /// Checking firmware versions on SPU after update
        /// </summary>
        CheckingNewVersions,

        /// <summary>
        /// Marker stage to denote the maximum number of stages
        /// </summary>
        LastStage
    }
}
