@echo off

:internetConnectionTest
call :firstTest
call :secondTest
goto :eof

:firstTest
set "server1=www.youtube.com"
call ping -n 1 %server1% > nul

if %errorlevel% equ 1 (
    goto noInternetConnection
)

exit /b

:secondTest
set "server2=www.google.com"
call ping -n 1 %server2% > nul

if %errorlevel% equ 1 (
    goto noInternetConnection
)

exit /b

:noInternetConnection
    echo    ***************************************************************
    echo    *                                                             *
    echo    *            Oh no! No internet connection detected!          *
    echo    *              Make sure you're online to continue.           *
    echo    *                                                             *
    echo    ***************************************************************
    echo.
    choice /c 01 /n /m "Press [1 to retry] or [0 to exit]: "
    set /a "choice=%errorlevel%-1"

    if %choice%==0 goto exit
    cls
    if %choice%==1 goto internetConnectionTest

:exit
exit
