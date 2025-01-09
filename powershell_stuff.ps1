#Loop
while ($true) { Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait("{NUMLOCK}"); Start-Sleep -Seconds 60 }
