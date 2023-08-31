'enter the local user '

$userName = Read-Host

$userObject = Get-LocalUser -Name $userName

# if enabled disable it
if ($userObject.Enabled -eq $true) 
{
    Disable-LocalUser -Name $userName
} 
else{
   Enable-LocalUser -Name $userName
}

Get-LocalUser -Name $userName
