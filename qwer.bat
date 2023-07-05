@echo off
rem | Set The Variables for the code. |
title qwer Ransomeware ver. 1.0 (safe)
set passwd=MW9X2U
color 0A
rem taskkill /f /im explorer.exe
cls
:ransomware
echo ----------------------------------------
echo Your Computer is Locked Out!
echo ----------------------------------------
echo Wire Us 500 Dolars and email The Code
echo at code@qwer.com (fake email address)
echo The Code Is: %passwd%
echo This is a safe version to try on real
echo computers.
echo ----------------------------------------
echo Closing the program or restarting the
echo Computer Can can destroy and lose your 
echo data. (This is to scare the user.)
echo ----------------------------------------
Set /p userpasswd=REAL-CODE:
if %userpasswd% == %passwd% goto terminal
cls
echo The Code is Incorrect!
echo ----------------------------------------
goto ransomware

:terminal
title Code Found Succsesfully! (to congrajulatr the user (bad spelling))
cls
echo Do you want to use the command prompt or get the Desktop? (1=Command Prompt, 2=Back To Desktop
set /p option=Choose an Option: 
if %option% == 1 start cmd.exe
if %option% == 2 start explorer.exe
exit
