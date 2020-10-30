wget -O notebook-installer.zip https://github.com/mateusz-piotrowski/notebook-installer/archive/master.zip

Expand-Archive -Path ~/notebook-installer.zip -DestinationPath ~/notebook-installer

Start-Process "powershell.exe" -Argument ~/notebook-installer/notebook-installer-master/notebook-installer.ps1 -Verb RunAs -Wait