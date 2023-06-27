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
