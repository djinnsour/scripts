@echo off
#Assume files are in c:\printme, c:\printme\working, c:\printme\printed exist
move c:\printme\*.png c:\printme\working
for /f "tokens=*" %%f in ('dir /od /tw /b /a-d "C:\printme\working\*.*"') do (
 paint.exe /p "%%~ff"
 )
 move c:\printme\working\*.* c:\printme\printed
 exit 0
