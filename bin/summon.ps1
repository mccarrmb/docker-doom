$Server = {
  C:\zandronum\zandronum.exe `
    -host `
    -port 10666 `
    -iwad "$env:IWAD" `
    +exec "$env:CONFIG" `
    +map "$env:START_MAP" `
    +logfile "$env:LOGFILE"
}

$Console = {
  # The Windows version of Zandronum runs a dedicated server as a GUI application. This approach
  # makes it difficult to provide any meaningful data for the container log view.
  Write-Host "Zandronum Windows container has successfully started."
}

Invoke-Command -ScriptBlock $Server

$LogJob = Invoke-Command -ScriptBlock $Console

Receive-Job $LogJob
