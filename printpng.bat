@echo off
REM Assume files are in c:\printme, c:\printme\working, c:\printme\printed exist
REM 
REM Might want to try http://www.robvanderwoude.com/printfiles.php#PrintAny also
REM 
REM Moves the png file to another directory for processing
move c:\printme\*.png c:\printme\working
REM 
REM Processes each file in c:\printme\working, printing the file using paint
for /f "tokens=*" %%f in ('dir /od /tw /b /a-d "C:\printme\working\*.*"') do (
 paint.exe /p "%%~ff"
 )
 REM 
 REM Once the files are printed it moves them to another directory
 move c:\printme\working\*.* c:\printme\printed
 REM 
 REM Exit with status 0 telling the scheduler it finished normally
 exit 0
