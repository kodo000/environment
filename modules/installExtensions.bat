@echo off
set packParameter=%1

:installExtensions
if %packParameter%==1 goto pack1
if %packParameter%==2 goto pack2
if %packParameter%==3 goto pack3
if %packParameter%==4 goto pack4

:pack1
call :uninstallCurrentPack

set extensionsPack= ^
SpaceBox.monospace-idx-theme ^
BhargavDetroja.export-your-extensions ^
Dart-Code.dart-code ^
drcika.apc-extension ^
kevinwolfcr.vscode-quiet-canvas ^
miguelsolorio.symbols ^
raunofreiberg.vesper ^
shufo.vscode-blade-formatter ^
nilssoderman.batch-runner ^
rechinformatica.rech-editor-batch ^
ms-dotnettools.csdevkit ^
ms-dotnettools.vscodeintellicode-csharp ^
donjayamanne.python-extension-pack ^
ms-python.debugpy ^
deerawan.vscode-faker ^
xdebug.php-pack ^
bmewburn.vscode-intelephense-client ^
MehediDracula.php-namespace-resolver

call :installPack
goto :eof

:pack2
call :uninstallCurrentPack

set extensionsPack= ^
BhargavDetroja.export-your-extensions ^
Catppuccin.catppuccin-vsc-icons ^
donjayamanne.python-environment-manager ^
dP-faces.dpico-theme ^
EmeAim.aim ^
Gerrnperl.outline-map ^
GihanSiriwardhana.error-help ^
Goopware.raythis ^
IgorSbitnev.error-gutters ^
KevinRose.vsc-python-indent ^
klc1.vsbatdev ^
ms-dotnettools.csdevkit ^
ms-dotnettools.vscodeintellicode-csharp ^
donjayamanne.python-extension-pack ^
ms-python.debugpy ^
Zignd.html-css-class-completion ^
AnbuselvanRocky.bootstrap5-vscode ^
Zaczero.bootstrap-v4-snippets ^
dbaeumer.vscode-eslint ^
pranaygp.vscode-css-peek ^
sburg.vscode-javascript-booster ^
nicklasxyz.gleam-themes ^
NilsSoderman.batch-runner ^
rechinformatica.rech-editor-batch ^
njpwerner.autodocstring ^
pixy.patife ^
StevenPhan.framer-syntax ^
VisualStudioExptTeam.intellicode-api-usage-examples ^
VisualStudioExptTeam.vscodeintellicode ^
deerawan.vscode-faker ^
ZacZhuoZhang.zen-dark-z ^
Zeno.doodles ^
Zeno.hijab ^
Zeno.mihale

call :installPack
goto :eof

:pack3
call :uninstallCurrentPack

set extensionsPack= ^
BhargavDetroja.export-your-extensions ^
donjayamanne.python-environment-manager ^
Gerrnperl.outline-map ^
GihanSiriwardhana.error-help ^
Goopware.raythis ^
IgorSbitnev.error-gutters ^
KevinRose.vsc-python-indent ^
klc1.vsbatdev ^
ms-dotnettools.csdevkit ^
ms-dotnettools.vscodeintellicode-csharp ^
donjayamanne.python-extension-pack ^
ms-python.debugpy ^
Zignd.html-css-class-completion ^
AnbuselvanRocky.bootstrap5-vscode ^
Zaczero.bootstrap-v4-snippets ^
dbaeumer.vscode-eslint ^
pranaygp.vscode-css-peek ^
sburg.vscode-javascript-booster ^
nicklasxyz.gleam-themes ^
NilsSoderman.batch-runner ^
rechinformatica.rech-editor-batch ^
njpwerner.autodocstring ^
VisualStudioExptTeam.intellicode-api-usage-examples ^
VisualStudioExptTeam.vscodeintellicode ^
antfu.theme-vitesse ^
antfu.icons-carbon ^
file-icons.file-icons ^
Gleam.gleam ^
maurobalbi.glas-vscode ^
deerawan.vscode-faker ^
Yasuo-Higano.gleam-qol ^
Yasuo-Higano.gleam-outliner ^
drcika.apc-extension

call :installPack
goto :eof

:pack4
call :uninstallCurrentPack

set extensionsPack= ^
drcika.apc-extension ^
gerrnperl.outline-map ^
gihansiriwardhana.error-help ^
igorsbitnev.error-gutters ^
goopware.raythis ^
ms-dotnettools.csdevkit ^
ms-dotnettools.vscodeintellicode-csharp ^
EdwinKofler.vscode-hyperupcall-pack-python ^
ms-python.debugpy ^
kevinrose.vsc-python-indent ^
wholroyd.jinja ^
klc1.vsbatdev ^
nilssoderman.batch-runner ^
rechinformatica.rech-editor-batch ^
Zignd.html-css-class-completion ^
pranaygp.vscode-css-peek ^
AnbuselvanRocky.bootstrap5-vscode ^
Zaczero.bootstrap-v4-snippets ^
dbaeumer.vscode-eslint ^
HTMLHint.vscode-htmlhint ^
sburg.vscode-javascript-booster ^
EdwinKofler.vscode-hyperupcall-pack-product-icons ^
a-m.angelica-color-theme ^
alekzandriia.attica ^
nichabosh.minimalist-dark ^
rudevio.evangelion-theme ^
sudofinn.evergreen-dark ^
nicklasxyz.gleam-themes ^
jdinhlife.gruvbox ^
mrwilford.theme-gruvball ^
shubham-saudolla.lilac ^
mvtkvm.mk-mono ^
stepanvanzuriak.mono ^
shira.pastel-sky-theme ^
liviuschera.noctis ^
shiloh.relax-your-eyes-green ^
mvllow.rose-pine ^
soft-aesthetic.soft-era-theme ^
antfu.theme-vitesse ^
visualstudioexptteam.intellicode-api-usage-examples ^
visualstudioexptteam.vscodeintellicode ^
file-icons.file-icons ^
AlexDauenhauer.catppuccin-noctis-icons ^
EdwinKofler.vscode-hyperupcall-pack-product-icons ^
zguolee.tabler-icons ^
davidkol.fastcompare ^
wicked-labs.sequoia ^
deerawan.vscode-faker

call :installPack
goto :eof

:uninstallCurrentPack
call "modules\uninstallExtensions.bat"

cls
exit /b

:installPack
echo Installing extensions...

for %%e in (%extensionsPack%) do (
    call code --install-extension %%e > nul
)

cd %rootDirectory%
cls
exit /b
