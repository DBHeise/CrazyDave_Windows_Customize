
ForceRegKey "HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo"

Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" -Name "Enabled" -Type DWord -Value 0
 