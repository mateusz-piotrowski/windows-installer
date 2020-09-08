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

if (Get-Command scoop install 7zip -errorAction SilentlyContinue) {
  "7zip is already installed."
} else {
  scoop install 7zip
}

write-output ""

read-host "Press ENTER to continue..."