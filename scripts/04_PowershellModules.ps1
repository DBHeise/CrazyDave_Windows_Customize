#Update the Help
Update-Help

#Install Package Providers
Get-PackageProvider -Name nuget
Get-PackageProvider -Name chocolatey

#Install Powershell Modules
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
$modules = @(
    "PSWindowsUpdate",
    "PSCX",
    "NuGet",
    "Posh-SSH",
    "PSScriptAnalyzer",
    "ISESteroids",
    "ImportExcel",
    "NTFSSecurity",
    "PowerShellCookbook",
    "CredentialManager",
    "ARTools",
    "WinSCP",
    "PSHosts",
    "newtonsoft.json",
    "MSI",
    "PoshInternals",
    "PowerShellISEModule",
    "WintellectPowershell",
    "BurntToast",
    "Elastico",
    "BetterCredentials",
    "PowerForensics",
    "HostUtilities",
    "ISEScriptingGeek",
    "AudioDeviceCmdlets",
    "Image2Docker",
    "PowerSploit")

Install-Module -Repository PSGallery -Name $modules

