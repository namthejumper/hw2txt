@echo off
echo OS: Windows > specs.txt
for /f "tokens=2 delims==" %%A in ('wmic os get Caption /value') do echo OS Version: %%A >> specs.txt
for /f "tokens=2 delims==" %%A in ('wmic cpu get Name /value') do echo CPU: %%A >> specs.txt
for /f "tokens=2 delims==" %%A in ('wmic cpu get Architecture /value') do echo Architecture: %%A >> specs.txt
for /f "tokens=2 delims==" %%A in ('wmic computersystem get TotalPhysicalMemory /value') do echo RAM: %%A >> specs.txt
for /f "tokens=2 delims==" %%A in ('wmic path win32_VideoController get Name /value') do echo GPU: %%A >> specs.txt
