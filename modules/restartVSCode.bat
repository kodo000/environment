@echo off

:restartVSCode
set "processName=Code.exe"
    tasklist | findstr /i "%processName%" > nul
    if %errorlevel%==0 (
        echo Restarting Visual Studio Code
        taskkill /im %processName% /f > nul
    )

    timeout /t 5 /nobreak > nul
    :: https://xtech.nikkei.com/it/free/NT/WinKeyWord/20040805/1/start.shtml
    call start /b "" "C:\Users\%username%\AppData\Local\Programs\Microsoft VS Code\bin\Code.cmd"
