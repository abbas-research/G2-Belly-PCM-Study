echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="A:\ANSYS Inc\ANSYS Student\v261\fluent/ntbin/win64/winkill.exe"

start "tell.exe" /B "A:\ANSYS Inc\ANSYS Student\v261\fluent\ntbin\win64\tell.exe" DESKTOP-JQCDT2E 57467 CLEANUP_EXITING
timeout /t 1
"A:\ANSYS Inc\ANSYS Student\v261\fluent\ntbin\win64\kill.exe" tell.exe
if /i "%LOCALHOST%"=="DESKTOP-JQCDT2E" (%KILL_CMD% 32244) 
if /i "%LOCALHOST%"=="DESKTOP-JQCDT2E" (%KILL_CMD% 12496) 
if /i "%LOCALHOST%"=="DESKTOP-JQCDT2E" (%KILL_CMD% 36496) 
if /i "%LOCALHOST%"=="DESKTOP-JQCDT2E" (%KILL_CMD% 7892) 
if /i "%LOCALHOST%"=="DESKTOP-JQCDT2E" (%KILL_CMD% 43988) 
if /i "%LOCALHOST%"=="DESKTOP-JQCDT2E" (%KILL_CMD% 31348)
del "C:\Users\user\OneDrive\Desktop\Belly PCM Study\Ansys files\cleanup-fluent-DESKTOP-JQCDT2E-43988.bat"
