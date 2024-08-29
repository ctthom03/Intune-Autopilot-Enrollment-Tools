#Requires -RunAsAdministrator
# ^ Should be self explanatory

# Run Internet Connectivity Check as Required by Install-Script
if (Test-Connection -ComputerName www.google.com -Quiet) {
    Set-Location -Path "E:\Hash Files"
    $env:Path +=";C:\Program Files\WindowsPowerShell\Scripts"
    Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned
    Install-Script -Name Get-WindowsAutopilotInfo
    Get-WindowsAutopilotInfo -OutputFile MyComputerHash.csv -Append
} else {
    Write-Error "Please Connect to the Internet before Running the Script"
}
Start-Sleep -Seconds 3