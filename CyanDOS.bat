@echo off
setlocal EnableExtensions EnableDelayedExpansion
rem ; 0.0.1
IF "%1"=="0010" GOTO Boot0010
rem ; 0.0.2
IF "%1"=="0020" GOTO Boot0020
rem ; 0.0.3
IF "%1"=="0030" GOTO Boot0030
rem ; 0.0.4
IF "%1"=="0040" GOTO Boot0040
ECHO Unable to open file stream, Invalid parameters used.
EXIT

:Boot0010
rem ; 0.0.1
SET CyanOSVersion=0010
rem ; CyanOSFullVersion (0.0.1)
SET CyanOSFullVersion=0.0.1

Title CyanDOS - Version %CyanOSFullVersion%
rem ; Color Texture - Black Background over Light Aqua (Cyan)
SET CRM=0B
rem ; Delimiter
SET delim=::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
rem ; Actually set above color
COLOR %CRM%
GOTO int_setup

:Boot0020
rem ; 0.0.2
SET CyanOSVersion=0020
rem ; CyanOSFullVersion (0.0.2)
SET CyanOSFullVersion=0.0.2

Title CyanDOS - Version %CyanOSFullVersion%
rem ; Color Texture - Black Background over Light Aqua (Cyan)
SET CRM=0B
rem ; Delimiter
SET delim=::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
rem ; Actually set above color
COLOR %CRM%
GOTO int_setup

:Boot0030
rem ; 0.0.3
SET CyanOSVersion=0030
rem ; CyanOSFullVersion (0.0.3)
SET CyanOSFullVersion=0.0.3

Title CyanDOS - Version %CyanOSFullVersion%
rem ; Color Texture - Black Background over Light Aqua (Cyan)
SET CRM=0B
rem ; Delimiter
SET delim=::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
rem ; Actually set above color
COLOR %CRM%
GOTO int_setup

:Boot0040
rem ; 0.0.4
SET CyanOSVersion=0040
rem ; CyanOSFullVersion (0.0.4)
SET CyanOSFullVersion=0.0.4

Title CyanDOS - Version %CyanOSFullVersion%
rem ; Color Texture - Black Background over Light Aqua (Cyan)
SET CRM=0B
rem ; Latest - Variable for CommandEngine
SET latest=0040
rem ; Delimiter
SET delim=::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
rem ; Actually set above color
COLOR %CRM%
GOTO int_setup

:int_setup
ECHO %delim%
ECHO.
rem ; Version Checker
IF %CyanOSVersion% EQU 0010 ( ECHO CyanDOS Version 0.0.1 )
IF %CyanOSVersion% EQU 0020 ( ECHO CyanDOS Version 0.0.2 )
IF %CyanOSVersion% EQU 0030 ( ECHO CyanDOS Version 0.0.3 )
IF %CyanOSVersion% EQU 0040 ( ECHO CyanDOS Version 0.0.4 )
ECHO.
ECHO Bugs may still appear as we are still in pre-alpha, Report bugs to Neon~Light [https://github.com/NeonLightPWO]
ECHO.
ECHO Welcome to CyanDOS - Press Any Key To Boot Into CyanDOS
ECHO %delim%
PAUSE>NUL
CLS
GOTO out_commands

:out_commands
IF %CyanOSVersion% EQU 0010 ( cmd /k CommandEngine.bat -ver 0010 )
IF %CyanOSVersion% EQU 0020 ( cmd /k CommandEngine.bat -ver 0020 )
IF %CyanOSVersion% EQU 0030 ( cmd /k CommandEngine.bat -ver 0030 )
IF %CyanOSVersion% EQU 0040 ( cmd /k CommandEngine.bat -ver 0040 )
rem ; Presume Latest
cmd /k CommandEngine.bat -ver %latest%