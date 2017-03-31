@echo off

:: chocolatey.0.10.2.nupkg
:: ChocolateyGUI.0.13.2.nupkg
:: install.ps1
:: installChocolatey.cmd
:: PowerShell.4.0.20141001.nupkg

SET DIR=%~dp0%
SET ChocolateyInstall=%ProgramFiles%\Chocolatey
SET chocolateyUseWindowsCompression=true
SET chocolateyDownloadUrl=file://%DIR%/resources/chocolatey.nupkg

::download install.ps1
REM %systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('https://chocolatey.org/install.ps1','install.ps1'))"

::run installer
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%DIR%\resources\install.ps1' %*"

::install Powershell V4 and Chocolatey GUI
%ProgramFiles%\Chocolatey\bin\choco.exe install PowerShell -s %DIR%\resources -Y
%ProgramFiles%\Chocolatey\bin\choco.exe install ChocolateyGUI -s %DIR%\resources -Y

:: post-installation : feeders setup
xcopy /Y %DIR%\resources\user.config %LOCALAPPDATA%\Chocolatey\ChocolateyGui.exe_Url_oqqrttjgsgsfj3psms1wjw4lcyeoz1us\0.13.2.0
%ProgramFiles%\Chocolatey\bin\choco.exe source add --name YOUHOU
%ProgramFiles%\Chocolatey\bin\choco.exe source remove --name Chocolatey
