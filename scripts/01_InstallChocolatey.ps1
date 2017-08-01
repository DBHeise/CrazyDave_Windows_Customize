## Install Chocolatey
Install-Module ChocolateyGet -Force -Verbose
Install-PackageProvider ChocolateyGet -Force -Verbose
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
refreshenv
