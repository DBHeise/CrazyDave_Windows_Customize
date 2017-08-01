
if ((powercfg /l | ? { $_.Contains("CrazyDave")}) -eq $null) {
    $highPerfGuid = (powercfg -l | ? {$_.Contains("High performance")}).Split(":")[1].Trim().Split(' ')[0];
    $newGuid = [System.Guid]::NewGuid()

    powercfg -duplicatescheme $highPerfGuid $newGuid | Out-Null
    powercfg -changename $newGuid "CrazyDave's Power Scheme"

    powercfg -setactive $newGuid
    powercfg -X monitor-timeout-ac 0
    powercfg -X disk-timeout-ac 0
    powercfg -X standby-timeout-ac 0
    powercfg -X hibernate-timeout-ac 0
    powercfg -X hibernate-timeout-dc 0

    
   $SubGroup_PowerButtonsAndLid = '4f971e89-eebd-4455-a8de-9e59040e7347'
   $pwr_LidCloseAction = '5ca83367-6e45-459f-a27b-476b1d01c936'
   $pwr_PowerButtonAction = '7648efa3-dd9c-4e3e-b566-50f929386280'
   $pwr_SleepButtonAction = '96996bc0-ad50-47ec-923b-6f41874dd9eb'
   $pwr_StartMenuPowerButton = 'a7066653-8d6c-40a8-910e-a1f54b84c7e5'
     
   powercfg -setdcvalueindex $newGuid $SubGroup_PowerButtonsAndLid $pwr_LidCloseAction 2
   powercfg -setacvalueindex $newGuid $SubGroup_PowerButtonsAndLid $pwr_LidCloseAction 2
   powercfg -setdcvalueindex $newGuid $SubGroup_PowerButtonsAndLid $pwr_PowerButtonAction 3
   powercfg -setacvalueindex $newGuid $SubGroup_PowerButtonsAndLid $pwr_PowerButtonAction 3
   powercfg -setdcvalueindex $newGuid $SubGroup_PowerButtonsAndLid $pwr_SleepButtonAction 1
   powercfg -setacvalueindex $newGuid $SubGroup_PowerButtonsAndLid $pwr_SleepButtonAction 1
   powercfg -setdcvalueindex $newGuid $SubGroup_PowerButtonsAndLid $pwr_StartMenuPowerButton 2
   powercfg -setacvalueindex $newGuid $SubGroup_PowerButtonsAndLid $pwr_StartMenuPowerButton 2

   $SubGroup_Display = '7516b95f-f776-4464-8c53-06167f40cc99'
   $pwr_DimDisplayAfter = '17aaa29b-8b43-4b94-aafe-35f64daaf1ee'
   $pwr_TurnOffDisplayAfter = '3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e'
   $pwr_DisplayBrightness = 'aded5e82-b909-4619-9949-f5d71dac0bcb'
   $pwr_DimmedDisplayBrightness = 'f1fbfde2-a960-4165-9f88-50667911ce96'
   
   powercfg -setdcvalueindex $newGuid $SubGroup_Display $pwr_DimDisplayAfter (0x12c)
   powercfg -setacvalueindex $newGuid $SubGroup_Display $pwr_DimDisplayAfter 0
   powercfg -setdcvalueindex $newGuid $SubGroup_Display $pwr_TurnOffDisplayAfter (0x258)
   powercfg -setacvalueindex $newGuid $SubGroup_Display $pwr_TurnOffDisplayAfter 0
   powercfg -setdcvalueindex $newGuid $SubGroup_Display $pwr_DisplayBrightness 50
   powercfg -setacvalueindex $newGuid $SubGroup_Display $pwr_DisplayBrightness 100
   powercfg -setdcvalueindex $newGuid $SubGroup_Display $pwr_DimmedDisplayBrightness 25
   powercfg -setacvalueindex $newGuid $SubGroup_Display $pwr_DimmedDisplayBrightness 50
} 