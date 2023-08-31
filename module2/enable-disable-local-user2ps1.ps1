'enter the local user '

$userName = Read-Host

$userObject = Get-LocalUser -Name $userName

'At this moment user name '+$userObject.Name + 'has status ' + $userObject.Enabled

# if enabled disable it
if ($userObject.Enabled -eq $true) 
{
    'Are you sure want to disable user '+ $userName +'(y/n)'
    
     $answer = Read-Host
    if ($answer -eq 'y') {
       Disable-LocalUser -InputObject $userObject
    }

    elseif ($answer -eq 'n') {
     'ok we are not going to disable'
    }
} 
else{
   'Are you sure want to enable user '+ $userName +'(y/n)'
    
     $answer = Read-Host
    if ($answer -eq 'y') {
       Enable-LocalUser -InputObject $userObject
    }

    elseif ($answer -eq 'n') {
     'ok we are not going to enable'
     }
}

$userObject = Get-LocalUser -Name $userObject.Name

'At this moment user name '+$userObject.Name + 'has status ' + $userObject.Enabled

