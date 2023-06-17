""

"# ----------------------"
"# The Windows Installer"
"# ----------------------"

# System colors:  Black, DarkBlue, DarkGreen, DarkCyan, DarkRed, DarkMagenta, DarkYellow, Gray, DarkGray,
# | Blue, Green, Cyan, Red, Magenta, Yellow, White"
""

$Continue = Read-Host "Continue? [Y/N]"

if ($Continue -eq "N")
{
    "Exiting..."
    ""
    exit
}

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

if ($scoop_app_list -match "bitwarden") {
  "Bitwarden is already installed."
} else {
  "Installing Bitwarden..."
  scoop install bitwarden
}

""

# - - - - - - - - - - - - -

if ($scoop_app_list -match "googlechrome") {
  "Google Chrome is already installed."
} else {
  "Installing Google Chrome..."
  scoop install googlechrome
}

""

# - - - - - - - - - - - - -

if ($scoop_app_list -match "thunderbird") {
  "Thunderbird is already installed."
} else {
  "Installing Thunderbird..."
  scoop install thunderbird
}

# Notes
# -----
# To set profile 'Scoop' as *DEFAULT*, or profiles/settings was lost after update:
# - Run 'Thunderbird Profile Manager', choose 'Scoop' then click 'Start Thunderbird'.
# - Visit 'about:profiles' page in Thunderbird to check *DEFAULT* profile.
# For details: https://support.mozilla.org/en-US/kb/profile-manager-create-and-remove-thunderbird-profiles

""

# - - - - - - - - - - - - -

if ($scoop_app_list -match "firefox") {
  "Firefox is already installed."
} else {
  "Installing Firefox..."
  scoop install firefox
}

# Notes
# -----
# To set profile 'Scoop' as *DEFAULT*, or profiles/settings was lost after update:
# - Run 'Firefox Profile Manager', choose 'Scoop' then click 'Start Firefox'.
# - Visit 'about:profiles' page in Firefox to check *DEFAULT* profile.
# For details: https://support.mozilla.org/en-US/kb/profile-manager-create-remove-switch-firefox-profiles
# 

""

# - - - - - - - - - - - - -

if ($scoop_buckets -match "nonportable") {
  "Nonportable bucket is already added."
} else {
  "Adding Scoop Nonportable bucket..."
  scoop bucket add nonportable
}

""

# - - - - - - - - - - - - -

if ($scoop_app_list -match "devtoys-np") {
  "DevToys is already installed."
} else {
  "Installing devtoys-np..."
  scoop install devtoys-np
}

""

# - - - - - - - - - - - - -

# if ($scoop_app_list -match "github") {
#   Write-Host "GitHub Desktop is already installed." -ForegroundColor green
# } else {
#   Write-Host "GitHub Desktop not found." -ForegroundColor red
#   Write-Host "Installing GitHub Desktop..." -ForegroundColor darkyellow
#   scoop install github
# }


""

# - - - - - - - - - - - - -
