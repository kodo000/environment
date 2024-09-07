@echo off
set environmentParameter=%1
set "targetFolder=C:\Users\%username%\AppData\Roaming\Code\User\"

:installEnvironment
call copy ".\settings\setting%environmentParameter%\settings.json" "%targetFolder%" > nul
