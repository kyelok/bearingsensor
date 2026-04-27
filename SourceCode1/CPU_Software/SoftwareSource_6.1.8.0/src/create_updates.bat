@echo off
REM Creates Update packages for ModbusServer and Data Logger
REM Expects to be run from src

IF NOT EXIST Update\CreateUpdatePkg\CreateUpdatePkg\bin\release\CreateUpdatePkg.exe GOTO ERR

echo Creating server update...
Update\CreateUpdatePkg\CreateUpdatePkg\bin\release\CreateUpdatePkg.exe Core\ModbusServer\ModbusServer\bin\Release c:\amot\server server_update.pkg
echo Creating logger update...
Update\CreateUpdatePkg\CreateUpdatePkg\bin\release\CreateUpdatePkg.exe Core\DataCollectionFramework\Framework\bin\Release c:\amot\logger logger_update.pkg

IF NOT EXIST release\c\amot GOTO NORELDIR
echo Found release directory!  Creating XTS-W II update... (no database etc.)
Update\CreateUpdatePkg\CreateUpdatePkg\bin\release\CreateUpdatePkg.exe release\c\amot c:\amot xtsw_update.pkg

:NORELDIR
echo Done!
GOTO FINISH

:ERR
echo No CreateUpdatePkg!
pause

:FINISH
