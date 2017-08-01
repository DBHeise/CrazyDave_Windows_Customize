

## Powershell Profile
if (!(Test-Path $profile)) {
    New-Item -Force -Type File -Path $profile    
}


## Fonts
choco install dejavufonts hackfont


## Unicode Support
Set-ItemProperty -Path "HKCU:\Control Panel\Input Method" -Name "EnableHexNumpad" -Type String -Value 1 -Force
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Console\TrueTypeFont" -Name "(Default)" -Type String -Value "DejaVu Sans Mono" -Force

## Command Prompt Changes
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Command Processor" -Name "DelayedExpansion" -Type DWORD -Value 1 -Force
Set-ItemProperty -Path "HKCU:\Console" -Name "QuickEdit" -Type DWORD -Value 1 -Force
Set-ItemProperty -Path "HKCU:\Console" -Name "InsertMode" -Type DWORD -Value 1 -Force
Set-ItemProperty -Path "HKCU:\Console" -Name "HistoryBufferSize" -Type DWORD -Value 999 -Force
Set-ItemProperty -Path "HKCU:\Console" -Name "ScreenBufferSize" -Type DWORD -Value 0x270F0050 -Force
Set-ItemProperty -Path "HKCU:\Console" -Name "FaceName" -Type String -Value "DejaVu Sans Mono" -Force


## Internet Explorer
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Internet Explorer\Main" -Name "Start Page" -Value "about:blank" -Force




