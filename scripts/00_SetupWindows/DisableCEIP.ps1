#Disable Windows CEIP
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\SQMClient\Windows" -Name "CEIPEnable" -Type DWORD -Value 0 -Force
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\SQMClient" -Name "CorporateSQMURL" -Type String -Value "0.0.0.0" -Force

