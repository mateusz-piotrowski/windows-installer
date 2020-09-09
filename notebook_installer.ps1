write-output ""

write-output "# ----------------------"
write-output "# The Notebook Installer"
write-output "# ----------------------"

write-output ""

if (Get-Command scoop -errorAction SilentlyContinue) {
  "Scoop is already installed."
} else {
  Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
  scoop bucket add extras
  scoop bucket add nonportable
}

write-output ""

$scoop_app_list = scoop export

if ($scoop_app_list -match '7zip') {
  "7zip is already installed."
} else {
  scoop install 7zip
}

if ($scoop_app_list -match 'git') {
  "Git is already installed."
} else {
  scoop install git
}

write-output ""

scoop update

write-output ""

read-host "Press ENTER to continue..."