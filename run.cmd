@echo off
cd /D "%~dp0"
set QGIS_HOME=C:\Program Files\QGIS 3.6"
set /p QGIS_HOME="QGIS Home Verzeichnis, druecke [ENTER] fuer Default [%QGIS_HOME%]: "
set ENV="%QGIS_HOME%\bin\o4w_env.bat"
echo %ENV%
call %ENV%

CHOICE /C YN /M "Download AGWR?"
IF ERRORLEVEL 2 goto end
IF ERRORLEVEL 1 GOTO download_agwr
:download_agwr
cd GWR
call agwr2gpkg.cmd

:end
pause

