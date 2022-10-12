
@echo off
set LOGFILE=client-device-information.txt
call :LOG > %LOGFILE%
exit /B
color f

:LOG
::Gives computer name
echo Computer Name :            %computername% 


::Gives username
echo Username      :            %username%


echo ------------------------------------

::Lists ip and network adapters
ipconfig /all

echo ------------------------------------


::Gives memory info
echo Your memory:
systeminfo | findstr /C:"Total Physical Memory
systeminfo | findstr /C:"Available Physical Memory
echo .


::Gives drive info
echo Your disk spaces:
wmic diskdrive get size
wmic logicaldisk get freespace


::Shows current working directory
echo Your current working directory :
cd
echo .


::Shows currently working apps
echo These apps are running :

powershell "gps | where {$_.MainWindowTitle } | select Description


::Shows currently working services
net start

::Shows currently opened ports
netstat -aon
