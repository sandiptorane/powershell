'enter the service name'

$serviceName = Read-Host

$service = Get-Service -Name $serviceName

'At this moment service '+$service.Name + 'has status ' + $service.Status

# if service is running stop the service
# else if serive is stopped start the service
if ($service.Status -eq 'running')
{
   Stop-Service -Name $serviceName
}
elseif($service.Status -eq 'stopped')
{
   Start-Service -Name $serviceName
}

$service = Get-Service -Name $serviceName
'updated service '+$service.Name + 'has status ' + $service.Status
