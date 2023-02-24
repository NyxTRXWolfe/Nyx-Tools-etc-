# Nyx-Tools-etc-

This script is intended to automate the process of repairing common Windows system file and image corruption issues, and provide feedback to the user on the progress of the repair operation

> The first two lines use the Start-Process cmdlet to launch two different executables with elevated privileges (run as administrator):

    - SFC.exe (System File Checker) with the argument "/scannow", which scans the system files for any corrupt or missing files and attempts to repair them.
    - PowerShell.exe with the argument "DISM /Online /Cleanup-Image /RestoreHealth", which uses the Deployment Image Servicing and Management (DISM) tool to repair any system image corruption.

> The third part of the script is a loop that displays a progress bar, indicating the progress of the repair operation.
