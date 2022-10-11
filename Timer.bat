@echo off
echo Stopwatch
echo Press 'Enter' to continue.
pause >nul

:: Stopwatch
set /A s=0
set /A m=0
set i=%time%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
set CUR_NN=%time:~3,2%
:Stopwatch
echo %s% seconds.
echo %m% minutes.
echo.
echo Started at: %i%
echo.
echo %m% minutes and %s% seconds; Timer started at %i%; data recorded at %time%; > %CUR_HH%_%CUR_NN%.txt
set /A s=%s%+1
if %s%==60 (
set /A m=%m%+1
set /A s=0
)
timeout /t 1 /nobreak >nul
::timeout /t 1 >nul
cls
goto :Stopwatch
