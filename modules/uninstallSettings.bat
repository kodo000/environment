@echo off

:uninstallSettings
call del "C:\Users\%username%\AppData\Roaming\Code\User\settings.json"
goto exit

:exit
exit