@echo off

:: chocolatey.0.10.2.nupkg
:: ChocolateyGUI.0.13.2.nupkg
:: install.ps1
:: installChocolatey.cmd
:: PowerShell.4.0.20141001.nupkg

SET DIR=%~dp0%
SET ChocolateyInstall=c:\dev\Chocolatey
SET chocolateyUseWindowsCompression=true
SET chocolateyDownloadUrl=file://%DIR%chocolatey.0.10.2.nupkg

::download install.ps1
REM %systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('https://chocolatey.org/install.ps1','install.ps1'))"

::run installer
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%DIR%install.ps1' %*"

::install Powershell V4 and Chocolatey GUI
c:\dev\Chocolatey\bin\choco.exe install PowerShell -s c:\dev\Chocolatey\installers -Y
c:\dev\Chocolatey\bin\choco.exe install ChocolateyGUI -s c:\dev\Chocolatey\installers -Y
