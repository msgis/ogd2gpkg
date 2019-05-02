@echo off
set GPKG="C:\Program Files\luciad\gpkg.exe"
set QGIS_HOME="C:\Program Files\

set /p QGIS_HOME="QGIS Home Verzeichnis, [ENTER] für Default [%QGIS_HOME%]: "
ECHO %QGIS_HOME%


CHOICE /C YN /M "Download AGWR?"
IF ERRORLEVEL 2 goto end
IF ERRORLEVEL 1 GOTO download_agwr
:download_agwr

GWR\agwr2gpkg.cmd

:end
pause

