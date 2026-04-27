@echo off

REM Install Key.txt to c:\AMOT

SET KEY_PATH=C:\AMOT

IF EXIST "%KEY_PATH%\Key.txt" (
   ren "%KEY_PATH%\Key.txt" OldKey.txt
echo File Renamed!
)
copy Key.txt "%KEY_PATH%"

echo Key Installed!

echo Done!
pause