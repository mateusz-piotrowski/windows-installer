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

""

$scoop_app_list = scoop export

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

scoop update

""

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

$user_name = $env:UserName

$argument_list1 =  "-file C:\Users\"
$argument_list2 = "\Programming\Projects\notebook-installer\file_associations.ps1"

$argument_list = $argument_list1 + $user_name + $argument_list2

Start-Process powershell -verb runas -ArgumentList $argument_list -Wait

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

if ($scoop_app_list -match "concfg") {
  "Concfg is already installed."
} else {
  scoop install concfg
  concfg import solarized small
}

if ($scoop_app_list -match "basecamp") {
  "Basecamp is already installed."
} else {
  scoop install basecamp
}

if ($scoop_app_list -match "pshazz") {
  "PsHazz is already installed."
} else {
  scoop install pshazz
  Start-Process -FilePath "powershell" -Verb RunAs -ArgumentList "Set-Service ssh-agent -StartupType Manual" -Wait
}

if ($scoop_app_list -match "notepads-np") {
  "Notepads is already installed."
} else {
  Start-Process -FilePath "powershell" -Verb RunAs -ArgumentList "scoop install notepads-np" -Wait
}

if ($scoop_app_list -match "vscode") {
  "Visual Studio Code is already installed."
} else {
  scoop install vscode
}

""

read-host "Press ENTER to continue..."