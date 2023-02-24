
Start-Process -Filepath "${env:Windir}\system32\SFC.exe" -ArgumentList '/scannow' -verb runas

Start-Process -Filepath "${env:windir}\system32\WindowsPowerShell\v1.0\powershell.exe" -verb runas -argumentlist 'DISM /Online /Cleanup-Image /RestoreHealth' | sfc /scannow -verb runas


for ($i = 1; $i -le 100; $i++ ) {
Write-Progress -Activity "Fixing OS please standby..." -status "$i% Complete;" -PercentComplete $i
Start-sleep -Milliseconds 250
    
}