@echo off
set "currentDirectory=%~dp0"
set cache="%currentDirectory%cache\"

cd %cache%

:uninstallExtensions
echo Uninstalling extensions...

for /l %%i in (1,1,2) do (
    call code --list-extensions > extensions.txt

    for /f "tokens=*" %%f in ('code --list-extensions') do (
        call code --uninstall-extension %%f > nul
    )

    call del extensions.txt
)

cls