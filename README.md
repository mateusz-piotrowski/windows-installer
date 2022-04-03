# The Windows Installer

## Description

The project contains automatisation script.

## Motivation

The project has been created to develop PowerShell script to automate development environment setup.

## Requirements

- Windows 7 SP1+ / Windows Server 2008+
- [PowerShell 5](https://aka.ms/wmf5download) (or later, include [PowerShell Core](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-windows?view=powershell-6)) and [.NET Framework 4.5](https://www.microsoft.com/net/download) (or later)
- PowerShell must be enabled for your user account e.g. `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`

## Installation

Run the following command from your PowerShell to install scoop to its default location (`C:\Users\<user>\scoop`)

```powershell
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://github.com/mateusz-piotrowski/windows-installer/blob/master/setup_starter.ps1')
```

Once installed, run `scoop help` for instructions.

## Contributor

Mateusz Piotrowski

## License

MIT
