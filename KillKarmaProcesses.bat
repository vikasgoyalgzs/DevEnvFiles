@echo off
FOR /F "tokens=5 delims= " %%P IN ('netstat -a -n -o ^| findstr :2304') DO FOR /F "tokens=2 delims= " %%Q IN ('TaskList /fi "PID eq %%P" /fo list ^| findstr PID') DO TaskKill.exe /PID %%Q /F
EXIT 0