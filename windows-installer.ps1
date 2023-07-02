""

Write-Host "# ----------------------"  -ForegroundColor DarkCyan
Write-Host "# The Windows Installer"   -ForegroundColor DarkCyan
Write-Host "# ----------------------"  -ForegroundColor DarkCyan

# System colors:  Black, DarkBlue, DarkGreen, DarkCyan, DarkRed, DarkMagenta, DarkYellow, Gray, DarkGray,
# | Blue, Green, Cyan, Red, Magenta, Yellow, White"

""

$Continue = Read-Host "Continue? [Y/N]"

if ($Continue -eq "N") {
    ""
    Write-Host "Exiting..."
    ""
    exit
}

""

Write-Host "Updating winget ..."

winget update

$winget_list = winget list

""

# - - - - - - - - - - - - -

if ($winget_list -match "Microsoft.WindowsTerminal") {
  Write-Host "Windows Terminal is already installed." -ForegroundColor DarkGreen
} else {
  Write-Host "Windows Terminal app not found." -ForegroundColor DarkRed
  Write-Host "Installing Windows Terminal ..." -ForegroundColor DarkYellow
  winget install Microsoft.WindowsTerminal
}

""

# - - - - - - - - - - - - -

if ($winget_list -match "Microsoft.PowerShell") {
  Write-Host "Microsoft PowerShell is already installed." -ForegroundColor DarkGreen
} else {
  Write-Host "Microsoft PowerShell app not found." -ForegroundColor DarkRed
  Write-Host "Installing Microsoft PowerShell ..." -ForegroundColor DarkYellow
  winget install Microsoft.PowerShell
}

""

# - - - - - - - - - - - - -

if ($winget_list -match "CrystalDewWorld.CrystalDiskInfo") {
  Write-Host "CrystalDiskInfo is already installed." -ForegroundColor DarkGreen
} else {
  Write-Host "CrystalDiskInfo app not found" -ForegroundColor DarkRed
  Write-Host "Installing CrystalDiskInfo ..." -ForegroundColor DarkYellow
  winget install CrystalDewWorld.CrystalDiskInfo
}

""

# - - - - - - - - - - - - -

if ($winget_list -match "CrystalDewWorld.CrystalDiskMark") {
  Write-Host "CrystalDiskMark is already installed." -ForegroundColor DarkGreen
} else {
  Write-Host "CrystalDiskMark app not found" -ForegroundColor DarkRed
  Write-Host "Installing CrystalDiskMark ..." -ForegroundColor DarkYellow
  winget install CrystalDewWorld.CrystalDiskMark
}

""

# - - - - - - - - - - - - -

if ($winget_list -match "Git.Git") {
  Write-Host "Git is already installed." -ForegroundColor DarkGreen
} else {
  Write-Host "Git app not found" -ForegroundColor DarkRed
  Write-Host "Installing Git ..." -ForegroundColor DarkYellow
  winget install Git.Git
}

""

# - - - - - - - - - - - - -

if ($winget_list -match "Google.Chrome") {
  Write-Host "Google Chrome is already installed." -ForegroundColor DarkGreen
} else {
  Write-Host "Google Chrome app not found" -ForegroundColor DarkRed
  Write-Host "Installing Google Chrome ..." -ForegroundColor DarkYellow
  winget install Google.Chrome
}

""

# - - - - - - - - - - - - -

if ($winget_list -match "Bitwarden.Bitwarden") {
  Write-Host "Bitwarden is already installed." -ForegroundColor DarkGreen
} else {
  Write-Host "Bitwarden app not found" -ForegroundColor DarkRed
  Write-Host "Installing Bitwarden ..." -ForegroundColor DarkYellow
  winget install Bitwarden.Bitwarden
}

""

# - - - - - - - - - - - - -

if ($winget_list -match "Notepad\+\+.Notepad\+\+") {
  Write-Host "Notepad++ is already installed." -ForegroundColor DarkGreen
} else {
  Write-Host "Notepad++ app not found" -ForegroundColor DarkRed
  Write-Host "Installing Notepad++ ..." -ForegroundColor DarkYellow
  winget install Notepad++.Notepad++
}

""

# - - - - - - - - - - - - -

if ($winget_list -match "Microsoft.VisualStudioCode") {
  Write-Host "Visual Studio Code is already installed." -ForegroundColor DarkGreen
} else {
  Write-Host "Visual Studio Code app not found" -ForegroundColor DarkRed
  Write-Host "Installing Visual Studio Code ..." -ForegroundColor DarkYellow
  winget install Microsoft.VisualStudioCode
}

""

# - - - - - - - - - - - - -

if ($winget_list -match "Mozilla.Firefox") {
  Write-Host "Mozilla Firefox is already installed." -ForegroundColor DarkGreen
} else {
  Write-Host "Mozilla Firefox app not found" -ForegroundColor DarkRed
  Write-Host "Installing Mozilla Firefox ..." -ForegroundColor DarkYellow
  winget install Mozilla.Firefox
}

""

# - - - - - - - - - - - - -

if ($winget_list -match "Mozilla.Thunderbird") {
  Write-Host "Mozilla Thunderbird is already installed." -ForegroundColor DarkGreen
} else {
  Write-Host "Mozilla Thunderbird app not found" -ForegroundColor DarkRed
  Write-Host "Installing Mozilla Thunderbird ..." -ForegroundColor DarkYellow
  winget install Mozilla.Thunderbird
}

""

# - - - - - - - - - - - - -
