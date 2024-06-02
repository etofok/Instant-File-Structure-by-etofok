:: November 11 2022 - Version 2
:: by etofok
:::::::::::::::::::::::::::::::::::



@echo . . . . . . . . . . . . . . . . . . . . . . .. . . . . . . . . . . . . .
@echo . . . Welcome!  . . . . . . . . . . . . . . .. . . . . . . . . . . . . .
@echo . . . . . . . . . . . . . . . . . . . . . . . .. . . . . . . . . . . . . 
@echo . . . This script will create a nested folder structure for your project.

:::::::::::::::::::::::::::::::::::

@echo off
FOR /F "skip=1 tokens=1-6" %%A IN ('WMIC Path Win32_LocalTime Get Day^,Hour^,Minute^,Month^,Second^,Year /Format:table') DO (
    if "%%B" NEQ "" (
        SET /A FDATE=%%F*10000+%%D*100+%%A
    )
)

set projectDate=%FDATE:~0,4%_%FDATE:~4,2%_%FDATE:~6,2%

::echo date=%FDATE%
::echo year=%FDATE:~0,4%
::echo month=%FDATE:~4,2%
::echo day=%FDATE:~6,2%

:::::::::::::::::::::::::::::::::::


cd /d %~dp0

@echo . . . Please, enter your project name: 

set /p projectName=""

set projectFolder=[%projectDate%] - %projectName%

mkdir "%projectFolder%"
pushd %cd%\%projectFolder%

mkdir "0) Text Docs"

mkdir "1) A-Roll\Camera A (A-Roll)"
mkdir "1) A-Roll\Camera B (A-Roll)"
mkdir "1) A-Roll\Camera C (A-Roll)"

mkdir "2) Audio Recordings\Device A"
mkdir "2) Audio Recordings\Device B"
mkdir "2) Audio Recordings\Device C"

mkdir "3) B-Roll\Camera A (B-Roll)"
mkdir "3) B-Roll\Camera B (B-Roll)"
mkdir "3) B-Roll\Camera C (B-Roll)"

mkdir "4) Downloaded Videos"
mkdir "5) Downloaded Images"
mkdir "6) Downloaded Sounds"
mkdir "7) Downloaded Music"

mkdir "8) Thumbnails"

mkdir "9) Premiere Project"

::pause


EXIT