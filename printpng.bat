@echo off
REM Assume files are in c:\printme, c:\printme\working, c:\printme\printed exist
REM 
REM Might want to try http://www.robvanderwoude.com/printfiles.php#PrintAny also
move c:\printme\*.png c:\printme\working
for /f "tokens=*" %%f in ('dir /od /tw /b /a-d "C:\printme\working\*.*"') do (
 paint.exe /p "%%~ff"
 )
 move c:\printme\working\*.* c:\printme\printed
 exit 0
