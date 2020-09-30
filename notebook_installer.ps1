""

"# ----------------------"
"# The Notebook Installer"
"# ----------------------"

""

if (Get-Command scoop -errorAction SilentlyContinue) {
  "Scoop is already installed."
} else {
  Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
}

$scoop_app_list = scoop export

""

if ($scoop_app_list -match "7zip") {
  "7zip is already installed."
} else {
  scoop install 7zip
}

if ($scoop_app_list -match "git") {
  "Git is already installed."
} else {
  scoop install git
}

""

$scoop_buckets = scoop bucket list

if ($scoop_buckets -match "extras") {
  "Extras bucket is already added."
} else {
  scoop bucket add extras
}

if ($scoop_buckets -match "nonportable") {
  "Nonportable bucket is already added."
} else {
  scoop bucket add nonportable
}

if ($scoop_buckets -match "java") {
  "Java bucket is already added."
} else {
  scoop bucket add java
}

""

scoop update --quiet

""

if ($scoop_app_list -match "vim") {
  "Vim is already installed."
} else {
  scoop install vim
}

if ($scoop_app_list -match "neovim") {
  "Neovim is already installed."
} else {
  scoop install neovim
}

if ($scoop_app_list -match "vscode") {
  "Visual Studio Code is already installed."
} else {
  scoop install vscode
}

if ($scoop_app_list -match "emacs") {
  "Emacs is already installed."
} else {
  scoop install emacs
  git clone -b develop https://github.com/syl20bnr/spacemacs .emacs.d
}

if ($scoop_app_list -match "auto-dark-mode-np") {
  "Auto Dark Mode is already installed."
} else {
  scoop install auto-dark-mode-np
}

if ($scoop_app_list -match "notepadplusplus") {
  "Notepad Plus Plus is already installed."
} else {
  scoop install notepadplusplus
}

""

Start-Process "pwsh.exe" -Argument '.\file_associations.ps1' -Verb RunAs -Wait

if($?) {
  "File associations has been completed successfully."
} else {
  "An error occoured during file associations."
}

""

if ($scoop_app_list -match "firefox") {
  "Firefox is already installed."
} else {
  scoop install firefox
}

if ($scoop_app_list -match "pwsh") {
  "Powershell is already installed."
} else {
  scoop install pwsh
}

if ($scoop_app_list -match "concfg") {
  "Concfg is already installed."
} else {
  scoop install concfg
  concfg import solarized small
}

if ($scoop_app_list -match "pshazz") {
  "PsHazz is already installed."
} else {
  scoop install pshazz
  Start-Process "pwsh.exe" -Argument 'Set-Service ssh-agent -StartupType Manual' -Verb RunAs -Wait
}

if ($scoop_app_list -match "windows-terminal") {
  "Windows Terminal is already installed."
} else {
  scoop install windows-terminal
}

if ($scoop_app_list -match "thunderbird") {
  "Thunderbird is already installed."
} else {
  scoop install thunderbird
}

if ($scoop_app_list -match "basecamp") {
  "Basecamp is already installed."
} else {
  scoop install basecamp
}

if ($scoop_app_list -match "notepads-np") {
  "Notepads is already installed."
} else {
  Start-Process "pwsh.exe" -Argument 'scoop install notepads-np' -Verb RunAs -Wait
}

if ($scoop_app_list -match "signal") {
  "Signal is already installed."
} else {
  scoop install signal
}

if ($scoop_app_list -match "perl") {
  "Perl is already installed."
} else {
  scoop install perl
}

if ($scoop_app_list -match "openjdk") {
  "OpenJDK is already installed."
} else {
  scoop install openjdk
}

""

"WSL 2 setup started..."

""

Start-Process "pwsh.exe" -Argument '.\wsl2_setup.ps1' -Verb RunAs -Wait

"WSL 2 has been setup successfully."

""

read-host "Press ENTER to continue..."
