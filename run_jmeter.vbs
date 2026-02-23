Set objShell = CreateObject("WScript.Shell")
objShell.Run "jmeter -t """ & WScript.Arguments(0) & """ -j NUL", 0
Set objShell = Nothing