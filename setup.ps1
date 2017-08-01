$thisScriptFolder = Split-Path $script:MyInvocation.MyCommand.Path
$scriptList = gci (Join-Path $thisScriptFolder scripts) -recurse -include *.ps1 | sort

Sleep -seconds 5

$i = 0
Write-Progress -Activity "Running Supplied Scripts" -PercentComplete 0
$scriptList| % {
$i ++
  Write-Progress -Activity "Running Supplied Scripts" -PercentComplete ($i / $scriptList.Length * 100) -Status $_.Name
  . $_.FullName
}
Write-Progress -Activity "Running Supplied Scripts" -PercentComplete 100 -Completed