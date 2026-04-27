@echo off

REM Setup the the path to devenv.exe
REM =====================================================

set DEVENVPATH=
IF EXIST "%ProgramFiles%\Microsoft Visual Studio 10.0\Common7\IDE\devenv.exe" (
   set DEVENVPATH="%ProgramFiles%\Microsoft Visual Studio 10.0\Common7\IDE"
)

IF EXIST "%ProgramFiles(x86)%\Microsoft Visual Studio 10.0\Common7\IDE\devenv.exe" (
   set DEVENVPATH="%ProgramFiles(x86)%\Microsoft Visual Studio 10.0\Common7\IDE"
)

SET PATH=%PATH%;%DEVENVPATH%

REM Clean up the archive folder
REM =====================================================

SET ARCHIVE=%CD%\archive

IF EXIST "%ARCHIVE%" RMDIR /Q /S "%ARCHIVE%"
MKDIR "%ARCHIVE%"

REM Build all of the components
REM =====================================================

call :BuildComponent cleanplugins "%CD%\utils\cleanplugins\cleanplugins.sln" "%CD%\utils\cleanplugins\cleanplugins\bin"
IF %ERRORLEVEL% NEQ 0 GOTO :EOF

call :BuildComponent ModbusServer "%CD%\Core\ModbusServer\ModbusServer.sln" "%CD%\Core\ModbusServer\ModbusServer\bin"
IF %ERRORLEVEL% NEQ 0 GOTO :EOF

call :BuildComponent ExtensionFramework "%CD%\Core\DataCollectionFramework\Framework.sln" "%CD%\Core\DataCollectionFramework\Framework\bin"
IF %ERRORLEVEL% NEQ 0 GOTO :EOF

call :BuildComponent ConfigurationWebsite "%CD%\Core\ConfigurationWebsite\ConfigurationWebsite.sln" "%CD%\Core\ConfigurationWebsite\ConfigurationWebsite\bin"
REM IF %ERRORLEVEL% NEQ 0 GOTO :EOF

call :BuildComponent WebTestClient "%CD%\Tests\WebTestClient\WebTestClient.sln" "%CD%\Tests\WebTestClient\WebTestClient\bin"
IF %ERRORLEVEL% NEQ 0 GOTO :EOF

call :BuildComponent Launcher "%CD%\Core\Launcher\Launcher.sln" "%CD%\Core\Launcher\Launcher\bin"
IF %ERRORLEVEL% NEQ 0 GOTO :EOF

call :BuildComponent Launcher "%CD%\Core\IISStarter\IISStarter.sln" "%CD%\Core\IISStarter\IISStarter\bin"
IF %ERRORLEVEL% NEQ 0 GOTO :EOF

call :BuildComponentSimulator RIA "%CD%\RIA\RIA.sln" "%CD%\RIA\XTS\bin"
IF %ERRORLEVEL% NEQ 0 GOTO :EOF

call :BuildComponent RIA "%CD%\RIA\RIA.sln" "%CD%\RIA\XTS\bin"
IF %ERRORLEVEL% NEQ 0 GOTO :EOF

call :BuildComponent ConvertDatabase "%CD%\utils\ConvertDatabase\ConvertDatabase.sln" "%CD%\utils\ConvertDatabase\ConvertDatabase\bin"
IF %ERRORLEVEL% NEQ 0 GOTO :EOF

call :BuildComponent ConvertDatabase "%CD%\utils\PasswordResetResponse\PasswordResetResponse.sln" "%CD%\utils\PasswordResetResponse\PasswordResetResponse\bin"
IF %ERRORLEVEL% NEQ 0 GOTO :EOF

call :BuildComponent KeyGenerator "%CD%\utils\KeyGenerator\KeyGenerator.sln" "%CD%\utils\KeyGenerator\KeyGenerator\bin"
IF %ERRORLEVEL% NEQ 0 GOTO :EOF

call :BuildComponent RegistrationFileGenerator "%CD%\utils\RegistrationFileGenerator\RegistrationFileGenerator.sln" "%CD%\utils\RegistrationFileGenerator\RegistrationFileGenerator\bin"
IF %ERRORLEVEL% NEQ 0 GOTO :EOF

REM Cleanup the plugins in framework
IF NOT EXIST "%CD%\utils\cleanplugins\cleanplugins\bin\release\cleanplugins.exe" GOTO archive
REM Cleanup the plugins folder
"%CD%\utils\cleanplugins\cleanplugins\bin\release\cleanplugins.exe" "%CD%\Core\DataCollectionFramework\Framework\bin\release\plugins"
"%CD%\utils\cleanplugins\cleanplugins\bin\release\cleanplugins.exe" "%CD%\Core\DataCollectionFramework\Framework\bin\debug\plugins"
GOTO :EOF


REM Utility functions
REM =====================================================

:BuildComponent
echo Starting building component %1...
devenv %2 /Clean
IF %ERRORLEVEL% NEQ 0 (
   ECHO ERROR: Whilst cleaning component %1
   GOTO :EOF
)

devenv %2 /Rebuild Debug
IF %ERRORLEVEL% NEQ 0 (
   ECHO ERROR: Whilst building Debug build for %1
   GOTO :EOF
)

devenv %2 /Rebuild Release
IF %ERRORLEVEL% NEQ 0 (
   ECHO ERROR: Whilst building Release build for %1
   GOTO :EOF
)

echo Archiving components for %1...
MKDIR "%ARCHIVE%\%1"
xcopy /E /Y %3 "%ARCHIVE%\%1"

goto :EOF

:BuildComponentSimulator
echo Starting building component %1...
devenv %2 /Clean
IF %ERRORLEVEL% NEQ 0 (
   ECHO ERROR: Whilst cleaning component %1
   GOTO :EOF
)

devenv %2 /Rebuild "Debug Simulator"
IF %ERRORLEVEL% NEQ 0 (
   ECHO ERROR: Whilst building Debug build for %1
   GOTO :EOF
)

devenv %2 /Rebuild "Release Simulator"
IF %ERRORLEVEL% NEQ 0 (
   ECHO ERROR: Whilst building Release build for %1
   GOTO :EOF
)

:archive
echo Archiving components for %1...
MKDIR "%ARCHIVE%\%1"
xcopy /E /Y %3 "%ARCHIVE%\%1"

goto :EOF