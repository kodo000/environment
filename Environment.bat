@echo off
:init
set "currentDirectory=%~dp0"
set "media=%currentDirectory%media\"
set "modules=%currentDirectory%modules\"

:title
set "title=Environment CLI App"
title %title%
cls

:mainMenu
type "%media%ASCIIArt\banner.txt"
type "%media%menus\mainMenu.txt"
choice /c 01234 /n /m "Select an option: "
set /a "mainChoice=%errorlevel%-1"

if %mainChoice%==0 goto exit
cls
if %mainChoice%==1 goto clearInstallation
if %mainChoice%==2 goto installEnvironment
if %mainChoice%==3 goto installExtensions
if %mainChoice%==4 goto uninstallWholeEnvironment

:clearInstallation
call :installEnvironment
call :installExtensions
call "%modules%installEnvironment.bat" %environmentChoice%
call "%modules%installExtensions.bat" %extensionsChoice%
goto restartVSCode

:installEnvironment
call :internetConnectionTest
type "%media%menus\environmentInstallation.txt"

choice /c 01234 /n /m "Select an option: "
set /a "environmentChoice=%errorlevel%-1"

if %environmentChoice%==0 goto exit
cls
if %mainChoice%==1 exit /b

call "%modules%installEnvironment.bat" %environmentChoice%
goto restartVSCode

:installExtensions
call :internetConnectionTest
type "%media%menus\extensionsInstallation.txt"

choice /c 01234 /n /m "Select an option: "
set /a "extensionsChoice=%errorlevel%-1"

if %extensionsChoice%==0 goto exit
cls
if %mainChoice%==1 exit /b

call "%modules%installExtensions.bat" %extensionsChoice%
cd %currentDirectory%
goto restartVSCode

:uninstallWholeEnvironment
cls
call "%modules%uninstallExtensions.bat"
call "%modules%uninstallSettings.bat"
goto restartVSCode

:restartVSCode
call "%modules%restartVSCode.bat"
cls
echo The program has ended please close this window
pause > nul
goto :eof

:internetConnectionTest
call "%modules%internetConnectionTest.bat"
exit /b

:: :exit
:: exit
