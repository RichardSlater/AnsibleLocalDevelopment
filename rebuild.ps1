& vagrant destroy --force
& vagrant up
$keyPath = "$PSScriptRoot/.vagrant/machines/default/hyperv/private_key";
$acl = Get-Acl $keyPath
$acl.SetAccessRuleProtection($true, $false)
$permission = "$($env:USERDOMAIN)\$($env:USERNAME)","FullControl","Allow"
$accessRule = New-Object System.Security.AccessControl.FileSystemAccessRule $permission
$acl.SetAccessRule($accessRule)
$acl | Set-Acl $keyPath
& ssh-add $keyPath
