# Disable Autorun for all drives
ForceRegKey "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoDriveTypeAutoRun" -Type DWord -Value 255