@echo off
echo Set the parameters:
echo(

set /p title=Title:
if not defined title set title=QA Cross Jmeter Report && echo Setting default title...
set /p csv=CSV path: 
set /p folder=Folder path (It must be empty):
echo ***** IF GRANULARITY IS NULL, IT SETS TO 60000 MS *****
set /p ms=Granularity (ms):
if not defined ms set ms=60000 && echo Setting default granularity...
echo(

echo Title: %title%
echo CSV: %csv%
echo Folder: %folder%
echo Granularity: %ms%
echo(

set /p ready=Click to create report.

jmeter -Jjmeter.reportgenerator.overall_granularity=%ms% -Jjmeter.reportgenerator.report_title="%title%" -g %csv% -o %folder%
