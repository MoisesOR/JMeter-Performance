@echo off
echo RESULTS FILTER TOOLS
echo(

set /p input-file=Input file:
set /p output-file=Output file:
set /p success-filter=Succes only(y/n):
set /p include-labels=Include labels (RegEx):
set /p exclude-labels=Exclude labels (RegEx):
set /p start-offset=Start offset (sec):
set /p end-offset=End offset (sec):

if "%success-filter%" == "Y" set sf=--success-filter true
if "%success-filter%" == "y" set sf=--success-filter true
if defined exclude-labels set el=--exclude-label-regex true --exclude-labels "%exclude-labels%"
if defined include-labels set il=--include-label-regex true --include-labels "%include-labels%"
if defined start-offset set so=--start-offset %start-offset%
if defined end-offset set eo=--end-offset %end-offset%
echo(

call echo filterresults --input-file %input-file% --output-file %output-file% %sf% %il% %el% %so% %eo%
echo(

pause

filterresults --input-file %input-file% --output-file %output-file% %sf% %il% %el% %so% %eo%