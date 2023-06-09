""

"# ----------------------"
"# The Windows Installer"
"# ----------------------"

""

# - - - - - - - - - - - - -

if (Get-Command scoop -errorAction SilentlyContinue) {
  "Scoop is already installed."
} else {
  "Installing Scoop Package Manager..."
  Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
}

$scoop_app_list = scoop export

""

# - - - - - - - - - - - - -

if ($scoop_app_list -match "gh") {
  "GitHub CLI is already installed."
} else {
  "Installing GitHub CLI..."
  scoop install gh
}

""

# - - - - - - - - - - - - -

if ($scoop_app_list -match "7zip") {
  "7-Zip is already installed."
} else {
  "Installing 7-Zip..."
  scoop install 7zip
}

""

# Add 7-Zip as a context menu option by running: "C:\Users\Mateusz\scoop\apps\7zip\current\install-context.reg"

# - - - - - - - - - - - - -

if ($scoop_app_list -match "git") {
  "Git is already installed."
} else {
  "Installing git..."
  scoop install git
}

""

# Notes
# -----
# Set Git Credential Manager Core by running: "git config --global credential.helper manager"
#
# To add context menu entries, run 'C:\Users\Mateusz\scoop\apps\git\current\install-context.reg'
#
# To create file-associations for .git* and .sh files, run
# 'C:\Users\Mateusz\scoop\apps\git\current\install-file-associations.reg'

# - - - - - - - - - - - - -

if ($scoop_app_list -match "pwsh") {
  "PowerShell is already installed."
} else {
  "Installing PowerShell..."
  scoop install pwsh
}

# Notes
# -----
# Since Scoop uses pwsh.exe internally, to update PowerShell Core itself,
# run `scoop update pwsh` from Windows PowerShell, i.e. powershell.exe.
#
# Add PowerShell Core as a explorer context menu by running:
# 'C:\Users\Mateusz\scoop\apps\pwsh\current\install-explorer-context.reg'
# For file context menu, run 'C:\Users\Mateusz\scoop\apps\pwsh\current\install-file-context.reg'

""

# - - - - - - - - - - - - -

$scoop_buckets = scoop bucket list

if ($scoop_buckets -match "extras") {
  "Extras bucket is already added."
} else {
  "Adding Scoop Extras bucket..."
  scoop bucket add extras
}

""

# - - - - - - - - - - - - -

if ($scoop_app_list -match "vcredist2022") {
  "Visual C++ 2022 is already installed."
} else {
  "Installing Visual C++ 2022..."
  scoop install vcredist2022
}

""

# - - - - - - - - - - - - -

if ($scoop_app_list -match "windows-terminal") {
  "Windows Terminal is already installed."
} else {
  "Installing Windows-Terminal..."
  scoop install windows-terminal
}

""

# Notes
# -----
# Add Windows Terminal as a context menu option by running `reg import
# "C:\Users\Mateusz\scoop\apps\windows-terminal\current\install-context.reg"`
# 'windows-terminal' suggests installing 'extras/vcredist2022'.

# - - - - - - - - - - - - -

if ($scoop_app_list -match "notepadplusplus") {
  "Notepad++ is already installed."
} else {
  "Installing Notepad++..."
  scoop install notepadplusplus
}

# Notes
# -----
# Add Notepad++ as a context menu option by running: reg import
# "C:\Users\Mateusz\scoop\apps\notepadplusplus\current\install-context.reg"

""

# - - - - - - - - - - - - -