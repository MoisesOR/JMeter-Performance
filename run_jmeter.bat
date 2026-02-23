@echo off

set "filepath=%~1"

cscript //nologo "%~dp0run_jmeter.vbs" "%filepath%"