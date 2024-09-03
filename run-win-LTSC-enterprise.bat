@echo off
@title multicommittr Launcher (Win LTSC) v39a
cls
echo.
echo Downloading deps for LTSC.
cd /D "%~dp0"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/microsoft/terminal/releases/download/v1.18.1462.0/Microsoft.WindowsTerminalPreview_1.18.1462.0_x64.zip', 'package.zip')"
powershell -Command "Invoke-WebRequest https://github.com/microsoft/terminal/releases/download/v1.18.1462.0/Microsoft.WindowsTerminalPreview_1.18.1462.0_x64.zip -OutFile package.zip"
unzip package.zip
powershell -command "Expand-Archive -Force '%~dp0package.zip' '%~dp0'"
cd /D "%~dp0"
cd terminal-1.18.1462.0
.\wt.exe wt.exe "C:\Program Files\Git\git-bash.exe" -c "bash ../multicommittr.sh"
cd /D "%~dp0"

REM EOF
:eof
exit
