curl https://github.com/mateusz-piotrowski/notebook-installer/archive/master.zip --output-dir ~/notebook-installer.zip

$path_start =  "C:\Users\"
$user_name = $env:UserName
$old_file_name = "\notebook-installer-master.zip"
$new_file_name = "\notebook-installer.zip"
$unzip_location = "\notebook-installer"
$install_file = "\notebook-installer.ps1"

$rename_file_path = $path_start + $user_name + $old_file_name
$unzip_file_path_before = $path_start + $user_name + $new_file_name
$unzip_file_path_after = $path_start + $user_name + $unzip_location
$installer = $path_start + $user_name + $unzip_location + $install_file

Rename-Item -Path $rename_file_path -NewName "notebook-installer.zip"

Expand-Archive -LiteralPath $unzip_file_path_before -DestinationPath $unzip_file_path_after

Start-Process "powershell.exe" -Argument $installer -Verb RunAs -Wait