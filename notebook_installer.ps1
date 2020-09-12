write-output ""

write-output "# ----------------------"
write-output "# The Notebook Installer"
write-output "# ----------------------"

write-output ""

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

write-output ""

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

write-output ""

scoop update

write-output ""

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

write-output ""

Start-Process powershell -ArgumentList "-file .\file_associations_launcher.ps1"

if($?) {
  "File association has been completed successfully."
} else {
  "An error occoured during file association."
}

write-output ""

read-host "Press ENTER to continue..."