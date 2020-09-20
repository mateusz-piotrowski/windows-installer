"# WSL 2 Setup"

""

"Enable 'Windows Subsystem for Linux' feature."
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

""

"Enable the 'Virtual Machine Platform' feature"
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart