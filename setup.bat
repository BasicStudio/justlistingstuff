@echo off
cls
type list
:begin
set /p op=Type The Emulator:
if "%op%"=="Yuzu" goto op1
if "%op%"=="Ryujinx" goto op2
if "%op%"=="ePSXe" goto op3
if "%op%"=="PCSX2" goto op4
if "%op%"=="list" goto list
if "%op%"=="exit" goto exit

echo Please Pick an option! To exit type 'exit' or to see the list do 'list'
goto begin

:op1
start type credits
cd /d C:/Users/%USERNAME%/AppData/Roaming/Yuzu/
mkdir keys
cd keys
bitsadmin /transfer wcb /priority high https://raw.githubusercontent.com/BasicStudio/site/other/prod.keys %CD%/prod.keys
exit
goto begin

:op2
start type credits
cd /d C:/Users/%USERNAME%/AppData/Roaming/Ryujinx/
mkdir keys
cd keys
bitsadmin /transfer wcb /priority high https://raw.githubusercontent.com/BasicStudio/site/other/prod.keys %CD%/prod.keys
exit
goto begin

:op3
echo Enter the location of the ePSXe bios folder
set /p location=
start type credits
cd /d %location%
bitsadmin /transfer wcb /priority high https://raw.githubusercontent.com/BasicStudio/site/other/SCPH1001.BIN %CD%/SCPH1001.BIN
exit
goto begin

:op4
echo Enter the location of the PCSX2 bios folder
set /p location=
start type credits
cd /d %location%
bitsadmin /transfer wcb /priority high https://raw.githubusercontent.com/BasicStudio/site/other/scph10000.bin %CD%/scph10000.bin
exit
goto begin

:list
type list
goto begin

:exit
cd ../
menu.bat
