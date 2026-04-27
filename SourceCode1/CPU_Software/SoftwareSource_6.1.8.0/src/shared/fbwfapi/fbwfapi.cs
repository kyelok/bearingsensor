using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;

namespace FBWF
{
    /// <summary>
    /// This class holds the p/invokes for controling the File-Based Write Filter in Windows Embedded
    /// </summary>
    class Fbwfapi
    {
        /// <summary>
        /// Enbable the write filter
        /// </summary>
        /// <returns>True if the write filter is enabled, otherwise false.</returns>
        public static bool Enable()
        {
            if (NativeMethods.FbwfEnableFilter() == NativeMethods.ERROR_SUCCESS)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// Disables the write filter
        /// </summary>
        /// <returns>True if the filter is disabled, otherwise false.</returns>
        public static bool Disable()
        {
            if (NativeMethods.FbwfDisableFilter() == NativeMethods.ERROR_SUCCESS)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// Gets the enabled state of the filter for the current session and the next session
        /// </summary>
        /// <param name="current">Set to true if the filter is enabled for this session</param>
        /// <param name="next">Set to true if the filter is enabled for the next session</param>
        static public void IsEnabled(out bool current, out bool next)
        {
            UInt32 currentSession;
            UInt32 nextSession;

            current = false;
            next = false;

            if (NativeMethods.FbwfIsFilterEnabled(out currentSession, out nextSession) == NativeMethods.ERROR_SUCCESS)
            {
                if (currentSession == 1)
                {
                    current = true;
                }

                if (nextSession == 1)
                {
                    next = true;
                }
            }
        }

        /// <summary>
        /// Enables a file or path for writting
        /// </summary>
        /// <param name="volume">The volume that the file or directory is own.</param>
        /// <param name="path">The file or directory to enable writting for.</param>
        /// <returns>True if writting is enabled for the file or directory.</returns>
        static public bool EnableWrite(string volume, string path)
        {
            bool result = false;

            if (NativeMethods.FbwfAddExclusion(volume, path) == NativeMethods.ERROR_SUCCESS)
            {
                result = true;
            }

            return result;
        }

        /// <summary>
        /// Disables a file or path for writting
        /// </summary>
        /// <param name="volume">The volume that the file or directory is own.</param>
        /// <param name="path">The file or directory to enable writting for.</param>
        /// <returns>True if writting is disabled for the file or directory.</returns>
        static public bool DisableWrite(string volume, string path)
        {
            bool result = false;

            if (NativeMethods.FbwfRemoveExclusion(volume, path) == NativeMethods.ERROR_SUCCESS)
            {
                result = true;
            }

            return result;
        }

        /// <summary>
        /// Commits a file or directory to the disk
        /// </summary>
        /// <returns>True if the file is commited</returns>
        static public uint Commit(string volume, string file)
        {
            return NativeMethods.FbwfCommitFile(volume, file);
        }

        /// <summary>
        /// Rollbacks a file or directory so that it will not be committed
        /// </summary>
        /// <param name="volume">The volume that the directory of file is on</param>
        /// <param name="path">The file or directory to rollback</param>
        /// <returns>True if the file is rolled back</returns>
        static public bool Rollback(string volume, string []files)
        {
            bool result = false;

            foreach (string file in files)
            {
                uint returnCode = NativeMethods.FbwfRestoreFile(volume, file);

                if (returnCode == NativeMethods.ERROR_SUCCESS)
                {
                    result = true;
                }
                else
                {
                    result = false;
                }
            }

            return result;
        }

        internal class NativeMethods
        {

            /// <summary>
            /// Error success
            /// </summary>
            public const int ERROR_SUCCESS = 0;

            /// FBWF_MIN_CACHE_THRESHOLD -> 16
            public const int FBWF_MIN_CACHE_THRESHOLD = 16;

            /// FBWF_DEFAULT_CACHE_THRESHOLD -> 64
            public const int FBWF_DEFAULT_CACHE_THRESHOLD = 64;

            /// FBWF_MAX_CACHE_THRESHOLD -> 1024
            public const int FBWF_MAX_CACHE_THRESHOLD = 1024;


            [System.Runtime.InteropServices.StructLayoutAttribute(System.Runtime.InteropServices.LayoutKind.Sequential, CharSet = System.Runtime.InteropServices.CharSet.Unicode)]
            public struct FbwfCacheDetail
            {

                /// ULONG->unsigned int
                public uint cacheSize;

                /// ULONG->unsigned int
                public uint openHandleCount;

                /// ULONG->unsigned int
                public uint fileNameLength;

                /// WCHAR[1]
                [System.Runtime.InteropServices.MarshalAsAttribute(System.Runtime.InteropServices.UnmanagedType.ByValTStr, SizeConst = 1)]
                public string fileName;
            }

            [System.Runtime.InteropServices.StructLayoutAttribute(System.Runtime.InteropServices.LayoutKind.Sequential)]
            public struct FbwfMemoryUsage
            {

                /// ULONG->unsigned int
                public uint currCacheThreshold;

                /// ULONG->unsigned int
                public uint nextCacheThreshold;

                /// ULONG->unsigned int
                public uint dirStructure;

                /// ULONG->unsigned int
                public uint fileData;
            }

            [System.Runtime.InteropServices.StructLayoutAttribute(System.Runtime.InteropServices.LayoutKind.Sequential)]
            public struct FbwfFSInfo
            {

                /// LARGE_INTEGER->_LARGE_INTEGER
                public LARGE_INTEGER TotalAllocationUnits;

                /// LARGE_INTEGER->_LARGE_INTEGER
                public LARGE_INTEGER AvailableAllocationUnits;

                /// ULONG->unsigned int
                public uint SectorsPerAllocationUnit;

                /// ULONG->unsigned int
                public uint BytesPerSector;
            }

            [System.Runtime.InteropServices.StructLayoutAttribute(System.Runtime.InteropServices.LayoutKind.Explicit)]
            public struct LARGE_INTEGER
            {

                /// Anonymous_9320654f_2227_43bf_a385_74cc8c562686
                [System.Runtime.InteropServices.FieldOffsetAttribute(0)]
                public Anonymous_9320654f_2227_43bf_a385_74cc8c562686 Struct1;

                /// Anonymous_947eb392_1446_4e25_bbd4_10e98165f3a9
                [System.Runtime.InteropServices.FieldOffsetAttribute(0)]
                public Anonymous_947eb392_1446_4e25_bbd4_10e98165f3a9 u;

                /// LONGLONG->__int64
                [System.Runtime.InteropServices.FieldOffsetAttribute(0)]
                public long QuadPart;
            }

            [System.Runtime.InteropServices.StructLayoutAttribute(System.Runtime.InteropServices.LayoutKind.Sequential)]
            public struct Anonymous_9320654f_2227_43bf_a385_74cc8c562686
            {

                /// DWORD->unsigned int
                public uint LowPart;

                /// LONG->int
                public int HighPart;
            }

            [System.Runtime.InteropServices.StructLayoutAttribute(System.Runtime.InteropServices.LayoutKind.Sequential)]
            public struct Anonymous_947eb392_1446_4e25_bbd4_10e98165f3a9
            {

                /// DWORD->unsigned int
                public uint LowPart;

                /// LONG->int
                public int HighPart;
            }

            /// Return Type: ULONG->unsigned int
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfEnableFilter")]
            public static extern uint FbwfEnableFilter();


            /// Return Type: ULONG->unsigned int
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfDisableFilter")]
            public static extern uint FbwfDisableFilter();

            /// Return Type: ULONG->unsigned int
            ///volume: PWCHAR->WCHAR*
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfProtectVolume")]
            public static extern uint FbwfProtectVolume([System.Runtime.InteropServices.InAttribute()] [System.Runtime.InteropServices.MarshalAsAttribute(System.Runtime.InteropServices.UnmanagedType.LPWStr)] string volume);

            /// Return Type: ULONG->unsigned int
            ///volume: PWCHAR->WCHAR*
            ///removeExclusionList: ULONG->unsigned int
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfUnprotectVolume")]
            public static extern uint FbwfUnprotectVolume([System.Runtime.InteropServices.InAttribute()] [System.Runtime.InteropServices.MarshalAsAttribute(System.Runtime.InteropServices.UnmanagedType.LPWStr)] string volume, uint removeExclusionList);


            /// Return Type: ULONG->unsigned int
            ///threshold: ULONG->unsigned int
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfSetCacheThreshold")]
            public static extern uint FbwfSetCacheThreshold(uint threshold);


            /// Return Type: ULONG->unsigned int
            ///currSession: ULONG->unsigned int
            ///volumeList: PVOID->void*
            ///size: PULONG->ULONG*
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfGetVolumeList")]
            public static extern uint FbwfGetVolumeList(uint currSession, System.IntPtr volumeList, System.IntPtr size);


            /// Return Type: ULONG->unsigned int
            ///currentSession: PULONG->ULONG*
            ///nextSession: PULONG->ULONG*
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfIsFilterEnabled")]
            public static extern uint FbwfIsFilterEnabled([System.Runtime.InteropServices.OutAttribute()] out uint currentSession, [System.Runtime.InteropServices.OutAttribute()] out uint nextSession);


            /// Return Type: ULONG->unsigned int
            ///volume: PWCHAR->WCHAR*
            ///currentSession: PULONG->ULONG*
            ///nextSession: PULONG->ULONG*
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfIsVolumeProtected")]
            public static extern uint FbwfIsVolumeProtected([System.Runtime.InteropServices.InAttribute()] [System.Runtime.InteropServices.MarshalAsAttribute(System.Runtime.InteropServices.UnmanagedType.LPWStr)] string volume, [System.Runtime.InteropServices.OutAttribute()] out uint currentSession, [System.Runtime.InteropServices.OutAttribute()] out uint nextSession);


            /// Return Type: ULONG->unsigned int
            ///usage: PFbwfMemoryUsage->_FbwfMemoryUsage*
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfGetMemoryUsage")]
            public static extern uint FbwfGetMemoryUsage(ref FbwfMemoryUsage usage);


            /// Return Type: ULONG->unsigned int
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfFindClose")]
            public static extern uint FbwfFindClose();


            /// Return Type: ULONG->unsigned int
            ///cacheDetail: PFbwfCacheDetail->_FbwfCacheDetail*
            ///size: PULONG->ULONG*
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfFindNext")]
            public static extern uint FbwfFindNext(ref FbwfCacheDetail cacheDetail, System.IntPtr size);


            /// Return Type: ULONG->unsigned int
            ///volume: PWCHAR->WCHAR*
            ///cacheDetail: PFbwfCacheDetail->_FbwfCacheDetail*
            ///size: PULONG->ULONG*
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfFindFirst")]
            public static extern uint FbwfFindFirst([System.Runtime.InteropServices.InAttribute()] [System.Runtime.InteropServices.MarshalAsAttribute(System.Runtime.InteropServices.UnmanagedType.LPWStr)] string volume, ref FbwfCacheDetail cacheDetail, [In, Out] ref int size);


            /// Return Type: ULONG->unsigned int
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfEnableCompression")]
            public static extern uint FbwfEnableCompression();


            /// Return Type: ULONG->unsigned int
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfDisableCompression")]
            public static extern uint FbwfDisableCompression();


            /// Return Type: ULONG->unsigned int
            ///currentSession: PULONG->ULONG*
            ///nextSession: PULONG->ULONG*
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfIsCompressionEnabled")]
            public static extern uint FbwfIsCompressionEnabled([System.Runtime.InteropServices.OutAttribute()] out uint currentSession, [System.Runtime.InteropServices.OutAttribute()] out uint nextSession);


            /// Return Type: ULONG->unsigned int
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfEnableCachePreAllocation")]
            public static extern uint FbwfEnableCachePreAllocation();


            /// Return Type: ULONG->unsigned int
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfDisableCachePreAllocation")]
            public static extern uint FbwfDisableCachePreAllocation();


            /// Return Type: ULONG->unsigned int
            ///currentSession: PULONG->ULONG*
            ///nextSession: PULONG->ULONG*
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfIsCachePreAllocationEnabled")]
            public static extern uint FbwfIsCachePreAllocationEnabled([System.Runtime.InteropServices.OutAttribute()] out uint currentSession, [System.Runtime.InteropServices.OutAttribute()] out uint nextSession);


            /// Return Type: ULONG->unsigned int
            ///volume: PWCHAR->WCHAR*
            ///path: PWCHAR->WCHAR*
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfAddExclusion")]
            public static extern uint FbwfAddExclusion([System.Runtime.InteropServices.InAttribute()] [System.Runtime.InteropServices.MarshalAsAttribute(System.Runtime.InteropServices.UnmanagedType.LPWStr)] string volume, [System.Runtime.InteropServices.InAttribute()] [System.Runtime.InteropServices.MarshalAsAttribute(System.Runtime.InteropServices.UnmanagedType.LPWStr)] string path);


            /// Return Type: ULONG->unsigned int
            ///volume: PWCHAR->WCHAR*
            ///path: PWCHAR->WCHAR*
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfRemoveExclusion")]
            public static extern uint FbwfRemoveExclusion([System.Runtime.InteropServices.InAttribute()] [System.Runtime.InteropServices.MarshalAsAttribute(System.Runtime.InteropServices.UnmanagedType.LPWStr)] string volume, [System.Runtime.InteropServices.InAttribute()] [System.Runtime.InteropServices.MarshalAsAttribute(System.Runtime.InteropServices.UnmanagedType.LPWStr)] string path);


            /// Return Type: ULONG->unsigned int
            ///volume: PWCHAR->WCHAR*
            ///currSession: ULONG->unsigned int
            ///exclusionList: PVOID->void*
            ///size: PULONG->ULONG*
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfGetExclusionList")]
            public static extern uint FbwfGetExclusionList([System.Runtime.InteropServices.InAttribute()] [System.Runtime.InteropServices.MarshalAsAttribute(System.Runtime.InteropServices.UnmanagedType.LPWStr)] string volume, uint currSession, System.IntPtr exclusionList, System.IntPtr size);


            /// Return Type: ULONG->unsigned int
            ///volume: PWCHAR->WCHAR*
            ///path: PWCHAR->WCHAR*
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfCommitFile")]
            public static extern uint FbwfCommitFile([System.Runtime.InteropServices.InAttribute()] [System.Runtime.InteropServices.MarshalAsAttribute(System.Runtime.InteropServices.UnmanagedType.LPWStr)] string volume, [System.Runtime.InteropServices.InAttribute()] [System.Runtime.InteropServices.MarshalAsAttribute(System.Runtime.InteropServices.UnmanagedType.LPWStr)] string path);


            /// Return Type: ULONG->unsigned int
            ///volume: PWCHAR->WCHAR*
            ///path: PWCHAR->WCHAR*
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfRestoreFile")]
            public static extern uint FbwfRestoreFile([System.Runtime.InteropServices.InAttribute()] [System.Runtime.InteropServices.MarshalAsAttribute(System.Runtime.InteropServices.UnmanagedType.LPWStr)] string volume, [System.Runtime.InteropServices.InAttribute()] [System.Runtime.InteropServices.MarshalAsAttribute(System.Runtime.InteropServices.UnmanagedType.LPWStr)] string path);


            /// Return Type: ULONG->unsigned int
            ///threshold: ULONG->unsigned int
            ///event: HANDLE->void*
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfCacheThresholdNotification")]
            public static extern uint FbwfCacheThresholdNotification(uint threshold, System.IntPtr @event);


            /// Return Type: ULONG->unsigned int
            ///currentSession: PULONG->ULONG*
            ///nextSession: PULONG->ULONG*
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfGetSizeDisplay")]
            public static extern uint FbwfGetSizeDisplay([System.Runtime.InteropServices.OutAttribute()] out uint currentSession, [System.Runtime.InteropServices.OutAttribute()] out uint nextSession);


            /// Return Type: ULONG->unsigned int
            ///displayMode: ULONG->unsigned int
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfSetSizeDisplay")]
            public static extern uint FbwfSetSizeDisplay(uint displayMode);


            /// Return Type: ULONG->unsigned int
            ///volume: PWCHAR->WCHAR*
            ///fsInfo: PFbwfFSInfo->_FbwfFSInfo*
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfGetActualSize")]
            public static extern uint FbwfGetActualSize([System.Runtime.InteropServices.InAttribute()] [System.Runtime.InteropServices.MarshalAsAttribute(System.Runtime.InteropServices.UnmanagedType.LPWStr)] string volume, ref FbwfFSInfo fsInfo);


            /// Return Type: ULONG->unsigned int
            ///volume: PWCHAR->WCHAR*
            ///fsInfo: PFbwfFSInfo->_FbwfFSInfo*
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfGetVirtualSize")]
            public static extern uint FbwfGetVirtualSize([System.Runtime.InteropServices.InAttribute()] [System.Runtime.InteropServices.MarshalAsAttribute(System.Runtime.InteropServices.UnmanagedType.LPWStr)] string volume, ref FbwfFSInfo fsInfo);


            /// Return Type: ULONG->unsigned int
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfInitializeNotifications")]
            public static extern uint FbwfInitializeNotifications();


            /// Return Type: ULONG->unsigned int
            [System.Runtime.InteropServices.DllImportAttribute("fbwflib.dll", EntryPoint = "FbwfUninitializeNotifications")]
            public static extern uint FbwfUninitializeNotifications();

        }
    }
}
