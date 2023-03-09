# Save the current execution policy
$currentPolicy = Get-ExecutionPolicy

# Set the execution policy to RemoteSigned for the duration of the script
Set-ExecutionPolicy RemoteSigned -Scope Process

# Run the commands
Start-Process -FilePath "${env:windir}\system32\WindowsPowerShell\v1.0\powershell.exe" -Verb RunAs -ArgumentList '-Command', 'DISM /Online /Cleanup-Image /RestoreHealth ; sfc /scannow'

# Restore the original execution policy
Set-ExecutionPolicy $currentPolicy -Scope Process
