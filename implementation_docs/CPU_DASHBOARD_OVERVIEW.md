# CPU Dashboard Software — Overview & Bug Analysis

> **Audience**: engineers handling the CPU-side dashboard (the Windows-resident Silverlight web app that talks to the SPU firmware over Modbus).
> **Status (2026-04-28)**: architectural overview + Bug 2 / Bug 3 root cause analysis. **Bug 2 and Bug 3 fixes have been applied to `src/Core/WebService/Exports/VerificationData.cs`** but cannot be built or verified locally (no .NET 4 / Silverlight 5 toolchain on this dev box). The patches are intended to be picked up next time someone with a working VS2010+Silverlight VM rebuilds the dashboard. See the patch commits in git history for the exact change.

---

## Architecture overview

The CPU dashboard is a substantial codebase (759 C# files, 88 XAML files, 103 .csproj projects) built on Microsoft Silverlight 5 + .NET 4. It runs in a browser as a Rich Internet Application (RIA), talks to a Windows-side Modbus master over WCF web services, and the master in turn talks to the SPU firmware over RS-485 Modbus RTU.

### Top-level structure

```
SourceCode1/CPU_Software/SoftwareSource_6.1.8.0/
├── src/
│   ├── Core/                   Server-side WCF web services + plugins
│   │   ├── ConfigurationDB/        Persistent SPU configuration storage
│   │   ├── ConfigurationWebsite/   Admin web UI
│   │   ├── DataCollectionFramework/ Plugin framework for sensor data
│   │   ├── FaultErrorIndicators/   Alarm state aggregation
│   │   ├── GLMachineMeasurementPlugin/  Engine-specific data plugin
│   │   ├── HelperClasses/          Utilities
│   │   ├── ReportsPlugin/          Report generation framework
│   │   ├── Reports/                AMOTReport (CSV/HTML report bodies)
│   │   ├── WebService/             WCF service definitions including
│   │   │                           Exports/VerificationData.cs (CSV exports)
│   │   └── WebServiceObjects/      Engine + diagnostics data contracts
│   ├── RIA/                    Silverlight client app
│   │   ├── XTS.sln                 The main solution
│   │   ├── XTS/                    Browser-side UI (Diagnostics.xaml.cs etc.)
│   │   ├── XTSData/                Client-side data layer
│   │   ├── XTSDataProviderWeb/     WCF client wrappers
│   │   └── XTSDataProviderSimulator/ Mock for testing
│   ├── Update/                 Update package generation + admin website
│   ├── lib/                    Shared libraries (SPUSDK, ModbusDb, etc.)
│   ├── utils/                  Build-time tools
│   ├── shared/                 fbwfapi (file-based write filter for embedded Windows)
│   ├── Tests/                  Unit tests
│   ├── misc/                   SPU configuration CSV defaults
│   └── wes/                    Windows Embedded Standard configuration
└── SoftwareRelease__6.1.8.0/   Pre-built deployment artifacts
```

### Tech stack

Per the customer's instructions:
- Microsoft Visual Studio 2010 Professional
- Microsoft .NET Framework 4
- Microsoft Silverlight 5 SDK
- Microsoft Expression Blend 5 Beta + SDK
- Telerik RadControls for Silverlight 5 (2012_1_0326)

### End-of-life concerns

- **Silverlight reached end-of-support in October 2021.** No modern browser supports Silverlight. The dashboard will eventually need a UI rewrite (Blazor, React, plain HTML5, etc.).
- **.NET Framework 4** is still supported (LTS) but ~2010 era.
- **Visual Studio 2010** is end-of-life (last supported 2020).
- **Telerik RadControls for Silverlight** discontinued.

This is a separate workstream from the SPU firmware refactor. Out of scope for the current project.

---

## Bug 2 — Firmware version not displayed correctly in `system_info.csv`

**Original report (Korean, translated)**:
> system_info.csv file을 extract했을 때 "firmware version"이 정상적으로 표기되지 않습니다.
> When extracting system_info.csv, "firmware version" is not displayed correctly.

### Root cause

**File**: `src/Core/WebService/Exports/VerificationData.cs`
**Function**: `SPUVersionToSTring()` at lines 68-95
**Caller**: `ExportSPUFirmwareVersion()` at line 97

```csharp
private static string SPUVersionToSTring(ushort spuVersion)
{
    string versionAsString = string.Empty;
    UInt16 major = 0;
    UInt16 minor = 0;

    byte[] bytes = BitConverter.GetBytes(spuVersion);

    if (bytes != null)
    {
        if (bytes.Length != 2) {
            major = bytes[0];
        } else {
            minor = bytes[0];
            major = bytes[1];
        }
    }

    if (major != 0 && minor != 0)              // <<<<< BUG #1
    {
        versionAsString = string.Format("{0}.{1}", major, minor);    // <<<<< BUG #2
    }
    return versionAsString;
}
```

There are **two bugs in this function**.

#### Bug 2a — Returns empty string when minor (or major) version is 0

The condition `if (major != 0 && minor != 0)` returns an empty string for any version where either field is zero. Examples:
- Version 7.00 (0x0700): major=7, minor=0 → returns ""
- Version 6.00 (0x0600): major=6, minor=0 → returns ""

This affects any "round" firmware version. Should be `if (major != 0 || minor != 0)` (or just unconditional formatting).

#### Bug 2b — Treats raw bytes as decimal digits instead of BCD

The firmware (SPU side, in `man.c`) stores version as `0x620` for v6.20 — that's BCD encoding where `0x6` = "6", `0x20` = "20" (interpreted as decimal-encoded byte).

But the dashboard converts:
- `bytes[0] = 0x20` → `minor = 32` (treats 0x20 as binary integer)
- `bytes[1] = 0x06` → `major = 6`
- Output: `"6.32"` — WRONG.

For firmware v6.20, the correct display is "6.20". For v6.10 (`0x610`): `bytes[0] = 0x10` → minor = 16 (should be "10"), major = 6 → output "6.16" instead of "6.10".

The fix is to interpret each byte as BCD (high nibble = tens digit, low nibble = ones digit):
```csharp
int minorBcd = ((bytes[0] >> 4) & 0xF) * 10 + (bytes[0] & 0xF);  // 0x20 → 20
int majorBcd = bytes[1];                                            // 6 → 6
versionAsString = string.Format("{0}.{1:D2}", majorBcd, minorBcd);  // "6.20"
```

### Recommended fix

```csharp
private static string SPUVersionToSTring(ushort spuVersion)
{
    if (spuVersion == 0) return string.Empty;
    
    byte[] bytes = BitConverter.GetBytes(spuVersion);
    if (bytes.Length < 2) return spuVersion.ToString();
    
    // Firmware stores version as BCD: high byte = major, low byte = minor (BCD).
    // E.g., 0x0620 = "6.20", 0x0710 = "7.10", 0x0700 = "7.00".
    int major = bytes[1];
    int minorTens = (bytes[0] >> 4) & 0xF;
    int minorOnes = bytes[0] & 0xF;
    int minor = minorTens * 10 + minorOnes;
    
    return string.Format("{0}.{1:D2}", major, minor);
}
```

Test cases (would catch both bugs):
- v6.20 (`0x0620`) → "6.20"
- v7.00 (`0x0700`) → "7.00"
- v6.10 (`0x0610`) → "6.10"
- v8.70 (`0x0870`) → "8.70" (anticipated v8.7-compliance release)

### Severity

**Medium**. Doesn't affect engine operation but breaks the surveyor-facing CSV output, which is a customer-facing artifact. Surveyors could end up with wrong version numbers in audit trails.

---

## Bug 3 — `KValueDamageMonitoring` value not displayed correctly

**Original report (Korean, translated)**:
> 같은 파일에 기록된 정보 중 "KValueDamageMonitoring" 값이 정상적으로 표기되지 않습니다.
> Among the information recorded in the same file, the "KValueDamageMonitoring" value is not displayed correctly.

### Root cause

**File**: `src/Core/WebService/Exports/VerificationData.cs`
**Lines**: ~366 (in `modbusConstants` array), 393-404 (in the foreach loop)

```csharp
List<ModbusConstants> modbusConstants = new List<ModbusConstants>
{
    // ... many entries ...
    ModbusConstants.KValueDamageMonitoring,        // <<<<< at register 4617
    ModbusConstants.BetaValueDamageMonitoring,
    ModbusConstants.RpmLevelXDamageMonitoring,
    // ...
};

foreach (ModbusConstants register in modbusConstants)
{
    short value = 0;
    SPUSDK.AccessModbus(() => 
    {
        using (TimedLock.Lock(sdk.syncRoot))
        {
            value = (short)sdk.ReadHoldingRegisters(1, (ushort)register, 1)[0];   // <<<<< BUG
        }
    });
    WritePair(writer, Enum.GetName(typeof(ModbusConstants), register), value);
}
```

The Modbus register is read as a `ushort` (which is correct — Modbus registers are 16-bit unsigned), then cast to `short` (signed 16-bit). For values ≤ 32767 the cast is harmless. But the firmware stores K-value, beta, etc. as scaled fixed-point values (per `man.c`):

```c
// In legacy firmware man.c around line 1090:
reflevelx = damagemon.reflevelx;
reflevelx /= 100000;  // divide down as stored as * 100000 e.g. 0.0001 (default) as 10
```

So a "1" in the spec for k=8 would actually be stored as `8`, but a fractional K like 0.5 would be stored as `50000` (= 0.5 × 100000). When read by the dashboard:
- 50000 as a `ushort` is 50000.
- Cast to `short` → -15536 (because 50000 > 32767, the high bit is set).
- Written to CSV as "-15536".

That's the bug. The cast to `short` corrupts large unsigned values.

But there's a SECOND issue: even if the cast were fixed, the dashboard isn't applying the `* 100000` scale factor when displaying. Customer would see "50000" instead of "0.5" — confusing without context.

### Recommended fix

Two parts:

**Part A — Don't cast to signed**:
```csharp
ushort value = sdk.ReadHoldingRegisters(1, (ushort)register, 1)[0];
WritePair(writer, Enum.GetName(typeof(ModbusConstants), register), value);
```

**Part B — Apply the scale factor for fixed-point parameters**:
```csharp
// In WritePair or a per-parameter formatter:
if (register == ModbusConstants.KValueDamageMonitoring ||
    register == ModbusConstants.BetaValueDamageMonitoring ||
    register == ModbusConstants.RefLevelXDamageMonitoring ||
    register == ModbusConstants.PresentStateXDamageMonitoring ||
    register == ModbusConstants.RpmLevelXDamageMonitoring)
{
    double scaled = value / 100000.0;
    WritePair(writer, Enum.GetName(typeof(ModbusConstants), register), scaled);
}
else
{
    WritePair(writer, Enum.GetName(typeof(ModbusConstants), register), value);
}
```

Cleaner: a per-register descriptor table that includes the scale factor, instead of the per-name if-tree.

### Severity

**Medium-High**. The CSV is meant for surveyor verification; wrong values undermine that purpose. Customers have been working around this by knowing "the K-value display is wrong, just trust the SPU directly."

---

## Recommended fixes — execution plan

1. ✅ **Patches applied to `VerificationData.cs`** (in this repo's source tree). Bug 2 rewrites `SPUVersionToSTring()` to decode the version register as BCD; Bug 3 changes the local `short value` to `ushort value` so the upper-half-of-the-range damage-monitoring values aren't sign-flipped to negative numbers. **Not yet built or run** — needs a VS2010+Silverlight5 VM.
2. **Add unit tests** for `SPUVersionToSTring()` (currently no tests in `Tests/`; the function has only manual UI verification). Recommended cases: 0x0620 → "6.20"; 0x0700 → "7.00"; 0x0710 → "7.10"; 0x0805 → "8.05"; 0x0000 → "".
3. **Add a per-register descriptor table** that includes scale factor + display format. Replaces the magic if-trees.
4. **Add an integration test** that exports `system_info.csv` against a synthetic SPU and asserts the file contents are correct (especially version + K-value rows).
5. **Plan the Silverlight migration** as a separate phase — this codebase has 759 C# files and a deprecated UI runtime.

### Where to start

- VS2010 + Silverlight 5 SDK + Telerik RadControls install on a Windows VM.
- Open `src/RIA/XTS.sln`.
- Build to verify the toolchain works.
- Apply Bug 2 + Bug 3 patches in `src/Core/WebService/Exports/VerificationData.cs`.
- Run the existing tests in `src/Tests/`.
- Add new unit tests for `SPUVersionToSTring()`.
- Generate a fresh deployment package via `src/Update/CreateUpdatePkg`.
- Roll out to dashboard servers.

Estimated time for Bug 2 + Bug 3 fixes including tests: ~2 engineer-days. The full Silverlight migration is multi-month work.

---

## Architecture risks (separate from the bugs)

1. **Silverlight EOL**: dashboard browser support will continue to erode. By 2027 most users may be unable to access it.
2. **Single SPU per instance**: the data layer assumes one SPU per dashboard installation. Multi-SPU support would require WCF interface changes.
3. **Modbus register namespace coupling**: `ModbusConstants.cs` is the canonical map; if SPU firmware changes a register address, the dashboard breaks silently. Consider versioning the Modbus map.
4. **CSV format coupling with surveyor expectations**: changes to CSV column order or field names break surveyor tools. Consider versioning the CSV format.
