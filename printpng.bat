@echo off
REM Assume files are in c:\printme, c:\printme\working, c:\printme\printed exist
REM Create your file and copy/save it to c:\printme. Every time the script runs
REM it will check for PNG files in that directory. If it finds them it will move
REM them to a working directory, print them, and move them to a finished directory.
REM 
REM Might want to try http://www.robvanderwoude.com/printfiles.php#PrintAny also
REM 
REM Moves the png file to another directory for processing
move c:\printme\*.png c:\printme\working
REM 
REM Processes each file in c:\printme\working, printing the file using Microsoft
REM Paint to the default printer. If you want to send it to a specific printer
REM change the command to: mspaint.exe /pt printername "%%~ff"
for /f "tokens=*" %%f in ('dir /od /tw /b /a-d "C:\printme\working\*.*"') do (
 mspaint.exe /p "%%~ff"
 )
 REM 
 REM Once the files are printed it moves them to another directory
 move c:\printme\working\*.* c:\printme\printed
 REM 
 REM Exit with status 0 telling the scheduler it finished normally
 exit 0
