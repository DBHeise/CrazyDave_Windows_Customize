
#Setting: Open File Explorer to This PC instead of Quick Access 
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWORD -Value 1 -Force

