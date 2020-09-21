"# WSL 2 Setup"

""

"Enable 'Windows Subsystem for Linux' feature."
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

""

"Enable the 'Virtual Machine Platform' feature"
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

""

"----------------------------------------"
"Please restart your PC to apply changes."
"----------------------------------------"
""

"After reboot please install the following update:"
"https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi"

""

"Set WSL 2 as default version"

wsl --set-default-version 2

""

read-host "Press ENTER to continue..."