$user_name = $env:UserName

$argument_list1 =  "-file C:\Users\"
$argument_list2 = "\Programming\Projects\notebook-installer\file_associations.ps1"

$argument_list = $argument_list1 + $user_name + $argument_list2

Start-Process powershell -verb runas -ArgumentList $argument_list
