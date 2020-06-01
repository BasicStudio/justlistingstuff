@echo off
:begin
set /p op=Type option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4
if "%op%"=="5" goto op5
if "%op%"=="6" goto op6
if "%op%"=="7" goto op7
if "%op%"=="8" goto op8
if "%op%"=="list" goto list
if "%op%"=="exit" goto exit

echo Please Pick an option! To exit type 'exit' or to see the list do 'list'
goto begin

:op1
echo Need some office suppies? I got you
Start http://www.mediafire.com/file/9yay22x7hnlecry/Office2010.iso/file
goto begin

:op2
echo Wanna keep track of frames i see
bitsadmin /transfer wcb /priority high https://raw.githubusercontent.com/BasicStudio/justsomeart/raw/master/Screenshot.jpg %CD%/fraps_setup.exe
goto begin

:op3
echo Like winRAR but you wanna go pro
bitsadmin /transfer wcb /priority high https://raw.githubusercontent.com/BasicStudio/justsomeart/raw/master/Screenshot2.jpg %CD%/winRAR.zip
goto begin

:op4
echo Keeping track of your computer huh
bitsadmin /transfer wcb /priority high https://raw.githubusercontent.com/BasicStudio/justsomeart/raw/master/Screenshot3.jpg %CD%/HDTune.zip
goto begin

:op5
echo Wanna go pro while looking for ftps
Start https://www.mediafire.com/file/94kf5tvshqv4n87/FileZilla.rar/file
goto begin

:op6
echo Lost the password to your archive huh
bitsadmin /transfer wcb /priority high https://github.com/BasicStudio/justsomeart/raw/master/Screenshot5.jpg %CD%/AARPPE.7z
goto begin

:op7
echo Wanna host a ftp on your network, nice!
Start https://www.mediafire.com/file/b49vbrc0920gxk9/Serv-UFTP.rar/file
goto begin

:op8
echo RainWallpaper is a better choice than Wallpaper Engine and i will take that to the grave
Start https://www.mediafire.com/file/a43904otmqjl9kc/RainWallpaper.rar/file
goto begin

:list
type list
goto begin

:exit
cd ../
menu.bat
