'enter the service name'

$serviceName = Read-Host

$service = Get-Service -Name $serviceName

'At this moment service '+$service.Name + 'has status ' + $service.Status

# if service is running stop the service
# else if serive is stopped start the service
if ($service.Status -eq 'running')
{
   'Are you want to stop the service ' + $service.Name + ' (y/n)?:'
    $answer = Read-Host
    if ($answer -eq 'y') {
       Stop-Service -Name $service.Name
    }
     elseif ($answer -eq 'n') {
     'ok we are not going to stop'
    }
}
elseif($service.Status -eq 'stopped')
{
   'Are you want to start the service ' + $service.Name + ' (y/n)?:'
    $answer = Read-Host
    if ($answer -eq 'y') {
         Start-Service -Name $service.Name
    }
     elseif ($answer -eq 'n') {
     'ok we are not going to stop'
    }
}

$service = Get-Service -Name $serviceName
'updated service '+$service.Name + 'has status ' + $service.Status
