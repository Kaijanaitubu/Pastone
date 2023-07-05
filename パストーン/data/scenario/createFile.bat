@echo off
  
set /p filename="Enter file name:"
set /p extension="Enter extension:"
set /p number="Enter number of files:
"
  
setlocal enabledelayedexpansion
  
for /l %%i in (1,1,%number%) do (
  set num=%%i
  type nul > %filename%!num!.!extension!
)
  
endlocal