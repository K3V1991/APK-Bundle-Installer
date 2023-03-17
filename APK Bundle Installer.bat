@echo off
title APK Bundle Installer v1.0.4
color 0a
chcp 65001 >nul 2>&1
echo ╔════════════════════════════════════════════════════════════════════════╗
echo ║                                                                        ║
echo ║                           █████╗ ██████╗ ██╗                           ║
echo ║                          ██╔══██╗██╔══██╗██║                           ║
echo ║                          ███████║██████╔╝██║                           ║
echo ║                          ██╔══██║██╔══██╗██║                           ║
echo ║                          ██║  ██║██████╔╝██║                           ║
echo ║                          ╚═╝  ╚═╝╚═════╝ ╚═╝                           ║
echo ║                                                                        ║
echo ╚════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo ╔════════════════════════════════════════════════════════════════════════╗
echo ║                        Starting ADB Connection...                      ║
echo ╚════════════════════════════════════════════════════════════════════════╝
adb start-server
echo.
echo ══════════════════════════════════════════════════════════════════════════
set "reply=y"
set /p "reply=Install APKs from APKs Folder (Y/N)?: "
if /i not "%reply%" == "y" goto :eof
echo ══════════════════════════════════════════════════════════════════════════
echo.
echo.
setlocal enabledelayedexpansion
set SCRIPT_PATH=%~dps0
set TARGET_PATH=/data/local/tmp/
adb shell mkdir -p %TARGET_PATH%
cd APKs
set TOTAL_APK_SIZE_BYTES=0
for %%A IN (*.apk) DO (
set /A "TOTAL_APK_SIZE_BYTES+=%%~zA"
)
echo.
echo.
echo ══════════════════════════════════════════════════════════════════════════
echo Total APK Size Bytes=[%TOTAL_APK_SIZE_BYTES%]
set PM_SESSION=
for /F "tokens=2 delims=[]" %%A IN ('%SCRIPT_PATH%adb shell pm install-create -S %TOTAL_APK_SIZE_BYTES%') DO SET PM_SESSION=%%A
echo PM Session=[%PM_SESSION%]
echo ══════════════════════════════════════════════════════════════════════════
echo.
echo.
echo ╔════════════════════════════════════════════════════════════════════════╗
echo ║                           Installing App...                            ║
echo ╚════════════════════════════════════════════════════════════════════════╝
set APK_INDEX=0
for %%A IN (*.apk) DO (
set APK_SIZE=%%~zA
echo APK: idx=!APK_INDEX!, size=!APK_SIZE!
%SCRIPT_PATH%adb shell pm install-write -S !APK_SIZE! %PM_SESSION% !APK_INDEX! %TARGET_PATH%%%A
set /A "APK_INDEX+=1"
)
%SCRIPT_PATH%adb shell pm install-commit %PM_SESSION%
%SCRIPT_PATH%adb kill-server
echo.
echo.
pause